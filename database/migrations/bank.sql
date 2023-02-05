-- MySQL dump 10.19  Distrib 10.3.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	10.3.37-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `accounts_charts`
--

DROP TABLE IF EXISTS `accounts_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_charts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deposit_types_id` int(10) unsigned NOT NULL,
  `current_accounts_id` int(10) unsigned NOT NULL,
  `interest_accounts_id` int(10) unsigned NOT NULL,
  `user_informations_id` int(10) unsigned NOT NULL,
  `sum` varchar(255) NOT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_charts_current_accounts_id_foreign` (`current_accounts_id`),
  KEY `accounts_charts_interest_accounts_id_foreign` (`interest_accounts_id`),
  KEY `accounts_charts_deposit_types_id_foreign` (`deposit_types_id`),
  KEY `accounts_charts_user_informations_id_foreign` (`user_informations_id`),
  CONSTRAINT `accounts_charts_current_accounts_id_foreign` FOREIGN KEY (`current_accounts_id`) REFERENCES `current_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accounts_charts_deposit_types_id_foreign` FOREIGN KEY (`deposit_types_id`) REFERENCES `deposit_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accounts_charts_interest_accounts_id_foreign` FOREIGN KEY (`interest_accounts_id`) REFERENCES `interest_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accounts_charts_user_informations_id_foreign` FOREIGN KEY (`user_informations_id`) REFERENCES `user_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_charts`
--

LOCK TABLES `accounts_charts` WRITE;
/*!40000 ALTER TABLE `accounts_charts` DISABLE KEYS */;
INSERT INTO `accounts_charts` VALUES (6,2,5,5,1,'222222','2023-02-27 21:00:00','2023-04-27 21:00:00','2023-02-04 20:55:38','2023-02-04 20:55:38'),(7,1,6,6,1,'111111','2023-02-27 21:00:00','2023-04-27 21:00:00','2023-02-04 21:05:41','2023-02-04 21:05:41'),(8,2,7,7,1,'11111','2023-02-27 21:00:00','2023-04-27 21:00:00','2023-02-04 21:05:57','2023-02-04 21:05:57'),(9,3,5,5,2,'11.00','2023-02-27 21:00:00','2023-04-27 21:00:00','2023-02-04 21:33:55','2023-02-04 21:33:55'),(10,2,8,8,2,'111111','2023-02-27 21:00:00','2023-04-27 21:00:00','2023-02-04 21:34:31','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `accounts_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_funds`
--

DROP TABLE IF EXISTS `bank_funds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(13) NOT NULL,
  `credit` decimal(14,2) NOT NULL,
  `debit` decimal(14,2) NOT NULL,
  `balance` decimal(14,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_funds`
--

LOCK TABLES `bank_funds` WRITE;
/*!40000 ALTER TABLE `bank_funds` DISABLE KEYS */;
INSERT INTO `bank_funds` VALUES (2,'73279834659',100000278571.99,971209.79,99999307362.21,'2023-02-04 20:38:59','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `bank_funds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(255) NOT NULL,
  `interest_num` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (7,'2412015630008','2412015630018','1704','2023-02-04 20:55:38','2023-02-04 20:55:38'),(8,'3014015630019','3014015630029','3405','2023-02-04 21:05:41','2023-02-04 21:05:41'),(9,'2412015630028','2412015630038','2451','2023-02-04 21:05:57','2023-02-04 21:05:57'),(10,'2412015630008','2412015630018','6787','2023-02-04 21:33:55','2023-02-04 21:33:55'),(11,'2412015630018','2412015630028','7185','2023-02-04 21:34:31','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashboxes`
--

DROP TABLE IF EXISTS `cashboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashboxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(13) NOT NULL,
  `credit` decimal(14,2) NOT NULL,
  `debit` decimal(14,2) NOT NULL,
  `balance` decimal(14,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashboxes`
--

LOCK TABLES `cashboxes` WRITE;
/*!40000 ALTER TABLE `cashboxes` DISABLE KEYS */;
INSERT INTO `cashboxes` VALUES (2,'10109834659',452212.00,505566.00,168868.00,'2023-02-04 20:38:59','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `cashboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizenships`
--

DROP TABLE IF EXISTS `citizenships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citizenships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenships_name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizenships`
--

LOCK TABLES `citizenships` WRITE;
/*!40000 ALTER TABLE `citizenships` DISABLE KEYS */;
INSERT INTO `citizenships` VALUES (1,'Belarus','2023-02-04 17:44:29','2023-02-04 17:44:31'),(2,'USA','2023-02-04 17:44:54','2023-02-04 17:44:53');
/*!40000 ALTER TABLE `citizenships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_accounts`
--

DROP TABLE IF EXISTS `current_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(13) NOT NULL,
  `credit` decimal(14,2) NOT NULL,
  `debit` decimal(14,2) NOT NULL,
  `balance` decimal(14,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_accounts`
--

LOCK TABLES `current_accounts` WRITE;
/*!40000 ALTER TABLE `current_accounts` DISABLE KEYS */;
INSERT INTO `current_accounts` VALUES (5,'2412015630008',222222.00,563332.77,341110.77,'2023-02-04 20:55:38','2023-02-04 20:55:38'),(6,'3014015630019',111111.00,111111.00,0.00,'2023-02-04 21:05:41','2023-02-04 21:05:41'),(7,'2412015630028',11122.00,32844.01,21722.01,'2023-02-04 21:05:57','2023-02-04 21:33:55'),(8,'2412015630018',111111.00,328333.01,217222.01,'2023-02-04 21:34:31','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `current_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_types`
--

DROP TABLE IF EXISTS `deposit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposit_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `duration` int(11) NOT NULL,
  `currency` varchar(4) NOT NULL,
  `percent` varchar(8) NOT NULL,
  `sum` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_types`
--

LOCK TABLES `deposit_types` WRITE;
/*!40000 ALTER TABLE `deposit_types` DISABLE KEYS */;
INSERT INTO `deposit_types` VALUES (1,'deposit','1',2,'USD','10%','+1000','2023-02-04 20:08:53','2023-02-04 20:09:01'),(2,'credit','credit1',2,'EUR','10%','+1000','2023-02-04 20:08:53','2023-02-04 20:09:01'),(3,'credit','credit2',2,'BYN','10%','-1000','2023-02-04 20:08:53','2023-02-04 20:09:01');
/*!40000 ALTER TABLE `deposit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disabilities`
--

DROP TABLE IF EXISTS `disabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disabilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `disabilities_name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disabilities`
--

LOCK TABLES `disabilities` WRITE;
/*!40000 ALTER TABLE `disabilities` DISABLE KEYS */;
INSERT INTO `disabilities` VALUES (1,'Yes','2023-02-04 17:46:33','2023-02-04 17:46:24'),(2,'No','2023-02-04 17:46:33','2023-02-04 17:46:24');
/*!40000 ALTER TABLE `disabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_positions`
--

DROP TABLE IF EXISTS `family_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `family_positions_name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_positions`
--

LOCK TABLES `family_positions` WRITE;
/*!40000 ALTER TABLE `family_positions` DISABLE KEYS */;
INSERT INTO `family_positions` VALUES (1,'Single','2023-02-04 17:45:37','2023-02-04 17:45:38'),(2,'Married','2023-02-04 17:46:33','2023-02-04 17:46:24');
/*!40000 ALTER TABLE `family_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest_accounts`
--

DROP TABLE IF EXISTS `interest_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(13) NOT NULL,
  `credit` decimal(14,2) NOT NULL,
  `debit` decimal(14,2) NOT NULL,
  `balance` decimal(14,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest_accounts`
--

LOCK TABLES `interest_accounts` WRITE;
/*!40000 ALTER TABLE `interest_accounts` DISABLE KEYS */;
INSERT INTO `interest_accounts` VALUES (5,'2412015630018',0.00,0.00,0.00,'2023-02-04 20:55:38','2023-02-04 20:55:38'),(6,'3014015630029',0.00,0.00,0.00,'2023-02-04 21:05:41','2023-02-04 21:05:41'),(7,'2412015630038',0.00,0.00,0.00,'2023-02-04 21:05:57','2023-02-04 21:05:57'),(8,'2412015630028',0.00,0.00,0.00,'2023-02-04 21:34:31','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `interest_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_informations_id` int(10) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `operation_name` varchar(255) NOT NULL,
  `operation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_user_informations_id_foreign` (`user_informations_id`),
  CONSTRAINT `operations_user_informations_id_foreign` FOREIGN KEY (`user_informations_id`) REFERENCES `user_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (32,2,'deposit','add to cashbox','Result: deposit: 0.00 ;debit: 10000.00 ;balance: 10000.00','2023-02-04 20:38:59','2023-02-04 20:38:59'),(33,2,'deposit','add to credit cashbox','Result: deposit: 10000.00 ;debit: 10000.00 ;balance: 0.00','2023-02-04 20:38:59','2023-02-04 20:38:59'),(34,2,'deposit','add to credit current account','Result: deposit: 10000.00 ;debit: 0.00 ;balance: 10000.00','2023-02-04 20:38:59','2023-02-04 20:38:59'),(35,2,'deposit','add to debit current account','Result: deposit: 10000.00 ;debit: 10000.00 ;balance: 0.00','2023-02-04 20:38:59','2023-02-04 20:38:59'),(36,2,'deposit','add to credit bank fund','Result: deposit: 100000021350.00 ;debit: 0.00 ;balance: 100000021350.00','2023-02-04 20:38:59','2023-02-04 20:38:59'),(37,2,'credit','add to debit bank fund','Result: credit: 100000021350.00 ;debit: 25350.00 ;balance: 99999996000.00','2023-02-04 20:46:12','2023-02-04 20:46:12'),(38,2,'credit','add to debit current account','Result: credit: 0.00 ;debit: 25350.00 ;balance: 25350.00','2023-02-04 20:46:12','2023-02-04 20:46:12'),(39,2,'credit','add to credit current account','Result: credit: 10000.00 ;debit: 25350.00 ;balance: 15350.00','2023-02-04 20:46:12','2023-02-04 20:46:12'),(40,2,'credit','add to cashbox','Result: credit: 10000.00 ;debit: 20000.00 ;balance: 10000.00','2023-02-04 20:46:12','2023-02-04 20:46:12'),(41,2,'credit','add to credit cashbox','Result: credit: 29990.00 ;debit: 20000.00 ;balance: 29990.00','2023-02-04 20:46:33','2023-02-04 20:46:33'),(42,2,'credit','add to cashbox','Result: credit: 29990.00 ;debit: 20000.00 ;balance: -9990.00','2023-02-04 20:46:56','2023-02-04 20:46:56'),(43,2,'credit','add to cashbox','Result: credit: 29990.00 ;debit: 20000.00 ;balance: -9990.00','2023-02-04 20:46:56','2023-02-04 20:46:56'),(44,2,'credit','add to credit cashbox','Result: credit: 29990.00 ;debit: 20000.00 ;balance: -9990.00','2023-02-04 20:46:56','2023-02-04 20:46:56'),(45,2,'credit','add to credit cashbox','Result: credit: 29990.00 ;debit: 20000.00 ;balance: -9990.00','2023-02-04 20:46:56','2023-02-04 20:46:56'),(46,2,'credit','add to debit interest account','Result: credit: 0.00 ;debit: 0.00 ;balance: 0.00','2023-02-04 20:46:56','2023-02-04 20:46:56'),(47,2,'credit','add to debit interest account','Result: credit: 0.00 ;debit: 0.00 ;balance: 0.00','2023-02-04 20:46:56','2023-02-04 20:46:56'),(48,2,'credit','add to cashbox','Result: credit: 29990.00 ;debit: 30000.00 ;balance: 10.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(49,2,'credit','add to cashbox','Result: credit: 29990.00 ;debit: 30000.00 ;balance: 10.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(50,2,'credit','add to cashbox','Result: credit: 29990.00 ;debit: 30000.00 ;balance: 10.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(51,2,'credit','add to credit cashbox','Result: credit: 39990.00 ;debit: 30000.00 ;balance: -9990.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(52,2,'credit','add to credit cashbox','Result: credit: 39990.00 ;debit: 30000.00 ;balance: -9990.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(53,2,'credit','add to debit current account','Result: credit: 10000.00 ;debit: 35350.00 ;balance: 25350.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(54,2,'credit','add to credit cashbox','Result: credit: 49990.00 ;debit: 30000.00 ;balance: -19990.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(55,2,'credit','add to debit current account','Result: credit: 10000.00 ;debit: 45350.00 ;balance: 35350.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(56,2,'credit','add to credit current account','Result: credit: 20000.00 ;debit: 45350.00 ;balance: 25350.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(57,2,'credit','add to credit current account','Result: credit: 30000.00 ;debit: 55350.00 ;balance: 45350.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(58,2,'credit','add to debit current account','Result: credit: 30000.00 ;debit: 55350.00 ;balance: 45350.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(59,2,'credit','add to credit bank fund','Result: credit: 100000031350.00 ;debit: 25350.00 ;balance: 100000006000.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(60,2,'credit','add to cashbox','Result: credit: 49990.00 ;debit: 40000.00 ;balance: -9990.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(61,2,'credit','add to credit bank fund','Result: credit: 100000041350.00 ;debit: 25350.00 ;balance: 100000016000.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(62,2,'credit','add to credit cashbox','Result: credit: 59990.00 ;debit: 40000.00 ;balance: -19990.00','2023-02-04 20:47:37','2023-02-04 20:47:37'),(63,2,'deposit','add to debit bank fund','Result: deposit: 100000041350.00 ;debit: 46700.00 ;balance: 99999994650.00','2023-02-04 20:53:35','2023-02-04 20:53:35'),(64,2,'deposit','add to credit current account','Result: deposit: 20000.00 ;debit: 10000.00 ;balance: 10000.00','2023-02-04 20:53:35','2023-02-04 20:53:35'),(65,2,'deposit','add to debit current account','Result: deposit: 20000.00 ;debit: 20000.00 ;balance: 0.00','2023-02-04 20:53:35','2023-02-04 20:53:35'),(66,2,'deposit','add to cashbox','Result: deposit: 59990.00 ;debit: 50000.00 ;balance: -9990.00','2023-02-04 20:53:35','2023-02-04 20:53:35'),(67,2,'deposit','add to credit cashbox','Result: deposit: 69990.00 ;debit: 50000.00 ;balance: -19990.00','2023-02-04 20:53:35','2023-02-04 20:53:35'),(68,1,'credit','add to debit bank fund','Result: credit: 100000041350.00 ;debit: 610032.77 ;balance: 99999431317.23','2023-02-04 20:55:38','2023-02-04 20:55:38'),(69,1,'credit','add to debit current account','Result: credit: 0.00 ;debit: 563332.77 ;balance: 563332.77','2023-02-04 20:55:38','2023-02-04 20:55:38'),(70,1,'credit','add to credit current account','Result: credit: 222222.00 ;debit: 563332.77 ;balance: 341110.77','2023-02-04 20:55:38','2023-02-04 20:55:38'),(71,1,'credit','add to cashbox','Result: credit: 69990.00 ;debit: 272222.00 ;balance: 242212.00','2023-02-04 20:55:38','2023-02-04 20:55:38'),(72,1,'credit','add to credit cashbox','Result: credit: 341101.00 ;debit: 272222.00 ;balance: 473343.00','2023-02-04 20:55:53','2023-02-04 20:55:53'),(73,1,'deposit','add to cashbox','Result: deposit: 341101.00 ;debit: 383333.00 ;balance: 179990.00','2023-02-04 21:05:41','2023-02-04 21:05:41'),(74,1,'deposit','add to credit cashbox','Result: deposit: 452212.00 ;debit: 383333.00 ;balance: -68879.00','2023-02-04 21:05:41','2023-02-04 21:05:41'),(75,1,'deposit','add to credit current account','Result: deposit: 111111.00 ;debit: 0.00 ;balance: 111111.00','2023-02-04 21:05:41','2023-02-04 21:05:41'),(76,1,'deposit','add to debit current account','Result: deposit: 111111.00 ;debit: 111111.00 ;balance: 0.00','2023-02-04 21:05:41','2023-02-04 21:05:41'),(77,1,'deposit','add to credit bank fund','Result: deposit: 100000278571.99 ;debit: 610032.77 ;balance: 99999668539.22','2023-02-04 21:05:41','2023-02-04 21:05:41'),(78,1,'credit','add to debit bank fund','Result: credit: 100000278571.99 ;debit: 642865.78 ;balance: 99999635706.22','2023-02-04 21:05:57','2023-02-04 21:05:57'),(79,1,'credit','add to debit current account','Result: credit: 0.00 ;debit: 32833.01 ;balance: 32833.01','2023-02-04 21:05:57','2023-02-04 21:05:57'),(80,1,'credit','add to credit current account','Result: credit: 11111.00 ;debit: 32833.01 ;balance: 21722.01','2023-02-04 21:05:57','2023-02-04 21:05:57'),(81,1,'credit','add to cashbox','Result: credit: 452212.00 ;debit: 394444.00 ;balance: 79990.00','2023-02-04 21:05:57','2023-02-04 21:05:57'),(82,2,'credit','add to debit bank fund','Result: credit: 100000278571.99 ;debit: 642876.78 ;balance: 99999635695.21','2023-02-04 21:33:55','2023-02-04 21:33:55'),(83,2,'credit','add to debit current account','Result: credit: 11111.00 ;debit: 32844.01 ;balance: 21733.01','2023-02-04 21:33:55','2023-02-04 21:33:55'),(84,2,'credit','add to credit current account','Result: credit: 11122.00 ;debit: 32844.01 ;balance: 21722.01','2023-02-04 21:33:55','2023-02-04 21:33:55'),(85,2,'credit','add to cashbox','Result: credit: 452212.00 ;debit: 394455.00 ;balance: 57779.00','2023-02-04 21:33:55','2023-02-04 21:33:55'),(86,2,'credit','add to debit bank fund','Result: credit: 100000278571.99 ;debit: 971209.79 ;balance: 99999307362.21','2023-02-04 21:34:31','2023-02-04 21:34:31'),(87,2,'credit','add to debit current account','Result: credit: 0.00 ;debit: 328333.01 ;balance: 328333.01','2023-02-04 21:34:31','2023-02-04 21:34:31'),(88,2,'credit','add to credit current account','Result: credit: 111111.00 ;debit: 328333.01 ;balance: 217222.01','2023-02-04 21:34:31','2023-02-04 21:34:31'),(89,2,'credit','add to cashbox','Result: credit: 452212.00 ;debit: 505566.00 ;balance: 168868.00','2023-02-04 21:34:31','2023-02-04 21:34:31');
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_cities`
--

DROP TABLE IF EXISTS `registration_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `registration_cities_name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_cities`
--

LOCK TABLES `registration_cities` WRITE;
/*!40000 ALTER TABLE `registration_cities` DISABLE KEYS */;
INSERT INTO `registration_cities` VALUES (1,'Minsk','2023-02-04 17:45:37','2023-02-04 17:45:38');
/*!40000 ALTER TABLE `registration_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_cities`
--

DROP TABLE IF EXISTS `residence_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residence_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `residence_cities_name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_cities`
--

LOCK TABLES `residence_cities` WRITE;
/*!40000 ALTER TABLE `residence_cities` DISABLE KEYS */;
INSERT INTO `residence_cities` VALUES (1,'Minsk','2023-02-04 17:45:37','2023-02-04 17:45:38');
/*!40000 ALTER TABLE `residence_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_informations`
--

DROP TABLE IF EXISTS `user_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_informations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `father_name` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(6) NOT NULL,
  `passport_series` varchar(3) NOT NULL,
  `passport_id` varchar(10) NOT NULL,
  `issued_by` varchar(40) NOT NULL,
  `issue_date` date NOT NULL,
  `identification_number` varchar(30) NOT NULL,
  `birthplace` varchar(30) NOT NULL,
  `residence_cities_id` int(10) unsigned NOT NULL,
  `address` varchar(40) NOT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `registration_cities_id` int(10) unsigned NOT NULL,
  `family_positions_id` int(10) unsigned NOT NULL,
  `citizenships_id` int(10) unsigned NOT NULL,
  `disabilities_id` int(10) unsigned NOT NULL,
  `pensioner` varchar(5) NOT NULL,
  `monthly_income` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_user_informations_UNIQUE` (`id`),
  UNIQUE KEY `identification_number_user_informations_UNIQUE` (`identification_number`),
  KEY `user_informations_residence_cities_id_foreign` (`residence_cities_id`),
  KEY `user_informations_registration_cities_id_foreign` (`registration_cities_id`),
  KEY `user_informations_family_positions_id_foreign` (`family_positions_id`),
  KEY `user_informations_citizenships_id_foreign` (`citizenships_id`),
  KEY `user_informations_disabilities_id_foreign` (`disabilities_id`),
  CONSTRAINT `user_informations_citizenships_id_foreign` FOREIGN KEY (`citizenships_id`) REFERENCES `citizenships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_informations_disabilities_id_foreign` FOREIGN KEY (`disabilities_id`) REFERENCES `disabilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_informations_family_positions_id_foreign` FOREIGN KEY (`family_positions_id`) REFERENCES `family_positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_informations_registration_cities_id_foreign` FOREIGN KEY (`registration_cities_id`) REFERENCES `registration_cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_informations_residence_cities_id_foreign` FOREIGN KEY (`residence_cities_id`) REFERENCES `residence_cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_informations`
--

LOCK TABLES `user_informations` WRITE;
/*!40000 ALTER TABLE `user_informations` DISABLE KEYS */;
INSERT INTO `user_informations` VALUES (1,'test','test','test','2023-01-04','male','SS','1111111','test','2023-01-04','1111111F111FF1','test',1,'test','+375 (29) 000-00-00','+375 (29) 000-00-00','solution.m@mail.ru','test','test',1,1,1,1,'yes',1000.00,'2023-02-04 14:54:32','2023-02-04 14:54:32'),(2,'Maksim','Mikhalkov','Dmitrievich','2023-01-04','male','QQ','1111112','test','2023-01-04','1111111F111FF2','test',1,'test','+375 (29) 000-00-00','+375 (29) 000-00-00','itwistermax@test.com','test','test',1,1,1,1,'no',2000.00,'2023-02-04 14:54:32','2023-02-04 14:54:32');
/*!40000 ALTER TABLE `user_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'itwistermax','itwistermax@test.com',NULL,'$2y$10$IIkDiCzbIQpRA9hG3iZBa.y/3FrFETgwT9CInEVlT4cTPakE9Qgby','mkOYkitaeo5QWwWtiIWppM9oevmnBS9O71jA4GhvvfDeeNdIFjCQzIJBrbiW','2023-02-04 14:42:09','2023-02-04 14:42:09');
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

-- Dump completed on 2023-02-05  3:49:28
