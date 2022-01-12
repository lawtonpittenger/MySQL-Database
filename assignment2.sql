
# Assignment 2 SQL Script
# Frozen Food Database Project
# Script Author: Lawton Pittenger
# Date: 02.4.2021


# Create the frozenfood database
	CREATE DATABASE frozenfood;

# Change to use the database frozenfood
	USE frozenfood;
/*
  Create a table named employee with the following attributes, data types, and constraints:
	a.	ID, integer, 7 characters, not null, auto increment
	b.	lastName, variable character, 50 characters, not null 
	c.	firstName, variable character, 50 characters, not null 
	d.	address, variable character, 90 characters, not null 
	e.	city, variable character, 90 characters, not null
	f.	state, character, 2 characters, not null
	g.	zipCode, character, 5 characters, not null
	h.	phone, character, 10 characters, not null
	i.	email, variable character, 90 characters, not null, unique
	j.	primary key is the ID field
*/

	CREATE TABLE employee (
		ID int(7) NOT NULL AUTO_INCREMENT,
		lastName varchar(50) NOT NULL,
		firstName varchar(50) NOT NULL,
		address varchar(90) NOT NULL,
		city varchar(90) NOT NULL,
		state char(2) NOT NULL,
		zipCode char(5) NOT NULL,
		phone char(10) NOT NULL,
		email varchar(90) NOT NULL UNIQUE,
		PRIMARY KEY (ID)
		);

/*
  Create a table named customer with the following attributes, data types, and constraints:
	a.	ID, integer, 7 characters, not null, auto increment
	b.	lastName, variable character, 50 characters, not null 
	c.	firstName, variable character, 50 characters, not null 
	d.	address, variable character, 90 characters, not null 
	e.	city, variable character, 90 characters, not null
	f.	state, character, 2 characters, not null
	g.	zipCode, character, 5 characters, not null
	h.	phone, character, 10 characters, not null
	i.	email, variable character, 90 characters, not null, unique
	j.	primary key is the ID field
*/

	CREATE TABLE customer (
		ID int(7) NOT NULL AUTO_INCREMENT,
		lastName varchar(50) NOT NULL,
		firstName varchar(50) NOT NULL,
		address varchar(90) NOT NULL,
		city varchar(90) NOT NULL,
		state char(2) NOT NULL,
		zipCode char(5) NOT NULL,
		phone char(10) NOT NULL,
		email varchar(90) NOT NULL UNIQUE,
		PRIMARY KEY (ID)
		);

/*
  Create a table named supplier with the following attributes, data types, and constraints:
	a.	ID, integer, 7 characters, not null, auto increment
	b.	supplierName, variable character, 50 characters, not null, unique 
	c.	address, variable character, 90 characters, not null 
	d.	city, variable character, 90 characters, not null
	e.	state, character, 2 characters, not null
	f.	zipCode, character, 5 characters, not null
	g.	phone, character, 10 characters, not null
	h.	email, variable character, 90 characters, not null, unique
	i.	primary key is the ID field
*/

	CREATE TABLE supplier (
		ID int(7) NOT NULL AUTO_INCREMENT,
		supplierName varchar(50) NOT NULL UNIQUE,
		address varchar(90) NOT NULL,
		city varchar(90) NOT NULL,
		state char(2) NOT NULL,
		zipCode char(5) NOT NULL,
		phone char(10) NOT NULL,
		email varchar(90) NOT NULL UNIQUE,
		PRIMARY KEY (ID)
		);

