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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(8) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `credits` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL,
  CONSTRAINT `course_chk_1` CHECK ((`credits` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('101','Diffusion and Phase Transformation','Mech. Eng.',3),('105','Image Processing','Astronomy',3),('123','Differential Equations','Mech. Eng.',3),('127','Thermodynamics','Geology',3),('130','Differential Geometry','Physics',3),('133','Antidisestablishmentarianism in Modern America','Biology',4),('137','Manufacturing','Finance',3),('139','Number Theory','English',4),('158','Elastic Structures','Cybernetics',3),('169','Marine Mammals','Elec. Eng.',3),('190','Romantic Literature','Civil Eng.',3),('192','Drama','Languages',4),('195','Numerical Methods','Geology',4),('200','The Music of the Ramones','Accounting',4),('209','International Trade','Cybernetics',4),('224','International Finance','Athletics',3),('227','Elastic Structures','Languages',4),('235','International Trade','Math',3),('236','Design and Analysis of Algorithms','Mech. Eng.',3),('237','Surfing','Cybernetics',3),('238','The Music of Donovan','Mech. Eng.',3),('239','The Music of the Ramones','Physics',4),('241','Biostatistics','Geology',3),('242','Rock and Roll','Marketing',3),('254','Security','Cybernetics',3),('258','Colloid and Surface Chemistry','Math',3),('265','Thermal Physics','Cybernetics',4),('267','Hydraulics','Physics',4),('270','Music of the 90s','Math',4),('272','Geology','Mech. Eng.',3),('274','Corporate Law','Comp. Sci.',4),('275','Romantic Literature','Languages',3),('276','Game Design','Comp. Sci.',4),('278','Greek Tragedy','Statistics',4),('284','Topology','Comp. Sci.',4),('292','Electron Microscopy','English',4),('304','Music 2 New for your Instructor','Finance',4),('313','International Trade','Marketing',3),('318','Geology','Cybernetics',3),('319','World History','Finance',4),('324','Ponzi Schemes','Civil Eng.',3),('328','Composition and Literature','Cybernetics',3),('334','International Trade','Athletics',3),('337','Differential Geometry','Statistics',3),('338','Graph Theory','Psychology',3),('340','Corporate Law','History',3),('341','Quantum Mechanics','Cybernetics',3),('344','Quantum Mechanics','Accounting',4),('345','Race Car Driving','Accounting',4),('348','Compiler Design','Elec. Eng.',3),('349','Networking','Finance',4),('352','Compiler Design','Psychology',4),('353','Operating Systems','Psychology',3),('359','Game Programming','Comp. Sci.',4),('362','Embedded Systems','Finance',4),('366','Computational Biology','English',3),('371','Milton','Finance',3),('376','Cost Accounting','Physics',4),('377','Differential Geometry','Astronomy',4),('391','Virology','Biology',3),('392','Recursive Function Theory','Astronomy',4),('393','Aerodynamics','Languages',3),('394','C  Programming','Athletics',3),('396','C  Programming','Languages',3),('399','RPG Programming','Pol. Sci.',4),('400','Visual BASIC','Psychology',4),('401','Sanitary Engineering','Athletics',4),('403','Immunology','Biology',3),('407','Industrial Organization','Languages',4),('408','Bankruptcy','Accounting',3),('411','Music of the 80s','Mech. Eng.',4),('415','Numerical Methods','Biology',3),('416','Data Mining','Accounting',3),('421','Aquatic Chemistry','Athletics',4),('426','Video Gaming','Finance',3),('436','Stream Processing','Physics',4),('442','Strength of Materials','Athletics',3),('443','Journalism','Physics',4),('445','Biostatistics','Finance',3),('451','Database System Concepts','Pol. Sci.',4),('456','Hebrew','Civil Eng.',3),('457','Systems Software','History',3),('458','The Renaissance','Civil Eng.',4),('461','Physical Chemistry','Math',3),('468','Fractal Geometry','Civil Eng.',4),('476','International Communication','Astronomy',4),('482','FOCAL Programming','Psychology',4),('486','Accounting','Geology',3),('487','Physical Chemistry','History',3),('489','Journalism','Astronomy',4),('493','Music of the 50s','Geology',3),('494','Automobile Mechanics','Pol. Sci.',4),('496','Aquatic Chemistry','Cybernetics',3),('500','Networking','Astronomy',3),('527','Graphics','Finance',3),('539','International Finance','Comp. Sci.',3),('544','Differential Geometry','Statistics',3),('545','International Practicum','History',3),('546','Creative Writing','Mech. Eng.',4),('549','Banking and Finance','Astronomy',3),('558','Environmental Law','Psychology',3),('559','Martian History','Biology',3),('561','The Music of Donovan','Elec. Eng.',4),('571','Plastics','Comp. Sci.',4),('577','The Music of Dave Edmunds','Elec. Eng.',3),('580','The Music of Dave Edmunds','Physics',4),('581','Calculus','Pol. Sci.',4),('582','Marine Mammals','Cybernetics',3),('584','Computability Theory','Comp. Sci.',3),('586','Image Processing','Finance',4),('591','Shakespeare','Pol. Sci.',4),('594','Cognitive Psychology','Finance',3),('598','Number Theory','Accounting',4),('599','Mechanics','Psychology',4),('603','Care and Feeding of Cats','Statistics',3),('604','UNIX System Programmming','Statistics',4),('608','Electron Microscopy','Mech. Eng.',3),('612','Mobile Computing','Physics',3),('618','Thermodynamics','English',4),('626','Multimedia Design','History',4),('628','Existentialism','Accounting',3),('629','Finite Element Analysis','Cybernetics',3),('630','Religion','English',3),('631','Plasma Physics','Elec. Eng.',4),('634','Astronomy','Cybernetics',4),('642','Video Gaming','Psychology',3),('647','Service-Oriented Architectures','Comp. Sci.',4),('656','Groups and Rings','Civil Eng.',4),('659','Geology','Math',4),('663','Geology','Psychology',3),('664','Elastic Structures','English',3),('666','Multivariable Calculus','Accounting',3),('679','The Beatles','Math',3),('680','Electricity and Magnetism','Civil Eng.',3),('681','Medieval Civilization or Lack Thereof','English',3),('692','Cat Herding','Athletics',3),('694','Optics','Math',3),('696','Heat Transfer','Marketing',4),('702','Arabic','Biology',3),('704','Marine Mammals','Geology',4),('716','Medieval Civilization or Lack Thereof','Languages',4),('730','Quantum Mechanics','Elec. Eng.',4),('731','The Music of Donovan','Physics',4),('735','Greek Tragedy','Geology',3),('747','International Practicum','Comp. Sci.',4),('748','Tort Law','Cybernetics',4),('760','How to Groom your Cat','Accounting',3),('761','Existentialism','Athletics',3),('762','The Monkeys','History',4),('769','Logic','Elec. Eng.',4),('770','European History','Pol. Sci.',3),('774','Game Programming','Cybernetics',4),('780','Geology','Psychology',3),('781','Compiler Design','Finance',4),('787','C  Programming','Mech. Eng.',4),('791','Operating Systems','Marketing',3),('792','Image Processing','Accounting',3),('793','Decison Support Systems','Civil Eng.',3),('795','Death and Taxes','Marketing',3),('802','African History','Cybernetics',3),('804','Introduction to Burglary','Cybernetics',4),('805','Composition and Literature','Statistics',4),('808','Organic Chemistry','English',4),('810','Mobile Computing','Geology',3),('814','Compiler Design','Elec. Eng.',3),('818','Environmental Law','Astronomy',4),('820','Assembly Language Programming','Cybernetics',3),('830','Sensor Networks','Astronomy',4),('841','Fractal Geometry','Mech. Eng.',4),('843','Environmental Law','Math',4),('852','World History','Athletics',4),('857','UNIX System Programmming','Geology',4),('858','Sailing','Math',4),('864','Heat Transfer','Geology',3),('867','The IBM 360 Architecture','History',3),('875','Bioinformatics','Cybernetics',3),('877','Composition and Literature','Biology',4),('887','Latin','Mech. Eng.',3),('893','Systems Software','Cybernetics',3),('897','How to Succeed in Business Without Really Trying','Languages',4),('898','Petroleum Engineering','Marketing',4),('902','Existentialism','Finance',3),('919','Computability Theory','Math',3),('922','Microeconomics','Finance',4),('927','Differential Geometry','Cybernetics',4),('947','Real-Time Database Systems','Accounting',3),('949','Japanese','Comp. Sci.',3),('958','Fiction Writing','Mech. Eng.',3),('959','Bacteriology','Physics',4),('960','Tort Law','Civil Eng.',3),('962','Animal Behavior','Psychology',3),('963','Groups and Rings','Languages',4),('966','Sanitary Engineering','History',3),('969','The Monkeys','Astronomy',4),('972','Greek Tragedy','Psychology',4),('974','Astronautics','Accounting',3),('983','Virology','Languages',4),('984','Music of the 50s','History',3),('991','Transaction Processing','Psychology',3),('998','Immunology','Civil Eng.',4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 12:25:30
