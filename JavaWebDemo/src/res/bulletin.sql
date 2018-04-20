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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (50,'4','一个硬件工程师的一天','普通','081520122','2018-04-21 00:51:07'),(51,'6','如何评价ACM ICPC World Finals 2018？','普通','161710104','2018-04-21 01:21:49');
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
INSERT INTO `user` VALUES ('VFVrPQ','081520122','男','学生','123456'),('九条可怜','161710104','保密','学生','123456');
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
INSERT INTO `usernote` VALUES (50,'081520122',1,'“上午上班，打开Windows系统(美国)的电脑，开始做摞代码，代码写完，调用mentor(美国)的仿真器，仿真一个小时总是出错，拿MATLAB(美国)算下几个参数，发现之前算错了俩，修改参数重新开始。仿真通过了，打开Quartus软件(美国)生成bin文件。吃了午饭，继续干活，将bin下载到FPGA芯片(美国)，信号不通，打开PCB工具(美国)查看电路板是否有虚焊，用安捷伦示波器(美国)点一下，发现了原因，飞了几根线，单板CPU上wind river(美国)系统打印正常，再测就OK了。下午时间已经过半，开始测ADC接口，用Adobe(美国)打开ADI芯片(美国)手册，看了半天搞到傍晚终于搞通了第一块单板。晚上开始拿安捷伦频谱仪(美国)看空口信号，反复调测一直到半夜，终于达到要求，长舒一口气，准备第二天调测第二块是TI芯片(美国)的单板。突然看到老婆发来消息:XX小区楼盘又涨了，都怪你天天上班不知道早下手！！娃没地方上学了。。”\n\n作者：紫微斗数命理先生\n链接：https://www.zhihu.com/question/273640508/answer/371171444\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','显示','2018-04-21 00:51:07'),(50,'081520122',2,'我们把房卖了把美国买下来','显示','2018-04-21 00:52:50'),(50,'081520122',3,'老婆拿的手机苹果(美国)','显示','2018-04-21 00:53:05'),(50,'161710104',4,'唉！真是一点办法都没有','显示','2018-04-21 01:19:22'),(51,'161710104',1,'作者：九条可怜\n链接：https://www.zhihu.com/question/67045378/answer/371176657\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\n可能是我算法竞赛生涯打的最刺激的一场比赛了..可能对现场赛留下了点阴影啊？感觉 final 前我的状态一直都挺迷的..可能最近三天就只 1A 了今天的 I 啊..似乎这段时间手下的变量名都在可以通过编译的范围内随机出现啊。前期打的非常萎..感觉我和吨两个人一直都不在状态..我有点怎么也写不对代码..所以当时有点慌张..然后好像就被榜带的根本回不来了啊..我们全程没怎么做 C 和 J，最后一小时拼夺冠的时候选的是 E 和 G，然后因为 ITMO 爆了若干个小时的 E，我们最后半小时就把 E 给扔了..仔细一想好像决策没有一步是对的啊？可能之前被毛子暴揍的太惨有点失去自信了？G 题写着写着最后怎么也过不了样例..然后最后 10 min 发现少了个 case 没写..然后疯狂 rush 了一下..最后四五分钟的时候交了第一发 WA 了..然后随便改了改 long double 没想到就过了..感觉这是第一次打现场赛大劣势追题啊..可能国内赛区打的太顺有点迷失自我了..唯一处境相似的北京赛区好像因为当时心态很随意所以并没有像今天一样无法呼吸的感觉啊..从开场就一直在想打铁了要被钉在校史的耻辱柱上..然后就有点双手颤抖写不了代码..赛后出来冷静一下其实今年的题目挺适合中国队伍的..但是似乎从吃花花 140 min 过 G  IMTO 疯狂爆 E 之后我们的比赛就结束了啊..感觉还是毛子爸爸的演技比较逼真啊？我自己的发挥也有点吃大便..好像根本没有调整过来被打铁的压力给一巴掌扇到地上了啊..（不过好像发挥的好也没啥卵用..吃花花今天的发挥有点恐怖如斯啊..最后总算是拿了个金牌，ACM 也算是终于退役了啊？感觉当时吨胖过 D 的时候全场的欢呼实在是太燃了..如果没有那一下我最后可能也 rush 不出来 G 吧..这可能就是主场优势啊..','显示','2018-04-21 01:21:49'),(51,'161710104',2,'膜吉老师','显示','2018-04-21 01:22:05'),(51,'161710104',3,'吉老师，我觉得锅是商汤的（雾','显示','2018-04-21 01:22:16'),(51,'161710104',4,'暴力膜吉老师，今天直播看得心惊肉跳','显示','2018-04-21 01:22:26'),(51,'161710104',5,'nice，解D题破七真是激动~','显示','2018-04-21 01:22:35'),(51,'161710104',6,'orz吉老师','显示','2018-04-21 01:22:49');
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

-- Dump completed on 2018-04-21  1:30:48