# Insert data in file customer.sql into table customer

	INSERT INTO customer (lastName , firstName , address , city , state , zipCode , phone , email) VALUES
	("Goodman" , "Yvonne" , "12 Creekside St" , "Nashville" , "TN" , "37205" , "2025550109" , "ygoodman@isp.com"),

	("Mackenzie" , "Dante" , "137 Wall St" , "Nashville" , "TN" , "37205" , "2025550112" , "dmackenzie@isp.com"),

	("Gonzalez" , "Avaya" , "7771 Border Court" , "Nashville" , "TN" , "37205" , "2025550119" , "agonzalez@isp.com"),

	("Kelly" , "Haniya" , "6 South Sulphur Springs Street" , "Nashville" , "TN" , "37205" , "2025550121" , "hkelly@isp.com"),

	("Chambers" , "Nathalie" , "942 New Saddle Drive" , "Clover" , "SC" , "29710" , "2025550122" , "nchambers@isp.com"),

	("Rollins" , "Dante" , "9 Wrangler Ave" , "Clover" , "SC" , "29710" , "2025550124" , "drollins@isp.com"),

	("Mckee" , "Beverley" , "7319 S. Greenview Drive" , "Clover" , "SC" , "29710" , "2025550125" , "bmckee@isp.com"),

	("Lindsey" , "Paris" , "763 West Mulberry St" , "Clover" , "SC" , "29710" , "2025550132" , "plindsey@isp.com"),

	("Melia" , "Umaiza" , "545 Ohio Ave" , "Clover" , "SC" , "29710" , "2025550135" , "umelia@isp.com"),

	("Prince" , "Nico" , "20 Middle River Street" , "Willoughby" , "OH" , "44094" , "2025550137" , "nprince@isp.com"),

	("Rennie" , "Javan" , "8112 North Country St" , "Willoughby" , "OH" , "44094" , "2025550139" , "jrennie@isp.com"),

	("Waters" , "Ali" , "83 Rockland Lane" , "Willoughby" , "OH" , "44094" , "2025550144" , "awaters@isp.com"),

	("Clarke" , "JohnPaul" , "1 Riverside Lane" , "Willoughby" , "OH" , "44094" , "2025550153" , "jpcClarke@isp.com"),

	("Kaiser" , "Dane" , "694 Wall Road" , "Willoughby" , "OH" , "44094" , "2025550155" , "kdaiser@isp.com"),

	("Newman" , "Hammad" , "9970 State Court" , "Duluth" , "GA" , "30096" , "2025550157" , "hnewman@isp.com"),

	("Guthrie" , "Maha" , "54 Woodsman Drive" , "Duluth" , "GA" , "30096" , "2025550161" , "mguthrie@isp.com"),

	("Roberts" , "Tulisa" , "7174 Studebaker Street" , "Duluth" , "GA" , "30096" , "2025550163" , "troberts@isp.com"),

	("Solis" , "Robin" , "8474 Wentworth Street" , "Duluth" , "GA" , "30096" , "2025550164" , "rsolis@isp.com"),

	("Heath" , "Kavita" , "796 Hartford St" , "Duluth" , "GA" , "30096" , "2025550165" , "kheath@isp.com"),

	("White" , "Meera" , "484 Bridge St" , "Piscataway" , "NJ" , "08854" , "2025550166" , "mwhite@isp.com"),

	("Esparza" , "Bradlee" , "7031 Gainsway St" , "Piscataway" , "NJ" , "08854" , "2025550173" , "besparza@isp.com"),

	("Leonard" , "Leilani" , "37 Monroe Street" , "Piscataway" , "NJ" , "08854" , "2025550175" , "lleonard@isp.com"),

	("Brook" , "Stefanie" , "7990 West Surrey St" , "Piscataway" , "NJ" , "08854" , "2025550179" , "sbrook@isp.com"),

	("Squires" , "Grover" , "7618 Madison Court" , "Piscataway" , "NJ" , "08854" , "2025550180" , "gsquires@isp.com"),

	("Kumar" , "Jonathan" , "25 Annadale Court" , "Jupiter" , "FL" , "33458" , "2025550182" , "jkumar@isp.com"),

	("Neville" , "Angus" , "9841 Smith Drive" , "Jupiter" , "FL" , "33458" , "2025550187" , "aneville@isp.com"),

	("Sparrow" , "Uzair" , "7999 Hall Street" , "Jupiter" , "FL" , "33458" , "2025550188" , "usparrow@isp.com"),

	("Currie" , "Amari" , "8411 Pleasant St" , "Jupiter" , "FL" , "33458" , "2025550194" , "acurrie@isp.com"),

	("Wallace" , "Imaani" , "33 Pierce Rd" , "Jupiter" , "FL" , "33458" , "2025550195" , "iwallace@isp.com"),

	("House" , "Efe" , "97 High Point Street" , "Lanham" , "MD" , "20706" , "2025550196" , "ehouse@isp.com"),

	("Atkinson" , "Atticus" , "66 Harrison Dr" , "Lanham" , "MD" , "20706" , "2025550197" , "aatkinson@isp.com"),

	("Ramirez" , "Michelle" , "370 Hill Field Ave" , "Lanham" , "MD" , "20706" , "2025550198" , "mramirez@isp.com"),

	("Hassan" , "Remy" , "249 Devon Lane" , "Lanham" , "MD" , "20706" , "2025550199" , "rhassan@isp.com"),

	("Beck" , "Jordana" , "7911 Carson Lane" , "Lanham" , "MD" , "20706" , "2025550200" , "jbeck@isp.com");


