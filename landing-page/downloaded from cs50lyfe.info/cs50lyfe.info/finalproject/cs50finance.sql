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
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clothes`
--

LOCK TABLES `Clothes` WRITE;
/*!40000 ALTER TABLE `Clothes` DISABLE KEYS */;
INSERT INTO `Clothes` VALUES (5,'14.0000','2013-10-07 23:14:32'),(5,'23.0000','2013-11-07 23:14:32'),(5,'50.0000','2013-12-07 23:14:17'),(5,'70.0000','2013-12-07 23:14:32'),(5,'6.0000','2013-12-09 11:27:58'),(5,'10.0000','2013-12-09 11:39:48'),(5,'40.0000','2013-12-09 11:47:51'),(15,'0.0200','2013-12-09 12:51:18'),(5,'42.4200','2013-12-15 20:49:43'),(16,'10.0100','2013-12-15 21:32:02'),(16,'15.0000','2013-12-15 21:32:47');
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
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Electrical`
--

LOCK TABLES `Electrical` WRITE;
/*!40000 ALTER TABLE `Electrical` DISABLE KEYS */;
INSERT INTO `Electrical` VALUES (5,'130.0000','2013-10-12 23:14:32'),(5,'9.0000','2013-11-12 23:14:32'),(5,'50.0000','2013-12-07 23:16:16'),(5,'80.0000','2013-12-08 01:59:33'),(15,'435724095298.0000','2013-12-09 12:51:05'),(5,'50.0000','2013-12-16 07:49:58'),(16,'100.0000','2013-12-16 07:53:25'),(16,'50.0000','2013-12-16 08:24:24');
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
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Furniture`
--

LOCK TABLES `Furniture` WRITE;
/*!40000 ALTER TABLE `Furniture` DISABLE KEYS */;
INSERT INTO `Furniture` VALUES (5,'22.0000','2013-10-14 23:14:32'),(5,'12.0000','2013-11-14 23:14:32'),(5,'90.0000','2013-12-08 00:27:17'),(5,'30.0000','2013-12-08 00:27:27');
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
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gardening`
--

LOCK TABLES `Gardening` WRITE;
/*!40000 ALTER TABLE `Gardening` DISABLE KEYS */;
INSERT INTO `Gardening` VALUES (5,'13.0000','2013-10-12 21:14:32'),(5,'16.0000','2013-11-12 21:14:32'),(5,'100.0000','2013-12-07 23:16:26');
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
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `School_Supplies`
--

LOCK TABLES `School_Supplies` WRITE;
/*!40000 ALTER TABLE `School_Supplies` DISABLE KEYS */;
INSERT INTO `School_Supplies` VALUES (5,'39.0000','2013-10-12 19:14:32'),(5,'31.0000','2013-11-12 19:14:32'),(5,'12.0000','2013-12-08 00:26:44'),(5,'18.0000','2013-12-08 00:27:00');
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
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Snacks`
--

LOCK TABLES `Snacks` WRITE;
/*!40000 ALTER TABLE `Snacks` DISABLE KEYS */;
INSERT INTO `Snacks` VALUES (5,'30.0000','2013-12-07 23:14:39'),(5,'25.0000','2013-12-07 23:15:03'),(9,'4.5300','2013-12-09 12:06:51'),(15,'5.0000','2013-12-09 12:51:25'),(16,'20.0000','2013-12-15 21:33:25');
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
  `newcat` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (5,'1023.4200','255.4200','55.0000','230.0000','159.0000','100.0000','154.0000','0.0000'),(9,'44.1700','0.0000','21.6700','0.0000','0.0000','22.5000','0.0000','0.0000'),(10,'60.0000','60.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(11,'45.0000','45.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(12,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(13,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(14,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(15,'435724095303.0200','0.0200','5.0000','435724095298.0000','0.0000','0.0000','0.0000','0.0000'),(16,'245.0100','25.0100','20.0000','150.0000','0.0000','0.0000','0.0000','50.0000'),(17,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000');
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
  `newcat` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limits`
--

