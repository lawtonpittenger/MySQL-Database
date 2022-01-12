# Assignment 4 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 02.16.2021


# Use frozenfood database
	USE frozenfood;

/*
Create a table named productType with the following attributes, data types, and constraints:
	- ID, integer, 7 characters, not null, auto increment
	- type, variable character, 90 characters, not null 
	- primary key is the ID field
*/
	CREATE TABLE productType(
		ID int(7) NOT NULL AUTO_INCREMENT,
		type varchar(90) NOT NULL,
		PRIMARY KEY (ID)
	);


/*
Create a table named cityState with the following attributes, data types, and constraints:
	- city, variable character, 90 characters, not null
	- state, character, 2 characters, not null
	- zipCode, character, 5 characters, not null, unique
	- primary key is the zipCode fields
*/
	CREATE TABLE cityState (
		city varchar(90) NOT NULL,
		state char(2) NOT NULL,
		zipCode char(5) NOT NULL UNIQUE,
		PRIMARY KEY (zipCode)
	);


# Insert into table productType column type distinct values from column productType from table product
	INSERT INTO productType(type) 
	SELECT DISTINCT productType
	FROM product;


# Insert into table cityState columns city, state and zipCode distinct values from columns city, state and zipCode from table customer
	INSERT INTO cityState(city, state, zipCode)
	SELECT DISTINCT city, state, zipCode
	FROM customer;

# Insert into table cityState columns city, state and zipCode distinct values from columns city, state and zipCode from table employee
	INSERT INTO cityState(city, state, zipCode)
	SELECT DISTINCT city, state, zipCode
	FROM employee;

# Insert into table cityState columns city, state and zipCode distinct values from columns city, state and zipCode from table supplier
	INSERT INTO cityState(city, state, zipCode)
	SELECT DISTINCT city, state, zipCode
	FROM supplier;

/*
Update table product to set the value of column productType equal to the corresponding id value in the table productType.  This requires a SELECT * FROM  productType; to see what the id value is for each type.  For example, in my database
	a.	1 | meat           
	b.	2 | seafood        
	c.	3 | vegetable      
	d.	4 | grain and rice 
	e.	5 | bakery
*/
	UPDATE product
	SET productType = 1
	WHERE productType = "meat";

	UPDATE product
	SET productType = 2
	WHERE productType = "seafood";

	UPDATE product
	SET productType = 3
	WHERE productType = "vegetable";

	UPDATE product
	SET productType = 4
	WHERE productType = "grain and rice";

	UPDATE product
	SET productType = 5
	WHERE productType = "bakery";

# Alter table product so that column productType is an integer instead of a varchar, not null should be maintained.
	ALTER TABLE product
	MODIFY COLUMN productType int NOT NULL;

# Alter table product so that column productType is a foreign key to table productType, column id
	ALTER TABLE product
	ADD FOREIGN KEY (productType) REFERENCES productType(ID);

# Alter table customer so that column zipCode is a foreign key to table cityState, column zipCode
	ALTER TABLE customer
	ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);

# Alter table customer to drop column city and state
	ALTER TABLE customer
	DROP COLUMN city;

	ALTER TABLE customer
	DROP COLUMN state;

# Alter table employee so that column zipCode is a foreign key to table cityState, column zipCode
	ALTER TABLE employee
	ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);

# Alter table employee to drop column city and state
	ALTER TABLE employee
	DROP COLUMN city;

	ALTER TABLE employee
	DROP COLUMN state;
# Alter table supplier so that column zipCode is a foreign key to table cityState, column zipCode
	ALTER TABLE supplier
	ADD FOREIGN KEY (zipCode) REFERENCES cityState(zipCode);

# Alter table supplier to drop column city and state
	ALTER TABLE supplier
	DROP COLUMN city;

	ALTER TABLE supplier
	DROP COLUMN state;