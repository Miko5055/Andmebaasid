-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hobusetalu
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
  `sünniaasta` bigint NOT NULL,
  `tervis` varchar(255) NOT NULL,
  `talliboksnr` varchar(255) NOT NULL,
  `omanikuid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobused`
--

LOCK TABLES `hobused` WRITE;
/*!40000 ALTER TABLE `hobused` DISABLE KEYS */;
INSERT INTO `hobused` VALUES (2,'Kaine',2011,'Info puudub','5A','2'),(3,'Kalina',2012,'Info puudub','7','3'),(4,'Kalondra',2013,'Info puudub','7','3'),(5,'Kar Kalim',2014,'Info puudub','7','3'),(6,'Karisha',2015,'Info puudub','7A','4'),(7,'Kasimira',2016,'Info puudub','7A','4'),(8,'Katareena',2017,'Info puudub','7A','4'),(9,'Katifa',2018,'Info puudub','7A','6'),(10,'Kayleigh',2019,'Info puudub','7A','6'),(11,'Keener Than Keen',2020,'Info puudub','7A','6'),(12,'Kei',2021,'Info puudub','7B','7'),(13,'Kellendria',2022,'Info puudub','7B','7'),(14,'Kelly Green',2010,'Info puudub','7B','6'),(15,'Kelvin',2011,'Info puudub','7B','6'),(16,'Keno',2012,'Info puudub','7B','6'),(17,'Kentucky Roses',2013,'Info puudub','7B','6'),(18,'Kermit',2014,'Info puudub','2','5'),(19,'Kevah',2015,'Info puudub','2','9'),(20,'Kiawa',2016,'Info puudub','2','9'),(21,'King',2017,'Info puudub','2','9'),(22,'King Quakers crystal',2018,'Info puudub','2','9'),(23,'Kings Ransom',2019,'Info puudub','2','9'),(24,'Kipawa',2020,'Info puudub','2','9'),(25,'Kirby',2021,'Info puudub','2','9'),(26,'Kiss',2022,'Info puudub','5','1'),(27,'Kiss Me Clown',2010,'Info puudub','5','1'),(28,'Kissin the Sky',2011,'Info puudub','5','1'),(29,'Kit Kat\'s Chat',2012,'Info puudub','5','1'),(30,'Kitty Hawk',2013,'Info puudub','5','1'),(31,'Kizi',2014,'Info puudub','5','4'),(32,'Knight',2015,'Info puudub','5','4'),(33,'Kochiese',2016,'Info puudub','5','8'),(34,'Kodiak',2017,'Info puudub','5','8');
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
  `telefon` bigint DEFAULT NULL,
  `aadress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobuseomanikud`
--

LOCK TABLES `hobuseomanikud` WRITE;
/*!40000 ALTER TABLE `hobuseomanikud` DISABLE KEYS */;
INSERT INTO `hobuseomanikud` VALUES (1,'Aadu Laid',NULL,'Tallinn'),(2,'Ester Teeveer',NULL,'Kuressaare'),(3,'Raul Väli',NULL,'Tallinn'),(4,'Mihkel Soo',NULL,'Kuressaare'),(5,'Paavo Neihaus',NULL,'Tallinn'),(6,'Oskar Vallik',NULL,'Kuressaare'),(7,'Reet Romanjuk',NULL,'Tallinn'),(8,'Karin Hallas',NULL,'Kuressaare'),(9,'Carina Romana Ciaro',NULL,'Tallinn');
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
  `ligipääs` bigint NOT NULL,
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
  `hobuseid` varchar(255) NOT NULL,
  `vaksineerimine` varchar(255) NOT NULL,
  `kuupäev` date NOT NULL,
  `maksesumma` bigint NOT NULL,
  PRIMARY KEY (`id`)
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
  `hobuseid` bigint NOT NULL,
  `treeningkuupäev` date NOT NULL,
  `treenernimi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
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
  `kogus` bigint NOT NULL,
  `väärtus` bigint NOT NULL,
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

-- Dump completed on 2024-09-26 11:07:45
