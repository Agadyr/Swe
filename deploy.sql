-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: happy_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'Sanahr','Nusret','testawad4da44@gmail.com','+777478484'),(4,'Sanahr','Nusret','sukawdaw@gm.com','+77747847884'),(6,'Sanahr','Nusret','sukawzdaw@gm.com','+777447847884'),(8,'Sanahr','Nusret','awdawdawdawd@gmail.com','77447847884'),(9,'Sanahr','Nusret','awdawdaawdawd@gmail.com','774478457884'),(10,'Shady','Slim','danialov.m636@gmail.com','7747474'),(11,'Slim','Shady','danialov.maaa636@gmail.com','+777475989'),(12,'Someone','Family','sanzhaar@gmail.com','97987987'),(14,'yernar','mars','22010126@stu.sdu.edu.kz','12345678');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('e6fcc52394aa');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int DEFAULT NULL,
  `description` text,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `day_of_week` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') DEFAULT NULL,
  `status` enum('completed','booked','canceled','canceledP','canceled by doctor') NOT NULL,
  `patient_id` int DEFAULT NULL,
  `appointmentType` varchar(255) DEFAULT NULL,
  `additional_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (21,919,'I have a issues with my eyes because they are looking like i have used some things','08:00:00','09:00:00','2024-12-03','Tuesday','booked',2,NULL,NULL),(22,920,'i have headache','14:00:00','15:00:00','2024-12-05','Thursday','booked',2,NULL,NULL),(23,920,'AWdawdawdawd','19:00:00','20:00:00','2024-12-05','Thursday','booked',2,NULL,NULL),(24,920,'Headchae','19:00:00','20:00:00','2024-12-05','Thursday','booked',2,NULL,NULL),(25,920,'i have a bad feelings\n','18:00:00','19:00:00','2024-12-05','Thursday','completed',2,NULL,NULL),(26,920,'Golova bolit','18:00:00','19:00:00','2024-12-05','Thursday','completed',3,NULL,NULL),(27,924,'some headaches','06:00:00','07:00:00','2024-12-03','Tuesday','booked',3,NULL,NULL),(28,918,'Some issues with health','06:00:00','07:00:00','2024-12-14','Saturday','canceled',3,NULL,NULL),(29,918,'Booked app','08:00:00','09:00:00','2024-12-09','Monday','booked',3,NULL,NULL),(30,917,'awdqe','11:00:00','12:00:00','2024-12-09','Monday','booked',2,NULL,NULL),(31,921,'awdawdawd','07:00:00','08:00:00','2024-12-11','Wednesday','canceled',2,NULL,NULL),(32,917,'qwd','11:00:00','12:00:00','2024-12-09','Monday','booked',2,NULL,NULL),(33,918,'j','08:00:00','09:00:00','2024-12-09','Monday','booked',2,NULL,NULL),(34,920,'47','13:00:00','14:00:00','2024-12-11','Wednesday','canceled',14,'Cluster Scheduling',NULL),(35,917,'06:55 appoitnment','11:00:00','12:00:00','2024-12-09','Monday','booked',14,'Cluster Scheduling',NULL),(36,919,'Consultation at 07:03','15:00:00','16:00:00','2024-12-11','Wednesday','canceled',14,'Consultation',NULL),(37,920,'wadawd','20:00:00','21:00:00','2024-12-10','Tuesday','booked',14,'Routine Check-Up',NULL),(38,919,'q2wdaw','15:00:00','16:00:00','2024-12-13','Friday','canceled',14,'Cluster Scheduling',NULL),(39,922,'awdawd','07:00:00','08:00:00','2024-12-13','Friday','canceled',14,'Cluster Scheduling',NULL),(40,918,'Appointment at 07:54','14:00:00','15:00:00','2024-12-12','Thursday','canceled',14,'Follow-Up Visit',NULL),(41,917,'фцвцв','18:00:00','19:00:00','2024-12-12','Thursday','canceled',14,'Follow-Up Visit',NULL),(42,918,'first lasta 12:03','09:00:00','10:00:00','2024-12-11','Wednesday','booked',14,'Cluster Scheduling',NULL),(43,917,'Lalo 13 51','16:00:00','17:00:00','2024-12-13','Friday','canceled',16,'Consultation',NULL),(44,920,'фцвфцв','19:00:00','20:00:00','2024-12-13','Friday','canceled',16,'Personal Health Assessment',NULL),(45,922,'Third','07:00:00','08:00:00','2024-12-12','Thursday','canceled',16,'Routine Check-Up',NULL),(46,922,'-30% fourth','07:00:00','08:00:00','2024-12-12','Thursday','canceled',16,'Consultation',NULL),(47,920,'AWdawdawd','16:00:00','17:00:00','2024-12-13','Friday','canceled',16,'Follow-Up Visit',NULL),(48,917,'AWdawd','17:00:00','18:00:00','2024-12-14','Saturday','canceled',16,'Cluster Scheduling',NULL),(49,920,'Aw','16:00:00','17:00:00','2024-12-13','Friday','canceled',16,'Follow-Up Visit',NULL),(50,918,'awd','06:00:00','07:00:00','2024-12-14','Saturday','canceled',16,'Follow-Up Visit',NULL),(51,923,'awdawd','15:00:00','16:00:00','2024-12-10','Tuesday','completed',16,'Routine Check-Up',NULL),(52,920,'Some details at 15:28','17:00:00','18:00:00','2024-12-13','Friday','canceled',16,'Follow-Up Visit',NULL),(53,919,'s','11:00:00','12:00:00','2024-12-09','Monday','booked',16,'Follow-Up Visit',NULL),(54,927,'dswa','10:00:00','11:00:00','2024-12-10','Tuesday','booked',17,'Consultation',NULL),(55,919,'fdsm','09:00:00','10:00:00','2024-12-10','Tuesday','booked',16,'Follow-Up Visit',NULL),(56,918,'1234','13:00:00','14:00:00','2024-12-12','Thursday','booked',16,'Consultation',NULL),(57,917,'Booked?','16:00:00','17:00:00','2024-12-13','Friday','booked',16,'Follow-Up Visit',NULL),(58,918,'awd','06:00:00','07:00:00','2024-12-14','Saturday','canceled',16,'Cluster Scheduling',NULL),(59,923,'Peronsal Assistan','14:00:00','15:00:00','2024-12-12','Thursday','completed',16,'Personal Health Assessment',NULL),(60,923,'20k SB 11-12','11:00:00','12:00:00','2024-12-14','Saturday','completed',16,'Personal Health Assessment',NULL),(61,928,'was','10:00:00','11:00:00','2024-12-13','Friday','completed',17,'Consultation',NULL),(62,928,'njh','17:00:00','18:00:00','2024-12-12','Thursday','completed',17,'Personal Health Assessment',NULL),(63,928,'dsvf','12:00:00','13:00:00','2024-12-12','Thursday','canceled by doctor',17,'Follow-Up Visit',NULL),(64,923,'00:25 appointment','08:00:00','09:00:00','2024-12-14','Saturday','completed',16,'Follow-Up Visit',NULL),(65,916,'axaswd','13:00:00','14:00:00','2024-12-10','Tuesday','booked',16,'Consultation',NULL),(66,923,'awdawd','11:00:00','12:00:00','2024-12-14','Saturday','canceled by doctor',16,'Follow-Up Visit','awdawd'),(67,918,'wdawd','08:00:00','09:00:00','2024-12-09','Monday','booked',16,'Follow-Up Visit',NULL),(68,923,'awdaw','11:00:00','12:00:00','2024-12-14','Saturday','canceled by doctor',16,'Personal Health Assessment','wdawd'),(69,923,'awdawdawd','11:00:00','12:00:00','2024-12-14','Saturday','canceled by doctor',16,'Cluster Scheduling','Lalo\' you have not accepted\n');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `spec_id` int DEFAULT NULL,
  `schedule` json DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `email` (`email`),
  KEY `spec_id` (`spec_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`spec_id`) REFERENCES `specialization` (`spec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=929 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (916,'Rachel','Hansen','1981-11-14','martinjustin@example.com','8325098538523191939','Male',4,'[{\"day\": \"tuesday\", \"time\": [\"11:00\", \"15:00\"]}, {\"day\": \"monday\", \"time\": [\"07:00\", \"10:00\"]}, {\"day\": \"sunday\", \"time\": [\"12:00\", \"14:00\"]}, {\"day\": \"wednesday\", \"time\": [\"14:00\", \"18:00\"]}, {\"day\": \"saturday\", \"time\": [\"20:00\", \"21:00\"]}, {\"day\": \"thursday\", \"time\": [\"14:00\", \"16:00\"]}, {\"day\": \"friday\", \"time\": [\"15:00\", \"18:00\"]}]'),(917,'Mary','Kennedy','1985-04-04','hartdennis@example.net','60636377410428','Male',15,'[{\"day\": \"tuesday\", \"time\": [\"13:00\", \"17:00\"]}, {\"day\": \"friday\", \"time\": [\"16:00\", \"17:00\"]}, {\"day\": \"sunday\", \"time\": [\"07:00\", \"10:00\"]}, {\"day\": \"thursday\", \"time\": [\"15:00\", \"19:00\"]}, {\"day\": \"monday\", \"time\": [\"11:00\", \"14:00\"]}, {\"day\": \"wednesday\", \"time\": [\"19:00\", \"21:00\"]}, {\"day\": \"saturday\", \"time\": [\"16:00\", \"18:00\"]}]'),(918,'Mario','Neal','1970-11-17','lisameyer@example.org','8283902385','Female',15,'[{\"day\": \"monday\", \"time\": [\"08:00\", \"12:00\"]}, {\"day\": \"thursday\", \"time\": [\"13:00\", \"16:00\"]}, {\"day\": \"friday\", \"time\": [\"17:00\", \"20:00\"]}, {\"day\": \"saturday\", \"time\": [\"06:00\", \"07:00\"]}, {\"day\": \"wednesday\", \"time\": [\"09:00\", \"10:00\"]}, {\"day\": \"tuesday\", \"time\": [\"12:00\", \"14:00\"]}, {\"day\": \"sunday\", \"time\": [\"06:00\", \"08:00\"]}]'),(919,'Frederick','Wilkins','1981-06-16','tayloramanda@example.org','3411960308521156432','Male',6,'[{\"day\": \"tuesday\", \"time\": [\"08:00\", \"11:00\"]}, {\"day\": \"friday\", \"time\": [\"15:00\", \"16:00\"]}, {\"day\": \"saturday\", \"time\": [\"19:00\", \"21:00\"]}, {\"day\": \"monday\", \"time\": [\"10:00\", \"12:00\"]}, {\"day\": \"sunday\", \"time\": [\"15:00\", \"17:00\"]}, {\"day\": \"wednesday\", \"time\": [\"14:00\", \"16:00\"]}, {\"day\": \"thursday\", \"time\": [\"14:00\", \"15:00\"]}]'),(920,'Christopher','Fisher','1988-01-06','hwalters@example.net','07754395694624','Male',7,'[{\"day\": \"friday\", \"time\": [\"16:00\", \"20:00\"]}, {\"day\": \"saturday\", \"time\": [\"16:00\", \"17:00\"]}, {\"day\": \"tuesday\", \"time\": [\"20:00\", \"21:00\"]}, {\"day\": \"thursday\", \"time\": [\"17:00\", \"20:00\"]}, {\"day\": \"wednesday\", \"time\": [\"12:00\", \"14:00\"]}, {\"day\": \"monday\", \"time\": [\"08:00\", \"11:00\"]}, {\"day\": \"sunday\", \"time\": [\"20:00\", \"21:00\"]}]'),(921,'Jerry','Davis','1973-09-10','amy67@example.com','5867197574325292','Female',12,'[{\"day\": \"tuesday\", \"time\": [\"18:00\", \"21:00\"]}, {\"day\": \"wednesday\", \"time\": [\"07:00\", \"11:00\"]}, {\"day\": \"thursday\", \"time\": [\"14:00\", \"17:00\"]}, {\"day\": \"friday\", \"time\": [\"15:00\", \"19:00\"]}, {\"day\": \"sunday\", \"time\": [\"08:00\", \"10:00\"]}, {\"day\": \"saturday\", \"time\": [\"21:00\", \"22:00\"]}, {\"day\": \"monday\", \"time\": [\"08:00\", \"10:00\"]}]'),(922,'Spencer','Buchanan','1967-03-03','audrey21@example.com','5930189487497','Female',8,'[{\"day\": \"friday\", \"time\": [\"06:00\", \"09:00\"]}, {\"day\": \"monday\", \"time\": [\"10:00\", \"13:00\"]}, {\"day\": \"thursday\", \"time\": [\"07:00\", \"10:00\"]}, {\"day\": \"wednesday\", \"time\": [\"19:00\", \"21:00\"]}, {\"day\": \"tuesday\", \"time\": [\"19:00\", \"21:00\"]}, {\"day\": \"saturday\", \"time\": [\"10:00\", \"11:00\"]}, {\"day\": \"sunday\", \"time\": [\"19:00\", \"20:00\"]}]'),(923,'Carolyn','Cruz','1966-07-25','hamiltonamanda@example.com','796843249152030','Female',17,'[{\"day\": \"thursday\", \"time\": [\"20:00\", \"21:30\"]}, {\"day\": \"friday\", \"time\": [\"19:30\", \"21:30\"]}, {\"day\": \"saturday\", \"time\": [\"06:30\", \"11:30\"]}]'),(924,'Jacob','Lee','1976-01-21','yperez@example.org','908966406804','Male',11,'[{\"day\": \"monday\", \"time\": [\"11:00\", \"12:00\"]}, {\"day\": \"tuesday\", \"time\": [\"06:00\", \"07:00\"]}, {\"day\": \"friday\", \"time\": [\"15:00\", \"18:00\"]}, {\"day\": \"saturday\", \"time\": [\"15:00\", \"16:00\"]}, {\"day\": \"wednesday\", \"time\": [\"08:00\", \"12:00\"]}, {\"day\": \"thursday\", \"time\": [\"06:00\", \"10:00\"]}, {\"day\": \"sunday\", \"time\": [\"15:00\", \"18:00\"]}]'),(925,'Brianna','Lewis','1987-05-21','zwhite@example.org','344740033463','Male',8,'[{\"day\": \"monday\", \"time\": [\"13:00\", \"17:00\"]}, {\"day\": \"tuesday\", \"time\": [\"12:00\", \"14:00\"]}, {\"day\": \"friday\", \"time\": [\"21:00\", \"22:00\"]}, {\"day\": \"saturday\", \"time\": [\"13:00\", \"15:00\"]}, {\"day\": \"thursday\", \"time\": [\"15:00\", \"17:00\"]}, {\"day\": \"sunday\", \"time\": [\"15:00\", \"16:00\"]}, {\"day\": \"wednesday\", \"time\": [\"15:00\", \"19:00\"]}]'),(926,'AddDoctor','Lastname','2017-08-15','1awdawd@gmail.com','7778475123465',NULL,18,NULL),(927,'nur','nur','2003-02-01','mr.nur21@gmail.com','12345678',NULL,6,'[{\"day\": \"tuesday\", \"time\": [\"07:00\", \"12:00\"]}]'),(928,'doctor','rotcod','2003-02-01','doctor@gmail.com','12345678',NULL,5,'[{\"day\": \"thursday\", \"time\": [\"12:00\", \"19:00\"]}, {\"day\": \"friday\", \"time\": [\"06:00\", \"11:00\"]}]');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medhistory`
--

DROP TABLE IF EXISTS `medhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medhistory` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` int DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medhistory`
--

LOCK TABLES `medhistory` WRITE;
/*!40000 ALTER TABLE `medhistory` DISABLE KEYS */;
INSERT INTO `medhistory` VALUES (1,59,'Updated diagnosis in 01:02','Updated feedback at 01:03','2024-12-12','Personal Health Assessment');
/*!40000 ALTER TABLE `medhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `medical_history` json DEFAULT NULL,
  `balance` float DEFAULT '0',
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'First','Last','2012-12-12','danialov.m636@gmail.com','7775158495','Male',NULL,0),(2,'First','lasta','1995-12-12','patient1@gmail.com','8787878787','Male',NULL,0),(3,'aaaouiguio','bbb','1979-12-12','patienta1@gmail.com','7775144484','Male','[{\"date\": \"2024-12-05\", \"status\": \"completed\", \"end_time\": \"19:00\", \"start_time\": \"18:00\", \"day_of_week\": \"Thursday\", \"description\": \"Golova bolit\", \"appointment_id\": 26}]',0),(6,'Local','Xuser','2012-12-12','deryal2006@gmail.com','7752491642','Male',NULL,0),(7,'Yejeh','Heveh','2010-12-12','erkebulan.nurbosyn@gmail.com','8887777','Male',NULL,0),(8,'Name','LastName','2000-10-10','230230230@gmail.com','7777777777','Male',NULL,0),(9,'Djdhz','Bdjddbb','2005-10-10','230230290@gmail.com','7767676767','Male',NULL,0),(10,'Name','LastName','2000-12-10','12345678@gmail.com','7767767474','Male',NULL,0),(11,'jdsf','fdsdfs','2005-12-12','Mailmail@gmail.com','7074541617','Male',NULL,0),(12,'Mukha','Murat','1996-12-12','mukhametzhan2006@gmail.com','7751452121','Male',NULL,0),(13,'Erzhan','Vstavay','2024-12-11','erada@gmailc.om','7515484898','Male',NULL,0),(14,'Erzhan','Vstavay','2020-05-18','erada@gmdailc.om','7515484898','Male',NULL,-9600),(15,'Patient','Patientovich','2024-12-24','awdawd@goaiwdawd.com','787877','Male',NULL,0),(16,'Lalos','Salamanca','1976-12-12','tester@gmail.com','775147487871','Male','[{\"date\": \"2024-12-10\", \"status\": \"completed\", \"end_time\": \"16:00\", \"feedback\": \"Feedback Test\", \"diagnosis\": \"Normal \", \"start_time\": \"15:00\", \"day_of_week\": \"Tuesday\", \"description\": \"awdawd\", \"appointment_id\": 51}, {\"date\": \"2024-12-14\", \"status\": \"completed\", \"end_time\": \"09:00\", \"feedback\": \"Feed at 00:26\", \"diagnosis\": \"Diagnose at 00:26\", \"start_time\": \"08:00\", \"day_of_week\": \"Saturday\", \"description\": \"00:25 appointment\", \"appointment_id\": 64}]',-28260),(17,'yerkhan','mars','2003-02-01','y.marsaliyev@gmail.com','12345678','Male','[{\"date\": \"2024-12-13\", \"status\": \"completed\", \"end_time\": \"11:00\", \"feedback\": \"felling well\", \"diagnosis\": \"good\", \"start_time\": \"10:00\", \"day_of_week\": \"Friday\", \"description\": \"was\", \"appointment_id\": 61}]',0);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `spec_id` int NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`spec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Cardiologist'),(2,'Neurologist'),(3,'Orthopedic Surgeon'),(4,'Dermatologist'),(5,'Pediatrician'),(6,'Oncologist'),(7,'Endocrinologist'),(8,'Gastroenterologist'),(9,'Psychiatrist'),(10,'Ophthalmologist'),(11,'Urologist'),(12,'Pulmonologist'),(13,'Otolaryngologist (ENT Specialist)'),(14,'Nephrologist'),(15,'General Surgeon'),(16,'Obstetrician-Gynecologist (OB-GYN)'),(17,'Rheumatologist'),(18,'Radiologist'),(19,'Anesthesiologist'),(20,'Pathologist');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('patient','doctor','administrator') DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `admin_id` (`admin_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'scrypt:32768:8:1$GF6M4O8CAQxxbGrN$4f05683dd87de02e04fbe4fdbd99787f1c6e0c943673cfdd0f70ccf554ac8d3e0eed83f273b8b0d1d827e0a93abac0aed540bc534d338e5425775f70950a3df4','patient',1,NULL,NULL),(5,'scrypt:32768:8:1$aQj6N0VRW8s96zse$236fe4206639be0121cdc321a5ec14a3ce99c2baaecedaefbd88b3594ebec24070b1799bc3c209af40b4df389247b49ca4b0a4c496f8523448c1bfb9313d33d3','administrator',NULL,NULL,1),(6,'scrypt:32768:8:1$BXqJeNnnIXcraQZL$34ff7d744031504a314bb9254abecf36b08a1a90a1705df723c74d46b26263ed6a52552ab7fd9c735b1d5b1ee64a206406bd66cbf7ac15d99fe0432a3bcaa82d','administrator',NULL,NULL,4),(7,'scrypt:32768:8:1$slURv61xzmc2XKCE$d4018db03aec66f10a140377d9412b15fd175aa0c4a09ada8ffb648babfb44c857a4907e7bb1380d1198b1be937ff7751c24b549fbab3fba879c1dc99bbd84d1','administrator',NULL,NULL,6),(8,'scrypt:32768:8:1$svs6xT5i7iGC7y5p$a9c92459f872a78fd8f37a0d9a3dcd7790ed100e29b7ebbd529e1b59c32f143177f68bd7e3aac3ecbd98e060f13e70121d41fc9c6531ef2e6c4d2ecbfa151b9a','administrator',NULL,NULL,8),(9,'scrypt:32768:8:1$FYPMAwB4Mz3CB8lo$acc3b909b9b50adb810a54806ec69ae1bb9ab25a5e43b7b9d64937e603c46dfde8def1015bea7683b41e7189b40663d00fcf8eefb7a27a9a401fbd154b3530d1','administrator',NULL,NULL,9),(10,'scrypt:32768:8:1$w9ZJeGl1BHj711cz$8afca61ee7a0ce3f2f2bb85cd7b0ca6e81faa5e3498fd43f066e1addd98a893aae6d4809a0b2ca2abb0de090b13f7dae5578dd3d131be32225603f91669fd2c2','administrator',NULL,NULL,10),(11,'scrypt:32768:8:1$dR0uNaL7XJoZmwvZ$27105067d6304d735b1011f3fa967d18825637d8e053e8dfab53c385b4218ab27f75986638dac1481381469705aed5f62260112743e4cba5f4601aa7a7b990a6','administrator',NULL,NULL,11),(12,'scrypt:32768:8:1$KGFrivFaCNNunahY$d9b02aa220401c682f57baf5e0e792737368516780ca11469060618de6d5ac6d248926cf9899f0dfe56421d4409d07b713d7215a5522984fcb5aeb7e474a3c06','administrator',NULL,NULL,12),(14,'scrypt:32768:8:1$GFga6glpepvJ6kGb$d3ac15274ab9ef453a2dcda80df25827ecd991179b82a631dba2924adf5b6f3ac9e721532fe9af5ec3fed3c5cd033edfa96fc90fb0730e684d780a0c0d995a83','patient',2,NULL,NULL),(15,'scrypt:32768:8:1$QmS5m8S0Bk7lqs9B$8ae11fa9c925ff438d70632aa8430f633756dc606075fc1bc8bf9b1715a8c3c1e6f4d0e8b42e4eae4df35317589b59c0441c44267d86e188ce6e6e63c68d2d33','patient',3,NULL,NULL),(16,'scrypt:32768:8:1$FebZYSm8Lz4F2kE3$fe0865680290533527a85c260da61440bc38d796f73aceb90fe6de613647cd48b92dd8680fb208c57a08fbdf055cf37f2218bc03847b3a4af9feb5c32d0315f1','patient',NULL,NULL,NULL),(17,'scrypt:32768:8:1$CD1CV5TykMLNzrCI$8df08e559ed2537424b60f89c4a6d85ddeeeccbe75dca7b8e6f4fa68d637464574a9070ff7371de60cbebb1791c7a7b77f146135c4df821781c00ddd00050071','patient',NULL,NULL,NULL),(18,'scrypt:32768:8:1$nVkiUO3BC1sY67Yh$4657cf3e500286f73bbe29c2e70ce6ddb031c3d56af2b2fa6b7dc3db327d560c8b775043a50e2a83acd7a45e00bd1dd1c4f454d344990d5fd8621c4fde39cce6','patient',6,NULL,NULL),(19,'scrypt:32768:8:1$nA2VSqZiMaaAnvuE$346a84ede86f85a9ae4a0712218fbfe9a47159cbac2e18aa169e5912307a3348ce2ee1dcf1a65e8682e12c7343655d267ead80ae19fd66ae333583669a58b682','patient',7,NULL,NULL),(20,'scrypt:32768:8:1$pf6HIld9ZVwqRjhY$bcca9ec8339116bace41eee06423c3deded97a85884a557a64e825b36a889ab655af62acadd20f78b056e8fc7a040d830d9c1f46a416f8388ac3492d72ce281a','patient',8,NULL,NULL),(21,'scrypt:32768:8:1$9AZABrSAivNoJmln$c979c5c6e1d32be855a586370a3158f272b80c6a50ac823fa6921243d9aa3a33db90fb50b47caf8d8e53b9c816f732268b49529357f1e0a77af3ee17a70ce1ad','patient',9,NULL,NULL),(22,'scrypt:32768:8:1$KPsgomZRgBS4n4Go$643d6b06cdbd6454f9abc6501859be0fc529f77735b4ca29296857145b83a04e2ff5cd98a65bb72e9ee93c4bb9f35f8b01f170a608d5edc11534a4491af3af13','patient',10,NULL,NULL),(323,'scrypt:32768:8:1$FcrazFkxmWFLVh4T$f3b3221e51ffd07086da53818e7c70f3e68dea79fa301bce55cfe530815dcca27842c703fd86eb39fb946f41c11cb00dfad9c13c552168bc8960a76796b535a1','patient',11,NULL,NULL),(324,'scrypt:32768:8:1$BcN76SyIabQ78SYZ$1d6b99f459144167b38dc99b33d5626ada37c811a5fb1a502eb37815da30273ede8dd3bd6a845a32e39121aad3b0a572e84c8564318dbdc1593d43df2f9638f5','patient',12,NULL,NULL),(325,'scrypt:32768:8:1$3SNxlJqY49N60GWi$4da891621feeac62c9b0be6344d60434df2f44a0a65aabd358e216b9d2648a24f33a2a3eb9f2cda16f8b15a9165912ec778630fd8f1d77d8babcedc251908010','doctor',NULL,916,NULL),(326,'scrypt:32768:8:1$ZBVfzIc6npFL9ltA$3e7c55175fd753aa74a61642d60644617353bf9d90abacd7ab3930ec4834a0a12725f032f3b4ba5c9ec13273bb53644d1671a6050ea8685069158cc582fa265a','doctor',NULL,917,NULL),(327,'scrypt:32768:8:1$bFvT3di2IkPNWxwM$204d5ddae7ae06a31a37204f8c28acca0e9fe10bd077982bd2a155ce03c97d949355269430ce24ed81c2598c2cd5fa7d038d78e7c1847017a40ce459191acfe5','doctor',NULL,918,NULL),(328,'scrypt:32768:8:1$bMQ6MipborotrlLO$2cbf8927231490b96663ee414cf745e0276dbe6b1befa487f87d81a19bcb45564926142b832b75987f0744e62ff90fefe9f74df488e85c718c012407a8472699','doctor',NULL,919,NULL),(329,'scrypt:32768:8:1$uFfDU9PTX5Znhrci$c398594b3ae13716014f60f3492b7914e8e95947dbb180d8987df66bbfb4522a1d6e7988b26aa651bbbc8976c32063194d7ec310a413d20f746dc06633dd6a95','doctor',NULL,920,NULL),(330,'scrypt:32768:8:1$4k872elZEvkyn593$c12944de0f3be9958b0f84ab21233a32a7f6fad89beed9193ba1a32e2d4edf78ae9afc2ab595f760f6a25c5b2058c0734c23239be065d988e6954c7c2229895a','doctor',NULL,921,NULL),(331,'scrypt:32768:8:1$yy0PCavss5hy7jWC$ee911b5902dde13507afdc78276f8c9080a2e89da3ba3743993e93c3158965fd8515c791c9eb4b56e8074825c83735439fa349be83ed4954e1262b2b5c799c4d','doctor',NULL,922,NULL),(332,'scrypt:32768:8:1$viIg4ox7DhV4b3uj$bded34b08b9129e41a4df77462746a0032413ff89ca991a043bef3215db5bc11c316f265acab8de88635e5fae36012a96daea934a97dee8e9774b0917f296299','doctor',NULL,923,NULL),(333,'scrypt:32768:8:1$CGdxf0zdcoYgADNt$0b623ee4e24a9af2d9c71350e5ea40d9f9ef3c6aab86f435548175f9c07f99ba01ef8bc2bac8693526a141ceeb4f0aae83d169bc1396e3be1d72c9b722acb5ab','doctor',NULL,924,NULL),(334,'scrypt:32768:8:1$vahh25IwrnVrLg0T$452321055ab431f385d116f698fb65a2a1b12ff364b548f86bfe2c50fe04cd1f72749b6c8a15e4f392e9f66ea85e1aed8048bdfcc475528ef8639f2a03f13696','doctor',NULL,925,NULL),(335,'scrypt:32768:8:1$xKAig55WCMhW5ECs$eccce1a756b28fa6ec50b3130068ab0a96b339d033e10d0b0b5067cfee026c6a2bc136e46de5a2bb39b14e881daecf9f617c6ec26a5a8180a994818e4b9b19ea','patient',13,NULL,NULL),(336,'scrypt:32768:8:1$a1BqeGTjKXoTGOpI$472693120e513ba69fa37140b21c91c3b5b3962d08eee5be5d66eafdac499a004f441d5c393d46a90be29e42b4fff2fb47ddfc8ee8c31c2c5fb1041d54ac0da1','patient',14,NULL,NULL),(337,'scrypt:32768:8:1$ZJL1QdTP1e6QEVAn$31e736f64c38156b2824e5cb05157a391a1a25ece047804400187a9725d6ea26f0a6c73b24ab86957fd76b8db3d9a774af022644806f9d3301a1f767e730b37e','doctor',NULL,926,NULL),(338,'scrypt:32768:8:1$MMfesa81obmBbEqv$4d817a35c7fcd8f0c8350672df3cc83c804032090177f2fd4d9ce2f11131aceccfbbb3ae267dedf2300b2fc649a14fd17bfb4bcb82a1b89b3af416fc6b79a525','patient',15,NULL,NULL),(339,'scrypt:32768:8:1$uky7deuV3wxDhcVk$a3082427ed9effe90532f33dbc72edfdfe2c684bbf601727c1da905adfd63b230aa91fb82b118b9279b379aa0c3f7bf55c0be45d76106fc963414abb57207512','patient',16,NULL,NULL),(340,'scrypt:32768:8:1$GvXI6JTWPiSPjpeE$069324643d745929f8f114a1f9d990f4e2f269a462964abcb0f79025a85262d2c2e936b0590cbdade09c81e3e7b82062f07ada5c1dfd9b0b8f4f445167cfaff5','patient',17,NULL,NULL),(341,'scrypt:32768:8:1$QpAdLdj4OWZcPyFH$31673bb96f8a71843eeb5b2e4a1828a6b2efce59bbe8356a277e538eeccb900db37cb8da936da8af04e4d38f9ee91361ad05b7b7ed69acf74e29f4628d9cbe2b','doctor',NULL,927,NULL),(342,'scrypt:32768:8:1$SzdRMuOLSoaDfnYN$90538f8dda74a6985ed38588918236d7d7594d6fa1ced2e01a4bcd47f61c19c0ed132f3fe85aa623f3bf0da8d5ab5d566ae027e7f1e4d53022f5db029fe91b78','administrator',NULL,NULL,14),(343,'scrypt:32768:8:1$R7M1SJDX14uzOAuM$61ee4f77ae4ad916ba79f0de5198ad3787c18df6d427999eb068f1a4b611b45f9978ba5408ba1a2ba8f6a80d918c2c9727d1384f2af2cfea4dff9e8a130f9028','doctor',NULL,928,NULL);
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

-- Dump completed on 2024-12-20 16:53:34
