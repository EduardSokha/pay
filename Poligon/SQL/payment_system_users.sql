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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `role_idrole` int(11) NOT NULL,
  `series_number_passport` varchar(45) DEFAULT NULL,
  `identification_number_passport` varchar(45) DEFAULT NULL,
  `codeword` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `residence_registr_data_passport` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusers`,`role_idrole`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  KEY `fk_users_role1_idx` (`role_idrole`),
  CONSTRAINT `fk_users_role1` FOREIGN KEY (`role_idrole`) REFERENCES `role` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ale','111','Alexandr','Kedd','Маяковского 114, кв 16',1,'BB26898','46646v66','каваль','+375338942326','Маяковского 114, кв 16'),(2,'Dmitr','222','Dmitriy','Yushko','Deriglazova, 20 flat 27',2,'VV99999','99999v99','venom','+375336897422','Deriglazova, 20 flat 666'),(3,'Vova','333','Vladimir','Smirnov','Baranova, 2 flat 9',2,'BB98743','11236v742','lucky','+375293213971','Baranova, 2 flat 9'),(4,'Fed','444','Fedor','Kashaev','Pushkina, 20 flat 36',2,'BB38946','94380v984','fedric','+375299439620','Pushkina, 20 flat 36'),(5,'Nilik','555','Roma','Nilikovskiy','Dolgobrodskaya 2, flat 20',2,NULL,NULL,NULL,NULL,NULL),(7,'Niliki','555','Roma','Nilikovskiy','Dolgobrodskaya 2, flat 20',2,'BB78123','48937v69','ÑÐµÑÐ¸Ðº','+37293697841','Dolgobrodskaya 2, flat 20'),(8,'Nilikiii','666','Roma','Nilikovskiy','Dolgobrodskaya 2, flat 20',2,'BB26898','46646v66','ÐºÐ¾Ð²Ð°Ð»Ñ','+37293697841','Dolgobrodskaya 2, flat 20'),(9,'Nilik34','777','Roma','Nilikovskiy','Dolgobrodskaya 2, flat 20',2,'BB26898','46646v66','ÐºÐ¾Ð²Ð°Ð»Ñ','+37293697841','Dolgobrodskaya 2, flat 20'),(10,'Nilikttt','888','Roma','Nilikovskiy','Dolgobrodskaya 2, flat 20',2,'BB26898','46646v66','ÐºÐ¾Ð²Ð°Ð»Ñ','+37293697841','Dolgobrodskaya 2, flat 20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-31  4:24:55
