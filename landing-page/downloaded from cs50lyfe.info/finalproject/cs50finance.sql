-- MySQL dump 10.13  Distrib 5.1.72, for debian-linux-gnu (x86_64)
--
-- Host: mysqlrzou-dreading-cs50-finalproject2.cs50lyfe.info    Database: rzou_dreading_cs50_finalproject2
-- ------------------------------------------------------
-- Server version	5.1.56-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Clothes`
--

DROP TABLE IF EXISTS `Clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clothes` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clothes`
--

LOCK TABLES `Clothes` WRITE;
/*!40000 ALTER TABLE `Clothes` DISABLE KEYS */;
INSERT INTO `Clothes` VALUES (5,'50.0000','2013-12-07 23:14:17'),(5,'70.0000','2013-12-07 23:14:32'),(5,'23.0000','2013-11-07 23:14:32'),(5,'14.0000','2013-10-07 23:14:32');
/*!40000 ALTER TABLE `Clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Electrical`
--

DROP TABLE IF EXISTS `Electrical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Electrical` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Electrical`
--

LOCK TABLES `Electrical` WRITE;
/*!40000 ALTER TABLE `Electrical` DISABLE KEYS */;
INSERT INTO `Electrical` VALUES (5,'50.0000','2013-12-07 23:16:16'),(5,'80.0000','2013-12-08 01:59:33');
/*!40000 ALTER TABLE `Electrical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Furniture`
--

DROP TABLE IF EXISTS `Furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Furniture` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Furniture`
--

LOCK TABLES `Furniture` WRITE;
/*!40000 ALTER TABLE `Furniture` DISABLE KEYS */;
INSERT INTO `Furniture` VALUES (5,'90.0000','2013-12-08 00:27:17'),(5,'30.0000','2013-12-08 00:27:27');
/*!40000 ALTER TABLE `Furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gardening`
--

DROP TABLE IF EXISTS `Gardening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gardening` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gardening`
--

LOCK TABLES `Gardening` WRITE;
/*!40000 ALTER TABLE `Gardening` DISABLE KEYS */;
INSERT INTO `Gardening` VALUES (5,'100.0000','2013-12-07 23:16:26');
/*!40000 ALTER TABLE `Gardening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `School_Supplies`
--

DROP TABLE IF EXISTS `School_Supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `School_Supplies` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `School_Supplies`
--

LOCK TABLES `School_Supplies` WRITE;
/*!40000 ALTER TABLE `School_Supplies` DISABLE KEYS */;
INSERT INTO `School_Supplies` VALUES (5,'12.0000','2013-12-08 00:26:44'),(5,'18.0000','2013-12-08 00:27:00');
/*!40000 ALTER TABLE `School_Supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Snacks`
--

DROP TABLE IF EXISTS `Snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Snacks` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Snacks`
--

LOCK TABLES `Snacks` WRITE;
/*!40000 ALTER TABLE `Snacks` DISABLE KEYS */;
INSERT INTO `Snacks` VALUES (5,'30.0000','2013-12-07 23:14:39'),(5,'25.0000','2013-12-07 23:15:03');
/*!40000 ALTER TABLE `Snacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL,
  `total` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Clothes` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Snacks` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Electrical` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Gardening` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `School_Supplies` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Furniture` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (0,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(5,'1631.0000','120.0000','55.0000','130.0000','100.0000','30.0000','120.0000'),(6,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limits`
--

DROP TABLE IF EXISTS `limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limits` (
  `id` int(10) unsigned NOT NULL,
  `total` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Clothes` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Snacks` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Electrical` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Gardening` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `School_Supplies` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `Furniture` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limits`
--

LOCK TABLES `limits` WRITE;
/*!40000 ALTER TABLE `limits` DISABLE KEYS */;
INSERT INTO `limits` VALUES (0,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(5,'0.0000','20.0000','6.0000','0.0000','0.0000','0.0000','0.0000'),(6,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000');
/*!40000 ALTER TABLE `limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`time`),
  KEY `time` (`time`),
  KEY `time_2` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
INSERT INTO `total` VALUES (5,'14.0000','2013-10-07 23:14:32','Clothes'),(5,'23.0000','2013-11-07 23:14:32','Clothes'),(5,'50.0000','2013-12-07 23:14:17','Clothes'),(5,'70.0000','2013-12-07 23:14:32','Clothes'),(5,'30.0000','2013-12-07 23:14:39','Snacks'),(5,'25.0000','2013-12-07 23:15:03','Snacks'),(5,'50.0000','2013-12-07 23:16:16','Electrical'),(5,'100.0000','2013-12-07 23:16:26','Gardening'),(5,'12.0000','2013-12-08 00:26:44','School_Supplies'),(5,'18.0000','2013-12-08 00:27:00','School_Supplies'),(5,'90.0000','2013-12-08 00:27:17','Furniture'),(5,'30.0000','2013-12-08 00:27:27','Furniture'),(5,'80.0000','2013-12-08 01:59:33','Electrical');
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'CS50','$1$Myj5BcZh$RuakaznRhrsvuPad.95.10',''),(6,'emailtest','finalproject','davidreading01@college.harvard.edu');
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

-- Dump completed on 2013-12-08  3:44:10
