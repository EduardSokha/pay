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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `idcard` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `account_idaccount` int(11) NOT NULL,
  `payment_system_card_idpayment_system_card` int(11) NOT NULL,
  `name_card_idname_card` int(11) NOT NULL,
  PRIMARY KEY (`idcard`,`account_idaccount`,`payment_system_card_idpayment_system_card`,`name_card_idname_card`),
  KEY `fk_card_account1_idx` (`account_idaccount`),
  KEY `fk_card_payment_system_card1_idx` (`payment_system_card_idpayment_system_card`),
  KEY `fk_card_name_card1_idx` (`name_card_idname_card`),
  CONSTRAINT `fk_card_account1` FOREIGN KEY (`account_idaccount`) REFERENCES `account` (`idaccount`),
  CONSTRAINT `fk_card_name_card1` FOREIGN KEY (`name_card_idname_card`) REFERENCES `name_card` (`idname_card`),
  CONSTRAINT `fk_card_payment_system_card1` FOREIGN KEY (`payment_system_card_idpayment_system_card`) REFERENCES `payment_system_card` (`idpayment_system_card`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,'Sun Sep 08 22:21:18 GMT+03:00 2019','unlocked',1,1,1),(2,'Sun Sep 08 22:23:33 GMT+03:00 2019','unlocked',2,2,2),(3,'Sun Sep 08 22:23:59 GMT+03:00 2019','unlocked',3,3,4),(4,'Sun Sep 08 22:26:39 GMT+03:00 2019','unlocked',4,2,3),(5,'Sun Sep 08 22:33:31 GMT+03:00 2019','unlocked',5,3,4),(6,'Sun Sep 08 22:34:07 GMT+03:00 2019','unlocked',6,1,2),(7,'Sun Sep 08 22:35:55 GMT+03:00 2019','unlocked',7,3,1),(8,'Sun Sep 08 22:36:33 GMT+03:00 2019','unlocked',8,3,3),(9,'Mon Sep 09 23:46:15 GMT+03:00 2019','unlocked',9,1,3),(10,'Mon Sep 09 23:48:43 GMT+03:00 2019','unlocked',10,3,4),(11,'Mon Sep 09 23:51:28 GMT+03:00 2019','unlocked',11,3,4),(12,'Thu Oct 03 18:03:55 GMT+03:00 2019','unlocked',12,1,1),(13,'Thu Oct 31 00:12:29 GMT+03:00 2019','unlocked',13,1,1),(14,'Thu Oct 31 00:14:48 GMT+03:00 2019','unlocked',14,2,3);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-31  4:24:58
