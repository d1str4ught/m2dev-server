-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for FreeBSD13.4 (i386)
--
-- Host: localhost    Database: account
-- ------------------------------------------------------
-- Server version	10.6.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `social_id` varchar(13) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_testor` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(8) NOT NULL DEFAULT 'OK',
  `newsletter` tinyint(1) DEFAULT 0,
  `empire` tinyint(4) NOT NULL DEFAULT 0,
  `name_checked` tinyint(1) NOT NULL DEFAULT 0,
  `availDt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mileage` int(11) NOT NULL DEFAULT 0,
  `cash` int(11) NOT NULL DEFAULT 0,
  `gold_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `silver_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `safebox_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoloot_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fish_mind_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `marriage_fast_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `money_drop_rate_expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_cash` int(11) NOT NULL DEFAULT 0,
  `total_mileage` int(11) NOT NULL DEFAULT 0,
  `channel_company` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(255) DEFAULT NULL,
  `last_play` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`) USING BTREE,
  KEY `social_id` (`social_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii COLLATE=ascii_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','*CC67043C7BCFF5EEA5566BD9B1F3C74FD9A5CF5D','1234567','','0000-00-00 00:00:00',0,'OK',0,0,0,'0000-00-00 00:00:00',0,1650,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'',NULL,'2021-11-21 20:10:46'),(2,'test','*CC67043C7BCFF5EEA5566BD9B1F3C74FD9A5CF5D','1234567','','0000-00-00 00:00:00',0,'OK','',0,0,0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'',NULL,'2021-08-06 11:42:12');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametime`
--

DROP TABLE IF EXISTS `gametime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gametime` (
  `UserID` varchar(50) NOT NULL DEFAULT '',
  `paymenttype` tinyint(2) NOT NULL DEFAULT 1,
  `LimitTime` int(11) DEFAULT 0,
  `LimitDt` datetime DEFAULT '1990-01-01 00:00:00',
  `Scores` int(11) DEFAULT 0,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametime`
--

LOCK TABLES `gametime` WRITE;
/*!40000 ALTER TABLE `gametime` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametimeip`
--

DROP TABLE IF EXISTS `gametimeip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gametimeip` (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `ip` varchar(11) NOT NULL DEFAULT '000.000.000',
  `startIP` int(11) NOT NULL DEFAULT 0,
  `endIP` int(11) NOT NULL DEFAULT 255,
  `paymenttype` tinyint(2) NOT NULL DEFAULT 1,
  `LimitTime` int(11) NOT NULL DEFAULT 0,
  `LimitDt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `readme` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ipid`),
  UNIQUE KEY `ip_uniq` (`ip`,`startIP`,`endIP`),
  KEY `ip_idx` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametimeip`
--

LOCK TABLES `gametimeip` WRITE;
/*!40000 ALTER TABLE `gametimeip` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametimeip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gametimelog`
--

DROP TABLE IF EXISTS `gametimelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gametimelog` (
  `login` varchar(16) DEFAULT NULL,
  `type` enum('IP_FREE','FREE','IP_TIME','IP_DAY','TIME','DAY') DEFAULT NULL,
  `logon_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `use_time` int(11) DEFAULT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '000.000.000.000',
  `server` varchar(32) NOT NULL DEFAULT '',
  KEY `login_key` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COLLATE=gb2312_chinese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gametimelog`
--

LOCK TABLES `gametimelog` WRITE;
/*!40000 ALTER TABLE `gametimelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gametimelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string`
--

DROP TABLE IF EXISTS `string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `string` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `text` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string`
--

LOCK TABLES `string` WRITE;
/*!40000 ALTER TABLE `string` DISABLE KEYS */;
/*!40000 ALTER TABLE `string` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31 23:50:09
