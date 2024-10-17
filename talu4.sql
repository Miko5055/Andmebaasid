-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: talu4
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `hobused`
--

DROP TABLE IF EXISTS `hobused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobused` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `sünniaasta` bigint unsigned NOT NULL,
  `talli_id` bigint unsigned NOT NULL,
  `omaniku_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hobused_talli_id_foreign` (`talli_id`),
  KEY `hobused_omaniku_id_foreign` (`omaniku_id`),
  CONSTRAINT `hobused_omaniku_id_foreign` FOREIGN KEY (`omaniku_id`) REFERENCES `hobuseomanikud` (`id`),
  CONSTRAINT `hobused_talli_id_foreign` FOREIGN KEY (`talli_id`) REFERENCES `tallid` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobused`
--

LOCK TABLES `hobused` WRITE;
/*!40000 ALTER TABLE `hobused` DISABLE KEYS */;
/*!40000 ALTER TABLE `hobused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobuseomanikud`
--

DROP TABLE IF EXISTS `hobuseomanikud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobuseomanikud` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `telefon` bigint unsigned DEFAULT NULL,
  `aadress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobuseomanikud`
--

LOCK TABLES `hobuseomanikud` WRITE;
/*!40000 ALTER TABLE `hobuseomanikud` DISABLE KEYS */;
/*!40000 ALTER TABLE `hobuseomanikud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kasutajaligipääs`
--

DROP TABLE IF EXISTS `kasutajaligipääs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kasutajaligipääs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kasutajanimi` varchar(255) NOT NULL,
  `ligipääs` bigint unsigned NOT NULL,
  `roll` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kasutajaligipääs`
--

LOCK TABLES `kasutajaligipääs` WRITE;
/*!40000 ALTER TABLE `kasutajaligipääs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kasutajaligipääs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tallid`
--

DROP TABLE IF EXISTS `tallid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tallid` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tallinr` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallid`
--

LOCK TABLES `tallid` WRITE;
/*!40000 ALTER TABLE `tallid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tallid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terviseajalugu`
--

DROP TABLE IF EXISTS `terviseajalugu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terviseajalugu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hobuseid` bigint unsigned NOT NULL,
  `vaksineerimine` varchar(255) DEFAULT NULL,
  `kuupäev` date NOT NULL,
  `maksesumma` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `terviseajalugu_hobuseid_foreign` (`hobuseid`),
  CONSTRAINT `terviseajalugu_hobuseid_foreign` FOREIGN KEY (`hobuseid`) REFERENCES `hobused` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terviseajalugu`
--

LOCK TABLES `terviseajalugu` WRITE;
/*!40000 ALTER TABLE `terviseajalugu` DISABLE KEYS */;
/*!40000 ALTER TABLE `terviseajalugu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treeninggraafik`
--

DROP TABLE IF EXISTS `treeninggraafik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treeninggraafik` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hobuseid` bigint unsigned NOT NULL,
  `treeningkuupäev` date NOT NULL,
  `treenernimi` varchar(255) NOT NULL,
  `kirjeldus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `treeninggraafik_hobuseid_foreign` (`hobuseid`),
  CONSTRAINT `treeninggraafik_hobuseid_foreign` FOREIGN KEY (`hobuseid`) REFERENCES `hobused` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treeninggraafik`
--

LOCK TABLES `treeninggraafik` WRITE;
/*!40000 ALTER TABLE `treeninggraafik` DISABLE KEYS */;
/*!40000 ALTER TABLE `treeninggraafik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `töötajad`
--

DROP TABLE IF EXISTS `töötajad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `töötajad` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `kontakt` varchar(255) NOT NULL,
  `töögraafik` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `töötajad`
--

LOCK TABLES `töötajad` WRITE;
/*!40000 ALTER TABLE `töötajad` DISABLE KEYS */;
/*!40000 ALTER TABLE `töötajad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varustus`
--

DROP TABLE IF EXISTS `varustus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varustus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `varustusnimi` varchar(255) NOT NULL,
  `kogus` bigint unsigned NOT NULL,
  `väärtus` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varustus`
--

LOCK TABLES `varustus` WRITE;
/*!40000 ALTER TABLE `varustus` DISABLE KEYS */;
/*!40000 ALTER TABLE `varustus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-17  9:37:06
