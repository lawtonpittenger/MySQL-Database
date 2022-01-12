
# Assignment 3 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 02.11.2021

# ---------------------------------------------------------------------------------------

# Change to use database frozenfood
	USE frozenfood;

# ---------------------------------------------------------------------------------------

/*
  Create a table named product with the following attributes, data types, and constraints:
	a.	ID, integer, 7 characters, not null, auto increment
	b.	productName, variable character, 90 characters, not null 
	c.	productType, variable character, 90 characters, not null 
	d.	description, variable character, 90 characters, not null 
	e.	size, variable character, 50 characters, not null
	f.	quantity, integer, 7 characters, not null
	g.	price, decimal, 7 characters, 2 to the right of the decimal point, not null
	h.	primary key is the ID field
*/

	CREATE TABLE product (
		ID int(7) NOT NULL AUTO_INCREMENT,
		productName varchar(90) NOT NULL,
		productType varchar(90) NOT NULL,
		description varchar(90) NOT NULL,
		size varchar(50) NOT NULL,
		quantity int(7) NOT NULL,
		price decimal(7,2) NOT NULL,
		PRIMARY KEY (ID)
	);

# ---------------------------------------------------------------------------------------

/*
  Create a table named employeeSupplier with the following attributes, data types, and constraints:
	a.	employeeId, integer, 7 characters, not null
	b.	supplierId, integer, 7 characters, not null
	c.	primary key is the employeeId and supplierId fields
	d.	foreign key on column employeeId references table employee column ID
	e.	foreign key on column supplierId references table supplier column ID
*/

	CREATE TABLE employeeSupplier(
		employeeId int(7) NOT NULL,
		supplierId int(7) NOT NULL,
		PRIMARY KEY (employeeId, supplierId),
		FOREIGN KEY (employeeId) REFERENCES employee(ID),
		FOREIGN KEY (supplierId) REFERENCES supplier(ID)
	);

# ---------------------------------------------------------------------------------------

/*
  Create a table named productSupplier with the following attributes, data types, and constraints:
	a.	productId, integer, 7 characters, not null
	b.	supplierId, integer, 7 characters, not null
	c.	primary key is the productId and supplierId fields
	d.	foreign key on column productId references table product column ID
	e.	foreign key on column supplierId references table supplier column ID
*/

	CREATE TABLE productSupplier(
		productId int(7) NOT NULL,
		supplierId int(7) NOT NULL,
		PRIMARY KEY (productId, supplierId),
		FOREIGN KEY (productId) REFERENCES product(ID),
		FOREIGN KEY (supplierId) REFERENCES supplier(ID)
	);

# ---------------------------------------------------------------------------------------

# Insert data in file product.sql into table product

	INSERT INTO product (productName, productType, description, size, quantity, price) VALUES
		("lamb shank","meat","lamb shank in rosemary and mint sauce","10 ounce","20","9.99"),
		("veal","meat","veal osso buco","15.5 ounce","15","11.99"),
		("short rib","meat","braveheart angus beef boneless short rib","12 ounce","40","7.99"),
		("flank steak","meat","braveheart angus beef flank steak","2 pound","30","16.99"),
		("chicken","meat","boneless chicken breasts","8 count","56","21.99"),
		("pork chops","meat","bacon-wrapped pork chops","4 count","42","19.99"), 

		("langoustines","seafood","medium wild langoustines","7 count","25","20.99"),
		("octopus","seafood","cooked small octopus tentacles","3 count","15","23.00"),
		("shrimp","seafood","red shrimp from argentina XL","12 count","50","12.99"),
		("clams","seafood","coquina clams","12 count","45","9.99"),

		("peas","vegetable","extra fine french peas","2 pound","60","5.99"),
		("artichoke","vegetable","artichoke bottoms","2 pound","24","17.69"),
		("bean","vegetable","very find yellow wax beans","2 pound","30","6.29"),
		("broccoli","vegetable","broccoli florets","2 pound","55","4.49"),
		("potatoes","vegetable","family size smashed red potatoes","32 ounce","55","12.99"),
		("potatoes","vegetable","family size whipped sweet potatoes","32 ounce","55","14.49"),
		("vpotatoes","vegetable","potatoes au gratin","3 ounce","55","8.49"),

		("rice","grain and rice","jasmine rice","2 pound","45","9.99"),
		("rice","grain and rice","brown red and wild rice medley","2 pound","35","9.99"),
		("quinoa","grain and rice","organic quinoa","2 pound","26","12.99"),
		("lentils","grain and rice","black beluga lentils","2 pound", "18","9.99"),

		("pastry","bakery","frangipane king cake","19 ounce","32","19.99"),
		("pastry","bakery","chocolate croissant","3 ounce","90","1.90"),
		("dessert","bakery","tiramisu classico","3 oz","60","4.99"),
		("dessert","bakery","authentic french creme brulee","5 ounce","54","5.99"),
		("pie","bakery","cappuccino pie","3 pound","10","36.50"),
		("cake","bakery","red berry cheesecake","3 pound","12","36.50"),
		("bread","bakery","brioche burger buns","4 count","44","4.80"),
		("bread","bakery","ciabatta sandwich 6 inch","3 count","28","3.29"),
		("dough","bakery","mini blinis","16 count","26","4.46");


