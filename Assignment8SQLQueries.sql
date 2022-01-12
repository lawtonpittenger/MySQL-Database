# Assignment 8 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 03.26.2021


# Use frozenfood database
	USE frozenfood;

# Alter table customerOrder add column total as data type decimal size 7,2, not null, default value of 0.0
	ALTER TABLE customerOrder
	ADD COLUMN total decimal(7,2) NOT NULL DEFAULT 0.0;

# Update table customerOrder, set column total equal to column quantity multiplied by subquery 
# Select column price from table product where column productId in table customerOrder equals column id in table product
	UPDATE customerOrder
	SET total = quantity * 
	(SELECT p.price
	 FROM product p
	 WHERE productId = p.id);

# Update table customerOrder, set column orderStateId equal to subquery 
# Select column id from table orderstate where state equals “Payment received”
	UPDATE customerOrder
	SET orderStateId = 
		(SELECT ID 
		 FROM orderState
		 WHERE state = "Payment received");

# Alter table customerPayment add column paymentDate as data type date, not null, default value of (CURRENT_DATE) (Note: the parenthesis MUST be included)
	ALTER TABLE customerPayment
	ADD COLUMN paymentDate date NOT NULL DEFAULT (CURRENT_DATE);

# Insert into table customerPayment, columns customerOrderId and total result set returned from query 
# Select columns id and total from table customerOrder where column orderStateId is equal to subquery
# Select column id from table orderState where column state is equal to “Payment received”
	INSERT INTO customerPayment(customerOrderId, total)
	SELECT ID, total
	FROM customerOrder
	WHERE orderStateId = 
	(SELECT ID
	 FROM orderstate
	 WHERE state = "Payment received");

# Write Test Case 1 as a SQL join query to do the following
# Select using concatenation of columns firstName and lastName from table customer as Customer
# Select customerOrderId from table customerPayment as “Customer Order”
# Select description from table product as Product
# Select total from table customerOrder as “Product Total”
# Join tables customerPayment, customerOrder, customer, product
# Order by column lastName from table customer
	SELECT concat(c.firstName, " ", c.lastName) AS Customer, cp.customerOrderId AS "Customer Order", p.description AS Product, co.total AS "Product Total"
	FROM customer c, customerPayment cp, product p, customerOrder co
	WHERE cp.customerOrderId = co.id
	AND co.productId = p.Id
	AND co.customerId = c.Id
	ORDER BY c.lastName;

# Alter table purchaseOrder add column total as data type decimal size 7,2, not null, default value of 0.0
	ALTER TABLE purchaseOrder
	ADD COLUMN total decimal(7,2) NOT NULL DEFAULT 0.0; 

# Update table purchaseOrder, set column total equal to column quantity multiplied by subquery 
# select column price from table product where column productId in table purchaseOrder equals column id in table product
	UPDATE purchaseOrder
	SET total = quantity * 
		(SELECT price 
		FROM product
		WHERE productID = ID);

# Insert into table orderstate one row so that column state is equal to 'Payment sent'
	INSERT INTO orderstate VALUES
	(13, "Payment sent");
 
# Determine the total balance owed to each supplier by
# Select column supplierId and SUM(total) from table purchaseOrder and group by column supplierId
# Make note of the supplierId for each supplier whose sum total is greater than $1000
	SELECT supplierId, SUM(total)
	FROM purchaseOrder po 
	GROUP BY supplierId;

# Update table purchaseOrder, set column orderStateId equal to subquery 
# select column id from table orderstate where state equals “Payment sent”
# Where clause for outer update query
# where column supplierId is IN (<supplierId>, <supplierId>, <supplierId>) (Note: reference step 11 for the values to replace the <supplierId>s)
	UPDATE purchaseOrder
	SET orderStateId = 
	(SELECT ID 
	 FROM orderstate
	 WHERE state = "Payment sent")
	 WHERE purchaseOrder.supplierId IN (3, 4, 9);

# Alter table supplierTransaction add column paymentDate as data type date, not null, default value of (CURRENT_DATE) (Note: the parenthesis MUST be included)
	ALTER TABLE supplierTransaction
	ADD COLUMN paymentDate date NOT NULL DEFAULT (CURRENT_DATE);

# Insert into table supplierTransaction, columns purchaseOrderId and total result set returned from query 
# Select columns id and total from table purchaseOrder where column orderStateId is equal to subquery
# select column id from table orderState where column state is equal to “Payment sent”
	INSERT INTO supplierTransaction (purchaseOrderId, total)
	SELECT ID, total
	FROM purchaseOrder
	WHERE orderStateId = 
	(SELECT ID 
	 FROM orderState
	 WHERE state = "Payment sent");

# Write Test Case 2 as a SQL join query to do the following
# Select supplierName from table supplier as Supplier
# Select purchaseOrderId from table supplierTransaction as “Purchase Order”
# Select description from table product as Product
# Select total from table purchaseOrder as “Product Total”
# Join tables supplierTransaction, purchaseOrder, supplier, product
# Order by column supplierName from table supplier
	SELECT s.supplierName AS Supplier, st.purchaseOrderId AS "Purchase Order", p.description AS Product, po.total AS "Product Total"
	FROM supplierTransaction st, purchaseOrder po, supplier s, product p
	WHERE st.purchaseOrderId = po.id
	AND po.supplierId = s.id
	AND po.productId = p.id
	ORDER BY s.supplierName;


