-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: placement_management_system
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `prog_details`
--

DROP TABLE IF EXISTS `prog_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prog_details` (
  `job_id` varchar(50) NOT NULL,
  `no_of_pos_available` int NOT NULL,
  `basic` int NOT NULL,
  `hra` int DEFAULT '0',
  `gross` int DEFAULT '0',
  `other` int DEFAULT '0',
  `take_home` int NOT NULL,
  `ctc` int NOT NULL,
  `program` varchar(255) NOT NULL,
  `parent_id` varchar(50) NOT NULL,
  PRIMARY KEY (`job_id`,`parent_id`),
  KEY `var_program` (`parent_id`),
  CONSTRAINT `var_program` FOREIGN KEY (`parent_id`) REFERENCES `job_profile` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cons1` CHECK ((`no_of_pos_available` > 0)),
  CONSTRAINT `cons2` CHECK ((`basic` > 0)),
  CONSTRAINT `cons3` CHECK (((`hra` > 0) or (`hra` is null))),
  CONSTRAINT `cons4` CHECK (((`gross` > 0) or (`gross` is null))),
  CONSTRAINT `cons5` CHECK (((`other` > 0) or (`other` is null))),
  CONSTRAINT `cons6` CHECK ((`take_home` > 0)),
  CONSTRAINT `cons7` CHECK ((`ctc` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prog_details`
--

LOCK TABLES `prog_details` WRITE;
/*!40000 ALTER TABLE `prog_details` DISABLE KEYS */;
INSERT INTO `prog_details` VALUES ('00000000001',2,12200,678979,8768,98756,7889,897998899,'BTECH','00000000014'),('00000000002',3,12200,698979,87680,98756,7889,899799,'MTECH','00000000014'),('00000000003',2,12200,678979,8768,98756,7889,897998899,'BTECH','00000000018'),('00000000004',2,12200,678979,8768,98756,7889,897998899,'MSC','00000000019');
/*!40000 ALTER TABLE `prog_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 23:28:45
