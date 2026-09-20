-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl92629133
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl92629133`
--

/*!40000 DROP DATABASE IF EXISTS `cl92629133`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl92629133` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl92629133`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/1710647829178.webp');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` varchar(200) DEFAULT NULL COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710647952207 DEFAULT CHARSET=utf8 COMMENT='试卷管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2024-03-17 03:52:49','试卷1',120,'1'),(1710647952206,'2024-03-17 03:59:11','222',10,'1');
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT NULL COMMENT '试题类型',
  `sequence` bigint(20) DEFAULT NULL COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710647989772 DEFAULT CHARSET=utf8 COMMENT='试题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2024-03-17 03:52:49',1,'试卷1','1+1等于多少?','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"11\",\"code\":\"B\"},{\"text\":\"十\",\"code\":\"C\"},{\"text\":\"王\",\"code\":\"D\"}]',20,'A','2',0,1),(2,'2024-03-17 03:52:49',1,'试卷1','2-1等于1，对吗?','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]',20,'A','2-1等于1',2,2),(3,'2024-03-17 03:52:49',1,'试卷1','下面哪些数是质数？。','[{\"text\":\"2\",\"code\":\"A\"},{\"text\":\"3\",\"code\":\"B\"},{\"text\":\"4\",\"code\":\"C\"},{\"text\":\"5\",\"code\":\"D\"}]',30,'A,B,D','2,3,5属于质数',1,3),(4,'2024-03-17 03:52:49',1,'试卷1','最小的自然是( )。','[]',30,'0','最小的自然数是0',3,4),(1710647989771,'2024-03-17 03:59:48',1710647952206,'222','123','[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]',100,'A,B,C','123',1,1);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT NULL COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) DEFAULT NULL COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710648089487 DEFAULT CHARSET=utf8 COMMENT='考试记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1710648089486,'2024-03-17 04:01:28','111',1710647952206,'222',1710647989771,'123','[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]',100,'A,B,C','123',100,'A,B,C',1710648013117);
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710648113189 DEFAULT CHARSET=utf8 COMMENT='学习社区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2024-03-17 03:52:49','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(92,'2024-03-17 03:52:49','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(93,'2024-03-17 03:52:49','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(94,'2024-03-17 03:52:49','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(95,'2024-03-17 03:52:49','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(96,'2024-03-17 03:52:49','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6),(1710648113188,'2024-03-17 04:01:52','111111','<p>11111111</p>',0,'111',NULL,'开放',1710648013117);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoyufenlei`
--

DROP TABLE IF EXISTS `jiaoyufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoyufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710647856685 DEFAULT CHARSET=utf8 COMMENT='教育分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoyufenlei`
--

LOCK TABLES `jiaoyufenlei` WRITE;
/*!40000 ALTER TABLE `jiaoyufenlei` DISABLE KEYS */;
INSERT INTO `jiaoyufenlei` VALUES (131,'2024-03-17 03:52:49','分类1'),(132,'2024-03-17 03:52:49','分类2'),(133,'2024-03-17 03:52:49','分类3'),(134,'2024-03-17 03:52:49','分类4'),(135,'2024-03-17 03:52:49','分类5'),(136,'2024-03-17 03:52:49','分类6'),(1710647849541,'2024-03-17 03:57:28','语文'),(1710647856684,'2024-03-17 03:57:36','历史');
/*!40000 ALTER TABLE `jiaoyufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoyuziyuan`
--

DROP TABLE IF EXISTS `jiaoyuziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoyuziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoyubiaoti` varchar(200) NOT NULL COMMENT '教育标题',
  `jiaoyufenlei` varchar(200) DEFAULT NULL COMMENT '教育分类',
  `fabushijian` datetime NOT NULL COMMENT '发布时间',
  `jiaoyuziyuan` longtext COMMENT '教育资源',
  `jiaoyuxiangqing` longtext NOT NULL COMMENT '教育详情',
  `tupian` longtext COMMENT '图片',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710647895513 DEFAULT CHARSET=utf8 COMMENT='教育资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoyuziyuan`
--

LOCK TABLES `jiaoyuziyuan` WRITE;
/*!40000 ALTER TABLE `jiaoyuziyuan` DISABLE KEYS */;
INSERT INTO `jiaoyuziyuan` VALUES (41,'2024-03-17 03:52:49','教育标题1','教育分类1','2024-03-17 11:52:49','','教育详情1','file/jiaoyuziyuanTupian1.jpg,file/jiaoyuziyuanTupian2.jpg,file/jiaoyuziyuanTupian3.jpg',1),(42,'2024-03-17 03:52:49','教育标题2','教育分类2','2024-03-17 11:52:49','','教育详情2','file/jiaoyuziyuanTupian2.jpg,file/jiaoyuziyuanTupian3.jpg,file/jiaoyuziyuanTupian4.jpg',2),(43,'2024-03-17 03:52:49','教育标题3','教育分类3','2024-03-17 11:52:49','','教育详情3','file/jiaoyuziyuanTupian3.jpg,file/jiaoyuziyuanTupian4.jpg,file/jiaoyuziyuanTupian5.jpg',3),(44,'2024-03-17 03:52:49','教育标题4','教育分类4','2024-03-17 11:52:49','','教育详情4','file/jiaoyuziyuanTupian4.jpg,file/jiaoyuziyuanTupian5.jpg,file/jiaoyuziyuanTupian6.jpg',4),(45,'2024-03-17 03:52:49','教育标题5','教育分类5','2024-03-17 11:52:49','','教育详情5','file/jiaoyuziyuanTupian5.jpg,file/jiaoyuziyuanTupian6.jpg,file/jiaoyuziyuanTupian7.jpg',5),(46,'2024-03-17 03:52:49','教育标题6','教育分类6','2024-03-17 11:52:49','','教育详情6','file/jiaoyuziyuanTupian6.jpg,file/jiaoyuziyuanTupian7.jpg,file/jiaoyuziyuanTupian8.jpg',6),(1710647895512,'2024-03-17 03:58:14','1111111','历史','2024-03-17 11:57:40','file/1710647874300.webp','<p>111111111111111</p><p><img src=\"http://localhost:8080/cl92629133/file/1710647893315.webp\" alt=\"\" data-href=\"\" style=\"\"/></p>','file/1710647882153.webp',1);
/*!40000 ALTER TABLE `jiaoyuziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-17 03:52:49','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common3\",\"menu\":\"考试管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试题管理\",\"menuJump\":\"列表\",\"tableName\":\"examquestion\"}],\"fontClass\":\"icon-common16\",\"menu\":\"试题管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"试卷管理\",\"tableName\":\"exampaper\"}],\"fontClass\":\"icon-common6\",\"menu\":\"试卷管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"学习社区\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common41\",\"menu\":\"学习社区管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"完成计划\",\"menuJump\":\"列表\",\"tableName\":\"wanchengjihua\"}],\"fontClass\":\"icon-common28\",\"menu\":\"完成计划管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"}],\"fontClass\":\"icon-common40\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线教育\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaoyu\"}],\"fontClass\":\"icon-common35\",\"menu\":\"在线教育管理\",\"unicode\":\"&#xee8c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教育资源\",\"menuJump\":\"列表\",\"tableName\":\"jiaoyuziyuan\"}],\"fontClass\":\"icon-common37\",\"menu\":\"教育资源管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user8\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common4\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common7\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教育分类\",\"menuJump\":\"列表\",\"tableName\":\"jiaoyufenlei\"}],\"fontClass\":\"icon-common45\",\"menu\":\"教育分类管理\",\"unicode\":\"&#xef3b;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"在线教育\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaoyu\"}],\"menu\":\"在线教育\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common48\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef65;\"}],\"fontClass\":\"icon-common48\",\"menu\":\"考试与评估\",\"unicode\":\"&#xef65;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"教育资源\",\"menuJump\":\"列表\",\"tableName\":\"jiaoyuziyuan\"}],\"menu\":\"教育资源\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\"],\"fontClass\":\"icon-common19\",\"menu\":\"学习社区\",\"menuJump\":\"列表\",\"tableName\":\"forum\",\"unicode\":\"&#xee00;\"}],\"fontClass\":\"icon-common19\",\"menu\":\"学习社区\",\"unicode\":\"&#xee00;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"考试记录\",\"tableName\":\"examrecord\"}],\"fontClass\":\"icon-common3\",\"menu\":\"考试管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common41\",\"menu\":\"学习社区管理\",\"unicode\":\"&#xeede;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common39\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"完成计划\",\"menuJump\":\"列表\",\"tableName\":\"wanchengjihua\"}],\"fontClass\":\"icon-common28\",\"menu\":\"完成计划管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"完成计划\"],\"menu\":\"学习计划\",\"menuJump\":\"列表\",\"tableName\":\"xuexijihua\"}],\"fontClass\":\"icon-common40\",\"menu\":\"学习计划管理\",\"unicode\":\"&#xeebb;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"在线教育\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaoyu\"}],\"menu\":\"在线教育\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common48\",\"menu\":\"试卷列表\",\"menuJump\":\"12\",\"tableName\":\"exampaper\",\"unicode\":\"&#xef65;\"}],\"fontClass\":\"icon-common48\",\"menu\":\"考试与评估\",\"unicode\":\"&#xef65;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"教育资源\",\"menuJump\":\"列表\",\"tableName\":\"jiaoyuziyuan\"}],\"menu\":\"教育资源\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\"],\"fontClass\":\"icon-common19\",\"menu\":\"学习社区\",\"menuJump\":\"列表\",\"tableName\":\"forum\",\"unicode\":\"&#xee00;\"}],\"fontClass\":\"icon-common19\",\"menu\":\"学习社区\",\"unicode\":\"&#xee00;\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710648100416 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1710648051197,'2024-03-17 04:00:51',1710647937794,'zaixianjiaoyu','2222222','file/1710647921923.webp','1',NULL,NULL,1710648013117),(1710648100415,'2024-03-17 04:01:39',1710647895512,'jiaoyuziyuan','1111111','file/1710647882153.webp','1',NULL,NULL,1710648013117);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','h2nwtqm3fgzv2f17zppl8osbn4creok2','2024-03-17 03:56:55','2024-03-17 04:56:55'),(2,1710648013117,'111','yonghu','用户','uwvehhl3jme2tw7r8jteq1rwrjdo4h3a','2024-03-17 04:00:18','2024-03-17 05:00:19');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-17 03:52:49','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanchengjihua`
--

DROP TABLE IF EXISTS `wanchengjihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanchengjihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jihuabiaoti` varchar(200) DEFAULT NULL COMMENT '计划标题',
  `jihuaneirong` varchar(200) DEFAULT NULL COMMENT '计划内容',
  `jihuatupian` longtext COMMENT '计划图片',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710648213590 DEFAULT CHARSET=utf8 COMMENT='完成计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanchengjihua`
--

LOCK TABLES `wanchengjihua` WRITE;
/*!40000 ALTER TABLE `wanchengjihua` DISABLE KEYS */;
INSERT INTO `wanchengjihua` VALUES (111,'2024-03-17 03:52:49','账号1','计划标题1','计划内容1','file/wanchengjihuaJihuatupian1.jpg,file/wanchengjihuaJihuatupian2.jpg,file/wanchengjihuaJihuatupian3.jpg','2024-03-17 11:52:49'),(112,'2024-03-17 03:52:49','账号2','计划标题2','计划内容2','file/wanchengjihuaJihuatupian2.jpg,file/wanchengjihuaJihuatupian3.jpg,file/wanchengjihuaJihuatupian4.jpg','2024-03-17 11:52:49'),(113,'2024-03-17 03:52:49','账号3','计划标题3','计划内容3','file/wanchengjihuaJihuatupian3.jpg,file/wanchengjihuaJihuatupian4.jpg,file/wanchengjihuaJihuatupian5.jpg','2024-03-17 11:52:49'),(114,'2024-03-17 03:52:49','账号4','计划标题4','计划内容4','file/wanchengjihuaJihuatupian4.jpg,file/wanchengjihuaJihuatupian5.jpg,file/wanchengjihuaJihuatupian6.jpg','2024-03-17 11:52:49'),(115,'2024-03-17 03:52:49','账号5','计划标题5','计划内容5','file/wanchengjihuaJihuatupian5.jpg,file/wanchengjihuaJihuatupian6.jpg,file/wanchengjihuaJihuatupian7.jpg','2024-03-17 11:52:49'),(116,'2024-03-17 03:52:49','账号6','计划标题6','计划内容6','file/wanchengjihuaJihuatupian6.jpg,file/wanchengjihuaJihuatupian7.jpg,file/wanchengjihuaJihuatupian8.jpg','2024-03-17 11:52:49'),(1710648213589,'2024-03-17 04:03:32','111','完成某某某课程','第一阶段1111、第二阶段2222、第三阶段333333333333333333333333','file/1710648203418.webp','2024-03-17 12:03:31');
/*!40000 ALTER TABLE `wanchengjihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexijihua`
--

DROP TABLE IF EXISTS `xuexijihua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jihuabiaoti` varchar(200) NOT NULL COMMENT '计划标题',
  `jihuaneirong` varchar(200) NOT NULL COMMENT '计划内容',
  `jihuatupian` longtext COMMENT '计划图片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710648205530 DEFAULT CHARSET=utf8 COMMENT='学习计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexijihua`
--

LOCK TABLES `xuexijihua` WRITE;
/*!40000 ALTER TABLE `xuexijihua` DISABLE KEYS */;
INSERT INTO `xuexijihua` VALUES (101,'2024-03-17 03:52:49','账号1','计划标题1','计划内容1','file/xuexijihuaJihuatupian1.jpg,file/xuexijihuaJihuatupian2.jpg,file/xuexijihuaJihuatupian3.jpg','已完成'),(102,'2024-03-17 03:52:49','账号2','计划标题2','计划内容2','file/xuexijihuaJihuatupian2.jpg,file/xuexijihuaJihuatupian3.jpg,file/xuexijihuaJihuatupian4.jpg','已完成'),(103,'2024-03-17 03:52:49','账号3','计划标题3','计划内容3','file/xuexijihuaJihuatupian3.jpg,file/xuexijihuaJihuatupian4.jpg,file/xuexijihuaJihuatupian5.jpg','已完成'),(104,'2024-03-17 03:52:49','账号4','计划标题4','计划内容4','file/xuexijihuaJihuatupian4.jpg,file/xuexijihuaJihuatupian5.jpg,file/xuexijihuaJihuatupian6.jpg','已完成'),(105,'2024-03-17 03:52:49','账号5','计划标题5','计划内容5','file/xuexijihuaJihuatupian5.jpg,file/xuexijihuaJihuatupian6.jpg,file/xuexijihuaJihuatupian7.jpg','已完成'),(106,'2024-03-17 03:52:49','账号6','计划标题6','计划内容6','file/xuexijihuaJihuatupian6.jpg,file/xuexijihuaJihuatupian7.jpg,file/xuexijihuaJihuatupian8.jpg','已完成'),(1710648205529,'2024-03-17 04:03:25','111','完成某某某课程','第一阶段1111、第二阶段2222、第三阶段333333333333333333333333','file/1710648203418.webp','已完成');
/*!40000 ALTER TABLE `xuexijihua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710648013118 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-17 03:52:49','账号1','123456','19819881111','file/yonghuTouxiang1.jpg'),(32,'2024-03-17 03:52:49','账号2','123456','19819881112','file/yonghuTouxiang2.jpg'),(33,'2024-03-17 03:52:49','账号3','123456','19819881113','file/yonghuTouxiang3.jpg'),(34,'2024-03-17 03:52:49','账号4','123456','19819881114','file/yonghuTouxiang4.jpg'),(35,'2024-03-17 03:52:49','账号5','123456','19819881115','file/yonghuTouxiang5.jpg'),(36,'2024-03-17 03:52:49','账号6','123456','19819881116','file/yonghuTouxiang6.jpg'),(1710648013117,'2024-03-17 04:00:13','111','111','18888888888','file/1710648012511.webp');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianjiaoyu`
--

DROP TABLE IF EXISTS `zaixianjiaoyu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianjiaoyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `shipin` longtext NOT NULL COMMENT '视频',
  `xiangqing` longtext COMMENT '详情',
  `tupian` longtext COMMENT '图片',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710647937795 DEFAULT CHARSET=utf8 COMMENT='在线教育';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianjiaoyu`
--

LOCK TABLES `zaixianjiaoyu` WRITE;
/*!40000 ALTER TABLE `zaixianjiaoyu` DISABLE KEYS */;
INSERT INTO `zaixianjiaoyu` VALUES (51,'2024-03-17 03:52:49','标题1','分类1','2024-03-17 11:52:49','','详情1','file/zaixianjiaoyuTupian1.jpg,file/zaixianjiaoyuTupian2.jpg,file/zaixianjiaoyuTupian3.jpg',1),(52,'2024-03-17 03:52:49','标题2','分类2','2024-03-17 11:52:49','','详情2','file/zaixianjiaoyuTupian2.jpg,file/zaixianjiaoyuTupian3.jpg,file/zaixianjiaoyuTupian4.jpg',2),(53,'2024-03-17 03:52:49','标题3','分类3','2024-03-17 11:52:49','','详情3','file/zaixianjiaoyuTupian3.jpg,file/zaixianjiaoyuTupian4.jpg,file/zaixianjiaoyuTupian5.jpg',3),(54,'2024-03-17 03:52:49','标题4','分类4','2024-03-17 11:52:49','','详情4','file/zaixianjiaoyuTupian4.jpg,file/zaixianjiaoyuTupian5.jpg,file/zaixianjiaoyuTupian6.jpg',4),(55,'2024-03-17 03:52:49','标题5','分类5','2024-03-17 11:52:49','','详情5','file/zaixianjiaoyuTupian5.jpg,file/zaixianjiaoyuTupian6.jpg,file/zaixianjiaoyuTupian7.jpg',5),(56,'2024-03-17 03:52:49','标题6','分类6','2024-03-17 11:52:49','','详情6','file/zaixianjiaoyuTupian6.jpg,file/zaixianjiaoyuTupian7.jpg,file/zaixianjiaoyuTupian8.jpg',6),(1710647937794,'2024-03-17 03:58:57','2222222','语文','2024-03-17 11:58:20','file/1710647915436.mp4','<p>22222222222222222</p><p><img src=\"http://localhost:8080/cl92629133/file/1710647935690.webp\" alt=\"\" data-href=\"\" style=\"\"/></p>','file/1710647921923.webp',1);
/*!40000 ALTER TABLE `zaixianjiaoyu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17 14:28:53
