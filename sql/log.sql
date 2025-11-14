-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for FreeBSD13.4 (i386)
--
-- Host: localhost    Database: log
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
-- Table structure for table `bootlog`
--

DROP TABLE IF EXISTS `bootlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hostname` char(128) NOT NULL DEFAULT 'UNKNOWN',
  `channel` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=Aria DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootlog`
--

LOCK TABLES `bootlog` WRITE;
/*!40000 ALTER TABLE `bootlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_name`
--

DROP TABLE IF EXISTS `change_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_name` (
  `pid` int(11) DEFAULT NULL,
  `old_name` varchar(255) DEFAULT NULL,
  `new_name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_name`
--

LOCK TABLES `change_name` WRITE;
/*!40000 ALTER TABLE `change_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command_log`
--

DROP TABLE IF EXISTS `command_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `command_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT 0,
  `server` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(6) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `command` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_log`
--

LOCK TABLES `command_log` WRITE;
/*!40000 ALTER TABLE `command_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `command_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cube`
--

DROP TABLE IF EXISTS `cube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cube` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `x` int(11) unsigned NOT NULL DEFAULT 0,
  `y` int(11) unsigned NOT NULL DEFAULT 0,
  `item_vnum` int(11) unsigned NOT NULL DEFAULT 0,
  `item_uid` int(11) unsigned NOT NULL DEFAULT 0,
  `item_count` int(5) unsigned NOT NULL DEFAULT 0,
  `success` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `item_vnum` (`item_vnum`) USING BTREE,
  KEY `item_uid` (`item_uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cube`
--

LOCK TABLES `cube` WRITE;
/*!40000 ALTER TABLE `cube` DISABLE KEYS */;
/*!40000 ALTER TABLE `cube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dragon_slay_log`
--

DROP TABLE IF EXISTS `dragon_slay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dragon_slay_log` (
  `guild_id` int(11) unsigned NOT NULL,
  `vnum` int(11) unsigned NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=Aria DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dragon_slay_log`
--

LOCK TABLES `dragon_slay_log` WRITE;
/*!40000 ALTER TABLE `dragon_slay_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dragon_slay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fish_log`
--

DROP TABLE IF EXISTS `fish_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fish_log` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `player_id` int(10) unsigned NOT NULL DEFAULT 0,
  `map_index` tinyint(4) NOT NULL DEFAULT 0,
  `fish_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fishing_level` int(11) NOT NULL DEFAULT 0,
  `waiting_time` int(11) NOT NULL DEFAULT 0,
  `success` tinyint(4) NOT NULL DEFAULT 0,
  `size` smallint(6) NOT NULL DEFAULT 0
) ENGINE=Aria DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish_log`
--

LOCK TABLES `fish_log` WRITE;
/*!40000 ALTER TABLE `fish_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fish_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldlog`
--

DROP TABLE IF EXISTS `goldlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `goldlog` (
  `date` varchar(10) NOT NULL DEFAULT '0000-00-00',
  `time` varchar(8) NOT NULL DEFAULT '00:00:00',
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `what` int(11) NOT NULL DEFAULT 0,
  `how` set('BUY','SELL','SHOP_SELL','SHOP_BUY','EXCHANGE_TAKE','EXCHANGE_GIVE','QUEST') DEFAULT NULL,
  `hint` varchar(50) DEFAULT NULL,
  KEY `date_idx` (`date`) USING BTREE,
  KEY `pid_idx` (`pid`) USING BTREE,
  KEY `what_idx` (`what`) USING BTREE,
  KEY `how_idx` (`how`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldlog`
--

LOCK TABLES `goldlog` WRITE;
/*!40000 ALTER TABLE `goldlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `goldlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_crc_log`
--

DROP TABLE IF EXISTS `hack_crc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `hack_crc_log` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` char(16) NOT NULL DEFAULT '',
  `name` char(24) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `server` char(100) NOT NULL DEFAULT '',
  `why` char(255) NOT NULL DEFAULT '',
  `crc` int(11) NOT NULL DEFAULT 0
) ENGINE=Aria DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_crc_log`
--

LOCK TABLES `hack_crc_log` WRITE;
/*!40000 ALTER TABLE `hack_crc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hack_crc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hack_log`
--

DROP TABLE IF EXISTS `hack_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `hack_log` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` char(16) NOT NULL DEFAULT '',
  `name` char(24) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `server` char(100) NOT NULL DEFAULT '',
  `why` char(255) NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hack_log`
--

LOCK TABLES `hack_log` WRITE;
/*!40000 ALTER TABLE `hack_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hack_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackshield_log`
--

DROP TABLE IF EXISTS `hackshield_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `hackshield_log` (
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `login` varchar(32) DEFAULT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` varchar(25) DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackshield_log`
--

LOCK TABLES `hackshield_log` WRITE;
/*!40000 ALTER TABLE `hackshield_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `hackshield_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levellog`
--

DROP TABLE IF EXISTS `levellog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `levellog` (
  `name` char(24) NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `playtime` int(11) NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`level`)
) ENGINE=Aria DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levellog`
--

LOCK TABLES `levellog` WRITE;
/*!40000 ALTER TABLE `levellog` DISABLE KEYS */;
/*!40000 ALTER TABLE `levellog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `type` enum('ITEM','CHARACTER') NOT NULL DEFAULT 'ITEM',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `who` int(10) unsigned NOT NULL DEFAULT 0,
  `x` int(10) unsigned NOT NULL DEFAULT 0,
  `y` int(10) unsigned NOT NULL DEFAULT 0,
  `what` int(11) NOT NULL DEFAULT 0,
  `how` varchar(50) NOT NULL DEFAULT '',
  `hint` varchar(70) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `vnum` int(11) DEFAULT NULL,
  KEY `who_idx` (`who`) USING BTREE,
  KEY `what_idx` (`what`) USING BTREE,
  KEY `how_idx` (`how`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog` (
  `type` enum('LOGIN','LOGOUT') DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `channel` tinyint(4) DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `job` tinyint(4) DEFAULT NULL,
  `playtime` int(10) unsigned DEFAULT NULL,
  KEY `pid` (`pid`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog2`
--

DROP TABLE IF EXISTS `loginlog2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text DEFAULT NULL,
  `is_gm` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `client_version` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `playtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog2`
--

LOCK TABLES `loginlog2` WRITE;
/*!40000 ALTER TABLE `loginlog2` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_log` (
  `time` datetime DEFAULT NULL,
  `type` enum('MONSTER','SHOP','REFINE','QUEST','GUILD','MISC','KILL','DROP') DEFAULT NULL,
  `vnum` int(11) NOT NULL DEFAULT 0,
  `gold` int(11) NOT NULL DEFAULT 0,
  KEY `type` (`type`,`vnum`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcbang_loginlog`
--

DROP TABLE IF EXISTS `pcbang_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcbang_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `pcbang_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '000.000.000.000',
  `pid` int(10) unsigned DEFAULT NULL,
  `play_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `pcbang_id` (`pcbang_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcbang_loginlog`
--

LOCK TABLES `pcbang_loginlog` WRITE;
/*!40000 ALTER TABLE `pcbang_loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcbang_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercount`
--

DROP TABLE IF EXISTS `playercount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `playercount` (
  `date` datetime DEFAULT NULL,
  `count_red` int(11) DEFAULT NULL,
  `count_yellow` int(11) DEFAULT NULL,
  `count_blue` int(11) DEFAULT NULL,
  `count_total` int(11) DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercount`
--

LOCK TABLES `playercount` WRITE;
/*!40000 ALTER TABLE `playercount` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_reward_log`
--

DROP TABLE IF EXISTS `quest_reward_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_reward_log` (
  `quest_name` varchar(32) DEFAULT NULL,
  `player_id` int(10) unsigned DEFAULT NULL,
  `player_level` tinyint(4) DEFAULT NULL,
  `reward_type` enum('EXP','ITEM') DEFAULT NULL,
  `reward_value1` int(10) unsigned DEFAULT NULL,
  `reward_value2` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  KEY `player_id` (`player_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_reward_log`
--

LOCK TABLES `quest_reward_log` WRITE;
/*!40000 ALTER TABLE `quest_reward_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_reward_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinelog`
--

DROP TABLE IF EXISTS `refinelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `refinelog` (
  `pid` int(10) unsigned DEFAULT NULL,
  `item_name` varchar(24) NOT NULL DEFAULT '',
  `item_id` int(11) NOT NULL DEFAULT 0,
  `step` varchar(50) NOT NULL DEFAULT '',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_success` tinyint(1) NOT NULL DEFAULT 0,
  `setType` set('SOCKET','POWER','ROD','GUILD','SCROLL','HYUNIRON','GOD_SCROLL','MUSIN_SCROLL') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinelog`
--

LOCK TABLES `refinelog` WRITE;
/*!40000 ALTER TABLE `refinelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shout_log`
--

DROP TABLE IF EXISTS `shout_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `shout_log` (
  `time` datetime DEFAULT '0000-00-00 00:00:00',
  `channel` tinyint(4) DEFAULT NULL,
  `empire` tinyint(4) DEFAULT NULL,
  `shout` varchar(350) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  KEY `time_idx` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=big5 COLLATE=big5_chinese_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shout_log`
--

LOCK TABLES `shout_log` WRITE;
/*!40000 ALTER TABLE `shout_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `shout_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speed_hack`
--

DROP TABLE IF EXISTS `speed_hack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `speed_hack` (
  `pid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `hack_count` varchar(20) CHARACTER SET big5 COLLATE big5_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speed_hack`
--

LOCK TABLES `speed_hack` WRITE;
/*!40000 ALTER TABLE `speed_hack` DISABLE KEYS */;
/*!40000 ALTER TABLE `speed_hack` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31 23:50:28
