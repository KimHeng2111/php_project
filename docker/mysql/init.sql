-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `catId` int NOT NULL AUTO_INCREMENT,
  `catName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `catOrder` int NOT NULL,
  `catNote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`catId`),
  UNIQUE KEY `catName` (`catName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'Electronics',1,'Gadgets and devices','2026-03-29 07:29:02'),(2,'Clothing',2,'Apparel and accessories','2026-03-29 07:29:02'),(3,'Home & Kitchen',3,'Appliances and decor','2026-03-29 07:29:02'),(4,'Books',4,'Physical and e-books','2026-03-29 07:29:02'),(5,'Beauty',5,'Cosmetics and skincare','2026-03-29 07:29:02'),(6,'Sports',6,'Fitness gear and equipment','2026-03-29 07:29:02'),(7,'Toys',7,'Games and children playthings','2026-03-29 07:29:02'),(8,'Automotive',8,'Car parts and accessories','2026-03-29 07:29:02'),(9,'Groceries',9,'Food and beverages','2026-03-29 07:29:02'),(10,'Office Supplies',10,'Stationery and furniture','2026-03-29 07:29:02'),(11,'Computer',11,'For Computer','2026-03-29 08:56:44'),(12,'SmartPhone',12,'Oppo ','2026-03-29 08:59:14');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `proId` int NOT NULL,
  `proName` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `catId` int DEFAULT NULL,
  `qty` int DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`proId`),
  KEY `FK_Product_Category` (`catId`),
  CONSTRAINT `FK_Product_Category` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (101,'Smartphone Pro',899.99,1,50,'http://example.com/phone'),(102,'Cotton T-Shirt',19.50,2,200,'http://example.com/tshirt'),(103,'Air Fryer',120.00,3,30,'http://example.com/fryer'),(104,'SQL Basics Book',35.00,4,100,'http://example.com/book'),(105,'Moisturizing Cream',25.99,5,75,'http://example.com/cream'),(106,'Yoga Mat',40.00,6,40,'http://example.com/yoga'),(107,'Lego Castle Set',59.99,7,15,'http://example.com/lego'),(108,'Leather Seat Covers',150.00,8,10,'http://example.com/seats'),(109,'Organic Coffee Beans',15.00,9,500,'http://example.com/coffee'),(110,'Ergonomic Chair',210.00,10,12,'http://example.com/chair');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-29 12:45:16
