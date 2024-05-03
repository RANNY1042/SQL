CREATE DATABASE  IF NOT EXISTS `university` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaches` (
  `ID` varchar(5) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`),
  CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`) ON DELETE CASCADE,
  CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `instructor` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaches`
--

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
INSERT INTO `teaches` VALUES ('43779','105','1','Fall',2009),('43779','105','2','Fall',2002),('6569','137','1','Spring',2002),('90376','158','1','Fall',2008),('99052','158','2','Spring',2008),('3199','169','1','Spring',2007),('3199','169','2','Fall',2002),('25946','192','1','Fall',2002),('14365','200','1','Spring',2007),('79081','200','2','Fall',2002),('99052','237','1','Spring',2008),('99052','237','2','Fall',2009),('74420','239','1','Fall',2006),('36897','242','1','Fall',2009),('95709','258','1','Fall',2007),('95709','270','1','Spring',2010),('34175','274','1','Fall',2002),('6569','304','1','Fall',2009),('36897','313','1','Fall',2010),('6569','319','1','Spring',2003),('63287','334','1','Fall',2009),('22591','338','1','Spring',2007),('22591','338','2','Spring',2006),('79081','345','1','Spring',2008),('6569','349','1','Spring',2008),('22591','352','1','Spring',2006),('6569','362','1','Fall',2005),('6569','362','2','Fall',2006),('6569','362','3','Spring',2008),('28097','366','1','Fall',2005),('74420','376','1','Fall',2006),('22591','400','1','Spring',2007),('22591','400','2','Fall',2003),('41930','401','1','Fall',2003),('79081','408','1','Spring',2007),('79081','408','2','Spring',2003),('81991','415','1','Fall',2010),('41930','421','1','Fall',2004),('6569','426','1','Spring',2006),('74420','443','1','Spring',2010),('74420','443','2','Spring',2002),('6569','445','1','Spring',2001),('15347','457','1','Spring',2001),('90643','461','1','Fall',2002),('95709','468','1','Fall',2005),('50330','468','2','Fall',2007),('43779','476','1','Fall',2010),('22591','482','1','Fall',2005),('77346','486','1','Fall',2009),('43779','489','1','Fall',2007),('77346','493','1','Spring',2010),('99052','496','1','Fall',2001),('6569','527','1','Fall',2004),('19368','545','1','Fall',2001),('80759','559','1','Fall',2002),('3199','561','1','Fall',2006),('34175','571','1','Spring',2004),('19368','581','1','Spring',2005),('19368','591','1','Spring',2005),('22591','599','1','Spring',2003),('28400','603','1','Fall',2003),('28400','604','1','Spring',2009),('74420','612','1','Fall',2007),('48507','626','1','Fall',2006),('99052','629','1','Spring',2003),('3199','631','1','Spring',2007),('22591','642','1','Fall',2004),('22591','663','1','Spring',2005),('4233','679','1','Spring',2010),('41930','692','1','Spring',2010),('73623','694','1','Fall',2002),('36897','696','1','Spring',2002),('81991','702','1','Spring',2001),('77346','704','1','Spring',2008),('77346','735','1','Spring',2003),('77346','735','2','Spring',2010),('34175','747','1','Spring',2004),('99052','748','1','Fall',2003),('79081','760','1','Spring',2004),('36897','791','1','Spring',2006),('42782','793','1','Spring',2002),('36897','795','1','Spring',2004),('99052','802','1','Spring',2003),('28097','808','1','Fall',2003),('14365','843','1','Fall',2010),('63287','852','1','Spring',2008),('77346','864','1','Spring',2006),('22591','867','1','Fall',2006),('48570','867','2','Fall',2010),('65931','875','1','Spring',2005),('99052','893','1','Fall',2007),('99052','927','1','Fall',2002),('3335','949','1','Fall',2007),('74420','959','1','Fall',2006),('3335','960','1','Fall',2009),('95709','960','2','Fall',2006),('22591','962','1','Spring',2008),('22591','972','1','Spring',2009),('79081','974','1','Fall',2003),('22591','991','1','Spring',2008);
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 12:25:29
