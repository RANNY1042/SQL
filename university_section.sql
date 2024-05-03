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
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `building` varchar(15) DEFAULT NULL,
  `room_number` varchar(7) DEFAULT NULL,
  `time_slot_id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`course_id`,`sec_id`,`semester`,`year`),
  KEY `building` (`building`,`room_number`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `section_ibfk_2` FOREIGN KEY (`building`, `room_number`) REFERENCES `classroom` (`building`, `room_number`) ON DELETE SET NULL,
  CONSTRAINT `section_chk_1` CHECK ((`semester` in (_utf8mb4'Fall',_utf8mb4'Winter',_utf8mb4'Spring',_utf8mb4'Summer'))),
  CONSTRAINT `section_chk_2` CHECK (((`year` > 1701) and (`year` < 2100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('105','1','Fall',2009,'Chandler','375','C'),('105','2','Fall',2002,'Taylor','183','C'),('137','1','Spring',2002,'Fairchild','145','I'),('158','1','Fall',2008,'Whitman','434','F'),('158','2','Spring',2008,'Taylor','812','D'),('169','1','Spring',2007,'Gates','314','A'),('169','2','Fall',2002,'Drown','757','L'),('192','1','Fall',2002,'Polya','808','B'),('200','1','Spring',2007,'Saucon','180','D'),('200','2','Fall',2002,'Chandler','375','D'),('237','1','Spring',2008,'Power','717','D'),('237','2','Fall',2009,'Fairchild','145','J'),('239','1','Fall',2006,'Taylor','183','C'),('242','1','Fall',2009,'Fairchild','145','C'),('258','1','Fall',2007,'Main','45','K'),('270','1','Spring',2010,'Power','717','M'),('274','1','Fall',2002,'Main','425','N'),('304','1','Fall',2009,'Lamberton','143','H'),('313','1','Fall',2010,'Chandler','804','N'),('319','1','Spring',2003,'Rathbone','261','E'),('334','1','Fall',2009,'Taylor','812','O'),('338','1','Spring',2007,'Fairchild','145','G'),('338','2','Spring',2006,'Stabler','105','J'),('345','1','Spring',2008,'Taylor','183','A'),('349','1','Spring',2008,'Saucon','113','K'),('352','1','Spring',2006,'Lambeau','348','M'),('362','1','Fall',2005,'Lamberton','143','I'),('362','2','Fall',2006,'Alumni','547','A'),('362','3','Spring',2008,'Bronfman','700','L'),('366','1','Fall',2005,'Saucon','844','O'),('376','1','Fall',2006,'Power','717','K'),('400','1','Spring',2007,'Lambeau','348','M'),('400','2','Fall',2003,'Main','425','O'),('401','1','Fall',2003,'Saucon','180','A'),('408','1','Spring',2007,'Taylor','812','C'),('408','2','Spring',2003,'Taylor','183','J'),('415','1','Fall',2010,'Lamberton','134','D'),('421','1','Fall',2004,'Gates','707','E'),('426','1','Spring',2006,'Lamberton','134','G'),('443','1','Spring',2010,'Whitman','434','O'),('443','2','Spring',2002,'Gates','707','K'),('445','1','Spring',2001,'Alumni','547','J'),('457','1','Spring',2001,'Saucon','844','D'),('461','1','Fall',2002,'Main','425','P'),('468','1','Fall',2005,'Lambeau','348','J'),('468','2','Fall',2007,'Power','717','L'),('476','1','Fall',2010,'Drown','757','C'),('482','1','Fall',2005,'Whitman','434','H'),('486','1','Fall',2009,'Whitman','134','K'),('489','1','Fall',2007,'Lamberton','143','D'),('493','1','Spring',2010,'Lamberton','134','H'),('496','1','Fall',2001,'Taylor','812','I'),('527','1','Fall',2004,'Saucon','113','M'),('545','1','Fall',2001,'Saucon','180','P'),('559','1','Fall',2002,'Lamberton','134','J'),('561','1','Fall',2006,'Main','45','L'),('571','1','Spring',2004,'Power','972','I'),('581','1','Spring',2005,'Alumni','547','G'),('591','1','Spring',2005,'Saucon','180','F'),('599','1','Spring',2003,'Chandler','804','D'),('603','1','Fall',2003,'Taylor','812','P'),('604','1','Spring',2009,'Bronfman','700','N'),('612','1','Fall',2007,'Lamberton','143','G'),('626','1','Fall',2006,'Lamberton','143','B'),('629','1','Spring',2003,'Stabler','105','F'),('631','1','Spring',2007,'Taylor','183','E'),('642','1','Fall',2004,'Saucon','113','D'),('663','1','Spring',2005,'Fairchild','145','D'),('679','1','Spring',2010,'Saucon','844','D'),('692','1','Spring',2010,'Taylor','183','I'),('694','1','Fall',2002,'Alumni','143','O'),('696','1','Spring',2002,'Saucon','180','E'),('702','1','Spring',2001,'Saucon','113','O'),('704','1','Spring',2008,'Taylor','812','E'),('735','1','Spring',2003,'Drown','757','D'),('735','2','Spring',2010,'Taylor','183','D'),('747','1','Spring',2004,'Gates','314','K'),('748','1','Fall',2003,'Saucon','180','L'),('760','1','Spring',2004,'Garfield','119','A'),('791','1','Spring',2006,'Polya','808','H'),('793','1','Spring',2002,'Nassau','45','F'),('795','1','Spring',2004,'Lamberton','143','D'),('802','1','Spring',2003,'Saucon','113','J'),('808','1','Fall',2003,'Polya','808','M'),('843','1','Fall',2010,'Fairchild','145','J'),('852','1','Spring',2008,'Gates','707','F'),('864','1','Spring',2006,'Power','972','D'),('867','1','Fall',2006,'Taylor','183','E'),('867','2','Fall',2010,'Lamberton','134','M'),('875','1','Spring',2005,'Power','717','P'),('893','1','Fall',2007,'Fairchild','145','B'),('927','1','Fall',2002,'Saucon','180','F'),('949','1','Fall',2007,'Saucon','180','B'),('959','1','Fall',2006,'Saucon','180','M'),('960','1','Fall',2009,'Lamberton','134','J'),('960','2','Fall',2006,'Power','717','M'),('962','1','Spring',2008,'Nassau','45','L'),('972','1','Spring',2009,'Taylor','183','J'),('974','1','Fall',2003,'Polya','808','H'),('991','1','Spring',2008,'Lamberton','134','J');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
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
