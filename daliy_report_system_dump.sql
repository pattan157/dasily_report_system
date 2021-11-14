-- MySQL dump 10.13  Distrib 8.0.27, for macos11.6 (x86_64)
--
-- Host: localhost    Database: daily_report_system
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_flag` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `delete_flag` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,0,'001','2021-11-05 22:22:29.273393',0,'kotani','D837DAEF3446E556AFB5A5A022F5BF9C1207D1C8878B00130010CC6730EC1C1B','2021-11-09 12:02:32.303143'),(2,0,'002','2021-11-05 22:22:49.598229',0,'小谷','E403F7A0F9BD5580CE62A6A84A0985DCC1481742620557B2CFEC4CFBD8A87233','2021-11-09 12:02:51.181101'),(3,1,'1','2021-11-05 22:31:51.646704',0,'master','21CFD9520D96863E6750DB361FF7166A61C2B2AF860959B18F95949DB7701B5E','2021-11-09 12:07:04.279028'),(4,0,'kou','2021-11-09 09:29:38.681112',1,'abc','2E9C86C595D8FC667AAFC1F001DC8B8ABE72D33D64B2910367CFCD63A82B9941','2021-11-09 10:06:57.859331'),(5,1,'take','2021-11-09 12:09:14.692887',0,'take','66AE6E81780466AAB26C11FBFD7B0E70D9F3425DEACBC3726CB526981E9DA0E6','2021-11-09 12:43:25.246819'),(6,1,'master','2021-11-09 15:05:05.790860',0,'master','396E2D6BE0F403948025477162F61D59191B4A00723779A9B2BF64D4008C0A21','2021-11-09 15:05:05.790860'),(7,1,'a','2021-11-09 15:05:23.429468',0,'a','2E9C86C595D8FC667AAFC1F001DC8B8ABE72D33D64B2910367CFCD63A82B9941','2021-11-09 15:05:23.429468');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `report_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m58c0h3phjcm6bco7aqikfen` (`employee_id`),
  CONSTRAINT `FK7m58c0h3phjcm6bco7aqikfen` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'1no\r\nkometarou','2021-11-10 21:23:44.452410','2021-11-10','1kome','2021-11-10 21:23:44.452410',7),(2,'2のコメ太郎\r\n開業丸','2021-11-10 21:24:24.558015','2021-11-10','2個目','2021-11-10 21:24:24.558015',7),(3,'一般\r\n初の投稿','2021-11-10 21:24:56.291416','2021-11-10','一般','2021-11-10 21:24:56.291416',1),(4,'てst\r\ntest','2021-11-10 21:25:22.703085','2021-11-10','一般の投稿です','2021-11-10 21:25:22.703085',1),(5,'test222\r\ntest222','2021-11-10 23:31:41.268079','2021-11-10','test222','2021-11-11 09:32:10.711946',7);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-13 17:20:47
