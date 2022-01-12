# Assignment 9 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 04.4.2021


# 1. Use frozenfood database
	USE frozenfood;


/*
2.	Create view productSupplierDetail as a SQL join query to do the following
a.	Select product description from table product as Product
b.	Select supplier name from table supplier as Supplier
c.	Join tables product, supplier and productSupplier
d.	Order by supplier name
*/
	CREATE VIEW productSupplierDetail AS
	SELECT p.description AS Product, s.supplierName AS Supplier
	FROM productSupplier ps, product p, supplier s
	WHERE ps.supplierId = s.id
	AND ps.productId = p.id
	ORDER BY s.supplierName;


/*
3.	Create view customerOrderDetail as a SQL join query to do the following
a.	Select using concatenation of columns firstName and lastName from table customer as Customer
b.	Select product description from table product as Product
c.	Select quantity from table customerOrder as Quantity
d.	Select order date from table customerOrder as Date Ordered
e.	Select state from table orderState as OrderStatus
f.	Join tables product, customer, customerOrder and orderState
*/
	CREATE VIEW customerOrderDetail AS 
	SELECT concat(c.firstName, " ", c.lastName) AS Customer, p.description AS Product, co.quantity AS Quantity, co.orderDate AS "Date Ordered", o.state AS "Order Status"
	FROM customerOrder co, product p, customer c, orderState o
	WHERE co.customerId = c.id
	AND co.productId = p.id
	AND co.orderStateId = o.id;

/*
4.	Create view purchaseOrderDetail as a SQL join query to do the following
a.	Select supplier name from table supplier as Supplier
b.	Select product description from table product as Product
c.	Select quantity from table purchaseOrder as Quantity
d.	Select order date from table purchaseOrder as Date Ordered
e.	Select state from table orderState as OrderStatus
f.	Join tables product, supplier, purchaseOrder and orderState
*/
	CREATE VIEW purchaseOrderDetail AS 
	SELECT s.supplierName AS Supplier, p.description AS Product, po.quantity AS Quantity, po.orderDate AS "Date Ordered", o.state AS "Order Status"
	FROM purchaseOrder po, product p, supplier s, orderState o
	WHERE po.supplierId = s.id
	AND po.productId = p.id
	AND po.orderStateId = o.id;

/*
5.	Create view customerPaymentDetail as a SQL join query to do the following
a.	Select using concatenation of columns firstName and lastName from table customer as Customer
b.	Select customerOrderId from table customerPayment as “Customer Order”
c.	Select description from table product as Product
d.	Select total from table customerOrder as “Product Total”
e.	Join tables customerPayment, customerOrder, customer, product
f.	Order by column lastName from table customer
*/
	CREATE VIEW customerPaymentDetail AS
	SELECT concat(c.firstName, " ", c.lastName) AS Customer, cp.customerOrderId AS "Customer Order", p.description AS Product, co.total AS "Product Total"
	FROM customerPayment cp, customerOrder co, customer c, product p
	WHERE cp.customerOrderId = co.id
	AND co.customerId = c.id
	AND co.productId = p.id
	ORDER BY c.lastName;


/*
6.	Create view supplierTransactionDetail as a SQL join query to do the following
a.	Select supplierName from table supplier as Supplier
b.	Select purchaseOrderId from table supplierTransaction as “Purchase Order”
c.	Select description from table product as Product
d.	Select total from table purchaseOrder as “Product Total”
e.	Join tables supplierTransaction, purchaseOrder, supplier, product
f.	Order by column supplierName from table supplier
*/
	CREATE VIEW supplierTransactionDetail AS 
	SELECT s.supplierName AS Supplier, st.purchaseOrderId AS "Purchase Order", p.description AS Product, po.total AS "Product Total"
	FROM Supplier s, supplierTransaction st, product p, purchaseOrder po
	WHERE st.purchaseOrderId = po.id
	AND po.supplierId = s.id
	AND po.productId = p.id
	ORDER BY s.supplierName;


/*
7.	Create view productDetail as a SQL join query to do the following
a.	Select id from table product as “Product ID”
b.	Select productName from table product as “Product Name”
c.	Select type from table productType as “Category”
d.	Select description from table product as Description
e.	Select concatenated size from table product and size from table sizeType as Size
f.	Select quantity from table product as “In Stock”
g.	Select concatenated “$” and price from table product as Cost
h.	Join tables product, productType, sizeType 
i.	Order by column productName from table product
*/
	CREATE VIEW productDetail AS
	SELECT p.id AS "Product ID", p.productName AS "Product Name", pt.type AS Category, p.description AS Description, concat(p.size, " ", st.size) AS Size,
	p.quantity AS "In Stock", concat("$", p.price) AS Cost
	FROM product p, productType pt, sizeType st
	WHERE p.productType = pt.id
	AND p.sizeTypeId = st.id
	ORDER BY p.productName;

/*
8.	Create view employeeSupplierDetail as a SQL join query to do the following
a.	Select concatenated firstName and lastName from table employee as Representative
b.	Select supplier name from table supplier as Supplier
c.	Join tables employee, supplier and employeeSupplier
d.	Order by employee last name
*/
	CREATE VIEW employeeSupplierDetail AS
	SELECT concat(e.firstName, " ", e.lastName) AS Representative, s.supplierName AS Supplier
	FROM employee e, supplier s, employeeSupplier es
	WHERE es.employeeId = e.id
	AND es.supplierId = s.id
	ORDER BY e.lastName; 