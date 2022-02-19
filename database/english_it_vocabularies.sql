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
  CONSTRAINT `vocabularies_ibfk_2` FOREIGN KEY (`typeVocabulary_id`) REFERENCES `typevocabularies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularies`
--

LOCK TABLES `vocabularies` WRITE;
/*!40000 ALTER TABLE `vocabularies` DISABLE KEYS */;
INSERT INTO `vocabularies` VALUES (1,'Multiplication','Phép nhân',' mʌltɪplɪˈkeɪʃən',1,4),(2,'Numeric ','Số học, thuộc về số học','nju(ː)ˈmɛrɪk',1,3),(3,'Operation','Thao tác','ɒpəˈreɪʃən',1,4),(4,'Output ','Ra, đưa ra','ˈaʊtpʊt',1,4),(5,'Perform ','Tiến hành, thi hành','pəˈfɔːm',1,1),(6,'Process','Xử lý, Tiến trình','ˈprəʊsɛs',1,4),(7,'Processor','Bộ xử lýˈ','prəʊsɛsə',1,4),(8,'Pulse ','Xung','Xung',1,4),(9,'Signal','Tín hiệu','ˈsɪgnl',1,4),(10,'Register ','Thanh ghi, đăng ký','ˈrɛʤɪstə',1,4),(11,'Store ','Lưu trữ','stɔː',1,4),(12,'Subtraction ','Phép trừ','səbˈtrækʃən',1,4),(13,'Switch ','Chuyển','swɪʧ',1,4),(14,'Tape','Ghi băng, băng','teip',1,4),(15,'Transmit','Truyền','trænz\'mit',1,1),(16,'Terminal','Máy trạm','tɜ:minl',1,4),(17,'Abacus','Bàn tính','æbəkəs',1,4),(18,'Application','Ứng dụng',',æpli\'kei∫n',1,4),(19,'Allocate','Phân phối','æləkeit',1,1),(20,'Analog','Tương tự','ˈanlˌôɡ',1,4),(21,'Binary','Nhị phân, thuộc về nhị phân','bainəri',1,1),(22,'Calculation','Tính toán',',kælkjʊ\'lei∫n',1,4),(23,'Command','Ra lệnh, lệnh (trong máy tính)','kə\'mɑ:nd',1,1),(24,'Dependable','Có thể tin cậy được','di\'pendəbl',1,3),(25,'Devise','Phát minh','di\'vaiz',1,1),(26,'Different','Khác biệt','difrənt',2,3),(27,'Digital','Số, thuộc về số','didʒitl',2,4),(28,'Experiment','Thí nghiệm','ik\'sperimənt',2,4),(29,'Figure out','Tính toán, tìm ra','fˈɪɡəɹ ˈa͡ʊt',2,1),(30,'Generation','Thế hệ','dʒenə\'rei∫n',2,4),(31,'History','Lịch sử','histri',2,4),(32,'Imprint','In, khắc','im\'print',2,1),(33,'Integrate','Tích hợp','intigreit',2,1),(34,'Invention','Phát minh','in\'ven∫n',2,4),(35,'Layer','Tầng, lớp','leiə[r]',2,4),(36,'Mainframe computer','Máy tính lớn','mˈe‍ɪnfɹe‍ɪm kəmpjˈuːtə',2,4),(37,'Ability','Khả năng','ə\'biliti',2,4),(38,'Access','Sự truy cập','ækses',2,4),(39,'Acoustic coupler','Bộ ghép âm','ɐkˈuːstɪk kˈʌplə',2,4),(40,'Analyst','Nhà phân tích','ænəlist',2,4),(41,'Centerpiece','Mảnh trung tâm','ˈsɛntɚˌpiːs',2,4),(42,'Channel','Kênh','\'t∫ænl',2,4),(43,'Characteristic','Đặc thù, đặc trưng',',kærəktə\'ristik',2,4),(44,'Cluster controller','Bộ điều khiển trùm',NULL,2,4),(45,'Consist (of)','Bao gồm','kən\'sist',2,1),(46,'Convert','Chuyển đổi','kən\'vɜ:t',2,1),(47,'Equipment','Trang thiết bị','i\'kwipmənt',2,4),(48,'Multiplexor','Bộ dồn kênh',NULL,2,4),(49,'Network','Mạng','netwɜ:k',2,4),(50,'Peripheral','Ngoại vi','pə\'rifərəl',2,4),(51,'Reliability','Sự có thể tin cậy được','rilaiə\'biləti',2,4),(52,'Single-purpose','Đơn mục đích','sˈɪŋɡə‍lpˈɜːpəs',2,3),(53,'Teleconference','Hội thảo từ xa','[tˈɛlɪkˌɒnfɹəns',2,4);
/*!40000 ALTER TABLE `vocabularies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-16  0:13:29
