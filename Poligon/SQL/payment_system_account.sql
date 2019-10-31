-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: payment_system
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `idaccount` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT NULL,
  `creation_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `currency_idcurrency` int(11) NOT NULL,
  PRIMARY KEY (`idaccount`,`currency_idcurrency`),
  KEY `fk_account_currency1_idx` (`currency_idcurrency`),
  CONSTRAINT `fk_account_currency1` FOREIGN KEY (`currency_idcurrency`) REFERENCES `currency` (`idcurrency`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,38,'Sun Sep 08 21:56:50 GMT+03:00 2019','unlocked',2),(2,30,'Sun Sep 08 22:00:17 GMT+03:00 2019','unlocked',2),(3,90,'Sun Sep 08 22:00:59 GMT+03:00 2019','unlocked',2),(4,69,'Sun Sep 08 22:01:34 GMT+03:00 2019','unlocked',2),(5,36,'Sun Sep 08 22:01:59 GMT+03:00 2019','unlocked',2),(6,56,'Sun Sep 08 22:06:15 GMT+03:00 2019','unlocked',2),(7,93,'Sun Sep 08 22:06:51 GMT+03:00 2019','unlocked',2),(8,72,'Sun Sep 08 22:07:53 GMT+03:00 2019','unlocked',2),(9,0,'Mon Sep 09 23:46:15 GMT+03:00 2019','unlocked',2),(10,0,'Mon Sep 09 23:48:43 GMT+03:00 2019','unlocked',2),(11,0,'Mon Sep 09 23:51:28 GMT+03:00 2019','unlocked',2),(12,0,'Thu Oct 03 18:03:55 GMT+03:00 2019','unlocked',1),(13,0,'Thu Oct 31 00:12:29 GMT+03:00 2019','unlocked',1),(14,0,'Thu Oct 31 00:14:48 GMT+03:00 2019','unlocked',2);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-31  4:24:54
