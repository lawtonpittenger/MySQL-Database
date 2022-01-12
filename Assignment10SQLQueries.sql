# Assignment 10 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 04.24.2021

/* set all customer orders to "Payment received"*/
	UPDATE customerOrder
	SET orderStateId = 
	(SELECT id
		FROM orderState
	 WHERE state = "Payment received");
  
/* set all purchase orders to "Payment sent"*/
	UPDATE purchaseOrder
	SET orderStateId = 
	(SELECT id
		FROM orderState
	 WHERE state = "Payment sent");

/* ShipCustomerOrder() ships orders that have been paid */
 DELIMITER $$
 CREATE PROCEDURE ShipCustomerOrder()
 	BEGIN
	
		DECLARE done INT DEFAULT 0;
		DECLARE theId INT DEFAULT 0;
		
		 /* declare cursor for column ID where column orderStateId equals "Payment received" */
		 DECLARE id_cursor CURSOR FOR 
			SELECT DISTINCT ID
			  FROM customerOrder
			  WHERE orderStateId =
					(SELECT id
					   FROM orderState
					  WHERE state = "Payment received");
		  
 		DECLARE CONTINUE HANDLER 
        	FOR NOT FOUND SET done = 1;
		
		OPEN id_cursor;

		get_id: LOOP

			FETCH id_cursor INTO theId;

			 IF done = 1 THEN 
				LEAVE get_id;
			 END IF;

			/* update customerOrder set column orderStateId equal to "Shipped" */ 
			UPDATE customerOrder
			SET orderStateId =
				(SELECT id
				FROM orderState
				WHERE state = "Shipped")
			WHERE ID = theId; 
			
 		END LOOP get_id;			
	END $$
 DELIMITER ;

/* call stored procedure to test */
/* CALL ShipCustomerOrder(); */

/* update purchaseOrder when payment is sent to the supplier */
 DELIMITER $$
 CREATE PROCEDURE ReceivePurchaseOrder()
 	BEGIN

		/* declare variables */
		DECLARE done INT DEFAULT 0;
		DECLARE theId INT DEFAULT 0;

		/* declare cursor for column id where purchase order has an order state of "Payment sent" */
		DECLARE id_cursor CURSOR FOR
			SELECT DISTINCT ID
				FROM customerOrder
				WHERE orderStateId = 
					(SELECT id
						FROM orderState 
							WHERE state = "Payment sent");

		/* declare exception handler */  
		DECLARE CONTINUE HANDLER
			FOR NOT FOUND SET done = 1;

		/* open cursor */
		OPEN id_cursor;

		/* loop through cursor using a label */
		get_id: LOOP

		/* fetch cursor into variable */
		FETCH id_cursor INTO theId;


		/* check if done flag set; if true leave the loop using the label name */
		IF done = 1 THEN
			LEAVE get_id;
		END IF;

		/* update the rows in table purchaseOrder where column orderStateId equals "Shipped" */
		UPDATE purchaseOrder
		SET orderStateId = 
			(SELECT id
				FROM orderState
				WHERE state = "Shipped")
				WHERE ID = theId;

		/* end loop using the label name */	
		END LOOP get_id;

	END $$
 DELIMITER ;

/* call stored procedure to test */
/* CALL ReceivePurchaseOrder(); */

/* update inventory */
DELIMITER $$
 CREATE PROCEDURE DecreaseInventory()
 	BEGIN
	
		/* declare variables */
		DECLARE done INT DEFAULT 0;
		DECLARE theProduct INT DEFAULT 0;
		DECLARE theQuantity INT DEFAULT 0;

		/* declare cursor for columns productId and quanity where customer order has an order state of "Shipped" */
		DECLARE ship_cursor CURSOR FOR
		SELECT productId, quantity
			FROM customerOrder
				WHERE orderStateId = 
					(SELECT id
						FROM orderState
					WHERE state = "Shipped");


		/* declare exception handler */ 
		DECLARE CONTINUE HANDLER
			FOR NOT FOUND SET done = 1; 
			
		/* open cursor */
		OPEN ship_cursor;

		/* loop through cursor using a label */
		ship_product: LOOP

		/* fetch cursor into variables */
		FETCH ship_cursor INTO theProduct, theQuantity;

		/* check if done flag set; if true leave the loop using the label name */
		IF done = 1 THEN
			LEAVE ship_product;
		END IF;

		/* update the quantity in table product so it is equal to the current quantity minus variable theQuantity where the ID equal variable theProduct */
		UPDATE product
		SET quantity = quantity  - theQuantity
		WHERE ID = theProduct;

		/* end loop using the label name */	
		END LOOP ship_product;

	END $$
 DELIMITER ;

/* call stored procedure to test */
/* CALL DecreaseInventory(); */

/* update inventory */
DELIMITER $$
 CREATE PROCEDURE IncreaseInventory()
 	BEGIN
		/* declare variables */
		DECLARE done INT DEFAULT 0;
		DECLARE theProduct INT DEFAULT 0;
		DECLARE theQuantity INT DEFAULT 0;

	
		 /* declare cursor for columns productId and quanity where purchase order has an order state of "Shipped" */
		DECLARE receive_cursor CURSOR FOR 
		SELECT productId, quantity
		FROM purchaseOrder
		WHERE orderStateId = 
			(SELECT id
				FROM orderState
			WHERE state = "Shipped");

		/* declare exception handler */  
		DECLARE CONTINUE HANDLER
			FOR NOT FOUND SET done = 1;

		/* open cursor */
		OPEN receive_cursor;

		/* loop through cursor using a label */
		receive_product: LOOP

		/* fetch cursor into variables */
		FETCH receive_cursor INTO theProduct, theQuantity;

		/* check if done flag set; if true leave the loop using the label name */
		IF done = 1 THEN
			LEAVE receive_product;
		END IF;

		/* update the quantity in table product so it is equal to the current quantity plus variable theQuantity where the ID equal variable theProduct */
		UPDATE product 
		SET quantity = (quantity + theQuantity)
		WHERE ID = theProduct;

		/* end loop using the label name */		
		END LOOP receive_product;

	END $$
 DELIMITER ;

/* call stored procedure to test */
/* CALL IncreaseInventory(); */

DELIMITER $$
 CREATE PROCEDURE UpdateInventory()
 	BEGIN
		/* identify products to ship to customers, call procedure ShipCustomerOrder */
		CALL ShipCustomerOrder();

		/* identify prodcuts to received from suppliers, call procedure ReceivePurchaseOrder */
		CALL ReceivePurchaseOrder();

		/* remove shipped inventory, call procedure DecreaseInventory */
		CALL DecreaseInventory();

		/* add received inventory, call procedure IncreaseInventory */
		CALL IncreaseInventory();

		/* update table customerOrder, set column orderStateId equal to "Completed" */
		UPDATE customerOrder 
		SET orderStateId = 12
		WHERE orderStateId = 8;

		/* update table purchaseOrder, set column orderStateId equal to "Completed" */
		UPDATE purchaseOrder 
		SET orderStateId = 12
		WHERE orderStateId = 8;

	END $$
 DELIMITER ;
	
/* call procedure UpdateInventory */

/* run test case for product quantities after updates */
