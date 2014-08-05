-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysqlrzou-dreading-cs50-finalproject2.cs50lyfe.info
-- Generation Time: Dec 08, 2013 at 08:33 AM
-- Server version: 5.1.56
-- PHP Version: 5.4.20

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rzou_dreading_cs50_finalproject2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Clothes`
--

CREATE TABLE IF NOT EXISTS `Clothes` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Clothes`
--

INSERT INTO `Clothes` (`id`, `amount`, `time`) VALUES
(5, 14.0000, '2013-10-07 23:14:32'),
(5, 23.0000, '2013-11-07 23:14:32'),
(5, 50.0000, '2013-12-07 23:14:17'),
(5, 70.0000, '2013-12-07 23:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `Electrical`
--

CREATE TABLE IF NOT EXISTS `Electrical` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Electrical`
--

INSERT INTO `Electrical` (`id`, `amount`, `time`) VALUES
(5, 130.0000, '2013-10-12 23:14:32'),
(5, 9.0000, '2013-11-12 23:14:32'),
(5, 50.0000, '2013-12-07 23:16:16'),
(5, 80.0000, '2013-12-08 01:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
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

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `total`, `Clothes`, `Snacks`, `Electrical`, `Gardening`, `School_Supplies`, `Furniture`) VALUES
(5, 725.0000, 157.0000, 55.0000, 130.0000, 129.0000, 100.0000, 154.0000);

-- --------------------------------------------------------

--
-- Table structure for table `Furniture`
--

CREATE TABLE IF NOT EXISTS `Furniture` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Furniture`
--

INSERT INTO `Furniture` (`id`, `amount`, `time`) VALUES
(5, 22.0000, '2013-10-14 23:14:32'),
(5, 12.0000, '2013-11-14 23:14:32'),
(5, 90.0000, '2013-12-08 00:27:17'),
(5, 30.0000, '2013-12-08 00:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `Gardening`
--

CREATE TABLE IF NOT EXISTS `Gardening` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Gardening`
--

INSERT INTO `Gardening` (`id`, `amount`, `time`) VALUES
(5, 13.0000, '2013-10-12 21:14:32'),
(5, 16.0000, '2013-11-12 21:14:32'),
(5, 100.0000, '2013-12-07 23:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE IF NOT EXISTS `limits` (
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

--
-- Dumping data for table `limits`
--

INSERT INTO `limits` (`id`, `total`, `Clothes`, `Snacks`, `Electrical`, `Gardening`, `School_Supplies`, `Furniture`) VALUES
(5, 62.0000, 220.0000, 66.0000, 97.0000, 140.0000, 122.0000, 100.0000);

-- --------------------------------------------------------

--
-- Table structure for table `School_Supplies`
--

CREATE TABLE IF NOT EXISTS `School_Supplies` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `School_Supplies`
--

INSERT INTO `School_Supplies` (`id`, `amount`, `time`) VALUES
(5, 39.0000, '2013-10-12 19:14:32'),
(5, 31.0000, '2013-11-12 19:14:32'),
(5, 12.0000, '2013-12-08 00:26:44'),
(5, 18.0000, '2013-12-08 00:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `Snacks`
--

CREATE TABLE IF NOT EXISTS `Snacks` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  `time` datetime NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Snacks`
--

INSERT INTO `Snacks` (`id`, `amount`, `time`) VALUES
(5, 30.0000, '2013-12-07 23:14:39'),
(5, 25.0000, '2013-12-07 23:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE IF NOT EXISTS `total` (
  `id` int(10) NOT NULL,
  `amount` decimal(65,4) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`time`),
  KEY `time` (`time`),
  KEY `time_2` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `total`
--

INSERT INTO `total` (`id`, `amount`, `time`, `type`) VALUES
(5, 14.0000, '2013-10-07 23:14:32', 'Clothes'),
(5, 39.0000, '2013-10-12 19:14:32', 'School_Supplies'),
(5, 16.0000, '2013-10-12 21:14:32', 'Gardening'),
(5, 130.0000, '2013-10-12 23:14:32', 'Electrical'),
(5, 22.0000, '2013-10-14 23:14:32', 'Furniture'),
(5, 23.0000, '2013-11-07 23:14:32', 'Clothes'),
(5, 31.0000, '2013-11-12 19:14:32', 'School_Supplies'),
(5, 13.0000, '2013-11-12 21:14:32', 'Gardening'),
(5, 9.0000, '2013-11-12 23:14:32', 'Eletrical'),
(5, 12.0000, '2013-11-14 23:14:32', 'Furniture'),
(5, 50.0000, '2013-12-07 23:14:17', 'Clothes'),
(5, 70.0000, '2013-12-07 23:14:32', 'Clothes'),
(5, 30.0000, '2013-12-07 23:14:39', 'Snacks'),
(5, 25.0000, '2013-12-07 23:15:03', 'Snacks'),
(5, 50.0000, '2013-12-07 23:16:16', 'Electrical'),
(5, 100.0000, '2013-12-07 23:16:26', 'Gardening'),
(5, 12.0000, '2013-12-08 00:26:44', 'School_Supplies'),
(5, 18.0000, '2013-12-08 00:27:00', 'School_Supplies'),
(5, 90.0000, '2013-12-08 00:27:17', 'Furniture'),
(5, 30.0000, '2013-12-08 00:27:27', 'Furniture'),
(5, 80.0000, '2013-12-08 01:59:33', 'Electrical');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `hash`, `email`) VALUES
(5, 'CS50', '$1$Myj5BcZh$RuakaznRhrsvuPad.95.10', 'davidreading01@college.harvard.edu');