# ---------------------------------------------------------------------------------------

# Insert data in file employeeSupplier.sql into table employeeSupplier
	
	#These values translate to the corresponding numerical representation below
	(<Yvonne Prince>, <New Direction Foods>)
	(<Dante Rennie>, <Monogram Foods>)
	(<Alysha Waters>, <Dutt and Wagner of Virginia, Inc>)
	(<Avaya Clarke>, <Culinary Specialties, Inc>)
	(<Haniya Kaiser>, <John E. Koerner Company>)
	(<Nathalie Newman>, <Diversified Foods and Seasonings LLC>)
	(<Dante Guthrie>, <Ajinomoto Foods North America>)
	(<Beverley Roberts>, <Ascot Valley Foods>)
	(<Paris Solis>, <Kellogg NA Company>)
	(<Umaiza Heath>, <AppetizersUSA>)

	#Insert corresponding numerical representations into employeeSupplier table
	INSERT INTO employeeSupplier() VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10);

# ---------------------------------------------------------------------------------------

# Insert data in file productSupplier.sql into table productSupplier

	#These values translate to the corresponding numerical representation below
	(<lamb shank in rosemary and mint sauce>, <New Direction Foods>)
	(<veal osso buco>, <New Direction Foods>)
	(<braveheart angus beef boneless short rib>, <New Direction Foods>)

	(<braveheart angus beef flank steak>, <Monogram Foods>)
	(<boneless chicken breasts >, <Monogram Foods>)
	(<bacon-wrapped pork chops>, <Monogram Foods>)

	(<medium wild langoustines>, <Dutt and Wagner of Virginia, Inc>)
	(<cooked small octopus tentacles>, <Dutt and Wagner of Virginia, Inc>)
	(<red shrimp from argentina XL>, <Dutt and Wagner of Virginia, Inc>)

	(<coquina clams>, <Culinary Specialties, Inc>)
	(<extra fine french peas >, <Culinary Specialties, Inc>)
	(<artichoke bottoms>, <Culinary Specialties, Inc>)

	(<very find yellow wax beans>, <John E. Koerner Company>)
	(<broccoli florets>, <John E. Koerner Company>)
	(<family size smashed red potatoes>, <John E. Koerner Company>)

	(<family size whipped sweet potatoes>, <Diversified Foods and Seasonings LLC>)
	(<potatoes au gratin>, <Diversified Foods and Seasonings LLC>)
	(<jasmine rice>, <Diversified Foods and Seasonings LLC>)

	(<brown, red and wild rice medley>, <Ajinomoto Foods North America>)
	(<organic quinoa>, <Ajinomoto Foods North America>)
	(<black beluga lentils>, <Ajinomoto Foods North America>)

	(<frangipane king cake>, <Ascot Valley Foods>)
	(<chocolate croissant>, <Ascot Valley Foods>)
	(<tiramisu classico>, <Ascot Valley Foods>)

	(<authentic french creme brulee>, <Kellogg NA Company>)
	(<cappuccino pie>, <Kellogg NA Company>)
	(<red berry cheesecake>, <Kellogg NA Company>)

	(<brioche burger buns>, <AppetizersUSA>)
	(<ciabatta sandwich 6 inch >, <AppetizersUSA>)
	(<mini blinis>, <AppetizersUSA>)


	#Insert corresponding numerical representations into employeeSupplier table
	INSERT INTO productSupplier VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 4),
	(11, 4),
	(12, 4),
	(13, 5),
	(14, 5),
	(15, 5),
	(16, 6),
	(17, 6),
	(18, 6),
	(19, 7),
	(20, 7),
	(21, 7),
	(22, 8),
	(23, 8),
	(24, 8),
	(25, 9),
	(26, 9),
	(27, 9),
	(28, 10),
	(29, 10),
	(30, 10);


	#Test Command 1
	SELECT concat(e.firstName, " ", e.lastName) AS employee, s.supplierName AS supplier 
  	FROM employee e, supplier s, employeeSupplier es
 	WHERE es.employeeId = e.id 
   	AND es.supplierId = s.id;
   
   	#Test Command 2
	SELECT p.description AS description, s.supplierName AS supplier
  	FROM product p, supplier s, productSupplier ps
 	WHERE ps.productId = p.ID
   	AND ps.supplierId = s.ID;