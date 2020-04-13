CREATE DATABASE  IF NOT EXISTS `vk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vk`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `comunities`
--

DROP TABLE IF EXISTS `comunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunities`
--

LOCK TABLES `comunities` WRITE;
/*!40000 ALTER TABLE `comunities` DISABLE KEYS */;
INSERT INTO `comunities` VALUES (1,'tenetur','Ipsum qui quod harum aut commodi. In soluta quibusdam iure at placeat. Aut consequatur repellendus et quod.',0),(2,'omnis','Iste necessitatibus est illum labore magni dolores. Fugit et et libero. Soluta eveniet debitis at est voluptates.',1),(3,'maxime','Quibusdam natus animi natus. Eius vero deserunt quis odio natus praesentium sit. Consequatur rerum porro deserunt animi ut quia in.',0),(4,'qui','Harum sit error temporibus ipsam ut. Enim sed est rem sit accusantium.',1),(5,'quia','Vero harum repellat perferendis suscipit. Id ut tempore illum qui voluptas assumenda veritatis. Iusto libero qui dignissimos atque non ea sunt. Ea aut commodi aut nihil provident laboriosam quam.',0),(6,'veniam','Laudantium ipsam quidem dicta. Nisi praesentium molestiae est dignissimos illum soluta qui. Magni sed magni velit fuga tempora.',1),(7,'inventore','Consequatur quos quaerat vel corporis ipsa facilis hic. Nihil sint alias rerum hic. Voluptatem ipsa qui tempore hic.',0),(8,'dolorum','Illum voluptates tenetur totam magni atque. Est magni et minus et. Molestias perspiciatis labore eaque. Quidem deleniti aut iure blanditiis culpa optio.',1),(9,'qui','Cum sit animi suscipit enim minus. Et et voluptas quia distinctio explicabo alias. Dolores corporis maxime autem molestias. Rem esse error itaque aperiam velit tempora.',0),(10,'id','Adipisci non quibusdam sit id accusantium debitis. Molestiae delectus eos voluptates velit voluptatem est reiciendis. Corrupti eum perspiciatis totam dolor porro quis.',0);
/*!40000 ALTER TABLE `comunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunities_users`
--

DROP TABLE IF EXISTS `comunities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunities_users` (
  `comunity_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`comunity_id`,`user_id`),
  KEY `comunities_users_user_id_fk` (`user_id`),
  CONSTRAINT `comunities_users_comunity_id_fk` FOREIGN KEY (`comunity_id`) REFERENCES `comunities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comunities_users_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunities_users`
--

LOCK TABLES `comunities_users` WRITE;
/*!40000 ALTER TABLE `comunities_users` DISABLE KEYS */;
INSERT INTO `comunities_users` VALUES (3,1),(5,2),(1,3),(2,4),(3,5),(3,6),(5,7),(6,8),(10,9),(4,10),(9,11),(10,12),(4,13),(4,14),(6,15),(7,16),(9,17),(9,18),(7,19),(6,20),(4,21),(1,22),(3,23),(10,24),(1,25),(10,26),(1,27),(10,28),(6,29),(4,30),(4,31),(6,32),(1,33),(5,34),(10,35),(10,36),(4,37),(4,38),(9,39),(5,40),(10,41),(8,42),(10,43),(4,44),(5,45),(9,46),(3,47),(3,48),(1,49),(6,50),(4,51),(2,52),(3,53),(3,54),(10,55),(8,56),(4,57),(5,58),(4,59),(5,60),(6,61),(9,62),(2,63),(7,64),(10,65),(7,66),(8,67),(2,68),(5,69),(8,70),(10,71),(1,72),(2,73),(1,74),(2,75),(9,76),(6,77),(1,78),(4,79),(1,80),(9,81),(8,82),(10,83),(5,84),(5,85),(7,86),(10,87),(1,88),(2,89),(3,90),(4,91),(10,92),(8,93),(6,94),(1,95),(4,96),(10,97),(8,98),(8,99),(1,100);
/*!40000 ALTER TABLE `comunities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`),
  KEY `idx_friendship_status_id` (`status_id`),
  CONSTRAINT `friendship_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (4,50,2,'1989-05-22 12:57:11','1989-05-22 12:57:11'),(4,81,3,'1985-01-17 20:18:18','2017-02-21 13:57:28'),(5,78,2,'1973-01-29 12:31:23','1973-01-29 12:31:23'),(6,28,2,'1975-07-28 00:19:17','1975-07-28 00:19:17'),(9,30,2,'1983-02-28 12:21:54','1983-02-28 12:21:54'),(10,65,2,'1994-09-24 22:54:11','1994-09-24 22:54:11'),(11,9,1,'1978-09-04 21:47:27','1978-09-04 21:47:27'),(12,33,2,'1981-12-30 09:39:02','1981-12-30 09:39:02'),(12,46,2,'1978-12-23 19:47:51','2015-07-11 19:56:37'),(13,26,3,'1992-03-15 15:43:22','1993-06-11 12:14:04'),(13,77,2,'1971-11-05 19:04:05','1971-11-05 19:04:05'),(17,10,2,'1972-09-20 11:14:31','1972-09-20 11:14:31'),(19,35,2,'1998-06-08 05:28:11','1998-06-08 05:28:11'),(19,89,1,'1996-07-19 17:30:33','1997-03-30 09:24:38'),(21,13,2,'1983-12-25 22:36:35','1988-10-03 07:05:30'),(21,22,2,'1980-11-25 20:49:48','1985-07-23 23:10:06'),(21,24,2,'1990-04-24 21:58:38','1990-04-24 21:58:38'),(24,58,1,'1985-04-02 07:46:32','1985-04-02 07:46:32'),(25,27,2,'1999-02-06 11:40:34','1999-02-06 11:40:34'),(25,87,3,'1981-04-19 19:02:05','2010-07-31 14:55:50'),(28,38,2,'1986-09-30 15:22:30','1988-11-29 00:36:10'),(30,69,1,'1998-05-10 05:01:36','2003-06-07 14:48:09'),(31,47,3,'1984-04-24 16:43:19','1984-04-24 16:43:19'),(32,7,3,'1999-12-21 05:42:19','1999-12-21 05:42:19'),(32,82,1,'1986-01-25 02:09:16','1990-04-28 22:49:16'),(33,32,3,'1982-12-20 12:12:06','2010-04-13 22:32:00'),(33,53,3,'1996-08-03 13:51:00','1996-08-03 13:51:00'),(33,62,1,'2002-04-16 05:38:33','2006-03-18 12:41:56'),(34,77,2,'1985-05-08 01:57:20','1995-04-26 20:41:13'),(37,36,1,'1973-09-19 17:34:09','1977-02-13 11:09:50'),(37,39,1,'1996-06-02 13:44:14','1996-06-02 13:44:14'),(37,68,1,'1970-08-09 04:32:11','1970-08-09 04:32:11'),(37,94,2,'1970-12-13 02:59:13','1970-12-13 02:59:13'),(40,71,1,'1978-12-14 22:58:22','1978-12-14 22:58:22'),(41,2,2,'1994-03-09 02:52:05','1994-03-09 02:52:05'),(41,34,1,'1975-10-04 21:39:25','2009-11-03 22:40:20'),(41,72,2,'1973-10-12 12:04:05','1998-06-02 04:44:26'),(42,82,1,'2008-02-18 05:46:11','2017-09-03 21:00:19'),(44,79,1,'1992-04-20 06:32:51','2000-11-03 05:26:59'),(44,84,3,'2003-11-18 01:22:23','2011-11-22 12:00:25'),(46,56,1,'2000-04-08 13:23:09','2000-04-08 13:23:09'),(47,41,3,'1971-01-15 12:24:19','1986-01-20 20:50:14'),(47,77,3,'2009-08-16 20:42:14','2009-08-16 20:42:14'),(48,65,3,'2013-03-19 09:29:59','2013-03-19 09:29:59'),(48,71,3,'1979-03-02 20:00:58','1979-03-02 20:00:58'),(49,12,3,'1977-11-13 09:56:58','1982-07-13 17:32:54'),(50,42,1,'1978-10-21 04:39:09','1978-10-21 04:39:09'),(50,45,1,'2014-07-12 18:17:13','2017-04-07 23:03:32'),(53,28,1,'2011-05-13 23:43:01','2011-05-13 23:43:01'),(54,71,3,'1980-01-28 10:32:53','2005-08-14 11:16:31'),(55,3,1,'2016-08-16 19:16:08','2016-08-16 19:16:08'),(55,6,2,'1983-08-30 18:02:43','1983-08-30 18:02:43'),(55,71,1,'2012-02-26 07:03:59','2012-02-26 07:03:59'),(56,45,2,'1991-06-10 21:25:30','1991-06-10 21:25:30'),(58,9,3,'1974-01-15 19:45:03','1974-01-15 19:45:03'),(58,16,2,'1970-11-11 03:40:09','1986-04-08 20:36:12'),(58,56,3,'2000-06-07 17:18:21','2000-06-07 17:18:21'),(58,64,3,'1996-12-03 06:30:25','2012-11-10 17:54:56'),(58,83,2,'2000-03-05 13:50:28','2000-03-05 13:50:28'),(60,14,2,'1990-10-08 18:38:30','1990-10-08 18:38:30'),(60,63,3,'1983-03-03 13:50:46','1983-03-03 13:50:46'),(61,43,1,'1997-03-08 15:04:53','1997-03-08 15:04:53'),(62,15,1,'1985-07-22 06:33:17','2008-05-08 21:35:56'),(62,84,3,'2007-08-08 02:41:42','2007-08-08 02:41:42'),(65,100,2,'1970-12-27 04:14:26','1997-01-04 16:07:29'),(66,11,3,'1989-07-03 12:25:49','2008-03-15 17:23:44'),(66,68,3,'1995-07-12 12:39:35','1995-07-12 12:39:35'),(68,67,3,'1975-08-04 10:22:02','1975-08-04 10:22:02'),(70,39,1,'1997-09-03 13:13:20','1997-09-03 13:13:20'),(71,75,2,'1999-04-22 13:15:48','2019-12-23 23:15:08'),(73,31,2,'1985-04-06 23:43:53','1985-04-06 23:43:53'),(73,35,2,'1971-07-05 10:36:09','1971-07-05 10:36:09'),(76,44,3,'1982-09-24 12:07:20','2009-02-26 01:17:53'),(78,93,3,'2004-03-22 10:32:39','2004-06-07 02:10:59'),(79,13,1,'1990-04-07 21:32:45','2014-05-16 15:57:50'),(79,33,1,'1980-12-18 09:20:41','1980-12-18 09:20:41'),(80,7,2,'1976-08-05 09:10:03','2005-02-16 04:56:53'),(80,79,3,'1972-11-27 11:33:49','2011-12-24 21:56:52'),(82,65,2,'1981-12-23 03:47:02','1981-12-23 03:47:02'),(82,78,2,'1983-03-19 22:46:16','2002-09-09 03:50:44'),(82,94,3,'1974-06-08 13:10:26','1991-11-14 08:35:21'),(85,7,2,'1973-12-17 03:31:27','1973-12-17 03:31:27'),(86,23,3,'1984-05-14 08:20:52','1984-05-14 08:20:52'),(87,23,2,'1980-05-26 21:15:24','1996-11-22 13:43:14'),(87,88,2,'1989-10-10 07:18:23','1989-10-10 07:18:23'),(88,27,2,'1976-03-23 13:04:15','2011-06-19 07:51:31'),(88,70,1,'1990-10-17 04:29:14','1990-10-17 04:29:14'),(89,92,2,'1977-04-21 22:51:42','1993-11-13 07:09:20'),(91,24,1,'1998-01-14 20:29:27','1998-01-14 20:29:27'),(91,43,2,'1971-08-20 04:29:16','1971-08-20 04:29:16'),(92,66,2,'1980-12-19 00:22:26','1980-12-19 00:22:26'),(93,20,3,'1985-04-29 13:07:55','1990-09-21 08:23:56'),(93,21,3,'1981-04-19 21:56:55','1981-04-19 21:56:55'),(93,25,2,'2004-01-17 10:29:21','2011-06-16 03:06:53'),(93,44,1,'1998-12-04 17:48:19','1998-12-04 17:48:19'),(94,90,2,'2007-08-15 18:37:12','2016-07-01 19:08:50'),(95,87,1,'1972-05-10 05:25:07','1977-06-07 22:03:45'),(95,96,2,'1996-02-26 13:24:44','1996-10-14 00:40:12'),(98,62,2,'2005-02-28 14:51:21','2018-06-06 10:50:25'),(100,26,3,'1980-03-19 04:18:41','1980-03-19 04:18:41');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (1,'Requested'),(2,'Confirmed'),(3,'Rejected');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `target_id` int unsigned NOT NULL,
  `target_type_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `likes_target_type_id_fk` (`target_type_id`),
  KEY `likes_target_id_fk` (`user_id`),
  KEY `idx_likes_id` (`id`),
  CONSTRAINT `likes_target_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `likes_target_type_id_fk` FOREIGN KEY (`target_type_id`) REFERENCES `target_types` (`id`),
  CONSTRAINT `likes_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,77,8,1,'2020-03-12 17:30:28'),(2,33,30,3,'2020-03-12 17:30:28'),(3,63,63,1,'2020-03-12 17:30:28'),(4,30,78,1,'2020-03-12 17:30:28'),(5,71,49,2,'2020-03-12 17:30:28'),(6,11,58,3,'2020-03-12 17:30:28'),(7,10,78,3,'2020-03-12 17:30:28'),(8,62,34,4,'2020-03-12 17:30:28'),(9,99,56,4,'2020-03-12 17:30:28'),(10,31,15,4,'2020-03-12 17:30:28'),(11,59,52,4,'2020-03-12 17:30:28'),(12,53,20,2,'2020-03-12 17:30:28'),(13,42,86,1,'2020-03-12 17:30:28'),(14,67,17,4,'2020-03-12 17:30:28'),(15,79,34,2,'2020-03-12 17:30:28'),(16,65,25,2,'2020-03-12 17:30:28'),(17,69,56,3,'2020-03-12 17:30:28'),(18,100,77,4,'2020-03-12 17:30:28'),(19,93,11,4,'2020-03-12 17:30:28'),(20,47,5,4,'2020-03-12 17:30:28'),(21,5,74,3,'2020-03-12 17:30:28'),(22,43,56,2,'2020-03-12 17:30:28'),(23,80,51,1,'2020-03-12 17:30:28'),(24,24,72,4,'2020-03-12 17:30:28'),(25,30,80,1,'2020-03-12 17:30:28'),(26,8,11,2,'2020-03-12 17:30:28'),(27,19,1,2,'2020-03-12 17:30:28'),(28,37,40,4,'2020-03-12 17:30:28'),(29,33,91,3,'2020-03-12 17:30:28'),(30,12,86,4,'2020-03-12 17:30:28'),(31,10,69,1,'2020-03-12 17:30:28'),(32,58,52,4,'2020-03-12 17:30:28'),(33,59,44,2,'2020-03-12 17:30:28'),(34,84,91,1,'2020-03-12 17:30:28'),(35,31,54,4,'2020-03-12 17:30:28'),(36,16,52,1,'2020-03-12 17:30:28'),(37,99,63,1,'2020-03-12 17:30:28'),(38,100,47,2,'2020-03-12 17:30:28'),(39,25,27,3,'2020-03-12 17:30:28'),(40,1,37,4,'2020-03-12 17:30:28'),(41,93,22,2,'2020-03-12 17:30:28'),(42,76,93,2,'2020-03-12 17:30:28'),(43,9,32,2,'2020-03-12 17:30:28'),(44,57,94,4,'2020-03-12 17:30:28'),(45,8,44,4,'2020-03-12 17:30:28'),(46,55,81,2,'2020-03-12 17:30:28'),(47,47,20,3,'2020-03-12 17:30:28'),(48,30,76,4,'2020-03-12 17:30:28'),(49,14,6,4,'2020-03-12 17:30:28'),(50,6,75,3,'2020-03-12 17:30:28'),(51,61,30,3,'2020-03-12 17:30:28'),(52,59,83,2,'2020-03-12 17:30:28'),(53,43,99,3,'2020-03-12 17:30:28'),(54,21,13,1,'2020-03-12 17:30:28'),(55,65,23,1,'2020-03-12 17:30:28'),(56,17,34,1,'2020-03-12 17:30:28'),(57,91,100,1,'2020-03-12 17:30:28'),(58,17,16,2,'2020-03-12 17:30:28'),(59,83,38,2,'2020-03-12 17:30:28'),(60,73,54,2,'2020-03-12 17:30:28'),(61,77,43,4,'2020-03-12 17:30:28'),(62,89,94,1,'2020-03-12 17:30:28'),(63,24,15,1,'2020-03-12 17:30:28'),(64,65,17,4,'2020-03-12 17:30:28'),(65,7,60,4,'2020-03-12 17:30:28'),(66,3,86,1,'2020-03-12 17:30:28'),(67,40,42,4,'2020-03-12 17:30:28'),(68,16,15,1,'2020-03-12 17:30:28'),(69,75,1,4,'2020-03-12 17:30:28'),(70,100,57,4,'2020-03-12 17:30:28'),(71,62,48,3,'2020-03-12 17:30:28'),(72,31,90,3,'2020-03-12 17:30:28'),(73,1,44,1,'2020-03-12 17:30:28'),(74,48,90,1,'2020-03-12 17:30:28'),(75,53,51,4,'2020-03-12 17:30:28'),(76,19,13,1,'2020-03-12 17:30:28'),(77,98,66,2,'2020-03-12 17:30:28'),(78,84,8,4,'2020-03-12 17:30:28'),(79,19,26,4,'2020-03-12 17:30:28'),(80,99,66,2,'2020-03-12 17:30:28'),(81,64,21,1,'2020-03-12 17:30:28'),(82,7,90,2,'2020-03-12 17:30:28'),(83,81,14,2,'2020-03-12 17:30:28'),(84,89,67,3,'2020-03-12 17:30:28'),(85,21,14,1,'2020-03-12 17:30:28'),(86,83,98,2,'2020-03-12 17:30:28'),(87,12,34,2,'2020-03-12 17:30:28'),(88,68,36,3,'2020-03-12 17:30:28'),(89,66,4,1,'2020-03-12 17:30:28'),(90,95,11,3,'2020-03-12 17:30:28'),(91,8,36,3,'2020-03-12 17:30:28'),(92,72,93,2,'2020-03-12 17:30:28'),(93,48,5,4,'2020-03-12 17:30:28'),(94,80,61,3,'2020-03-12 17:30:28'),(95,45,26,4,'2020-03-12 17:30:28'),(96,6,39,4,'2020-03-12 17:30:28'),(97,69,14,3,'2020-03-12 17:30:28'),(98,58,11,4,'2020-03-12 17:30:28'),(99,61,67,3,'2020-03-12 17:30:28'),(100,55,22,2,'2020-03-12 17:30:28');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `metadate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `media_media_type_id_fk` (`media_type_id`),
  KEY `media_user_id_fk` (`user_id`),
  CONSTRAINT `media_media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `media_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,70,'http://dropbox.net/vk/file_eius',9587,NULL,'1990-08-05 21:05:42','2020-03-11 17:55:21'),(2,3,62,'http://dropbox.net/vk/file_voluptates',3890761,NULL,'1993-01-01 23:23:40','2020-03-11 17:55:21'),(3,1,100,'http://dropbox.net/vk/file_ex',8723485,NULL,'2006-02-28 14:49:25','2020-03-11 17:55:21'),(4,3,11,'http://dropbox.net/vk/file_vel',440596,NULL,'1976-03-19 06:39:07','2020-03-11 17:55:21'),(5,1,56,'http://dropbox.net/vk/file_natus',234556,NULL,'1983-03-13 06:51:17','2020-03-11 17:55:21'),(6,3,45,'http://dropbox.net/vk/file_eum',48,NULL,'2010-04-10 08:39:08','2020-03-11 17:55:21'),(7,3,56,'http://dropbox.net/vk/file_est',17310681,NULL,'2007-05-16 09:41:26','2020-03-11 17:55:21'),(8,2,46,'http://dropbox.net/vk/file_quidem',13452560,NULL,'2008-03-20 05:57:37','2020-03-11 17:55:21'),(9,3,61,'http://dropbox.net/vk/file_quia',346,NULL,'1971-04-13 07:35:17','2020-03-11 17:55:21'),(10,2,67,'http://dropbox.net/vk/file_sunt',234556,NULL,'2011-08-12 01:48:03','2020-03-11 17:55:21'),(11,1,51,'http://dropbox.net/vk/file_itaque',45,NULL,'2009-04-07 08:31:00','2020-03-11 17:55:21'),(12,3,55,'http://dropbox.net/vk/file_non',234556,NULL,'2011-08-03 02:23:01','2020-03-11 17:55:21'),(13,3,22,'http://dropbox.net/vk/file_natus',234556,NULL,'1999-06-27 06:21:38','2020-03-11 17:55:21'),(14,2,44,'http://dropbox.net/vk/file_blanditiis',933843,NULL,'2014-06-30 03:27:35','2020-03-11 17:55:21'),(15,3,53,'http://dropbox.net/vk/file_doloribus',234556,NULL,'1973-09-24 08:48:08','2020-03-11 17:55:21'),(16,2,33,'http://dropbox.net/vk/file_deserunt',464277,NULL,'2017-03-31 09:03:25','2020-03-11 17:55:21'),(17,1,6,'http://dropbox.net/vk/file_dolore',2344150,NULL,'1975-02-27 03:03:24','2020-03-11 17:55:21'),(18,3,30,'http://dropbox.net/vk/file_cumque',33,NULL,'2018-12-27 02:10:42','2020-03-11 17:55:21'),(19,1,32,'http://dropbox.net/vk/file_autem',1973362,NULL,'2002-08-03 04:25:44','2020-03-11 17:55:21'),(20,3,68,'http://dropbox.net/vk/file_ea',59200,NULL,'1991-03-21 22:54:44','2020-03-11 17:55:21'),(21,3,43,'http://dropbox.net/vk/file_nobis',9395043,NULL,'1979-09-12 21:16:09','2020-03-11 17:55:21'),(22,3,10,'http://dropbox.net/vk/file_tempore',668422607,NULL,'1980-06-05 00:13:39','2020-03-11 17:55:21'),(23,3,21,'http://dropbox.net/vk/file_doloribus',3,NULL,'2020-01-06 22:34:39','2020-03-11 17:55:21'),(24,2,75,'http://dropbox.net/vk/file_adipisci',234556,NULL,'1981-05-27 16:09:52','2020-03-11 17:55:21'),(25,2,13,'http://dropbox.net/vk/file_eaque',670,NULL,'2013-03-11 09:08:17','2020-03-11 17:55:21'),(26,1,37,'http://dropbox.net/vk/file_sequi',234556,NULL,'1971-06-14 00:31:48','2020-03-11 17:55:21'),(27,2,48,'http://dropbox.net/vk/file_sunt',92182,NULL,'2002-09-02 02:14:16','2020-03-11 17:55:21'),(28,3,27,'http://dropbox.net/vk/file_est',9,NULL,'1975-09-21 04:26:20','2020-03-11 17:55:21'),(29,1,89,'http://dropbox.net/vk/file_voluptatem',646104586,NULL,'1981-05-18 10:21:14','2020-03-11 17:55:21'),(30,2,66,'http://dropbox.net/vk/file_sunt',9049,NULL,'2016-11-22 00:52:31','2020-03-11 17:55:21'),(31,2,60,'http://dropbox.net/vk/file_et',90,NULL,'1975-05-08 11:20:38','2020-03-11 17:55:21'),(32,1,1,'http://dropbox.net/vk/file_explicabo',6,NULL,'1988-02-28 21:53:21','2020-03-11 17:55:21'),(33,1,26,'http://dropbox.net/vk/file_officiis',785,NULL,'2005-12-03 16:29:48','2020-03-11 17:55:21'),(34,1,25,'http://dropbox.net/vk/file_voluptate',112100,NULL,'2000-06-11 07:27:57','2020-03-11 17:55:21'),(35,2,46,'http://dropbox.net/vk/file_consequatur',521121,NULL,'2015-01-15 09:30:30','2020-03-11 17:55:21'),(36,2,56,'http://dropbox.net/vk/file_ex',11,NULL,'1978-11-21 20:22:34','2020-03-11 17:55:21'),(37,2,40,'http://dropbox.net/vk/file_iste',1160974,NULL,'2007-11-02 07:14:46','2020-03-11 17:55:21'),(38,2,31,'http://dropbox.net/vk/file_voluptatem',1468212,NULL,'1984-03-11 10:07:55','2020-03-11 17:55:21'),(39,3,34,'http://dropbox.net/vk/file_pariatur',571725,NULL,'1989-12-30 20:06:17','2020-03-11 17:55:21'),(40,2,76,'http://dropbox.net/vk/file_perferendis',83,NULL,'1981-02-04 04:24:23','2020-03-11 17:55:21'),(41,1,77,'http://dropbox.net/vk/file_sed',4120999,NULL,'1972-09-04 19:39:18','2020-03-11 17:55:21'),(42,1,57,'http://dropbox.net/vk/file_occaecati',3788,NULL,'2015-05-27 10:11:10','2020-03-11 17:55:21'),(43,2,52,'http://dropbox.net/vk/file_voluptas',91265670,NULL,'2004-02-03 22:48:54','2020-03-11 17:55:21'),(44,2,91,'http://dropbox.net/vk/file_nemo',494,NULL,'1974-11-19 04:15:56','2020-03-11 17:55:21'),(45,2,98,'http://dropbox.net/vk/file_ea',94,NULL,'2002-11-06 13:56:54','2020-03-11 17:55:21'),(46,3,15,'http://dropbox.net/vk/file_pariatur',64,NULL,'2019-02-13 03:36:56','2020-03-11 17:55:21'),(47,2,82,'http://dropbox.net/vk/file_impedit',175821744,NULL,'1998-07-15 08:15:44','2020-03-11 17:55:21'),(48,3,62,'http://dropbox.net/vk/file_labore',234556,NULL,'1983-03-17 04:20:15','2020-03-11 17:55:21'),(49,2,67,'http://dropbox.net/vk/file_dolores',475595210,NULL,'1996-06-14 21:58:32','2020-03-11 17:55:21'),(50,3,46,'http://dropbox.net/vk/file_voluptatem',234556,NULL,'2014-08-06 06:37:01','2020-03-11 17:55:21'),(51,1,31,'http://dropbox.net/vk/file_libero',2503,NULL,'1980-03-19 13:17:24','2020-03-11 17:55:21'),(52,3,15,'http://dropbox.net/vk/file_qui',824711048,NULL,'1981-05-01 13:59:13','2020-03-11 17:55:21'),(53,3,80,'http://dropbox.net/vk/file_perspiciatis',85869,NULL,'1991-11-29 07:06:26','2020-03-11 17:55:21'),(54,2,54,'http://dropbox.net/vk/file_error',48407784,NULL,'1976-12-02 15:20:19','2020-03-11 17:55:21'),(55,3,32,'http://dropbox.net/vk/file_repellendus',96656,NULL,'1979-09-21 20:27:00','2020-03-11 17:55:21'),(56,3,95,'http://dropbox.net/vk/file_consequatur',8845,NULL,'2016-10-27 01:34:23','2020-03-11 17:55:21'),(57,3,78,'http://dropbox.net/vk/file_sapiente',986764073,NULL,'2000-03-16 22:33:29','2020-03-11 17:55:21'),(58,1,4,'http://dropbox.net/vk/file_laudantium',90,NULL,'1985-11-11 06:50:27','2020-03-11 17:55:21'),(59,3,86,'http://dropbox.net/vk/file_magni',839,NULL,'1974-07-22 14:55:23','2020-03-11 17:55:21'),(60,3,16,'http://dropbox.net/vk/file_et',87,NULL,'1972-10-23 14:53:02','2020-03-11 17:55:21'),(61,3,23,'http://dropbox.net/vk/file_omnis',234556,NULL,'1970-10-13 15:26:09','2020-03-11 17:55:21'),(62,2,65,'http://dropbox.net/vk/file_sunt',469921896,NULL,'1977-04-11 21:08:11','2020-03-11 17:55:21'),(63,1,57,'http://dropbox.net/vk/file_exercitationem',244139,NULL,'2008-08-17 07:39:19','2020-03-11 17:55:21'),(64,3,88,'http://dropbox.net/vk/file_ea',234556,NULL,'1986-01-16 02:48:11','2020-03-11 17:55:21'),(65,2,68,'http://dropbox.net/vk/file_nam',234556,NULL,'1990-12-27 05:28:37','2020-03-11 17:55:21'),(66,3,76,'http://dropbox.net/vk/file_voluptates',24,NULL,'2008-09-08 01:25:58','2020-03-11 17:55:21'),(67,2,76,'http://dropbox.net/vk/file_quis',495031029,NULL,'1991-08-29 19:09:03','2020-03-11 17:55:21'),(68,1,50,'http://dropbox.net/vk/file_cumque',8293,NULL,'1994-06-09 02:47:22','2020-03-11 17:55:21'),(69,1,20,'http://dropbox.net/vk/file_voluptas',109,NULL,'1988-12-31 06:30:12','2020-03-11 17:55:21'),(70,2,53,'http://dropbox.net/vk/file_numquam',4,NULL,'1978-12-23 11:00:04','2020-03-11 17:55:21'),(71,3,2,'http://dropbox.net/vk/file_doloremque',630,NULL,'2008-12-23 02:19:18','2020-03-11 17:55:21'),(72,1,53,'http://dropbox.net/vk/file_voluptas',16021135,NULL,'2018-12-05 16:17:56','2020-03-11 17:55:21'),(73,2,59,'http://dropbox.net/vk/file_eos',9550,NULL,'1999-12-20 02:01:33','2020-03-11 17:55:21'),(74,3,34,'http://dropbox.net/vk/file_ipsum',59104,NULL,'1975-07-21 14:46:47','2020-03-11 17:55:21'),(75,2,94,'http://dropbox.net/vk/file_quam',68355,NULL,'1998-08-05 20:40:58','2020-03-11 17:55:21'),(76,2,67,'http://dropbox.net/vk/file_ducimus',6,NULL,'2003-05-27 21:58:28','2020-03-11 17:55:21'),(77,3,52,'http://dropbox.net/vk/file_ipsum',8161,NULL,'1978-05-30 19:02:52','2020-03-11 17:55:21'),(78,3,58,'http://dropbox.net/vk/file_aut',3023855,NULL,'1985-02-03 00:46:28','2020-03-11 17:55:21'),(79,3,33,'http://dropbox.net/vk/file_quidem',81,NULL,'1975-03-18 20:54:49','2020-03-11 17:55:21'),(80,3,92,'http://dropbox.net/vk/file_voluptas',89214360,NULL,'1989-04-07 17:12:18','2020-03-11 17:55:21'),(81,2,61,'http://dropbox.net/vk/file_ut',28,NULL,'1979-05-13 14:27:14','2020-03-11 17:55:21'),(82,1,26,'http://dropbox.net/vk/file_aut',24377,NULL,'2018-06-30 20:47:27','2020-03-11 17:55:21'),(83,3,48,'http://dropbox.net/vk/file_provident',97121234,NULL,'1986-06-20 19:46:44','2020-03-11 17:55:21'),(84,1,59,'http://dropbox.net/vk/file_veniam',6,NULL,'2009-08-21 02:59:36','2020-03-11 17:55:21'),(85,1,54,'http://dropbox.net/vk/file_esse',157,NULL,'2010-12-10 04:23:49','2020-03-11 17:55:21'),(86,1,89,'http://dropbox.net/vk/file_molestiae',391914771,NULL,'1984-04-02 11:17:40','2020-03-11 17:55:21'),(87,1,85,'http://dropbox.net/vk/file_qui',7383274,NULL,'2004-06-07 11:15:03','2020-03-11 17:55:21'),(88,3,59,'http://dropbox.net/vk/file_dignissimos',29177835,NULL,'1991-09-02 01:53:59','2020-03-11 17:55:21'),(89,3,37,'http://dropbox.net/vk/file_hic',43656946,NULL,'2007-04-29 10:36:01','2020-03-11 17:55:21'),(90,1,7,'http://dropbox.net/vk/file_explicabo',59509,NULL,'1970-03-06 23:08:28','2020-03-11 17:55:21'),(91,2,25,'http://dropbox.net/vk/file_laudantium',2850161,NULL,'1977-05-22 15:56:50','2020-03-11 17:55:21'),(92,1,1,'http://dropbox.net/vk/file_qui',133038323,NULL,'1978-07-17 20:19:13','2020-03-11 17:55:21'),(93,2,32,'http://dropbox.net/vk/file_blanditiis',94298,NULL,'2003-10-03 10:34:04','2020-03-11 17:55:21'),(94,1,56,'http://dropbox.net/vk/file_quia',3,NULL,'1972-05-26 03:12:44','2020-03-11 17:55:21'),(95,1,82,'http://dropbox.net/vk/file_non',977633,NULL,'2000-09-21 22:08:58','2020-03-11 17:55:21'),(96,2,44,'http://dropbox.net/vk/file_eligendi',65199526,NULL,'2009-04-22 18:08:17','2020-03-11 17:55:21'),(97,1,72,'http://dropbox.net/vk/file_aut',3,NULL,'1971-11-06 16:59:07','2020-03-11 17:55:21'),(98,2,29,'http://dropbox.net/vk/file_possimus',234556,NULL,'1972-06-10 22:26:03','2020-03-11 17:55:21'),(99,3,29,'http://dropbox.net/vk/file_tempora',4,NULL,'2008-06-15 09:38:53','2020-03-11 17:55:21'),(100,1,58,'http://dropbox.net/vk/file_veniam',1,NULL,'1983-01-31 13:40:44','2020-03-11 17:55:21');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (2,'audio'),(1,'photo'),(3,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `comunities_id` int unsigned NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `messages_comunities_id_fk` (`comunities_id`),
  KEY `messages_from_user_id_IDX` (`from_user_id`) USING BTREE,
  KEY `messages_to_user_id_IDX` (`to_user_id`) USING BTREE,
  CONSTRAINT `messages_comunities_id_fk` FOREIGN KEY (`comunities_id`) REFERENCES `comunities` (`id`),
  CONSTRAINT `messages_from_user_id_fk` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_to_user_id_fk` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,1,1,'Quibusdam nihil animi impedit amet aliquam ut. Quia nobis quisquam omnis. Aliquam doloribus maiores dicta culpa dolorem ad.',1,1,'1983-10-14 19:45:47'),(2,2,2,2,'Aut odit deleniti magni. Aut commodi enim et. Perferendis aspernatur dolor rerum esse. Voluptas dicta debitis ut at fugiat.',0,0,'1995-03-16 22:12:49'),(3,3,3,3,'Autem tempora voluptatem dolorem. Sed laborum officia suscipit voluptas voluptate exercitationem dolor. Cumque voluptatum cum corrupti iste quasi eius. Modi est esse quidem dolore amet.',1,0,'2003-12-16 00:39:33'),(4,4,4,4,'Consequatur amet quas odit et. Et eius iure aliquid et suscipit.',0,1,'1992-11-04 04:07:58'),(5,5,5,5,'Fugiat illo excepturi natus impedit aut eveniet necessitatibus tempore. Est quis natus repudiandae beatae libero a. Exercitationem dicta ipsam reprehenderit quis qui. Iusto omnis repellat tempora nobis commodi molestiae voluptate.',0,0,'1970-02-11 00:39:30'),(6,6,6,6,'Quisquam accusamus quis consequatur sunt architecto alias iusto fugit. Esse libero qui occaecati velit. Non facilis recusandae cupiditate perferendis quasi. Dolore omnis neque rerum labore voluptatum pariatur ratione.',1,0,'1990-11-22 13:48:42'),(7,7,7,7,'Error unde recusandae et illum veritatis. Necessitatibus consequuntur voluptatum odit dolor a. Quaerat aspernatur pariatur cum culpa iusto unde culpa. Perferendis aut delectus nulla dolor quis error.',1,0,'2013-04-30 03:52:55'),(8,8,8,8,'Consequuntur modi voluptatum perferendis praesentium ut eligendi non. Similique odio ea unde debitis voluptas. Rem blanditiis ut id occaecati.',0,1,'1979-07-20 14:08:18'),(9,9,9,9,'Quos velit sunt cumque sint saepe dolor. Sunt quia nesciunt occaecati aut suscipit voluptatum aut quo. Asperiores minus quibusdam aut. Ratione vero odit totam ut deleniti beatae itaque.',1,0,'2003-01-31 13:50:58'),(10,10,10,10,'Soluta quam aut dolor iusto. Doloribus molestias rem deleniti ut harum illum. Temporibus itaque facere quidem voluptatem. Omnis aut incidunt molestiae voluptate omnis pariatur quia libero.',0,0,'2001-11-08 06:19:30'),(11,11,11,1,'Tempora autem optio eveniet est maiores quos aut. Ut dolores temporibus itaque qui aliquam beatae. Occaecati sint aut quia pariatur odio.',0,0,'1998-01-26 08:32:47'),(12,12,12,2,'Quo a est ut ex consequatur est repudiandae. Velit vel minus similique dolor non. Libero maiores id voluptatem totam similique et harum. Voluptatem a asperiores ea et consequuntur eos non.',0,1,'1987-10-29 03:23:54'),(13,13,13,3,'Quisquam eos cupiditate aspernatur voluptatibus reprehenderit. Libero corrupti culpa deserunt saepe repellendus quia. Illo quidem dignissimos est. Eligendi at tenetur omnis tenetur amet.',0,0,'2000-08-08 00:33:49'),(14,14,14,4,'Velit rerum nemo commodi eveniet. Quo inventore quis doloribus animi sed molestiae. Voluptatem eveniet quo cumque ea est laudantium et accusamus. Qui ducimus ut unde a.',0,1,'1987-03-26 09:26:17'),(15,15,15,5,'Cum illum qui est quo. Ut sit et possimus perferendis nesciunt. Qui illum dignissimos hic porro consequatur exercitationem dignissimos.',1,0,'1987-12-24 14:53:48'),(16,16,16,6,'Tempore repellat molestiae ab sapiente. Omnis dolorem est vero. Eligendi voluptatum sit aspernatur eaque dolorem similique et nemo.',1,0,'1993-01-20 20:14:56'),(17,17,17,7,'Est illo qui doloremque quo eos ut. Qui non voluptatibus aut non. Non optio reprehenderit voluptatibus aut quia molestias. Quod aspernatur repellat minus.',1,1,'1973-06-09 15:04:02'),(18,18,18,8,'Quo rerum numquam iste id incidunt. Corrupti eum quae tempora sed dignissimos voluptatem quis. Maxime ipsum esse aut voluptatum molestiae eligendi. Ut maxime ipsum omnis asperiores et.',1,1,'1976-05-14 17:32:57'),(19,19,19,9,'Quis recusandae ratione atque esse velit itaque. Dolore omnis ratione odit autem dicta quam et. Accusantium ut quo sequi qui sit facilis.',0,1,'2012-10-24 00:15:59'),(20,20,20,10,'Laudantium ut quibusdam ex quibusdam velit. Aut enim non nostrum ratione voluptatibus ea quisquam. Numquam tempore et nostrum adipisci. Rerum omnis fuga quam nihil rerum. Culpa rerum id autem fugit.',0,1,'2008-09-10 13:17:25'),(21,21,21,1,'Qui et provident illum molestiae quia perferendis. Consequatur cupiditate est necessitatibus alias. Voluptates incidunt cum ipsam ea quasi. Et at consequatur officia sint dolor ut.',1,0,'1976-07-27 09:21:20'),(22,22,22,2,'Repellat sed sunt dolorem voluptates maxime possimus ut. Quia qui qui dolores rerum voluptatibus quam. Beatae non quia at quo sunt. Quis vel rerum cupiditate eum quidem.',1,1,'1991-01-11 20:35:51'),(23,23,23,3,'Delectus quibusdam fugit eius. Maxime vel tempore fuga veritatis. Accusamus aliquid eveniet molestias dolorem omnis.',0,0,'1970-12-11 05:27:59'),(24,24,24,4,'Esse perferendis at et dolorem. Sed eaque exercitationem odio dolore dolore dicta qui. Saepe ut ad nisi nobis fuga laudantium. Nisi rerum aut rerum.',0,1,'1995-06-11 23:56:24'),(25,25,25,5,'Veniam molestiae nemo odit vel. Quidem nulla et rerum eum repudiandae laborum. Ipsa voluptate est consequatur et cupiditate perferendis quasi est.',0,1,'2006-10-11 11:02:36'),(26,26,26,6,'Sunt occaecati doloribus sunt vel non maxime magnam quisquam. Earum atque voluptatem atque repellendus est.',1,0,'1971-10-09 19:44:46'),(27,27,27,7,'Ut consequatur eos ut ipsam provident blanditiis amet. Deleniti ad ea dolorem aut maiores sint. In repudiandae rerum saepe repudiandae voluptas aut illum. Voluptas ipsam voluptatum laboriosam consequuntur quo.',1,1,'1983-08-29 18:16:30'),(28,28,28,8,'Hic distinctio sint illo deleniti. Nulla in itaque quae saepe. Aut et est qui autem. Quia doloribus consequatur voluptatem dolores est amet.',1,1,'2012-12-07 20:06:24'),(29,29,29,9,'Rerum itaque qui adipisci animi. Aut et nam laborum error asperiores cumque.',0,1,'2016-01-15 02:03:53'),(30,30,30,10,'Sit totam hic quis harum. Pariatur ab ex numquam quibusdam.',0,0,'1994-04-28 18:22:49'),(31,31,31,1,'Enim sunt et velit minus. Corrupti et provident a eius sit molestiae at voluptas.',1,1,'2016-01-02 19:27:24'),(32,32,32,2,'Aperiam sit et odit cupiditate deserunt. Ratione quas rerum et a sit. Est debitis mollitia esse reprehenderit accusamus laboriosam.',0,0,'1999-12-13 12:16:54'),(33,33,33,3,'Quae ut quia omnis reprehenderit fugit odit perferendis. Ratione velit aut ratione qui. Nihil harum et in incidunt et praesentium.',1,0,'1988-03-10 03:32:54'),(34,34,34,4,'Voluptate dignissimos adipisci libero voluptatem laborum autem veritatis. Unde blanditiis soluta quia ducimus vitae corporis est fuga. Qui et nemo reiciendis dolores. Minima ut eligendi non laboriosam dolorem non.',0,1,'1984-03-26 19:43:26'),(35,35,35,5,'Nihil alias id mollitia voluptate fugit consequuntur. Et repudiandae molestiae nulla voluptas dolorem iusto et. Non voluptatibus aliquid illum. Iste molestiae porro at mollitia qui iste.',0,1,'2016-11-25 14:07:06'),(36,36,36,6,'Accusamus ea et sequi quia reiciendis. Similique sapiente aut ut reprehenderit.',0,0,'1971-07-06 12:45:51'),(37,37,37,7,'Atque est esse aliquid quisquam dolores quibusdam. Eius pariatur voluptate ut et minima ad vel. Quis quae optio in id. Quas nemo nihil dolorum earum omnis quisquam.',1,1,'1995-11-16 14:09:06'),(38,38,38,8,'Sunt earum eius fuga ut iusto voluptate. Velit ut commodi nostrum qui est doloremque. Voluptatibus similique nam rerum. Aperiam numquam magnam consequatur qui quidem sit molestias.',0,0,'2018-10-27 07:29:19'),(39,39,39,9,'Reiciendis nostrum et adipisci rem voluptates. Autem illum commodi magni in et expedita maiores. Modi animi dignissimos iusto officia ut doloremque. Odit et voluptatem est odio.',0,0,'2017-06-05 19:25:09'),(40,40,40,10,'Possimus optio dicta nesciunt eum quaerat enim. Est eum esse autem eligendi maxime autem. Autem sint ut nesciunt aliquam omnis voluptatem dolor.',1,0,'1978-07-15 17:32:17'),(41,41,41,1,'Rem vero minima molestias nemo. Maiores aut voluptatem corrupti iusto pariatur voluptas. Labore nesciunt maxime est qui labore et.',0,1,'1973-05-31 18:18:32'),(42,42,42,2,'Voluptatibus suscipit voluptas sed odio et. Illum qui minima aut enim. Vel facere et doloremque nostrum eligendi. Ea commodi ea natus atque.',0,1,'1972-03-23 08:51:35'),(43,43,43,3,'Aliquam quam aspernatur incidunt unde repellat fugiat minus. Beatae aliquid et tempora minus neque. Odit debitis voluptatem deserunt.',1,0,'1999-12-15 02:26:35'),(44,44,44,4,'Voluptas maxime ipsam sed. Dolorem officiis officia temporibus ex. Occaecati cumque et consectetur nihil. Autem neque temporibus quibusdam itaque quae quisquam ex rerum.',1,1,'1991-04-27 10:49:50'),(45,45,45,5,'Doloremque maiores rerum nam esse pariatur quod harum. Et eaque nostrum similique sunt. Quo voluptates commodi quis sed. Magnam tempore nihil asperiores ad.',1,1,'1990-09-10 22:03:04'),(46,46,46,6,'Distinctio quasi aut explicabo minus. Vel rerum illo quaerat. Sapiente reprehenderit odio deserunt eius.',1,1,'1980-07-05 01:04:33'),(47,47,47,7,'Explicabo dolores eligendi rerum aperiam et non atque. Eos officiis consequatur quia corrupti consequuntur. Consectetur et quis enim ad voluptatum explicabo.',0,1,'1977-11-06 00:42:33'),(48,48,48,8,'Eius in exercitationem dolorum modi delectus molestiae. Quia accusantium commodi velit aut ea architecto odit. Nulla similique maxime laborum accusantium velit. Itaque quia est voluptatem asperiores eos sed in.',0,0,'1999-05-25 16:16:35'),(49,49,49,9,'Facere assumenda aut delectus quisquam voluptatem. Molestiae nihil voluptas nisi enim sint.',0,1,'2003-05-15 01:57:42'),(50,50,50,10,'Ipsam rerum repellendus mollitia perferendis in. Exercitationem quibusdam laborum ut quisquam perspiciatis sint dicta dolorem.',0,0,'2017-04-20 04:51:20'),(51,51,51,1,'Nam ut ut fugit repellat nihil nam. Ut nobis enim sint. Omnis earum reiciendis et nihil sint animi. Repellendus labore ut est.',1,0,'1996-10-17 05:26:12'),(52,52,52,2,'Rerum esse sit architecto facilis nemo. Modi quam ea aliquid incidunt accusantium. Quas fugit eius dolor sunt quasi atque. Delectus hic eum expedita earum excepturi.',0,1,'1990-06-06 11:56:55'),(53,53,53,3,'Nisi cumque soluta autem ullam et. Nobis repellat voluptatem numquam nulla voluptatem. Nemo voluptatem sunt et voluptate et. Accusantium ut ullam laboriosam mollitia. Ipsa ex sed adipisci officia pariatur velit rem repellat.',0,1,'2004-11-25 15:55:55'),(54,54,54,4,'Iste ut tenetur maiores libero vel cum. Ut vel et omnis minus accusamus provident omnis. Quo sed nostrum quo quos dicta facilis modi. Quidem veniam aliquam nobis inventore quia omnis nihil.',1,1,'2007-08-20 17:00:11'),(55,55,55,5,'Excepturi est consequatur dolorum ut aliquid. Rem ut ut quis quia qui odio. Eius ratione laudantium ut ut pariatur perferendis.',0,0,'2013-11-12 17:27:32'),(56,56,56,6,'Nam aspernatur est est sit magnam dolorem voluptatem. Officia sit eum dolor corrupti eius. Soluta rerum tempora omnis rem. Hic officia quia provident. Ut ipsam consequatur dicta ut numquam quasi inventore quod.',1,0,'1993-07-09 18:38:19'),(57,57,57,7,'Nesciunt ut quo omnis fuga adipisci quas. Ducimus et fugiat voluptatem reiciendis voluptatem ut qui et. Et harum velit vitae harum. Id quaerat qui minima perferendis.',0,1,'1993-04-05 21:11:47'),(58,58,58,8,'Et et tenetur ratione omnis aperiam ut aut. Et omnis quaerat atque pariatur. Iste commodi voluptatem numquam optio deleniti quasi porro ullam. Minima sunt sed quaerat.',1,0,'1975-08-21 18:06:56'),(59,59,59,9,'Culpa eius repudiandae quis qui. Sunt itaque est quia labore omnis animi vero et. Consequatur aut molestias ea similique sequi repellat. Saepe deserunt necessitatibus omnis sapiente rem soluta.',1,1,'1998-05-25 17:42:57'),(60,60,60,10,'Nam ipsam doloremque ab soluta cumque et debitis. Officiis voluptatem dolore et ut. Rerum qui harum ullam voluptas. Blanditiis quas illo perferendis consequatur voluptatem et.',1,1,'1982-02-04 04:52:30'),(61,61,61,1,'Minima corporis dolorum explicabo earum ea dolor. Officiis omnis quam rerum mollitia voluptas. Adipisci iure aliquam placeat non rerum sequi. Autem ipsam earum eligendi aspernatur aut vel.',1,1,'1987-08-09 23:39:46'),(62,62,62,2,'Neque vel fugit iusto fugiat alias. Dolorum consequuntur a illum reprehenderit.',1,1,'2018-11-16 03:11:27'),(63,63,63,3,'Nostrum culpa aut nihil et. Adipisci et dolores qui. Repellat suscipit accusamus quaerat.',0,0,'1976-02-15 08:27:22'),(64,64,64,4,'Molestiae sint deleniti sint aut reiciendis fugiat rem. Aliquam quis ipsum beatae.',0,0,'1980-05-19 15:17:57'),(65,65,65,5,'Et eius et quis. Veritatis eos natus repellendus dolore vel. Dolorum dolorem error maiores dolorum consectetur ipsum vel ipsum. Autem sit consequatur quibusdam consectetur. Fugiat provident corrupti qui quasi architecto praesentium aliquam.',0,1,'1978-03-22 06:12:41'),(66,66,66,6,'Earum eaque itaque aliquam tempore qui sit odit. Ut quidem beatae excepturi et. Aut iste atque quaerat quis ea exercitationem.',0,0,'2007-08-05 02:57:46'),(67,67,67,7,'Et dolor et temporibus accusamus vitae nesciunt aut. Velit magni vel recusandae optio voluptatibus. Tempore iure laboriosam et aliquam magni saepe voluptate. Voluptatem accusantium cupiditate ea molestiae necessitatibus.',1,0,'2017-11-27 01:56:32'),(68,68,68,8,'Sunt ad tempore error nihil mollitia voluptatem. Placeat maiores et molestiae officiis repudiandae. Dolorum quia facilis ut. Perferendis totam officiis quis quam qui ex. Quisquam commodi voluptatem maiores voluptatem et nesciunt.',0,1,'2004-05-24 15:23:19'),(69,69,69,9,'A delectus alias sequi repellendus quisquam iusto sit. Cupiditate modi magni quia dolorem.',1,1,'1998-09-29 06:56:08'),(70,70,70,10,'Ut repellat doloremque veritatis est. Aut eveniet qui quos mollitia nesciunt impedit. Ut ipsam nobis illum. Aut qui dignissimos doloribus odit voluptas. At cum nisi incidunt molestiae sed consequatur.',0,0,'1994-08-03 14:02:54'),(71,71,71,1,'Iste similique dolorem qui ea dicta delectus quas. Iste tenetur aut aut rerum nostrum rerum a. Exercitationem culpa odio quo provident harum sed est at.',0,0,'1978-08-24 21:46:33'),(72,72,72,2,'Vel sunt alias illo tenetur dolores sit quibusdam. Non est soluta omnis dolorum cupiditate earum qui. Ullam necessitatibus et dolores.',0,0,'1973-10-08 02:58:25'),(73,73,73,3,'Dolorem consequatur maxime autem dicta et totam. Labore eius est nostrum molestiae optio. Et quaerat iure tenetur et blanditiis quam expedita enim.',1,1,'1983-11-25 14:06:30'),(74,74,74,4,'Quia ipsa mollitia quo eligendi error ex molestiae. Ut voluptatem aperiam accusantium reiciendis. Vero ullam velit in minus placeat. Ut ipsa corrupti ut id ratione odit.',1,1,'2008-05-30 14:15:28'),(75,75,75,5,'Non aut eveniet dolor nisi ad animi qui. Alias quo aut sed ipsa. Et quaerat illo voluptate consequatur neque.',0,1,'1978-03-10 18:23:56'),(76,76,76,6,'Debitis est excepturi hic quia ducimus. Quia quos accusamus corrupti voluptatibus. Sit sed aliquid maiores dicta pariatur rerum eum. Et nesciunt aliquam et sequi. Libero laudantium vel et qui et exercitationem deleniti.',0,0,'1991-02-01 20:09:13'),(77,77,77,7,'Similique quia in labore dignissimos iste illo dolorem corporis. Veritatis et ea necessitatibus omnis magnam quibusdam. Non temporibus quaerat eum accusamus suscipit. Impedit quis nihil quisquam consequatur praesentium. Qui expedita quisquam cumque veniam.',1,1,'2007-05-27 13:56:04'),(78,78,78,8,'Quidem accusantium rerum praesentium et non incidunt quaerat. Quibusdam neque omnis aperiam quod quia. Velit et distinctio est numquam magni eum. Aut est cupiditate molestiae qui tempore modi.',0,1,'2010-02-14 18:02:08'),(79,79,79,9,'Repudiandae ut nihil beatae asperiores ut enim. Incidunt reprehenderit magni rerum dolore. Ut repudiandae ut iste repellendus sequi ea. Id assumenda magni accusantium aut odit qui facere.',1,1,'1996-03-11 08:01:22'),(80,80,80,10,'Odit voluptas maxime doloribus sunt. Libero blanditiis rerum ut dolore. Sit blanditiis et quia voluptas et et dignissimos.',1,0,'1974-11-11 02:08:42'),(81,81,81,1,'Maxime possimus saepe ullam numquam tenetur. Dolorem autem nihil quia. Placeat quae veniam ut sapiente velit voluptatum. Autem vero voluptatem velit repellat hic aspernatur. Vel velit dolorem et reprehenderit velit.',1,0,'1990-02-03 09:16:26'),(82,82,82,2,'Voluptatem fuga dolorem maxime dolores quo alias et. Voluptate voluptatem voluptatem molestias quia ut repudiandae et voluptatem. Aspernatur quia est eligendi voluptatem enim temporibus accusamus odio.',1,1,'1993-06-12 12:45:36'),(83,83,83,3,'Aperiam rem rem sed et. Tempora quo doloribus recusandae sint quis iusto alias. Quis rerum voluptas quis debitis. Qui numquam perferendis voluptatem alias.',1,0,'1978-04-06 05:09:45'),(84,84,84,4,'Rerum animi beatae et odio velit aut. Expedita consequatur non inventore quia quaerat ut commodi. Et soluta incidunt voluptatibus voluptas. Autem nihil sunt excepturi qui iure.',0,0,'1971-03-06 02:59:19'),(85,85,85,5,'Rerum debitis sequi illo consequatur. Tempore commodi quam quo cumque deserunt sapiente. Incidunt suscipit quisquam cum repudiandae quas libero. Nihil ipsa voluptas rerum qui.',0,0,'1971-03-18 19:51:44'),(86,86,86,6,'Distinctio et ut qui reprehenderit ex dolores nemo. Ratione commodi non velit dolorem quisquam provident fugit. Velit maxime et assumenda autem et expedita.',1,0,'2000-01-28 16:20:18'),(87,87,87,7,'Aut dolores et aut iure. At rerum et ea cum sit. Aperiam hic ex ut corrupti facere. Quos molestias voluptatem quasi quis qui aut.',1,0,'1977-03-10 22:08:11'),(88,88,88,8,'Unde harum magni dolorem asperiores voluptas quam. Ipsum cupiditate sed aut voluptates sit. Vitae sapiente labore quibusdam sed. Ea debitis quisquam sint architecto et debitis alias.',1,0,'1974-10-23 17:42:39'),(89,89,89,9,'Delectus quia recusandae impedit esse non perspiciatis. Doloribus qui ipsa voluptatem et velit quod pariatur deleniti.',0,1,'1995-01-21 12:17:20'),(90,90,90,10,'Consectetur accusantium nam eum quis mollitia modi. Voluptas voluptas explicabo culpa aut quia in in quia. Voluptatem necessitatibus doloribus non explicabo alias ut. Modi iusto est quisquam explicabo consequatur debitis et aut.',0,0,'2006-04-16 06:04:42'),(91,91,91,1,'Perspiciatis veniam occaecati libero dignissimos ut dolor architecto deleniti. Vero rem deleniti est est aut. Qui beatae a rem quis dolorem aut aliquam.',1,0,'1985-05-10 12:38:45'),(92,92,92,2,'Ut velit nisi ab veniam. Et fugit nobis neque est quo.',0,0,'1992-11-18 21:24:15'),(93,93,93,3,'Et vel ducimus enim voluptatem. Placeat laboriosam rerum quia magnam voluptatem nostrum. Magnam omnis voluptate porro.',1,0,'2009-07-12 21:44:44'),(94,94,94,4,'Deserunt ipsa vel sapiente aut. Autem eligendi commodi dolorem sed nostrum expedita. Ut commodi est aliquid eum totam accusantium.',1,0,'2005-12-18 16:05:30'),(95,95,95,5,'Dolor nemo est tempora quibusdam quo. Enim magni voluptatum voluptatem tempore non ipsam.',1,1,'1976-10-07 03:36:04'),(96,96,96,6,'Ex et facilis eius incidunt qui accusantium. Et quia libero minus earum et dolor adipisci et. Quis enim omnis voluptatem sed sunt.',0,1,'1980-04-04 08:28:37'),(97,97,97,7,'Corporis sapiente sed velit mollitia eos nihil. Molestias ut dolorem molestiae odio placeat neque.',0,0,'2007-04-04 22:53:17'),(98,98,98,8,'Libero voluptatem et eveniet veniam expedita corrupti. Tempore illum perferendis suscipit et. Qui eius laboriosam nemo. Exercitationem sed minus debitis officia quisquam molestias omnis.',0,1,'2019-04-04 22:18:12'),(99,99,99,9,'Odio aut dicta ipsam. In velit ab error quia illo distinctio molestias.',0,0,'1976-09-21 07:23:20'),(100,100,100,10,'Delectus enim tenetur harum. Consequuntur rem eos non occaecati aut mollitia nemo et. Eum aliquid explicabo voluptas. Vero vero dolorum dolorem quae.',0,1,'1971-11-18 19:05:20');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `month` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES (1,'January',1),(2,'Febreary',2),(3,'March',3),(4,'April',4),(5,'May',5),(6,'June',6),(7,'July',7),(8,'Audust',8),(9,'September',9),(10,'Octovber',10),(11,'November',11),(12,'Desember',12);
/*!40000 ALTER TABLE `month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `heard` varchar(100) DEFAULT NULL,
  `body` mediumtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `posts_media_id_fk` (`media_id`),
  KEY `posts_user_id_fk` (`user_id`),
  CONSTRAINT `posts_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `posts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `profiles_photo_id_fk` (`photo_id`),
  KEY `profiles_user_id_IDX` (`user_id`) USING BTREE,
  KEY `idx_profiles_user_id` (`user_id`),
  CONSTRAINT `profiles_photo_id_fk` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `profiles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1974-06-24','New Taylorshire',45,'1972-03-16 14:44:00','2020-03-11 17:55:20'),(2,'m','1987-11-05','Danikaborough',42,'2003-12-10 01:59:04','2020-03-11 17:55:20'),(3,'f','1995-01-28','Orionbury',76,'1993-06-09 07:05:49','2020-03-11 17:55:20'),(4,'m','2016-07-11','North Earlineville',51,'1977-04-18 04:51:18','2020-03-11 17:55:20'),(5,'m','2010-07-16','Devenmouth',28,'1995-05-23 15:35:20','2020-03-11 17:55:20'),(6,'m','2012-06-02','Brantchester',88,'2019-10-30 23:52:39','2020-03-11 17:55:20'),(7,'f','2012-08-18','Millsfort',55,'2008-02-15 20:18:28','2020-03-11 17:55:20'),(8,'f','1997-07-20','Port Emersonside',12,'1999-03-12 03:09:21','2020-03-11 17:55:20'),(9,'m','1986-12-22','South Jackhaven',92,'1994-12-05 14:29:55','2020-03-11 17:55:20'),(10,'m','2002-04-04','South Kyla',24,'1992-09-26 21:29:30','2020-03-11 17:55:20'),(11,'f','1984-08-24','Parkertown',46,'1985-06-28 01:22:22','2020-03-11 17:55:20'),(12,'m','2019-05-14','Lake Amina',54,'1986-11-02 14:43:53','2020-03-11 17:55:20'),(13,'m','1975-12-31','Port Tyshawn',34,'1994-05-30 06:03:16','2020-03-11 17:55:20'),(14,'m','1998-02-12','West Auroreview',9,'1999-02-15 15:20:02','2020-03-11 17:55:20'),(15,'m','1973-02-28','Baumbachview',39,'2000-02-07 05:07:29','2020-03-11 17:55:20'),(16,'f','2012-05-30','Nicoton',68,'1987-06-06 08:46:17','2020-03-11 17:55:20'),(17,'f','2012-01-19','Faustinoland',22,'1993-11-20 21:08:07','2020-03-11 17:55:20'),(18,'f','1991-07-25','Kesslerstad',6,'1975-12-30 03:25:46','2020-03-11 17:55:20'),(19,'m','1988-07-08','New Gabriel',63,'2007-12-01 23:26:53','2020-03-11 17:55:20'),(20,'f','1983-06-24','East Briana',97,'1972-09-05 05:04:50','2020-03-11 17:55:20'),(21,'f','2016-11-08','Vanessamouth',94,'1973-11-18 11:55:57','2020-03-11 17:55:20'),(22,'m','2005-12-30','South Lillaton',78,'1989-04-26 18:06:40','2020-03-11 17:55:20'),(23,'f','1977-07-11','Justenton',7,'2003-12-31 12:58:39','2020-03-11 17:55:20'),(24,'f','2008-11-25','East Ludwigshire',100,'1979-02-03 20:09:54','2020-03-11 17:55:20'),(25,'m','1991-12-13','Marcellachester',80,'2012-04-14 13:42:07','2020-03-11 17:55:20'),(26,'f','1989-01-19','South Lillianamouth',98,'1981-10-10 14:42:04','2020-03-11 17:55:20'),(27,'m','1990-12-20','New Eldoratown',49,'1972-12-14 05:39:49','2020-03-11 17:55:20'),(28,'m','2005-05-01','Stoltenbergberg',50,'1989-08-21 07:47:39','2020-03-11 17:55:20'),(29,'f','1981-09-19','South Arvillaport',6,'1988-12-15 22:19:04','2020-03-11 17:55:20'),(30,'f','2008-04-11','Sporershire',76,'1980-02-06 22:36:03','2020-03-11 17:55:20'),(31,'f','1997-04-12','East Ashlyland',62,'2003-11-28 02:31:47','2020-03-11 17:55:20'),(32,'f','2016-12-17','North Pedro',81,'2016-07-03 05:55:11','2020-03-11 17:55:20'),(33,'m','2008-04-30','Port Emersonbury',21,'1975-07-24 00:27:48','2020-03-11 17:55:20'),(34,'m','2014-08-26','Marquardtfort',60,'1981-05-20 13:31:56','2020-03-11 17:55:20'),(35,'m','2017-05-24','Creolaland',37,'1991-07-26 14:28:45','2020-03-11 17:55:20'),(36,'f','1995-02-26','Martineville',4,'1985-03-20 18:26:02','2020-03-11 17:55:20'),(37,'m','2000-10-23','Port Ebba',8,'2014-12-08 07:18:58','2020-03-11 17:55:20'),(38,'f','1978-05-07','Bartolettihaven',29,'2009-10-11 10:50:49','2020-03-11 17:55:20'),(39,'f','1988-09-18','Lemkechester',22,'1994-01-11 04:45:23','2020-03-11 17:55:20'),(40,'m','1981-10-26','North Flossieport',20,'1995-08-28 17:00:21','2020-03-11 17:55:20'),(41,'m','1996-10-18','North Heloiseview',34,'1989-03-06 14:34:48','2020-03-11 17:55:20'),(42,'m','2001-05-27','West Janet',8,'1988-10-15 08:40:50','2020-03-11 17:55:20'),(43,'f','2016-10-24','Keaganfort',38,'2002-12-03 16:39:31','2020-03-11 17:55:20'),(44,'f','1986-01-11','New Josephine',65,'2002-08-07 01:44:19','2020-03-11 17:55:20'),(45,'f','1970-09-24','Port Cedrick',10,'1985-07-24 18:07:42','2020-03-11 17:55:20'),(46,'f','1979-03-22','Lake Sean',57,'1985-10-18 12:53:08','2020-03-11 17:55:20'),(47,'m','1975-05-26','Swiftburgh',54,'2002-07-14 09:24:54','2020-03-11 17:55:20'),(48,'f','2018-08-15','Port Erikamouth',99,'1970-07-11 01:44:39','2020-03-11 17:55:20'),(49,'f','1993-01-25','South Palma',32,'2009-11-06 11:55:34','2020-03-11 17:55:20'),(50,'m','1971-01-28','Clevefurt',63,'1990-02-14 01:22:32','2020-03-11 17:55:20'),(51,'m','1972-07-06','North Joanaland',19,'2011-08-30 01:28:24','2020-03-11 17:55:20'),(52,'f','1994-03-15','East Francesca',5,'1995-10-02 23:18:14','2020-03-11 17:55:20'),(53,'m','1973-02-08','Lockmanmouth',65,'2008-07-19 02:27:20','2020-03-11 17:55:20'),(54,'m','2002-10-16','North Ahmed',13,'1996-05-02 01:53:28','2020-03-11 17:55:20'),(55,'m','1994-10-27','Leschtown',67,'2012-06-18 07:29:00','2020-03-11 17:55:20'),(56,'m','1975-07-05','Lake Juliostad',98,'2010-11-21 19:31:12','2020-03-11 17:55:20'),(57,'f','2013-04-02','Port Arvilla',86,'1988-11-14 03:34:38','2020-03-11 17:55:20'),(58,'m','1974-01-21','Gersonport',36,'2002-11-15 10:18:03','2020-03-11 17:55:20'),(59,'m','1996-05-20','East Nehaport',24,'2007-03-01 03:37:10','2020-03-11 17:55:20'),(60,'f','1984-11-06','East Clara',10,'2005-10-10 03:05:42','2020-03-11 17:55:20'),(61,'f','1987-07-14','New Drewtown',76,'2016-08-14 06:11:10','2020-03-11 17:55:20'),(62,'m','1971-09-13','North Horacio',51,'2001-04-24 01:00:17','2020-03-11 17:55:20'),(63,'m','1977-02-08','East Marielle',25,'2003-05-02 22:56:19','2020-03-11 17:55:20'),(64,'f','1999-05-24','Boscoside',71,'1982-02-26 04:03:32','2020-03-11 17:55:20'),(65,'m','1985-03-25','East Myrtismouth',79,'1987-08-14 20:50:03','2020-03-11 17:55:20'),(66,'f','2013-03-30','Prosaccomouth',83,'1973-05-18 03:04:01','2020-03-11 17:55:20'),(67,'m','2005-08-31','East Herminiashire',77,'1980-06-23 15:00:36','2020-03-11 17:55:20'),(68,'m','2013-09-18','Lueilwitzville',34,'1994-07-21 14:41:09','2020-03-11 17:55:20'),(69,'m','1979-09-04','Amayaberg',39,'2009-10-29 20:27:49','2020-03-11 17:55:20'),(70,'f','1977-06-08','Ovafort',94,'1982-04-21 09:46:02','2020-03-11 17:55:20'),(71,'f','2014-04-07','Conroyland',52,'2009-04-03 22:58:43','2020-03-11 17:55:20'),(72,'m','2008-05-04','West Ronny',77,'2007-12-05 06:59:59','2020-03-11 17:55:20'),(73,'m','1992-02-23','Dandreborough',28,'1974-07-10 23:47:28','2020-03-11 17:55:20'),(74,'m','2007-02-17','Lake Estel',11,'1999-05-25 06:07:35','2020-03-11 17:55:20'),(75,'m','1972-02-11','West Kelton',69,'1995-06-12 04:22:33','2020-03-11 17:55:20'),(76,'m','1987-03-17','Lake Reynoldview',13,'1991-07-06 10:44:48','2020-03-11 17:55:20'),(77,'f','1983-02-02','New Fermin',57,'1982-03-05 05:38:11','2020-03-11 17:55:20'),(78,'m','1976-02-12','Conroyborough',43,'1995-12-31 12:14:32','2020-03-11 17:55:20'),(79,'f','2001-01-30','Balistreriborough',46,'1981-02-19 23:01:17','2020-03-11 17:55:20'),(80,'m','1988-08-26','New Karleyberg',98,'1974-10-05 01:20:01','2020-03-11 17:55:20'),(81,'m','1985-08-30','Kertzmannland',54,'1988-07-16 20:54:56','2020-03-11 17:55:20'),(82,'f','1978-02-13','North Clairfurt',73,'1977-04-15 00:03:34','2020-03-11 17:55:20'),(83,'f','2000-05-19','East Lawrence',1,'1996-01-14 10:35:32','2020-03-11 17:55:20'),(84,'m','1992-04-01','Walterton',89,'1971-10-07 21:30:37','2020-03-11 17:55:20'),(85,'m','2010-08-05','Juvenalberg',42,'2006-08-20 14:39:07','2020-03-11 17:55:20'),(86,'f','1995-02-16','West Nelle',43,'1981-07-12 02:56:54','2020-03-11 17:55:20'),(87,'f','2017-09-15','West Selmerborough',89,'1995-05-16 17:11:20','2020-03-11 17:55:20'),(88,'f','1985-03-14','Meredithside',13,'1997-04-19 22:27:08','2020-03-11 17:55:20'),(89,'m','1978-07-25','New Stephen',99,'2019-04-01 23:20:46','2020-03-11 17:55:20'),(90,'m','1995-12-28','West Grahamside',56,'1985-10-03 11:13:52','2020-03-11 17:55:20'),(91,'m','2013-05-07','Laceyton',82,'2007-01-22 17:23:45','2020-03-11 17:55:20'),(92,'f','2014-10-08','Medhurstmouth',40,'1983-03-26 00:28:32','2020-03-11 17:55:20'),(93,'f','2009-05-06','Satterfieldshire',53,'2019-03-22 13:48:51','2020-03-11 17:55:20'),(94,'f','2017-05-09','Cartwrightburgh',44,'2017-08-02 10:07:23','2020-03-11 17:55:20'),(95,'f','2011-08-19','East Christyfurt',62,'1986-09-24 00:38:18','2020-03-11 17:55:20'),(96,'m','1976-08-15','Ernestoside',77,'1981-02-17 15:46:50','2020-03-11 17:55:20'),(97,'m','2010-11-08','Lisafurt',100,'1984-09-04 15:10:42','2020-03-11 17:55:20'),(98,'m','1981-01-18','Port Leopoldo',66,'2009-09-08 12:12:46','2020-03-11 17:55:20'),(99,'m','1976-09-28','West Lavina',29,'2008-01-24 06:55:37','2020-03-11 17:55:20'),(100,'f','1973-05-13','Robertschester',46,'2003-07-20 20:35:00','2020-03-11 17:55:20');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (1,2),(2,5),(3,4),(4,2),(5,5),(6,4),(7,0),(8,2500),(9,0),(10,50);
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab1`
--

DROP TABLE IF EXISTS `tab1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab1` (
  `val` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab1`
--

LOCK TABLES `tab1` WRITE;
/*!40000 ALTER TABLE `tab1` DISABLE KEYS */;
INSERT INTO `tab1` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `tab1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_types`
--