LOCK TABLES `limits` WRITE;
/*!40000 ALTER TABLE `limits` DISABLE KEYS */;
INSERT INTO `limits` VALUES (5,'62.0000','42.4200','50.0000','100.0000','140.0000','122.0000','100.0000','0.0000'),(9,'0.0000','0.0000','25.2500','0.0000','0.0000','200.0000','0.0000','0.0000'),(10,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(11,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(12,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(13,'0.0000','10.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000'),(14,'0.0000','0.0000','0.0000','20.0000','0.0000','0.0000','0.0000','0.0000'),(15,'0.0000','0.0000','0.0000','3000000000000000000000000000000000.0000','0.0000','0.0000','0.0000','0.0000'),(16,'0.0000','10.0000','0.0000','300.0000','0.0000','0.0000','0.0000','0.0000'),(17,'0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000','0.0000');
/*!40000 ALTER TABLE `limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newcat`
--

DROP TABLE IF EXISTS `newcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newcat` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newcat`
--

LOCK TABLES `newcat` WRITE;
/*!40000 ALTER TABLE `newcat` DISABLE KEYS */;
INSERT INTO `newcat` VALUES (16,'50.0000','2013-12-15 21:44:31');
/*!40000 ALTER TABLE `newcat` ENABLE KEYS */;
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
INSERT INTO `total` VALUES (5,'14.0000','2013-10-07 23:14:32','Clothes'),(5,'39.0000','2013-10-12 19:14:32','School_Supplies'),(5,'16.0000','2013-10-12 21:14:32','Gardening'),(5,'130.0000','2013-10-12 23:14:32','Electrical'),(5,'22.0000','2013-10-14 23:14:32','Furniture'),(5,'23.0000','2013-11-07 23:14:32','Clothes'),(5,'31.0000','2013-11-12 19:14:32','School_Supplies'),(5,'13.0000','2013-11-12 21:14:32','Gardening'),(5,'9.0000','2013-11-12 23:14:32','Eletrical'),(5,'12.0000','2013-11-14 23:14:32','Furniture'),(5,'50.0000','2013-12-07 23:14:17','Clothes'),(5,'70.0000','2013-12-07 23:14:32','Clothes'),(5,'30.0000','2013-12-07 23:14:39','Snacks'),(5,'25.0000','2013-12-07 23:15:03','Snacks'),(5,'50.0000','2013-12-07 23:16:16','Electrical'),(5,'100.0000','2013-12-07 23:16:26','Gardening'),(5,'12.0000','2013-12-08 00:26:44','School_Supplies'),(5,'18.0000','2013-12-08 00:27:00','School_Supplies'),(5,'90.0000','2013-12-08 00:27:17','Furniture'),(5,'30.0000','2013-12-08 00:27:27','Furniture'),(5,'80.0000','2013-12-08 01:59:33','Electrical'),(5,'6.0000','2013-12-09 11:27:58','Clothes'),(5,'10.0000','2013-12-09 11:39:48','Clothes'),(5,'40.0000','2013-12-09 11:47:51','Clothes'),(9,'4.5300','2013-12-09 12:06:51','Snacks'),(15,'435724095298.0000','2013-12-09 12:51:05','Electrical'),(15,'0.0200','2013-12-09 12:51:18','Clothes'),(15,'5.0000','2013-12-09 12:51:25','Snacks'),(5,'42.4200','2013-12-15 20:49:43','Clothes'),(16,'10.0100','2013-12-15 21:32:02','Clothes'),(16,'15.0000','2013-12-15 21:32:47','Clothes'),(16,'20.0000','2013-12-15 21:33:25','Snacks'),(16,'50.0000','2013-12-15 21:44:31','newcat'),(5,'50.0000','2013-12-16 07:49:58','Electrical'),(16,'100.0000','2013-12-16 07:53:25','Electrical'),(16,'50.0000','2013-12-16 08:24:24','Electrical');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'CS50','$1$Myj5BcZh$RuakaznRhrsvuPad.95.10','davidreading01@college.harvard.edu'),(12,'carolerea','$1$jWfqnr.2$Cc1tAxnmWd7TcsXf.EFqx.','carolerea@verizon.net'),(13,'boh','$1$xNmzByET$XTz0VwpM26LnKd07ncp6j.','boh@college.harvard.edu'),(14,'God','$1$hjqhCjH6$JOPmFQdoWd4TLID4GeeDh.','tpeeples@college.harvard.edu'),(15,'anne','$1$85ivK8UU$586fV91zxAG2kqLHfQmoJ1','annecheng@college.harvard.edu'),(16,'tester','$1$QnOLMujn$TQogxY9d2hgOrUTkZ8H/5.','artemis1593@yahoo.com'),(17,'testah','$1$mfdCUoqf$BLKEP7Sp5Bt6OQArOearR.','artemis1593@yahoo.com');
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

-- Dump completed on 2014-02-18 12:23:43
