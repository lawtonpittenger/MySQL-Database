CREATE DATABASE  IF NOT EXISTS `frozenfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `frozenfood`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: frozenfood
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `supplierName` (`supplierName`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'New Direction Foods','16321 Gothard St. Suite C-F','Huntington Beach','CA','92647','5626068511','info@new-direction-foods.com'),(2,'Monogram Foods','530 Oak Court Drive Suite 400','Memphis','TN','38117','9016857167','info@monogram-foods.com'),(3,'Dutt and Wagner of Virginia Inc','1142 West Main Street','Abingdon','VA','24210','8006882116','info@dutt-wagner-virginia.com'),(4,'Culinary Specialties Inc','1231 Linda Vista Drive','San Marcos','CA','92078','7607448220','info@culinary-specialties.com'),(5,'John E. Koerner Company','4820 Jefferson Hwy','Jefferson','LA','70121','8003331913','info@koerner-company.com'),(6,'Diversified Foods and Seasonings LLC','1404 Greengate Drive Suite 300','Covington','LA','70433','8009142382','info@diversified-foods.com'),(7,'Ajinomoto Foods North America','4200 Concours Street Suite 100','Ontario','CA','91764','9094774700','info@ajinomoto-foods-na.com'),(8,'Ascot Valley Foods','205 Ascot Pkwy','Cuyahoga Falls','OH','44223','3303769411','info@ascotvalleyfoods.com'),(9,'Kellogg NA Company','P.O. Box CAMB','Battle Creek','MI','49016','8009621413','info@kelloggs.com'),(10,'AppetizersUSA','15210 N. 75th Street Suite A','Scottsdale','AZ','85260','4804712601','info@appetizers-usa.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 18:03:59


# Customer dump starts here

CREATE DATABASE  IF NOT EXISTS `frozenfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `frozenfood`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: frozenfood
-- ------------------------------------------------------
-- Server version 8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Goodman','Yvonne','12 Creekside St','Nashville','TN','37205','2025550109','ygoodman@isp.com'),(2,'Mackenzie','Dante','137 Wall St','Nashville','TN','37205','2025550112','dmackenzie@isp.com'),(3,'Gonzalez','Avaya','7771 Border Court','Nashville','TN','37205','2025550119','agonzalez@isp.com'),(4,'Kelly','Haniya','6 South Sulphur Springs Street','Nashville','TN','37205','2025550121','hkelly@isp.com'),(5,'Chambers','Nathalie','942 New Saddle Drive','Clover','SC','29710','2025550122','nchambers@isp.com'),(6,'Rollins','Dante','9 Wrangler Ave','Clover','SC','29710','2025550124','drollins@isp.com'),(7,'Mckee','Beverley','7319 S. Greenview Drive','Clover','SC','29710','2025550125','bmckee@isp.com'),(8,'Lindsey','Paris','763 West Mulberry St','Clover','SC','29710','2025550132','plindsey@isp.com'),(9,'Melia','Umaiza','545 Ohio Ave','Clover','SC','29710','2025550135','umelia@isp.com'),(10,'Prince','Nico','20 Middle River Street','Willoughby','OH','44094','2025550137','nprince@isp.com'),(11,'Rennie','Javan','8112 North Country St','Willoughby','OH','44094','2025550139','jrennie@isp.com'),(12,'Waters','Ali','83 Rockland Lane','Willoughby','OH','44094','2025550144','awaters@isp.com'),(13,'Clarke','JohnPaul','1 Riverside Lane','Willoughby','OH','44094','2025550153','jpcClarke@isp.com'),(14,'Kaiser','Dane','694 Wall Road','Willoughby','OH','44094','2025550155','kdaiser@isp.com'),(15,'Newman','Hammad','9970 State Court','Duluth','GA','30096','2025550157','hnewman@isp.com'),(16,'Guthrie','Maha','54 Woodsman Drive','Duluth','GA','30096','2025550161','mguthrie@isp.com'),(17,'Roberts','Tulisa','7174 Studebaker Street','Duluth','GA','30096','2025550163','troberts@isp.com'),(18,'Solis','Robin','8474 Wentworth Street','Duluth','GA','30096','2025550164','rsolis@isp.com'),(19,'Heath','Kavita','796 Hartford St','Duluth','GA','30096','2025550165','kheath@isp.com'),(20,'White','Meera','484 Bridge St','Piscataway','NJ','08854','2025550166','mwhite@isp.com'),(21,'Esparza','Bradlee','7031 Gainsway St','Piscataway','NJ','08854','2025550173','besparza@isp.com'),(22,'Leonard','Leilani','37 Monroe Street','Piscataway','NJ','08854','2025550175','lleonard@isp.com'),(23,'Brook','Stefanie','7990 West Surrey St','Piscataway','NJ','08854','2025550179','sbrook@isp.com'),(24,'Squires','Grover','7618 Madison Court','Piscataway','NJ','08854','2025550180','gsquires@isp.com'),(25,'Kumar','Jonathan','25 Annadale Court','Jupiter','FL','33458','2025550182','jkumar@isp.com'),(26,'Neville','Angus','9841 Smith Drive','Jupiter','FL','33458','2025550187','aneville@isp.com'),(27,'Sparrow','Uzair','7999 Hall Street','Jupiter','FL','33458','2025550188','usparrow@isp.com'),(28,'Currie','Amari','8411 Pleasant St','Jupiter','FL','33458','2025550194','acurrie@isp.com'),(29,'Wallace','Imaani','33 Pierce Rd','Jupiter','FL','33458','2025550195','iwallace@isp.com'),(30,'House','Efe','97 High Point Street','Lanham','MD','20706','2025550196','ehouse@isp.com'),(31,'Atkinson','Atticus','66 Harrison Dr','Lanham','MD','20706','2025550197','aatkinson@isp.com'),(32,'Ramirez','Michelle','370 Hill Field Ave','Lanham','MD','20706','2025550198','mramirez@isp.com'),(33,'Hassan','Remy','249 Devon Lane','Lanham','MD','20706','2025550199','rhassan@isp.com'),(34,'Beck','Jordana','7911 Carson Lane','Lanham','MD','20706','2025550200','jbeck@isp.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 18:03:58


