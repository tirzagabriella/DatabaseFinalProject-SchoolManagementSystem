-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `schooldb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `schooldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `schooldb`;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `announcement_title` varchar(100) NOT NULL,
  `announcement_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` varchar(100) NOT NULL,
  `announcement_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES ('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',1),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',2),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',3),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',4),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',5),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',6),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',7),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',8),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',9),('Admin announcement : WELCOME','welcome teachers and student','230506ADM01',10),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',11),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',12),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',13),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',14),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',15),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',16),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',17),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',18),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',19),('Teacher announcement : Teacher Announcement','Announcements for students','230516TCH01',20),('Admin announcement : hello','hai','230506ADM01',21),('Admin announcement : hai','hehehe','230506ADM01',22);
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment` (
  `assignment_title` varchar(100) NOT NULL,
  `assignment_desc` varchar(100) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `assignment_deadline` datetime NOT NULL,
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES ('assignment 1','first assignment','230516TCH01','2023-11-23 00:00:00',1),('assignment 2','second assignment','230516TCH01','2023-11-23 00:00:00',2),('assignment 3','third assignment','230516TCH01','2023-11-23 00:00:00',3),('assignment 4','fourth assignment','230516TCH01','2023-11-23 00:00:00',4),('assignment 5','fifth assignment','230516TCH01','2023-11-23 00:00:00',5),('assignment 6','sixth assignment','230516TCH01','2023-11-23 00:00:00',6),('assignment 7','seventh assignment','230516TCH01','2023-11-23 00:00:00',7),('assignment 8','eighth assignment','230516TCH01','2023-11-23 00:00:00',8),('assignment 9','ninth assignment','230516TCH01','2023-11-23 00:00:00',9),('assignment 10','tenth assignment','230516TCH01','2023-11-23 00:00:00',10),('assignment 11','eleventh assignment','230516TCH01','2023-11-23 00:00:00',11),('assignment 12','twelfth assignment','230516TCH01','2023-11-23 00:00:00',12),('assignment 13','thirteenth assignment','230516TCH01','2023-11-23 00:00:00',13),('assignment 14','fourteenth assignment','230516TCH01','2023-11-23 00:00:00',14),('assignment 15','fifteenth assignment','230516TCH01','2023-11-23 00:00:00',15),('assignment 16','sixteenth assignment','230516TCH01','2023-11-23 00:00:00',16),('assignment 17','seventeenth assignment','230516TCH01','2023-11-23 00:00:00',17),('assignment 18','eighteenth assignment','230516TCH01','2023-11-23 00:00:00',18),('assignment 19','nineteenth assignment','230516TCH01','2023-11-23 00:00:00',19),('assignment 20','twentieth assignment','230516TCH01','2023-11-23 00:00:00',20),('assignment 21','twenty-first assignment','230516TCH01','2023-11-23 00:00:00',21),('assignment 22','twenty-second assignment','230516TCH01','2023-11-23 00:00:00',22),('assignment 23','twenty-third assignment','230516TCH01','2023-11-23 00:00:00',23),('assignment 24','twenty-fourth assignment','230516TCH01','2023-11-23 00:00:00',24),('assignment 25','twenty-fifth assignment','230516TCH01','2023-11-23 00:00:00',25),('assignment 26','twenty-sixth assignment','230516TCH01','2023-11-23 00:00:00',26),('assignment 27','twenty-seventh assignment','230516TCH01','2023-11-23 00:00:00',27),('assignment 28','twenty-eighth assignment','230516TCH01','2023-11-23 00:00:00',28),('assignment 29','twenty-ninth assignment','230516TCH01','2023-11-23 00:00:00',29),('assignment 30','thirtieth assignment','230516TCH01','2023-11-23 00:00:00',30);
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `user_id` varchar(100) NOT NULL,
  `checkin_datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('230506ADM01','2023.11.21.17.47.59'),('230506ADM01','2023.11.21.17.52.10'),('230506ADM01','2023.11.21.17.55.44'),('230506ADM01','2023.11.21.17.55.51'),('230506ADM01','2023.11.21.18.06.18'),('230506ADM01','2023.11.21.18.07.57'),('230506ADM01','2023.11.21.18.09.28'),('230506ADM01','2023.11.21.18.11.10'),('230506ADM01','2023.11.21.18.19.39'),('230506ADM01','2023.11.21.18.20.01'),('230506ADM01','2023.11.21.18.23.11'),('230506ADM01','2023.11.21.18.26.54'),('230516TCH01','2023.11.21.17.47.59'),('230516TCH01','2023.11.21.17.52.10'),('230516TCH01','2023.11.21.17.55.44'),('230516TCH01','2023.11.21.17.55.51'),('230516TCH01','2023.11.21.18.06.18'),('230516TCH01','2023.11.21.18.07.57'),('230516TCH01','2023.11.21.18.09.28'),('230516TCH01','2023.11.21.18.11.10'),('230516TCH01','2023.11.21.18.19.39'),('230516TCH01','2023.11.21.18.20.01'),('230516TCH01','2023.11.21.18.23.11'),('230516TCH01','2023.11.21.18.26.54'),('230516STD02','2023.11.21.17.47.59'),('230516STD02','2023.11.21.17.52.10'),('230516STD02','2023.11.21.17.55.44'),('230516STD02','2023.11.21.17.55.51'),('230516STD02','2023.11.21.18.06.18'),('230516STD02','2023.11.21.18.07.57'),('230516STD02','2023.11.21.18.09.28'),('230516STD02','2023.11.21.18.11.10'),('230516STD02','2023.11.21.18.19.39'),('230516STD02','2023.11.21.18.20.01'),('230516STD02','2023.11.21.18.23.11'),('230516STD02','2023.11.21.18.26.54'),('230506ADM01','2023.12.25.10.26.16'),('230506ADM01','2023.12.25.10.26.21'),('230506ADM01','2023.12.25.10.26.23'),('230506ADM01','2023.12.25.10.27.21'),('230506ADM01','2023.12.25.10.27.23'),('230506ADM01','2023.12.25.10.27.25'),('230506ADM01','2023.12.25.10.27.26'),('230506ADM01','2023.12.25.10.27.29'),('230506ADM01','2023.12.25.10.27.31'),('230506ADM01','2023.12.25.10.27.36');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submitted_assignment`
--

DROP TABLE IF EXISTS `submitted_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submitted_assignment` (
  `assignment_id` int NOT NULL,
  `assignment_data` varchar(100) NOT NULL,
  `assignment_status` varchar(100) DEFAULT NULL,
  `assignment_score` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` varchar(100) NOT NULL,
  `assignment_feedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submitted_assignment`
--

LOCK TABLES `submitted_assignment` WRITE;
/*!40000 ALTER TABLE `submitted_assignment` DISABLE KEYS */;
INSERT INTO `submitted_assignment` VALUES (1,'answer by me','scored','90','230516STD02','Good Job !!!'),(2,'test','scored','80','230516STD02','Nice'),(3,'hello this is an answer','scored','85','230516STD02','Great'),(4,'this is test 4','scored','70','230516STD02','Bad'),(5,'this is test 5','scored','95','230516STD02','Excellent'),(6,'this is test 6','scored','70','230516STD02','Needs Improvement'),(7,'this is test 7','scored','75','230516STD02','Keep it up'),(8,'this is test 8','scored','80','230516STD02','Satisfactory'),(9,'this is test 9','scored','85','230516STD02','Outstanding'),(10,'this is test 10','scored','90','230516STD02','Good Job'),(11,'this is test 11','scored','95','230516STD02','Nice'),(12,'this is test 12','scored','70','230516STD02','Great'),(13,'this is test 13','scored','75','230516STD02','Bad'),(14,'this is test 14','scored','80','230516STD02','Well Done'),(15,'this is test 15','scored','85','230516STD02','Excellent'),(16,'this is test 16','scored','90','230516STD02','Needs Improvement'),(17,'this is test 17','scored','95','230516STD02','Keep it up'),(18,'this is test 18','scored','70','230516STD02','Satisfactory'),(19,'this is test 19','scored','75','230516STD02','Outstanding'),(20,'this is test 20','scored','80','230516STD02','Good Job'),(21,'this is test 21','scored','85','230516STD02','Nice'),(22,'this is test 22','scored','90','230516STD02','Great'),(23,'this is test 23','scored','95','230516STD02','Bad'),(24,'this is test 24','scored','70','230516STD02','Well Done'),(25,'this is test 25','scored','75','230516STD02','Excellent'),(26,'this is test 26','scored','80','230516STD02','Needs Improvement'),(27,'this is test 27','scored','85','230516STD02','Keep it up'),(28,'this is test 28','scored','90','230516STD02','Satisfactory'),(29,'this is test 29','scored','95','230516STD02','Outstanding'),(30,'this is test 30','scored','70','230516STD02','Good Job');
/*!40000 ALTER TABLE `submitted_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_role` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('SuperAdmin','230506ADM01','admin','secret'),('Chris','230516ADM03','admin','secret3'),('Sarah','230516ADM07','admin','secret7'),('Alex','230516ADM08','admin','secret8'),('Samantha','230516ADM09','admin','secret9'),('Michael','230516ADM10','admin','secret10'),('Daniel','230516ADM14','admin','secret14'),('David','230516ADM17','admin','secret17'),('Julia','230516ADM22','admin','secret22'),('John','230516ADM27','admin','secret27'),('David','230516ADM28','admin','secret28'),('John','230516STD02','student','secret'),('Emily','230516STD04','student','secret4'),('Daniel','230516STD06','student','secret6'),('Jessica','230516STD13','student','secret13'),('Daniel','230516STD15','student','secret15'),('Chris','230516STD18','student','secret18'),('David','230516STD23','student','secret23'),('Emily','230516STD24','student','secret24'),('David','230516STD29','student','secret29'),('Tirza Gabriella','230516TCH01','teacher','secret1'),('Daniel','230516TCH05','teacher','secret5'),('Daniel','230516TCH11','teacher','secret11'),('Maria','230516TCH12','teacher','secret12'),('David','230516TCH16','teacher','secret16'),('Chris','230516TCH19','teacher','secret19'),('David','230516TCH20','teacher','secret20'),('Chris','230516TCH21','teacher','secret21'),('Tirza Gabriella','230516TCH25','teacher','secret25'),('Samantha','230516TCH26','teacher','secret26'),('Emily','230517STD02','student','secret2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-05 15:37:43
