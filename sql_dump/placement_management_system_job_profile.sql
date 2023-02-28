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
-- Table structure for table `job_profile`
--

DROP TABLE IF EXISTS `job_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_profile` (
  `job_id` varchar(50) NOT NULL,
  `job_designation` varchar(50) NOT NULL,
  `job_description` longblob NOT NULL,
  `job_location` varchar(150) DEFAULT NULL,
  `service_bond` tinyint(1) NOT NULL,
  `terms_and_condition` longblob,
  `six_month_intern_possibility` tinyint(1) DEFAULT '0',
  `early_onboarding_possibility` tinyint(1) DEFAULT '0',
  `particularly_early_onboarding_required` tinyint(1) DEFAULT '0',
  `early_graduate_students_are_excluded` tinyint(1) DEFAULT '0',
  `current_status` varchar(50) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `shortlist_from_resume` tinyint(1) DEFAULT '0',
  `eligible_minor_disc` varchar(30) DEFAULT NULL,
  `ppt` tinyint(1) DEFAULT '0',
  `eligible_major_disc` varchar(30) NOT NULL,
  `technical_test` tinyint(1) DEFAULT '0',
  `aptitude_test` tinyint(1) DEFAULT NULL,
  `psychometric_test` tinyint(1) DEFAULT '0',
  `group_discussion` tinyint(1) DEFAULT '0',
  `technical_interviews` tinyint(1) DEFAULT '0',
  `hr_interviews` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`job_id`),
  CONSTRAINT `hr_interview` CHECK ((`hr_interviews` >= 0)),
  CONSTRAINT `length1` CHECK ((char_length(`eligible_minor_disc`) = 15)),
  CONSTRAINT `length2` CHECK ((char_length(`eligible_major_disc`) = 15)),
  CONSTRAINT `tech_interview` CHECK ((`technical_interviews` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_profile`
--

LOCK TABLES `job_profile` WRITE;
/*!40000 ALTER TABLE `job_profile` DISABLE KEYS */;
INSERT INTO `job_profile` VALUES ('0000000001','SDE','','Hyderabad',1,'',1,1,0,1,'coding round','2023-02-25','2023-02-26',1,'111111110000000',1,'111111110000000',1,0,1,0,1,0),('00000000014','SDE','','Hyderabad',1,'',1,1,0,1,'coding round','2023-03-11','2023-03-12',1,'111111110000000',1,'111111110000000',1,0,1,0,1,0),('00000000015','SDE','','Bangalore',0,'',0,1,1,0,'interview round','2023-03-12','2023-03-13',1,'111111110000000',0,'111111111000000',1,1,0,1,1,1),('00000000016','SDE','','Delhi',0,'',1,1,0,1,'coding round','2023-03-13','2023-03-14',0,'111111111000000',0,'111111110000000',1,1,1,1,0,1),('00000000017','SDE','','Mumbai',1,'',0,1,1,0,'interview round','2023-03-14','2023-03-15',0,'111111111000000',0,'111111110000000',0,0,1,0,1,1),('00000000018','SDE','','Pune',0,'',1,1,1,0,'coding round','2023-03-15','2023-03-16',1,'111111110000000',1,'111111111000000',0,1,1,1,1,0),('00000000019','SDE','','Chennai',0,'',1,0,0,1,'interview round','2023-03-16','2023-03-17',1,'111111110000000',1,'111111110000000',0,0,1,1,1,1),('0000000002','Software Engineer','','Bangalore',0,'',0,1,1,0,'interview round','2023-02-26','2023-02-27',1,'111111110000000',0,'111111111000000',1,0,1,1,1,1),('0000000003','Data Analyst','','Mumbai',0,'',1,1,0,1,'coding round','2023-02-27','2023-02-28',0,'111111100000000',0,'111111111100000',0,1,1,0,1,1),('0000000004','DevOps Engineer','','Pune',1,'',1,1,0,1,'interview round','2023-02-28','2023-03-01',1,'111111110000000',1,'111111111000000',1,1,1,1,1,1),('0000000005','Product Manager','','Delhi',0,'',1,1,1,0,'coding round','2023-03-01','2023-03-02',0,'111111110000000',1,'111111111000000',0,1,1,1,1,1),('0000000006','QA Analyst','','Chennai',0,'',0,1,0,0,'interview round','2023-03-02','2023-03-03',1,'111111111000000',0,'111111111000000',1,1,1,0,1,1),('0000000007','Full Stack Developer','','Bangalore',0,'',0,0,0,1,'coding round','2023-03-03','2023-03-04',1,'111111110000000',1,'111111111100000',0,0,1,1,1,1),('0000000008','Backend Developer','','Mumbai',0,'',1,1,0,1,'coding round','2023-03-04','2023-03-05',1,'111111110000000',1,'111111111000000',1,1,1,1,1,1),('0000000009','Frontend Developer','','Chennai',0,'',1,1,1,0,'interview round','2023-03-05','2023-03-06',0,'111111110000000',1,'111111111000000',0,1,1,1,1,1),('0000000010','Business Analyst','','Delhi',1,'',1,0,0,1,'coding round','2023-03-06','2023-03-07',1,'111111111000000',1,'111111111000000',0,1,0,0,1,1),('0000000011','Database Administrator','','Hyderabad',0,'',1,1,1,0,'interview round','2023-03-07','2023-03-08',1,'111111110000000',1,'111111111000000',0,0,1,0,1,1),('0000000012','DevOps Engineer','','Pune',0,'',0,1,0,0,'coding round','2023-03-08','2023-03-09',1,'111111110000000',0,'111111111100000',0,1,1,1,1,1),('0000000013','Technical Writer','','Bangalore',0,'',0,1,0,1,'interview round','2023-03-09','2023-03-10',0,'111111111000000',1,'111111111100000',0,0,1,1,1,1);
/*!40000 ALTER TABLE `job_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 23:28:44
