-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: myfirstsql
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `deltog`
--

DROP TABLE IF EXISTS `deltog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deltog` (
  `Person` varchar(10) DEFAULT NULL,
  `T_ID` varchar(45) DEFAULT NULL,
  `D_ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`D_ID`),
  KEY `fk_tavling_idx` (`T_ID`),
  KEY `fk_person_idx` (`Person`),
  CONSTRAINT `fk_personn` FOREIGN KEY (`Person`) REFERENCES `spelare` (`PersonNr`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tavlingN` FOREIGN KEY (`T_ID`) REFERENCES `tavling` (`TavlingNamn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deltog`
--

LOCK TABLES `deltog` WRITE;
/*!40000 ALTER TABLE `deltog` DISABLE KEYS */;
INSERT INTO `deltog` VALUES ('9705257642','BigGolfCupSkövde',1),('9607231276','BigGolfCupSkövde',2),('9106249034','BigGolfCupSkövde',3);
/*!40000 ALTER TABLE `deltog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `har`
--

DROP TABLE IF EXISTS `har`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `har` (
  `T_ID` varchar(45) DEFAULT NULL,
  `R_ID` int DEFAULT NULL,
  `tid` datetime DEFAULT NULL,
  `harID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`harID`),
  KEY `fk_Regn_idx` (`R_ID`),
  KEY `fk_tavling_idx` (`T_ID`),
  CONSTRAINT `fk_Regn` FOREIGN KEY (`R_ID`) REFERENCES `regn` (`RegnID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tavling` FOREIGN KEY (`T_ID`) REFERENCES `tavling` (`TavlingNamn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `har`
--

LOCK TABLES `har` WRITE;
/*!40000 ALTER TABLE `har` DISABLE KEYS */;
INSERT INTO `har` VALUES ('BigGolfCupSkövde',1,'2021-06-10 12:00:00',1);
/*!40000 ALTER TABLE `har` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jacka`
--

DROP TABLE IF EXISTS `jacka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jacka` (
  `Person` varchar(10) DEFAULT NULL,
  `Storlek` int DEFAULT NULL,
  `Matreal` varchar(45) DEFAULT NULL,
  `Initiliser` varchar(45) DEFAULT NULL,
  KEY `fk_personNr` (`Person`),
  CONSTRAINT `fk_personNr` FOREIGN KEY (`Person`) REFERENCES `spelare` (`PersonNr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jacka`
--

LOCK TABLES `jacka` WRITE;
/*!40000 ALTER TABLE `jacka` DISABLE KEYS */;
INSERT INTO `jacka` VALUES ('9607231276',50,'fleece','JA'),('9607231276',50,'goretex','JA');
/*!40000 ALTER TABLE `jacka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klubba`
--

DROP TABLE IF EXISTS `klubba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klubba` (
  `Person` varchar(10) DEFAULT NULL,
  `Matrial` varchar(45) DEFAULT NULL,
  `Nr` int NOT NULL AUTO_INCREMENT,
  `SerialNr` int DEFAULT NULL,
  PRIMARY KEY (`Nr`),
  UNIQUE KEY `Nr_UNIQUE` (`Nr`),
  KEY `fk_serialNr_idx` (`SerialNr`),
  KEY `fk_personnm_idx` (`Person`),
  CONSTRAINT `fk_personnm` FOREIGN KEY (`Person`) REFERENCES `spelare` (`PersonNr`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_serialNr` FOREIGN KEY (`SerialNr`) REFERENCES `konstruktion` (`SerialNr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klubba`
--

LOCK TABLES `klubba` WRITE;
/*!40000 ALTER TABLE `klubba` DISABLE KEYS */;
INSERT INTO `klubba` VALUES ('9106249034','trä',3,232),('9705257642','trä',4,323),('9607231276','metal',6,323);
/*!40000 ALTER TABLE `klubba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konstruktion`
--

DROP TABLE IF EXISTS `konstruktion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konstruktion` (
  `SerialNr` int NOT NULL,
  `Holrdhet` int DEFAULT NULL,
  PRIMARY KEY (`SerialNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konstruktion`
--

LOCK TABLES `konstruktion` WRITE;
/*!40000 ALTER TABLE `konstruktion` DISABLE KEYS */;
INSERT INTO `konstruktion` VALUES (232,10),(323,5);
/*!40000 ALTER TABLE `konstruktion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regn`
--

DROP TABLE IF EXISTS `regn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regn` (
  `RegnID` int NOT NULL,
  `Typ` varchar(45) DEFAULT NULL,
  `Styrka` int DEFAULT NULL,
  PRIMARY KEY (`RegnID`),
  UNIQUE KEY `RegnID_UNIQUE` (`RegnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regn`
--

LOCK TABLES `regn` WRITE;
/*!40000 ALTER TABLE `regn` DISABLE KEYS */;
INSERT INTO `regn` VALUES (1,'hage',10);
/*!40000 ALTER TABLE `regn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelare`
--

DROP TABLE IF EXISTS `spelare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spelare` (
  `PersonNr` varchar(10) NOT NULL,
  `Namn` varchar(45) DEFAULT NULL,
  `Alder` int DEFAULT NULL,
  PRIMARY KEY (`PersonNr`),
  UNIQUE KEY `PersonNr_UNIQUE` (`PersonNr`),
  UNIQUE KEY `Namn_UNIQUE` (`Namn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelare`
--

LOCK TABLES `spelare` WRITE;
/*!40000 ALTER TABLE `spelare` DISABLE KEYS */;
INSERT INTO `spelare` VALUES ('9106249034','NiklasJanson',30),('9607231276','JohanAnderson',25),('9705257642','AnnikaPerson',24);
/*!40000 ALTER TABLE `spelare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tavling`
--

DROP TABLE IF EXISTS `tavling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tavling` (
  `Datum` date DEFAULT NULL,
  `TavlingNamn` varchar(45) NOT NULL,
  PRIMARY KEY (`TavlingNamn`),
  UNIQUE KEY `TavlingNamn_UNIQUE` (`TavlingNamn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tavling`
--

LOCK TABLES `tavling` WRITE;
/*!40000 ALTER TABLE `tavling` DISABLE KEYS */;
INSERT INTO `tavling` VALUES ('2021-06-10','BigGolfCupSkövde');
/*!40000 ALTER TABLE `tavling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-09 13:39:24
