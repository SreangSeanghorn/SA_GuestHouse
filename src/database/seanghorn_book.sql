-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: seanghorn
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_date` date NOT NULL,
  `book_chekIn_date` date NOT NULL,
  `book_checkOut_date` date DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `staff_id` (`staff_id`),
  KEY `cus_id` (`cus_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (15,'2019-12-24','2019-12-02','2019-12-01',1,1),(16,'2019-12-24','2019-12-03','2019-12-05',1,1),(17,'2019-12-24','2019-12-01','2019-12-02',1,1),(18,'2019-12-24','2019-12-01','2019-12-02',1,1),(19,'2019-12-24','2019-12-01','2019-12-02',1,1),(20,'2019-12-24','2019-12-01','2019-12-02',1,1),(21,'2019-12-24','2019-12-01','2019-12-02',1,1),(22,'2019-12-24','2019-12-01','2019-12-02',1,1),(23,'2019-12-24','2019-12-01','2019-12-04',1,1),(24,'2019-12-24','2019-12-01','2019-12-04',1,1),(25,'2019-12-24','2019-12-01','2019-12-04',1,1),(26,'2019-12-24','2019-12-01','2019-12-04',1,1),(27,'2019-12-24','2019-12-01','2019-12-04',1,1),(28,'2019-12-24','2019-12-01','2019-12-02',1,1),(29,'2019-12-24','2019-12-01','2019-12-03',1,1),(30,'2019-12-24','2019-12-02','2019-12-06',1,1),(31,'2019-12-24','2019-12-02','2019-12-06',1,1),(32,'2019-12-24','2019-12-02','2019-12-06',1,1),(33,'2019-12-24','2019-12-02','2019-12-02',1,1),(34,'2019-12-24','2019-12-04','2019-12-04',1,1),(35,'2020-12-31','2019-12-01','2019-12-03',1,9),(36,'2020-12-31','2019-12-04','2019-12-12',1,10),(37,'2020-12-31','2019-12-05','2019-12-16',1,11),(38,'2020-12-31','2019-12-05','2019-12-19',1,12),(39,'2020-12-31','2019-12-02','2019-12-11',1,13),(40,'2020-12-31','2019-12-01','2019-12-05',1,14),(41,'2020-12-31','2019-12-01','2019-12-04',1,16),(42,'2020-12-31','2019-12-03','2019-12-07',1,17),(43,'2020-12-31','2019-12-01','2019-12-03',1,18);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-04 11:40:14