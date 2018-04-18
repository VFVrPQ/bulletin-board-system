/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.15 : Database - bulletin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bulletin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bulletin`;

/*Table structure for table `note` */

DROP TABLE IF EXISTS `note`;

CREATE TABLE `note` (
  `noteId` int(11) NOT NULL AUTO_INCREMENT,
  `noteNumber` varchar(45) DEFAULT NULL,
  `noteName` varchar(255) DEFAULT NULL,
  `noteType` varchar(45) DEFAULT NULL,
  `noteOwner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `note` */

insert  into `note`(`noteId`,`noteNumber`,`noteName`,`noteType`,`noteOwner`) values (2,'1','你好','普通','081520122'),(3,'1','你好','普通','081520122'),(4,'1','你好','普通','081520122');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userName` varchar(255) DEFAULT NULL,
  `userId` varchar(45) NOT NULL,
  `userSex` varchar(2) DEFAULT NULL,
  `userType` varchar(10) DEFAULT NULL,
  `userPwd` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userName`,`userId`,`userSex`,`userType`,`userPwd`) values (NULL,'081520122',NULL,NULL,'St191333'),(NULL,'gwj','男','学生','sb'),(NULL,'hyy',NULL,NULL,'hello'),(NULL,'hyy1',NULL,NULL,'hello'),(NULL,'lcj',NULL,NULL,'123'),('宋洋','sy','男','学生','sb'),(NULL,'ymx','男',NULL,'sb');

/*Table structure for table `usernote` */

DROP TABLE IF EXISTS `usernote`;

CREATE TABLE `usernote` (
  `noteId` int(11) NOT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `floorNumber` int(11) NOT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `floorType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`noteId`,`floorNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usernote` */

insert  into `usernote`(`noteId`,`userId`,`floorNumber`,`content`,`floorType`) values (2,'081520122',1,'你好啊','显示'),(2,'081520122',2,'你好啊','删除');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
