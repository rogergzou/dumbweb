-- MySQL dump 10.14  Distrib 5.5.32-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	5.5.32-MariaDB

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
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL,
  `total` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `clothes` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `food` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `financial` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `fwef` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `efwwe` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `aaaaa` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `wq` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `w` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `nnnvnd` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `qqq` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `zzzz` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `re` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `financial` (`financial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (3,0.0000,0.0000,0.0000,0.0000,331.0000,323.0000,33.0000,7.0000,14.0000,12.0000,111.0000,17.0000,4.0000);
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
  `clothes` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `food` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `aa` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `aaa` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `aaaa` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `aaaaa` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `bbb` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `bnm` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `njxcnv,x` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `jaf;sdfsd` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `jhbv` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `jgg` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `wefwe` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `acxvxc` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `fuihew` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `few` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `ww` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `wwwwq` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limits`
--

LOCK TABLES `limits` WRITE;
/*!40000 ALTER TABLE `limits` DISABLE KEYS */;
INSERT INTO `limits` VALUES (3,0.0000,0.0000,3432.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,331.0000,33.0000,33.0000,42.0000,42.0000);
/*!40000 ALTER TABLE `limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re`
--

DROP TABLE IF EXISTS `re`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re`
--

LOCK TABLES `re` WRITE;
/*!40000 ALTER TABLE `re` DISABLE KEYS */;
INSERT INTO `re` VALUES (3,4.0000,'2013-12-05 23:10:03');
/*!40000 ALTER TABLE `re` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'m','',''),(3,'jharvard','$1$50$RX3wnAMNrGIbgzbRYrxM1/','ipod123432@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzz`
--

DROP TABLE IF EXISTS `zzzz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzz` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzz`
--

LOCK TABLES `zzzz` WRITE;
/*!40000 ALTER TABLE `zzzz` DISABLE KEYS */;
INSERT INTO `zzzz` VALUES (3,4.0000,'2013-12-05 00:26:50'),(3,13.0000,'2013-12-05 00:26:56');
/*!40000 ALTER TABLE `zzzz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-05 23:52:43
