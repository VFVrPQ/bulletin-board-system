-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: bulletin
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Temporary view structure for view `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!50001 DROP VIEW IF EXISTS `comment`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `comment` AS SELECT 
 1 AS `noteId`,
 1 AS `userId`,
 1 AS `floorNumber`,
 1 AS `content`,
 1 AS `floorType`,
 1 AS `floorTime`,
 1 AS `userName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `noteId` int(11) NOT NULL AUTO_INCREMENT,
  `noteNumber` varchar(45) DEFAULT NULL,
  `noteName` varchar(255) DEFAULT NULL,
  `noteType` varchar(45) DEFAULT NULL,
  `noteOwner` varchar(45) DEFAULT NULL,
  `noteTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (2,'8','你好','普通','081520122',NULL),(3,'1','你好','普通','081520122',NULL),(4,'1','你好','普通','081520122',NULL),(5,'1','12312','普通','081520122',NULL),(6,'1','123','普通','081520122',NULL),(7,'1','xiebb','普通','081520122',NULL),(8,'1','xiebb','普通','081520122',NULL),(9,'1','gwj','普通','081520122','2018-04-18 23:16:00'),(10,'1','gwj','普通','081520122','2018-04-18 23:16:29'),(11,'1','gwj','普通','081520122','2018-04-18 23:19:48'),(12,'1','gwj','普通','081520122','2018-04-18 23:20:33'),(13,'1','gwj','普通','081520122','2018-04-18 23:27:15'),(14,'1','sy','普通','081520122','2018-04-18 23:27:43'),(15,'1','sy','普通','081520122','2018-04-18 23:27:59'),(16,'1','sy','普通','081520122','2018-04-18 23:28:09'),(17,'1','sy','普通','081520122','2018-04-18 23:28:22'),(18,'1','sy','普通','081520122','2018-04-18 23:34:58'),(19,'1','lcj','普通','081520122','2018-04-18 23:37:32'),(20,'1','lcj','普通','081520122','2018-04-18 23:38:19'),(21,'1','h;kjh','普通','161710104','2018-04-19 10:54:47'),(22,'1','h;kjh','普通','161710104','2018-04-19 10:54:58'),(23,'1','21312','普通','','2018-04-19 10:57:56'),(24,'1','21312','普通','','2018-04-19 10:58:00'),(25,'1','123123','普通','','2018-04-19 10:59:36'),(26,'1','123123','普通','','2018-04-19 10:59:38'),(27,'1','12312312','普通','','2018-04-19 11:00:06'),(28,'1','12312312','普通','','2018-04-19 11:00:12'),(29,'1','12313','普通','','2018-04-19 11:02:02'),(30,'1','12312','普通','','2018-04-19 11:02:42'),(31,'1','213123','普通','161710104','2018-04-19 11:06:07'),(32,'1','213123','普通','161710104','2018-04-19 11:06:12'),(33,'1','1231','普通','','2018-04-19 11:06:48'),(34,'5','213123','普通','161710104','2018-04-19 11:07:02'),(35,'1','213123','普通','161710104','2018-04-19 11:07:05'),(36,NULL,'hhh',NULL,'lcj',NULL),(37,'1','d','普通','','2018-04-20 16:40:09'),(38,'1','1','普通','','2018-04-20 16:45:25'),(39,'1','sdf','普通','','2018-04-20 16:45:50'),(40,'1','asdf','普通','081520122','2018-04-20 16:45:57'),(41,'1','asdf','普通','081520122','2018-04-20 16:46:12'),(42,'1','asdf','普通','','2018-04-20 16:47:00'),(43,'1','hhh','普通','081520122','2018-04-20 16:47:07'),(44,'1','hhh','普通','081520122','2018-04-20 16:47:42'),(45,'1','lcj sss','普通','081520122','2018-04-20 16:48:03'),(46,'1','lcj sss','普通','081520122','2018-04-20 16:48:21'),(47,'1','hyy sss','普通','081520122','2018-04-20 16:52:06'),(48,'1','lcjhh','普通','081520122','2018-04-20 19:08:51'),(49,'1','hhy','普通','081520122','2018-04-20 19:10:58');
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `notelist`
--

DROP TABLE IF EXISTS `notelist`;
/*!50001 DROP VIEW IF EXISTS `notelist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notelist` AS SELECT 
 1 AS `noteId`,
 1 AS `noteNumber`,
 1 AS `noteName`,
 1 AS `noteType`,
 1 AS `noteOwner`,
 1 AS `noteTime`,
 1 AS `userId`,
 1 AS `content`,
 1 AS `userName`,
 1 AS `number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userName` varchar(255) DEFAULT NULL,
  `userId` varchar(45) NOT NULL,
  `userSex` varchar(2) DEFAULT NULL,
  `userType` varchar(10) DEFAULT NULL,
  `userPwd` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('lcj','081520122',NULL,NULL,'St191333'),('谢有文','081520123','男','学生','123456'),('hyy','161710104','保密','学生','hyy'),(NULL,'gwj','男','学生','sb'),(NULL,'hyy',NULL,NULL,'hello'),(NULL,'hyy1',NULL,NULL,'hello'),(NULL,'lcj',NULL,NULL,'123'),('宋洋','sy','男','学生','sb'),(NULL,'ymx','男',NULL,'sb');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernote`
