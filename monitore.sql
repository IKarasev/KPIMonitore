-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: localhost    Database: monitore
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'ИТ'),(2,'ЛП'),(3,'КОМ');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi`
--

DROP TABLE IF EXISTS `kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  `group_id` int(6) DEFAULT NULL,
  `type_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id_idx` (`group_id`),
  KEY `type_id_idx` (`type_id`),
  CONSTRAINT `group_id` FOREIGN KEY (`group_id`) REFERENCES `kpi_groups` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `kpi_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi`
--

LOCK TABLES `kpi` WRITE;
/*!40000 ALTER TABLE `kpi` DISABLE KEYS */;
INSERT INTO `kpi` VALUES (1,'Выручка, млн. руб.',2,2),(2,'Погрузка, ваг',2,2),(3,'Оборот Вагона',2,2),(4,'Порожний Пробег',2,2),(5,'Выручка, млн. руб.',3,2),(6,'Погрузка, ваг',3,2),(7,'Оборот Вагона',3,2),(8,'Порожний Пробег',3,2),(9,'Выручка, млн. руб.',4,2),(10,'Погрузка, ваг',4,2),(11,'Оборот Вагона',4,2),(12,'Порожний Пробег',4,2),(13,'Выручка, млн. руб.',5,2),(14,'Погрузка, ваг',5,2),(15,'Оборот Вагона',5,2),(16,'Порожний Пробег',5,2),(17,'Выручка, млн. руб.',6,2),(18,'Погрузка, ваг',6,2),(19,'Оборот Вагона',6,2),(20,'Порожний Пробег',6,2),(21,'Выручка, млн. руб.',7,2),(22,'Погрузка, ваг',7,2),(23,'Оборот Вагона',7,2),(24,'Порожний Пробег',7,2),(25,'Выручка, млн. руб.',8,2),(26,'Погрузка, ваг',8,2),(27,'Оборот Вагона',8,2),(28,'Порожний Пробег',8,2),(141,'Выручка, млн. руб.',2,3),(142,'Погрузка, ваг',2,3),(143,'Оборот Вагона',2,3),(144,'Порожний Пробег',2,3),(145,'Выручка, млн. руб.',3,3),(146,'Погрузка, ваг',3,3),(147,'Оборот Вагона',3,3),(148,'Порожний Пробег',3,3),(149,'Выручка, млн. руб.',4,3),(150,'Погрузка, ваг',4,3),(151,'Оборот Вагона',4,3),(152,'Порожний Пробег',4,3),(153,'Выручка, млн. руб.',5,3),(154,'Погрузка, ваг',5,3),(155,'Оборот Вагона',5,3),(156,'Порожний Пробег',5,3),(157,'Выручка, млн. руб.',6,3),(158,'Погрузка, ваг',6,3),(159,'Оборот Вагона',6,3),(160,'Порожний Пробег',6,3),(161,'Выручка, млн. руб.',7,3),(162,'Погрузка, ваг',7,3),(163,'Оборот Вагона',7,3),(164,'Порожний Пробег',7,3),(165,'Выручка, млн. руб.',8,3),(166,'Погрузка, ваг',8,3),(167,'Оборот Вагона',8,3),(168,'Порожний Пробег',8,3);
/*!40000 ALTER TABLE `kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_groups`
--

DROP TABLE IF EXISTS `kpi_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_groups` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_groups`
--

LOCK TABLES `kpi_groups` WRITE;
/*!40000 ALTER TABLE `kpi_groups` DISABLE KEYS */;
INSERT INTO `kpi_groups` VALUES (1,'All'),(2,'General'),(3,'Цистерны'),(4,'Волувагоны'),(5,'Цементовозы'),(6,'Крытые'),(7,'Платформы'),(8,'Минераловозы');
/*!40000 ALTER TABLE `kpi_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_targets`
--

DROP TABLE IF EXISTS `kpi_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_targets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `target_val` double(6,2) DEFAULT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `kpi_id` int(6) NOT NULL,
  `target_type` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `kpi_id` (`kpi_id`),
  KEY `target_type_id_idx` (`target_type`),
  CONSTRAINT `kpi_targets_ibfk_1` FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `target_type_id` FOREIGN KEY (`target_type`) REFERENCES `target_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_targets`
--

LOCK TABLES `kpi_targets` WRITE;
/*!40000 ALTER TABLE `kpi_targets` DISABLE KEYS */;
INSERT INTO `kpi_targets` VALUES (1,5.00,'2020-08-20','2030-12-20',1,2),(2,5.00,'2020-08-20','2030-12-20',2,2),(3,5.00,'2020-08-20','2030-12-20',3,2),(4,55.00,'2020-08-20','2030-12-20',4,2),(5,5.00,'2020-08-20','2030-12-20',5,2),(6,55.00,'2020-08-20','2030-12-20',6,2),(7,5.00,'2020-08-20','2030-12-20',7,2),(8,5.00,'2020-08-20','2030-12-20',8,2),(9,5.00,'2020-08-20','2030-12-20',9,2),(10,5.00,'2020-08-20','2030-12-20',10,2),(11,5.00,'2020-08-20','2030-12-20',11,2),(12,5.00,'2020-08-20','2030-12-20',12,2),(13,5.00,'2020-08-20','2030-12-20',13,2),(14,5.00,'2020-08-20','2030-12-20',14,2),(15,5.00,'2020-08-20','2030-12-20',15,2),(16,5.00,'2020-08-20','2030-12-20',16,2),(17,5.00,'2020-08-20','2030-12-20',17,2),(18,5.00,'2020-08-20','2030-12-20',18,2),(19,5.00,'2020-08-20','2030-12-20',19,2),(20,5.00,'2020-08-20','2030-12-20',20,2),(21,5.00,'2020-08-20','2030-12-20',21,2);
/*!40000 ALTER TABLE `kpi_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_type`
--

DROP TABLE IF EXISTS `kpi_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_type` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_type`
--

LOCK TABLES `kpi_type` WRITE;
/*!40000 ALTER TABLE `kpi_type` DISABLE KEYS */;
INSERT INTO `kpi_type` VALUES (1,'нет'),(2,'нарастающе'),(3,'ежесуточное');
/*!40000 ALTER TABLE `kpi_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_values`
--

DROP TABLE IF EXISTS `kpi_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kpi_id` int(6) NOT NULL,
  `value` double(6,2) DEFAULT NULL,
  `set_date` date NOT NULL,
  `source_user` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `kpi_id` (`kpi_id`),
  KEY `source_user` (`source_user`),
  CONSTRAINT `kpi_values_ibfk_1` FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`),
  CONSTRAINT `kpi_values_ibfk_2` FOREIGN KEY (`source_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_values`
--

LOCK TABLES `kpi_values` WRITE;
/*!40000 ALTER TABLE `kpi_values` DISABLE KEYS */;
INSERT INTO `kpi_values` VALUES (1,1,10.00,'2023-08-20',1),(2,2,9.00,'2023-08-20',1),(3,3,99.00,'2023-08-20',1),(4,4,9.00,'2023-08-20',1),(5,5,9.00,'2023-08-20',1),(6,6,9.00,'2023-08-20',1),(7,7,9.00,'2023-08-20',1),(8,8,9.00,'2023-08-20',1),(9,9,9.00,'2023-08-20',1),(10,10,9.00,'2023-08-20',1),(11,11,9.00,'2023-08-20',1),(12,12,9.00,'2023-08-20',1),(13,13,9.00,'2023-08-20',1),(14,14,9.00,'2023-08-20',1),(15,15,9.00,'2023-08-20',1),(16,16,9.00,'2023-08-20',1),(17,17,9.00,'2023-08-20',1),(18,18,9.00,'2023-08-20',1),(19,19,9.00,'2023-08-20',1),(20,20,9.00,'2023-08-20',1),(21,21,9.00,'2023-08-20',1);
/*!40000 ALTER TABLE `kpi_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_group`
--

DROP TABLE IF EXISTS `mail_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kpi_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `kpi_id` (`kpi_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `mail_group_ibfk_1` FOREIGN KEY (`kpi_id`) REFERENCES `kpi` (`id`),
  CONSTRAINT `mail_group_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_group`
--

LOCK TABLES `mail_group` WRITE;
/*!40000 ALTER TABLE `mail_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_type`
--

DROP TABLE IF EXISTS `target_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_type` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_type`
--

LOCK TABLES `target_type` WRITE;
/*!40000 ALTER TABLE `target_type` DISABLE KEYS */;
INSERT INTO `target_type` VALUES (1,'нет'),(2,'Бюджет'),(3,'План');
/*!40000 ALTER TABLE `target_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `fullname` char(40) DEFAULT NULL,
  `department_id` int(6) NOT NULL,
  `position` char(30) DEFAULT NULL,
  `email` char(30) NOT NULL,
  `passwd` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Карасев Илья Алексеевич',1,'Ведущий Технолог','karasevia@pgkweb.ru','Asd123'),(2,'Стексов Сергей Николаевич',1,'Главный Специалист','steksovsn@pgkweb.ru','Zxc123'),(3,'Гришина Ирина Вячеславовна',2,'Начальник отдела','GrishinaIV@pgkweb.ru','Qwe123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-23 16:50:38