#Insert data in file employee.sql into table employee

	INSERT INTO employee(lastName, firstName, address, city, state, zipCode, phone, email) VALUES
	("Prince" , "Yvonne" , "12 Creekside St" , "Huntington Beach" , "CA" , "92647" , "2025550109" , "yprince@frozenfoods.com"),

	("Rennie" , "Dante" , "137 Wall St" , "Memphis" , "TN" , "38117" , "2025550112" , "drennie@frozenfoods.com"),

	("Waters" , "Alysha" , "411 Shirley St" , "Abingdon" , "VA" , "24210" , "2025550115" , "awaters@frozenfoods.com"),

	("Clarke" , "Avaya" , "7771 Border Court" , "San Marcos" , "CA" , "92078" , "2025550119" , "aclarke@frozenfoods.com"),

	("Kaiser" , "Haniya" , "6 South Sulphur Springs Street" , "Jefferson" , "LA" , "70121" , "2025550121" , "hkaiser@frozenfoods.com"),

	("Newman" , "Nathalie" , "942 New Saddle Drive" , "Covington" , "LA" , "70433" , "2025550122" , "nnewman@frozenfoods.com"),

	("Guthrie" , "Dante" , "9 Wrangler Ave" , "Ontario" , "CA" , "91764" , "2025550124" , "dguthrie@frozenfoods.com"),

	("Roberts" , "Beverley" , "7319 S. Greenview Drive" , "Cuyahoga Falls" , "OH" , "44223" , "2025550125" , "broberts@frozenfoods.com"),

	("Solis" , "Paris" , "763 West Mulberry St" , "Battle Creek" , "MI" , "49016" , "2025550132" , "psolis@frozenfoods.com"),

	("Heath" , "Umaiza" , "545 Ohio Ave" , "Scottsdale" , "AZ" , "85260" , "2025550135" , "uheath@frozenfoods.com");

# Insert data in file supplier.sql into table supplier

	INSERT INTO supplier (supplierName, address, city, state, zipCode, phone, email) VALUES 
	("New Direction Foods" , "16321 Gothard St. Suite C-F" , "Huntington Beach" , "CA" , "92647" , "5626068511" , "info@new-direction-foods.com"),

	("Monogram Foods" , "530 Oak Court Drive Suite 400" , "Memphis" , "TN" , "38117" , "9016857167" , "info@monogram-foods.com"),

	("Dutt and Wagner of Virginia Inc" , "1142 West Main Street" , "Abingdon" , "VA" , "24210" , "8006882116" , "info@dutt-wagner-virginia.com"),

	("Culinary Specialties Inc" , "1231 Linda Vista Drive" , "San Marcos" , "CA" , "92078" , "7607448220" , "info@culinary-specialties.com"), 

	("John E. Koerner Company" , "4820 Jefferson Hwy" , "Jefferson" , "LA" , "70121" , "8003331913" , "info@koerner-company.com"),

	("Diversified Foods and Seasonings LLC" , "1404 Greengate Drive Suite 300" , "Covington" , "LA" , "70433" , "8009142382" , "info@diversified-foods.com"),

	("Ajinomoto Foods North America" , "4200 Concours Street Suite 100" , "Ontario" , "CA" , "91764" , "9094774700" , "info@ajinomoto-foods-na.com"),

	("Ascot Valley Foods" , "205 Ascot Pkwy" , "Cuyahoga Falls" , "OH" , "44223" , "3303769411" , "info@ascotvalleyfoods.com"),

	("Kellogg NA Company" , "P.O. Box CAMB" , "Battle Creek" , "MI" , "49016" , "8009621413" , "info@kelloggs.com"),

	("AppetizersUSA" , "15210 N. 75th Street Suite A" , "Scottsdale" , "AZ" , "85260" , "4804712601" , "info@appetizers-usa.com");