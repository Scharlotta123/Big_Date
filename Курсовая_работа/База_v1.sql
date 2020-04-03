CREATE DATABASE  IF NOT EXISTS `mfc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mfc`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mfc
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
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim` (
  `claim_nomber` int unsigned NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `department_id` int unsigned NOT NULL,
  `topic_id` int unsigned NOT NULL,
  `body` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plase_consultation_id` int unsigned NOT NULL,
  `creat_plase_id` int unsigned NOT NULL,
  `mfc_id` int unsigned DEFAULT NULL,
  `reception_id` int unsigned NOT NULL,
  `user_registrator_id` int unsigned NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`claim_nomber`),
  KEY `fk_claim_status_id` (`status_id`),
  KEY `fk_claim_user_id` (`user_id`),
  KEY `fk_claim_department_id` (`department_id`),
  KEY `fk_claim_topic_id` (`topic_id`),
  KEY `fk_claim_plase_consultation_id` (`plase_consultation_id`),
  KEY `fk_claim_mfc_id` (`mfc_id`),
  KEY `fk_claim_reception_id` (`reception_id`),
  KEY `fk_claim_user_registrator_id` (`user_registrator_id`),
  KEY `fk_claim_creatplase_id` (`creat_plase_id`),
  CONSTRAINT `fk_claim_creatplase_id` FOREIGN KEY (`creat_plase_id`) REFERENCES `creat_plase` (`id`),
  CONSTRAINT `fk_claim_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_claim_mfc_id` FOREIGN KEY (`mfc_id`) REFERENCES `offis_mfc` (`id`),
  CONSTRAINT `fk_claim_plase_consultation_id` FOREIGN KEY (`plase_consultation_id`) REFERENCES `plase_consultation` (`id`),
  CONSTRAINT `fk_claim_reception_id` FOREIGN KEY (`reception_id`) REFERENCES `reception` (`id`),
  CONSTRAINT `fk_claim_status_id` FOREIGN KEY (`status_id`) REFERENCES `claim_status` (`id`),
  CONSTRAINT `fk_claim_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`),
  CONSTRAINT `fk_claim_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_claim_user_registrator_id` FOREIGN KEY (`user_registrator_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES (1,'2020-02-12 03:56:19',8,21,9,6,'Adipisci et sapiente quidem reprehenderit quae nostrum saepe quae. Temporibus ut consectetur cumque. Consequatur magnam porro sequi ut quasi saepe. Saepe natus qui omnis veritatis similique.',1,1,NULL,64,87,'2020-03-31 13:57:19'),(2,'2019-08-04 18:16:51',3,5,8,7,'Impedit nobis rerum in. Voluptate autem at labore fugit voluptate. Sunt dolor reprehenderit ipsa molestias blanditiis qui ipsum.',1,2,NULL,48,5,'2020-03-31 13:58:44'),(3,'2019-11-28 15:12:16',6,47,6,17,'Assumenda laudantium nulla sapiente non aut at id. Voluptatum et sint tempora similique voluptas et omnis accusantium. Repellat eos veniam et dignissimos optio aperiam provident. Nemo eos eum dolorum assumenda.',2,1,6,31,81,'2019-01-16 13:06:02'),(4,'2019-01-27 19:06:33',5,7,7,16,'Ad omnis voluptatem eum. Eum voluptate esse qui nesciunt excepturi facilis sequi. Incidunt cumque debitis voluptatem voluptatibus asperiores consequuntur enim dolorem.',2,1,10,87,81,'2020-02-04 00:15:06'),(5,'2019-09-11 00:41:19',2,31,9,13,'Iusto ut quos unde qui quis. Ut nostrum sapiente at et mollitia exercitationem quisquam. Aut veniam alias accusamus iste illo. Illo id consequatur recusandae dolores.',1,2,NULL,72,31,'2020-03-31 13:58:44'),(6,'2019-07-15 07:05:33',2,48,7,12,'Mollitia consequatur voluptatem ipsum cumque et est. Debitis ipsum et laboriosam est. Sit similique eveniet quis molestiae qui dolores atque excepturi.',1,1,NULL,2,89,'2020-03-31 13:57:19'),(7,'2019-02-20 22:04:26',6,60,7,4,'Et corporis enim qui placeat praesentium qui ea. Officia esse fuga expedita ipsam rerum in. Rerum laborum quo fuga occaecati officia hic quia aliquam. Aut et dolore vel debitis a eveniet et.',1,2,NULL,4,60,'2020-03-31 13:58:44'),(8,'2020-02-24 22:47:36',4,60,5,12,'Ut nihil magni et est error repellendus modi. Aspernatur et in mollitia ut consequatur maiores est. Pariatur ab ipsa dolorum quam quia aperiam. Fugiat sit vel quibusdam dolor.',2,2,10,62,60,'2020-03-31 13:58:44'),(9,'2020-02-19 00:27:46',3,21,5,6,'Qui deleniti a neque. Ut sit est nostrum voluptatem. Voluptates vel aspernatur maiores et sit. Vel ea voluptatem id qui omnis velit inventore doloribus.',1,2,NULL,40,21,'2020-03-31 13:58:44'),(10,'2019-01-03 05:28:02',6,4,4,12,'Eos unde ipsa quia ea quam ipsum. Aut expedita corporis omnis aut corrupti consequuntur voluptas cum. Sed ab voluptatem similique sit blanditiis vitae at.',2,1,8,14,98,'2020-03-04 17:10:09'),(11,'2019-10-10 15:39:46',3,10,9,10,'Culpa tenetur mollitia velit et iusto. Quia qui vel aperiam blanditiis harum non. Rem rem id ab atque quam assumenda dolorem eaque.',1,2,NULL,62,10,'2020-03-31 13:58:44'),(12,'2019-02-03 20:47:50',9,41,1,9,'Dolorum asperiores et ipsa fuga voluptatem nihil sunt rerum. Consequatur illo debitis est qui eaque libero autem. Ea et atque officia nisi.',2,2,4,30,41,'2020-03-31 13:58:44'),(13,'2020-01-07 02:03:02',5,38,8,20,'Asperiores maiores voluptas aut voluptatem quae. Non deserunt sint nulla nostrum enim aut sapiente eum. Qui debitis dignissimos pariatur fugiat.',1,2,NULL,33,38,'2020-03-31 13:58:44'),(14,'2019-11-09 03:40:19',6,56,3,1,'Quis amet ratione enim consequatur facilis qui illum. Repudiandae nemo non et eligendi quo. Repudiandae inventore laudantium animi quae quia. Dolores quia modi debitis debitis ex.',2,2,10,74,56,'2020-03-31 13:58:44'),(15,'2019-05-17 07:21:25',1,5,9,20,'Rem vel cupiditate quia quia nemo. Illum consequatur rerum voluptatum. Dolores et itaque nihil minima autem nihil. Numquam earum aut recusandae voluptas. Est enim occaecati commodi aperiam.',1,2,NULL,22,5,'2020-03-31 13:58:44'),(16,'2019-01-10 22:13:30',3,36,7,8,'Praesentium harum hic alias voluptatum enim pariatur magni. Delectus amet quaerat accusamus rem ut. Et quia nesciunt aut odio vel. Ex quae animi voluptatem molestiae consectetur nesciunt autem saepe.',1,2,NULL,10,36,'2020-03-31 13:58:44'),(17,'2019-09-09 12:03:35',8,16,4,2,'Repellat dolorem et sed rerum vero voluptas. Qui nobis aut ipsum animi. Id animi tenetur deleniti nisi. Nam aut voluptatem enim. Rerum tempora animi quaerat dolores fugiat.',1,1,NULL,85,96,'2020-03-31 13:57:19'),(18,'2019-11-23 08:17:16',8,38,9,16,'Veritatis eos sed maxime alias at minus. Velit quis ea commodi itaque quo exercitationem dolorem.',2,1,9,27,94,'2019-07-31 03:41:56'),(19,'2019-12-01 22:55:30',5,62,1,18,'Repellat aut voluptas asperiores delectus cumque id non. Autem et qui et beatae. Facilis quis vel nihil facere laudantium omnis voluptas.',1,2,NULL,37,62,'2020-03-31 13:58:44'),(20,'2019-01-24 21:47:53',5,59,4,10,'Quo sed rerum ullam ea quo dolor. Sint in sed et quia. Aspernatur saepe labore nostrum vel.',1,1,NULL,34,83,'2020-03-31 13:57:19'),(21,'2019-06-25 05:43:02',1,25,4,9,'Suscipit dignissimos dicta mollitia exercitationem. Dolores voluptas ut impedit nobis ut accusamus ea. Facere commodi esse id delectus similique.',1,1,NULL,21,89,'2020-03-31 13:57:19'),(22,'2019-10-20 13:29:15',8,27,10,9,'Ipsa id incidunt laudantium. Nesciunt repellendus placeat qui delectus. Commodi quod dicta nostrum aperiam reiciendis fugiat porro. Rerum sequi id aut sit libero est minus. Deleniti velit laboriosam odio itaque necessitatibus.',1,2,NULL,22,27,'2020-03-31 13:58:44'),(23,'2019-06-21 01:27:37',2,36,2,16,'Quod ratione ea voluptatem accusantium. Eaque numquam autem tempora mollitia dolores facilis.',2,1,2,34,94,'2019-03-05 08:48:59'),(24,'2020-03-04 12:47:43',6,32,1,4,'Cumque asperiores recusandae reprehenderit optio. Qui et ea hic laudantium consequuntur. Voluptatem aut in est consequatur reprehenderit tenetur excepturi deserunt. Ut velit eveniet nisi voluptatem officia facilis.',1,1,NULL,13,99,'2020-03-31 13:57:19'),(25,'2019-03-15 09:43:21',9,58,8,6,'Aut maiores sint commodi maiores rerum et veritatis. Possimus vero possimus voluptates repellat. Dolorem et iure est aut.',2,1,5,71,97,'2019-04-22 22:21:23'),(26,'2019-03-24 16:00:59',9,46,8,16,'Voluptates veritatis veniam id voluptatem modi occaecati maiores. Mollitia harum rem sapiente aut quos fuga. Ab sed vel vero qui eaque.',1,2,NULL,73,46,'2020-03-31 13:58:44'),(27,'2019-02-21 01:46:00',1,67,9,12,'Et autem et voluptas qui labore. Et dignissimos non optio ipsam. Corporis qui et corporis atque at autem quasi.',2,1,9,78,95,'2019-10-31 08:09:41'),(28,'2019-08-12 12:47:22',6,36,8,12,'Quam sunt et ullam et. Possimus earum eum voluptatem dolor vel hic. Amet doloremque cumque est repellat possimus excepturi quia.',1,1,NULL,44,96,'2020-03-31 13:57:19'),(29,'2019-07-06 05:02:45',5,64,7,5,'Amet earum id modi. Fugit culpa dicta veritatis nemo consequuntur.',2,2,8,73,64,'2020-03-31 13:58:44'),(30,'2019-06-18 23:29:31',9,12,4,2,'Et repellendus corporis assumenda beatae inventore aut. Natus rem accusantium perspiciatis excepturi. Aut qui perspiciatis laboriosam nostrum rem.',2,1,10,43,95,'2020-01-27 03:02:23'),(31,'2019-11-08 20:55:52',6,64,7,6,'Laboriosam vel deleniti aspernatur reiciendis quis vel. Sequi veniam natus nisi in et.',1,1,NULL,6,94,'2020-03-31 13:57:19'),(32,'2019-04-02 04:52:21',7,15,8,13,'Debitis ut voluptatum non ut. Ducimus qui sunt alias voluptatem dolor qui quasi. Dolorem sint possimus explicabo minima alias cum veritatis. Modi commodi vitae voluptas laboriosam.',1,2,NULL,5,15,'2020-03-31 13:58:44'),(33,'2020-01-18 09:40:48',7,42,4,1,'Sapiente amet accusantium adipisci ea. Qui sequi est tempore dolorem dolorum ea minima qui. Suscipit officiis perferendis temporibus accusamus.',1,1,NULL,63,86,'2020-03-31 13:57:19'),(34,'2019-02-11 03:24:38',5,6,9,7,'Nihil iure consequatur repellendus ex itaque omnis error. Blanditiis doloribus rerum a sint temporibus. Sit distinctio voluptas sit nulla nesciunt totam. Veritatis rerum maiores sapiente aut sunt omnis.',2,2,4,25,6,'2020-03-31 13:58:44'),(35,'2019-08-08 14:00:40',6,13,2,1,'Corporis beatae deserunt assumenda. Nulla asperiores ex aliquam quia ad exercitationem. Quo vero sed sit ipsum recusandae maiores. Facilis doloribus iusto aspernatur qui quo sed.',1,1,NULL,4,94,'2020-03-31 13:57:19'),(36,'2019-07-08 11:37:14',4,33,3,11,'Aliquam dicta minima ex incidunt autem. Blanditiis eaque molestiae omnis necessitatibus voluptas laudantium. Magni ipsum neque animi error perspiciatis rerum. Sunt ipsam qui molestias sapiente eligendi cupiditate fuga similique.',1,1,NULL,30,94,'2020-03-31 13:57:19'),(37,'2020-03-18 13:18:12',3,4,9,20,'Eius totam ad libero earum quia non eveniet. Quaerat molestiae quae qui veniam perferendis. Aut similique rerum necessitatibus odit et itaque. Qui commodi blanditiis quos vel quidem ullam velit.',1,1,NULL,20,90,'2020-03-31 13:57:19'),(38,'2019-06-08 19:23:01',9,36,4,20,'Quia veritatis quia impedit ea adipisci. Ipsum voluptatibus natus quae rem. Aliquid quae dolores iste porro qui et. Atque minus veniam voluptatibus facilis. Aperiam et labore perspiciatis iste vel nobis et.',2,2,9,50,36,'2020-03-31 13:58:44'),(39,'2019-04-03 05:18:18',4,65,1,10,'Est et fugiat nisi minus et. Dolorem sed qui qui repellat fuga quis. Autem fuga vero molestias et.',1,2,NULL,5,65,'2020-03-31 13:58:44'),(40,'2019-07-08 13:11:19',8,50,2,3,'Ipsa voluptates inventore consequuntur et unde dolor voluptatibus. Quod voluptatem nemo sit maxime autem. Quia quia doloribus voluptates et ea est et. Ducimus est est beatae minima velit corrupti.',1,1,NULL,82,95,'2020-03-31 13:57:19'),(41,'2019-09-25 02:03:09',5,36,4,5,'Id quis quia culpa velit veniam qui et. Quas laboriosam voluptas a distinctio harum veritatis fuga. Dignissimos dolor voluptas quidem facilis aut nostrum aut praesentium. Illum non aut reprehenderit voluptatem voluptatem. Autem repellat commodi qui porro.',2,2,9,36,36,'2020-03-31 13:58:44'),(42,'2020-01-10 07:45:08',7,7,4,18,'Ad repudiandae nulla et et maiores architecto dolore. Est repellat doloremque sapiente doloremque est blanditiis nisi. Quam corrupti dolores voluptatem optio voluptate dignissimos dolorem et.',2,2,1,26,7,'2020-03-31 13:58:44'),(43,'2019-01-04 13:45:29',3,66,4,19,'Aut ut vero ea. Rerum consequatur debitis nulla qui animi. Autem molestias quae accusantium itaque quaerat dolorem tenetur ipsa.',1,2,NULL,85,66,'2020-03-31 13:58:44'),(44,'2020-01-03 17:23:19',9,51,7,6,'Et molestias omnis debitis rem fugiat ratione. Ea voluptates distinctio id voluptatem aut unde. Repellendus et natus vitae ullam qui quia natus.',2,1,9,59,93,'2019-03-27 22:56:06'),(45,'2019-06-19 11:58:57',5,56,10,5,'Tempore nulla doloribus fugit quia. Ipsam quia inventore iste facilis quibusdam. Quibusdam esse odio assumenda hic mollitia eum.',1,2,NULL,39,56,'2020-03-31 13:58:44'),(46,'2020-02-06 00:46:09',4,15,7,3,'Possimus deserunt et laudantium. A beatae quis doloremque facere architecto consectetur. Earum quod nihil ab consequatur. Perspiciatis sint ab sed voluptas ut aut qui reprehenderit. Quae hic ea accusamus nam cupiditate possimus ut.',1,2,NULL,34,15,'2020-03-31 13:58:44'),(47,'2019-01-03 06:50:33',3,29,4,16,'Nesciunt autem distinctio at omnis nihil unde sit dolorum. Doloribus voluptatem aut qui quos asperiores repellat ducimus. Dolorum molestiae eos odio aut rerum perspiciatis autem tempora.',2,1,7,75,83,'2019-02-03 17:47:59'),(48,'2019-09-18 16:02:36',8,60,7,1,'Adipisci labore qui in occaecati quas ullam quaerat nemo. Non quo explicabo qui nam ducimus. Consequatur provident aperiam nostrum blanditiis.',2,2,5,51,60,'2020-03-31 13:58:44'),(49,'2019-10-09 17:14:02',4,12,4,8,'Nulla officia praesentium delectus. Expedita et aperiam adipisci facilis in. Quia nulla in assumenda accusantium sit ipsam error. Est et voluptatem aspernatur laboriosam.',1,1,NULL,37,99,'2020-03-31 13:57:19'),(50,'2020-01-19 23:21:03',1,50,3,6,'Delectus accusamus soluta dolorum natus. Maxime nisi pariatur maiores quas rerum. Quisquam libero nihil nihil officiis blanditiis quia.',1,2,NULL,89,50,'2020-03-31 13:58:44'),(51,'2019-07-15 00:43:25',9,5,3,1,'Molestiae quos minus doloremque ea molestiae dolorum. Mollitia consequatur rerum est aliquam. Nam qui iste sed eos laborum debitis.',1,2,NULL,22,5,'2020-03-31 13:58:44'),(52,'2019-10-05 22:52:13',2,60,7,7,'Neque aliquid quia tenetur nobis repellendus voluptatem. Placeat praesentium totam earum. Sequi in occaecati sit cupiditate quas numquam quidem. Dolore et molestiae deleniti nihil odio.',1,2,NULL,37,60,'2020-03-31 13:58:44'),(53,'2019-08-25 17:33:56',8,27,5,19,'Quis repellat aut error. Est omnis rerum vitae repudiandae distinctio sed deserunt. Et vel quisquam nemo et est.',2,1,6,6,96,'2019-07-26 17:19:05'),(54,'2019-01-19 08:26:44',5,17,2,4,'Commodi atque autem rem facere rerum. Quia maiores tenetur nobis qui quis est. Beatae et distinctio tempora ea nisi sunt provident numquam.',2,2,8,36,17,'2020-03-31 13:58:44'),(55,'2019-02-28 04:45:58',7,19,9,16,'Sint incidunt labore velit voluptas eveniet repellat. Facere laborum ut in voluptatum omnis. Dolorem quo fuga natus ipsum repellat blanditiis earum.',2,2,4,39,19,'2020-03-31 13:58:44'),(56,'2019-12-03 16:25:18',8,49,7,20,'Voluptatum molestiae cum ea corporis voluptatem vel. A enim non quaerat amet corporis voluptatem sed. Sint id autem ut ab quasi. Corporis nesciunt fugiat ducimus iste.',1,2,NULL,48,49,'2020-03-31 13:58:44'),(57,'2019-06-29 10:11:01',6,58,4,18,'Qui laborum qui cum facere nisi. Deleniti accusamus saepe molestiae est provident voluptas doloribus culpa. Odio quis asperiores omnis in nostrum consectetur.',1,2,NULL,37,58,'2020-03-31 13:58:44'),(58,'2019-12-08 22:26:22',3,68,6,5,'Sed dolor suscipit facere ducimus. Veritatis ea ut dicta eum laboriosam nihil. Qui iusto sed consequatur enim facere quisquam recusandae. Ut voluptas et debitis quaerat.',1,2,NULL,73,68,'2020-03-31 13:58:44'),(59,'2019-12-17 08:53:26',2,37,7,20,'Nemo excepturi nisi sit. Odio voluptatem eum possimus consectetur beatae. Modi dolore dolorem voluptas voluptatem et vel est. Veritatis nam sint voluptatum aut est ea quo in.',1,2,NULL,86,37,'2020-03-31 13:58:44'),(60,'2020-12-29 06:33:11',6,10,6,10,'Non nam facilis laudantium. Quasi iure quam suscipit tempore eum nostrum delectus. Non impedit distinctio itaque assumenda omnis et iste. Aut et consequatur expedita tenetur labore distinctio est.',1,1,NULL,75,88,'2020-03-31 17:51:59'),(61,'2019-04-08 11:16:37',5,66,4,4,'Illum nemo nihil ullam aut eos. Et saepe praesentium at at perferendis quo vel. Ut possimus qui dolores excepturi. Quasi ea et atque doloremque nam doloribus deleniti culpa.',2,2,10,6,66,'2020-03-31 13:58:44'),(62,'2019-08-23 02:17:49',9,2,7,12,'Iure illum esse dicta voluptatibus at rem aut. Suscipit hic eos et dignissimos quos. Debitis et ducimus mollitia. Repudiandae et ea nihil delectus nostrum quia nobis.',1,1,NULL,41,82,'2020-03-31 13:57:19'),(63,'2019-04-14 14:21:03',4,14,6,7,'Quia atque et nam velit unde qui eveniet aut. Quia possimus expedita ut. Ex minus odit quasi quos.',1,2,NULL,8,14,'2020-03-31 13:58:44'),(64,'2019-10-26 03:54:14',5,44,8,8,'Repellat sapiente quia sed qui. Culpa eius facilis vel ipsa ea quasi. Totam et sint magnam. Nemo labore sed repellat ut quae ea optio.',1,1,NULL,85,86,'2020-03-31 13:57:19'),(65,'2019-08-18 06:24:03',4,41,7,5,'Quia quos inventore qui dolor. Ipsum sed reiciendis assumenda aperiam voluptatem quisquam. Assumenda blanditiis et maxime tempora a qui laboriosam.',1,1,NULL,79,96,'2020-03-31 13:57:19'),(66,'2019-03-03 06:49:54',9,54,1,13,'Officia qui iure rerum qui totam. Quo quam magni ut asperiores atque sunt. Reiciendis molestiae sit et similique magnam vel maiores qui. Ut non exercitationem consequatur distinctio corporis.',1,1,NULL,74,95,'2020-03-31 13:57:19'),(67,'2020-03-27 17:19:27',9,20,8,13,'Fugiat nihil minus deserunt error et. Facere saepe voluptas dolorem repellat qui dolor. Sed in expedita dicta quo cupiditate quam sit.',1,1,NULL,22,83,'2020-03-31 13:57:19'),(68,'2019-11-02 12:38:42',6,7,1,18,'Repudiandae porro quia fugiat voluptatibus. Consequatur eos est possimus. A ut amet adipisci porro sed. Et eaque aut in et.',2,1,2,79,85,'2019-08-14 22:57:06'),(69,'2019-12-25 18:29:02',8,46,6,14,'Quia quasi facere laudantium deserunt. Deleniti amet totam id error. Ducimus magnam cupiditate provident autem et.',2,2,3,39,46,'2020-03-31 13:58:44'),(70,'2019-01-23 11:29:00',6,60,5,20,'Est sunt blanditiis magni nihil. Hic dolores illum architecto asperiores consectetur quas. Occaecati maxime neque voluptatum porro aut consequatur et.',2,1,10,9,95,'2019-03-19 14:54:48'),(71,'2019-02-20 05:14:55',9,19,5,18,'Voluptas quia voluptatum quia enim temporibus culpa ut consequatur. Et ut accusamus vero qui. Dolor temporibus rerum modi est ullam aut.',2,2,10,47,19,'2020-03-31 13:58:44'),(72,'2019-08-23 14:41:30',5,53,6,6,'Nobis quasi nostrum nemo beatae deleniti sed. In architecto omnis eligendi tempore quia autem facere.',1,1,NULL,24,85,'2020-03-31 13:57:19'),(73,'2019-11-19 04:22:29',1,53,10,4,'Vero eaque ab dolor nesciunt eius ipsa. Enim iure ab id labore. Nihil quisquam id error perferendis velit doloribus qui consequatur. Possimus beatae dolor sed ut dolores nam aperiam.',2,1,4,79,86,'2020-01-09 06:27:14'),(74,'2019-12-11 04:40:06',2,65,7,9,'Nobis laborum suscipit vel nobis enim. Culpa reprehenderit eaque vel voluptas. Sed exercitationem ullam culpa.',2,1,9,45,88,'2019-02-19 06:35:24'),(75,'2019-01-22 22:00:59',1,46,8,16,'Nihil fugiat eligendi consequuntur quis. Possimus saepe dolor velit velit perferendis.',1,2,NULL,77,46,'2020-03-31 13:58:44'),(76,'2020-02-12 15:48:09',9,57,8,1,'Officia cumque officiis voluptatem cupiditate. Exercitationem quam debitis similique minus ab occaecati occaecati.',2,1,9,81,82,'2019-04-12 00:19:05'),(77,'2019-08-25 09:35:59',4,24,2,19,'Sapiente aut maiores dolore sapiente modi. Similique id aut totam voluptas deleniti aliquam. Itaque quasi impedit aliquid.',2,1,2,58,86,'2020-03-21 03:54:59'),(78,'2019-05-09 12:30:39',4,67,10,19,'Tenetur alias et doloribus error est omnis voluptas. Voluptate vitae qui quo quaerat sunt. Non sint occaecati perspiciatis aperiam.',1,2,NULL,14,67,'2020-03-31 13:58:44'),(79,'2019-09-30 16:08:26',8,19,2,20,'Ut iusto autem perspiciatis quia quis nobis fugit. Modi laborum sunt quo sequi similique veritatis libero. Tempore natus voluptatum quos eveniet voluptate quisquam.',1,2,NULL,40,19,'2020-03-31 13:58:44'),(80,'2019-04-20 15:33:37',9,52,3,19,'Consectetur ea sunt asperiores quas atque sint. Doloribus doloremque nihil id odit libero fuga blanditiis. Ad rerum ea explicabo eos beatae.',2,1,1,60,100,'2020-01-14 12:43:07'),(81,'2019-05-30 05:07:21',8,63,2,1,'Et recusandae consequatur nostrum ut ad nesciunt. Optio et neque incidunt dignissimos consectetur eos consequatur exercitationem. Fugit accusantium aut dolorem mollitia vel.',1,2,NULL,10,63,'2020-03-31 13:58:44'),(82,'2019-12-03 04:32:31',8,30,6,1,'Sit qui ipsum quas. Possimus dolor est assumenda laborum incidunt eaque quia. A deleniti qui sit veniam.',1,1,NULL,44,93,'2020-03-31 13:57:19'),(83,'2019-05-29 07:16:21',6,29,2,10,'Et nulla aspernatur at error non sint nostrum. Mollitia debitis voluptatem autem quod aperiam quaerat ut. Libero fuga qui ab nam voluptatibus atque. Minima harum et dicta et aspernatur.',2,1,6,36,86,'2020-01-09 18:48:31'),(84,'2019-02-11 18:08:24',2,34,9,15,'Voluptate fugit aliquam omnis voluptas non facere minus. Deserunt ea odio sunt. Quasi ut est rerum labore sequi velit quam temporibus.',2,2,5,82,34,'2020-03-31 13:58:44'),(85,'2019-11-10 04:23:03',3,17,4,12,'Sequi ea quis recusandae sed est illo excepturi veniam. Ipsum sunt qui modi voluptatem reiciendis. Quia quaerat a et ratione.',1,1,NULL,18,98,'2020-03-31 13:57:19'),(86,'2019-06-11 19:11:14',4,60,4,20,'Dolores delectus minus ea est ex. Consequatur nam et ut maiores. Nulla nihil provident qui non aut. Sed qui nostrum aut illo.',1,2,NULL,8,60,'2020-03-31 13:58:44'),(87,'2019-05-17 02:57:45',6,53,1,7,'Voluptas dolores deserunt in vitae perferendis quis nihil. Aspernatur minima dicta enim voluptatem. Eligendi reiciendis mollitia atque ratione consectetur fuga.',1,2,NULL,64,53,'2020-03-31 13:58:44'),(88,'2020-03-24 00:30:43',4,69,8,17,'Doloribus nihil at maxime inventore molestiae voluptates. Consequatur dolorum eius voluptates ducimus velit accusamus. Sint et dolor deleniti culpa et voluptatem quia. Aperiam est non dolore et et sunt id. Nisi iste aspernatur cumque.',1,2,NULL,84,69,'2020-03-31 13:58:44'),(89,'2020-03-26 02:47:00',1,52,8,6,'Perferendis libero laboriosam qui distinctio ex alias est. Aut aliquid mollitia soluta dignissimos aliquam. Nam eius totam culpa. Magnam totam minima nihil.',1,1,NULL,67,82,'2020-03-31 13:57:19'),(90,'2019-11-20 17:37:29',7,51,1,11,'Id autem qui omnis sequi explicabo et nostrum dolor. Consequuntur a molestias nam consequatur suscipit qui. Impedit libero vel velit cum aperiam quia explicabo minus. Optio quam aut et voluptatibus adipisci quod eligendi. Itaque rem amet porro.',2,1,5,71,85,'2019-02-14 12:53:08'),(91,'2019-08-11 17:22:11',8,21,1,12,'Ut quis dolor non et provident quis. Quia sint omnis ut explicabo officia eligendi. Blanditiis sed earum error alias vel quo amet. Eius id sed unde reiciendis laudantium suscipit non inventore. Pariatur quaerat ex in.',1,1,NULL,88,94,'2020-03-31 13:57:19'),(92,'2020-02-10 06:19:12',9,42,7,6,'Vero sunt soluta voluptatem. Hic tempore provident aut velit non. Explicabo et aliquam tempore quod error incidunt.',2,1,3,62,90,'2019-04-28 14:25:01'),(93,'2019-03-03 20:13:14',8,38,6,17,'Quia quia ut molestias iusto. Neque ea aperiam minus aut sint. Id ut repellat illum iste delectus quae doloribus. Nihil voluptate officiis voluptas.',1,1,NULL,90,92,'2020-03-31 13:57:19'),(94,'2020-03-21 05:34:55',2,44,4,20,'Sed voluptatem et amet iste sit voluptatem enim. Reprehenderit distinctio voluptate ratione vitae. Natus tempora neque sunt fuga consequuntur. Ut eveniet quia soluta est dolorem est et est.',2,2,6,38,44,'2020-03-31 13:58:44'),(95,'2019-03-05 10:19:57',3,5,2,18,'Sed sequi libero dignissimos sit unde ullam odit. Eos est aut sit est. Amet minima aperiam ratione unde quos unde qui.',2,2,3,45,5,'2020-03-31 13:58:44'),(96,'2019-07-09 03:51:54',5,37,10,4,'Numquam odio repudiandae soluta. Fuga sit consequatur quia error. Sed nulla cupiditate voluptatem quo et.',1,2,NULL,82,37,'2020-03-31 13:58:44'),(97,'2019-05-10 23:10:41',6,23,6,11,'Rem neque minus molestias perferendis explicabo. Voluptas impedit nam voluptas earum voluptatem qui magnam quo. Dolor labore voluptas quam et illo et. Modi voluptas pariatur qui distinctio praesentium facere optio.',1,2,NULL,60,23,'2020-03-31 13:58:44'),(98,'2019-06-21 05:16:56',4,69,8,18,'Quam atque fugiat voluptate. Voluptatem similique odio quibusdam sunt. Nihil perspiciatis delectus ipsum adipisci odit distinctio.',1,1,NULL,23,87,'2020-03-31 13:57:19'),(99,'2019-08-05 09:32:51',7,29,1,2,'Atque qui cumque quos excepturi pariatur quo. Distinctio enim sint quaerat nemo ab sed iste. Atque quia quae reiciendis in. Nihil eos fugit aut id ut voluptatem.',1,2,NULL,65,29,'2020-03-31 13:58:44'),(100,'2020-02-07 03:10:24',5,33,6,19,'Doloremque enim ea ab hic saepe. Molestias odit perspiciatis sapiente aspernatur provident. Earum architecto ut fugit repellat rerum officia quo. Unde et adipisci ea autem eius. Quis assumenda ut aut facilis.',2,1,4,32,92,'2019-04-23 22:14:26'),(101,'2020-02-07 03:10:24',5,33,6,19,'Doloremque enim ea ab hic saepe. Molestias odit perspiciatis sapiente aspernatur provident. Earum architecto ut fugit repellat rerum officia quo. Unde et adipisci ea autem eius. Quis assumenda ut aut facilis.',2,1,4,32,92,'2019-04-23 22:14:26');
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `claim_AFTER_INSERT` AFTER INSERT ON `claim` FOR EACH ROW BEGIN
declare id_department int;
set id_department = NEW.department_id;
update departments set claim_sum = claim_sum+1 
where id = id_department; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `claim_status`
--

DROP TABLE IF EXISTS `claim_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim_status`
--

LOCK TABLES `claim_status` WRITE;
/*!40000 ALTER TABLE `claim_status` DISABLE KEYS */;
INSERT INTO `claim_status` VALUES (1,'Новая'),(2,'На рассмотрении'),(3,'На уточнении'),(4,'Принята'),(5,'Отказ'),(6,'Отозвана'),(7,'Назначена консультация'),(8,'Консультация проведена'),(9,'Заявитель не явился');
/*!40000 ALTER TABLE `claim_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creat_plase`
--

DROP TABLE IF EXISTS `creat_plase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creat_plase` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creat_plase`
--

LOCK TABLES `creat_plase` WRITE;
/*!40000 ALTER TABLE `creat_plase` DISABLE KEYS */;
INSERT INTO `creat_plase` VALUES (1,'В офисе МФЦ'),(2,'Свой ПК');
/*!40000 ALTER TABLE `creat_plase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fool_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `claim_sum` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Ministry of Labor and Social Development of RO','Mintrud','Velit officia ipsum et aut enim id qui. Voluptas incidunt quidem doloremque doloremque. Accusantium rerum ad at quia id repellendus enim.','terry84@example.org','+72161015882',0),(2,'Office of the Federal Bailiff Service in the Rostov Region','FSSP Office','Quos nemo et veritatis et modi eum. Voluptatem laboriosam ipsum est dolor. Alias occaecati mollitia quaerat. Sequi explicabo quia molestias qui.','marvin.shaylee@example.com','+78935683626',0),(3,'Ministry of IT and Communications of the RO','Minsvyz','Quo beatae atque non neque debitis ut neque qui. Sequi molestiae officiis nostrum fuga nesciunt nam. Reiciendis reprehenderit ut quasi accusamus. Quod et et laudantium suscipit.','dameon91@example.net','+71195370773',0),(4,'Rostov regional branch of the  \"Association Lawyers\"','Bar Association','Molestiae tempore assumenda rerum ullam itaque earum. Ipsa ipsam soluta occaecati.','darrion.bechtelar@example.net','+75169803251',0),(5,'Department of Property and Land Relations of Rostov','DIZO','Aliquid a sit ut optio. Assumenda omnis odit molestias vero rerum incidunt. Vel labore omnis laudantium ipsum qui unde et. Sequi molestiae aliquam natus non rem eos atque. Dolorem nihil odio architecto sed qui explicabo est.','becker.evie@example.org','+73262904218',0),(6,'Branch of the Pension Fund of the RF in the Rostov','PFR','Nesciunt quaerat sit quaerat minima laudantium omnis suscipit sunt. Non eos sed et esse voluptatem sit voluptates. Qui debitis architecto deserunt sit et neque ea ut.','cynthia.lang@example.net','+78805111613',1),(7,'Office of the Federal Service for Supervision','Rospotrebnadzor','Qui laudantium dolorum commodi voluptas. Sit reiciendis occaecati itaque doloremque eaque.','jordan90@example.net','+76236845693',0),(8,'Agency for Housing Programs','AGP','A voluptatem saepe dolor voluptatem. Omnis sunt necessitatibus rem ab animi. Non itaque blanditiis nobis molestiae eos vel. Et non dolor nulla.','homenick.nichole@example.com','+73768893905',0),(9,'Main Directorate of the Ministry of Internal Affairs ','MVD','Corporis tenetur veritatis id consequatur. Aspernatur temporibus nihil sint facilis.','earnestine73@example.net','+78133932719',0),(10,'Office of the State Registration, Cadastre RO','Kadastr','Dolorum unde et iusto cum. Dignissimos qui doloribus vel vel repellat. Eaque dolorem nesciunt rerum temporibus similique. In dolores quia soluta debitis molestiae quaerat.','mariela.howell@example.org','+71362982165',0);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offis_mfc`
--

DROP TABLE IF EXISTS `offis_mfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offis_mfc` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offis_mfc`
--

LOCK TABLES `offis_mfc` WRITE;
/*!40000 ALTER TABLE `offis_mfc` DISABLE KEYS */;
INSERT INTO `offis_mfc` VALUES (1,'Rostov-on-Don','+75372353425','narciso.lubowitz@example.net','example.com'),(2,'Morozovsk','+71601255918','vicky10@example.net','example.net'),(3,'Gookovo','+78889219585','vida13@example.net','example.org'),(4,'Millerovo','+72642330462','norbert99@example.com','example.net'),(5,'Novochercassk','+73543993822','bartoletti.talon@example.net','example.net'),(6,'Zimovniki','+78792978003','zackery23@example.org','example.org'),(7,'Bataysk','+75332908834','yhayes@example.org','example.net'),(8,'Azov','+78285610432','vpfannerstill@example.com','example.org'),(9,'Aksay','+76429325941','garrison61@example.org','example.com'),(10,'Shakty','+76289798685','jaskolski.julien@example.org','example.com');
/*!40000 ALTER TABLE `offis_mfc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plase_consultation`
--

DROP TABLE IF EXISTS `plase_consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plase_consultation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plase_consultation`
--

LOCK TABLES `plase_consultation` WRITE;
/*!40000 ALTER TABLE `plase_consultation` DISABLE KEYS */;
INSERT INTO `plase_consultation` VALUES (1,'На свое ПК'),(2,'В офисе МФЦ');
/*!40000 ALTER TABLE `plase_consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_admin`
--

DROP TABLE IF EXISTS `profiles_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_admin` (
  `user_id` int unsigned NOT NULL,
  `position_user` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_profiles_admin_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_admin`
--

LOCK TABLES `profiles_admin` WRITE;
/*!40000 ALTER TABLE `profiles_admin` DISABLE KEYS */;
INSERT INTO `profiles_admin` VALUES (1,'admin','2001-03-20 20:00:00','2001-03-20 20:00:00');
/*!40000 ALTER TABLE `profiles_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_citizen`
--

DROP TABLE IF EXISTS `profiles_citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_citizen` (
  `user_id` int unsigned NOT NULL,
  `birth_day` date DEFAULT NULL,
  `snils` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `living_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `serie_dul` int NOT NULL,
  `nomber_dul` int NOT NULL,
  `date_dul` date DEFAULT NULL,
  `issued_by_dul` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `snils` (`snils`),
  CONSTRAINT `fk_profiles_citizen_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_citizen`
--

LOCK TABLES `profiles_citizen` WRITE;
/*!40000 ALTER TABLE `profiles_citizen` DISABLE KEYS */;
INSERT INTO `profiles_citizen` VALUES (1,'1993-02-21','2457447814','973 D\'Amore Green Apt. 090\nEast Samantha, DC ','5786 Allie Pines Apt. 862\nYadiraside, TN 6738',8224,987401,'2007-02-21','679 Turner Mills\nNorth Titus, NJ 13204','2020-03-30 20:40:45','2020-03-30 22:17:37'),(2,'2015-05-23','4660552769','14938 Johnston Knolls Suite 311\nBoscomouth, V','040 Adelle Street\nLake Jamir, CT 17354',6228,625803,'2029-05-23','85199 Rodriguez Points\nPort Sallyborough, WA ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(3,'2013-07-25','5930420681','4983 Bernier Radial Suite 195\nLaylafurt, NJ 5','960 Gudrun Vista Apt. 824\nNew Maxime, TX 4894',5467,966811,'2027-07-25','549 Gayle Village\nCarmellaview, CA 64630','2020-03-30 20:40:45','2020-03-30 22:17:37'),(4,'1981-10-30','5670445376','06605 Morar Village Apt. 941\nLake Bonitaborou','58526 Jeffery Spur Apt. 102\nLake Jaleel, CO 5',7648,156652,'1995-10-30','3482 Fay Prairie Apt. 219\nJohnsmouth, NV 7415','2020-03-30 20:40:45','2020-03-30 22:17:37'),(5,'2000-12-20','9560965112','559 Raynor Mountains Apt. 115\nLemkeland, MI 2','65886 Clair Plaza\nEast Devonte, AZ 61542-0044',2848,482817,'2014-12-20','83224 Goldner Valleys\nNikolausview, MI 46014-','2020-03-30 20:40:45','2020-03-30 22:17:37'),(6,'2008-09-18','2793489720','2162 Connelly Place\nNew Gregoria, DE 99003','063 Shields Wells Apt. 660\nPort Kittyland, MS',8288,944131,'2022-09-18','08601 Bradtke Haven\nO\'Haramouth, NJ 53141','2020-03-30 20:40:45','2020-03-30 22:17:37'),(7,'2017-12-09','2284553535','511 Schinner Crossing Suite 293\nPort Mozelle,','1582 Larkin Prairie Apt. 570\nCorwinfurt, CA 2',4905,472214,'2031-12-09','468 Thompson Mountain Apt. 706\nKaiashire, CO ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(8,'1986-12-10','2042298788','816 Parisian Club Suite 350\nHaleychester, FL ','92105 Krajcik Port Apt. 035\nNew Dulcefort, MO',7657,328675,'2000-12-10','66677 Johns Courts\nRosalindview, TX 47666-905','2020-03-30 20:40:45','2020-03-30 22:17:37'),(9,'1974-02-04','2357833614','5664 Helen Isle\nNorth Janaemouth, MN 65172-93','4177 Larson Forest Suite 486\nSouth Bernice, S',4577,126731,'1988-02-04','025 Cruickshank Shore\nDinaburgh, MN 55081-966','2020-03-30 20:40:45','2020-03-30 22:17:37'),(10,'2005-08-16','4662271981','698 Nolan Wall\nNicoletteburgh, OH 48176','8397 Lynch Shore Apt. 994\nWest Annette, TX 77',7908,447627,'2019-08-16','516 Horacio Mountains Suite 067\nVivienside, M','2020-03-30 20:40:45','2020-03-30 22:17:37'),(11,'1985-10-16','6237859342','03002 Will Fields\nLake Tomshire, OH 26473','267 Jacobson Stravenue\nPort Opalstad, KS 0197',6817,857946,'1999-10-16','83533 Torphy Locks\nMaritzatown, FL 03476-8128','2020-03-30 20:40:45','2020-03-30 22:17:37'),(12,'1976-10-04','7202481047','3716 McLaughlin Run\nBeerstad, DE 14168-7785','268 Pamela Hollow Apt. 948\nWest Herminio, NE ',9358,146857,'1990-10-04','770 Schulist Pass Apt. 984\nSouth Andrew, UT 8','2020-03-30 20:40:45','2020-03-30 22:17:37'),(13,'1993-04-06','7298827487','176 Mack Cliffs Suite 100\nPatiencehaven, ID 0','8406 Zulauf Camp Apt. 354\nAthenabury, KY 1432',7345,760438,'2007-04-06','190 Sandy Lake\nLehnermouth, IN 83832-0354','2020-03-30 20:40:45','2020-03-30 22:17:37'),(14,'1971-11-18','4886694572','113 Chelsea Bridge\nLake Kadenland, MN 69619-7','15566 Jeffry Harbors Suite 092\nArmaniland, OK',7652,561627,'1985-11-18','1527 Chanel Way Apt. 094\nNorth Russell, MN 97','2020-03-30 20:40:45','2020-03-30 22:17:37'),(15,'1990-02-11','1536990676','222 Weber Pine Apt. 969\nCollinsport, LA 15766','3250 Mollie Via Apt. 284\nWest Elainamouth, AK',6226,426819,'2004-02-11','06809 Kenyon Isle\nTheodorafort, AR 47880-0894','2020-03-30 20:40:45','2020-03-30 22:17:37'),(16,'1974-04-10','1024869937','6457 Cordell Overpass Apt. 886\nStonemouth, VT','02461 Ratke Turnpike\nCartwrightside, ID 90259',7176,349215,'1988-04-10','9770 Veum Mill Suite 762\nRyanfort, HI 83742-9','2020-03-30 20:40:45','2020-03-30 22:17:37'),(17,'1980-11-08','8513377930','470 Cartwright Crossroad\nNorth Marinabury, RI','81584 Metz Street\nMertzport, MI 29117',7203,365616,'1994-11-08','12776 Walsh Land\nJaskolskiburgh, SC 17186','2020-03-30 20:40:45','2020-03-30 22:17:37'),(18,'1998-06-10','2492280129','54019 Ullrich Ramp Apt. 901\nWest Kyrahaven, M','899 Meredith Islands Apt. 001\nLeannetown, UT ',4491,680436,'2012-06-10','62598 Windler Locks Apt. 407\nBeahanmouth, DC ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(19,'1982-02-14','3921267123','8686 Jairo Spurs Suite 618\nLake Rosalialand, ','305 Gregg Corner Apt. 795\nNew Cynthia, NC 737',8841,405339,'1996-02-14','5627 Amina Grove\nSouth Verner, MA 17988','2020-03-30 20:40:45','2020-03-30 22:17:37'),(20,'2008-08-10','2129495509','26639 Dach Passage Apt. 809\nAidanland, DE 214','884 Yost Dam Suite 835\nRogahnshire, IA 13669-',2742,785382,'2022-08-10','843 Margot Grove\nLydiafort, SD 98228-2179','2020-03-30 20:40:45','2020-03-30 22:17:37'),(21,'1988-06-26','6883676449','121 Bartoletti Centers\nNorth Scottieville, IN','587 Schmitt Light Suite 456\nLake Aprilmouth, ',4181,810897,'2002-06-26','919 Greenfelder Port Suite 246\nSouth Andreann','2020-03-30 20:40:45','2020-03-30 22:17:37'),(22,'2012-09-11','9029896000','01896 Wisozk Burg\nJorgeview, NV 29329-3048','258 Turcotte Port\nAglaefurt, WV 58633-6106',2682,698341,'2026-09-11','199 Reggie Mission\nGreenside, LA 04893-7462','2020-03-30 20:40:45','2020-03-30 22:17:37'),(23,'2003-05-07','5498450935','0558 Cremin Freeway Apt. 368\nKarianeborough, ','03844 Schowalter Parkway\nMorganbury, AZ 49179',8862,959014,'2017-05-07','0251 Vandervort Loop\nSwaniawskichester, OH 03','2020-03-30 20:40:45','2020-03-30 22:17:37'),(24,'1993-08-31','8402566949','02052 Gorczany Road\nPort Rhoda, OK 33396-0959','9489 Klein Knolls\nO\'Connerview, NV 57009',8274,800053,'2007-08-31','03901 O\'Connell Crossroad Suite 111\nNorth Tea','2020-03-30 20:40:45','2020-03-30 22:17:37'),(25,'1988-07-14','6517482222','52742 Senger Island Apt. 320\nLoubury, WA 6916','935 Amya Lodge Apt. 358\nWest Kennatown, SD 69',4786,123225,'2002-07-14','25414 Durgan Glens Suite 521\nDrakeborough, CT','2020-03-30 20:40:45','2020-03-30 22:17:37'),(26,'1985-02-23','6379710539','198 Cremin Gateway\nPurdytown, LA 44757','3775 Estella Flat\nLake Ethel, MN 58137',7104,815957,'1999-02-23','126 Craig Harbor\nLake Delphinetown, NC 94679-','2020-03-30 20:40:45','2020-03-30 22:17:37'),(27,'1984-12-04','2346106309','3605 Drew Glen Apt. 340\nSouth Lizeth, MS 8067','9079 Mills Wall\nOranside, NE 10949',2166,910120,'1998-12-04','220 Henriette Square\nHettingerstad, WV 58829-','2020-03-30 20:40:45','2020-03-30 22:17:37'),(28,'1978-03-15','9591400197','3482 Rahul Plains\nMarcfurt, SC 36244','2329 Tatyana Court\nEast Constantin, MI 76145-',6511,202734,'1992-03-15','060 Veum Track\nCharitytown, ID 59292-8743','2020-03-30 20:40:45','2020-03-30 22:17:37'),(29,'1987-08-15','3918682346','2369 McDermott Parkways\nWest Pink, SC 75257','795 Kieran Field\nLake Taylorview, RI 84623-55',7065,883299,'2001-08-15','4688 Jaeden Flats Suite 475\nBoscobury, MN 207','2020-03-30 20:40:45','2020-03-30 22:17:37'),(30,'2008-01-10','7819211407','3035 Everette Court\nPort Emmiebury, CA 52512','28555 Zack Mountain Suite 158\nBergnaumfort, M',5793,108304,'2022-01-10','3144 Schneider Points\nPort Albinmouth, WI 549','2020-03-30 20:40:45','2020-03-30 22:17:37'),(31,'1995-06-04','8340010283','4663 Deanna Road Apt. 679\nCroninstad, AR 3835','298 Lueilwitz Hill Apt. 783\nLake Terryland, C',6772,491615,'2009-06-04','0256 Ebony Courts Suite 420\nPearlbury, DE 543','2020-03-30 20:40:45','2020-03-30 22:17:37'),(32,'1992-04-30','8242417471','5612 Zieme Station Suite 607\nRennerfort, MD 8','33802 Carole Lodge\nArlieview, MD 57540-4686',6481,233170,'2006-04-30','9468 Blaise Pines\nKovacekview, AK 43094','2020-03-30 20:40:45','2020-03-30 22:17:37'),(33,'1997-12-17','6192056784','5452 Brianne Greens\nEast Kaleb, CT 78488','78178 Samir Place\nRunolfssonport, WA 85006-44',2090,490999,'2011-12-17','93227 Elvie Village\nArnulfoport, IA 40732','2020-03-30 20:40:45','2020-03-30 22:17:37'),(34,'1997-08-15','5233031785','59064 Cassandra Circle\nEast Rickie, AZ 86755','3487 Sanford Mills\nLake Emiltown, MD 27328',8003,755488,'2011-08-15','3001 Christina Spring Apt. 632\nPort Maud, CA ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(35,'1981-05-13','6588988850','233 Petra Islands Suite 858\nLake Pascale, OK ','8313 Bartell Ridge\nNorth Barbara, TX 65407',5753,404451,'1995-05-13','0342 Buckridge Course Suite 584\nNew Mohamedfo','2020-03-30 20:40:45','2020-03-30 22:17:37'),(36,'2015-08-10','7245849173','057 Adeline Forge\nValerietown, WV 37628','380 Wilderman Crest Suite 093\nErnserbury, OR ',3755,555784,'2029-08-10','63636 Collier Ridges\nLake Aiden, MA 74419-683','2020-03-30 20:40:45','2020-03-30 22:17:37'),(37,'2018-07-24','6462279595','86179 Teagan Streets\nNew Leola, DC 24231-3312','305 Olga Meadows Suite 727\nPort Immanuelshire',9514,565572,'2032-07-24','45054 Bernice Pass\nElodyton, ND 92182','2020-03-30 20:40:45','2020-03-30 22:17:37'),(38,'2014-11-04','9573850730','4844 Zelma Harbor\nLake Feliciabury, WI 22964-','91667 Abernathy Inlet Suite 652\nLake Hilariot',8311,160511,'2028-11-04','815 Dereck Dam Suite 852\nSouth Sybleberg, CT ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(39,'1982-02-21','9482415146','564 Schinner Spurs Apt. 652\nNorth Dayton, DE ','8108 Urban Parkway\nBartontown, OK 50754-5370',3017,805831,'1996-02-21','4234 Kyleigh Lodge Suite 153\nDarrenbury, LA 3','2020-03-30 20:40:45','2020-03-30 22:17:37'),(40,'2014-10-29','8690523821','2635 Alfredo Forks\nBrekkeville, NJ 36429','1530 Lonzo Shore\nLake Pierrefort, NE 98079-16',7145,747633,'2028-10-29','7987 Magdalen Avenue Apt. 080\nNorth Halie, DC','2020-03-30 20:40:45','2020-03-30 22:17:37'),(41,'1999-01-22','5005373947','0935 Henriette Coves\nWest Mikel, PA 81909','5361 Jerome Turnpike Suite 311\nNorth Demetris',7681,320674,'2013-01-22','30973 Alicia Rapid\nNorth Jacklynberg, AL 6055','2020-03-30 20:40:45','2020-03-30 22:17:37'),(42,'2010-04-26','6955298546','487 Auer Pike Apt. 186\nPort Hudson, ME 88166','033 Isidro Burgs\nNew Duanetown, DE 75357-7973',6972,160466,'2024-04-26','189 Crystel Street Apt. 406\nLake Julius, MD 3','2020-03-30 20:40:45','2020-03-30 22:17:37'),(43,'1980-04-30','9760371167','95586 Stroman Village Suite 115\nBeattybury, A','8351 Dax Meadow Apt. 463\nTheresaton, ND 84817',1817,640303,'1994-04-30','8104 Joana Knolls\nSouth Kirsten, ND 09752-279','2020-03-30 20:40:45','2020-03-30 22:17:37'),(44,'2000-09-17','8935960481','121 Mante Fall Suite 159\nEast Malikaview, HI ','3854 Candelario Canyon\nCarolynefort, CT 81066',5165,820124,'2014-09-17','68945 Tom Mews Apt. 464\nLake Alvaville, NH 42','2020-03-30 20:40:45','2020-03-30 22:17:37'),(45,'1996-08-11','5398689180','7019 Sam Plains Apt. 846\nKreigerton, ID 16055','67905 Minnie Terrace Suite 402\nHyattland, FL ',1377,279718,'2010-08-11','245 Ullrich Prairie\nSouth Reillybury, NJ 1970','2020-03-30 20:40:45','2020-03-30 22:17:37'),(46,'1971-07-03','8185564731','00571 Laurie Valley\nRautown, AR 04213-3844','379 Rosendo Way\nKearamouth, NV 82335',8386,638212,'1985-07-03','04966 Katelynn Mills Suite 985\nHarrisstad, MN','2020-03-30 20:40:45','2020-03-30 22:17:37'),(47,'1999-12-02','5731756399','709 Bettie Motorway Apt. 765\nNorth Olenview, ','4783 Devon Crossing Suite 345\nPagacberg, WI 1',9805,451910,'2013-12-02','752 Sydnee Groves Apt. 984\nNew Jeremyhaven, V','2020-03-30 20:40:45','2020-03-30 22:17:37'),(48,'1972-04-25','3102088077','2370 Leatha Way\nWest Louvenia, AZ 93930','2988 Witting Neck Suite 393\nPort Reuben, HI 8',4876,244915,'1986-04-25','302 Robb Neck Suite 165\nPort Maryam, AZ 03353','2020-03-30 20:40:45','2020-03-30 22:17:37'),(49,'1993-12-11','6315171461','014 Sarah Court\nDorcasmouth, WY 77859-7412','00382 Abbigail Land\nWindlerborough, SC 87823',2958,668840,'2007-12-11','6322 Mattie Course\nWest Minaborough, SC 06582','2020-03-30 20:40:45','2020-03-30 22:17:37'),(50,'1992-08-29','3269593354','2996 Amelie Mews\nOttiliehaven, DC 92921-1424','7328 Adams Knoll\nNorth Emieview, WY 29338-648',8159,709461,'2006-08-29','3742 Raynor Knoll\nCoralieshire, TX 15611-2472','2020-03-30 20:40:45','2020-03-30 22:17:37'),(51,'2004-03-21','5402452663','048 Sigrid Plaza Suite 953\nNew Tyriquefurt, N','63303 Medhurst Roads\nNorth Alvah, HI 13743-31',3931,540787,'2018-03-21','9439 Athena Orchard Suite 396\nAbagailburgh, A','2020-03-30 20:40:45','2020-03-30 22:17:37'),(52,'2003-01-23','7203483531','346 Troy Spurs\nNorth Nathanael, ND 48319','888 Nicolas Trail\nRhodaberg, NY 99899',3174,475553,'2017-01-23','462 Raynor Stravenue\nDamaristown, ID 79898','2020-03-30 20:40:45','2020-03-30 22:17:37'),(53,'1991-01-14','9810059944','1247 Margarete Highway\nHaagland, DE 52795','850 Lisa Fall Suite 987\nNew Elvie, OR 31145',3076,655403,'2005-01-14','3536 Rutherford Alley\nShanahanberg, NV 80980-','2020-03-30 20:40:45','2020-03-30 22:17:37'),(54,'2007-09-18','8439849411','464 Taylor Village\nO\'Reillyfort, RI 05163-008','0930 Thaddeus Meadows Suite 652\nPort Greyson,',4856,850360,'2021-09-18','4466 Gislason Hill Apt. 586\nEast Cooper, SC 2','2020-03-30 20:40:45','2020-03-30 22:17:37'),(55,'1976-05-14','2769067503','820 Sabryna Roads Suite 791\nPort Arch, FL 831','50488 Daphnee Flats Suite 693\nSchowalterland,',5057,385593,'1990-05-14','86856 King Expressway Suite 302\nNew Bridgette','2020-03-30 20:40:45','2020-03-30 22:17:37'),(56,'1981-04-07','5525789552','291 Madilyn Greens\nKurtisbury, LA 70886','5904 Luettgen Crossroad\nNataliebury, NM 52708',9716,176885,'1995-04-07','757 Aimee Mission Suite 514\nHenriettestad, OR','2020-03-30 20:40:45','2020-03-30 22:17:37'),(57,'2004-12-03','9321745529','553 Devan Road Suite 402\nMosciskichester, NV ','648 Cloyd Turnpike\nJoshville, KY 20208',5419,527641,'2018-12-03','69507 Giovani Lock\nPort Braedenport, IL 17231','2020-03-30 20:40:45','2020-03-30 22:17:37'),(58,'1977-07-22','2031359273','1299 Carmelo Locks\nIsaiasfort, SD 25420','9863 Darien Field Suite 636\nZoieport, MD 7152',5942,207555,'1991-07-22','56015 Powlowski Center Suite 458\nSouth Aliyah','2020-03-30 20:40:45','2020-03-30 22:17:37'),(59,'2000-01-04','8191560047','23544 David Key Apt. 422\nEast Ruthie, ID 4090','715 Kaela Heights Apt. 261\nAbehaven, NJ 22983',3456,254847,'2014-01-04','166 Sidney Overpass Suite 439\nSouth Lukasview','2020-03-30 20:40:45','2020-03-30 22:17:37'),(60,'1992-12-29','6863722700','6243 Alexander Brook Apt. 237\nLake Ofelia, AR','84012 Dorris Point\nNorth Jaceyberg, NV 55170-',7452,551571,'2006-12-29','683 Jakubowski Port\nDoloreston, SC 92756','2020-03-30 20:40:45','2020-03-30 22:17:37'),(61,'1973-11-05','8743933635','396 Jacynthe Keys Apt. 062\nNew Tania, KS 5810','5866 Hartmann Dam Apt. 481\nWinfieldton, ID 66',7898,993315,'1987-11-05','0417 Cummerata Lakes\nPaucekton, TX 94682','2020-03-30 20:40:45','2020-03-30 22:17:37'),(62,'1973-02-17','4128500359','9347 Alf Springs Apt. 935\nToystad, OK 49228-1','2076 Shemar Run Suite 956\nHomenickmouth, MO 2',7134,511871,'1987-02-17','62592 Kuhn Brooks Apt. 108\nPort Ezequiel, CO ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(63,'2013-08-31','2410701161','92355 Brennan Divide\nWest Judd, TN 61622-5298','126 Braeden Bridge\nNorth Mariashire, HI 44394',1979,379407,'2027-08-31','15106 Delaney Island\nNorth Larry, CA 52674-18','2020-03-30 20:40:45','2020-03-30 22:17:37'),(64,'1987-08-19','7668005001','1107 Torey Ridge Suite 149\nWest Rhoda, AZ 913','868 Zieme Manor Suite 581\nPort Flavie, KY 707',5487,261421,'2001-08-19','7815 O\'Hara Throughway\nNew Bernita, KY 77293','2020-03-30 20:40:45','2020-03-30 22:17:37'),(65,'1995-02-20','3107921806','39043 Zulauf Ferry Apt. 540\nMargarettemouth, ','4044 Robert Fords Suite 480\nEnashire, MT 8411',2503,968880,'2009-02-20','2829 Mateo Heights Apt. 307\nJohnpaulberg, DE ','2020-03-30 20:40:45','2020-03-30 22:17:37'),(66,'1973-03-25','9535594299','869 Arnoldo Motorway Apt. 378\nPort Willis, AL','269 Anastasia Summit Suite 451\nDominichaven, ',4052,360148,'1987-03-25','65070 Gutmann Divide Apt. 021\nBaileyton, TX 1','2020-03-30 20:40:45','2020-03-30 22:17:37'),(67,'2004-11-07','1354206363','41841 Jacobi Light\nSmithland, NY 89967','577 Adrain Avenue Apt. 590\nSouth Dangelo, CA ',2753,594093,'2018-11-07','8459 Pollich Road Apt. 281\nFramiton, WA 33010','2020-03-30 20:40:45','2020-03-30 22:17:37'),(68,'1974-03-08','4164249184','45825 Sim Mill Suite 979\nWest Isabel, OR 6497','46121 Hayes Coves Apt. 032\nNew Angelica, KY 4',9603,890026,'1988-03-08','3628 White Squares\nWadechester, WA 23025','2020-03-30 20:40:45','2020-03-30 22:17:37'),(69,'2013-08-03','6758627112','3453 Garth Roads\nWest Brook, HI 12145-6202','203 Gusikowski Islands Apt. 103\nChamplinchest',2771,767854,'2027-08-03','384 Delia Village Apt. 503\nNorth Carastad, WI','2020-03-30 20:40:45','2020-03-30 22:17:37'),(70,'2002-09-19','2300388291','515 Green Parkway Suite 785\nGutmannfurt, IL 3','70284 Kellen Walk Apt. 410\nYostfurt, IN 53255',2038,169195,'2016-09-19','6836 Ruth Keys Suite 588\nChristinamouth, AZ 1','2020-03-30 20:40:45','2020-03-30 22:17:37');
/*!40000 ALTER TABLE `profiles_citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_department`
--

DROP TABLE IF EXISTS `profiles_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_department` (
  `user_id` int unsigned NOT NULL,
  `position_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `fk_profiles_department_department_id` (`department_id`),
  CONSTRAINT `fk_profiles_department_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_profiles_department_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_department`
--

LOCK TABLES `profiles_department` WRITE;
/*!40000 ALTER TABLE `profiles_department` DISABLE KEYS */;
INSERT INTO `profiles_department` VALUES (70,'Сотрудник ведомств',1,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(71,'Сотрудник ведомств',2,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(72,'Сотрудник ведомств',3,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(73,'Сотрудник ведомств',4,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(74,'Сотрудник ведомств',5,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(75,'Сотрудник ведомств',6,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(76,'Сотрудник ведомств',7,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(77,'Сотрудник ведомств',8,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(78,'Сотрудник ведомств',9,'2020-03-30 20:51:52','2020-03-31 20:43:02'),(79,'Сотрудник ведомств',10,'2020-03-30 20:51:52','2020-03-31 20:43:02');
/*!40000 ALTER TABLE `profiles_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_mfc`
--

DROP TABLE IF EXISTS `profiles_mfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_mfc` (
  `user_id` int unsigned NOT NULL,
  `position_user` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mfc_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `fk_profiles_mfc_mfc_id` (`mfc_id`),
  CONSTRAINT `fk_profiles_mfc_mfc_id` FOREIGN KEY (`mfc_id`) REFERENCES `offis_mfc` (`id`),
  CONSTRAINT `fk_profiles_mfc_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_mfc`
--

LOCK TABLES `profiles_mfc` WRITE;
/*!40000 ALTER TABLE `profiles_mfc` DISABLE KEYS */;
INSERT INTO `profiles_mfc` VALUES (1,'Сотрудник МФЦ',1,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(2,'Сотрудник МФЦ',2,'2020-03-30 20:52:38','2020-03-30 20:53:07'),(3,'Сотрудник МФЦ',3,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(4,'Сотрудник МФЦ',4,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(5,'Сотрудник МФЦ',5,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(6,'Сотрудник МФЦ',6,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(7,'Сотрудник МФЦ',7,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(8,'Сотрудник МФЦ',8,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(9,'Сотрудник МФЦ',9,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(10,'Сотрудник МФЦ',10,'2020-03-30 20:52:38','2020-03-30 22:29:12'),(11,'Сотрудник МФЦ',1,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(12,'Сотрудник МФЦ',2,'2020-03-30 20:52:38','2020-03-30 20:53:07'),(13,'Сотрудник МФЦ',3,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(14,'Сотрудник МФЦ',4,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(15,'Сотрудник МФЦ',5,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(16,'Сотрудник МФЦ',6,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(17,'Сотрудник МФЦ',7,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(18,'Сотрудник МФЦ',8,'2020-03-30 20:52:38','2020-03-30 22:31:44'),(19,'Сотрудник МФЦ',9,'2020-03-30 20:52:38','2020-03-30 22:31:44');
/*!40000 ALTER TABLE `profiles_mfc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reception`
--

DROP TABLE IF EXISTS `reception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reception` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int unsigned NOT NULL,
  `date_time_consultation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reception_department_id` (`department_id`),
  CONSTRAINT `fk_reception_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reception`
--

LOCK TABLES `reception` WRITE;
/*!40000 ALTER TABLE `reception` DISABLE KEYS */;
INSERT INTO `reception` VALUES (1,7,'2020-02-24 22:49:19'),(2,1,'2020-03-01 05:31:59'),(3,2,'2020-03-29 21:04:32'),(4,10,'2020-03-06 20:21:52'),(5,7,'2020-02-04 14:14:56'),(6,8,'2020-02-16 05:26:33'),(7,7,'2020-01-08 11:53:05'),(8,3,'2020-03-24 13:09:35'),(9,3,'2020-03-26 07:19:01'),(10,6,'2020-03-09 21:09:50'),(11,9,'2020-01-22 12:34:26'),(12,7,'2020-01-15 02:16:28'),(13,8,'2020-01-31 18:29:21'),(14,8,'2020-02-16 23:55:38'),(15,1,'2020-02-16 09:25:45'),(16,6,'2020-01-24 17:03:20'),(17,1,'2020-03-18 23:06:10'),(18,10,'2020-02-14 04:22:26'),(19,2,'2020-03-29 08:34:12'),(20,1,'2020-01-30 04:04:26'),(21,2,'2020-02-11 00:40:32'),(22,2,'2020-02-04 10:18:23'),(23,2,'2020-03-12 08:57:30'),(24,3,'2020-03-20 00:03:25'),(25,4,'2020-02-16 10:55:32'),(26,3,'2020-03-21 12:54:10'),(27,6,'2020-03-14 19:36:30'),(28,1,'2020-01-18 01:27:20'),(29,10,'2020-03-22 14:21:06'),(30,7,'2020-02-10 20:42:40'),(31,6,'2020-02-01 02:56:52'),(32,3,'2020-02-18 10:47:07'),(33,10,'2020-03-09 12:06:27'),(34,10,'2020-01-16 04:16:46'),(35,8,'2020-02-19 07:44:09'),(36,1,'2020-03-03 00:56:58'),(37,10,'2020-02-16 23:04:22'),(38,2,'2020-01-01 06:17:20'),(39,2,'2020-01-03 18:12:59'),(40,3,'2020-03-07 16:33:55'),(41,9,'2020-02-05 08:45:45'),(42,4,'2020-03-11 13:50:21'),(43,6,'2020-01-03 20:25:26'),(44,1,'2020-03-09 10:43:23'),(45,8,'2020-03-31 11:51:10'),(46,2,'2020-03-29 23:34:22'),(47,7,'2020-02-13 08:56:18'),(48,7,'2020-02-07 14:42:28'),(49,2,'2020-01-07 13:17:39'),(50,5,'2020-01-19 07:15:19'),(51,6,'2020-01-26 03:24:35'),(52,5,'2020-01-10 10:44:46'),(53,8,'2020-01-10 21:28:37'),(54,1,'2020-03-13 00:07:32'),(55,2,'2020-02-07 13:54:57'),(56,8,'2020-03-17 03:04:14'),(57,1,'2020-01-09 22:17:20'),(58,1,'2020-01-23 11:52:55'),(59,6,'2020-01-06 03:59:04'),(60,10,'2020-02-26 11:26:59'),(61,4,'2020-01-08 09:27:46'),(62,8,'2020-02-29 20:52:15'),(63,5,'2020-02-27 11:44:37'),(64,6,'2020-01-22 10:18:49'),(65,9,'2020-03-15 04:02:57'),(66,4,'2020-01-10 17:38:12'),(67,9,'2020-01-27 14:04:57'),(68,4,'2020-03-08 06:34:53'),(69,4,'2020-02-07 05:35:28'),(70,1,'2020-02-04 14:56:03'),(71,4,'2020-03-15 12:34:07'),(72,3,'2020-01-25 01:19:17'),(73,5,'2020-02-04 13:15:52'),(74,1,'2020-03-07 06:25:51'),(75,3,'2020-02-28 10:33:45'),(76,1,'2020-03-12 14:23:19'),(77,8,'2020-01-27 00:15:01'),(78,9,'2020-03-04 16:40:13'),(79,8,'2020-01-23 19:28:19'),(80,8,'2020-01-19 04:28:56'),(81,1,'2020-01-09 06:56:52'),(82,9,'2020-02-06 16:05:35'),(83,2,'2020-01-24 12:31:57'),(84,7,'2020-03-31 06:59:16'),(85,6,'2020-03-03 20:37:28'),(86,7,'2020-03-27 08:43:29'),(87,8,'2020-01-20 12:11:26'),(88,2,'2020-03-26 17:58:20'),(89,4,'2020-03-18 12:13:56'),(90,10,'2020-03-29 17:29:05'),(91,1,'2020-03-29 17:31:05'),(92,1,'2020-03-31 17:31:05');
/*!40000 ALTER TABLE `reception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Гражданин'),(2,'Чиновник'),(3,'Сотрудник_МФЦ'),(4,'Администратор');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fool_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_topics_department_id` (`department_id`),
  CONSTRAINT `fk_topics_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'I had our Dinah here, I know I do!\' said Alice indignantly. ','Trudovoy stag',1),(2,'I should be like then?\' And she opened it, and fortunately w','Rem voluptates est n',2),(3,'Alice asked. The Hatter was the first figure,\' said the Cate','Illum quasi illum no',3),(4,'I\'m certain! I must have a trial: For really this morning I\'','Sunt consequatur rep',4),(5,'Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice timidly. ','Sed perspiciatis ape',5),(6,'Has lasted the rest of it appeared. \'I don\'t much care where','Aut voluptatum ut vo',6),(7,'And he added looking angrily at the Duchess sang the second ','Sequi aliquam perfer',7),(8,'Alice like the name: however, it only grinned a little timid','Voluptas sit quas ma',8),(9,'Rabbit in a thick wood. \'The first thing she heard a voice o','Repellat fuga quia u',9),(10,'She got up this morning, but I can\'t see you?\' She was a gen','Harum nulla commodi ',10),(11,'YOUR adventures.\' \'I could tell you just now what the name o','Facere quasi ab porr',1),(12,'Queen. \'I haven\'t the slightest idea,\' said the Queen, turni','Officia laborum eos ',2),(13,'Time as well as she had never done such a dear little puppy ','Ab modi at fuga ut s',3),(14,'But they HAVE their tails in their proper places--ALL,\' he r','Minima sint maxime a',4),(15,'They had a door leading right into a line along the course, ','Repudiandae dolorum ',5),(16,'Queen to play croquet.\' The Frog-Footman repeated, in the sa','Est alias quam offic',6),(17,'Shakespeare, in the chimney as she ran; but the wise little ','Qui ad numquam moles',7),(18,'Hatter was the first to speak. \'What size do you like the lo','Tenetur libero inven',8),(19,'This seemed to her daughter \'Ah, my dear! Let this be a foot','Repudiandae vitae id',9),(20,'THAT\'S a good deal worse off than before, as the Lory positi','Enim soluta consequa',10);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `patronymic` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_users_role_id` (`role_id`),
  KEY `users_created_at_IDX` (`created_at`) USING BTREE,
  CONSTRAINT `fk_users_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sofia','Becker','Lilliana','vhickle@example.org',4,'2020-03-30 20:40:32','2020-03-30 22:08:42','+79211114792'),(2,'Marilou','Davis','Luther','ddooley@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76269913383'),(3,'Solon','McGlynn','Reba','bosco.sonia@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72716222814'),(4,'Sarah','Feil','Joelle','qbeahan@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72771374195'),(5,'Willie','McGlynn','Grayson','stiedemann.dennis@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74708202807'),(6,'Jonatan','Marvin','Carolyne','ebrekke@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75226891731'),(7,'Jewell','Wolf','Jackson','tressie.smitham@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72009850513'),(8,'Retha','Ruecker','Henry','pollich.keeley@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72368577646'),(9,'Nolan','Kiehn','Bernardo','miguel48@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74813336968'),(10,'Johathan','Mante','Casimer','jovani.moen@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76960952182'),(11,'Rylee','Lueilwitz','Austyn','sydnee45@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71364750285'),(12,'Claire','Dickinson','Annie','ollie.mohr@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72940895152'),(13,'Saul','Weissnat','Trudie','lisandro.crist@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79610225180'),(14,'Isom','Heidenreich','Marian','grimes.orion@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72228440733'),(15,'Amparo','Beier','Alysson','mrempel@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78311528391'),(16,'Callie','Ziemann','Annabel','hailey.roberts@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76872320043'),(17,'Tate','Heller','Leilani','lora.yost@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78427015318'),(18,'Toby','Gulgowski','Jayda','wpowlowski@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72518116742'),(19,'Sister','Klocko','Sanford','zwindler@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74309538026'),(20,'Polly','Will','Deondre','rmiller@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73993340183'),(21,'Angus','Aufderhar','Haylee','oleta71@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76038087115'),(22,'Dahlia','Jacobi','Zackery','fausto25@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78210415306'),(23,'Giuseppe','Klein','Zoe','kassulke.kelton@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73937815464'),(24,'Elmer','Upton','Eldred','hcarter@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73057831678'),(25,'Alec','Herzog','Jakob','rboyle@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72475712275'),(26,'Shania','Mayert','Casandra','carmine82@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72205066614'),(27,'Michaela','Gleason','Marina','jarvis96@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72598196523'),(28,'Malcolm','Torp','Mathias','vallie92@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75375783048'),(29,'Anna','Ebert','Maxie','phettinger@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79084325950'),(30,'Chaya','O\'Keefe','Constantin','white.bartholome@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71294280893'),(31,'Floyd','O\'Keefe','Mozelle','snienow@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75218426881'),(32,'Maddison','Reichel','Derrick','ovon@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73209292007'),(33,'Maxie','Senger','Hayley','trantow.dion@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78391179664'),(34,'Jace','Gorczany','Kamren','kuhic.sadie@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74328022587'),(35,'Irma','Rath','Adrianna','deckow.elise@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74466574214'),(36,'Felton','Smitham','Clinton','jude.quitzon@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78348803587'),(37,'Abelardo','Corkery','Andy','dwuckert@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79344295572'),(38,'Reginald','Abernathy','Kaden','harris.mikayla@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72675067384'),(39,'Alene','Kuhlman','Michel','cremin.eleazar@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72342450475'),(40,'Margaret','Witting','Hoyt','cole.linwood@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72687050497'),(41,'Dalton','Schowalter','Elsa','micaela.lebsack@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75407901336'),(42,'Enrique','Harber','Kellen','konopelski.nadia@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78978355468'),(43,'Elijah','Stamm','Stacy','allison91@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79668073614'),(44,'Rhea','Ruecker','Akeem','hayden.wilderman@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72405301949'),(45,'Marcelle','Bergnaum','Justice','mark48@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79022289172'),(46,'Aryanna','Batz','Herman','umitchell@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79895540294'),(47,'Braulio','Farrell','Sigrid','london90@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73410834240'),(48,'Romaine','Koepp','Greg','barton.violet@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74367550586'),(49,'Rae','Quigley','Octavia','runolfsdottir.clementine@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71605250490'),(50,'Garrett','Larkin','Trent','kautzer.ignatius@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72923600964'),(51,'Matteo','Hickle','Claire','lsteuber@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78802253627'),(52,'Rebecca','Schultz','Jamie','gmertz@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+77240465527'),(53,'Jaclyn','Halvorson','Scottie','vonrueden.josianne@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78795567031'),(54,'Jermaine','Welch','Norris','harold.gerlach@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73256438854'),(55,'Paxton','Wilderman','Deondre','nikolaus.tania@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76895493449'),(56,'Rafaela','Smitham','Jackson','carmella75@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75708150965'),(57,'Lindsay','Auer','Joy','dameon15@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76854274753'),(58,'Chandler','O\'Keefe','Gerald','goyette.vernon@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+77146921149'),(59,'Jason','Bergnaum','Parker','grolfson@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75171781765'),(60,'Treva','Smitham','Margarette','carrie.erdman@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73418145657'),(61,'Emilia','Wolff','Loma','renner.kaitlyn@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79575383260'),(62,'Makayla','Frami','Leilani','isawayn@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79622479615'),(63,'Dianna','McGlynn','Calista','christy59@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+79386248574'),(64,'Audrey','McKenzie','Queen','madeline62@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78063804302'),(65,'Cleo','Zulauf','Alfreda','tia64@example.com',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72160276070'),(66,'Tara','Wiegand','Kole','vmedhurst@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+73609967715'),(67,'Bernhard','Cruickshank','Jason','pacocha.anderson@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71569010644'),(68,'Joey','Prosacco','Arnold','mohammad.torp@example.net',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75015150348'),(69,'Alva','Harris','Grayson','mbeier@example.org',1,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71368720089'),(70,'Ashton','Dickens','Maymie','daniel.ricardo@example.org',1,'2020-03-30 20:40:32','2020-03-30 22:08:38','+78798149671'),(71,'Lazaro','Jones','Christina','co\'kon@example.net',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72884588376'),(72,'Floyd','Moen','Rigoberto','kelsie.cartwright@example.com',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75028493139'),(73,'Terrence','Rippin','Darius','jamal87@example.net',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76488700845'),(74,'Hassie','Bahringer','Oliver','simeon.osinski@example.net',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+77358025089'),(75,'Emmanuelle','Veum','Larissa','ashleigh.kutch@example.com',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+77324023186'),(76,'Elta','Hegmann','Donavon','jacynthe56@example.net',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74546040943'),(77,'Elmira','Homenick','Josephine','agerlach@example.org',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78758135429'),(78,'Jermaine','Sporer','Dario','davis.alessia@example.net',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72152554603'),(79,'Vida','Crist','Roxane','ernser.bernadine@example.com',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71488366996'),(80,'Matilde','Romaguera','Brent','zsimonis@example.net',2,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78984171444'),(81,'Joshuah','Keeling','Leila','salvatore.blanda@example.com',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+73455756522'),(82,'Annabel','Wilkinson','Madge','lueilwitz.felicia@example.com',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+77326268547'),(83,'Bonita','Monahan','Blanca','allan.dubuque@example.org',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+77264073451'),(84,'Eula','Gleason','Kassandra','walker.elsa@example.net',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+74341561892'),(85,'Dorthy','Zboncak','Jacklyn','rubye.olson@example.com',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+77915589380'),(86,'Freeda','Purdy','Antonia','jhuels@example.net',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+77553261507'),(87,'Kaylie','Jerde','Orrin','marlin51@example.net',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+74019539674'),(88,'Blake','Rath','Liliana','alysson.cronin@example.com',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+75437914123'),(89,'Tatyana','Cronin','Domenic','margarette.borer@example.org',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+75130951872'),(90,'Donna','Weissnat','Darius','idooley@example.com',3,'2020-03-30 20:40:32','2020-03-30 21:35:18','+78341017268'),(91,'Bret','Thiel','Josh','marvin71@example.com',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+77312231005'),(92,'Maureen','Brown','Lavina','wgottlieb@example.com',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71538103499'),(93,'Christophe','Stamm','Camilla','kherzog@example.net',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+72753824752'),(94,'Alana','Douglas','Scot','wellington17@example.com',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+78154813540'),(95,'Boris','Ledner','Connor','mbarrows@example.net',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+74512593729'),(96,'Eloisa','Pollich','Danielle','frami.webster@example.com',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76098528298'),(97,'Victor','Dicki','Adela','kilback.mariam@example.net',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76954860583'),(98,'Emmanuelle','Harris','Vincenza','ratke.jaleel@example.net',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+76478718300'),(99,'Julia','Sipes','Rashawn','julia10@example.org',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+71529010031'),(100,'Eileen','Howe','Adolphus','alysa05@example.net',3,'2020-03-30 20:40:32','2020-03-30 20:40:32','+75208895525');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_1`
--

DROP TABLE IF EXISTS `view_1`;
/*!50001 DROP VIEW IF EXISTS `view_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_1` AS SELECT 
 1 AS `Ведомства`,
 1 AS `Количество_консультаций`,
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'mfc'
--
/*!50003 DROP FUNCTION IF EXISTS `количество_консультаций_по_ведомствам` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `количество_консультаций_по_ведомствам`(id_mfc INT, id_department int) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE количество INT;
	set количество = (select count(*) from claim 
    where department_id = id_department and mfc_id = id_mfc
    and status_id = 8);
    RETURN количество;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `отчет_по_количеству_консультаций` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `отчет_по_количеству_консультаций`()
begin
	drop table if exists консультации;
	create temporary table консультации (
	Адрес_мфц varchar(50),
	Mintrud int,
	FSSP_Office int,
	Minsvyz int,
	Bar_Association int,
	DIZO int,
	PFR int,
	Rospotrebnadzor int,
	AGP int,
	MVD int,
	Kadastr int,
	mfc_id int
    ); 
-- заполнение временной таблицы
insert into консультации 
select distinct address,
количество_консультаций_по_ведомствам (offis_mfc.id, 1),
количество_консультаций_по_ведомствам (offis_mfc.id, 2),
количество_консультаций_по_ведомствам (offis_mfc.id, 3),
количество_консультаций_по_ведомствам (offis_mfc.id, 4),
количество_консультаций_по_ведомствам (offis_mfc.id, 5),
количество_консультаций_по_ведомствам (offis_mfc.id, 6),
количество_консультаций_по_ведомствам (offis_mfc.id, 7),
количество_консультаций_по_ведомствам (offis_mfc.id, 8),
количество_консультаций_по_ведомствам (offis_mfc.id, 9),
количество_консультаций_по_ведомствам (offis_mfc.id, 10),
offis_mfc.id
from offis_mfc
order by address;


-- передача информации клиенту
select * from консультации;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_1`
--

/*!50001 DROP VIEW IF EXISTS `view_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_1` AS select `departments`.`fool_name` AS `Ведомства`,count(0) AS `Количество_консультаций`,`departments`.`id` AS `id` from (`departments` join `claim` on((`departments`.`id` = `claim`.`department_id`))) where (`claim`.`status_id` = 8) group by `departments`.`fool_name` order by `departments`.`fool_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 23:29:42
