-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ssh_forum
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `pasteid` varchar(50) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `anstime` varchar(100) NOT NULL,
  `agree` int(11) DEFAULT '0',
  `solve` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FKa2s4b4ocuv691bu91fmbdbwqi` (`userid`),
  KEY `FKdwa6jatecy0p87xp4p0qsplws` (`pasteid`),
  CONSTRAINT `FKa2s4b4ocuv691bu91fmbdbwqi` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `FKdwa6jatecy0p87xp4p0qsplws` FOREIGN KEY (`pasteid`) REFERENCES `paste` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('297e086c706209920170620d159e0001','297e086c7041f2be017041f3e85c0000','297e086c706209920170620c82c60000','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">新手可以推荐你到百度搜索~~思~必~达~学！~院~~里面有全套的视频教程，比看书领悟的更快</span>','2020-02-20 06:03:09',1,0),('297e086c706209920170620e02a20003','297e086c7041f2be017041f3e85c0000','297e086c706209920170620dd7290002','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">《神墓》不错，必看书籍</span>','2020-02-20 06:04:10',1,0),('297e086c706209920170620eb72b0005','297e086c70427de50170427e190e0000','297e086c706209920170620dd7290002','ffsdfwfwef','2020-02-20 06:04:56',0,0),('297e086c706209920170620f33a90007','297e086c70427de50170427e190e0000','297e086c706209920170620e97750004','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">南通平面设计培训学校哪里有?南通平面设计培训学校哪里有?南通平面设计培训学校哪里有?</span>','2020-02-20 06:05:28',0,0),('297e086c706209920170620fcd0c0009','297e086c7041f2be017041f3e85c0000','297e086c706209920170620e97750004','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">下面说一些自学很难自己解决的客观问题：</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">1.在学之前，没有规划好系统专业的学习计划，不知道每天学什么，做什么案例，学习任 务不明确。做一件事情之前，没有好的规划，这件事情一定没好结果。（大部分人都死 在这上面，导致浪费时间）</span>','2020-02-20 06:06:07',0,0),('297e086c706209920170620ff693000a','297e086c7041f2be017041f3e85c0000','297e086c706209920170620f8e990008','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">一直以来，在不同类别软件开发人才的需求中，对于Java工程师的需求量一直居高不下，而且Java工程师的薪资水平相对较高，所以每年学习Java的人也越来越多。但由于每个人的基础、资质有所不同，学习成果也就大不相同，如果大家在学习JAVA当中遇到什么不懂的问题欢迎+我的JAVA扣扣裙【乾缅是630忠奸是473罪厚是711}，有不懂的问题都可以在里面问。</span>','2020-02-20 06:06:18',1,0),('297e086c706209920170621013b9000b','297e086c7041f2be017041f3e85c0000','297e086c706209920170620f8e990008','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">2.不知道应该达到什么水平才能就业。（学技术肯定是为了就业，开始学的时候一定要明 确自己目的是什么，达到什么水平，这是学习的动力目标）</span>','2020-02-20 06:06:25',1,0),('297e086c7062099201706210495a000c','297e086c7041f2be017041f3e85c0000','297e086c706209920170620f8e990008','围观','2020-02-20 06:06:39',1,0),('297e086c70620992017062120ec80010','297e086c703f1c8d01703f1cef730000','297e086c7062099201706211e98f000f','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">自己顶</span>','2020-02-20 06:08:35',0,0),('297e086c70620992017062130b510012','297e086c7041f2be017041f3e85c0000','297e086c7062099201706212c3ef0011','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">有多苦？月薪多少</span>','2020-02-20 06:09:40',0,0),('297e086c706209920170621324a60013','297e086c7041f2be017041f3e85c0000','297e086c7062099201706212c3ef0011','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">是的，自学，但是目前没工作呢~</span>','2020-02-20 06:09:46',0,0),('297e086c706209920170621443800015','297e086c703f1c8d01703f1cef730000','297e086c7062099201706213f2100014','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">不明白这些人</span><span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">，你拿985学历这么高，但是技术半桶水，找工作都是个问题</span><span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">，何来年薪20k，面试官这关都过不了</span>','2020-02-20 06:11:00',0,0),('297e086c706209920170621485600016','297e086c703f1c8d01703f1cef730000','297e086c7062099201706213f2100014','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">不好意思，我哥大学物流的，没有编程基础，去腾讯应聘qq小程序，一个月1.5w。刚去也不会，学一个月就会了，人家就是愿意培养这种学习能力好的。</span>','2020-02-20 06:11:16',0,0),('297e086c7062099201706215cb9b0019','297e086c7041f2be017041f3e85c0000','297e086c7062099201706215988a0018','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">风云科技主要做软件的，公司有个项目是风云在线SaaS产业化平台，提供最先进的saas模式信息化服务</span>','2020-02-20 06:12:40',0,0),('297e086c7062099201706215df39001a','297e086c7041f2be017041f3e85c0000','297e086c7062099201706215988a0018','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">不了解java</span>','2020-02-20 06:12:45',0,0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paste`
