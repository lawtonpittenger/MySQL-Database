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