#Employee dump starts here
CREATE DATABASE  IF NOT EXISTS `frozenfood` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `frozenfood`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: frozenfood
-- ------------------------------------------------------
-- Server version 8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Prince','Yvonne','12 Creekside St','Huntington Beach','CA','92647','2025550109','yprince@frozenfoods.com'),(2,'Rennie','Dante','137 Wall St','Memphis','TN','38117','2025550112','drennie@frozenfoods.com'),(3,'Waters','Alysha','411 Shirley St','Abingdon','VA','24210','2025550115','awaters@frozenfoods.com'),(4,'Clarke','Avaya','7771 Border Court','San Marcos','CA','92078','2025550119','aclarke@frozenfoods.com'),(5,'Kaiser','Haniya','6 South Sulphur Springs Street','Jefferson','LA','70121','2025550121','hkaiser@frozenfoods.com'),(6,'Newman','Nathalie','942 New Saddle Drive','Covington','LA','70433','2025550122','nnewman@frozenfoods.com'),(7,'Guthrie','Dante','9 Wrangler Ave','Ontario','CA','91764','2025550124','dguthrie@frozenfoods.com'),(8,'Roberts','Beverley','7319 S. Greenview Drive','Cuyahoga Falls','OH','44223','2025550125','broberts@frozenfoods.com'),(9,'Solis','Paris','763 West Mulberry St','Battle Creek','MI','49016','2025550132','psolis@frozenfoods.com'),(10,'Heath','Umaiza','545 Ohio Ave','Scottsdale','AZ','85260','2025550135','uheath@frozenfoods.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 18:03:59