--

DROP TABLE IF EXISTS `paste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paste` (
  `id` varchar(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `offer` int(11) NOT NULL,
  `ansnum` int(11) DEFAULT '0',
  `createtime` varchar(100) NOT NULL,
  `glanceover` int(11) DEFAULT '0',
  `solve` int(11) DEFAULT '0',
  `isdelete` int(11) DEFAULT '0',
  `answerid` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe9ac2ar66unva2o3rtqjy3bhg` (`userid`),
  CONSTRAINT `FKe9ac2ar66unva2o3rtqjy3bhg` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paste`
--

LOCK TABLES `paste` WRITE;
/*!40000 ALTER TABLE `paste` DISABLE KEYS */;
INSERT INTO `paste` VALUES ('297e086c706209920170620c82c60000','有什么必看的书推荐下吗？新手，刚学完web','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">有什么必看的书推荐下吗？</span><img class=\"BDE_Smiley\" width=\"30\" height=\"30\" changedsize=\"false\" src=\"http://static.tieba.baidu.com/tb/editor/images/client/image_emoticon2.png\" style=\"box-sizing:content-box;border:0px;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" /><span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">新手，刚学完web</span>',100,1,'2020-02-20 06:02:32',12,0,0,NULL,'297e086c7041f2be017041f3e85c0000'),('297e086c706209920170620dd7290002','我的个人Java学习经验，以此鼓励所有想要踏入Java行业的初学者','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">声明：本文只是我的个人经验之谈，或者连经验之谈都算不上，因为我觉得自己还是个新手，没有什么经验可谈，就算是我分享一下自己从开始学习Java到现在的一些心路历程吧，各位看官暂且看吧，欢迎交流。第一部分算是我与Java之间的故事，第二部分是我的个人学习经验和体会，不喜欢看故事的，直接看第二部分，谢谢！</span>',120,2,'2020-02-20 06:03:59',12,0,0,NULL,'297e086c7041f2be017041f3e85c0000'),('297e086c706209920170620e97750004','准备去学JAVA大佬们有什么建议吗？','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">毕业一年混了一年下来感觉还是得去学习点东西，在培训机构都推荐学JAVA，现在去学完JAVA能对得起这两万多的学费吗？大专学历、找的黑马</span>',130,2,'2020-02-20 06:04:48',12,0,0,NULL,'297e086c70427de50170427e190e0000'),('297e086c706209920170620f093b0006','想找个培训班学习 哪个比较好点','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">？</span>',150,0,'2020-02-20 06:05:17',0,0,0,NULL,'297e086c70427de50170427e190e0000'),('297e086c706209920170620f8e990008','自学java，学多久可以自己找到工作？','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">先以肯定的语气说明一下自学Java，多久可以找到工作：</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">按照目前Java的体系来说，Java的几个重点在于Javase、数据库、Spring全家桶系列的框架。而其他的在Java体系之内，会基础的操作就可以，不用特别深入。</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">每天6-7个“高效率”学习时间，常理来说6个月可以学完全部内容，而且还加上大量的代码练习，差不多就可以去找工作了。</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">以上是以绝对的口气说明学多久可以找工作，是属于特定条件必须满足，比如“高效率”学习6-7个小时是很多人做不到的。所以就会发现有的人一天学10多个小时，其实很多时间都是没有效率的，慢慢熬过来的。</span>',1,3,'2020-02-20 06:05:51',11,0,0,NULL,'297e086c70427de50170427e190e0000'),('297e086c7062099201706210a00c000d','行者老师在家无聊，免费为大家解答问题啦！','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">行者老师今日会给大家解答一些学习中、工作中、职业类、面试类的一些问题，遇到问题朋友们可以在评论区留言哦，行者老师每天晚上会定时去看留言区，挨个回复的</span>',1,0,'2020-02-20 06:07:01',0,0,0,NULL,'297e086c7041f2be017041f3e85c0000'),('297e086c70620992017062114dd3000e','做了三年程序员了啥也不会如何提升自己','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">说来惭愧，17年开始工作到现在做了很多没有技术项目都是增删改查和一些简单的逻辑没有学到多好的东西，想换公司了 但是有没有什么可以写的项目，怎么办唉~</span>',555,0,'2020-02-20 06:07:46',0,0,0,NULL,'297e086c7041f2be017041f3e85c0000'),('297e086c7062099201706211e98f000f','跪求一份可以写在简历上的java项目，最好有具体流程，即将找','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">跪求一份可以写在简历上的java项目，最好有具体流程，即将找java开发，可以有偿</span>',1000,1,'2020-02-20 06:08:25',3,0,0,NULL,'297e086c703f1c8d01703f1cef730000'),('297e086c7062099201706212c3ef0011','一名中专生自学java的痛苦经历，学到现在一年多了，已经工作','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">一名中专生自学java的痛苦经历，学到现在一年多了，已经工作的我快半年，接触到真正的项目是现在这份工作，月薪不值得提，看到吧里那么多自学的，难道都是真的吗。不是培训班发布的？本人是真的自学，不得不说自学的路程是真的痛苦！</span><div><span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">.\r\n</span></div>\r\n',4,2,'2020-02-20 06:09:21',5,0,0,NULL,'297e086c703f1c8d01703f1cef730000'),('297e086c7062099201706213f2100014','有些985/211硕士或者本科生，啥能力都没有，明明是半桶水','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">有些985/211硕士或者本科生，啥能力都没有，明明是半桶水，敢喊年薪20k</span><span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">，你当老板眼瞎的</span><span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">，有硬实力的985/211这些本科生拿20k+，我倒还信</span>',233,2,'2020-02-20 06:10:39',6,0,0,NULL,'297e086c703f1c8d01703f1cef730000'),('297e086c706209920170621532260017','准备自学java，各位大佬有什么建议。简单介绍一下，本人工作','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">准备自学java，各位大佬有什么建议。</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">简单介绍一下，本人工作两年时间，之前都是做CSharp，想在工作之余学习一门新的技术，丰富一下自己的技术储备，不过对java这块基本属于空白，希望在这里能够找到志同道合的</span>',3,0,'2020-02-20 06:12:01',1,0,0,NULL,'297e086c7041f2be017041f3e85c0000'),('297e086c7062099201706215988a0018','想入行IT，目前想去江苏风云科技参加一个java项目实训，但','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">想入行IT，目前想去江苏风云科技参加一个java项目实训，但是对Java的应用有些疑虑，学习这个还可以做哪些工作呢？知道的大佬来聊聊</span>',1,2,'2020-02-20 06:12:27',6,0,0,NULL,'297e086c7041f2be017041f3e85c0000'),('297e086c7062099201706216611c001b','我是一名大学的学生，一直跟着16年的黑马视频学习，最近学到了','<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">我是一名大学的学生，一直跟着16年的黑马视频学习，最近学到了框架部分，学完了hibernate，现在在学struts2,想知道现在2020年还有必要学这两个框架吗，</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">还有想问的是现在主流的框架具体的有哪些？</span><br style=\"box-sizing:content-box;color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\" />\r\n<span style=\"color:#333333;font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:14px;\">希望大佬们指点指点。感谢</span>',100,0,'2020-02-20 06:13:18',0,0,0,NULL,'297e086c70427de50170427e190e0000');
/*!40000 ALTER TABLE `paste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `praise`
--

DROP TABLE IF EXISTS `praise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `praise` (
  `userid` varchar(50) NOT NULL,
  `answerid` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`,`answerid`),
  KEY `FK5y56bv61n3217hitipvkbah56` (`answerid`),
  CONSTRAINT `FK5y56bv61n3217hitipvkbah56` FOREIGN KEY (`answerid`) REFERENCES `answer` (`id`),
  CONSTRAINT `FK9vua51f6gl5uk8bepum5jq0r2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `praise`
--

LOCK TABLES `praise` WRITE;
/*!40000 ALTER TABLE `praise` DISABLE KEYS */;
INSERT INTO `praise` VALUES ('297e086c70427de50170427e190e0000','297e086c706209920170620d159e0001'),('297e086c7041f2be017041f3e85c0000','297e086c706209920170620e02a20003'),('297e086c7041f2be017041f3e85c0000','297e086c706209920170620ff693000a'),('297e086c7041f2be017041f3e85c0000','297e086c706209920170621013b9000b'),('297e086c7041f2be017041f3e85c0000','297e086c7062099201706210495a000c');
/*!40000 ALTER TABLE `praise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `state` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `coin` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('297e086c703f1c8d01703f1cef730000','234','234','234','234','234',1,'359bdf98-82d9-492c-8e16-a9227374fe71','/images/5.gif',2,0),('297e086c703f4b8101703f4f18150000','trigger','1234','trigger','1317257555@qq.com','123123',1,'92545b29-38e1-46c5-ab22-ba0998726437','/images/6.gif',1,0),('297e086c7041f2be017041f3e85c0000','bian','123','123','bianzheng123@aliyun.com','123',1,'a07e2019-bacb-4561-9994-00f8ccd001eb','/images/10.gif',5,12312321),('297e086c70427de50170427e190e0000','siki','123','123','bianzheng123@aliyun.com','123',1,'1c2617e3-f55a-4c99-bd9c-3276b7b6a194','/images/15.gif',10,534);
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

-- Dump completed on 2020-02-20 18:36:01
