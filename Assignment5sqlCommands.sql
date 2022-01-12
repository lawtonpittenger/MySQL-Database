# Assignment 5 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 03.4.2021


# Use frozenfood database
	USE frozenfood;

/*
Create a table named orderState with the following attributes, data types, and constraints:
a.	ID, integer, 7 characters, not null, auto increment
b.	state, variable character, 20 characters, not null 
c.	primary key is the ID field
*/
	CREATE TABLE orderState(
		ID int(7) NOT NULL AUTO_INCREMENT,
		state varchar(20) NOT NULL,
		PRIMARY KEY(ID)
	);

#Insert into table orderState data in file orderState.sql
	INSERT INTO orderState(state) VALUES
	("New order"),
	("Buyer contacted"),
	("Seller contacted"),
	("Invoice sent"),
	("Invoice received"),
	("Payment pending"),
	("Payment received"),
	("Shipped"),
	("Awaiting pickup"),
	("Cancelled"),
	("Backordered"),
	("Completed");

/*
Create a table named customerOrder with the following attributes, data types, and constraints:
a.	ID, integer, 7 characters, not null, auto increment
b.	customerId, integer 7 characters, not null
c.	productId, integer 7 characters, not null
d.	quantity, integer 7 characters, not null
e.	orderDate, date, not null
f.	orderStateId, integer 7 characters, not null
g.	check constraint on column quantity so it is greater than 0 (zero)
h.	primary key is the ID field
i.	foreign key, column customerId, references table customer, column id
j.	foreign key, column productId, references table product, column id
k.	foreign key, column orderStateID, references table orderState, column id
*/
	CREATE TABLE customerOrder(
		ID int(7) NOT NULL AUTO_INCREMENT, 
		customerId int(7) NOT NULL,
		productId int(7) NOT NULL,
		quantity int(7) NOT NULL,
		orderDate date NOT NULL,
		orderStateId int(7) NOT NULL,
		CHECK (quantity > 0),
		PRIMARY KEY (ID),
		FOREIGN KEY (customerId) REFERENCES customer(id),
		FOREIGN KEY (productId) REFERENCES product(id),
		FOREIGN KEY (orderStateId) REFERENCES orderState(id)
		);

/*
Create a table named purchaseOrder with the following attributes, data types, and constraints:
a.	ID, integer, 7 characters, not null, auto increment
b.	supplierId, integer 7 characters, not null
c.	productId, integer 7 characters, not null
d.	quantity, integer 7 characters, not null
e.	orderDate, date, not null
f.	orderStateId, integer 7 characters, not null
g.	check constraint on column quantity so it is greater than 0 (zero)
h.	primary key is the ID field
i.	foreign key, column supplierId, references table supplier, column id
j.	foreign key, column productId, references table product, column id
k.	foreign key, column orderStateID, references table orderState, column id
*/
	CREATE TABLE purchaseOrder(
		ID int(7) NOT NULL AUTO_INCREMENT, 
		supplierId int(7) NOT NULL,
		productId int(7) NOT NULL,
		quantity int(7) NOT NULL,
		orderDate date NOT NULL,
		orderStateId int(7) NOT NULL,
		CHECK (quantity > 0),
		PRIMARY KEY (ID),
		FOREIGN KEY (supplierId) REFERENCES supplier(id),
		FOREIGN KEY (productId) REFERENCES product(id),
		FOREIGN KEY (orderStateId) REFERENCES orderState(id)
		);

/*
Create a table named customerPayment the following attributes, data types, and constraints:
a.	ID, integer, 7 characters, not null, auto increment
b.	customerOrderId, integer 7 characters, not null
c.	total, decimal 10 characters, two characters to the right of the decimal point, not null
d.	check constraint on column total so it is greater than 0.0
e.	primary key is the ID field
f.	foreign key, column customerOrderId, references table customerOrder, column id
*/
	CREATE TABLE customerPayment (
		ID int(7) NOT NULL AUTO_INCREMENT,
		customerOrderId int(7) NOT NULL,
		total decimal(10,2) NOT NULL,
		CHECK (total > 0.0),
		PRIMARY KEY (ID),
		FOREIGN KEY (customerOrderId) REFERENCES customerOrder(id)
	);

/*
Create a table named supplierTransaction with the following attributes, data types, and constraints:
a.	ID, integer, 7 characters, not null, auto increment
b.	purchaseOrderId, integer 7 characters, not null
c.	total, decimal 10 characters, two characters to the right of the decimal point, not null
d.	check constraint on column total so it is greater than 0.0
e.	primary key is the ID field
f.	foreign key, column purchaseOrderId, references table purchaseOrder, column id
*/

	CREATE TABLE supplierTransaction (
		ID int(7) NOT NULL AUTO_INCREMENT,
		purchaseOrderId int(7) NOT NULL,
		total decimal(10,2) NOT NULL,
		CHECK (total > 0.0),
		PRIMARY KEY (ID),
		FOREIGN KEY (purchaseOrderId) REFERENCES purchaseOrder(id)
	);