DROP TABLE IF EXISTS `target_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_types`
--

LOCK TABLES `target_types` WRITE;
/*!40000 ALTER TABLE `target_types` DISABLE KEYS */;
INSERT INTO `target_types` VALUES (1,'messeges','2020-03-12 17:26:33'),(2,'posts','2020-03-12 17:26:33'),(3,'media','2020-03-12 17:26:33'),(4,'users','2020-03-12 17:26:33');
/*!40000 ALTER TABLE `target_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `idx_users_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Terry','Heaney','ohaley@example.net','+7191319618999331980','2020-03-09 10:59:13','2020-03-11 17:55:19'),(2,'Rodrick','Walker','bennie.rath@example.com','+7470266424821112939','2020-03-09 10:59:13','2020-03-11 17:55:19'),(3,'Cordia','Considine','torrance.mills@example.org','+74389709498858167165','2020-03-09 10:59:13','2020-03-11 17:55:19'),(4,'Joseph','Braun','micah20@example.net','+7480379859820912824','2020-03-09 10:59:13','2020-03-11 17:55:19'),(5,'Crystel','Kerluke','dane.legros@example.net','+74712701396544102110','2020-03-09 10:59:13','2020-03-11 17:55:19'),(6,'Shania','Ruecker','kmarvin@example.net','+7996268026128','2020-03-09 10:59:13','2020-03-11 17:55:19'),(7,'Katelyn','Heathcote','pframi@example.org','+71963797879498613154','2020-03-09 10:59:13','2020-03-11 17:55:19'),(8,'Autumn','Schaden','ghermann@example.org','+702840700473','2020-03-09 10:59:13','2020-03-11 17:55:19'),(9,'Joy','Klocko','cleta93@example.com','+704324402342317343','2020-03-09 10:59:13','2020-03-11 17:55:19'),(10,'Berniece','Hayes','gmcglynn@example.com','+719221926595597','2020-03-09 10:59:13','2020-03-11 17:55:19'),(11,'Madaline','Bayer','edwin.gorczany@example.net','+742687044986001676','2020-03-09 10:59:13','2020-03-11 17:55:19'),(12,'Kassandra','Spencer','serdman@example.net','+748677709997821065','2020-03-09 10:59:13','2020-03-11 17:55:19'),(13,'Santina','Bashirian','alphonso.hansen@example.net','+7+524978176467546','2020-03-09 10:59:13','2020-03-11 17:55:19'),(14,'Quentin','Marks','else47@example.org','+708628884908','2020-03-09 10:59:13','2020-03-11 17:55:19'),(15,'Antwon','Lowe','johanna20@example.com','+7079930096871190928','2020-03-09 10:59:13','2020-03-11 17:55:19'),(16,'Rebeca','Reichert','marquardt.kamille@example.net','+71954793279789712551','2020-03-09 10:59:13','2020-03-11 17:55:19'),(17,'Vallie','Bashirian','joannie05@example.net','+74162777594148175960','2020-03-09 10:59:13','2020-03-11 17:55:19'),(18,'Jamil','Pacocha','aniyah.gutkowski@example.com','+7495674529865811101','2020-03-09 10:59:13','2020-03-11 17:55:19'),(19,'Emerald','O\'Conner','joannie.kemmer@example.net','+719310956392190','2020-03-09 10:59:13','2020-03-11 17:55:19'),(20,'Imogene','Nienow','cameron01@example.net','+7914944195382','2020-03-09 10:59:13','2020-03-11 17:55:19'),(21,'Vince','Cronin','xlangworth@example.org','+719623957899494','2020-03-09 10:59:13','2020-03-11 17:55:19'),(22,'Alvina','Raynor','hoppe.rosie@example.com','+7+274971060945009','2020-03-09 10:59:13','2020-03-11 17:55:19'),(23,'Kenyatta','Adams','heller.chelsey@example.com','+7204902491058120918','2020-03-09 10:59:13','2020-03-11 17:55:19'),(24,'Fred','Buckridge','providenci98@example.net','+709663299870','2020-03-09 10:59:13','2020-03-11 17:55:19'),(25,'Haylee','Yost','ilene.mohr@example.com','+709112074563','2020-03-09 10:59:13','2020-03-11 17:55:19'),(26,'Valentina','Dickinson','kristopher.waters@example.com','+70632271216851131','2020-03-09 10:59:13','2020-03-11 17:55:19'),(27,'Elfrieda','Simonis','zachariah53@example.net','+719162949093299','2020-03-09 10:59:13','2020-03-11 17:55:19'),(28,'Alek','Stamm','lockman.eddie@example.com','+7964982799953','2020-03-09 10:59:13','2020-03-11 17:55:19'),(29,'Gabriella','Runolfsson','roderick.jacobs@example.net','+7191319794963441346','2020-03-09 10:59:13','2020-03-11 17:55:19'),(30,'Alexander','Kunde','gardner.ernser@example.com','+7+104972774494583','2020-03-09 10:59:13','2020-03-11 17:55:19'),(31,'Keira','Jast','carolyne.kunze@example.com','+74558766493197163351','2020-03-09 10:59:13','2020-03-11 17:55:19'),(32,'Queenie','Champlin','rosamond51@example.com','+7773991092750','2020-03-09 10:59:13','2020-03-11 17:55:19'),(33,'Blanca','O\'Conner','lchristiansen@example.org','+748024212321619817','2020-03-09 10:59:13','2020-03-11 17:55:19'),(34,'Liza','Wintheiser','jamaal.bogisich@example.org','+7+654279454696262','2020-03-09 10:59:13','2020-03-11 17:55:19'),(35,'Stella','Koch','heather38@example.net','+74148705893820','2020-03-09 10:59:13','2020-03-11 17:55:19'),(36,'Wilhelmine','Gislason','beatty.napoleon@example.com','+74474703492848','2020-03-09 10:59:13','2020-03-11 17:55:19'),(37,'Dortha','Smith','flavio.lueilwitz@example.net','+7199239886989481165','2020-03-09 10:59:13','2020-03-11 17:55:19'),(38,'Malachi','Smitham','eraynor@example.org','+73902885206371998','2020-03-09 10:59:13','2020-03-11 17:55:19'),(39,'Jerry','Cole','jessika.bayer@example.net','+705559652269','2020-03-09 10:59:13','2020-03-11 17:55:19'),(40,'Nola','Thompson','bridie.muller@example.com','+74029771694253192737','2020-03-09 10:59:13','2020-03-11 17:55:19'),(41,'Delphia','Kiehn','jarrod95@example.com','+700426102895217194','2020-03-09 10:59:13','2020-03-11 17:55:19'),(42,'Peggie','Yost','meghan.weber@example.com','+74149775090509','2020-03-09 10:59:13','2020-03-11 17:55:19'),(43,'Ally','Funk','murray.kristian@example.org','+748037377954801187','2020-03-09 10:59:13','2020-03-11 17:55:19'),(44,'Jeffery','Moore','hagenes.toney@example.com','+7+764572377431528','2020-03-09 10:59:13','2020-03-11 17:55:19'),(45,'Maurice','Howell','jbailey@example.com','+79822804282461998','2020-03-09 10:59:13','2020-03-11 17:55:19'),(46,'Sylvan','Botsford','kali12@example.net','+7693973296191109690','2020-03-09 10:59:13','2020-03-11 17:55:19'),(47,'Leonard','Schinner','xhoeger@example.net','+706639574008','2020-03-09 10:59:13','2020-03-11 17:55:19'),(48,'Shana','Oberbrunner','lyda08@example.org','+7192269422937331463','2020-03-09 10:59:13','2020-03-11 17:55:19'),(49,'Hilario','Emmerich','myrtie58@example.net','+7016215822016114152','2020-03-09 10:59:13','2020-03-11 17:55:19'),(50,'Conrad','Gutkowski','nolan.hilda@example.com','+71909996249892517123','2020-03-09 10:59:13','2020-03-11 17:55:19'),(51,'Rhiannon','Rosenbaum','virginie.ziemann@example.net','+78279606927731675','2020-03-09 10:59:13','2020-03-11 17:55:19'),(52,'Andreanne','Friesen','mann.rick@example.org','+740437523915351493','2020-03-09 10:59:13','2020-03-11 17:55:19'),(53,'Andres','Dare','mattie.durgan@example.net','+7858909291173142691','2020-03-09 10:59:13','2020-03-11 17:55:19'),(54,'Verna','Greenfelder','dhauck@example.org','+7063971890996','2020-03-09 10:59:13','2020-03-11 17:55:19'),(55,'Frances','Cormier','bruen.flo@example.com','+744857306968681937','2020-03-09 10:59:13','2020-03-11 17:55:19'),(56,'Kiera','Crona','jbotsford@example.com','+7196999270908911312','2020-03-09 10:59:13','2020-03-11 17:55:19'),(57,'Arturo','Grady','ehirthe@example.org','+7+424373220802376','2020-03-09 10:59:13','2020-03-11 17:55:19'),(58,'Blaze','Toy','graham.camilla@example.com','+79162585277131555','2020-03-09 10:59:13','2020-03-11 17:55:19'),(59,'Rogers','Bruen','emonahan@example.org','+7742919496268149991','2020-03-09 10:59:13','2020-03-11 17:55:19'),(60,'Zechariah','Klein','harvey.padberg@example.org','+719437949695617','2020-03-09 10:59:13','2020-03-11 17:55:19'),(61,'Harmony','Leffler','ofelia44@example.net','+7198799226953001245','2020-03-09 10:59:13','2020-03-11 17:55:19'),(62,'Julie','Stoltenberg','keanu23@example.com','+74435786395239','2020-03-09 10:59:13','2020-03-11 17:55:19'),(63,'Aisha','Kuvalis','collier.bianka@example.net','+719996906293885','2020-03-09 10:59:13','2020-03-11 17:55:19'),(64,'Henderson','Lehner','randi87@example.com','+781828222802013690','2020-03-09 10:59:13','2020-03-11 17:55:19'),(65,'Harmon','Mante','sienna.reichert@example.org','+705629791851','2020-03-09 10:59:13','2020-03-11 17:55:19'),(66,'Roxane','Crooks','gayle39@example.org','+7616957895846','2020-03-09 10:59:13','2020-03-11 17:55:19'),(67,'Trudie','Prohaska','carmelo80@example.net','+7302996593563178896','2020-03-09 10:59:13','2020-03-11 17:55:19'),(68,'Aryanna','Huel','hkemmer@example.com','+7526931993623162243','2020-03-09 10:59:13','2020-03-11 17:55:19'),(69,'Sophia','Lubowitz','schaden.adrain@example.net','+74609792298069','2020-03-09 10:59:13','2020-03-11 17:55:19'),(70,'Felton','Stark','xgrimes@example.net','+7385903798948','2020-03-09 10:59:13','2020-03-11 17:55:19'),(71,'Laurie','Corwin','gschneider@example.com','+719614991494142','2020-03-09 10:59:13','2020-03-11 17:55:19'),(72,'Devin','Treutel','jaydon.metz@example.net','+719039994496059','2020-03-09 10:59:13','2020-03-11 17:55:19'),(73,'Missouri','Pagac','blanche12@example.net','+74002824263131818','2020-03-09 10:59:13','2020-03-11 17:55:19'),(74,'Jean','O\'Conner','wilkinson.isobel@example.org','+7+134778153259539','2020-03-09 10:59:13','2020-03-11 17:55:19'),(75,'Arjun','Mann','yboyle@example.org','+74112798263831239','2020-03-09 10:59:13','2020-03-11 17:55:19'),(76,'Price','Kuphal','rheidenreich@example.org','+7572905197439','2020-03-09 10:59:13','2020-03-11 17:55:19'),(77,'Neil','Batz','ettie.weissnat@example.com','+7858923193115149847','2020-03-09 10:59:13','2020-03-11 17:55:19'),(78,'Tara','Schaefer','aurore09@example.net','+79912414238411137','2020-03-09 10:59:13','2020-03-11 17:55:19'),(79,'Aurelio','Auer','predovic.roxanne@example.com','+719387997496642','2020-03-09 10:59:13','2020-03-11 17:55:19'),(80,'Ava','Walter','dorothy65@example.net','+71966091959635818982','2020-03-09 10:59:13','2020-03-11 17:55:19'),(81,'Allison','Bruen','harber.greg@example.net','+7063993992833','2020-03-09 10:59:13','2020-03-11 17:55:19'),(82,'Chasity','Runte','kellie.funk@example.com','+74539733195856','2020-03-09 10:59:13','2020-03-11 17:55:19'),(83,'Delta','Daniel','tad.hickle@example.net','+719613967899061','2020-03-09 10:59:13','2020-03-11 17:55:19'),(84,'Dusty','Batz','bthompson@example.net','+701439662562','2020-03-09 10:59:13','2020-03-11 17:55:19'),(85,'Dusty','Murray','elisa26@example.org','+719410966193922','2020-03-09 10:59:13','2020-03-11 17:55:19'),(86,'Dante','O\'Conner','rolando17@example.com','+74406735490992','2020-03-09 10:59:13','2020-03-11 17:55:19'),(87,'Stewart','Douglas','zgutkowski@example.com','+719932902899649','2020-03-09 10:59:13','2020-03-11 17:55:19'),(88,'Jasen','Bartell','jed.mills@example.net','+7+904371297187056','2020-03-09 10:59:13','2020-03-11 17:55:19'),(89,'Maye','Hermiston','madaline.borer@example.com','+7952953796036','2020-03-09 10:59:13','2020-03-11 17:55:19'),(90,'Stevie','Spencer','gaylord.loma@example.com','+709137114865','2020-03-09 10:59:13','2020-03-11 17:55:19'),(91,'Hilbert','Pollich','hickle.jamar@example.org','+719532913098890','2020-03-09 10:59:13','2020-03-11 17:55:19'),(92,'Zechariah','Walsh','kautzer.carlotta@example.org','+7+464074045323190','2020-03-09 10:59:13','2020-03-11 17:55:19'),(93,'Joanny','D\'Amore','hwhite@example.net','+7+504777371900109','2020-03-09 10:59:13','2020-03-11 17:55:19'),(94,'Mariela','Mann','marcos.fritsch@example.com','+7197819173970351941','2020-03-09 10:59:13','2020-03-11 17:55:19'),(95,'Viola','Conroy','blake39@example.net','+7470244926856106880','2020-03-09 10:59:13','2020-03-11 17:55:19'),(96,'Macey','Murphy','thad87@example.com','+7+304379690215412','2020-03-09 10:59:13','2020-03-11 17:55:19'),(97,'Kimberly','Metz','khettinger@example.net','+7435237827523','2020-03-09 10:59:13','2020-03-11 17:55:19'),(98,'Malvina','Bahringer','terrence.donnelly@example.org','+719619949996110','2020-03-09 10:59:13','2020-03-11 17:55:19'),(99,'Ali','Watsica','murray.stanford@example.com','+7458078969389317441','2020-03-09 10:59:13','2020-03-11 17:55:19'),(100,'Jaylon','Oberbrunner','rippin.deborah@example.com','+719536989492302165684','2020-03-09 10:59:13','2020-03-11 17:55:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 12:01:15
