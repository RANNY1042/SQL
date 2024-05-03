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
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `ID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dept_name` (`dept_name`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL,
  CONSTRAINT `instructor_chk_1` CHECK ((`salary` > 29000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES ('14365','Lembr','Accounting',32241.56),('15347','Bawa','Athletics',72140.88),('16807','Yazdi','Athletics',98333.65),('19368','Wieland','Pol. Sci.',124651.41),('22591','DAgostino','Psychology',59706.49),('25946','Liley','Languages',90891.69),('28097','Kean','English',35023.18),('28400','Atanassov','Statistics',84982.92),('31955','Moreira','Accounting',71351.42),('3199','Gustafsson','Elec. Eng.',82534.37),('3335','Bourrier','Comp. Sci.',80797.83),('34175','Bondi','Comp. Sci.',115469.11),('35579','Soisalon-Soininen','Psychology',62579.61),('36897','Morris','Marketing',43770.36),('37687','Arias','Statistics',104563.38),('4034','Murata','Athletics',61387.56),('41930','Tung','Athletics',50482.03),('4233','Luo','English',88791.45),('42782','Vicentino','Elec. Eng.',34272.67),('43779','Romero','Astronomy',79070.08),('48507','Lent','Mech. Eng.',107978.47),('48570','Sarkar','Pol. Sci.',87549.80),('50330','Shuming','Physics',108011.81),('50885','Konstantinides','Languages',32570.50),('52647','Bancilhon','Pol. Sci.',87958.01),('57180','Hau','Accounting',43966.29),('58558','Dusserre','Marketing',66143.25),('59795','Desyl','Languages',48803.38),('63287','Jaekel','Athletics',103146.87),('63395','McKinnon','Cybernetics',94333.99),('64871','Gutierrez','Statistics',45310.53),('6569','Mingoz','Finance',105311.38),('65931','Pimenta','Cybernetics',79866.95),('72553','Yin','English',46397.59),('73623','Sullivan','Elec. Eng.',90038.09),('74420','Voronina','Physics',121141.99),('74426','Kenje','Marketing',106554.73),('77346','Mahmoud','Geology',99382.59),('78699','Pingr','Statistics',59303.62),('79081','Ullman ','Accounting',47307.10),('79653','Levine','Elec. Eng.',89805.83),('80759','Queiroz','Biology',45538.32),('81991','Valtchev','Biology',77036.18),('90376','Bietzk','Cybernetics',117836.50),('90643','Choll','Statistics',57807.09),('95030','Arinb','Statistics',54805.11),('95709','Sakurai','English',118143.98),('96895','Mird','Marketing',119921.41),('97302','Bertolino','Mech. Eng.',51647.57),('99052','Dale','Cybernetics',93348.83);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
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
