CREATE DATABASE  IF NOT EXISTS `english_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `english_it`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: english_it
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `percentComplete` int DEFAULT '0',
  `timer` int DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `process_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `unit_id` (`unit_id`),
  KEY `process_id` (`process_id`),
  CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `exams_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  CONSTRAINT `exams_ibfk_3` FOREIGN KEY (`process_id`) REFERENCES `processes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,0,0,3,1,1,'2021-10-19 05:36:01','2021-10-19 05:36:01'),(2,0,0,3,2,1,'2021-10-19 05:38:00','2021-10-19 05:53:15');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `backgroundProcess` varchar(255) DEFAULT NULL,
  `description` text,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

LOCK TABLES `processes` WRITE;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
INSERT INTO `processes` VALUES (1,'English - Vietnamese',NULL,NULL,'english-vietnamese'),(2,'Vietnamese - English ',NULL,NULL,'vietnamese-english');
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typevocabularies`
--

DROP TABLE IF EXISTS `typevocabularies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typevocabularies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NameEnglish` varchar(255) NOT NULL,
  `NameVietnamese` varchar(255) NOT NULL,
  `Abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typevocabularies`
--

LOCK TABLES `typevocabularies` WRITE;
/*!40000 ALTER TABLE `typevocabularies` DISABLE KEYS */;
INSERT INTO `typevocabularies` VALUES (1,'Nouns','Danh từ ','n'),(2,'Adverb','Trạng từ','adv'),(3,'Adjective','Tính từ','adj'),(4,'Verb','Động từ','v'),(5,'Prepositions','Giới từ','pre'),(6,'Determiners','Từ hạn định',''),(7,'Pronouns','Đại từ',''),(8,'Conjunctions','Liên từ',''),(9,'Interjections','Thán Từ ',''),(10,'order','Khác','');
/*!40000 ALTER TABLE `typevocabularies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `backgroudImage` varchar(255) DEFAULT NULL,
  `description` text,
  `subscriber` int DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'Unit 1 - Algorithm - part 1','EnglishIT1.jpg','Lesson 1 will help you improve your vocabulary. it has two processes \'English -Vietnamese\' and \'Vietnamese -English\'',0,'unit-1','2021-08-30 13:07:19','2021-08-30 13:07:19'),(2,'Unit 2 - Algorithm - part 2','EnglishIT1.jpg','Lesson 1 will help you improve your vocabulary. it has two processes \'English -Vietnamese\' and \'Vietnamese -English\'',0,'unit-2','2021-08-30 13:09:09','2021-08-30 13:09:09');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `codeSupplied` varchar(255) NOT NULL,
  `provide` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nguyenthanhson162001@gmail.com','Nguyễn Thanh','Sơn','https://lh3.googleusercontent.com/a/AATXAJxbkku-VwCWJ4Ub20cUTneNdzUM4o0pqVgBgj_0=s96-c','112248534294167824771','google-oauth2','2021-08-30 02:46:08','2021-08-30 02:46:08'),(2,'thanhson11281@gmail.com','Son','Nguyen','https://lh3.googleusercontent.com/a-/AOh14Gipan5cW1-91j7wKrRIjgalxO4RF4KrJmnod08M=s96-c','115063965400407310661','google-oauth2','2021-09-05 16:50:12','2021-09-05 16:50:12'),(3,'nguyenthanhson162001@gmail.com','','','https://s.gravatar.com/avatar/0e90c3d38227db84c01fac109f0f6dd8?s=480&r=pg&d=https%3A%2F%2Fcdn.auth0.com%2Favatars%2Fng.png','612b8aa63caaba0069b83f95','auth0','2021-09-07 13:12:20','2021-09-07 13:12:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularies`
--

DROP TABLE IF EXISTS `vocabularies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vocabularies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `english` varchar(255) NOT NULL,
  `vietnamese` text NOT NULL,
  `spelling` varchar(255) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `typeVocabulary_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `typeVocabulary_id` (`typeVocabulary_id`),
  CONSTRAINT `vocabularies_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  CONSTRAINT `vocabularies_ibfk_2` FOREIGN KEY (`typeVocabulary_id`) REFERENCES `typevocabularies` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularies`
--

LOCK TABLES `vocabularies` WRITE;
/*!40000 ALTER TABLE `vocabularies` DISABLE KEYS */;
INSERT INTO `vocabularies` VALUES (1,'Tape','Ghi băng, băng','teip',1,4),(2,'Terminal','Máy trạm','tɜ:minl',1,4),(3,'Transmit','Truyền','trænz\'mit',1,1),(4,'Abacus','Bàn tính','æbəkəs',1,4),(5,'Allocate','Phân phối','æləkeit',1,1),(6,'Application','Ứng dụng',',æpli\'kei∫n',1,4),(7,'Analog','Tương tự','ˈanlˌôɡ',1,4),(8,'Binary','Nhị phân, thuộc về nhị phân','bainəri',1,1),(9,'Calculation','Tính toán',',kælkjʊ\'lei∫n',1,4),(10,'Command','Ra lệnh, lệnh (trong máy tính)','kə\'mɑ:nd',1,1),(11,'Dependable','Có thể tin cậy được','di\'pendəbl',1,3),(12,'Devise','Phát minh','di\'vaiz',2,1),(13,'Different','Khác biệt','difrənt',2,3),(14,'Digital','Số, thuộc về số','didʒitl',2,4),(15,'Experiment','Thí nghiệm','ik\'sperimənt',2,4),(16,'Figure out','Tính toán, tìm ra','fˈɪɡəɹ ˈa͡ʊt',2,1),(17,'History','Lịch sử','histri',2,4),(18,'Imprint','In, khắc','im\'print',2,1),(19,'Generation','Thế hệ','dʒenə\'rei∫n',2,4),(20,'Integrate','Tích hợp','intigreit',2,1),(21,'Invention','Phát minh','in\'ven∫n',2,4),(22,'Layer','Tầng, lớp','leiə[r]',2,4),(23,'Mainframe computer','Máy tính lớn','mˈe‍ɪnfɹe‍ɪm kəmpjˈuːtə',2,4),(24,'Ability','Khả năng','ə\'biliti',2,4),(25,'Access','Sự truy cập','ækses',2,4),(26,'Acoustic coupler','Bộ ghép âm','ɐkˈuːstɪk kˈʌplə',2,4),(27,'Analyst','Nhà phân tích','ænəlist',2,4),(28,'Centerpiece','Mảnh trung tâm','ˈsɛntɚˌpiːs',2,4),(29,'Channel','Kênh','\'t∫ænl',2,4),(30,'Characteristic','Đặc thù, đặc trưng',',kærəktə\'ristik',2,4),(31,'Cluster controller','Bộ điều khiển trùm',NULL,2,4),(32,'Consist (of)','Bao gồm','kən\'sist',2,1),(33,'Convert','Chuyển đổi','kən\'vɜ:t',2,1),(34,'Equipment','Trang thiết bị','i\'kwipmənt',2,4),(35,'Multiplexor','Bộ dồn kênh',NULL,2,4),(36,'Network','Mạng','netwɜ:k',2,4),(37,'Peripheral','Ngoại vi','pə\'rifərəl',2,4),(38,'Reliability','Sự có thể tin cậy được','rilaiə\'biləti',2,4),(39,'Single-purpose','Đơn mục đích','sˈɪŋɡə‍lpˈɜːpəs',2,3),(40,'Teleconference','Hội thảo từ xa','[tˈɛlɪkˌɒnfɹəns',2,4);
/*!40000 ALTER TABLE `vocabularies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'english_it'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-19 19:59:21