--

DROP TABLE IF EXISTS `usernote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernote` (
  `noteId` int(11) NOT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `floorNumber` int(11) NOT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `floorType` varchar(45) DEFAULT NULL,
  `floorTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`noteId`,`floorNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernote`
--

LOCK TABLES `usernote` WRITE;
/*!40000 ALTER TABLE `usernote` DISABLE KEYS */;
INSERT INTO `usernote` VALUES (2,'081520122',1,'你好啊','显示',NULL),(2,'081520122',2,'你好啊','删除',NULL),(2,'161710104',3,'adsfsdsadfasdf','显示','2018-04-19 22:20:07'),(2,'161710104',4,'asdfsdfsf','显示','2018-04-19 22:20:34'),(2,'161710104',5,'adfas','显示','2018-04-19 22:25:52'),(2,'161710104',6,'hyy','显示','2018-04-19 22:27:23'),(2,'161710104',7,'adsfdsa','显示','2018-04-19 23:10:46'),(2,'161710104',8,'xzv','显示','2018-04-19 23:12:04'),(2,'',11,'<p>我也好</p>','显示','2018-04-19 21:09:09'),(2,'161710104',111,'asdfsadf','显示','2018-04-19 22:17:58'),(19,'081520122',1,'dsg','显示','2018-04-18 23:38:19'),(21,'161710104',1,'ljblkdvasd','显示','2018-04-19 10:54:58'),(23,'',1,'312312','显示','2018-04-19 10:58:00'),(25,'',1,'123123','显示','2018-04-19 10:59:38'),(27,'',1,'3123123','显示','2018-04-19 11:00:12'),(31,'161710104',1,'123123123','显示','2018-04-19 11:06:12'),(34,'161710104',1,'1231231','显示','2018-04-19 11:07:05'),(34,'161710104',2,'as','显示','2018-04-19 23:18:11'),(34,'161710104',3,'df','显示','2018-04-19 23:20:07'),(34,'161710104',4,'hh','显示','2018-04-19 23:20:43'),(34,'161710104',5,'ss','显示','2018-04-19 23:20:50'),(40,'081520122',1,'sadf','显示','2018-04-20 16:46:12'),(43,'081520122',1,'hhhh','显示','2018-04-20 16:47:42'),(45,'081520122',1,'sss','显示','2018-04-20 16:48:21'),(47,'081520122',1,'sss','显示','2018-04-20 16:52:06'),(48,'081520122',1,'hhh','显示','2018-04-20 19:08:51'),(49,'081520122',1,'hhy','显示','2018-04-20 19:10:58');
/*!40000 ALTER TABLE `usernote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `comment`
--

/*!50001 DROP VIEW IF EXISTS `comment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comment` AS select `usernote`.`noteId` AS `noteId`,`usernote`.`userId` AS `userId`,`usernote`.`floorNumber` AS `floorNumber`,`usernote`.`content` AS `content`,`usernote`.`floorType` AS `floorType`,`usernote`.`floorTime` AS `floorTime`,`user`.`userName` AS `userName` from (`usernote` join `user`) where ((`usernote`.`userId` = `user`.`userId`) and (`usernote`.`floorNumber` <> 1)) group by `usernote`.`noteId`,`usernote`.`floorNumber` order by `usernote`.`floorNumber` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notelist`
--

/*!50001 DROP VIEW IF EXISTS `notelist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notelist` AS select `note`.`noteId` AS `noteId`,`note`.`noteNumber` AS `noteNumber`,`note`.`noteName` AS `noteName`,`note`.`noteType` AS `noteType`,`note`.`noteOwner` AS `noteOwner`,`note`.`noteTime` AS `noteTime`,`usernote`.`userId` AS `userId`,`usernote`.`content` AS `content`,`user`.`userName` AS `userName`,count(0) AS `number` from ((`note` join `usernote`) join `user`) where ((`note`.`noteId` = `usernote`.`noteId`) and (`user`.`userId` = `usernote`.`userId`) and (`usernote`.`floorNumber` = 1)) group by `note`.`noteId` order by `note`.`noteTime` desc */;
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

-- Dump completed on 2018-04-20 23:05:47
