-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: medic
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

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
-- Table structure for table `Website_accessoryexamination`
--

DROP TABLE IF EXISTS `Website_accessoryexamination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_accessoryexamination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `AE_type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `D_id` int(11) NOT NULL,
  `doc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_accessoryexamination`
--

LOCK TABLES `Website_accessoryexamination` WRITE;
/*!40000 ALTER TABLE `Website_accessoryexamination` DISABLE KEYS */;
INSERT INTO `Website_accessoryexamination` VALUES (18,'0000000001','0',1,'2017-04-05','6','b81d570c1c9c56f348f1f96576677e52','6',4,'AE/问卷_KuJag1L.png'),(19,'0000000001','0',1,'2017-04-05','2','2fb4c73a2da7b50a2766a737bd4772fa','234',4,'AE/问卷3.png'),(20,'0000000001','0',1,'2017-04-06','3','4c15d45f6f6404b5324deb13068c51e4','123',4,'AE/问卷1_pZHjK2t.png'),(21,'0000000001','0',1,'2017-04-05','1','0a613e024297e37d2751e5607fb40413','1',4,'AE/问卷1_szRUnGM.png'),(22,'0000000001','0',1,'2017-04-21','4','4b3737bd59d696bc81236d8c9ff128cd','5',4,'AE/临床详细信息.png'),(23,'0000000001','0',1,'2017-04-15','5','89c2c31f1d89c34d586511f6a13110bb','5',4,'AE/辅助检查和附件_EB2H3Cg.png'),(33,'0000000001','0',1,'1970-01-01','3','a98c7c22cc58b8a55a47ff70d04577f8','',4,'AE/123_RmtT7fo.jpg');
/*!40000 ALTER TABLE `Website_accessoryexamination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_appattachment`
--

DROP TABLE IF EXISTS `Website_appattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_appattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AI_id` int(11) NOT NULL,
  `dir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_appattachment`
--

LOCK TABLES `Website_appattachment` WRITE;
/*!40000 ALTER TABLE `Website_appattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_appattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_appinfo`
--

DROP TABLE IF EXISTS `Website_appinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_appinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AI_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_appinfo`
--

LOCK TABLES `Website_appinfo` WRITE;
/*!40000 ALTER TABLE `Website_appinfo` DISABLE KEYS */;
INSERT INTO `Website_appinfo` VALUES (1,'2017-04-24','0000000001','0','00000000011492963200000',0),(2,'2017-04-25','0000000001','0','00000000011493049600000',0),(3,'2017-04-22','0000000001','0','00000000011492790400000',6),(4,'2017-05-04','0000000002','0','00000000021493827200000',7),(5,'2017-05-05','0000000001','2','00000000011493913600000',5),(6,'2017-05-05','0000000001','2','00000000011493913600000',6),(7,'2017-05-05','0000000001','2','00000000011493913600000',7),(50,'2017-05-10','0000000002','0','000000000214943456000000',40),(51,'2017-05-10','0000000002','1','000000000214943456000001',12),(52,'2017-05-10','0000000002','2','000000000214943456000002',19),(53,'2017-05-09','0000000002','0','000000000214942592000000',41);
/*!40000 ALTER TABLE `Website_appinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_attachinfo`
--

DROP TABLE IF EXISTS `Website_attachinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_attachinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  `D_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_attachinfo`
--

LOCK TABLES `Website_attachinfo` WRITE;
/*!40000 ALTER TABLE `Website_attachinfo` DISABLE KEYS */;
INSERT INTO `Website_attachinfo` VALUES (5,'0000000001','2017-04-15','0',1,4,'2092c3d9c4a03c44394e1716e7b07e93','紫霞仙子','Attachment/1.jpg'),(12,'0000000001','2017-04-25','0',0,0,'f0e410e32cff7aaabe0d3386c6be4632','from app','Attachment/IMG_20170425_230444.jpg'),(13,'0000000001','2017-04-22','0',6,0,'0d18ea0a5d895cca04b8c352c4692d77','from app','Attachment/IMG_20170425_230842.jpg'),(14,'0000000001','2017-04-25','0',0,0,'44fa8906bca880a3fc6fd3a50c2b4b55','from app','Attachment/IMG_20170425_231316.jpg'),(15,'0000000002','2017-05-04','0',7,0,'fcd454055480d0a0ee4f6b014c1400e9','from app','Attachment/IMG_20170504_215501.jpg'),(17,'0000000001','1970-01-01','2',1,4,'b1c0fad88d944db696626b51a19bec4c','123','Attachment/123.jpg'),(18,'0000000001','2017-05-12','2',1,4,'2944107898d60efe1c25686ec25f36cc','','Attachment/123_Z1xF53x.jpg'),(19,'0000000001','2017-05-17','1',1,4,'124d6adf3bc44604aef9309c95c305ca','12','Attachment/123_uSCkFgJ.jpg'),(20,'0000000001','1970-01-01','2',4,4,'5f8af5e0a68fc14b5d76cfd52adfa89f','12','Attachment/123_crih9wQ.jpg'),(25,'0000000002','2017-05-10','0',15,0,'04b3bfb9329ddb79b6d619cbc85dfa33','from app','Attachment/IMG_20170510_193723.jpg'),(26,'0000000002','2017-05-10','0',15,0,'5783e21299968a872650f7be342ba342','from app','Attachment/IMG_20170510_193740.jpg'),(30,'0000000002','2017-05-10','0',40,0,'cacee8f86670be0851909b2cdd04ef0f','from app','Attachment/IMG_20170510_214956.jpg'),(31,'0000000002','2017-05-10','1',12,0,'9c83379c2bba76fa1b87cbb0b7c92562','from app','Attachment/IMG_20170510_215013.jpg'),(32,'0000000002','2017-05-10','2',19,0,'9df96d070a6e57d41cb17e79fd747551','from app','Attachment/IMG_20170510_215040.jpg'),(33,'0000000002','2017-05-10','0',40,0,'5920ab799bdca9792e8d5102933e4326','from app','Attachment/IMG_20170510_215100.jpg');
/*!40000 ALTER TABLE `Website_attachinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_bloodgasanalysis`
--

DROP TABLE IF EXISTS `Website_bloodgasanalysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_bloodgasanalysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `head` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useOxygen` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oxygen` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PH` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaCO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HCO3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `A_aDO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BEecf` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lac` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SaO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_bloodgasanalysis`
--

LOCK TABLES `Website_bloodgasanalysis` WRITE;
/*!40000 ALTER TABLE `Website_bloodgasanalysis` DISABLE KEYS */;
INSERT INTO `Website_bloodgasanalysis` VALUES (2,'0000000001','2017-03-28','2','1','1','1','1','234','1','1','1','1','1',19);
/*!40000 ALTER TABLE `Website_bloodgasanalysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_cardiogram`
--

DROP TABLE IF EXISTS `Website_cardiogram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_cardiogram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `isNormal` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_cardiogram`
--

LOCK TABLES `Website_cardiogram` WRITE;
/*!40000 ALTER TABLE `Website_cardiogram` DISABLE KEYS */;
INSERT INTO `Website_cardiogram` VALUES (1,'0000000001','1970-01-23','2','269','123',18);
/*!40000 ALTER TABLE `Website_cardiogram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_catandmrc`
--

DROP TABLE IF EXISTS `Website_catandmrc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_catandmrc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `cat1` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat2` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat3` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat4` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat5` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat6` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat7` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat8` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catSum` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrc` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acuteExac` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_catandmrc`
--

LOCK TABLES `Website_catandmrc` WRITE;
/*!40000 ALTER TABLE `Website_catandmrc` DISABLE KEYS */;
INSERT INTO `Website_catandmrc` VALUES (6,'0000000001','2013-01-02','0','1','2','0','2','1','3','2','100','10','0'),(12,'0000000001','2017-05-03','0','0','0','0','0','0','0','0','12','12','1'),(13,'0000000001','2017-05-04','5','5','5','4','3','3','3','3','16','16','1'),(15,'0000000001','2017-05-05','3','3','3','3','3','3','3','3','26','26','0'),(16,'0000000001','2017-04-30','','','','','','','','','10','10','1'),(17,'0000000001','2017-05-01','','','','','','','','','12','12','1'),(18,'0000000001','2017-05-02','','','','','','','','','11','11','1'),(19,'0000000001','2017-05-06','','','','','','','','','11','11','1'),(20,'0000000001','2017-05-07','','','','','','','','','16','16','1'),(21,'0000000001','2017-05-08','','','','','','','','','1','1','1'),(22,'0000000001','2017-05-09','','','','','','','','','14','14','1'),(23,'0000000001','2017-05-10','','','','','','','','','21','21','1'),(24,'0000000001','2017-05-11','','','','','','','','','12','12','1'),(25,'0000000001','2017-05-12','','','','','','','','','16','16','1'),(26,'0000000001','2017-05-13','','','','','','','','','10','10','1'),(27,'0000000001','2017-05-14','','','','','','','','','5','5','1');
/*!40000 ALTER TABLE `Website_catandmrc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_clinic`
--

DROP TABLE IF EXISTS `Website_clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_clinic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  `dangerType` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke1` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke5` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke8` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke9` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoke10` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powder1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powder2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `powder3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biology1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biology2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hAir1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hAir2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gm1` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gm2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drink1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drink2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drink3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drink4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung5` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lung7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure2` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure4` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure5` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure8` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure9` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure10` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure11` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure12` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure13` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure14` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure15` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure16` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure17` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure18` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure19` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure20` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure21` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure22` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure23` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure24` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure25` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cure26` int(11) NOT NULL,
  `comp1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp4` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp5` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comp6` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_clinic`
--

LOCK TABLES `Website_clinic` WRITE;
/*!40000 ALTER TABLE `Website_clinic` DISABLE KEYS */;
INSERT INTO `Website_clinic` VALUES (1,'0000000001','0',1,'124','1','','','','','','1','1','1','','','','','','','','','1','','1','','1','','','','2','','','','','1','1','1','1','1','','1','1','','1','','1','','1','','1','','1','','1','','','','','',1,'1','1','1','1','1','1','112','2017-03-31');
/*!40000 ALTER TABLE `Website_clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_co`
--

DROP TABLE IF EXISTS `Website_co`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_co` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shunYi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouXiGong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongDingMenNei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yuFa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_co`
--

LOCK TABLES `Website_co` WRITE;
/*!40000 ALTER TABLE `Website_co` DISABLE KEYS */;
INSERT INTO `Website_co` VALUES (44,'2017-05-11 17:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.3','0.2','未公布','0.2','未公布','0.2','0.2','未公布','0.4','未公布','0.1','0.1','0.1','0.2','0.2','0.2','0.2','0.2','未公布','0.2','0.2','0.1','0.1','0.1','0.1','0.1','0.4','0.2','0.1','2017-05-11 18:00:03'),(45,'2017-05-11 18:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.4','0.2','0.1','0.2','0.2','0.3','0.2','0.2','0.3','未公布','0.2','0.1','0.1','0.2','0.2','0.2','0.2','0.2','0.1','0.2','0.2','0.1','0.1','0.1','0.1','0.4','0.4','0.2','0.1','2017-05-11 18:41:25'),(46,'2017-05-11 18:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.4','0.2','0.1','0.2','0.2','0.3','0.2','0.2','0.3','未公布','0.2','0.1','0.1','0.2','0.2','0.2','0.2','0.2','0.1','0.2','0.2','0.1','0.1','0.1','0.1','0.4','0.4','0.2','0.1','2017-05-11 19:00:03'),(47,'2017-05-11 19:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.4','0.2','0.1','0.2','0.4','0.2','0.2','0.2','0.3','未公布','0.1','0.1','0.1','0.2','0.2','0.2','0.2','0.2','0.1','0.2','0.2','0.1','0.1','0.1','0.1','0.1','0.3','0.2','0.1','2017-05-11 20:00:03'),(48,'2017-05-11 20:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.3','0.2','2.5','0.3','0.4','0.2','0.2','0.2','0.2','未公布','0.1','0.1','0.1','0.2','0.2','0.2','0.2','0.2','0.1','0.2','0.2','0.1','0.1','0.1','0.1','0.1','0.3','0.2','0.1','2017-05-11 21:00:03'),(49,'2017-05-11 21:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.3','0.2','0.2','0.3','0.4','0.2','0.2','0.2','0.3','未公布','0.2','0.1','0.1','0.2','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.1','0.1','0.1','0.3','0.2','0.1','2017-05-11 22:00:03'),(50,'2017-05-11 22:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.5','0.2','0.3','0.3','0.4','0.3','0.2','0.2','0.3','未公布','0.2','0.1','0.2','0.2','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.1','0.1','0.1','0.3','0.2','0.1','2017-05-11 23:00:05'),(51,'2017-05-11 23:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.4','0.2','0.3','0.3','0.5','0.3','0.2','0.2','0.3','未公布','0.2','0.1','0.1','0.2','0.2','0.2','0.2','0.5','0.2','0.2','0.2','0.1','0.1','未公布','0.1','0.1','0.3','0.3','0.1','2017-05-12 00:00:02'),(52,'2017-05-12 00:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.5','0.2','0.4','0.3','0.5','0.3','0.2','0.2','0.2','未公布','0.3','0.1','0.1','0.2','0.2','0.2','0.2','0.5','0.2','0.2','0.2','0.1','0.1','0.4','0.1','0.1','0.4','0.2','0.1','2017-05-12 01:00:02'),(53,'2017-05-12 01:00:00','0.1','0.2','0.1','0.1','0.2','0.2','0.6','0.3','0.4','0.3','0.5','0.3','0.3','0.2','0.3','未公布','0.3','0.1','0.2','0.2','0.3','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.4','0.3','0.1','0.4','0.3','0.1','2017-05-12 02:00:03'),(54,'2017-05-12 02:00:00','0.1','0.2','0.2','0.1','0.2','0.2','0.5','0.3','0.5','0.4','0.5','0.3','0.3','0.2','0.2','未公布','0.3','0.1','0.1','0.2','0.4','0.3','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.3','0.2','0.1','0.4','0.4','0.1','2017-05-12 03:00:02'),(55,'2017-05-12 03:00:00','0.4','0.2','0.2','0.1','0.2','0.3','0.5','0.3','0.4','0.3','0.5','0.3','0.2','0.2','0.2','未公布','0.2','0.2','0.1','0.2','0.3','0.3','0.3','0.4','0.2','0.2','0.2','0.1','0.1','0.4','0.2','0.2','0.2','0.3','0.1','2017-05-12 04:00:03'),(56,'2017-05-12 04:00:00','0.2','0.3','0.2','0.1','0.2','0.2','0.4','0.4','0.4','0.3','0.5','0.4','0.2','0.2','0.3','未公布','0.2','0.2','0.1','0.2','0.2','0.4','0.3','0.3','0.3','0.2','0.2','0.1','0.1','0.5','0.3','0.2','0.3','0.3','0.1','2017-05-12 05:00:03'),(57,'2017-05-12 05:00:00','0.3','0.3','0.2','0.1','0.2','0.3','0.4','0.4','0.4','0.3','0.5','0.3','0.3','0.2','0.2','未公布','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.3','0.2','0.2','0.1','0.1','0.6','0.3','0.2','0.2','0.2','0.1','2017-05-12 06:00:03'),(58,'2017-05-12 05:00:00','0.3','0.3','0.2','0.1','0.2','0.3','0.4','0.4','0.4','0.3','0.5','0.3','0.3','0.2','0.2','未公布','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.3','0.2','0.2','0.1','0.1','0.6','0.3','0.2','0.2','0.2','0.1','2017-05-12 07:00:02'),(59,'2017-05-12 07:00:00','0.3','0.4','0.3','0.2','0.4','0.3','0.5','0.4','0.5','0.5','0.7','0.4','0.3','0.4','0.5','未公布','0.2','0.2','0.2','0.4','0.3','0.4','0.4','0.5','0.4','0.3','0.3','0.1','0.1','0.3','0.2','未公布','0.4','0.4','0.3','2017-05-12 08:00:02'),(60,'2017-05-12 08:00:00','0.3','0.3','0.4','0.2','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.4','0.4','0.3','0.4','未公布','0.2','0.3','0.2','0.3','0.4','0.4','0.4','0.4','0.4','0.3','0.3','0.1','0.1','0.3','0.3','0.7','0.3','0.3','0.3','2017-05-12 09:00:02'),(61,'2017-05-12 09:00:00','0.3','0.3','0.4','0.2','0.4','0.4','0.5','0.5','0.5','0.5','0.7','0.4','0.4','0.3','0.4','未公布','0.3','0.2','0.2','0.3',NULL,'0.4','0.4','0.3','0.4','0.4','0.3','0.2','0.1','0.4','0.3','0.6','0.4','0.4','0.3','2017-05-12 10:00:02'),(62,'2017-05-12 10:00:00','0.3','0.3','0.3','0.2','0.4','0.3','0.6','0.5','0.5','0.4','0.6','0.5','0.5','0.4','0.5','未公布','0.3','0.2','0.3','0.4',NULL,'0.4','0.4','0.3','0.4','0.4','0.3','0.1','0.1','0.4','0.2','0.5','0.4','0.3','0.2','2017-05-12 11:00:02'),(63,'2017-05-12 11:00:00','0.3','0.3','0.3','0.4','0.3','0.3','0.5','0.4','0.4','0.4','0.6','0.5','0.5','0.3','0.4','未公布','0.3','0.2','0.4','0.3',NULL,'0.4','0.4','0.3','0.4','0.3','0.3','0.2','0.2','0.3','0.2','0.3','0.4','0.3','0.3','2017-05-12 12:00:05'),(64,'2017-05-12 12:00:00','0.3','0.3','0.3','0.4','0.3','0.3','0.6','0.4','0.4','0.4','0.6','0.5','0.4','0.4','0.4','未公布','0.4','0.2','0.4','0.3','未公布','0.4','0.4','0.4','0.4','0.3','0.3','0.2','0.4','0.3','0.2','0.3','0.4','0.3','0.3','2017-05-12 13:00:03'),(65,'2017-05-12 13:00:00','0.3','0.4','0.3','0.2','0.3','0.3','0.6','0.4','0.4','0.4','0.6','0.5','0.4','0.4','0.4','未公布','0.4','0.3','0.3','0.4','0.5','0.4','0.4','0.4','0.4','0.3','0.4','0.2','0.4','0.3','0.2','0.3','0.4','0.3','0.3','2017-05-12 14:00:03'),(66,'2017-05-12 14:00:00','0.4','0.4','0.3','0.2','0.4','0.3','0.6','0.4','0.5','0.4','0.6','0.5','0.4','0.4','0.5','未公布','0.4','0.3','0.3','0.4','0.5','0.4','0.5','0.4','0.4','0.3','0.4','0.2','0.4','0.2','0.2','0.3','0.4','0.4','0.3','2017-05-12 15:00:03'),(67,'2017-05-12 15:00:00','0.4','0.4','0.3','0.2','0.4','0.3','0.6','0.4','0.5','0.5','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.3','0.2','0.4','0.4','0.4','0.4','2017-05-12 16:00:03'),(68,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:00:03'),(69,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:01:35'),(70,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:02:48'),(71,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:05:43'),(72,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:06:10'),(73,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:13:12'),(74,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:15:54'),(75,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:17:05'),(76,'2017-05-12 16:00:00','0.4','0.4','0.3','0.2','0.4','0.4','0.6','0.5','0.5','0.4','0.7','0.5','0.4','0.4','0.5','未公布','0.5','0.3','0.3','0.4','0.6','0.5','0.5','0.4','0.5','0.3','0.4','0.3','0.5','0.4','0.3','0.4','0.5','0.4','0.4','2017-05-12 17:19:57'),(77,'2017-05-12 17:00:00','0.5','0.4','0.3','0.4','0.5','0.4','0.8','0.5','0.5','0.5','0.7','0.6','0.4','0.5','0.5','未公布','0.5','0.3','0.4','0.5','0.6','0.5','0.5','0.4','0.6','0.3','0.5','0.3','0.5','0.4','0.3','0.5','0.5','0.4','0.4','2017-05-12 17:20:59'),(78,'2017-05-12 17:00:00','0.5','0.4','0.3','0.4','0.5','0.4','0.8','0.5','0.5','0.5','0.7','0.6','0.4','0.5','0.5','未公布','0.5','0.3','0.4','0.5','0.6','0.5','0.5','0.4','0.6','0.3','0.5','0.3','0.5','0.4','0.3','0.5','0.5','0.4','0.4','2017-05-12 17:21:40'),(79,'2017-05-12 17:00:00','0.5','0.4','0.3','0.4','0.5','0.4','0.8','0.5','0.5','0.5','0.7','0.6','0.4','0.5','0.5','未公布','0.5','0.3','0.4','0.5','0.6','0.5','0.5','0.4','0.6','0.3','0.5','0.3','0.5','0.4','0.3','0.5','0.5','0.4','0.4','2017-05-12 17:22:40'),(80,'2017-05-12 17:00:00','0.5','0.4','0.3','0.4','0.5','0.4','0.8','0.5','0.5','0.5','0.7','0.6','0.4','0.5','0.5','未公布','0.5','0.3','0.4','0.5','0.6','0.5','0.5','0.4','0.6','0.3','0.5','0.3','0.5','0.4','0.3','0.5','0.5','0.4','0.4','2017-05-12 18:00:03'),(81,'2017-05-12 18:00:00','0.5','0.4','0.4','0.4','0.5','0.4','0.9','0.6','0.6','0.5','0.7','0.6','0.5','0.5','0.6','未公布','0.5','0.3','0.4','0.5','0.6','0.5','0.5','0.5','0.6','0.3','0.5','0.4','0.5','0.4','0.3','0.5','0.6','0.4','0.4','2017-05-12 19:00:03'),(82,'2017-05-12 19:00:00','0.5','0.5','0.4','0.4','0.5','0.3','0.7','0.6','0.6','0.6','0.8','0.7','0.5','0.5','0.6','未公布','0.5','0.3','0.4','0.5','0.7','0.6','0.6','0.6','0.6','0.3','0.5','0.4','0.5','0.5','0.2','0.6','0.6','0.5','0.4','2017-05-12 20:00:03'),(83,'2017-05-12 20:00:00','0.5','0.5','0.4','0.4','0.6','0.2','0.8','0.5','0.7','0.6','0.8','0.7',NULL,'0.5','0.6','未公布','0.5','0.4','0.4','0.6','0.7','0.6','0.7','0.6','0.7','0.3','0.3','0.4','0.5','0.5','0.1','0.6','0.6','0.5','0.4','2017-05-12 21:00:03'),(84,'2017-05-12 21:00:00','0.4','0.5','0.5','0.2','0.5','0.3','0.7','0.4','0.6','0.4','0.7','0.7','0.5','0.4','0.6','未公布','0.4','0.4','0.3','0.5','0.5','0.6','0.6','0.7','0.6','0.3','0.2','0.4','0.5','0.4','0.2','0.5','0.5','0.5','0.4','2017-05-12 22:00:03'),(85,'2017-05-12 22:00:00','0.3','0.4','0.4','0.1','0.4','0.2','0.6','0.3','0.6','0.4','0.7','0.5','0.5','0.3','0.6','未公布','0.3','0.3','0.3','0.4','0.5','0.5','0.5','0.6','0.5','0.3','0.2','0.3','0.5','0.4','0.3','0.5','0.5','0.5','0.4','2017-05-12 23:00:06'),(86,'2017-05-12 23:00:00','0.3','0.4','0.4','0.2','0.3','0.2','1','0.3','0.6','0.3','0.6','0.4','0.3','0.2','0.5','未公布','0.5','0.3','0.3','0.4','0.5','0.4','0.5','0.5','0.3','0.3','0.2','0.3','0.5','0.2','0.2','0.4','0.4','0.4','0.3','2017-05-13 00:00:02'),(87,'2017-05-13 00:00:00','0.2','0.3','0.3','0.1','0.3','0.2','0.6','0.3','0.6','0.3','0.5','0.4','0.3','0.1','0.3','未公布','0.6','0.3','0.2','0.4','0.4','0.4','0.5','0.4','0.3','0.3','0.2','0.2','0.5','0.3','0.2','0.4','0.3','0.3','0.3','2017-05-13 01:00:03'),(88,'2017-05-13 01:00:00','0.2','0.3','0.2','0.1','0.2','0.2','0.7','0.3','0.6','0.3','0.5','0.3','0.3','0.1','0.3','未公布','0.3','0.2','0.2','0.3','0.3','0.4','0.3','0.4','0.3','0.2','0.2','0.1','0.4','0.2','0.1','0.3','0.3','0.3','0.2','2017-05-13 02:00:03'),(89,'2017-05-13 02:00:00','0.3','0.2','0.1','0.1','0.2','0.2','0.3','0.3','0.3','0.2','0.5','0.3','0.2','0.1','0.3','未公布','0.2','0.2','未公布','0.2','0.3','0.3','0.3','0.3','0.2','0.2','0.2','0.1','0.4','0.1','0.1','0.3','0.3','0.2','0.1','2017-05-13 03:00:03'),(90,'2017-05-13 03:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.4','0.2','0.2','0.2','0.2','0.3','0.2',NULL,'0.3','未公布','0.2','0.2','未公布','0.2','0.2','0.3','0.1','0.3','0.3','0.2','0.1','0.1','0.5','0.2','0.2','0.1','0.3','0.3','0.2','2017-05-13 04:00:03'),(91,'2017-05-13 04:00:00','0.1','0.2','0.2','0.1','0.2','0.1','0.3','0.3','0.2','0.2','0.2','0.3','0.2','0.1','0.4','未公布','0.2','0.2','0.2','0.3','0.1','0.3','0.1','0.4','0.2','0.2','0.1','0.1','0.4','0.1','0.2','0.1','0.3','0.3','0.2','2017-05-13 05:00:03'),(92,'2017-05-13 05:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.2','0.2','0.1','0.3','未公布','0.2','0.1','0.2','0.1','0.1','0.2','0.1','0.2','0.1','0.2','0.1','0.1','0.4','0.1','0.2','0.1','0.2','0.2','0.1','2017-05-13 06:00:03'),(93,'2017-05-13 06:00:00','0.2','0.2','0.1','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.2',NULL,'0.1','0.3','未公布','0.3','0.1','0.2','0.1','0.1','0.2','0.2','0.2','0.1','0.2','0.1','0.1','0.3','0.1','0.2','0.1','0.2','0.2','0.2','2017-05-13 07:00:03'),(94,'2017-05-13 07:00:00','0.2','0.2','0.1','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.2','0.3','0.1','0.2','未公布','0.2','0.1','0.2','0.2','0.1','0.2','0.2','0.2','0.1','0.2','0.1','0.1','0.3','0.2','0.2','0.1','0.2','0.2','0.2','2017-05-13 08:00:03'),(95,'2017-05-13 08:00:00','0.2','0.3','0.1','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.2','0.3','0.1','0.3','未公布','0.2','0.1','0.2','0.2','0.2','0.2','0.2','0.2','0.2','0.1','0.1','0.1','0.3','0.2','0.3','0.1','0.3','0.2','0.2','2017-05-13 09:00:03'),(96,'2017-05-13 09:00:00','0.2','0.3','0.1','0.2','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.2','0.3','0.1','0.3','未公布','0.2','0.1','0.2','0.2','0.2','0.2','0.2','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.3','0.1','0.3','0.2','0.2','2017-05-13 10:00:03'),(97,'2017-05-13 10:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.3','0.2','0.3','0.1','0.3','未公布','0.2','0.1','0.2','0.2','0.2','0.2','0.1','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.3','0.1','0.3','0.2','0.2','2017-05-13 11:00:03'),(98,'2017-05-13 11:00:00','0.2','0.2','0.2','0.2','0.2','0.2','0.2','0.3','0.2','0.2','0.3','0.3','0.3','0.1','0.4','未公布','0.3','0.1','0.2','0.2','0.2','0.3','0.1','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.3','0.1','0.3','0.2','0.2','2017-05-13 12:00:03'),(99,'2017-05-13 12:00:00','0.2','0.2','0.2','0.2','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.3','0.3','0.1','0.3','未公布','0.3','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.3','0.1','0.3','0.2','0.2','2017-05-13 13:00:03'),(100,'2017-05-13 13:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.2','0.2','0.3','0.3','0.1','0.3','未公布','0.3','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.2','0.1','0.3','0.2','0.2','2017-05-13 14:00:03'),(101,'2017-05-13 14:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.2','0.2','0.3','0.3','0.1','0.4','未公布','0.3','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.2','0.1','0.3','0.2','0.2','2017-05-13 15:00:04'),(102,'2017-05-13 15:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.2','0.2','0.3','0.3','0.1','0.4','未公布','0.3','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.2','0.1','0.2','0.1','0.3','0.2','0.2','0.1','0.3','0.2','0.2','2017-05-13 16:00:02'),(103,'2017-05-13 16:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.1','0.2','0.2','0.3','0.3','0.1','0.3','未公布','0.3','0.1','0.2','0.3','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.1',NULL,'0.2','0.2','0.1','0.3','0.2','0.2','2017-05-13 17:00:02'),(104,'2017-05-13 17:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.2','0.2','0.3','0.3','0.1','0.4','未公布','0.3','0.1','0.2','0.3','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.1','0.3','0.2','0.2','0.1','0.3','0.2','0.2','2017-05-13 18:00:03'),(105,'2017-05-13 18:00:00','0.2','0.2','0.2','0.1','0.2','0.2','0.3','0.3','0.2','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.3','0.1','0.2','0.3','0.2','0.3','0.2','0.2','0.2','0.1','0.1','0.1','0.3','0.2','0.2','0.2','0.3','0.2','0.2','2017-05-13 19:00:02'),(106,'2017-05-13 19:00:00','0.2','0.2','0.2','0.1','0.3','0.2','0.3','0.3','0.2','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.3','0.1','0.2','0.2','0.2','0.3','0.2','0.2','0.3','0.1','0.1','0.1','0.3','0.3','0.2','未公布','0.3','0.2','0.2','2017-05-13 20:00:03'),(107,'2017-05-13 20:00:00','0.2','0.3','0.3','0.2','0.3','0.2','0.4','0.4','0.3','0.2','0.1','0.3','0.4','0.1','0.5','未公布','0.3','0.1','0.2','0.3','0.3','0.4','0.3','0.2','0.4','0.1','0.2','0.2','0.3','0.2','0.2','0.3','0.3','0.3','0.3','2017-05-13 21:00:04'),(108,'2017-05-13 21:00:00','0.2','0.3','0.2','0.2','0.3','0.2','0.6','0.5','0.4','0.3','0.1','0.5','0.5','0.1','0.5','未公布','0.3','0.2','0.3','0.4','0.5','0.4','0.4','0.3','0.5','0.2','0.2','0.2','0.4','0.2','0.2','0.6','0.4','0.4','0.3','2017-05-13 22:00:03'),(109,'2017-05-14 00:00:00','0.2','0.3','0.3','0.2','0.4','0.2','0.7','0.4','0.7','0.5','0.2','0.7','0.5','0.3','0.5','未公布','0.3','0.2','0.3','0.4','0.4','0.5','0.5','0.7','0.8','0.2','0.2','0.3','0.4','0.3','0.4','0.5','0.6','0.7','0.4','2017-05-14 01:00:03'),(110,'2017-05-14 01:00:00','0.3','0.3','0.3','0.2','0.4','0.3','0.4','0.3','0.4','0.3','0.1','0.4','0.5','0.1','0.4','未公布','0.3','0.2','0.2','0.3','0.2','0.4','0.4','0.3','0.4','0.1','0.2','0.3','0.4','0.3','0.4','0.3','0.5','0.4','0.4','2017-05-14 02:00:03'),(111,'2017-05-14 02:00:00','0.3','0.3','0.4','0.2','0.3','0.2','0.2','0.3','0.3','0.2','0.1','0.2','0.3','0.1','0.3','未公布','0.3','0.2','0.2','0.2','0.2','0.3','0.3','0.2','0.3','0.2','0.2','0.2','0.4','0.3','0.4','0.2','0.3','0.2','0.4','2017-05-14 03:00:03'),(112,'2017-05-14 02:00:00','0.3','0.3','0.4','0.2','0.3','0.2','0.2','0.3','0.3','0.2','0.1','0.2','0.3','0.1','0.3','未公布','0.3','0.2','0.2','0.2','0.2','0.3','0.3','0.2','0.3','0.2','0.2','0.2','0.4','0.3','0.4','0.2','0.3','0.2','0.4','2017-05-14 04:00:03'),(113,'2017-05-14 05:00:00','0.3','0.2','0.9','0.2','0.7','0.3',NULL,'0.3','0.3','0.4','0.1','0.3','0.3','0.1','0.2','未公布','0.3','0.2','0.2','0.2','0.2','0.3','0.3','0.2','0.3','0.2','0.2','0.5','0.4','0.4','0.3','0.2','0.3','0.2','0.8','2017-05-14 06:00:02'),(114,'2017-05-14 06:00:00','0.3','0.2','1.1','0.2','1','0.3',NULL,'0.3','0.3','1','0.1','0.2','0.3','0.1','0.3','未公布','0.3','0.4','0.3','0.2','0.2','0.3','0.3',NULL,'0.9','0.2','0.2','0.8','0.4','0.4','0.3','0.2','0.3','0.2','0.8','2017-05-14 07:00:02'),(115,'2017-05-14 07:00:00','0.4','0.2','1.2','0.2','1.2','0.3','0.3','0.3','0.3','1.4','0.1','0.3','0.4','0.1','0.6','未公布','0.3','0.6','0.3','0.3','0.2','0.3','0.4','0.4','1','0.2','0.2','0.9','0.4',NULL,'0.3','0.3','0.3','0.6','0.9','2017-05-14 08:00:03'),(116,'2017-05-14 08:00:00','0.3','0.3','1','0.2','0.9','0.3','0.3','0.3','0.3','0.8','0.1','0.3','0.4','0.1','0.9','未公布','0.2','0.7','0.3','0.2','0.2','0.6','0.7','0.4','0.3','0.1','0.2','0.7','0.4','0.5','0.5','0.2','0.4','0.5','0.8','2017-05-14 09:00:03'),(117,'2017-05-14 09:00:00','0.3','0.4','0.6','0.2','0.3','0.3','0.2','0.3','0.3','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.3','0.6','0.2','0.3','0.2','0.3','0.7','0.4','0.3','0.1','0.2','0.5','0.4','0.4','0.6','0.2','0.3','0.2','0.7','2017-05-14 10:00:03'),(118,'2017-05-14 10:00:00','0.3','0.3','0.2','0.2','0.3','0.3','0.3','0.3','0.3','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.3','0.6','0.3','0.3','0.2','0.3','0.5','0.3','0.3','0.1','0.1','0.2','0.4','0.4','0.5','0.2','0.4','0.2','0.6','2017-05-14 11:00:03'),(119,'2017-05-14 11:00:00','0.3','0.3','0.2','0.2','0.3','0.3','0.3','0.3','0.3','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.3','0.5','0.3','0.3','0.2','0.3','0.5','0.3','0.3','0.1','0.1','0.1','0.4','0.4','0.4','0.2','0.4','0.2','0.5','2017-05-14 12:00:03'),(120,'2017-05-14 12:00:00','0.3','0.3','0.2','0.2','0.3','0.2','0.3','0.3','0.3','0.2','0.1','0.4','0.3','0.1','0.5','未公布','0.3','0.5','0.3','0.3','0.2','0.4','0.4','0.3','0.3','0.1','0.1','0.1','0.4','0.4','0.3','0.2','0.3','0.3','0.5','2017-05-14 13:00:03'),(121,'2017-05-14 13:00:00','0.3','0.3','0.2','0.2','0.3','0.2','0.3','0.3','0.2','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.3','0.4','0.2','0.3','0.3','0.4','0.3','0.3','0.3','0.1','0.1','0.1','0.4','0.3','0.2','0.2','0.3','0.2','0.4','2017-05-14 14:00:03'),(122,'2017-05-14 14:00:00','0.3','0.3','0.2','0.2','0.3','0.2','0.3','0.3','0.2','0.2','0.1','0.3','0.3','0.1','0.5','未公布','0.3','0.4','0.2','0.3',NULL,'0.4','0.4','0.3','0.3','0.1','0.1','0.2','0.4','0.3','0.2','0.2','0.3','0.2','0.3','2017-05-14 15:00:02'),(123,'2017-05-14 15:00:00','0.2','0.3','0.2','0.1','0.3','0.2','0.3','0.3','0.2','0.2','0.1','0.4','0.3','0.1','0.5','未公布','0.3','0.4','0.2','0.3','未公布','0.4','0.4','0.3','0.3','0.1','0.1','0.2','0.4','0.2','0.2','0.1','0.4','0.2','0.3','2017-05-14 16:00:07'),(124,'2017-05-14 16:00:00',NULL,'0.3','0.2','0.1','0.3','0.2','0.2','0.3','0.2','0.2','0.1','0.3','0.3','0.1','0.4','未公布','0.4','0.3','0.2','0.2','0.4','0.3','0.4','0.3','0.2','0.1','0.1','0.2','0.4','0.2','0.2','0.1','0.4','0.2','0.4','2017-05-14 17:00:03'),(125,'2017-05-14 17:00:00','0.3','0.4','0.2','0.1','0.3','0.2','0.3','0.3','0.3','0.2',NULL,'0.4','0.3','0.1','0.5','未公布','0.4','0.3','0.2','0.3','0.5','0.4','0.5','0.4','0.3','0.1','0.1','0.3','0.4','0.2','0.2','0.2','0.5','0.4','0.4','2017-05-14 18:00:03'),(126,'2017-05-14 18:00:00','0.5','0.4','0.2','0.1','0.4','0.2','0.4','0.3','0.5','0.3',NULL,'0.5','0.3','0.1','0.6','未公布','0.5','0.3','0.2','0.5','0.5','0.5','0.4','0.4','0.4','0.1','0.1','0.3','0.4','0.2','0.2','0.3','0.6','0.4','0.4','2017-05-14 19:00:03'),(127,'2017-05-14 19:00:00','0.5','0.4','0.2','0.2','0.5','0.2','0.6','0.4','0.5','0.3',NULL,'0.6','0.3','0.1','0.6','未公布','0.5','0.3','0.2','0.5','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.3','0.3','0.2','0.2','0.4','0.6','0.4','0.4','2017-05-14 20:00:03'),(128,'2017-05-14 20:00:00','0.5','0.4','0.3','0.2','0.5','0.2','0.6','0.4','0.6','0.5',NULL,'0.6','0.3','0.1','0.6','未公布','0.6','0.3','0.2','0.5','0.6','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 21:00:04'),(129,'2017-05-14 21:00:00','0.2','0.4','0.4','0.2','0.5','0.2','0.6','0.5','0.5','0.5',NULL,'0.6','0.4','0.1','0.6','未公布','0.6','0.3','0.3','0.6','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 21:48:27'),(130,'2017-05-14 21:00:00','0.2','0.4','0.4','0.2','0.5','0.2','0.6','0.5','0.5','0.5',NULL,'0.6','0.4','0.1','0.6','未公布','0.6','0.3','0.3','0.6','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 21:53:56'),(131,'2017-05-14 21:00:00','0.2','0.4','0.4','0.2','0.5','0.2','0.6','0.5','0.5','0.5',NULL,'0.6','0.4','0.1','0.6','未公布','0.6','0.3','0.3','0.6','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 21:54:30'),(132,'2017-05-14 21:00:00','0.2','0.4','0.4','0.2','0.5','0.2','0.6','0.5','0.5','0.5',NULL,'0.6','0.4','0.1','0.6','未公布','0.6','0.3','0.3','0.6','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 21:55:00'),(133,'2017-05-14 21:00:00','0.2','0.4','0.4','0.2','0.5','0.2','0.6','0.5','0.5','0.5',NULL,'0.6','0.4','0.1','0.6','未公布','0.6','0.3','0.3','0.6','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 21:56:46'),(134,'2017-05-14 21:00:00','0.2','0.4','0.4','0.2','0.5','0.2','0.6','0.5','0.5','0.5',NULL,'0.6','0.4','0.1','0.6','未公布','0.6','0.3','0.3','0.6','0.5','0.6','0.5','0.5','0.6','0.2','0.1','0.4','0.3','0.2','0.2','0.5','0.6','0.4','0.5','2017-05-14 22:00:03'),(135,'2017-05-14 22:00:00','0.2','0.3','0.5','0.4','0.6','0.3','0.3','0.4','0.4','0.6',NULL,'0.4','0.5','0.1','0.7','未公布','0.5','0.3','0.4','0.4','0.2','0.6','0.6','0.5','0.5','0.2','0.1','0.4','0.4','0.2','0.3','0.2','0.6','0.4','0.5','2017-05-14 23:00:03'),(136,'2017-05-14 23:00:00','0.2','0.2','0.5','0.2','0.7','0.3','0.3','0.4','0.5','0.5','0.6','0.5','0.4','0.1','0.4','未公布','0.3','0.3','0.3','0.3','0.2','0.4','0.5','0.7','0.6','0.2','0.1','0.3','0.3','0.3','0.2','0.3','0.4','0.4','0.5','2017-05-15 00:00:03'),(137,'2017-05-15 00:00:00','0.3','0.2','0.5','0.2','0.5','0.3','0.4','0.4','0.5','0.3','0.5','0.5','0.4','0.1','0.5','未公布','0.3','0.3','0.3','0.4','0.2','0.4','0.3','0.3','0.4','0.2','0.1','0.3','0.3','0.3','0.2','0.4','0.5','0.4','0.4','2017-05-15 01:00:03'),(138,'2017-05-15 01:00:00','0.2','0.2','0.5','0.2','0.3','0.2','0.4','0.4','0.6','0.2','0.4','0.4','0.5','0.1','0.4','未公布','0.3','0.3','0.2','0.3','0.4','0.4','0.3','0.3','0.4','0.2','0.1','0.2','0.3','0.4','0.2','0.3','0.5','0.3','0.4','2017-05-15 02:00:03'),(139,'2017-05-15 02:00:00','0.2','0.2','0.5','0.2','0.3','0.2','0.3','0.4','0.5','0.3','0.4','0.4','0.4','0.1','0.4','未公布','0.3','0.3','未公布','0.2','0.4','0.4','0.3','0.3','0.4','0.2','0.1','0.2','0.3','0.4','0.2','0.2','0.4','0.3','0.4','2017-05-15 03:00:03'),(140,'2017-05-15 03:00:00','0.2','0.2','0.5','0.2','0.3','0.2','0.4','0.4','0.4','0.2','0.3','0.3','0.2','0.1','0.3','未公布','0.2','0.3','未公布','0.3','0.2','0.4','0.2','0.4','0.3','0.1','0.2','0.2','0.4','0.4','0.2','0.2','0.3','0.3','0.3','2017-05-15 04:00:03'),(141,'2017-05-15 04:00:00','0.2','0.2','0.3','0.2','0.3','0.2','0.4','0.4','0.3','0.2','0.3','0.3','0.2','0.1','0.3','未公布','0.2','0.3','0.2','0.2','0.2','0.4','0.3','0.4','0.3','0.3','0.2','0.2','0.4','0.4','0.1','0.2','0.3','0.3','0.3','2017-05-15 05:00:03'),(142,'2017-05-15 05:00:00','0.2','0.2','0.8','0.2','0.4','0.3',NULL,'0.4','0.3','0.6','0.3','0.3','0.2','0.1','0.3','未公布','0.2','0.2','0.2','0.2','0.2','0.4','0.3','0.3','0.3','0.7','0.2','0.3','0.4','0.4','0.1','0.2','0.3','0.3','0.3','2017-05-15 06:00:03'),(143,'2017-05-15 06:00:00','0.2','0.2','1.7','0.2','1.1','0.3',NULL,'0.4','0.4','1.5','0.9','1','0.3','0.7','0.9','未公布','0.3','0.2','0.2','0.6','0.3','0.6','0.4','1','1','0.5','0.2','0.5','0.4','0.4','0.1','0.6','0.8','0.9','0.4','2017-05-15 07:00:03'),(144,'2017-05-15 07:00:00','0.5','0.8','1.5','0.2','1.6','0.2','1.5','0.5','1.1','1.8','1.7','1.6','0.4','1.3','1.6','未公布','0.5','0.4','0.2','1.1','0.8','1.2','1','1.8','2.1','0.4','0.2','1.1','0.4','0.4','0.2','1.6','1.4','1.7','0.9','2017-05-15 08:00:03'),(145,'2017-05-15 08:00:00','0.9','1.1','1.7','0.2','1.8','0.2','1.7','0.8','1.2','2','1.8','1.8','0.4','1.3','1.9','未公布','0.9','0.7','0.2','1.4','1','1.8','1.1','1.8','1.5','0.4','0.6','1.3','0.4','0.7','0.1','1.4','1.7','1.8','0.6','2017-05-15 09:00:03'),(146,'2017-05-15 09:00:00','1.1','1.3','1.5','0.4','1.5','0.2','1.4','1','1.2','1.4','1.4','1.4','0.6','1','1.6','未公布','1','0.6','0.3','1.2','1.1','1.4','1.3','1.4','1.4','0.5','0.8','1.1','0.6','1.2','0.2','1.1','1.5','1.6','0.7','2017-05-15 09:57:39'),(147,'2017-05-15 09:00:00','1.1','1.3','1.5','0.4','1.5','0.2','1.4','1','1.2','1.4','1.4','1.4','0.6','1','1.6','未公布','1','0.6','0.3','1.2','1.1','1.4','1.3','1.4','1.4','0.5','0.8','1.1','0.6','1.2','0.2','1.1','1.5','1.6','0.7','2017-05-15 10:00:03'),(148,'2017-05-15 10:00:00','1.1','1.1','1.1','0.4','1','0.3','1.3','1','1','1.1','1.1','1.2','0.8','0.9','1.3','未公布','1','0.7','0.4','1','1','1.2','1.2','1.3','1.1','0.5','0.6','0.7','0.7','1.1','0.3','0.8','1.2','1.1','0.5','2017-05-15 10:33:28'),(149,'2017-05-15 10:00:00','1.1','1.1','1.1','0.4','1','0.3','1.3','1','1','1.1','1.1','1.2','0.8','0.9','1.3','未公布','1','0.7','0.4','1','1','1.2','1.2','1.3','1.1','0.5','0.6','0.7','0.7','1.1','0.3','0.8','1.2','1.1','0.5','2017-05-15 10:34:21'),(150,'2017-05-15 10:00:00','1.1','1.1','1.1','0.4','1','0.3','1.3','1','1','1.1','1.1','1.2','0.8','0.9','1.3','未公布','1','0.7','0.4','1','1','1.2','1.2','1.3','1.1','0.5','0.6','0.7','0.7','1.1','0.3','0.8','1.2','1.1','0.5','2017-05-15 11:00:04'),(151,'2017-05-15 11:00:00','0.9','1','0.9','0.2','0.9','0.3','1','0.8','0.9','0.9','1','1.1','0.7','0.7','1.1','未公布','1','0.8','0.3','0.9','1','1.1','0.9','1.1','1.1','0.6','0.5','0.7','0.7','0.9','0.2','0.8','1','0.9','0.6','2017-05-15 12:00:03'),(152,'2017-05-15 12:00:00','0.7','0.8','0.8','0.2','0.8','0.2','0.9','0.7','0.7','0.7','0.8','1','0.6','0.4','1','未公布','1','0.6','0.3','0.8','0.8','0.9','0.8','0.8','0.8','0.6','0.5','0.6','0.7','0.6','0.1','0.6','0.8','0.8','0.5','2017-05-15 13:00:03'),(153,'2017-05-15 13:00:00','0.5','0.6','0.7','0.2','0.7','0.2','0.8','0.5','0.5','0.6','0.6','0.8','0.4','0.2',NULL,'未公布','0.9','0.5','0.2','0.6','0.7','0.7','0.6','0.6','0.5','0.4','0.4','0.5','0.7','0.5','0.2','0.5','0.7','0.6','0.4','2017-05-15 14:00:03'),(154,'2017-05-15 14:00:00','0.5','0.5','0.5','0.2','0.6','0.2','0.7','0.5','0.5','0.5','0.5','0.6','0.3','0.2','0.7','未公布','0.7','0.5','0.2','0.6','0.6','0.7','0.5','0.6','0.5','0.3','0.4','0.5','0.6','0.4','0.2','0.4','0.6','0.5','0.3','2017-05-15 15:00:05'),(155,'2017-05-15 15:00:00','0.5','0.5','0.5','0.1','0.5','0.2','0.6','0.5',NULL,'0.4','0.5','0.6','0.3','0.5','0.7','未公布','0.6','0.4','0.2','0.5','0.5','0.6','0.5','0.5','0.5','0.2','0.4','0.4','0.6','0.4','0.2','0.4','0.6','0.5','0.3','2017-05-15 16:00:02'),(156,'2017-05-15 16:00:00','0.5','0.5','0.4','0.2','0.5','0.3','0.7','0.5','0.4','0.4','0.5','0.6','0.2','0.5','0.7','未公布','0.6','0.3','0.2','0.5','0.5','0.6','0.5','0.4','0.5','0.2','0.4','0.4','0.6','0.5','0.2','0.4','0.6','0.5','0.4','2017-05-15 16:55:48'),(157,'2017-05-15 16:00:00','0.5','0.5','0.4','0.2','0.5','0.3','0.7','0.5','0.4','0.4','0.5','0.6','0.2','0.5','0.7','未公布','0.6','0.3','0.2','0.5','0.5','0.6','0.5','0.4','0.5','0.2','0.4','0.4','0.6','0.5','0.2','0.4','0.6','0.5','0.4','2017-05-15 16:56:14'),(158,'2017-05-15 16:00:00','0.5','0.5','0.4','0.2','0.5','0.3','0.7','0.5','0.4','0.4','0.5','0.6','0.2','0.5','0.7','未公布','0.6','0.3','0.2','0.5','0.5','0.6','0.5','0.4','0.5','0.2','0.4','0.4','0.6','0.5','0.2','0.4','0.6','0.5','0.4','2017-05-15 17:00:02'),(159,'2017-05-15 17:00:00','0.5','0.5','0.4','0.2','0.5','0.3','0.7','0.5','0.4','0.4','0.5','0.6','0.2','0.6','0.7','未公布','0.6','0.3','0.2','0.5','0.5','0.6','0.4','0.6','0.5','0.2','0.4','0.4','0.6','0.6','0.2','0.4','0.6','0.5','0.4','2017-05-15 18:00:04'),(160,'2017-05-15 18:00:00','0.5','0.4','0.4','0.2','0.5','0.4','0.8','0.5','0.5','0.5',NULL,'0.6','0.3','0.6','0.6','未公布','0.5','0.3','0.3','0.5','0.5','0.6','0.4','0.6','0.5','0.3','0.5','0.3','0.6','0.6','0.4','0.5','0.6','0.5','0.3','2017-05-15 19:00:03'),(161,'2017-05-15 19:00:00','0.5','0.4','0.4','0.4','0.4','0.5','0.8','0.6','0.4','0.4',NULL,NULL,'0.4','0.5','0.6','未公布','0.5','0.3','0.3','0.4','0.4','0.5','0.4','0.5','0.5','0.4','0.5','0.3','0.6','0.5','0.4','0.4','0.5','0.4','0.4','2017-05-15 20:00:03'),(162,'2017-05-15 20:00:00','0.4','0.4','0.3','0.4','0.5','0.6','0.7','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.6','未公布','0.4','0.3','0.5','0.4','0.4','0.5','0.5','0.4','0.5','0.5','0.5','0.3','0.6','0.5','0.5','0.4','0.5','0.4','0.4','2017-05-15 20:57:18'),(163,'2017-05-15 20:00:00','0.4','0.4','0.3','0.4','0.5','0.6','0.7','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.6','未公布','0.4','0.3','0.5','0.4','0.4','0.5','0.5','0.4','0.5','0.5','0.5','0.3','0.6','0.5','0.5','0.4','0.5','0.4','0.4','2017-05-15 21:00:04'),(164,'2017-05-15 20:00:00','0.4','0.4','0.3','0.4','0.5','0.6','0.7','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.6','未公布','0.4','0.3','0.5','0.4','0.4','0.5','0.5','0.4','0.5','0.5','0.5','0.3','0.6','0.5','0.5','0.4','0.5','0.4','0.4','2017-05-15 21:08:51'),(165,'2017-05-15 20:00:00','0.4','0.4','0.3','0.4','0.5','0.6','0.7','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.6','未公布','0.4','0.3','0.5','0.4','0.4','0.5','0.5','0.4','0.5','0.5','0.5','0.3','0.6','0.5','0.5','0.4','0.5','0.4','0.4','2017-05-15 21:08:57'),(166,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 21:16:46'),(167,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 21:24:58'),(168,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 21:27:17'),(169,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 21:29:10'),(170,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 21:31:36'),(171,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 21:45:33'),(172,'2017-05-15 21:00:00','0.5','0.5','0.4','0.5','0.5','0.6','0.8','0.6','0.5','0.5','0.4','0.6','0.4','0.6','0.7','未公布','0.5','0.4','0.6','0.5','0.5','0.6','0.6','0.4','0.5','0.3','0.5','0.4','0.6','0.4','0.5','0.4','0.5','0.4','0.6','2017-05-15 22:00:04'),(173,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 22:35:24'),(174,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 22:35:30'),(175,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 22:37:44'),(176,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 22:40:39'),(177,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 22:41:24'),(178,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 22:44:47'),(179,'2017-05-15 22:00:00','0.5','0.5','0.5','0.5','0.5','0.5','0.8','0.7','0.5','0.5','0.6','0.7','0.5','0.6','0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.7','0.6','0.5','0.6','0.4','0.4','0.4','0.6','0.4','0.5','0.5','0.6','0.5','0.4','2017-05-15 23:00:03'),(180,'2017-05-15 23:00:00','0.7','0.6','0.4','0.5','0.4','0.5','0.7','0.7','0.6','0.4','0.4',NULL,'0.6','0.5','0.5','未公布','0.6','0.4','0.6','0.6','0.5','0.7','0.5','0.4','0.5','0.4','0.4','0.3','0.6','0.5','0.5','0.5','0.6','0.4','0.3','2017-05-16 00:00:02'),(181,'2017-05-16 00:00:00','0.6','0.5','0.9','0.5','0.4','0.5','0.5','0.7','0.4','0.4','0.6','0.6','0.5','0.5','0.6','未公布','0.6','0.4','0.5','0.4','0.5','0.5','0.5','0.4','0.6','0.3','0.4','0.5','0.6','0.6','0.4','0.4','0.7','0.5','0.5','2017-05-16 01:00:03'),(182,'2017-05-16 01:00:00','0.6','0.5','0.9','0.5','0.5','0.5','0.6','0.7','0.5','0.4','0.5','0.6','0.5','0.6','0.5','未公布','0.6','0.4','0.5','0.5','0.5','0.6','0.6','0.5','0.6','0.2','0.4','0.4','0.6','0.6','0.4','0.4','0.6','0.5','0.8','2017-05-16 02:00:03'),(183,'2017-05-16 02:00:00','0.6','0.5','0.9','0.5','0.6','0.5','0.7','0.7','0.5','0.6','0.6','0.6','0.5','0.6','0.6','未公布','0.6','0.4','0.5','0.5','0.5','0.6','0.6','0.4','0.6','0.4','0.4','0.5','0.6','0.6','0.3','0.5','0.7','0.5','0.7','2017-05-16 03:00:03'),(184,'2017-05-16 04:00:00','0.6','0.6','0.8','0.5','0.7','0.5','0.6','0.7','0.5','0.7','0.6','0.7','0.5','0.6','0.6','未公布','0.5','0.5','0.5','0.6','0.4','0.7','0.6','0.5','0.7','0.6','0.4','0.5','0.6','0.6','0.4','0.5','0.7','0.6','0.7','2017-05-16 05:00:02'),(185,'2017-05-16 05:00:00','0.5','0.6','0.8','0.5','0.7','0.5',NULL,'0.8','0.5','0.7','0.6','0.7','0.5','0.6','0.6','未公布','0.5','0.5','0.5','0.6','0.6','0.7','0.7','0.5','0.6','0.5','0.4','0.5','0.6','0.6','0.4','0.5','0.7','0.6','0.7','2017-05-16 06:00:02'),(186,'2017-05-16 06:00:00','0.5','0.6','0.9','0.6','0.8','0.5',NULL,'0.8','0.6','0.8','0.7','0.7','0.6','0.7','0.7','未公布','0.5','0.5','0.5','0.6','0.7','0.7','0.8','0.8','0.7','0.5','0.5','0.6','0.6','0.7','0.4','0.5','0.8','0.6','0.7','2017-05-16 07:00:02'),(187,'2017-05-16 07:00:00','0.6','0.7','1','0.6','0.9','0.5','0.8','0.8','0.6','0.8','0.8','0.8','0.7','0.8','1.1','未公布','0.5','0.5','0.5','0.7','0.6','0.9','0.8','1.1','0.8','0.6','0.5','0.6','0.6','0.8','0.4','0.6','0.9','0.8','0.7','2017-05-16 08:00:03'),(188,'2017-05-16 08:00:00','0.6','0.7','0.9','0.6','0.8','0.5','0.9','1','0.7','0.8','0.9','0.9','0.8','0.9','1.1','未公布','0.4','0.6','0.6','0.7','0.8','0.9','0.8','1','0.8','0.7','0.5','0.6','0.7','0.7','0.4','0.6','0.9','0.9','0.7','2017-05-16 09:00:03'),(189,'2017-05-16 09:00:00','0.6','0.7','0.8','0.6','0.8','0.5','0.8','0.9','0.7','0.8','0.8','0.7','0.8','0.9','1','未公布','0.5','0.5','0.6','0.8','0.6','0.8','0.7','1','0.8','0.6','0.5','0.6','0.7','0.7','0.4','0.7','0.8','0.8','0.7','2017-05-16 10:00:05'),(190,'2017-05-16 10:00:00','0.7','0.7','0.7','0.6','0.8','0.5','0.9','0.9','0.7','0.8','0.7','0.8','0.7','0.9','1','未公布','0.6','0.5','0.7','0.7','0.6','0.8','0.7','0.9','0.8','0.6','0.5','0.6','0.7','0.7','0.4','0.7','0.9','0.7','0.7','2017-05-16 11:00:02'),(191,'2017-05-16 11:00:00','0.6','0.6','0.7','0.7','0.7','0.4','0.9','0.8','0.6','0.7','0.7','0.8','0.7','0.9','1','未公布','0.6','0.5','0.7','0.7','0.6','0.7','0.6','0.9','0.8','0.6','0.5','0.6','0.7','0.7','0.3','0.6','0.8','0.7','0.7','2017-05-16 12:00:02'),(192,'2017-05-16 12:00:00','0.6','0.5','0.7','0.6','0.7','0.4','0.9','0.8','0.5','0.6','0.6','0.7','0.7','0.7','0.8','未公布','0.5','0.5','0.7','0.6','0.5','0.6','0.6','0.7','0.7','0.5','0.5','0.5','0.6','0.7','0.3','0.6','0.7','0.6','0.6','2017-05-16 13:00:03'),(193,'2017-05-16 13:00:00','0.5','0.5','0.6','0.6','0.7','0.4','0.8','0.8','0.4','0.6','0.5','0.7','0.6',NULL,'0.7','未公布','0.5','0.4','0.6','0.6','0.5','0.6','0.6','0.7','0.6','0.5','0.5','0.5','未公布','0.6','0.2','0.5','0.6','0.5','0.6','2017-05-16 14:00:03'),(194,'2017-05-16 15:00:00','0.5','0.5','0.5','0.6','0.5','0.3','0.7','0.6','0.3','0.5','0.4','0.6','0.5','0.5','0.6','未公布','0.4','0.4','未公布','0.5','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.4','0.9','0.5','0.3','0.4','0.6','0.4','0.6','2017-05-16 15:38:35'),(195,'2017-05-16 15:00:00','0.5','0.5','0.5','0.6','0.5','0.3','0.7','0.6','0.3','0.5','0.4','0.6','0.5','0.5','0.6','未公布','0.4','0.4','未公布','0.5','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.4','0.9','0.5','0.3','0.4','0.6','0.4','0.6','2017-05-16 15:39:45'),(196,'2017-05-16 15:00:00','0.5','0.5','0.5','0.6','0.5','0.3','0.7','0.6','0.3','0.5','0.4','0.6','0.5','0.5','0.6','未公布','0.4','0.4','未公布','0.5','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.4','0.9','0.5','0.3','0.4','0.6','0.4','0.6','2017-05-16 15:42:42'),(197,'2017-05-16 15:00:00','0.5','0.5','0.5','0.6','0.5','0.3','0.7','0.6','0.3','0.5','0.4','0.6','0.5','0.5','0.6','未公布','0.4','0.4','未公布','0.5','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.4','0.9','0.5','0.3','0.4','0.6','0.4','0.6','2017-05-16 15:43:26'),(198,'2017-05-16 15:00:00','0.5','0.5','0.5','0.6','0.5','0.3','0.7','0.6','0.3','0.5','0.4','0.6','0.5','0.5','0.6','未公布','0.4','0.4','未公布','0.5','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.4','0.9','0.5','0.3','0.4','0.6','0.4','0.6','2017-05-16 16:00:04'),(199,'2017-05-16 15:00:00','0.5','0.5','0.5','0.6','0.5','0.3','0.7','0.6','0.3','0.5','0.4','0.6','0.5','0.5','0.6','未公布','0.4','0.4','未公布','0.5','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.4','0.9','0.5','0.3','0.4','0.6','0.4','0.6','2017-05-16 16:07:41'),(200,'2017-05-16 16:00:00','0.4','0.5','0.5','0.4','0.5','0.4','0.6','0.6','0.3','0.4',NULL,'0.6','0.5','0.4','0.6','未公布','0.4','0.4','0.2','0.4','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.5','0.6','0.5','0.3','0.4','0.6','0.5','0.6','2017-05-16 16:23:33'),(201,'2017-05-16 16:00:00','0.4','0.5','0.5','0.4','0.5','0.4','0.6','0.6','0.3','0.4',NULL,'0.6','0.5','0.4','0.6','未公布','0.4','0.4','0.2','0.4','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.5','0.6','0.5','0.3','0.4','0.6','0.5','0.6','2017-05-16 16:24:30'),(202,'2017-05-16 16:00:00','0.4','0.5','0.5','0.4','0.5','0.4','0.6','0.6','0.3','0.4',NULL,'0.6','0.5','0.4','0.6','未公布','0.4','0.4','0.2','0.4','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.5','0.6','0.5','0.3','0.4','0.6','0.5','0.6','2017-05-16 16:27:10'),(203,'2017-05-16 16:00:00','0.4','0.5','0.5','0.4','0.5','0.4','0.6','0.6','0.3','0.4',NULL,'0.6','0.5','0.4','0.6','未公布','0.4','0.4','0.2','0.4','0.5','0.5','0.5','0.4','0.5','0.4','0.4','0.5','0.6','0.5','0.3','0.4','0.6','0.5','0.6','2017-05-16 17:00:03');
/*!40000 ALTER TABLE `Website_co` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_diseasetype`
--

DROP TABLE IF EXISTS `Website_diseasetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_diseasetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_diseasetype`
--

LOCK TABLES `Website_diseasetype` WRITE;
/*!40000 ALTER TABLE `Website_diseasetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_diseasetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_emergcallinfo`
--

DROP TABLE IF EXISTS `Website_emergcallinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_emergcallinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `place` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptom` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acuteExac` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disease` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `byxCheck` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `byxResult` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ycWcTreat` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useAbt` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abtType` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useJmzs` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ecMethod` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ecDate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatMethod` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airRelate` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_emergcallinfo`
--

LOCK TABLES `Website_emergcallinfo` WRITE;
/*!40000 ALTER TABLE `Website_emergcallinfo` DISABLE KEYS */;
INSERT INTO `Website_emergcallinfo` VALUES (1,'0000000001','1970-01-01','北京医院','1256','1','','1','','1','1','','1','1','','1','1','1',''),(2,'0000000001','2017-04-20','北京医院','125','2','1','1','1','2','2','1','2','2','1','2','2','2','1'),(12,'0000000002','2017-05-10','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Website_emergcallinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_ess`
--

DROP TABLE IF EXISTS `Website_ess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_ess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  `ess1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess5` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ess8` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_ess`
--

LOCK TABLES `Website_ess` WRITE;
/*!40000 ALTER TABLE `Website_ess` DISABLE KEYS */;
INSERT INTO `Website_ess` VALUES (2,'0000000001','0',1,'1','3','3','2','2','1','3','3','2','2017-03-31'),(3,'0000000001','0',1,'1','1','1','1','1','1','1','1','5','2017-04-14');
/*!40000 ALTER TABLE `Website_ess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_groupinfo`
--

DROP TABLE IF EXISTS `Website_groupinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_groupinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `D_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_groupinfo`
--

LOCK TABLES `Website_groupinfo` WRITE;
/*!40000 ALTER TABLE `Website_groupinfo` DISABLE KEYS */;
INSERT INTO `Website_groupinfo` VALUES (1,'慢阻肺组',4,'用于研究慢阻肺患者 ','2017-04-14'),(2,'哮喘组',4,'用于研究哮喘患者','2017-04-01');
/*!40000 ALTER TABLE `Website_groupinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_healthycondition`
--

DROP TABLE IF EXISTS `Website_healthycondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_healthycondition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_healthycondition`
--

LOCK TABLES `Website_healthycondition` WRITE;
/*!40000 ALTER TABLE `Website_healthycondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_healthycondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_inhospitalinfo`
--

DROP TABLE IF EXISTS `Website_inhospitalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_inhospitalinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `place` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commonIcu` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptom` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acuteExac` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disease` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `byxCheck` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `byxResult` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ycWcTreat` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useAbt` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abtType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useJmzs` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospitalDays` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airRelate` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatMethod` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docAdvice` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_inhospitalinfo`
--

LOCK TABLES `Website_inhospitalinfo` WRITE;
/*!40000 ALTER TABLE `Website_inhospitalinfo` DISABLE KEYS */;
INSERT INTO `Website_inhospitalinfo` VALUES (3,'0000000001','2017-04-13','北医三院','1','15','1','1','1','1','1','1','1','2','1','2','2','1','1'),(4,'0000000001','2017-04-05','北医三院','1','25','1','1','1','','2','2','','2','','2','2','',''),(5,'0000000001','2017-05-05','北医三院','','','','','','','','','','','','','','',''),(6,'0000000001','2017-05-05','北医三院','','','','','','','','','','','','','','',''),(7,'0000000001','2017-05-05','北医三院','','','','','','','','','','','','','','',''),(19,'0000000002','2017-05-10','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Website_inhospitalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_invitation`
--

DROP TABLE IF EXISTS `Website_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `D_id` int(11) NOT NULL,
  `state` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_invitation`
--

LOCK TABLES `Website_invitation` WRITE;
/*!40000 ALTER TABLE `Website_invitation` DISABLE KEYS */;
INSERT INTO `Website_invitation` VALUES (1,'12345678','0000-00-00',1,'0','0'),(2,'1234567890','0000-00-00',1,'0','0'),(3,'89GLUbRc3gAt8MGHtq06pg#V^o','2017-04-12',6,'1','0'),(4,'89SF7euakcg9mh5Q82WfOewr0s','2017-04-12',6,'0','0'),(5,'123v1GDBPn6CL5baiOrxBPfP7kv','2017-04-13',8,'1','0'),(6,'05Bi3YQ574o8j9KU8g0QaQqM5','2017-04-14',4,'0','0'),(7,'0PknuflyNeVeyypJUnubcDsRn','2017-04-14',4,'1','0');
/*!40000 ALTER TABLE `Website_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_lungct`
--

DROP TABLE IF EXISTS `Website_lungct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_lungct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `head` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_lungct`
--

LOCK TABLES `Website_lungct` WRITE;
/*!40000 ALTER TABLE `Website_lungct` DISABLE KEYS */;
INSERT INTO `Website_lungct` VALUES (1,'0000000001','2017-04-20','1','1367b','',20),(2,'0000000001','1970-01-01','','','',33);
/*!40000 ALTER TABLE `Website_lungct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_lungfunc`
--

DROP TABLE IF EXISTS `Website_lungfunc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_lungfunc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `head` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FVC1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FVC2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FVC3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV11` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV12` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV13` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV1_FVC1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV1_FVC2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV1_FVC3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RV_TLC1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RV_TLC2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RV_TLC3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FEV1change` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GOLD` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_lungfunc`
--

LOCK TABLES `Website_lungfunc` WRITE;
/*!40000 ALTER TABLE `Website_lungfunc` DISABLE KEYS */;
INSERT INTO `Website_lungfunc` VALUES (4,'0000000001','2017-04-04','1','1','1','1','1','1','1','1','1','2','1','1','1','1','3',21);
/*!40000 ALTER TABLE `Website_lungfunc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_mbq`
--

DROP TABLE IF EXISTS `Website_mbq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_mbq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  `q1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q5` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q8` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q9` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q10` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BMI` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_mbq`
--

LOCK TABLES `Website_mbq` WRITE;
/*!40000 ALTER TABLE `Website_mbq` DISABLE KEYS */;
INSERT INTO `Website_mbq` VALUES (1,'0000000001','0',1,'1','3','2','2','3','1','3','1','4','1','28','2017-04-07');
/*!40000 ALTER TABLE `Website_mbq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_medicalvisit`
--

DROP TABLE IF EXISTS `Website_medicalvisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_medicalvisit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `P_id` (`P_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicalvisit`
--

LOCK TABLES `Website_medicalvisit` WRITE;
/*!40000 ALTER TABLE `Website_medicalvisit` DISABLE KEYS */;
INSERT INTO `Website_medicalvisit` VALUES (1,'5','2','2','0000000001'),(2,'-9','-5','-11','0000000002'),(3,'0','0','0','0000000003'),(4,'0','0','0','000000000003');
/*!40000 ALTER TABLE `Website_medicalvisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_medicinechange`
--

DROP TABLE IF EXISTS `Website_medicinechange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_medicinechange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ch` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `MC_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicinechange`
--

LOCK TABLES `Website_medicinechange` WRITE;
/*!40000 ALTER TABLE `Website_medicinechange` DISABLE KEYS */;
INSERT INTO `Website_medicinechange` VALUES (1,'1','0000000001','2017-04-23','00000000011492876800000'),(2,'0','0000000001','2017-04-25','00000000011493049600000'),(3,'1','0000000002','2017-05-04','00000000021493827200000');
/*!40000 ALTER TABLE `Website_medicinechange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_medicinerecord`
--

DROP TABLE IF EXISTS `Website_medicinerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_medicinerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MC_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc` varchar(100) COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicinerecord`
--

LOCK TABLES `Website_medicinerecord` WRITE;
/*!40000 ALTER TABLE `Website_medicinerecord` DISABLE KEYS */;
INSERT INTO `Website_medicinerecord` VALUES (1,'00000000011492876800000','6947751402018','2017-04-24','','','0',NULL),(2,'00000000011492876800000','6947751402018','2017-04-24','','','0',NULL),(3,'00000000021493827200000','6957526102951','2017-05-04','','','0',NULL),(4,'00000000021493827200000','6957526102951','2017-05-04','','','0',NULL),(5,'00000000021493827200000','81309220337984163910','2017-05-04','','','0',NULL),(6,'00000000021493827200000','81337060763241523529','2017-05-04','','','0',NULL);
/*!40000 ALTER TABLE `Website_medicinerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_medicineregular`
--

DROP TABLE IF EXISTS `Website_medicineregular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_medicineregular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regular` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicineregular`
--

LOCK TABLES `Website_medicineregular` WRITE;
/*!40000 ALTER TABLE `Website_medicineregular` DISABLE KEYS */;
INSERT INTO `Website_medicineregular` VALUES (10,'0','0000000001','2017-04-23'),(11,'0','0000000001','2017-04-25'),(13,'1','0000000001','2017-05-01'),(14,'1','0000000001','2017-05-02'),(15,'1','0000000001','2017-05-03'),(16,'0','0000000001','2017-05-04'),(17,'0','0000000001','2017-05-05'),(18,'0','0000000001','2017-05-06'),(19,'1','0000000001','2017-05-07'),(20,'1','0000000001','2017-05-08'),(21,'1','0000000001','2017-05-09'),(22,'1','0000000001','2017-05-10'),(23,'1','0000000001','2017-05-11'),(24,'0','0000000001','2017-05-12'),(25,'0','0000000001','2017-05-13'),(26,'0','0000000001','2017-05-14'),(27,'0','0000000001','2017-05-15'),(28,'1','0000000001','2017-05-16'),(29,'1','0000000001','2017-05-17'),(30,'1','0000000001','2017-05-18'),(31,'1','0000000001','2017-05-19'),(32,'1','0000000001','2017-05-20'),(33,'1','0000000001','2017-05-21');
/*!40000 ALTER TABLE `Website_medicineregular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_no2`
--

DROP TABLE IF EXISTS `Website_no2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_no2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shunYi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouXiGong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongDingMenNei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yuFa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_no2`
--

LOCK TABLES `Website_no2` WRITE;
/*!40000 ALTER TABLE `Website_no2` DISABLE KEYS */;
INSERT INTO `Website_no2` VALUES (44,'2017-05-11 17:00:00','5','3','15','5','15','4','31','3','未公布','9','37','19','7','11','30','2','6','15','6','17','8','21','9','13','未公布','2','2','11','12','4','3','12','9','14','4','2017-05-11 18:00:03'),(45,'2017-05-11 18:00:00','6','3','14','4','18','3','32','4','未公布','11','未公布','21','8','未公布','40','2','7','17','6','14','10','25','11','15','未公布','2','2','14','13','4','3','14','12','17','5','2017-05-11 18:41:25'),(46,'2017-05-11 18:00:00','6','3','14','4','18','3','32','4','未公布','11','未公布','21','8','未公布','40','2','7','17','6','14','10','25','11','15','未公布','2','2','14','13','4','3','14','12','17','5','2017-05-11 19:00:03'),(47,'2017-05-11 19:00:00','5','4','15','3','18','4','34','5','未公布','13','8','20','8','14','44','2','6','18','5','14','9','22','11','16','7','2','2','12','12','4','2','16','13','18','5','2017-05-11 20:00:03'),(48,'2017-05-11 20:00:00','5','4','15','2','16','4','34','3','8','11','16','21','4','13','32','2','7','20','4','12','9','28','11','14','7','2','2','10','10','4','2','14','10','18','8','2017-05-11 21:00:03'),(49,'2017-05-11 21:00:00','5','6','19','2','17','6','35','4','23','15','17','19','4','12','37','2','7','18','3','12','9','20','12','29','8','2','2','11','8','4','2','13','13','18','8','2017-05-11 22:00:03'),(50,'2017-05-11 22:00:00','7','7','17','3','22','17','34','2','28','15','18','22','4','14','47','2','7','17','4','15','10','21','16','32','10','2','2','12','8','8','4','20','14','34','9','2017-05-11 23:00:05'),(51,'2017-05-11 23:00:00','12','10','18','7','31','17','27','2','32','17','22','37','3','24','41','2','13','15','5','12','23','20','14','74','18','2','2','15','5','未公布','21','17','15','32','11','2017-05-12 00:00:02'),(52,'2017-05-12 00:00:00','12','17','21','21','46','14','50','7','35','13','23','37','4','33','32','4','33','16','8','16','19','24','17','87','21','2','2','22','7','26','38','30','19','25','12','2017-05-12 01:00:02'),(53,'2017-05-12 01:00:00','9','20','24','21','44','23','94','10','47','18','25','31','9','36','49','5','19','20','10','20','32','22','21','84','20','2','4','24','9','42','44','35','22','43','11','2017-05-12 02:00:03'),(54,'2017-05-12 02:00:00','13','18','41','31','66','72','69','35','71','34','21','42','9','28','39','5','33','35','7','26','39','36','28','78','17','2','3','50','16','34','38','35','23','72','10','2017-05-12 03:00:03'),(55,'2017-05-12 03:00:00','16','20','41','28','58','51','82','24','65','40','26','42','8','36','49','5','16','70','4','21','40','46','49','116','24','2','3','54','9','37','47','39','26','56','12','2017-05-12 04:00:03'),(56,'2017-05-12 04:00:00','11','13','50','32','35','23','83','60','63','50','23','61','6','49','85','5','12','47','3','28','28','79','60','125','30','2','4','60','11','41','49','51','31','78','21','2017-05-12 05:00:03'),(57,'2017-05-12 05:00:00','16','36','86','33','41','31','71','61','61','62','49','60','11','47','59','4','43','113','2','39','30','64','51','58','38','2','5','49','16','29','56','52','41','50','32','2017-05-12 06:00:03'),(58,'2017-05-12 05:00:00','16','36','86','33','41','31','71','61','61','62','49','60','11','47','59','4','43','113','2','39','30','64','51','58','38','2','5','49','16','29','56','52','41','50','32','2017-05-12 07:00:03'),(59,'2017-05-12 07:00:00','24','18','57','34','44','32','64','48','47','49','32','58','27','36','68','8','26','42','18','27','28','51','31','56','24','29','15','32','33','36','48','35','30','47','30','2017-05-12 08:00:02'),(60,'2017-05-12 08:00:00','32','13','46','36','30','43','66','37','45','48','25','52','25','33','60','13','19','40','24','23','25','30','22','43','19','19','14','20','43','41','31','31','25','35','22','2017-05-12 09:00:02'),(61,'2017-05-12 09:00:00','23','13','28','22','22','30','51','40','49','27','21','47','23','24','35','12','25','40','18','17',NULL,'24','17','未公布','17','15','18','16','34','44','31','20','22','29','18','2017-05-12 10:00:02'),(62,'2017-05-12 10:00:00','23','10','20','25','19','22','50','27','未公布','17','16','43','22','21','51','15','21','43','28','15',NULL,'25','14','21','15','18','16','14','31','41','23','19','18','26','13','2017-05-12 11:00:02'),(63,'2017-05-12 11:00:00','15','11','19','26','16','25','43','15','42','13','14','39','19','18','49','21','16','49','32','12',NULL,'19','13','19','12','17','14','13','29','31','13','16','16','24','10','2017-05-12 12:00:05'),(64,'2017-05-12 12:00:00','11','10','16','18','15','14','44','15','34','12','14','38','13','18','45','16','17','54','22','12','未公布','19','12','25','12','11','16','13','33','未公布','16','15','15','28','9','2017-05-12 13:00:03'),(65,'2017-05-12 13:00:00','10','9','12','14','15','12','47','14','31','11','12','39','11','15','37','11','16','56','15','12','13','20','11','23','12','10','18','12','26','21','18','15','14','23','7','2017-05-12 14:00:03'),(66,'2017-05-12 14:00:00','9','10','13','12','14','17','50','15','30','11','13','42','9','15','54','10','15','60','12','11','13','20','12','29','11','7','12','13','18','13','21','16','13','27','7','2017-05-12 15:00:03'),(67,'2017-05-12 15:00:00','10','11','13','13','15','22','53','15','36','13','12','40','10','16','55','10','19','55','12','13','15','21','13','27','14','7','11','12','16','15','21','19','16','32','8','2017-05-12 16:00:03'),(68,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:00:03'),(69,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:01:36'),(70,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:02:48'),(71,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:05:43'),(72,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:06:11'),(73,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:13:13'),(74,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:15:54'),(75,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:17:05'),(76,'2017-05-12 16:00:00','11','11','15','15','15','18','58','16','37','12','12','37','12','15','55','11','20','55','17','15','17','24','16','26','15','8','12','12','17','17','24','19','16','33','7','2017-05-12 17:19:57'),(77,'2017-05-12 17:00:00','13','12','13','17','16','13','85','22','37','15','15','51','15','19','62','11','25','55','18','19','18','26','23','24','18','10','14','18','20','27','27','23','20','29','8','2017-05-12 17:20:59'),(78,'2017-05-12 17:00:00','13','12','13','17','16','13','85','22','37','15','15','51','15','19','62','11','25','55','18','19','18','26','23','24','18','10','14','18','20','27','27','23','20','29','8','2017-05-12 17:21:40'),(79,'2017-05-12 17:00:00','13','12','13','17','16','13','85','22','37','15','15','51','15','19','62','11','25','55','18','19','18','26','23','24','18','10','14','18','20','27','27','23','20','29','8','2017-05-12 17:22:40'),(80,'2017-05-12 17:00:00','13','12','13','17','16','13','85','22','37','15','15','51','15','19','62','11','25','55','18','19','18','26','23','24','18','10','14','18','20','27','27','23','20','29','8','2017-05-12 18:00:03'),(81,'2017-05-12 18:00:00','14','15','16','25','20','28','96','30','44','20','21','55','17','27','95','11','30','52','21','26','21','29','28','28','23','10','18','23','21','30','25','28','28','38','11','2017-05-12 19:00:03'),(82,'2017-05-12 19:00:00','15','22','25','25','25','17','70','39','41','32','28','68','25','31','91','11','28','51','19','30','29','39','55','73','28','9','13','27','27','35','15','31','31','44','10','2017-05-12 20:00:03'),(83,'2017-05-12 20:00:00','19','23','30','17','47','11','80','19','47','42','44','47',NULL,'34','92','6','29','91','18','41','31','51','64','58','35','8','8','42','18','36','5','38','36','47','15','2017-05-12 21:00:03'),(84,'2017-05-12 21:00:00','15','22','41','13','41','14','59','11','42','19','32','44','19','28','84','4','20','80','17','28','24','43','30','75','31','7','3','34','13','30','59','33','24','50','18','2017-05-12 22:00:03'),(85,'2017-05-12 22:00:00','10','17','36','8','38','13','52','9','39','25','45','42','20','29','77','3','21','40','10','26','29','33','37','68','27','5','2','36','26','33','77','32','29','61','16','2017-05-12 23:00:06'),(86,'2017-05-12 23:00:00','11','25','53','10','42','32','58','8','48','23','34','37','9','22','58','4','48','41','11','27','32','29','39','63','20','8','2','51','10','19','71','31','26','49','14','2017-05-13 00:00:02'),(87,'2017-05-13 00:00:00','9','19','59','13','45','20','79','8','68','18','24','43','6','20','42','3','62','42','14','33','25','43','33','61','20','8','2','38','11','29','73','40','24','36','15','2017-05-13 01:00:03'),(88,'2017-05-13 01:00:00','13','17','35','4','42','6','74','3','71','18','21','36','3','24','41','2','31','34','5','27','11','54','23','69','19','6','2','27','7','18','74','31','19','33','15','2017-05-13 02:00:03'),(89,'2017-05-13 02:00:00','18','16','20','4','34','27','44','2','18','9','16','31','3','23','46','4','13','52','2','18','12','26','17','70','13','10','2','38','6','9','77','42','18','25','12','2017-05-13 03:00:03'),(90,'2017-05-13 03:00:00','8','11','25','17','31','24','65','2','16','8','16','41','6',NULL,'52','4','14','45','6','24','15','29','16','85','21','6','3','44','15','11','33','41','18','50','10','2017-05-13 04:00:03'),(91,'2017-05-13 04:00:00','2','7','58','22','33','4','69','3','34','9','22','45','6','36','65','2','6','42','未公布','33','9','40','22','95','29','7','4','38','14','6','7','54','25','52','8','2017-05-13 05:00:03'),(92,'2017-05-13 05:00:00','2','3','25','2','23','2','10','2','17','18','8','15','6','7','14','2','5','35','未公布','4','4','9','4','23','5','10','2','22','8','6','6','10','7','15','9','2017-05-13 06:00:03'),(93,'2017-05-13 06:00:00','2','4','13','3','8','2','17','2','16','6','8','14',NULL,'5','22','2','5','17','4','7','5','12','6','11','4','7','2','6','8','6','3','7','6','12','8','2017-05-13 07:00:03'),(94,'2017-05-13 07:00:00','5','4','11','4','7','2','21','2','18','6','9','14','3','5','22','2','6','15','4','6','7','11','7','6','4','5','2','9','10','7','6','6','5','12','5','2017-05-13 08:00:03'),(95,'2017-05-13 08:00:00','2','5','10','4','6','4','29','2','18','7','10','16','3','6','29','2','5','13','4','8','6','12','7','8','5','5','2','9','13','7','11','7','6','16','5','2017-05-13 09:00:03'),(96,'2017-05-13 09:00:00','2','4','9','5','8','7','25','2','18','6','10','18','3','8','22','2','4','12','5','8','6','12','8','7','8','5','4','9','15','6','9','9','6','13','5','2017-05-13 10:00:03'),(97,'2017-05-13 10:00:00','2','3','9','4','8','5','23','2','19','5','12','18','3','7','25','2','4','12','4','10','8','13','6','7','7','4','6','7','15','7','8','9','7','11','5','2017-05-13 11:00:03'),(98,'2017-05-13 11:00:00','2','3','10','4','8','5','23','2','21','6','10','16','3','7','23','2','4','11','4','8','7','12','6','6','6','4','5','8','16','7','7','9','6','12','4','2017-05-13 12:00:03'),(99,'2017-05-13 12:00:00','2','3','10','4','8','5','23','2','22','7','10','16','3','6','30','2','5','11','5','9','8','14','8','6','6','4','5','8','16','7','7','9','6','11','3','2017-05-13 13:00:03'),(100,'2017-05-13 13:00:00','2','3','10','4','8','4','25','2','23','7','11','16','3','6','29','2','5','18','4','9','8','14','7','5','7','4','5','8','15','8','8','8','5','11','2','2017-05-13 14:00:03'),(101,'2017-05-13 14:00:00','2','3','10','4','8','4','25','2','25','6','13','15','3','5','32','2','5','21','4','8','8','16','8','6','6','5','4','8','13','8','7','8','5','10','2','2017-05-13 15:00:04'),(102,'2017-05-13 15:00:00','2','4','11','5','9','5','33','2','25','6','11','16','4','6','41','2','6','22','5','8','8','18','8','6','6','5','3','11','14','8','7','9','5','10','2','2017-05-13 16:00:02'),(103,'2017-05-13 16:00:00','2','4','10','6','9','7','29','2','11','7','13','14','5','7','38','2','6','25','6','9','7','17','11','6','7','4','2','11',NULL,'9','5','9','6','8','2','2017-05-13 17:00:03'),(104,'2017-05-13 17:00:00','3','4','12','6','9','6','34','2','10','8','13','18','5','7','35','2','6','29','6','11','10','20','11','6','7','5','2','12','8','9','3','11','7','10','3','2017-05-13 18:00:03'),(105,'2017-05-13 18:00:00','3','4','15','6','13','5','31','2','11','9','17','21','6','8','57','2','10','32','5','12','13','19','18','10','9','5','2','13','10','10','4','11','9','13','5','2017-05-13 19:00:03'),(106,'2017-05-13 19:00:00','4','6','21','6','16','4','46','7','13','13','26','22','9','10','60','2','10','33','6','19','13','18','19','14','11','5','3','18','11','10','4','未公布','14','33','7','2017-05-13 20:00:03'),(107,'2017-05-13 20:00:00','5','15','50','13','22','5','64','18','26','18','26','32','21','19','73','2','22','35','7','26','21','33','26','12','21','6','6','22','36','13','10','18','20','36','12','2017-05-13 21:00:04'),(108,'2017-05-13 21:00:00','3','20','29','22','25','7','98','49','40','36','27','69','25','32','82','4','20','36','9','39','38','53','33','23','36','9','7','30','40','13','23','54','36','56','16','2017-05-13 22:00:03'),(109,'2017-05-14 00:00:00','3','6','33','25','45','25','100','20','79','82','59','88','21','69','78','2','16','43','19','49','42','76','55','79','67','10','6','32','12','20','68','62','71','85','30','2017-05-14 01:00:03'),(110,'2017-05-14 01:00:00','7','10','53','7','56','43','49','9','42','26','44','46','22','24','59','2','11','42','9','31','15','34','51','53','29','6','6','43','19','22','70','25','36','53','38','2017-05-14 02:00:03'),(111,'2017-05-14 02:00:00','19','15','76','4','41','27','28','5','21','15','18','26','5','20','26','2','13','47','5','13','22','17','27','32','19','10','3','27','9','51','62','19','15','22','27','2017-05-14 03:00:03'),(112,'2017-05-14 02:00:00','19','15','76','4','41','27','28','5','21','15','18','26','5','20','26','2','13','47','5','13','22','17','27','32','19','10','3','27','9','51','62','19','15','22','27','2017-05-14 04:00:03'),(113,'2017-05-14 05:00:00','14','14','77','5','48','53',NULL,'2','32','37','13','37','7','21','34','2','15','43','5','12','19','13','24','67','18','6','4','46','9','35','49','21','14','19','22','2017-05-14 06:00:02'),(114,'2017-05-14 06:00:00','12','13','71','8','48','45',NULL,'2','12','50','10','31','10','21','39','3','16','53','9','13','21','18','27',NULL,'19','10','3','54','16','31','47','23','11','20','19','2017-05-14 07:00:02'),(115,'2017-05-14 07:00:00','14','14','59','9','42','42','61','2','22','44','19','47','13','17','73','4','23','52','10','20','19','17','20','86','19','9','4','43','16',NULL,'44','29','16','40','18','2017-05-14 08:00:03'),(116,'2017-05-14 08:00:00','14','16','34','7','25','28','43','2','22','25','17','50','15','14','71','2','16','46','8','15','18','26','22','60','16','6','4','28','44','25','34','23','17','33','14','2017-05-14 09:00:03'),(117,'2017-05-14 09:00:00','12','19','20','5','9','13','38','2','15','7','15','26','5','10','52','2','17','37','5','11','14','14','21','42','12','6','16','25','35','18','28','13','11','25','10','2017-05-14 10:00:03'),(118,'2017-05-14 10:00:00','12','12','9','5','10','12','36','2','17','6','15','24','4','5','44','2','19','35','5','14','13','16','18','32','10','5','4','13','21','15','17','11','10','26','9','2017-05-14 11:00:03'),(119,'2017-05-14 11:00:00','12','14','8','5','12','11','37','2','16','8','14','22','3','5','55','2','16','36','5','16','12','14','16','24','10','6','3','12','13','15','12','13','11','23','8','2017-05-14 12:00:03'),(120,'2017-05-14 12:00:00','9','13','8','5','10','6','40','2','12','6','11','33','3','4','50','2','16','37','5','11','11','17','16','26','9','6','3','14','10','12','9','10','10','21','7','2017-05-14 13:00:03'),(121,'2017-05-14 13:00:00','8','11','7','5','10','5','26','2','12','5','11','22','3','3','54','3','14','38','5','10','11','17','13','32','7','6','3','12','8','11','5','9','8','17','6','2017-05-14 14:00:03'),(122,'2017-05-14 14:00:00','6','9','7','5','9','7','27','2','12','5','8','23','4','3','48','3','13','33','5','10',NULL,'17','12','37','7','5','3','11','9','9','4','9','7','15','5','2017-05-14 15:00:02'),(123,'2017-05-14 15:00:00','5','10','7','5','11','8','36','2','13','6','10','25','4','4','50','2','12','33','6','10','未公布','18','12','36','7','6','2','11','9','9','5','8','7','16','5','2017-05-14 16:00:07'),(124,'2017-05-14 16:00:00',NULL,'10','7','5','12','7','33','4','18','8','22','16','5','8','66','2','17','34','6','9','10','16','13','38','9','5','2','11','9','11','5','10','7','19','7','2017-05-14 17:00:03'),(125,'2017-05-14 17:00:00','8','11','8','5','17','7','40','4','21','11',NULL,'42','5','12','57','2','19','34','6','14','13','20','19','43','16','6','2','13','10','10','4','13','10','31','6','2017-05-14 18:00:03'),(126,'2017-05-14 18:00:00','11','11','9','6','15','8','52','13','24','11',NULL,'45','7','19','63','2','24','35','6','21','15','22','20','45','21','6','2','15','11','10','4','18','15','34','6','2017-05-14 19:00:03'),(127,'2017-05-14 19:00:00','14','12','12','7','17','10','75','18','27','16',NULL,'64','9','20','75','2','29','36','6','21','17','24','22','43','20','7','2','19','12','9','4','22','19','26','9','2017-05-14 20:00:03'),(128,'2017-05-14 20:00:00','14','13','31','8','21','8','75','18','31','26',NULL,'57','15','19','79','2','32','35','7','24','21','30','23','32','21','10','2','27','13','12','4','23','21','31','10','2017-05-14 21:00:04'),(129,'2017-05-14 21:00:00','6','12','42','20','26','11','74','21','32','30',NULL,'82','21','24','77','2','33','35','15','36','27','42','33','34','26','11','2','30','16','14','6','30','27','39','15','2017-05-14 21:48:27'),(130,'2017-05-14 21:00:00','6','12','42','20','26','11','74','21','32','30',NULL,'82','21','24','77','2','33','35','15','36','27','42','33','34','26','11','2','30','16','14','6','30','27','39','15','2017-05-14 21:53:56'),(131,'2017-05-14 21:00:00','6','12','42','20','26','11','74','21','32','30',NULL,'82','21','24','77','2','33','35','15','36','27','42','33','34','26','11','2','30','16','14','6','30','27','39','15','2017-05-14 21:54:30'),(132,'2017-05-14 21:00:00','6','12','42','20','26','11','74','21','32','30',NULL,'82','21','24','77','2','33','35','15','36','27','42','33','34','26','11','2','30','16','14','6','30','27','39','15','2017-05-14 21:55:00'),(133,'2017-05-14 21:00:00','6','12','42','20','26','11','74','21','32','30',NULL,'82','21','24','77','2','33','35','15','36','27','42','33','34','26','11','2','30','16','14','6','30','27','39','15','2017-05-14 21:56:46'),(134,'2017-05-14 21:00:00','6','12','42','20','26','11','74','21','32','30',NULL,'82','21','24','77','2','33','35','15','36','27','42','33','34','26','11','2','30','16','14','6','30','27','39','15','2017-05-14 22:00:03'),(135,'2017-05-14 22:00:00','6','19','106','24','46','17','46','16','40','49',NULL,'31','22','38','86','2','41','47','18','41','13','62','54','55','32','12','2','38','16','13','78','26','30','45','17','2017-05-14 23:00:03'),(136,'2017-05-14 23:00:00','7','12','109','24','63','24','54','13','48','52','55','53','19','50','53','3','23','42','10','33','9','29','38','88','52','11','2','39','15','17','61','45','28','72','23','2017-05-15 00:00:03'),(137,'2017-05-15 00:00:00','9','12','95','31','57','49','60','15','61','19','33','60','18','20','67','3','19','46','9','43','11','33','19','47','35','7','3','43','10','19','51','58','42','54','21','2017-05-15 01:00:03'),(138,'2017-05-15 01:00:00','7','10','97','22','29','57','66','8','63','16','18','42','23','14','44','3','12','58','6','34','31','48','20','47','38','6','3','28','6','21','49','37','40','29','18','2017-05-15 02:00:03'),(139,'2017-05-15 02:00:00','11','9','90','16','53','70','58','15','72','17','28','44','14','37','55','5','11','43','4','22','32','30','27','54','33','4','2','30','10','21','67','28','36','65','19','2017-05-15 03:00:03'),(140,'2017-05-15 03:00:00','8','8','82','17','62','28','70','12','70','13','28','36','11','39','35','6','8','45','11','28','19','36','21','85','27','3','3','47','10','30','67','27','27','57','23','2017-05-15 04:00:03'),(141,'2017-05-15 04:00:00','5','9','69','24','83','49','75','10','66','17','26','33','12','25','32','8','9','49','未公布','33','18','56','33','89','32','6','4','50','9','30','56','47','25','39','20','2017-05-15 05:00:03'),(142,'2017-05-15 05:00:00','10','10','59','29','53','51',NULL,'16','33','37','44','47','11','28','39','8','11','48','未公布','39','10','67','39','73','31','13','9','60','15','21','59','51','41','57','17','2017-05-15 06:00:03'),(143,'2017-05-15 06:00:00','22','17','78','18','45','41',NULL,'17','46','60','43','72','20','49','67','9','9','46','14','47','26','43','45','81','45','11','7','51','17','20','51','42','39','51','22','2017-05-15 07:00:03'),(144,'2017-05-15 07:00:00','27','34','56','20','41','27','75','15','52','55','50','66','22','48','92','8','33','52','17','38','41','39','43','91','45','10','14','45','41','30','45','50','41','62','24','2017-05-15 08:00:03'),(145,'2017-05-15 08:00:00','32','33','40','16','41','26','75','30','46','47','52','69','31','44','85','8','43','42','10','42','33','48','35','87','47','23','22','41','35','39','28','47','49','63','11','2017-05-15 09:00:03'),(146,'2017-05-15 09:00:00','31','34','32','13','34','19','65','33','46','33','39','61','22','34','74','7','38','34','8','34','35','39','31','61','41','29','21','33','32','39','33','38','38','53','9','2017-05-15 09:57:39'),(147,'2017-05-15 09:00:00','31','34','32','13','34','19','65','33','46','33','39','61','22','34','74','7','38','34','8','34','35','39','31','61','41','29','21','33','32','39','33','38','38','53','9','2017-05-15 10:00:03'),(148,'2017-05-15 10:00:00','34','29','27','10','23','17','58','23','40','24','30','50','24','28','76','6','35','41','9','29','33','32','28','60','31','16','17','22','24','37','17','27','30','46','8','2017-05-15 10:33:28'),(149,'2017-05-15 10:00:00','34','29','27','10','23','17','58','23','40','24','30','50','24','28','76','6','35','41','9','29','33','32','28','60','31','16','17','22','24','37','17','27','30','46','8','2017-05-15 10:34:21'),(150,'2017-05-15 10:00:00','34','29','27','10','23','17','58','23','40','24','30','50','24','28','76','6','35','41','9','29','33','32','28','60','31','16','17','22','24','37','17','27','30','46','8','2017-05-15 11:00:04'),(151,'2017-05-15 11:00:00','28','28','21','7','20','13','54','17','36','21','29','45','16','21','70','5','36','52','7','28','31','31','23','41','32','19','16','19','22','31','13','27','25','42','9','2017-05-15 12:00:03'),(152,'2017-05-15 12:00:00','22','24','17','7','19','7','51','12','29','16','26','45','13','17','74','3','34','47','6','24','27','27','19','40','24','16','16','17','17','20','8','23','23','39','8','2017-05-15 13:00:03'),(153,'2017-05-15 13:00:00','16','17','14','5','16','6','46','8','23','13','21','36','9','10',NULL,'2','30','28','6','19','21','24','15','32','16','11','13','15','12','17','10','18','19','32','5','2017-05-15 14:00:03'),(154,'2017-05-15 14:00:00','14','15','11','6','15','6','39','9','25','12','16','31','8','9','67','2','23','43','7','18','18','22','14','37','13','8','11','13','12','16','10','16','16','30','4','2017-05-15 15:00:05'),(155,'2017-05-15 15:00:00','14','13','11','5','15','6','36','9',NULL,'12','15','32','8','10','71','2','21','25','5','16','15','22','11','30','13','6','11','14','12','14','11','15','15','26','4','2017-05-15 16:00:02'),(156,'2017-05-15 16:00:00','14','11','11','6','17','7','48','13','25','13','14','32','7','13','64','2','20','25','7','18','13','20','10','25','14','5','11','14','14','19','13','15','16','32','4','2017-05-15 16:55:48'),(157,'2017-05-15 16:00:00','14','11','11','6','17','7','48','13','25','13','14','32','7','13','64','2','20','25','7','18','13','20','10','25','14','5','11','14','14','19','13','15','16','32','4','2017-05-15 16:56:14'),(158,'2017-05-15 16:00:00','14','11','11','6','17','7','48','13','25','13','14','32','7','13','64','2','20','25','7','18','13','20','10','25','14','5','11','14','14','19','13','15','16','32','4','2017-05-15 17:00:02'),(159,'2017-05-15 17:00:00','12','11','11','7','14','8','54','15','27','13','14','42','8','15','63','2','20','27','8','19','13','18','11','67','17','7','13','13','17','17','14','18','17','27','4','2017-05-15 18:00:04'),(160,'2017-05-15 18:00:00','11','10','13','9','14','16','72','16','26','17',NULL,'42','10','20','63','3','22','27','11','19','14','21','12','52','16','9','15','15','20','16','21','20','17','29','5','2017-05-15 19:00:03'),(161,'2017-05-15 19:00:00','12','11','16','16','15','21','85','23','28','17',NULL,NULL,'14','22','87','4','21','29','20','21','15','25','14','41','16','10','16','16','20','18','22','20','19','28','6','2017-05-15 20:00:03'),(162,'2017-05-15 20:00:00','13','17','22','21','27','18','81','25','25','25','19','52','17','27','69','10','23','30','23','23','20','33','16','26','18','10','18','28','26','17','30','19','22','31','11','2017-05-15 20:57:18'),(163,'2017-05-15 20:00:00','13','17','22','21','27','18','81','25','25','25','19','52','17','27','69','10','23','30','23','23','20','33','16','26','18','10','18','28','26','17','30','19','22','31','11','2017-05-15 21:00:04'),(164,'2017-05-15 20:00:00','13','17','22','21','27','18','81','25','25','25','19','52','17','27','69','10','23','30','23','23','20','33','16','26','18','10','18','28','26','17','30','19','22','31','11','2017-05-15 21:08:51'),(165,'2017-05-15 20:00:00','13','17','22','21','27','18','81','25','25','25','19','52','17','27','69','10','23','30','23','23','20','33','16','26','18','10','18','28','26','17','30','19','22','31','11','2017-05-15 21:08:57'),(166,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 21:16:46'),(167,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 21:24:58'),(168,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 21:27:18'),(169,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 21:29:10'),(170,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 21:31:36'),(171,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 21:45:33'),(172,'2017-05-15 21:00:00','16','21','34','21','37','19','89','38','31','32','22','54','16','32','98','12','27','33','25','28','23','41','28','27','26','9','16','32','24','18','50','22','31','33','13','2017-05-15 22:00:04'),(173,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 22:35:24'),(174,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 22:35:30'),(175,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 22:37:44'),(176,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 22:40:39'),(177,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 22:41:24'),(178,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 22:44:47'),(179,'2017-05-15 22:00:00','17','22','30','24','27','29','107','44','35','30','27','59','19','27','76','12','17','33','27','33','24','53','26','36','33','13','15','33','27','18','85','27','37','46','12','2017-05-15 23:00:03'),(180,'2017-05-15 23:00:00','25','25','31','26','21','23','80','46','44','26','21',NULL,'25','26','54','12','33','38','28','32','28','37','26','30','24','16','14','29','31','20','137','30','35','31','11','2017-05-16 00:00:02'),(181,'2017-05-16 00:00:00','23','20','35','23','22','21','46','41','27','29','27','44','21','22','49','14','28','43','25','22','27','37','23','19','28','16','14','34','24','24','88','24','30','37','15','2017-05-16 01:00:03'),(182,'2017-05-16 01:00:00','18','18','48','24','23','27','46','43','24','28','24','31','20','25','46','16','26','39','27','22','21','35','26','25','22','13','15','28','23','32','89','22','25','27','16','2017-05-16 02:00:03'),(183,'2017-05-16 02:00:00','18','17','71','25','30','24','42','46','23','31','26','34','18','20','45','16','43','36','25','21','19','37','24','18','22','14','16','29','27','26','80','21','27','33','17','2017-05-16 03:00:03'),(184,'2017-05-16 04:00:00','21','18','79','29','39','34','39','39','25','46','26','45','17','19','43','19','21','36','21','23','21','36','30','34','27','16','20','32','16','36','66','23','36','37','17','2017-05-16 05:00:02'),(185,'2017-05-16 05:00:00','22','19','90','28','32','41',NULL,'46','24','49','26','62','18','23','46','12','14','36','15','27','23','42','36','84','27','15','21','29','23','39','73','26','31','35','15','2017-05-16 06:00:02'),(186,'2017-05-16 06:00:00','28','21','85','37','38','52',NULL,'39','40','47','33','65','30','28','69','15','15','52','14','33','30','57','38','105','34','15','23','33','84','37','72','37','37','67','16','2017-05-16 07:00:02'),(187,'2017-05-16 07:00:00','27','22','73','39','48','42','97','39','58','59','47','73','43','41','109','14','16','58','16','47','34','78','46','107','36','21','20','52','48','37','67','65','54','89','17','2017-05-16 08:00:03'),(188,'2017-05-16 08:00:00','29','28','54','27','36','47','108','45','60','62','60','73','52','57','110','14','17','52','19','60','45','66','43','98','40','24','24','55','49','36','35','62','62','83','23','2017-05-16 09:00:03'),(189,'2017-05-16 09:00:00','34','39','45','25','34','30','87','35','57','51','63','67','35','58','103','13','21','57','24','58','38','49','39','99','53','23','22','46','73','32','24','57','54','77','20','2017-05-16 10:00:05'),(190,'2017-05-16 10:00:00','33','41','39','23','36','22','103','33','53','49','56','72','30','57','119','13','39','61','25','52','37','48','28','82','50','29','25','51','71','29','20','56','61','68','23','2017-05-16 11:00:02'),(191,'2017-05-16 11:00:00','28','25','34','20','35','20','79','28','53','38','53','71','25','55','111','12','37','49','20','48','34','41','23','86','51','30','37','46','46','34','16','50','53','66','19','2017-05-16 12:00:02'),(192,'2017-05-16 12:00:00','27','20','23','20','26','20','81','29','44','32','35','69','22','37','102','13','27','49','22','32','22','27','17','64','41','24','33','20','23','33','13','40','39','56','11','2017-05-16 13:00:03'),(193,'2017-05-16 13:00:00','17','15','19','22','17','15','79','31','26','20','20','47','21',NULL,'81','13','20','38','27','23','18','23','15','56','29','22','23','16','未公布','25','11','30','23','30','8','2017-05-16 14:00:03'),(194,'2017-05-16 15:00:00','14','14','18','22','13','12','53','18','25','16','12','47','17','14','71','17','19','30','21','17','15','20','12','23','16','18','23','14','19','18','19','19','17','31','7','2017-05-16 15:38:35'),(195,'2017-05-16 15:00:00','14','14','18','22','13','12','53','18','25','16','12','47','17','14','71','17','19','30','21','17','15','20','12','23','16','18','23','14','19','18','19','19','17','31','7','2017-05-16 15:39:45'),(196,'2017-05-16 15:00:00','14','14','18','22','13','12','53','18','25','16','12','47','17','14','71','17','19','30','21','17','15','20','12','23','16','18','23','14','19','18','19','19','17','31','7','2017-05-16 15:42:42'),(197,'2017-05-16 15:00:00','14','14','18','22','13','12','53','18','25','16','12','47','17','14','71','17','19','30','21','17','15','20','12','23','16','18','23','14','19','18','19','19','17','31','7','2017-05-16 15:43:26'),(198,'2017-05-16 15:00:00','14','14','18','22','13','12','53','18','25','16','12','47','17','14','71','17','19','30','21','17','15','20','12','23','16','18','23','14','19','18','19','19','17','31','7','2017-05-16 16:00:04'),(199,'2017-05-16 15:00:00','14','14','18','22','13','12','53','18','25','16','12','47','17','14','71','17','19','30','21','17','15','20','12','23','16','18','23','14','19','18','19','19','17','31','7','2017-05-16 16:07:41'),(200,'2017-05-16 16:00:00','11','12','18','19','14','17','64','17','26','14',NULL,'40','17','13','60','19','20','31','17','16','14','19','12','未公布','17','18','21','17','14','16','21','17','16','37','6','2017-05-16 16:23:33'),(201,'2017-05-16 16:00:00','11','12','18','19','14','17','64','17','26','14',NULL,'40','17','13','60','19','20','31','17','16','14','19','12','未公布','17','18','21','17','14','16','21','17','16','37','6','2017-05-16 16:24:30'),(202,'2017-05-16 16:00:00','11','12','18','19','14','17','64','17','26','14',NULL,'40','17','13','60','19','20','31','17','16','14','19','12','未公布','17','18','21','17','14','16','21','17','16','37','6','2017-05-16 16:27:10'),(203,'2017-05-16 16:00:00','11','12','18','19','14','17','64','17','26','14',NULL,'40','17','13','60','19','20','31','17','16','14','19','12','未公布','17','18','21','17','14','16','21','17','16','37','6','2017-05-16 17:00:03');
/*!40000 ALTER TABLE `Website_no2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_o3`
--

DROP TABLE IF EXISTS `Website_o3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_o3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shunYi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouXiGong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongDingMenNei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yuFa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_o3`
--

LOCK TABLES `Website_o3` WRITE;
/*!40000 ALTER TABLE `Website_o3` DISABLE KEYS */;
INSERT INTO `Website_o3` VALUES (45,'2017-05-11 18:00:00','110','119','132','116','122','127','106','116','未公布','110','101','108','118','未公布','75','123','123','89','115','91','105','89','111','93','106','98','120','112','80','109','119','106','102','99','113','2017-05-11 18:41:26'),(46,'2017-05-11 18:00:00','110','119','132','116','122','127','106','116','未公布','110','101','108','118','未公布','75','123','123','89','115','91','105','89','111','93','106','98','120','112','80','109','119','106','102','99','113','2017-05-11 19:00:03'),(47,'2017-05-11 19:00:00','112','114','124','121','118','124','106','117','未公布','105','103','108','119','107','69','123','124','82','123','92','106','89','106','93','110','102','119','107','86','111','119','104','100','96','107','2017-05-11 20:00:03'),(48,'2017-05-11 20:00:00','111','112','126','114','121','115','105','116','102','106','107','107','121','110','77','114','121','79','116','93','105','83','105','96','109','103','109','109','85','107','113','104','103','96','101','2017-05-11 21:00:04'),(49,'2017-05-11 21:00:00','106','103','119','110','116','105','98','107','99','97','102','104','115','107','71','108','116','79','112','88','100','85','99','75','105','98','104','103','84','102','107','96','97','92','101','2017-05-11 22:00:03'),(50,'2017-05-11 22:00:00','98','95','112','104','103','85','95','103','89','89','95','93','110','98','63','106','112','74','106','80','96','82','90','65','98','95','98','97','81','89','101','80','89','75','96','2017-05-11 23:00:05'),(51,'2017-05-11 23:00:00','78','87','104','96','86','84','96','101','79','83','84','73','107','78','59','102','93','71','102','79','75','75','88','23','83','92','92','88','83','未公布','78','82','78','68','88','2017-05-12 00:00:03'),(52,'2017-05-12 00:00:00','72','73','97','74','67','82','69','88','67','87','82','73','103','68','61','90','62','69','91','71','75','65','81','14','79','91','82','76','69','31','52','62','70','73','78','2017-05-12 01:00:03'),(53,'2017-05-12 01:00:00','77','72','87','64','68','67','24','77','39','78','71','78','89','60','41','85','66','60','75','57','56','60','74','2','78','84','71','72','63','13','45','50','58','52','65','2017-05-12 02:00:03'),(54,'2017-05-12 02:00:00','67','67','57','47','37','11','41','45','6','59','53','60','82','66','44','81','44','38','73','53','29','44','66','2','78','84','66','40','51','16','53','45','51','17','53','2017-05-12 03:00:03'),(55,'2017-05-12 03:00:00','64','57','51','45','42','25','31','48','10','52','57','58','79','47','38','78','62','3','74','58','23','33','38','2','66','83','57','33','57','9','43','46','52','26','40','2017-05-12 04:00:03'),(56,'2017-05-12 04:00:00','69','55','21','40','63','46','29','13','12','41','42','28','78','34','5','70','67','未公布','73','40','46','2','25','未公布','42','82','51','22','54','6','39','14','33','6','43','2017-05-12 05:00:03'),(57,'2017-05-12 05:00:00','58','33','2','38','44','31','34','9','20','24','33','36','70','40','23','72','37','21','75','33','46','11','32','25','39','70','47','25','47','10','21','14','30','37','24','2017-05-12 06:00:03'),(58,'2017-05-12 05:00:00','58','33','2','38','44','31','34','9','20','24','33','36','70','40','23','72','37','21','75','33','46','11','32','25','39','70','47','25','47','10','21','14','30','37','24','2017-05-12 07:00:03'),(59,'2017-05-12 07:00:00','49','67','27','31','39','30','49','15','43','33','51','39','45','51','13','60','55','38','49','50','55','28','59','33','57','24','42','48','22','19','26','50','49','42','10','2017-05-12 08:00:02'),(60,'2017-05-12 08:00:00','41','81','46','37','63','33','58','33','57','40','67','52','58','59','30','64','66','48','54','60','66','58','71','48','69','46','55','66','22','22','46','58','60','57','47','2017-05-12 09:00:02'),(61,'2017-05-12 09:00:00','62','86','77','67','77','59','73','43','55','69','75','62','70','75','44','77','71','61','70','69',NULL,'67','80','38','76','66','65','79','40','26','47','76','67','66','61','2017-05-12 10:00:02'),(62,'2017-05-12 10:00:00','67','94','98','68','86','69','80','71','61','84','88','72','82','85','52','80','96','69','63','76',NULL,'73','93','68','84','67','75','89','48','44','64','82','76','77','76','2017-05-12 11:00:02'),(63,'2017-05-12 11:00:00','91','98','110','74','97','72','90','95','83','95','97','84','92','99','63','78','113','77','66','88',NULL,'88','101','81','96','74','88','97','58','68','85','93','87','86','90','2017-05-12 12:00:06'),(64,'2017-05-12 12:00:00','108','109','129','99','110','95','99','105','96','107','108','96','110','111','73','98','123','88','93','97','未公布','99','114','83','106','91','97','109','67','86','85','104','99','93','104','2017-05-12 13:00:03'),(65,'2017-05-12 13:00:00','120','122','152','116','121','107','111','未公布','109','123','124','107','129','128','94','118','137','101','115','109','122','111','129','98','120','108','108','125','85','115','98','117','112','110','121','2017-05-12 14:00:03'),(66,'2017-05-12 14:00:00','136','140','未公布','131','137','118','123','135','123','137','138','119','149','145','92','135','156','118','130','122','138','128','149','106','133','127','133','143','102','133','114','132','130','122','147','2017-05-12 15:00:03'),(67,'2017-05-12 15:00:00','154','156','未公布','139','153','132','141','151','134','157','158','140','160','166','114','148','175','132','134','137','158','146','166','123','151','142','142','164','118','146','129','150','145','138','160','2017-05-12 16:00:03'),(68,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:00:03'),(69,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:01:36'),(70,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:02:49'),(71,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:05:43'),(72,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:06:11'),(73,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:13:13'),(74,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:15:54'),(75,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:17:05'),(76,'2017-05-12 16:00:00','168','168','179','145','162','147','155','168','144','167','169','155','173','182','120','155','192','135','139','148','172','156','175','133','161','154','154','179','127','161','138','162','158','148','166','2017-05-12 17:19:57'),(77,'2017-05-12 17:00:00','171','165','182','154','167','155','135','168','144','172','175','149','175','186','122','162','187','132','148','151','168','158','165','142','167','159','168','175','130','163','135','164','162','159','164','2017-05-12 17:20:59'),(78,'2017-05-12 17:00:00','171','165','182','154','167','155','135','168','144','172','175','149','175','186','122','162','187','132','148','151','168','158','165','142','167','159','168','175','130','163','135','164','162','159','164','2017-05-12 17:21:41'),(79,'2017-05-12 17:00:00','171','165','182','154','167','155','135','168','144','172','175','149','175','186','122','162','187','132','148','151','168','158','165','142','167','159','168','175','130','163','135','164','162','159','164','2017-05-12 17:22:41'),(80,'2017-05-12 17:00:00','171','165','182','154','167','155','135','168','144','172','175','149','175','186','122','162','187','132','148','151','168','158','165','142','167','159','168','175','130','163','135','164','162','159','164','2017-05-12 18:00:03'),(81,'2017-05-12 18:00:00','162','156','176','147','160','147','124','166','129','168','163','141','177','174','88','164','176','126','149','138','161','145','155','137','157','158','162','167','118','156','139','154','146','145','153','2017-05-12 19:00:03'),(82,'2017-05-12 19:00:00','152','141','160','142','150','108','130','146','121','149','152','118','163','158','89','161','174','92','143','127','147','134','125','90','144','148','160','155','112','136','128','145','136','136','126','2017-05-12 20:00:03'),(83,'2017-05-12 20:00:00','154','132','149','132','120','88','117','150','107','132','123','130',NULL,'145','72','115','165','36','132','107','147','109','105','95','132','145','129','126','111','129','93','136','123','118','99','2017-05-12 21:00:04'),(84,'2017-05-12 21:00:00','130','129','134','97','125','81','131','125','107','136','134','127','137','137','83','93','140','55','101','117','124','111','137','73','132','141','90','132','72','99','31','125','130','114','94','2017-05-12 22:00:03'),(85,'2017-05-12 22:00:00','100','114','121','88','104','84','112','92','100','105','94','103','116','101','64','89','108','96','86','103','100','107','109','48','107','129','89','115','51','69','9','103','106','80','128','2017-05-12 23:00:06'),(86,'2017-05-12 23:00:00','79','103','88','81','70','62','73','84','61','78','72','78','98','82','47','84','57','80','80','70','90','85','97','35','84','105','95','74','71','65','7','68','78','60','114','2017-05-13 00:00:02'),(87,'2017-05-13 00:00:00','83','86','56','77','55','80','42','80','26','72','71','62','93','75','50','94','28','72','71','54','75','55','86','26','73','88','97','59','72','40','8','50','59','57','85','2017-05-13 01:00:03'),(88,'2017-05-13 01:00:00','79','72','66','97','56','108','37','99','23','71','71','61','105','65','44','108','60','64','89','50','83','35','77','15','71','78','109','62','63','75','19','55','65','53','68','2017-05-13 02:00:03'),(89,'2017-05-13 02:00:00','64','77','81','96','66','66','67','99','76','88','75','69','111','69','40','94','102','40','98','54','65','62','82','23','62','77','107','46','45','96','13','41','64','58','67','2017-05-13 03:00:03'),(90,'2017-05-13 03:00:00','85','92','62','69','68','61','42','103','71','92','57','52','99',NULL,'33','91','102','43','84','48','53','53','91','7','42','85','107','39','52','87','56','47','56','28','74','2017-05-13 04:00:03'),(91,'2017-05-13 04:00:00','104','106','30','88','51','98','未公布','100','57','96','35','未公布','91','52','5','95','126','35','88','31','102','35','未公布','2','55','76','96','49','72','98','95','48','38','未公布','66','2017-05-13 05:00:03'),(92,'2017-05-13 05:00:00','90','94','87','85','70','81','97','93','88','88','84','91','94','91','68','90','99','58','82','76','88','87','98','68','90','74','80','66','69','85','84','85','82','65','78','2017-05-13 06:00:03'),(93,'2017-05-13 06:00:00','75','74','79','75','73','75','73','79','70','74','73','79',NULL,'78','62','75','80','67','70','68','73','67','76','58','72','70','71','84','55','71','75','68','71','70','77','2017-05-13 07:00:03'),(94,'2017-05-13 07:00:00','64','68','66','72','64','75','61','73','60','66','65','72','79','70','46','74','74','59','67','59','65','58','69','55','65','63','71','68','52','66','67','63','62','61','71','2017-05-13 08:00:03'),(95,'2017-05-13 08:00:00','68','67','64','71','66','74','58','71','62','67','65','71','79','72','48','73','77','58','65','58','70','57','70','56','65','62','76','68','47','67','59','65','62','60','64','2017-05-13 09:00:03'),(96,'2017-05-13 09:00:00','73','72','70','72','67','70','63','79','66','74','66','72','79','70','54','77','83','60','68','61','74','62','71','57','65','61','73','74','44','72','67','66','65','62','69','2017-05-13 10:00:03'),(97,'2017-05-13 10:00:00','79','81','76','76','71','78','69','82','71','81','70','77','82','75','59','83','91','69','73','64','79','67','83','60','69','65','74','82','50','77','72','73','69','70','76','2017-05-13 11:00:03'),(98,'2017-05-13 11:00:00','85','86','83','78','78','82','72','85','76','84','78','84','88','82','62','85','96','73','74','71','86','74','89','67','76','69','79','88','53','83','78','82','76','75','83','2017-05-13 12:00:03'),(99,'2017-05-13 12:00:00','89','91','90','81','85','91','80','94','81','88','84','90','91','90','64','88','102','80','77','77','89','79','93','72','82','73','83','96','59','87','87','90','83','81','91','2017-05-13 13:00:03'),(100,'2017-05-13 13:00:00','93','95','97','86','90','100','84','98','86','95','88','95','95','96','71','95','106','88','82','81','93','84','98','78','87','77','91','101','66','93','96','92','88','86','96','2017-05-13 14:00:03'),(101,'2017-05-13 14:00:00','98','99','104','89','94','105','90','99','91','103','92','101','100','104','70','93','112','95','86','86','98','85','101','84','93','81','95','104','73','98','101','109','92','92','101','2017-05-13 15:00:04'),(102,'2017-05-13 15:00:00','101','101','109','90','97','99','88','101','92','108','97','103','99','109','66','92','115','96','85','88','101','88','103','88','98','82','92','105','74','101','99','108','96','96','103','2017-05-13 16:00:03'),(103,'2017-05-13 16:00:00','101','102','113','89','99','94','92','101','93','110','96','105','98','108','70','93','117','100','83','86','103','89','102','89','99','81','92','107',NULL,'101','98','104','95','99','106','2017-05-13 17:00:03'),(104,'2017-05-13 17:00:00','101','103','112','90','97','98','90','102','94','109','97','102','98','109','66','95','116','106','85','86','102','86','101','88','98','81','96','104','73','101','97','101','94','97','115','2017-05-13 18:00:03'),(105,'2017-05-13 18:00:00','100','101','110','90','93','98','87','101','90','96','92','100','98','100','55','94','112','109','86','85','96','85','118','78','94','81','95','104','72','95','97','96','92','94','123','2017-05-13 19:00:03'),(106,'2017-05-13 19:00:00','91','94','94','87','85','98','68','92','80','89','73','88','92','92','41','89','106','94','84','70','89','79','130','72','86','80','94','127','72','90','97','80','78','66','114','2017-05-13 20:00:03'),(107,'2017-05-13 20:00:00','79','110','55','75','91','94','50','76','61','80','64','75','72','80','31','89','86','84','79','58','75','69','113','68','70','78','76','119','46','82','88','未公布','62','58','87','2017-05-13 21:00:04'),(108,'2017-05-13 21:00:00','83','96','99','57','95','87','23','42','44','72','66','53','59','59','54','80','80','82','70','45','52','65','92','51','56','72','61','100','39','79','67','34','64','64','68','2017-05-13 22:00:03'),(109,'2017-05-14 00:00:00','82','82','77','47','51','52','12','60','2','18','13','10','43','14','8','84','69','64','47','21','31','3','37','4','11','59','63','73','50','49','7','24','3','10','49','2017-05-14 01:00:03'),(110,'2017-05-14 01:00:00','73','70','46','75','34','27','51','70','33','61','35','43','39','54','20','82','74','53','69','42','63','40','33','15','51','64','73','53','45','57','2','60','32','31','29','2017-05-14 02:00:03'),(111,'2017-05-14 02:00:00','54','54','10','79','42','50','66','76','56','71','62','66','80','59','51','89','66','35','74','61','38','60','54','19','60','59','70','60','57','23','6','62','57','59','43','2017-05-14 03:00:03'),(112,'2017-05-14 02:00:00','54','54','10','79','42','50','66','76','56','71','62','66','80','59','51','89','66','35','74','61','38','60','54','19','60','59','70','60','57','23','6','62','57','59','43','2017-05-14 04:00:03'),(113,'2017-05-14 05:00:00','54','62','2','82','23','16',NULL,'90','35','39','67','54','81','57','41','91','49','31','74','65','54','62','49','12','61','78','65','23','50','8','15','55','59','61','28','2017-05-14 06:00:02'),(114,'2017-05-14 06:00:00','58','66','2','76','21','22',NULL,'91','67','22','78','66','79','61','47','87','51','21','65','65','52','59','52',NULL,'66','65','72','14','45','9','15','56','69','69','24','2017-05-14 07:00:02'),(115,'2017-05-14 07:00:00','49','76','6','70','27','26','48','86','61','28','70','52','79','71','18','84','45','22','64','60','66','67','67','8','73','67','71','26','37',NULL,'23','54','68','52','22','2017-05-14 08:00:03'),(116,'2017-05-14 08:00:00','59','81','42','78','55','55','61','85','67','63','73','52','76','75','14','83','82','31','74','67','72','55','62','35','77','73','81','49','19','40','39','64','65','57','45','2017-05-14 09:00:03'),(117,'2017-05-14 09:00:00','75','79','74','85','87','80','69','89','73','92','77','78','90','82','42','87','87','46','82','71','79','74','68','50','79','75','64','68','35','70','54','75','75','69','65','2017-05-14 10:00:03'),(118,'2017-05-14 10:00:00','78','94','94','87','90','85','70','96','74','95','79','81','93','94','50','88','87','55','82','69','83','75','80','58','84','77','95','91','49','76','75','80','77','71','77','2017-05-14 11:00:03'),(119,'2017-05-14 11:00:00','83','100','101','91','95','95','76','99','82','98','90','92','98','102','56','89','99','68','86','74','90','82','91','71','91','80','99','98','65','84','90','86','84','81','87','2017-05-14 12:00:03'),(120,'2017-05-14 12:00:00','97','115','109','92','105','114','86','104','97','109','103','90','102','114','60','96','112','80','88','88','101','90','104','77','104','83','106','103','78','98','102','99','95','93','98','2017-05-14 13:00:03'),(121,'2017-05-14 13:00:00','110','130','113','94','115','119','105','106','107','114','112','107','103','121','67','98','129','94','90','98','115','104','120','77','109','84','113','119','88','109','111','105','106','104','116','2017-05-14 14:00:03'),(122,'2017-05-14 14:00:00','119','147','118','96','121','122','113','110','117','118','121','114','106','128','78','100','141','113','93','107',NULL,'117','138','80','117','87','113','134','87','117','116','114','115','111','131','2017-05-14 15:00:02'),(123,'2017-05-14 15:00:00','123','164','127','100','129','126','115','114','121','127','124','119','108','138','85','104','155','127','96','111','未公布','129','155','87','121','89','118','149','91','122','121','117','123','119','142','2017-05-14 16:00:07'),(124,'2017-05-14 16:00:00',NULL,'178','133','105','135','120','113','117','128','132','115','127','111','139','83','106','170','130','101','114','150','136','167','87','124','93','120','162','93','119','120','118','129','115','149','2017-05-14 17:00:03'),(125,'2017-05-14 17:00:00','149','190','144','103','139','120','115','124','139','138',NULL,'117','112','150','98','106','186','130','98','124','169','153','169','93','134','95','118','172','89','118','118','122','132','126','153','2017-05-14 18:00:03'),(126,'2017-05-14 18:00:00','165','183','150','102','145','116','128','122','149','150',NULL,'144','107','161','114','104','178','131','99','147','169','156','162','106','147','94','122','170','90','113','112','130','155','148','148','2017-05-14 19:00:03'),(127,'2017-05-14 19:00:00','143','179','139','98','143','113','121','133','136','159',NULL,'120','105','169','94','103','168','121','96','144','158','148','159','110','147','101','117','157','89','109','109','151','145','147','131','2017-05-14 20:00:03'),(128,'2017-05-14 20:00:00','112','167','109','93','129','112','113','142','124','148',NULL,'121','121','159','83','101','142','101','92','138','149','136','145','112','140','120','114','140','88','103','110','142','133','134','119','2017-05-14 21:00:04'),(129,'2017-05-14 21:00:00','102','160','80','69','116','101','99','121','94','133',NULL,'85','115','143','74','100','114','75','73','109','115','106','119','103','126','117','103','124','75','91','102','110','116','120','86','2017-05-14 21:48:27'),(130,'2017-05-14 21:00:00','102','160','80','69','116','101','99','121','94','133',NULL,'85','115','143','74','100','114','75','73','109','115','106','119','103','126','117','103','124','75','91','102','110','116','120','86','2017-05-14 21:53:56'),(131,'2017-05-14 21:00:00','102','160','80','69','116','101','99','121','94','133',NULL,'85','115','143','74','100','114','75','73','109','115','106','119','103','126','117','103','124','75','91','102','110','116','120','86','2017-05-14 21:54:30'),(132,'2017-05-14 21:00:00','102','160','80','69','116','101','99','121','94','133',NULL,'85','115','143','74','100','114','75','73','109','115','106','119','103','126','117','103','124','75','91','102','110','116','120','86','2017-05-14 21:55:00'),(133,'2017-05-14 21:00:00','102','160','80','69','116','101','99','121','94','133',NULL,'85','115','143','74','100','114','75','73','109','115','106','119','103','126','117','103','124','75','91','102','110','116','120','86','2017-05-14 21:56:46'),(134,'2017-05-14 21:00:00','102','160','80','69','116','101','99','121','94','133',NULL,'85','115','143','74','100','114','75','73','109','115','106','119','103','126','117','103','124','75','91','102','110','116','120','86','2017-05-14 22:00:03'),(135,'2017-05-14 22:00:00','95','124','3','60','87','85','74','111','58','96',NULL,'96','87','90','47','96','79','58','61','59','90','60','85','55','82','108','97','102','65','86','16','76','87','77','68','2017-05-14 23:00:03'),(136,'2017-05-14 23:00:00','87','105','2','54','64','60','70','91','43','79','64','69','64','71','48','90','82','49','63','65','90','60','90','38','72','97','92','78','61','67','25','58','69','43','52','2017-05-15 00:00:03'),(137,'2017-05-15 00:00:00','78','93','2','42','63','22','64','77','25','89','76','57','56','84','37','84','80','33','62','53','83','53','85','50','69','84','76','63','64','48','35','40','50','59','60','2017-05-15 01:00:03'),(138,'2017-05-15 01:00:00','85','95','2','46','69','11','47','80','19','81','72','60','40','80','46','84','82','16','59','48','51','32','75','43','54','78','74','73','53','37','37','50','35','61','59','2017-05-15 02:00:03'),(139,'2017-05-15 02:00:00','79','88','2','57','40','2','46','64','11','77','41','47','51','45','32','79','79','17','68','45','29','44','64','26','36','75','68','60','28','25','13','52','30','14','38','2017-05-15 03:00:03'),(140,'2017-05-15 03:00:00','84','88','2','55','33','44','36','68','11','80','32','47','55','36','41','74','84','10','54','36','34','40','61','2','37','75','67','46','40','17','9','54','35','18','25','2017-05-15 04:00:03'),(141,'2017-05-15 04:00:00','87','86','13','58','6','10','未公布','68','19','66','30','未公布','48','48','42','64','81','8','58','28','47','21','未公布','2','44','71','58','30','61','14','20','19','38','未公布','18','2017-05-15 05:00:03'),(142,'2017-05-15 05:00:00','76','81','25','47','30','7',NULL,'58','38','51','20','35','67','51','31','61','78','9','57','26','68','2','37','12','47','58','64','14','57','16','15','20','25','17','20','2017-05-15 06:00:03'),(143,'2017-05-15 06:00:00','54','59','10','51','40','19',NULL,'54','34','25','43','23','60','30','21','59','79','11','52','31','49','35','34','10','41','59','68','32','52','25','21','37','40','38','33','2017-05-15 07:00:03'),(144,'2017-05-15 07:00:00','43','57','31','52','43','42','43','55','35','31','35','28','58','29','8','63','61','28','52','46','41','46','51','6','41','60','60','41','32','29','27','32','40','30','39','2017-05-15 08:00:03'),(145,'2017-05-15 08:00:00','56','64','48','63','47','51','46','48','47','44','36','27','53','37','9','68','62','48','66','45','63','37','59','14','43','43','66','46','37','47','47','38','34','31','8','2017-05-15 09:00:03'),(146,'2017-05-15 09:00:00','65','70','64','75','59','66','61','59','56','65','57','42','70','58','22','77','78','55','76','59','67','53','63','38','55','45','76','60','50','67','45','56','51','47','2','2017-05-15 09:57:40'),(147,'2017-05-15 09:00:00','65','70','64','75','59','66','61','59','56','65','57','42','70','58','22','77','78','55','76','59','67','53','63','38','55','45','76','60','50','67','45','56','51','47','2','2017-05-15 10:00:03'),(148,'2017-05-15 10:00:00','69','87','82','86','83','72','77','80','68','87','78','66','78','80','36','88','89','59','80','73','76','71','81','50','76','77','89','87','65','75','70','81','70','66','31','2017-05-15 10:33:28'),(149,'2017-05-15 10:00:00','69','87','82','86','83','72','77','80','68','87','78','66','78','80','36','88','89','59','80','73','76','71','81','50','76','77','89','87','65','75','70','81','70','66','31','2017-05-15 10:34:21'),(150,'2017-05-15 10:00:00','69','87','82','86','83','72','77','80','68','87','78','66','78','80','36','88','89','59','80','73','76','71','81','50','76','77','89','87','65','75','70','81','70','66','31','2017-05-15 11:00:04'),(151,'2017-05-15 11:00:00','83','100','102','99','102','88','90','102','81','106','88','81','108','98','51','101','97','61','94','82','86','84','98','70','83','87','99','104','75','88','84','88','87','79','2','2017-05-15 12:00:03'),(152,'2017-05-15 12:00:00','97','116','121','106','未公布','106','93','116','96','122','101','90','124','114','53','112','111','78','100','91','101','97','115','79','99','102','106','117','86','104','98','98','97','91','77','2017-05-15 13:00:03'),(153,'2017-05-15 13:00:00','109','135','131','111','134','112','110','124','106','132','113','107','135','125',NULL,'119','127','105','107','104','115','110','132','86','112','114','116','130','93','114','101','108','107','103','35','2017-05-15 14:00:03'),(154,'2017-05-15 14:00:00','121','150','145','115','142','118','128','131','114','139','125','121','140','133','78','120','144','103','112','111','128','121','143','91','122','118','128','144','104','125','104','120','120','112','2','2017-05-15 15:00:05'),(155,'2017-05-15 15:00:00','133','165','156','117','149','124','141','133',NULL,'142','134','127','142','147','80','118','157','122','112','122','143','131','160','104','129','121','139','152','113','136','111','129','130','126','2','2017-05-15 16:00:02'),(156,'2017-05-15 16:00:00','146','180','162','124','151','129','145','132','135','150','146','141','141','153','102','123','175','129','122','130','157','148','170','109','137','122','145','163','118','147','115','136','142','130','2','2017-05-15 16:55:48'),(157,'2017-05-15 16:00:00','146','180','162','124','151','129','145','132','135','150','146','141','141','153','102','123','175','129','122','130','157','148','170','109','137','122','145','163','118','147','115','136','142','130','2','2017-05-15 16:56:14'),(158,'2017-05-15 16:00:00','146','180','162','124','151','129','145','132','135','150','146','141','141','153','102','123','175','129','122','130','157','148','170','109','137','122','145','163','118','147','115','136','142','130','2','2017-05-15 17:00:02'),(159,'2017-05-15 17:00:00','165','186','165','129','155','137','158','136','145','167','157','144','145','169','107','125','191','126','132','148','169','156','173','98','149','123','152','165','123','161','127','149','148','144','17','2017-05-15 18:00:04'),(160,'2017-05-15 18:00:00','170','186','163','131','153','155','141','150','145','164',NULL,'147','145','171','104','127','188','121','134','149','172','152','171','112','150','140','159','162','134','170','152','155','148','142','50','2017-05-15 19:00:03'),(161,'2017-05-15 19:00:00','163','173','146','136','143','164','131','159','135','156',NULL,NULL,'161','161','87','135','177','116','131','144','161','144','158','115','147','139','164','157','137','164','160','152','144','143','2','2017-05-15 20:00:03'),(162,'2017-05-15 20:00:00','145','146','122','139','124','172','120','144','124','138','137','121','145','147','76','140','161','115','135','132','137','119','140','121','135','121','140','128','125','150','156','145','129','128','2','2017-05-15 20:57:18'),(163,'2017-05-15 20:00:00','145','146','122','139','124','172','120','144','124','138','137','121','145','147','76','140','161','115','135','132','137','119','140','121','135','121','140','128','125','150','156','145','129','128','2','2017-05-15 21:00:04'),(164,'2017-05-15 20:00:00','145','146','122','139','124','172','120','144','124','138','137','121','145','147','76','140','161','115','135','132','137','119','140','121','135','121','140','128','125','150','156','145','129','128','2','2017-05-15 21:08:51'),(165,'2017-05-15 20:00:00','145','146','122','139','124','172','120','144','124','138','137','121','145','147','76','140','161','115','135','132','137','119','140','121','135','121','140','128','125','150','156','145','129','128','2','2017-05-15 21:08:57'),(166,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 21:16:46'),(167,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 21:24:58'),(168,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 21:27:18'),(169,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 21:29:10'),(170,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 21:31:36'),(171,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 21:45:33'),(172,'2017-05-15 21:00:00','128','136','105','131','104','163','107','117','112','123','126','117','133','131','58','138','148','102','119','124','125','105','127','110','124','115','117','131','104','133','124','132','116','126','2','2017-05-15 22:00:04'),(173,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 22:35:24'),(174,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 22:35:30'),(175,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 22:37:44'),(176,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 22:40:39'),(177,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 22:41:25'),(178,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 22:44:47'),(179,'2017-05-15 22:00:00','133','136','98','113','108','139','93','91','112','118','123','114','123','141','69','135','165','71','99','120','131','88','137','107','120','103','116','117','78','124','71','134','109','111','42','2017-05-15 23:00:04'),(180,'2017-05-15 23:00:00','109','119','80','95','101','134','101','76','94','102','99',NULL,'99','111','68','127','139','72','85','105','114','93','111','89','97','84','108','94','66','101','10','105','87','93','2','2017-05-16 00:00:03'),(181,'2017-05-16 00:00:00','103','112','69','93','87','126','104','76','90','86','85','85','90','104','65','115','129','62','81','94','96','75','98','90','83','82','105','75','69','85','43','97','80','80','2','2017-05-16 01:00:03'),(182,'2017-05-16 01:00:00','101','112','49','84','78','103','97','61','91','80','85','96','83','93','65','101','118','56','70','90','95','73','89','63','88','84','97','75','57','77','40','97','83','86','2','2017-05-16 02:00:03'),(183,'2017-05-16 02:00:00','97','117','20','72','66','99','104','47','93','74','82','92','78','103','63','91','83','53','64','95','80','70','94','53','88','71','93','82','57','69','47','98','79','80','2','2017-05-16 03:00:03'),(184,'2017-05-16 04:00:00','82','89','2','54','56','78','98','41','85','53','71','71','76','102','60','75','95','未公布','53','84','90','63','75','未公布','76','57','79','76','72','33','50','84','62','67','2','2017-05-16 05:00:03'),(185,'2017-05-16 05:00:00','71','83','2','50','61','56',NULL,'36','75','49','53','54','69','83','52','79','104','39','59','75','83','49','63','17','72','64','69','70','59','22','39','78','62','66','2','2017-05-16 06:00:02'),(186,'2017-05-16 06:00:00','69','83','2','39','58','38',NULL,'35','55','54','34','41','51','74','31','75','108','16','64','64','71','29','50','3','61','70','73','62','14','26','36','61','45','29','2','2017-05-16 07:00:02'),(187,'2017-05-16 07:00:00','72','78','19','43','54','59','31','38','32','46','33','36','41','54','5','72','110','14','67','48','73','10','43','5','64','61','71','44','31','41','40','29','36','18','2','2017-05-16 08:00:03'),(188,'2017-05-16 08:00:00','80','87','51','70','80','71','28','60','41','52','49','48','49','43','11','87','123','40','75','44','66','36','64','18','69','72','94','53','36','70','90','42','46','33','2','2017-05-16 09:00:03'),(189,'2017-05-16 09:00:00','83','92','74','96','100','106','72','94','63','82','65','74','96','57','26','106','132','64','89','65','90','76','88','29','75','89','120','82','39','99','113','67','71','56','2','2017-05-16 10:00:05'),(190,'2017-05-16 10:00:00','110','122','107','122','132','130','89','117','93','111','97','98','119','83','35','139','135','81','112','96','116','102','137','62','103','98','138','103','53','131','127','97','86','86','2','2017-05-16 11:00:02'),(191,'2017-05-16 11:00:00','146','177','148','151','163','145','136','153','122','157','123','122','166','120','64','174','165','120','141','125','151','139','172','78','126','123','137','137','96','150','130','132','117','113','2','2017-05-16 12:00:02'),(192,'2017-05-16 12:00:00','171','206','196','173','190','142','157','181','153','183','162','146','208','170','95','196','206','140','163','159','192','175','200','116','154','165','160','190','143','181','127','160','154','143','2','2017-05-16 13:00:03'),(193,'2017-05-16 13:00:00','201','219','209','184','210','150','189','211','186','219','196','187','233',NULL,'134','206','230','158','164','190','208','191','208','142','185','197','198','208','未公布','203','118','189','186','181','2','2017-05-16 14:00:03'),(194,'2017-05-16 15:00:00','204','222','219','293','203','177','195','234','172','213','191','177','239','221','136','261','228','166','332','184','213','181','211','131','188','206','222','198','191','207','164','200','185','169','未公布','2017-05-16 15:38:35'),(195,'2017-05-16 15:00:00','204','222','219','293','203','177','195','234','172','213','191','177','239','221','136','261','228','166','332','184','213','181','211','131','188','206','222','198','191','207','164','200','185','169','未公布','2017-05-16 15:39:45'),(196,'2017-05-16 15:00:00','204','222','219','293','203','177','195','234','172','213','191','177','239','221','136','261','228','166','332','184','213','181','211','131','188','206','222','198','191','207','164','200','185','169','未公布','2017-05-16 15:42:42'),(197,'2017-05-16 15:00:00','204','222','219','293','203','177','195','234','172','213','191','177','239','221','136','261','228','166','332','184','213','181','211','131','188','206','222','198','191','207','164','200','185','169','未公布','2017-05-16 15:43:26'),(198,'2017-05-16 15:00:00','204','222','219','293','203','177','195','234','172','213','191','177','239','221','136','261','228','166','332','184','213','181','211','131','188','206','222','198','191','207','164','200','185','169','未公布','2017-05-16 16:00:04'),(199,'2017-05-16 15:00:00','204','222','219','293','203','177','195','234','172','213','191','177','239','221','136','261','228','166','332','184','213','181','211','131','188','206','222','198','191','207','164','200','185','169','未公布','2017-05-16 16:07:41'),(200,'2017-05-16 16:00:00','188','220','216','242','203','218','166','224','163','210',NULL,'191','232','204','150','288','223','171','未公布','168','208','178','211','113','185','214','212','216','188','189','189','185','184','177','未公布','2017-05-16 16:23:33'),(201,'2017-05-16 16:00:00','188','220','216','242','203','218','166','224','163','210',NULL,'191','232','204','150','288','223','171','未公布','168','208','178','211','113','185','214','212','216','188','189','189','185','184','177','未公布','2017-05-16 16:24:30'),(202,'2017-05-16 16:00:00','188','220','216','242','203','218','166','224','163','210',NULL,'191','232','204','150','288','223','171','未公布','168','208','178','211','113','185','214','212','216','188','189','189','185','184','177','未公布','2017-05-16 16:27:10'),(203,'2017-05-16 16:00:00','188','220','216','242','203','218','166','224','163','210',NULL,'191','232','204','150','288','223','171','未公布','168','208','178','211','113','185','214','212','216','188','189','189','185','184','177','未公布','2017-05-16 17:00:03');
/*!40000 ALTER TABLE `Website_o3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_outpatientserviceinfo`
--

DROP TABLE IF EXISTS `Website_outpatientserviceinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_outpatientserviceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `place` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isStable` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isSymptom` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptom` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physicalExam` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breathErr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acuteExac` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disease` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useAbt` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abtType` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useJmzs` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airRelate` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatMethod` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_outpatientserviceinfo`
--

LOCK TABLES `Website_outpatientserviceinfo` WRITE;
/*!40000 ALTER TABLE `Website_outpatientserviceinfo` DISABLE KEYS */;
INSERT INTO `Website_outpatientserviceinfo` VALUES (1,'0000000001','2017-03-08','中日医院','1','2','123','1','1','1','1','2','1','2','2','1','2','1'),(2,'0000000001','2017-04-13','中日医院','1','2','12','1','','1','','2','','2','2','1','2',''),(3,'0000000001','2017-04-20','中日医院','1','1','12','2','1','1','1','2','1','1','2','2','1','1'),(6,'0000000001','2017-04-22','中日医院','','','','','','','','','','','','','',''),(7,'0000000002','2017-05-04','中日医院','','','','','','','','','','','','','',''),(8,'null','2017-05-04','中日医院','','','','','','','','','','','','','',''),(9,'null','2017-05-04','中日医院','','','','','','','','','','','','','',''),(11,'0000000001','2017-03-08','bj ','1','1','1','1','12','1','1','1','1','1','1','1','1','1'),(40,'0000000002','2017-05-10','','','','','','','','','','','','','','',''),(41,'0000000002','2017-05-09','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Website_outpatientserviceinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_patientgroup`
--

DROP TABLE IF EXISTS `Website_patientgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_patientgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `G_id` int(11) NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_patientgroup`
--

LOCK TABLES `Website_patientgroup` WRITE;
/*!40000 ALTER TABLE `Website_patientgroup` DISABLE KEYS */;
INSERT INTO `Website_patientgroup` VALUES (6,2,'0000000002','2017-04-05'),(10,1,'0000000001','2017-04-13'),(11,1,'0000000003','2017-04-14');
/*!40000 ALTER TABLE `Website_patientgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_patientinfo`
--

DROP TABLE IF EXISTS `Website_patientinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_patientinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `age` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nation` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerTime` date NOT NULL,
  `education` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marriage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityAddr1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityAddr2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionAddr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diastolicPressure` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `systolicPressure` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `neckCircu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellphone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partnerPhone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_h` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county_h` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_h` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_h` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `P_id` (`P_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_patientinfo`
--

LOCK TABLES `Website_patientinfo` WRITE;
/*!40000 ALTER TABLE `Website_patientinfo` DISABLE KEYS */;
INSERT INTO `Website_patientinfo` VALUES (1,'0000000001','1','患者1','2','000000','1970-01-01','29','汉','167','56','2017-03-31','3','4','2','','池州','北航','北邮','','120','120','21.5','2','82568321','13734668756','18892387633','贵池区','安徽','石家庄','赞皇县','37号','河北'),(2,'0000000002','1','患者2','1','000000','1970-01-01','34','满族','','','2017-03-31','','','','','','','','','','','','2','83124536','18812354586','','','','','','',''),(4,'0000000003','1','患者3','1','000000','1970-01-01','56','其他','','','2017-03-31','','','','','','','','','','','','2','82318231','15969858532','','','','','','',''),(5,'000000000003','1','1','1','000000','2017-04-01','1','1','','','2017-04-25','1','1','1','','湘西土家族苗族自治州','','','','','','','2','','','','凤凰县','湖南','长治','长子县','as','山西');
/*!40000 ALTER TABLE `Website_patientinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_pm10`
--

DROP TABLE IF EXISTS `Website_pm10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_pm10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shunYi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouXiGong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongDingMenNei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yuFa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_pm10`
--

LOCK TABLES `Website_pm10` WRITE;
/*!40000 ALTER TABLE `Website_pm10` DISABLE KEYS */;
INSERT INTO `Website_pm10` VALUES (44,'2017-05-11 17:00:00','110','126','129','108','135','135','156','127','98','178','138','134','108','150','152','91','145','161','93','145','111','147','180','138','116','109','101','174','91','180','123','154','150','未公布','119','2017-05-11 18:00:03'),(45,'2017-05-11 18:00:00','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','2017-05-11 18:41:25'),(46,'2017-05-11 18:00:00','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','2017-05-11 19:00:03'),(47,'2017-05-11 19:00:00','108','129','136','119','137','144','152','132','94','182','142','132','118','153','150','100','148','169','102','149','112','148','186','142','119','116','108','178','90','179','131','154','152','未公布','116','2017-05-11 20:00:03'),(48,'2017-05-11 20:00:00','107','130','137','124','139','146','151','134','95','183','143','132','124','153','151','105','148','176','105','149','112','150','188','142','119','121','111','181','89','176','133','153','152','未公布','117','2017-05-11 21:00:03'),(49,'2017-05-11 21:00:00','108','129','138','128','137','148','149','137','92','184','144','130','128','154','151','113','147','180','108','148','110','149','188','143','118','124','114','181','88','172','135','144','151','未公布','118','2017-05-11 22:00:03'),(50,'2017-05-11 22:00:00','105','127','139','133','138','147','148','140','99','186','146','129','135','155','149','120','146','180','114','148','108','147','184','145','119','129','118','178','90','165','134','143','151','未公布','117','2017-05-11 23:00:05'),(51,'2017-05-11 23:00:00','104','127','140','138','140','149','149','143','112','187','150','131','142','157','151','127','146','180','121','150','109','146','184','147','120','134','122','177','90','155','137','143','153','未公布','116','2017-05-12 00:00:03'),(52,'2017-05-12 00:00:00','104','129','142','144','141','153','151','147','117','189','153','131','148','158','151','133','147','178','126','153','108','148','184','149','121','138','125','177','88','146','139','145','154','未公布','117','2017-05-12 01:00:03'),(53,'2017-05-12 01:00:00','109','132','144','151','143','153','152','152','119','192','155','133','153','159','153','148','148','176','130','156','109','151','186','152','122','141','128','178','87','146','140','153','156','未公布','123','2017-05-12 02:00:03'),(54,'2017-05-12 02:00:00','110','135','146','157','146','155','152','155','125','196','156','137','159','163','156','149','150','175','134','159','113','155','189','154','123','143','131','180','86','148','141','153','157','未公布','126','2017-05-12 03:00:03'),(55,'2017-05-12 03:00:00','113','136','149','162','148','158','151','159','129','200','159','140','164','165','157','150','150','175','138','163','116','159','194','155','125','146','134','184','84','148','143','153','161','未公布','128','2017-05-12 04:00:03'),(56,'2017-05-12 04:00:00','115','139','152','168','152','162','151','164','134','205','162','146','168','170','161','156','151','175','141','168','117','162','199','157','129','148','137','189','86','148','144','153','165','未公布','131','2017-05-12 05:00:03'),(57,'2017-05-12 05:00:00','117','143','155','173','156','163','152','168','140','210','167','150','174','175','163','161','153','175','145','173','121','164','204','159','132','151','140','195','88','142','145','156','167','未公布','134','2017-05-12 06:00:03'),(58,'2017-05-12 05:00:00','117','143','155','173','156','163','152','168','140','210','167','150','174','175','163','161','153','175','145','173','121','164','204','159','132','151','140','195','88','142','145','156','167','未公布','134','2017-05-12 07:00:03'),(59,'2017-05-12 07:00:00','119','152','156','183','163','164','157','175','161','217','174','155','182','185','173','173','157','174','151','181','127','168','212','166','136','159','145','200','90','141','145','160','177','未公布','139','2017-05-12 08:00:02'),(60,'2017-05-12 08:00:00','118','157','154','188','164','164','155','180','165','221','178','160','186','189','175','182','159','177','155','186','130','168','219','170','138','161','146','204','91','139','141','159','182','未公布','140','2017-05-12 09:00:02'),(61,'2017-05-12 09:00:00','120','166','155','194','170','163','157','185','171','225','185','162','190','196','184','188','159','184','161','193',NULL,'175','223','173','141','164','147','211','91','147','122','166','190','未公布','143','2017-05-12 10:00:02'),(62,'2017-05-12 10:00:00','115','167','155','201','177','157','163','191','168','233','190','171','195','200','191','194','151','192','168','194',NULL,'178','238','177','140','168','140','218','89','145','93','174','194','未公布','146','2017-05-12 11:00:02'),(63,'2017-05-12 11:00:00','107','163','154','202','176','147','158','189','180','230','183','170','198','195','193','200','142','204','171','185',NULL,'177','235','173','130','174','132','217','81','144','91','167','188','未公布','151','2017-05-12 12:00:05'),(64,'2017-05-12 12:00:00','101','158','152','200','173','136','152','189','176','229','174','165','202','190','187','201','134','205','168','178','121','172','230','169','126','178','124','208','75','129','91','160','183','未公布','154','2017-05-12 13:00:03'),(65,'2017-05-12 13:00:00','97','154','149','201','172','124','150','187','179','223','170','162','204','186','183','203','130','203','167','174','116','169','226','164','122','181','118','202','71','116','86','162','180','未公布','150','2017-05-12 14:00:03'),(66,'2017-05-12 14:00:00','97','154','145','202','169','121','150','185','186','221','169','163','205','189','184','205','130','204','166','174','119','167','207','162','122','181','119','197','71','110','87','165','182','未公布','154','2017-05-12 15:00:03'),(67,'2017-05-12 15:00:00','100','157','142','204','172','122','156','185','182','223','169','168','202','193','188','210','135','206','168','175','119','168','229','166','123','179','124','197','71','111','90','170','186','未公布','157','2017-05-12 16:00:03'),(68,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:00:03'),(69,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:01:36'),(70,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:02:49'),(71,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:05:43'),(72,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:06:11'),(73,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:13:13'),(74,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:15:54'),(75,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:17:05'),(76,'2017-05-12 16:00:00','104','148','134','209','174','125','162','185','187','225','170','174','203','198','191','214','140','207','173','177','125','172','229','168','120','179','129','199','72','116','92','168','190','未公布','160','2017-05-12 17:19:57'),(77,'2017-05-12 17:00:00','107','157','130','213','175','124','168','189','205','228','173','180','207','203','196','218','145','198','178','181','130','175','229','170','117','181','134','201','73','122','97','173','194','未公布','164','2017-05-12 17:20:59'),(78,'2017-05-12 17:00:00','107','157','130','213','175','124','168','189','205','228','173','180','207','203','196','218','145','198','178','181','130','175','229','170','117','181','134','201','73','122','97','173','194','未公布','164','2017-05-12 17:21:40'),(79,'2017-05-12 17:00:00','107','157','130','213','175','124','168','189','205','228','173','180','207','203','196','218','145','198','178','181','130','175','229','170','117','181','134','201','73','122','97','173','194','未公布','164','2017-05-12 17:22:41'),(80,'2017-05-12 17:00:00','107','157','130','213','175','124','168','189','205','228','173','180','207','203','196','218','145','198','178','181','130','175','229','170','117','181','134','201','73','122','97','173','194','未公布','164','2017-05-12 18:00:03'),(81,'2017-05-12 18:00:00','111','160','126','217','177','128','172','191','215','234','176','185','210','206','203','220','149','197','183','184','134','179','232','173','116','184','137','205','74','128','99','170','200','未公布','167','2017-05-12 19:00:03'),(82,'2017-05-12 19:00:00','113','160','127','219','179','128','177','195','213','235','178','190','211','209','207','220','147','195','186','186','138','179','231','175','118','186','141','206','75','135','99','174','201','未公布','171','2017-05-12 20:00:03'),(83,'2017-05-12 20:00:00','115','162','127','219','181','127','179','197','209','239','182','193',NULL,'212','211','216','154','193','188','189','142','181','236','177','119','187','139','209','76','137','98','177','204','未公布','173','2017-05-12 21:00:04'),(84,'2017-05-12 21:00:00','116','165','127','214','186','124','181','194','216','241','186','194','209','215','213','206','157','193','187','192','145','185','238','180','122','187','136','213','75','141','97','187','209','未公布','176','2017-05-12 22:00:03'),(85,'2017-05-12 22:00:00','116','168','127','208','187','124','183','190','211','240','186','195','204','214','216','197','159','195','182','194','149','189','242','180','122','185','133','218','73','144','100','189','213','未公布','182','2017-05-12 23:00:06'),(86,'2017-05-12 23:00:00','115','170','126','203','183','124','181','185','198','236','183','192','198','210','214','189','160','197','178','193','151','191','247','177','119','181','133','218','72','152','101','188','211','未公布','186','2017-05-13 00:00:02'),(87,'2017-05-13 00:00:00','111','170','124','200','179','122','178','179','195','231','180','189','193','205','210','189','161','200','174','190','151','189','249','173','116','178','134','213','73','158','103','182','208','未公布','186','2017-05-13 01:00:03'),(88,'2017-05-13 01:00:00','110','169','121','200','176','123','174','179','194','227','178','185','193','202','205','185','163','202','174','188','151','186','249','169','113','176','137','210','72','158','106','175','207','未公布','180','2017-05-13 02:00:03'),(89,'2017-05-13 02:00:00','109','170','119','202','176','126','170','179','196','228','180','183','194','201','204','196','168','204','177','187','152','185','251','169','113','175','140','206','74','158','110','176','206','未公布','175','2017-05-13 03:00:03'),(90,'2017-05-13 03:00:00','110','172','117','203','176','125','170','182','196','229','178','183','195',NULL,'203','198','172','204','179','186','153','184','251','170','112','175','142','205','75','155','112','176','205','未公布','175','2017-05-13 04:00:03'),(91,'2017-05-13 04:00:00','109','173','115','204','177','126','171','183','196','228','178','180','196','203','203','196','177','204','182','184','155','182','253','171','109','176','145','203','77','150','120','175','205','未公布','173','2017-05-13 05:00:03'),(92,'2017-05-13 05:00:00','113','181','115','204','176','128','174','185','199','230','179','179','202','204','201','197','183','210','185','188','159','187','260','170','109','177','148','211','79','160','122','182','205','未公布','174','2017-05-13 06:00:03'),(93,'2017-05-13 06:00:00','113','182','119','202','176','126','181','183','204','234','183','183',NULL,'207','201','196','182','216','187','189','159','185','258','174','111','180','147','210','81','167','121','182','207','未公布','178','2017-05-13 07:00:03'),(94,'2017-05-13 07:00:00','110','179','118','199','172','123','182','178','194','230','182','183','204','203','199','189','182','213','184','186','156','184','252','172','183','176','144','209','81','163','126','182','207','未公布','175','2017-05-13 08:00:03'),(95,'2017-05-13 08:00:00','113','174','115','193','170','121','180','171','190','226','178','178','199','199','195','178','184','207','179','186','153','181','247','169','185','174','141','206','79','163','127','177','203','未公布','174','2017-05-13 09:00:03'),(96,'2017-05-13 09:00:00','111','166','111','186','164','120','176','164','191','218','172','172','194','192','188','176','183','198','172','180','146','176','231','164','182','168','137','200','77','158','131','169','197','未公布','170','2017-05-13 10:00:03'),(97,'2017-05-13 10:00:00','109','157','105','178','157','119','169','156','194','207','164','164','185','183','180','174','179','207','169','172','142','168','217','159','177','160','133','190','74','155','141','154','186','未公布','164','2017-05-13 11:00:03'),(98,'2017-05-13 11:00:00','105','148','98','169','146','118','161','147','191','196','155','154','176','173','169','172','172','228','160','163','137','158','204','153','171','151','130','179','72','157','145','144','176','未公布','155','2017-05-13 12:00:03'),(99,'2017-05-13 12:00:00','103','139','92','166','137','117','154','136','179','184','147','144','166','163','160','171','162','217','152','155','138','149','196','145','165','142','126','168','71','154','146','144','165','未公布','146','2017-05-13 13:00:03'),(100,'2017-05-13 13:00:00','100','129','86','154','129','116','146','127','164','173','138','135','162','153','153','160','152','206','142','146','139','140','183','136','160','132','121','157','68','147','143','133','155','未公布','141','2017-05-13 14:00:03'),(101,'2017-05-13 14:00:00','92','125','80','143','121','111','137','123','153','161','130','125','151','142','141','154','140','195','133','137','127','132','164','128','155','122','114','147','66','139','138','127','144','未公布','128','2017-05-13 15:00:04'),(102,'2017-05-13 15:00:00','87','120','76','133','113','105','127','113','154','150','122','115','142','132','130','142','128','185','123','129','117','128','152','120','156','114','106','138','64','134','132','115','133','未公布','117','2017-05-13 16:00:03'),(103,'2017-05-13 16:00:00','79','117','72','123','105','98','118','105','146','140','115','105','135','122','122','131','118','177','113','121','109','120','143','112','150','105','97','129',NULL,'119','124','113','123','未公布','109','2017-05-13 17:00:03'),(104,'2017-05-13 17:00:00','71','109','68','114','98','92','109','97','136','135','108','97','127','114','113','126','109','171','104','114','101','112','134','106','145','98','90','121','59','104','115','109','114','未公布','103','2017-05-13 18:00:03'),(105,'2017-05-13 18:00:00','65','102','65','106','92','84','101','90','130','130','101','88','121','105','107','121','101','165','96','107','94','105','128','99','140','92','82','113','54','92','110','112','108','未公布','97','2017-05-13 19:00:03'),(106,'2017-05-13 19:00:00','59','95','63','96','85','80','92','84','121','121','94','80','113','98','96','111','96','160','87','99','87','102','121','93','135','87','75','107','51','76','105','101','101','未公布','92','2017-05-13 20:00:03'),(107,'2017-05-13 20:00:00','53','91','61','90','80','78','89','76','117','113','88','74','105','91','90','107','86','152','78','93','80','95','114','87','131','79','73','100','49','70','104','96','95','未公布','89','2017-05-13 21:00:04'),(108,'2017-05-13 21:00:00','49','87','60','87','75','77','86','74','114','107','82','72','100','84','88','109','79','147','73','88','77','90','110','81','128','73','72','97','49','65','102','83','90','未公布','86','2017-05-13 22:00:03'),(109,'2017-05-14 00:00:00','46','74','55','80','75','68','80','72','116','104','77','74','95','83','87','103','72','140','66','78','68','80','99','76','127','63','63','99','47','60','98','76','81','未公布','77','2017-05-14 01:00:03'),(110,'2017-05-14 01:00:00','43','72','56','74','74','65','78','66','116','103','77','72','88','82','84','90','69','139','63','77','65','78','97','74','126','62','59','100','45','60','96','76','79','未公布','78','2017-05-14 02:00:03'),(111,'2017-05-14 02:00:00','42','69','55','66','70','58','79','62','110','96','74','71','80','79','82','85','63','137','58','74','62','76','93','70','124','58','55','100','43','59','92','69','77','未公布','80','2017-05-14 03:00:03'),(112,'2017-05-14 02:00:00','42','69','55','66','70','58','79','62','110','96','74','71','80','79','82','85','63','137','58','74','62','76','93','70','124','58','55','100','43','59','92','69','77','未公布','80','2017-05-14 04:00:03'),(113,'2017-05-14 05:00:00','34','50','48','44','59','47',NULL,'39','94','71','60','62','51','60','72','53','47','125','39','59','49','61','69','56','113','40','41','79','34','47','83','54','62','未公布','73','2017-05-14 06:00:02'),(114,'2017-05-14 06:00:00','30','46','41','39','55','46',NULL,'35','78','61','51','52','39','51','66','43','45','117','33','52','46','56','65',NULL,'58','31','39','77','31','42','82','48','54','未公布','66','2017-05-14 07:00:02'),(115,'2017-05-14 07:00:00','30','43','40','35','56','47','49','35','78','61','47','46','37','48','64','39','43','116','33','49','42','51','62','45','34','29','39','75','31',NULL,'78','47','48','未公布','63','2017-05-14 08:00:03'),(116,'2017-05-14 08:00:00','24','41','40','34','53','46','46','34','75','57','45','44','35','45','63','41','38','115','32','43','41','48','59','41','29','25','39','71','30','39','76','45','46','未公布','61','2017-05-14 09:00:03'),(117,'2017-05-14 09:00:00','22','40','40','33','53','44','43','32','75','55','43','42','33','43','60','41','35','115','31','40','40','45','59','41','28','22','38','70','30','38','70','43','43','未公布','59','2017-05-14 10:00:03'),(118,'2017-05-14 10:00:00','21','39','41','32','51','42','42','32','72','54','42','41','33','42','58','41','35','94','31','39','40','45','60','38','29','21','36','68','29','37','60','43','42','未公布','57','2017-05-14 11:00:03'),(119,'2017-05-14 11:00:00','21','39','41','33','51','42','40','32','63','53','41','40','34','41','58','41','34','69','31','38','39','43','60','38','29','21','34','68','27','37','55','41','41','未公布','56','2017-05-14 12:00:03'),(120,'2017-05-14 12:00:00','20','38','40','33','50','42','39','33','62','51','39','39','34','40','57','41','34','69','32','37','39','42','60','36','30','22','32','67','27','36','53','39','41','未公布','56','2017-05-14 13:00:03'),(121,'2017-05-14 13:00:00','19','38','41','34','49','42','39','32','67','51','40','38','34','40','56','38','34','71','32','36','38','43','60','37','31','21','31','66','27','37','53','38','41','未公布','55','2017-05-14 14:00:03'),(122,'2017-05-14 14:00:00','19','38','40','35','49','43','38','31','68','50','40','38','35','40','57','37','35','72','32','36',NULL,'44','61','38','32','22','31','67','26','39','54','42','41','未公布','54','2017-05-14 15:00:02'),(123,'2017-05-14 15:00:00','19','38','41','35','49','43','39','32','59','49','39','37','35','39','58','38','36','73','33','36','39','42','62','37','32','22','30','67','26','39','54','40','41','17','54','2017-05-14 16:00:07'),(124,'2017-05-14 16:00:00',NULL,'38','40','35','49','42','39','31','56','49','40','36','36','38','58','35','36','74','34','36','38','44','64','38','32','21','29','67','26','41','55','40','41','17','55','2017-05-14 17:00:03'),(125,'2017-05-14 17:00:00','23','41','40','34','50','42','41','31','65','48',NULL,'40','36','39','62','32','38','74','33','35','41','46','68','39','33','20','29','69','25','44','55','41','43','47','55','2017-05-14 18:00:03'),(126,'2017-05-14 18:00:00','26','43','40','33','52','42','47','30','69','48',NULL,'44','36','41','65','34','40','75','32','37','44','49','69','42','35','20','29','71','25','43','56','42','44','69','56','2017-05-14 19:00:03'),(127,'2017-05-14 19:00:00','29','44','40','32','53','41','51','29','80','48',NULL,'46','37','43','67','34','42','75','31','40','46','49','70','44','38','20','29','71','25','45','55','44','47','70','56','2017-05-14 20:00:03'),(128,'2017-05-14 20:00:00','29','45','40','31','54','41','55','30','86','50',NULL,'50','37','46','71','34','44','76','31','42','48','50','70','46','41','21','28','71','25','46','54','44','50','77','57','2017-05-14 21:00:04'),(129,'2017-05-14 21:00:00','30','45','40','31','53','40','55','30','86','52',NULL,'50','35','48','70','32','46','76','31','42','46','50','70','48','41','22','28','67','23','46','54','45','49','77','56','2017-05-14 21:48:27'),(130,'2017-05-14 21:00:00','30','45','40','31','53','40','55','30','86','52',NULL,'50','35','48','70','32','46','76','31','42','46','50','70','48','41','22','28','67','23','46','54','45','49','77','56','2017-05-14 21:53:56'),(131,'2017-05-14 21:00:00','30','45','40','31','53','40','55','30','86','52',NULL,'50','35','48','70','32','46','76','31','42','46','50','70','48','41','22','28','67','23','46','54','45','49','77','56','2017-05-14 21:54:30'),(132,'2017-05-14 21:00:00','30','45','40','31','53','40','55','30','86','52',NULL,'50','35','48','70','32','46','76','31','42','46','50','70','48','41','22','28','67','23','46','54','45','49','77','56','2017-05-14 21:55:00'),(133,'2017-05-14 21:00:00','30','45','40','31','53','40','55','30','86','52',NULL,'50','35','48','70','32','46','76','31','42','46','50','70','48','41','22','28','67','23','46','54','45','49','77','56','2017-05-14 21:56:46'),(134,'2017-05-14 21:00:00','30','45','40','31','53','40','55','30','86','52',NULL,'50','35','48','70','32','46','76','31','42','46','50','70','48','41','22','28','67','23','46','54','45','49','77','56','2017-05-14 22:00:03'),(135,'2017-05-14 22:00:00','32','46','41','30','55','40','55','29','86','52',NULL,'46','32','47','68','32','48','77','32','42','44','49','74','46','40','21','27','65','24','46','58','44','47','77','55','2017-05-14 23:00:03'),(136,'2017-05-14 23:00:00','32','46','42','30','55','40','56','28','85','49','40','47','31','45','67','33','48','77','31','42','41','48','73','46','39','20','27','62','23','46','58','46','48','85','53','2017-05-15 00:00:03'),(137,'2017-05-15 00:00:00','30','45','42','29','54','40','54','28','80','47','40','46','31','45','66','31','48','75','29','42','41','47','73','44','39','20','26','60','23','44','57','45','49','85','51','2017-05-15 01:00:03'),(138,'2017-05-15 01:00:00','28','44','41','27','54','38','53','27','78','45','39','47','30','43','68','29','47','73','27','41','42','46','73','46','39','19','25','57','22','42','55','48','50','81','49','2017-05-15 02:00:03'),(139,'2017-05-15 02:00:00','28','43','40','25','54','39','49','26','78','43','37','46','30','41','67','27','46','71','24','39','41','45','71','45','40','17','24','56','21','42','55','48','49','79','47','2017-05-15 03:00:03'),(140,'2017-05-15 03:00:00','27','42','39','25','52','39','47','26','78','42','40','44','29','40','67','26','44','69','23','37','40','43','71','45','39','17','23','54','20','37','55','48','49','79','45','2017-05-15 04:00:03'),(141,'2017-05-15 04:00:00','25','41','37','25','49','37','47','26','74','42','40','45','29','39','66','26','42','68','23','37','39','43','70','45','40','17','22','52','18','36','53','45','50','120','43','2017-05-15 05:00:03'),(142,'2017-05-15 05:00:00','26','40','41','26','48','37',NULL,'26','76','46','39','46','29','39','65','26','42','67','23','37','38','44','69','45','40','20','21','51','18','34','52','46','54','113','41','2017-05-15 06:00:03'),(143,'2017-05-15 06:00:00','25','41','43','27','51','36',NULL,'26','78','49','47','54','32','44','71','26','41','65','23','40','38','45','72','47','46','22','22','53','17','32','51','50','61','116','40','2017-05-15 07:00:03'),(144,'2017-05-15 07:00:00','26','45','44','28','54','35','61','28','78','55','55','61','33','51','74','26','43','65','23','46','41','52','76','51','53','24','22','56','18','29','52','53','69','119','42','2017-05-15 08:00:03'),(145,'2017-05-15 08:00:00','28','49','46','29','59','36','65','31','77','60','62','66','36','56','80','26','47','67','24','52','45','58','81','56','55','27','24','62','20','29','50','56','73','119','45','2017-05-15 09:00:03'),(146,'2017-05-15 09:00:00','30','53','49','30','62','36','70','35','77','64','68','70','39','63','87','28','50','71','25','57','50','63','80','62','56','31','26','65','20','33','48','60','80','119','49','2017-05-15 09:57:39'),(147,'2017-05-15 09:00:00','30','53','49','30','62','36','70','35','77','64','68','70','39','63','87','28','50','71','25','57','50','63','80','62','56','31','26','65','20','33','48','60','80','119','49','2017-05-15 10:00:03'),(148,'2017-05-15 10:00:00','33','56','51','32','66','36','74','38','80','68','74','74','42','67','92','28','53','74','27','60','53','67','84','66','57','34','28','69','23','37','49','61','84','118','53','2017-05-15 10:33:28'),(149,'2017-05-15 10:00:00','33','56','51','32','66','36','74','38','80','68','74','74','42','67','92','28','53','74','27','60','53','67','84','66','57','34','28','69','23','37','49','61','84','118','53','2017-05-15 10:34:21'),(150,'2017-05-15 10:00:00','33','56','51','32','66','36','74','38','80','68','74','74','42','67','92','28','53','74','27','60','53','67','84','66','57','34','28','69','23','37','49','61','84','118','53','2017-05-15 11:00:04'),(151,'2017-05-15 11:00:00','34','59','53','31','67','36','75','39','85','71','78','78','44','69','95','30','57','78','26','63','56','72','87','68','57','36','30','72','24','37','48','62','87','116','55','2017-05-15 12:00:03'),(152,'2017-05-15 12:00:00','36','61','55','31','69','35','75','40','82','73','82','80','46','71','95','30','60','80','26','63','59','76','89','71','57','37','31','75','24','37','47','65','86','112','57','2017-05-15 13:00:03'),(153,'2017-05-15 13:00:00','36','63','55','30','70','34','74','41','82','72','81','81','45','70',NULL,'31','62','80','27','65','62','75','90','69','55','39','32','77','27','37','46','66','85','114','58','2017-05-15 14:00:03'),(154,'2017-05-15 14:00:00','37','64','57','30','73','33','75','43','82','73','78','80','44','68','94','31','63','82','27','66','62','73','91','68','55','38','33','78','28','37','46','61','87','115','59','2017-05-15 15:00:05'),(155,'2017-05-15 15:00:00','38','65','58','30','73','33','73','42',NULL,'74','79','81','43','69','93','31','64','82','27','66','63','74','92','68','53','38','34','79','27','36','46','63','87','112','60','2017-05-15 16:00:02'),(156,'2017-05-15 16:00:00','39','65','59','30','74','34','72','43','84','75','80','83','42','71','94','32','66','82','27','67','66','72','92','68','52','38','36','79','27','36','46','66','90','109','60','2017-05-15 16:55:48'),(157,'2017-05-15 16:00:00','39','65','59','30','74','34','72','43','84','75','80','83','42','71','94','32','66','82','27','67','66','72','92','68','52','38','36','79','27','36','46','66','90','109','60','2017-05-15 16:56:14'),(158,'2017-05-15 16:00:00','39','65','59','30','74','34','72','43','84','75','80','83','42','71','94','32','66','82','27','67','66','72','92','68','52','38','36','79','27','36','46','66','90','109','60','2017-05-15 17:00:02'),(159,'2017-05-15 17:00:00','37','65','60','30','74','35','73','44','77','77','78','81','41','73','93','34','67','82','28','69','65','72','90','68','52','39','37','79','28','39','49','66','91','108','63','2017-05-15 18:00:04'),(160,'2017-05-15 18:00:00','36','65','61','31','74','36','71','45','72','77',NULL,'79','43','73','91','33','67','81','29','68','66','70','90','68','52','41','39','78','30','42','50','67','90','104','63','2017-05-15 19:00:03'),(161,'2017-05-15 19:00:00','35','64','61','32','74','39','69','45','66','77',NULL,NULL,'44','73','91','34','67','81','30','68','65','70','88','68','52','42','41','78','31','45','53','66','90','104','62','2017-05-15 20:00:03'),(162,'2017-05-15 20:00:00','35','63','60','35','74','42','68','45','67','77','77','78','45','75','90','36','66','82','32','67','64','71','88','68','50','43','43','77','32','46','56','66','89','102','62','2017-05-15 20:57:18'),(163,'2017-05-15 20:00:00','35','63','60','35','74','42','68','45','67','77','77','78','45','75','90','36','66','82','32','67','64','71','88','68','50','43','43','77','32','46','56','66','89','102','62','2017-05-15 21:00:04'),(164,'2017-05-15 20:00:00','35','63','60','35','74','42','68','45','67','77','77','78','45','75','90','36','66','82','32','67','64','71','88','68','50','43','43','77','32','46','56','66','89','102','62','2017-05-15 21:08:51'),(165,'2017-05-15 20:00:00','35','63','60','35','74','42','68','45','67','77','77','78','45','75','90','36','66','82','32','67','64','71','88','68','50','43','43','77','32','46','56','66','89','102','62','2017-05-15 21:08:57'),(166,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 21:16:46'),(167,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 21:24:58'),(168,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 21:27:18'),(169,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 21:29:10'),(170,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 21:31:36'),(171,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 21:45:33'),(172,'2017-05-15 21:00:00','36','64','61','36','74','45','69','46','70','76','76','79','45','80','89','37','66','82','34','69','65','71','88','66','51','43','44','77','33','45','57','69','90','103','63','2017-05-15 22:00:04'),(173,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 22:35:24'),(174,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 22:35:30'),(175,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 22:37:44'),(176,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 22:40:39'),(177,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 22:41:25'),(178,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 22:44:47'),(179,'2017-05-15 22:00:00','37','65','61','38','71','46','71','48','70','77','75','83','46','81','90','39','66','81','36','70','69','72','86','68','52','45','46','77','33','48','55','70','91','102','63','2017-05-15 23:00:04'),(180,'2017-05-15 23:00:00','39','67','59','39','70','46','71','50','68','79','74',NULL,'48','82','89','37','68','81','39','72','72','73','86','69','52','46','47','79','35','49','51','69','91','98','64','2017-05-16 00:00:02'),(181,'2017-05-16 00:00:00','40','70','59','41','69','46','72','51','66','81','74','79','48','82','89','40','71','82','41','75','74','76','87','71','52','47','48','81','36','50','59','74','92','97','65','2017-05-16 01:00:03'),(182,'2017-05-16 01:00:00','42','72','60','43','69','47','74','52','65','83','75','81','50','85','89','42','74','84','45','77','74','78','90','70','52','49','49','84','37','52','60','70','92','98','66','2017-05-16 02:00:03'),(183,'2017-05-16 02:00:00','42','75','62','47','69','47','78','54','64','86','77','84','49','87','92','46','77','86','46','79','76','80','93','70','52','50','50','86','38','51','61','70','94','99','68','2017-05-16 03:00:03'),(184,'2017-05-16 04:00:00','46','77','62','51','74','49','83','58','71','91','77','86','51','93','94','53','81','90','51','85','79','82','96','73','54','52','53','91','39','55','62','70','95','79','71','2017-05-16 05:00:03'),(185,'2017-05-16 05:00:00','46','79','59','53','75','51',NULL,'60','72','89','80','87','52','95','98','52','82','92','53','88','82','84','99','76','56','51','54','91','40','55','62','68','95','83','72','2017-05-16 06:00:02'),(186,'2017-05-16 06:00:00','46','79','57','56','73','53',NULL,'61','73','85','77','85','52','94','95','53','83','94','54','88','83','86','101','78','55','50','54','90','41','54','64','67','100','82','74','2017-05-16 07:00:02'),(187,'2017-05-16 07:00:00','46','78','56','57','71','56','79','62','72','81','73','83','54','92','94','54','82','96','56','86','84','85','100','75','54','51','56','87','42','55','65','65','97','80','72','2017-05-16 08:00:03'),(188,'2017-05-16 08:00:00','46','77','56','59','71','60','79','63','75','80','71','82','56','92','93','57','81','95','57','84','83','84','98','74','54','51','56','86','40','57','67','66','96','79','70','2017-05-16 09:00:03'),(189,'2017-05-16 09:00:00','49','76','55','60','70','61','78','63','77','79','69','81','57','91','93','58','80','95','59','83','81','82','103','72','53','51','57','86','40','55','71','66','94','79','69','2017-05-16 10:00:05'),(190,'2017-05-16 10:00:00','49','76','55','63','69','63','78','63','82','80','69','80','58','92','93','59','80','95','61','83','81','82','102','71','53','52','58','87','41','55','72','69','94','78','70','2017-05-16 11:00:02'),(191,'2017-05-16 11:00:00','50','75','55','66','68','65','80','64','81','80','69','80','59','93','94','58','80','94','64','83','82','81','103','72','53','54','59','88','41','58','74','67','96','80','72','2017-05-16 12:00:02'),(192,'2017-05-16 12:00:00','49','76','54','70','70','67','80','65','83','83','69','81','61','94','95','58','81','95','68','84','82','82','104','72','53','55','60','89','43','59','77','76','98','83','73','2017-05-16 13:00:03'),(193,'2017-05-16 13:00:00','51','78','54','73','72','68','83','67','83','84','70','83','64',NULL,'97','61','80','97','71','86','83','83','108','75','54','58','62','91','42','60','77','79','99','83','74','2017-05-16 14:00:03'),(194,'2017-05-16 15:00:00','54','81','54','80','73','70','88','70','86','88','73','87','68','101','100','64','84','100','77','90','87','84','111','80','56','63','64','93','45','66','82','83','104','85','78','2017-05-16 15:38:35'),(195,'2017-05-16 15:00:00','54','81','54','80','73','70','88','70','86','88','73','87','68','101','100','64','84','100','77','90','87','84','111','80','56','63','64','93','45','66','82','83','104','85','78','2017-05-16 15:39:45'),(196,'2017-05-16 15:00:00','54','81','54','80','73','70','88','70','86','88','73','87','68','101','100','64','84','100','77','90','87','84','111','80','56','63','64','93','45','66','82','83','104','85','78','2017-05-16 15:42:42'),(197,'2017-05-16 15:00:00','54','81','54','80','73','70','88','70','86','88','73','87','68','101','100','64','84','100','77','90','87','84','111','80','56','63','64','93','45','66','82','83','104','85','78','2017-05-16 15:43:26'),(198,'2017-05-16 15:00:00','54','81','54','80','73','70','88','70','86','88','73','87','68','101','100','64','84','100','77','90','87','84','111','80','56','63','64','93','45','66','82','83','104','85','78','2017-05-16 16:00:04'),(199,'2017-05-16 15:00:00','54','81','54','80','73','70','88','70','86','88','73','87','68','101','100','64','84','100','77','90','87','84','111','80','56','63','64','93','45','66','82','83','104','85','78','2017-05-16 16:07:41'),(200,'2017-05-16 16:00:00','54','83','56','83','73','72','89','72','86','90',NULL,'89','70','101','101','65','85','101','79','90','89','85','114','82','57','65','66','95','45','67','84','83','103','88','79','2017-05-16 16:23:33'),(201,'2017-05-16 16:00:00','54','83','56','83','73','72','89','72','86','90',NULL,'89','70','101','101','65','85','101','79','90','89','85','114','82','57','65','66','95','45','67','84','83','103','88','79','2017-05-16 16:24:30'),(202,'2017-05-16 16:00:00','54','83','56','83','73','72','89','72','86','90',NULL,'89','70','101','101','65','85','101','79','90','89','85','114','82','57','65','66','95','45','67','84','83','103','88','79','2017-05-16 16:27:10'),(203,'2017-05-16 16:00:00','54','83','56','83','73','72','89','72','86','90',NULL,'89','70','101','101','65','85','101','79','90','89','85','114','82','57','65','66','95','45','67','84','83','103','88','79','2017-05-16 17:00:03');
/*!40000 ALTER TABLE `Website_pm10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_pm25`
--

DROP TABLE IF EXISTS `Website_pm25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_pm25` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shunYi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouXiGong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongDingMenNei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yuFa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_pm25`
--

LOCK TABLES `Website_pm25` WRITE;
/*!40000 ALTER TABLE `Website_pm25` DISABLE KEYS */;
INSERT INTO `Website_pm25` VALUES (45,'2017-05-11 17:00:00','17','29','47','23','43','30','42','30','45','37','34','30','30','37','40','18','27','35','21','32','35','33','35','36','45','32','14','36','27','30','23','38','34','36','47','2017-05-11 18:00:03'),(46,'2017-05-11 18:00:00','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','2017-05-11 18:41:25'),(47,'2017-05-11 18:00:00','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','未公布','2017-05-11 19:00:03'),(48,'2017-05-11 19:00:00','16','27','46','24','42','30','39','29','44','36','33','29','31','36','39','21','25','34','21','28','32','31','34','35','44','32','14','36','27','30','24','37','33','35','44','2017-05-11 20:00:03'),(49,'2017-05-11 20:00:00','16','26','45','24','41','31','38','29','42','35','33','28','32','35','37','22','24','34','21','26','30','30','34','34','43','32','14','35','27','28','24','36','32','34','44','2017-05-11 21:00:03'),(50,'2017-05-11 21:00:00','15','25','45','25','41','31','36','28','40','34','32','28','32','35','36','24','23','33','22','24','28','29','33','33','42','32','14','35','26','27','24','35','32','33','44','2017-05-11 22:00:03'),(51,'2017-05-11 22:00:00','15','24','44','25','40','31','35','28','39','34','32','27','32','34','35','25','22','32','22','22','26','28','32','32','41','32','15','34','27','26','24','34','31','33','43','2017-05-11 23:00:05'),(52,'2017-05-11 23:00:00','15','23','44','26','40','32','35','28','39','34','32','26','34','34','34','25','21','31','23','20','25','27','31','32','41','32','15','33','27','26','25','34','30','32','42','2017-05-12 00:00:02'),(53,'2017-05-12 00:00:00','15','22','44','27','40','32','33','30','38','34','32','27','35','34','33','27','21','30','24','19','25','26','31','32','40','32','15','32','28','27','25','34','30','31','41','2017-05-12 01:00:02'),(54,'2017-05-12 01:00:00','16','22','44','29','39','31','33','31','38','33','31','26','37','34','32','29','21','29','25','18','25','26','31','31','40','32','16','32','29','27','26','34','29','31','41','2017-05-12 02:00:02'),(55,'2017-05-12 02:00:00','16','22','43','31','39','32','32','31','37','33','31','25','38','33','32','30','22','28','26','17','26','26','31','31','40','32','17','31','29','27','26','34','28','30','41','2017-05-12 03:00:02'),(56,'2017-05-12 03:00:00','17','23','43','32','39','32','32','32','37','34','31','25','39','34','32','31','22','27','27','17','26','28','32','30','39','32','17','32','30','26','26','33','28','29','41','2017-05-12 04:00:03'),(57,'2017-05-12 04:00:00','18','23','43','34','39','33','33','32','38','34','31','24','40','34','32','32','22','26','28','19','26','28','33','30','40','32','18','32','31','26','26','34','28','29','42','2017-05-12 05:00:03'),(58,'2017-05-12 05:00:00','18','23','42','35','40','33','33','32','39','35','32','24','41','35','32','34','22','25','29','20','26','29','34','30','40','32','19','33','32','27','27','34','29','29','42','2017-05-12 06:00:03'),(59,'2017-05-12 05:00:00','18','23','42','35','40','33','33','32','39','35','32','24','41','35','32','34','22','25','29','20','26','29','34','30','40','32','19','33','32','27','27','34','29','29','42','2017-05-12 07:00:02'),(60,'2017-05-12 07:00:00','19','25','45','38','40','33','33','34','40','35','32','25','42','36','32','37','22','23','31','23','26','30','35','30','41','32','19','34','34','27','26','38','29','29','40','2017-05-12 08:00:02'),(61,'2017-05-12 08:00:00','20','26','45','40','40','33','34','35','41','35','33','25','43','37','32','41','23','22','32','25','26','30','36','30','42','33','20','34','34','27','25','39','30','29','42','2017-05-12 09:00:02'),(62,'2017-05-12 09:00:00','20','27','44','41','40','32','35','36','42','35','34','26','43','38','33','44','23','22','34','27',NULL,'32','37','31','42','33','20','35','36','28','24','39','31','30','42','2017-05-12 10:00:02'),(63,'2017-05-12 10:00:00','20','27','45','43','41','32','35','37','41','36','34','27','44','39','34','46','23','23','36','28',NULL,'33','38','31','43','33','20','36','36','29','22','38','32','31','46','2017-05-12 11:00:02'),(64,'2017-05-12 11:00:00','20','27','47','44','43','32','34','38','41','37','35','26','45','38','34','47','23','24','37','29',NULL,'33','39','32','42','33','20','36','35','28','20','36','32','31','50','2017-05-12 12:00:05'),(65,'2017-05-12 12:00:00','19','27','48','45','44','29','33','39','42','38','34','25','47','38','33','49','23','24','38','29','24','33','39','31','41','35','20','37','34','27','18','34','32','35','51','2017-05-12 13:00:03'),(66,'2017-05-12 13:00:00','19','27','49','46','45','29','32','40','40','38','34','26','48','38','33','51','23','23','38','29','24','32','39','32','41','36','19','37','33','27','17','33','33','38','50','2017-05-12 14:00:03'),(67,'2017-05-12 14:00:00','20','26','51','47','45','27','32','41','38','38','34','26','50','39','35','53','23','24','39','30','26','32','40','32','41','37','20','37','34','27','17','32','33','40','50','2017-05-12 15:00:03'),(68,'2017-05-12 15:00:00','21','27','52','48','45','28','33','42','38','39','35','27','51','40','36','55','24','25','40','31','28','33','41','33','42','37','21','38','35','29','17','32','34','42','50','2017-05-12 16:00:03'),(69,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:00:03'),(70,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:01:35'),(71,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:02:48'),(72,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:05:43'),(73,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:06:10'),(74,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:13:12'),(75,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:15:54'),(76,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:17:05'),(77,'2017-05-12 16:00:00','22','26','53','50','46','29','34','44','39','40','37','28','52','42','39','57','26','26','42','32','30','34','42','34','43','38','22','39','36','30','18','33','35','43','50','2017-05-12 17:19:57'),(78,'2017-05-12 17:00:00','24','34','53','51','47','30','35','46','40','42','38','30','54','43','42','59','28','26','43','35','33','35','43','35','45','39','23','40','37','31','19','34','37','45','50','2017-05-12 17:20:59'),(79,'2017-05-12 17:00:00','24','34','53','51','47','30','35','46','40','42','38','30','54','43','42','59','28','26','43','35','33','35','43','35','45','39','23','40','37','31','19','34','37','45','50','2017-05-12 17:21:40'),(80,'2017-05-12 17:00:00','24','34','53','51','47','30','35','46','40','42','38','30','54','43','42','59','28','26','43','35','33','35','43','35','45','39','23','40','37','31','19','34','37','45','50','2017-05-12 17:22:40'),(81,'2017-05-12 17:00:00','24','34','53','51','47','30','35','46','40','42','38','30','54','43','42','59','28','26','43','35','33','35','43','35','45','39','23','40','37','31','19','34','37','45','50','2017-05-12 18:00:03'),(82,'2017-05-12 18:00:00','25','36','54','53','49','31','36','48','40','43','40','31','55','44','44','60','30','27','45','37','37','36','45','37','46','40','24','42','39','34','20','36','38','47','51','2017-05-12 19:00:03'),(83,'2017-05-12 19:00:00','26','37','57','54','50','32','38','50','42','44','41','33','57','45','45','60','31','28','47','38','40','37','46','38','48','41','26','43','41','35','21','36','40','47','52','2017-05-12 20:00:03'),(84,'2017-05-12 20:00:00','27','39','58','55','51','32','39','52','44','46','43','33',NULL,'46','47','60','33','29','48','40','42','39','47','42','49','42','26','44','42','37','22','38','41','49','52','2017-05-12 21:00:03'),(85,'2017-05-12 21:00:00','28','41','60','55','53','32','40','53','45','47','44','34','59','47','48','59','35','30','48','42','44','40','48','46','51','43','26','45','42','39','22','39','42','50','52','2017-05-12 22:00:03'),(86,'2017-05-12 22:00:00','29','42','61','54','54','31','40','52','45','47','45','35','59','47','49','58','36','32','48','44','46','41','49','46','52','43','25','46','42','39','22','40','43','51','54','2017-05-12 23:00:06'),(87,'2017-05-12 23:00:00','29','43','62','53','53','31','41','51','46','47','45','35','58','47','49','61','37','33','47','44','48','42','50','46','52','42','25','47','42','39','22','39','43','50','55','2017-05-13 00:00:02'),(88,'2017-05-13 00:00:00','29','44','62','52','52','32','41','48','46','46','45','34','57','46','49','61','37','34','47','44','48','41','51','45','51','42','25','46','42','39','23','38','42','50','55','2017-05-13 01:00:03'),(89,'2017-05-13 01:00:00','29','44','62','52','51','33','40','47','46','45','44','34','56','45','48','74','38','34','46','44','49','41','52','44','50','42','25','46','42','39','24','38','42','49','53','2017-05-13 02:00:03'),(90,'2017-05-13 02:00:00','29','45','62','52','51','33','40','48','46','45','44','34','57','44','48','74','39','35','47','44','50','41','52','44','50','41','26','45','42','41','25','37','42','49','52','2017-05-13 03:00:03'),(91,'2017-05-13 03:00:00','29','45','61','53','51','34','41','48','46','45','44','34','57',NULL,'47','76','40','35','48','44','51','40','52','43','50','41','26','45','42','42','27','36','42','48','51','2017-05-13 04:00:03'),(92,'2017-05-13 04:00:00','29','46','60','53','51','33','40','49','47','46','43','34','58','44','47','80','41','36','48','43','51','40','51','43','49','42','26','44','42','43','28','38','41','48','49','2017-05-13 05:00:03'),(93,'2017-05-13 05:00:00','29','46','59','53','50','33','40','50','46','46','42','34','58','44','46','81','42','37','48','43','52','39','51','43','49','42','26','44','42','44','28','42','41','48','49','2017-05-13 06:00:03'),(94,'2017-05-13 06:00:00','29','47','57','52','49','32','39','50','46','46','42','33',NULL,'43','45','81','42','37','47','43','52','38','51','43','48','42','25','44','41','44','28','43','41','48','49','2017-05-13 07:00:03'),(95,'2017-05-13 07:00:00','28','46','56','50','47','32','38','48','46','45','41','32','57','42','44','79','41','36','47','42','51','37','50','42','47','40','24','43','41','43','28','39','41','47','48','2017-05-13 08:00:03'),(96,'2017-05-13 08:00:00','27','45','54','49','46','31','37','47','44','44','40','31','56','41','43','75','41','36','45','40','50','35','49','41','47','39','24','42','40','42','28','38','40','46','43','2017-05-13 09:00:03'),(97,'2017-05-13 09:00:00','27','44','52','46','44','30','36','44','43','42','39','30','54','39','41','72','41','35','43','39','49','33','47','40','46','37','23','41','39','40','27','38','39','44','39','2017-05-13 10:00:03'),(98,'2017-05-13 10:00:00','26','43','49','44','42','30','35','43','41','40','37','29','52','37','40','70','40','34','41','38','47','32','45','38','44','36','22','40','37','39','27','37','38','43','33','2017-05-13 11:00:03'),(99,'2017-05-13 11:00:00','25','42','47','42','38','29','34','41','40','38','35','27','51','36','38','67','39','34','39','36','45','30','43','37','43','34','21','38','36','40','28','37','36','41','27','2017-05-13 12:00:03'),(100,'2017-05-13 12:00:00','27','40','44','41','35','28','33','39','39','36','33','26','49','33','37','65','38','34','37','34','44','29','42','35','41','32','20','36','34','40','27','36','35','36','26','2017-05-13 13:00:03'),(101,'2017-05-13 13:00:00','26','39','42','39','33','27','32','37','37','34','32','25','47','31','36','63','36','33','35','33','42','27','40','33','39','30','19','35','33','38','27','36','33','32','25','2017-05-13 14:00:03'),(102,'2017-05-13 14:00:00','25','38','39','37','31','26','30','35','35','33','31','24','45','29','33','61','34','30','34','31','39','26','38','32','37','28','18','33','31','36','26','35','31','29','24','2017-05-13 15:00:04'),(103,'2017-05-13 15:00:00','23','36','36','35','29','25','29','33','33','32','29','22','43','27','31','59','32','28','31','29','36','24','35','30','35','27','17','31','30','34','25','34','29','26','22','2017-05-13 16:00:02'),(104,'2017-05-13 16:00:00','21','31','35','33','26','24','27','31','31','31','27','20','41','25','27','58','29','28','30','27','34','23','33','29','33','25','16','29',NULL,'32','24','33','27','24','21','2017-05-13 17:00:02'),(105,'2017-05-13 17:00:00','19','29','33','31','24','23','26','29','29','30','25','19','39','23','25','57','28','26','28','25','32','21','32','27','31','24','14','27','26','30','22','32','25','21','20','2017-05-13 18:00:03'),(106,'2017-05-13 18:00:00','18','27','32','29','22','22','24','26','27','37','23','17','37','22','23','55','25','26','26','23','28','20','31','26','29','22','13','25','24','28','22','31','23','19','19','2017-05-13 19:00:02'),(107,'2017-05-13 19:00:00','16','25','30','27','20','20','23','24','25','37','21','15','35','20','22','55','24','25','23','22','25','18','30','24','26','21','12','24','22','26','19','30','21','18','17','2017-05-13 20:00:03'),(108,'2017-05-13 20:00:00','15','23','28','26','18','20','22','23','23','35','20','13','34','19','20','54','21','23','22','20','23','17','28','20','25','19','11','23','20','23','19','29','20','16','17','2017-05-13 21:00:04'),(109,'2017-05-13 21:00:00','13','22','27','24','16','20','21','21','22','34','18','12','32','18','19','53','20','22','20','19','21','15','27','16','23','18','11','22','20','22','18','28','18','15','16','2017-05-13 22:00:03'),(110,'2017-05-14 00:00:00','12','18','23','23','16','17','18','21','19','33','16','12','31','17','20','40','17','20','18','17','18','13','25','16','23','16','9','24','18','19','17','27','17','15','15','2017-05-14 01:00:03'),(111,'2017-05-14 01:00:00','12','18','23','22','17','15','18','20','19','34','16','12','30','17','20','35','16','20','17','17','17','13','24','16','23','16','8','24','17','18','16','27','17','14','15','2017-05-14 02:00:03'),(112,'2017-05-14 02:00:00','11','17','23','19','17','13','17','18','18','32','15','11','28','16','20','35','15','19','16','16','15','12','24','15','22','15','7','24','16','17','14','27','17','14','15','2017-05-14 03:00:03'),(113,'2017-05-14 02:00:00','11','17','23','19','17','13','17','18','18','32','15','11','28','16','20','35','15','19','16','16','15','12','24','15','22','15','7','24','16','17','14','27','17','14','15','2017-05-14 04:00:03'),(114,'2017-05-14 05:00:00','13','14','20','14','14','11',NULL,'12','15','25','14','10','21','13','18','27','11','17','11','13','11','9','20','12','19','10','6','21','13','13','12','19','14','11','14','2017-05-14 06:00:02'),(115,'2017-05-14 06:00:00','13','13','20','13','15','11',NULL,'11','14','25','13','10','20','12','19','25','11','16','10','12','11','9','20',NULL,'19','9','6','21','13','12','12','17','13','11','14','2017-05-14 07:00:02'),(116,'2017-05-14 07:00:00','13','12','20','13','15','11','13','11','14','25','12','9','19','11','19','25','11','17','10','11','11','9','19','11','18','8','6','21','13',NULL,'12','16','12','10','14','2017-05-14 08:00:03'),(117,'2017-05-14 08:00:00','13','12','20','12','16','11','13','11','14','25','12','10','18','11','20','24','11','17','10','11','10','9','19','11','18','8','6','21','13','14','12','16','12','10','15','2017-05-14 09:00:03'),(118,'2017-05-14 09:00:00','14','12','20','12','16','11','13','11','14','25','12','10','18','11','21','24','11','17','10','10','10','9','20','11','18','8','6','21','13','14','12','15','11','10','15','2017-05-14 10:00:03'),(119,'2017-05-14 10:00:00','14','12','20','12','16','11','12','10','14','25','12','10','17','11','21','23','11','17','10','10','10','9','20','10','18','8','6','21','13','14','12','15','11','11','15','2017-05-14 11:00:03'),(120,'2017-05-14 11:00:00','13','11','20','11','16','11','12','11','13','25','12','10','17','11','22','23','11','17','10','10','10','9','20','10','18','8','6','21','13','13','12','14','11','11','16','2017-05-14 12:00:03'),(121,'2017-05-14 12:00:00','12','12','19','11','17','11','12','11','13','24','12','10','16','11','22','23','11','17','10','10','10','9','20','10','18','8','6','21','13','13','12','13','10','11','16','2017-05-14 13:00:03'),(122,'2017-05-14 13:00:00','11','12','19','11','17','11','12','10','13','24','12','10','16','11','22','22','11','17','10','10','10','9','20','10','18','8','6','21','13','14','11','13','10','11','16','2017-05-14 14:00:03'),(123,'2017-05-14 14:00:00','11','12','19','11','17','12','12','10','12','24','13','10','16','11','23','23','11','18','10','10',NULL,'10','21','10','18','8','6','21','13','15','12','12','11','11','16','2017-05-14 15:00:02'),(124,'2017-05-14 15:00:00','11','12','19','11','17','12','12','10','12','23','13','11','15','11','23','22','12','18','10','10','10','9','21','10','18','8','6','22','12','15','11','11','11','11','17','2017-05-14 16:00:07'),(125,'2017-05-14 16:00:00',NULL,'12','18','10','18','11','12','9','12','22','12','11','15','11','24','21','12','18','10','9','11','10','22','10','19','8','6','22','12','16','12','11','11','12','17','2017-05-14 17:00:03'),(126,'2017-05-14 17:00:00','11','13','18','10','18','11','13','9','12','14',NULL,'11','15','11','26','20','12','19','10','10','11','10','22','11','19','8','6','22','12','17','12','11','11','12','18','2017-05-14 18:00:03'),(127,'2017-05-14 18:00:00','11','14','18','10','18','11','13','9','13','13',NULL,'11','15','11','28','19','13','19','10','10','12','11','21','11','19','8','6','23','12','17','12','10','11','23','18','2017-05-14 19:00:03'),(128,'2017-05-14 19:00:00','12','15','18','10','19','12','13','9','14','12',NULL,'12','15','12','30','18','14','19','10','11','13','12','21','12','20','8','6','23','13','18','12','10','12','25','19','2017-05-14 20:00:03'),(129,'2017-05-14 20:00:00','13','15','17','10','19','12','14','9','14','13',NULL,'13','14','13','31','18','14','20','10','11','14','11','21','12','20','8','6','23','12','18','12','10','12','26','19','2017-05-14 21:00:04'),(130,'2017-05-14 21:00:00','13','15','17','10','20','12','14','10','14','13',NULL,'13','14','13','32','18','15','20','10','12','14','15','22','13','20','8','6','22','13','19','12','11','13','27','19','2017-05-14 21:48:27'),(131,'2017-05-14 21:00:00','13','15','17','10','20','12','14','10','14','13',NULL,'13','14','13','32','18','15','20','10','12','14','15','22','13','20','8','6','22','13','19','12','11','13','27','19','2017-05-14 21:53:56'),(132,'2017-05-14 21:00:00','13','15','17','10','20','12','14','10','14','13',NULL,'13','14','13','32','18','15','20','10','12','14','15','22','13','20','8','6','22','13','19','12','11','13','27','19','2017-05-14 21:54:30'),(133,'2017-05-14 21:00:00','13','15','17','10','20','12','14','10','14','13',NULL,'13','14','13','32','18','15','20','10','12','14','15','22','13','20','8','6','22','13','19','12','11','13','27','19','2017-05-14 21:55:00'),(134,'2017-05-14 21:00:00','13','15','17','10','20','12','14','10','14','13',NULL,'13','14','13','32','18','15','20','10','12','14','15','22','13','20','8','6','22','13','19','12','11','13','27','19','2017-05-14 21:56:46'),(135,'2017-05-14 21:00:00','13','15','17','10','20','12','14','10','14','13',NULL,'13','14','13','32','18','15','20','10','12','14','15','22','13','20','8','6','22','13','19','12','11','13','27','19','2017-05-14 22:00:03'),(136,'2017-05-14 22:00:00','13','16','17','10','20','11','14','10','14','13',NULL,'12','14','13','32','17','15','20','11','12','14','15','21','12','20','9','6','21','12','19','12','10','13','27','19','2017-05-14 23:00:03'),(137,'2017-05-14 23:00:00','13','16','17','10','20','12','14','10','14','13','12','11','13','13','31','16','15','21','11','12','13','15','22','12','20','8','6','20','12','19','12','10','13','26','19','2017-05-15 00:00:03'),(138,'2017-05-15 00:00:00','13','16','17','9','20','12','14','9','13','12','12','12','13','13','31','16','15','21','10','12','13','15','23','12','20','7','5','19','11','19','12','10','13','26','19','2017-05-15 01:00:03'),(139,'2017-05-15 01:00:00','12','16','17','9','19','13','13','9','13','12','11','12','12','13','31','15','15','21','10','13','13','15','23','12','20','7','5','19','11','19','12','10','13','27','19','2017-05-15 02:00:03'),(140,'2017-05-15 02:00:00','11','16','17','9','18','13','13','9','13','11','11','11','12','13','31','12','15','21','10','13','13','15','23','12','21','7','5','19','11','19','12','10','13','27','18','2017-05-15 03:00:03'),(141,'2017-05-15 03:00:00','10','16','17','9','18','13','13','9','13','11','11','11','12','13','31','11','15','21','10','12','13','15','23','12','21','7','5','19','11','18','11','10','13','27','18','2017-05-15 04:00:03'),(142,'2017-05-15 04:00:00','9','15','17','9','18','13','14','9','13','11','11','12','12','13','31','10','15','21','10','12','13','15','23','12','21','7','5','18','11','18','11','10','13','28','18','2017-05-15 05:00:03'),(143,'2017-05-15 05:00:00','8','15','17','9','18','13',NULL,'10','12','12','11','12','12','13','30','10','14','21','10','13','13','15','23','12','22','8','5','18','11','18','11','11','13','29','17','2017-05-15 06:00:03'),(144,'2017-05-15 06:00:00','8','15','18','9','18','13',NULL,'10','12','12','12','12','13','13','30','10','14','21','10','13','13','16','23','13','22','8','5','18','11','18','11','12','14','30','17','2017-05-15 07:00:03'),(145,'2017-05-15 07:00:00','8','16','18','9','18','13','15','10','13','14','13','13','13','14','32','9','14','21','10','14','14','17','23','14','23','9','5','18','11','17','11','13','15','31','17','2017-05-15 08:00:03'),(146,'2017-05-15 08:00:00','9','16','19','9','19','13','16','11','14','16','15','14','14','16','34','9','15','21','10','15','15','17','24','15','24','10','5','19','11','17','11','14','16','32','17','2017-05-15 09:00:03'),(147,'2017-05-15 09:00:00','9','18','20','10','21','14','17','12','15','17','16','15','15','17','35','10','16','21','10','17','16','19','24','17','25','10','6','19','11','18','11','16','17','32','18','2017-05-15 09:57:39'),(148,'2017-05-15 09:00:00','9','18','20','10','21','14','17','12','15','17','16','15','15','17','35','10','16','21','10','17','16','19','24','17','25','10','6','19','11','18','11','16','17','32','18','2017-05-15 10:00:03'),(149,'2017-05-15 10:00:00','10','19','22','10','22','14','18','13','16','19','17','16','16','18','36','10','17','22','11','17','18','18','24','18','27','11','7','20','12','19','10','16','18','33','19','2017-05-15 10:33:28'),(150,'2017-05-15 10:00:00','10','19','22','10','22','14','18','13','16','19','17','16','16','18','36','10','17','22','11','17','18','18','24','18','27','11','7','20','12','19','10','16','18','33','19','2017-05-15 10:34:21'),(151,'2017-05-15 10:00:00','10','19','22','10','22','14','18','13','16','19','17','16','16','18','36','10','17','22','11','17','18','18','24','18','27','11','7','20','12','19','10','16','18','33','19','2017-05-15 11:00:04'),(152,'2017-05-15 11:00:00','11','21','24','10','22','14','19','13','17','20','18','17','18','19','37','11','17','22','10','18','19','25','25','19','28','12','7','21','14','19','10','17','19','35','19','2017-05-15 12:00:03'),(153,'2017-05-15 12:00:00','12','22','25','10','23','13','20','14','17','21','19','18','18','19','37','12','18','23','10','19','21','26','26','20','28','13','8','22','14','19','10','18','20','35','19','2017-05-15 13:00:03'),(154,'2017-05-15 13:00:00','13','23','27','10','24','13','20','14','18','22','19','18','19','20',NULL,'13','19','23','10','20','22','27','26','21','29','14','8','23','14','18','10','18','21','35','19','2017-05-15 14:00:03'),(155,'2017-05-15 14:00:00','13','24','29','10','25','13','21','15','19','23','20','18','19','20','37','13','20','24','10','20','22','27','26','21','29','14','8','23','14','18','10','18','21','35','19','2017-05-15 15:00:05'),(156,'2017-05-15 15:00:00','13','25','31','10','26','14','21','16',NULL,'24','20','18','19','20','38','14','21','24','10','21','23','28','27','22','29','14','8','24','14','19','11','19','21','32','20','2017-05-15 16:00:02'),(157,'2017-05-15 16:00:00','14','25','32','10','26','14','22','17','21','24','21','19','20','21','38','14','22','24','10','21','23','29','27','22','30','15','9','24','15','19','11','19','22','30','19','2017-05-15 16:55:48'),(158,'2017-05-15 16:00:00','14','25','32','10','26','14','22','17','21','24','21','19','20','21','38','14','22','24','10','21','23','29','27','22','30','15','9','24','15','19','11','19','22','30','19','2017-05-15 16:56:14'),(159,'2017-05-15 16:00:00','14','25','32','10','26','14','22','17','21','24','21','19','20','21','38','14','22','24','10','21','23','29','27','22','30','15','9','24','15','19','11','19','22','30','19','2017-05-15 17:00:02'),(160,'2017-05-15 17:00:00','14','25','32','10','27','13','22','17','21','25','21','20','20','21','37','14','22','24','10','22','23','29','27','22','30','15','9','24','15','19','10','20','23','29','19','2017-05-15 18:00:04'),(161,'2017-05-15 18:00:00','15','25','32','10','27','14','22','17','22','25',NULL,'20','20','21','35','15','22','24','11','22','23','29','26','23','30','15','10','24','16','20','11','20','23','29','19','2017-05-15 19:00:03'),(162,'2017-05-15 19:00:00','15','25','32','11','27','15','22','18','22','26',NULL,NULL,'21','22','34','15','22','24','11','22','23','29','26','23','30','16','11','24','17','20','12','20','23','29','18','2017-05-15 20:00:03'),(163,'2017-05-15 20:00:00','14','24','32','11','27','15','22','19','22','26','21','21','22','21','33','16','23','24','12','21','23','26','25','22','30','16','11','24','17','20','13','21','23','28','18','2017-05-15 20:57:18'),(164,'2017-05-15 20:00:00','14','24','32','11','27','15','22','19','22','26','21','21','22','21','33','16','23','24','12','21','23','26','25','22','30','16','11','24','17','20','13','21','23','28','18','2017-05-15 21:00:04'),(165,'2017-05-15 20:00:00','14','24','32','11','27','15','22','19','22','26','21','21','22','21','33','16','23','24','12','21','23','26','25','22','30','16','11','24','17','20','13','21','23','28','18','2017-05-15 21:08:51'),(166,'2017-05-15 20:00:00','14','24','32','11','27','15','22','19','22','26','21','21','22','21','33','16','23','24','12','21','23','26','25','22','30','16','11','24','17','20','13','21','23','28','18','2017-05-15 21:08:57'),(167,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 21:16:46'),(168,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 21:24:58'),(169,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 21:27:17'),(170,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 21:29:10'),(171,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 21:31:36'),(172,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 21:45:33'),(173,'2017-05-15 21:00:00','14','24','33','12','27','16','22','19','22','26','21','21','22','21','32','16','23','24','12','21','23','26','25','22','30','17','12','24','18','20','14','21','23','28','19','2017-05-15 22:00:04'),(174,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 22:35:24'),(175,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 22:35:30'),(176,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 22:37:44'),(177,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 22:40:39'),(178,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 22:41:24'),(179,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 22:44:47'),(180,'2017-05-15 22:00:00','14','25','33','12','27','17','23','19','22','26','22','21','23','21','32','17','23','23','13','21','24','26','25','22','30','17','13','24','18','20','15','22','23','28','19','2017-05-15 23:00:03'),(181,'2017-05-15 23:00:00','15','25','33','13','26','17','24','20','23','27','22',NULL,'24','21','33','18','24','22','14','22','25','28','24','22','30','17','13','24','19','20','15','22','23','28','18','2017-05-16 00:00:02'),(182,'2017-05-16 00:00:00','17','26','32','14','26','17','24','21','23','28','22','21','25','21','33','19','25','23','15','23','26','29','24','23','30','17','14','24','20','21','16','23','23','28','18','2017-05-16 01:00:03'),(183,'2017-05-16 01:00:00','17','27','33','15','26','17','25','22','24','29','23','22','25','22','33','19','26','23','16','23','27','30','24','23','30','18','15','25','20','22','17','24','24','29','19','2017-05-16 02:00:03'),(184,'2017-05-16 02:00:00','18','28','33','16','27','17','26','23','25','30','24','22','26','23','34','20','27','24','17','24','28','31','24','24','31','18','15','26','21','22','17','25','25','30','20','2017-05-16 03:00:03'),(185,'2017-05-16 04:00:00','20','30','35','18','28','18','26','24','27','32','25','24','27','25','36','21','29','24','18','26','30','33','27','25','32','20','16','27','23','24','18','26','27','31','22','2017-05-16 05:00:02'),(186,'2017-05-16 05:00:00','21','32','35','19','29','18',NULL,'25','28','33','26','25','27','26','37','21','30','25','19','27','31','35','28','26','33','19','17','28','23','24','18','27','28','32','23','2017-05-16 06:00:02'),(187,'2017-05-16 06:00:00','22','33','35','20','30','19',NULL,'26','29','33','27','26','28','26','38','22','30','26','20','28','33','37','29','26','34','19','17','29','24','25','19','27','28','32','24','2017-05-16 07:00:02'),(188,'2017-05-16 07:00:00','22','34','35','21','30','19','38','27','30','33','27','27','28','26','37','22','31','26','20','28','33','38','30','29','34','20','18','29','24','27','20','27','29','33','24','2017-05-16 08:00:03'),(189,'2017-05-16 08:00:00','22','34','36','21','30','20','38','29','30','33','27','27','29','26','37','24','31','27','21','28','34','39','32','30','34','21','18','30','24','27','20','27','30','33','26','2017-05-16 09:00:03'),(190,'2017-05-16 09:00:00','22','35','37','23','31','21','40','30','31','33','28','27','30','27','37','24','30','28','22','29','34','39','33','31','34','21','18','30','25','28','21','28','30','34','27','2017-05-16 10:00:05'),(191,'2017-05-16 10:00:00','22','36','37','24','31','21','42','31','32','34','29','27','31','28','38','24','31','29','24','30','35','36','34','32','35','22','19','32','25','28','23','29','31','35','29','2017-05-16 11:00:02'),(192,'2017-05-16 11:00:00','22','36','38','26','32','22','45','33','34','34','30','28','32','29','38','25','31','29','25','31','35','36','35','34','36','23','19','33','26','29','24','31','31','36','30','2017-05-16 12:00:02'),(193,'2017-05-16 12:00:00','23','36','40','27','33','23','46','35','35','35','31','29','34','30','40','25','32','30','27','32','36','37','36','35','37','24','20','33','27','30','25','32','32','37','32','2017-05-16 13:00:03'),(194,'2017-05-16 13:00:00','24','38','40','29','34','24','48','36','36','36','33','31','36',NULL,'41','27','33','31','29','33','37','38','37','36','39','26','21','34','29','32','25','34','33','38','33','2017-05-16 14:00:03'),(195,'2017-05-16 15:00:00','25','39','40','34','36','24','54','40','37','37','34','33','39','33','42','28','34','32','33','37','39','39','39','39','41','28','23','36','32','34','25','37','35','38','35','2017-05-16 15:38:35'),(196,'2017-05-16 15:00:00','25','39','40','34','36','24','54','40','37','37','34','33','39','33','42','28','34','32','33','37','39','39','39','39','41','28','23','36','32','34','25','37','35','38','35','2017-05-16 15:39:44'),(197,'2017-05-16 15:00:00','25','39','40','34','36','24','54','40','37','37','34','33','39','33','42','28','34','32','33','37','39','39','39','39','41','28','23','36','32','34','25','37','35','38','35','2017-05-16 15:42:42'),(198,'2017-05-16 15:00:00','25','39','40','34','36','24','54','40','37','37','34','33','39','33','42','28','34','32','33','37','39','39','39','39','41','28','23','36','32','34','25','37','35','38','35','2017-05-16 15:43:26'),(199,'2017-05-16 15:00:00','25','39','40','34','36','24','54','40','37','37','34','33','39','33','42','28','34','32','33','37','39','39','39','39','41','28','23','36','32','34','25','37','35','38','35','2017-05-16 16:00:04'),(200,'2017-05-16 15:00:00','25','39','40','34','36','24','54','40','37','37','34','33','39','33','42','28','34','32','33','37','39','39','39','39','41','28','23','36','32','34','25','37','35','38','35','2017-05-16 16:07:41'),(201,'2017-05-16 16:00:00','25','40','41','35','36','25','56','41','38','39',NULL,'33','41','34','43','30','34','33','35','38','40','39','39','42','42','29','23','36','32','34','26','38','35','39','36','2017-05-16 16:23:33'),(202,'2017-05-16 16:00:00','25','40','41','35','36','25','56','41','38','39',NULL,'33','41','34','43','30','34','33','35','38','40','39','39','42','42','29','23','36','32','34','26','38','35','39','36','2017-05-16 16:24:29'),(203,'2017-05-16 16:00:00','25','40','41','35','36','25','56','41','38','39',NULL,'33','41','34','43','30','34','33','35','38','40','39','39','42','42','29','23','36','32','34','26','38','35','39','36','2017-05-16 16:27:10'),(204,'2017-05-16 16:00:00','25','40','41','35','36','25','56','41','38','39',NULL,'33','41','34','43','30','34','33','35','38','40','39','39','42','42','29','23','36','32','34','26','38','35','39','36','2017-05-16 17:00:03');
/*!40000 ALTER TABLE `Website_pm25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_pmexposure`
--

DROP TABLE IF EXISTS `Website_pmexposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_pmexposure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `exposure` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_pmexposure`
--

LOCK TABLES `Website_pmexposure` WRITE;
/*!40000 ALTER TABLE `Website_pmexposure` DISABLE KEYS */;
INSERT INTO `Website_pmexposure` VALUES (1,'0000000001','2017-05-01','40'),(2,'0000000001','2017-05-02','50'),(3,'0000000001','2017-05-03','30'),(4,'0000000001','2017-05-04','80'),(5,'0000000001','2017-05-05','90'),(6,'0000000001','2017-05-06','10'),(7,'0000000001','2017-05-07','100'),(8,'0000000001','2017-05-08','38'),(9,'0000000001','2017-05-09','68'),(10,'0000000001','2017-05-10','70'),(11,'0000000001','2017-05-11','10'),(12,'0000000001','2017-05-12','104'),(13,'0000000001','2017-05-13','134'),(14,'0000000001','2017-05-14','34'),(15,'0000000001','2017-05-15','64');
/*!40000 ALTER TABLE `Website_pmexposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_relationinfo`
--

DROP TABLE IF EXISTS `Website_relationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_relationinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellphone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weChat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeAddr` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_relationinfo`
--

LOCK TABLES `Website_relationinfo` WRITE;
/*!40000 ALTER TABLE `Website_relationinfo` DISABLE KEYS */;
INSERT INTO `Website_relationinfo` VALUES (2,'0000000001','家属1','1','13123','12312','00000','1232131232','123213'),(4,'0000000001','家属3','2','4','4','ACas','12','2');
/*!40000 ALTER TABLE `Website_relationinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_sgrq`
--

DROP TABLE IF EXISTS `Website_sgrq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_sgrq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `S_id` int(11) NOT NULL,
  `H1` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H4` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H5` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H6` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H7` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H8` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H9` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H10` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H11` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H12` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H13` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H14` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H15` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H16` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H17` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `H18` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actEff` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_sgrq`
--

LOCK TABLES `Website_sgrq` WRITE;
/*!40000 ALTER TABLE `Website_sgrq` DISABLE KEYS */;
INSERT INTO `Website_sgrq` VALUES (1,'0000000001','0',1,'1','1','1','1','1','1','5','1','1','1','12','12','12345678','1','12','235678','125','2','123123','2017-04-07');
/*!40000 ALTER TABLE `Website_sgrq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_sleepdetectresult`
--

DROP TABLE IF EXISTS `Website_sleepdetectresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_sleepdetectresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `head` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detectTime` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleep` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AHI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ODI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avgSpO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lowSpO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relaSpO2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avgBreath` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wake` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `R` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `N2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `N3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_sleepdetectresult`
--

LOCK TABLES `Website_sleepdetectresult` WRITE;
/*!40000 ALTER TABLE `Website_sleepdetectresult` DISABLE KEYS */;
INSERT INTO `Website_sleepdetectresult` VALUES (1,'0000000001','2017-06-16','1','1','1','1','1','2','1','1','1','2','1','1','1',22);
/*!40000 ALTER TABLE `Website_sleepdetectresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_so2`
--

DROP TABLE IF EXISTS `Website_so2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_so2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shunYi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouXiGong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongDingMenNei` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yuFa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_so2`
--

LOCK TABLES `Website_so2` WRITE;
/*!40000 ALTER TABLE `Website_so2` DISABLE KEYS */;
INSERT INTO `Website_so2` VALUES (44,'2017-05-11 17:00:00','2','2','2','2','2','2','2','2','未公布','2','2','2','2','2','6','11','2','5','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','14','2','2017-05-11 18:00:03'),(45,'2017-05-11 18:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','7','10','2','5','2','2','2','2','2','2','未公布','2','2','2','2','2','2','2','2','13','2','2017-05-11 18:41:25'),(46,'2017-05-11 18:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','7','10','2','5','2','2','2','2','2','2','未公布','2','2','2','2','2','2','2','2','13','2','2017-05-11 19:00:03'),(47,'2017-05-11 19:00:00','2','2','2','2','2','2','2','2','187','2','2','2','2','2','6','10','2','5','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','12','2','2017-05-11 20:00:03'),(48,'2017-05-11 20:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','4','9','2','4','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','10','2','2017-05-11 21:00:03'),(49,'2017-05-11 21:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','4','9','2','4','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','10','2','2017-05-11 22:00:03'),(50,'2017-05-11 22:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','3','9','2','5','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','9','2','2017-05-11 23:00:05'),(51,'2017-05-11 23:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','3','9','2','5','2','2','2','2','2','2','2','2','2','2','2','未公布','2','2','2','8','2','2017-05-12 00:00:03'),(52,'2017-05-12 00:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','9','2','5','2','2','2','2','2','4','2','2','2','2','2','2','2','2','2','6','2','2017-05-12 01:00:03'),(53,'2017-05-12 01:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','5','9','2','5','2','2','2','2','2','3','2','2','2','2','2','2','7','2','2','7','2','2017-05-12 02:00:03'),(54,'2017-05-12 02:00:00','2','2','3','2','2','2','2','2','2','2','2','2','2','2','4','2','2','5','2','2','2','2','2','9','2','2','2','2','2','2','4','2','2','8','2','2017-05-12 03:00:03'),(55,'2017-05-12 03:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','4','2','2','5','2','2','2','2','2','14','2','2','2','2','2','2','4','2','2','7','2','2017-05-12 04:00:03'),(56,'2017-05-12 04:00:00','2','2','3','2','2','2','2','2','2','2','2','2','2','2','5','2','2','5','2','2','2','2','2','14','2','2','2','2','2','2','7','2','2','7','2','2017-05-12 05:00:03'),(57,'2017-05-12 05:00:00','2','2','4','2','2','2','2','2','2','2','2','2','2','2','5','2','2','7','2','2','2','2','2','4','2','2','2','2','2','2','5','2','2','9','2','2017-05-12 06:00:03'),(58,'2017-05-12 05:00:00','2','2','4','2','2','2','2','2','2','2','2','2','2','2','5','2','2','7','2','2','2','2','2','4','2','2','2','2','2','2','5','2','2','9','2','2017-05-12 07:00:03'),(59,'2017-05-12 07:00:00','2','3','5','2','3','2','4','2','3','4','3','4','2','3','8','2','2','11','2','5','2','4','2','5','2','2','2','3','2','2','4','未公布','3','12','2','2017-05-12 08:00:02'),(60,'2017-05-12 08:00:00','2','6','7','2','7','2','7','2','3','4','7','6','2','4','13','2','2','16','2','6','2','8','7','5','2','3','2','10','2','3','5','5','6','14','12','2017-05-12 09:00:02'),(61,'2017-05-12 09:00:00','2','8','14','2','13','3','11','2','5','12','11','11','5','10','17','3','3','13','2','10',NULL,'9','8','12','8','8','2','11','2','3','4','8','10','20','8','2017-05-12 10:00:02'),(62,'2017-05-12 10:00:00','3','5','16','3','8','2','10','2','5','10','7','8','9','7','14','3','6','11','2','8',NULL,'7','5','9','5','8','2','7','3','3','3','7','7','16','5','2017-05-12 11:00:02'),(63,'2017-05-12 11:00:00','5','6','18','6','6','3','9','2','6','7','6','6','11','5','13','4','7','11','3','7',NULL,'6','4','8','3','10','2','10','3','4','4','6','5','15','19','2017-05-12 12:00:05'),(64,'2017-05-12 12:00:00','5','5','13','6','7','3','9','2','6','7','6','6','9','5','12','4','6','11','4','6','未公布','6','4','7','2','10','4','6','4','5','3','5','5','14','19','2017-05-12 13:00:03'),(65,'2017-05-12 13:00:00','5','6','10','6','8','3','9','3','6','10','6','6','9','5','13','2','6','11','4','7','5','6','3','7','3','11','5','6','5','5','2','5','5','15','14','2017-05-12 14:00:03'),(66,'2017-05-12 14:00:00','6','7','13','5','8','3','10','2','7','9','7','7','9','6','15','2','7','14','4','7','5','6','5','8','3','8','5','8','5','6','3','5','6','16','20','2017-05-12 15:00:03'),(67,'2017-05-12 15:00:00','8','9','13','6','12','4','12','3','8','14','9','9','10','8','18','2','10','16','4','9','8','8','7','10','5','9','5','11','5','7','4','8','8','20','19','2017-05-12 16:00:03'),(68,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:00:03'),(69,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:01:36'),(70,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:02:48'),(71,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:05:43'),(72,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:06:11'),(73,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:13:13'),(74,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:15:54'),(75,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:17:05'),(76,'2017-05-12 16:00:00','10','11','14','7','16','4','16','3','10','16','12','13','11','10','22','2','12','15','4','12','10','10','8','13','8','9','6','14','6','9','4','9','10','22','17','2017-05-12 17:19:57'),(77,'2017-05-12 17:00:00','11','11','15','8','16','4','18','2','11','16','13','14','11','12','25','3','13','16','5','14','10','11','8','15','9','10','8','17','7','10','4','11','12','24','18','2017-05-12 17:20:59'),(78,'2017-05-12 17:00:00','11','11','15','8','16','4','18','2','11','16','13','14','11','12','25','3','13','16','5','14','10','11','8','15','9','10','8','17','7','10','4','11','12','24','18','2017-05-12 17:21:40'),(79,'2017-05-12 17:00:00','11','11','15','8','16','4','18','2','11','16','13','14','11','12','25','3','13','16','5','14','10','11','8','15','9','10','8','17','7','10','4','11','12','24','18','2017-05-12 17:22:40'),(80,'2017-05-12 17:00:00','11','11','15','8','16','4','18','2','11','16','13','14','11','12','25','3','13','16','5','14','10','11','8','15','9','10','8','17','7','10','4','11','12','24','18','2017-05-12 18:00:03'),(81,'2017-05-12 18:00:00','10','12','15','9','19','5','17','2','11','18','14','15','11','13','27','4','12','17','6','13','10','11','10','17','9','10','8','20','7','11','5','11','11','25','13','2017-05-12 19:00:03'),(82,'2017-05-12 19:00:00','9','12','20','8','17','2','19','2','11','19','15','14','11','13','27','4','12','15','5','13','11','12','10','17','9','10','7','14','7','9','3','12','11','26','9','2017-05-12 20:00:03'),(83,'2017-05-12 20:00:00','10','11','19','5','13','2','17','2','10','15','12','12',NULL,'10','23','4','11','12','3','12','10','10','10','13','8','8','3','12','5','8','2','10','10','20','7','2017-05-12 21:00:04'),(84,'2017-05-12 21:00:00','5','7','20','2','8','2','11','2','7','7','6','7','7','5','15','3','6','12','2','7','5','8','7','7','3','10','2','8','2','5','2','5','5','15','9','2017-05-12 22:00:03'),(85,'2017-05-12 22:00:00','2','3','14','2','5','2','8','2','5','4','3','5','5','3','13','3','4','11','2','5','3','5','3','5','2','8','2','4','2','3','5','4','4','11','9','2017-05-12 23:00:06'),(86,'2017-05-12 23:00:00','2','4','11','2','3','2','5','2','3','2','2','2','2','2','11','3','3','9','2','3','3','3','2','3','2','6','2','3','2','2','6','2','2','8','6','2017-05-13 00:00:02'),(87,'2017-05-13 00:00:00','2','2','9','2','2','2','4','2','3','2','2','2','2','2','7','3','3','8','2','2','2','2','2','3','2','5','2','2','2','2','5','2','2','8','5','2017-05-13 01:00:03'),(88,'2017-05-13 01:00:00','2','2','7','2','2','2','4','2','2','2','2','2','2','2','9','2','2','6','未公布','2','2','2','2','5','2','4','2','2','2','2','5','2','2','7','4','2017-05-13 02:00:03'),(89,'2017-05-13 02:00:00','2','2','5','2','2','2','2','2','2','2','2','2','2','2','9','2','2','6','未公布','2','2','2','2','4','2','3','2','2','3','2','4','2','2','4','2','2017-05-13 03:00:03'),(90,'2017-05-13 03:00:00','2','2','5','2','2','2','3','2','2','2','2','2','2',NULL,'9','2','2','5','2','2','2','2','2','6','2','2','2','2','2','2','4','2','2','4','2','2017-05-13 04:00:03'),(91,'2017-05-13 04:00:00','2','2','6','2','2','2','3','2','2','2','2','2','2','2','9','2','2','6','2','2','2','2','2','10','2','2','2','2','2','2','3','2','2','5','2','2017-05-13 05:00:03'),(92,'2017-05-13 05:00:00','2','2','5','2','2','2','5','2','2','2','2','2','2','2','7','2','2','5','2','2','2','2','2','3','2','2','2','2','2','2','2','3','2','5','2','2017-05-13 06:00:03'),(93,'2017-05-13 06:00:00','2','2','3','2','2','2','2','2','2','2','2','2',NULL,'2','6','2','3','4','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-13 07:00:03'),(94,'2017-05-13 07:00:00','2','2','3','2','2','2','2','2','2','2','2','2','2','2','5','2','3','5','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','3','2','2017-05-13 08:00:03'),(95,'2017-05-13 08:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','3','2','3','5','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-13 09:00:03'),(96,'2017-05-13 09:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','5','2','2','4','2','2','2','2','2','2','2','2','2','2','2','2','3','2','2','3','2','2017-05-13 10:00:03'),(97,'2017-05-13 10:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','5','2','2','4','2','2','2','2','2','2','2','2','2','2','2','2','3','3','2','3','2','2017-05-13 11:00:03'),(98,'2017-05-13 11:00:00','2','2','2','2','2','2','2','2','2','2','2','2','2','2','4','2','2','5','2','2','2','2','2','3','2','2','2','2','2','2','3','3','2','3','2','2017-05-13 12:00:03'),(99,'2017-05-13 12:00:00','2','2','3','2','2','2','2','2','2','2','2','2','2','2','4','2','2','5','2','2','2','2','2','3','2','2','2','2','2','2','2','4','2','3','2','2017-05-13 13:00:03'),(100,'2017-05-13 13:00:00','2','2','3','2','2','2','3','2','2','2','2','2','2','2','5','2','2','5','2','2','2','2','2','2','2','2','2','2','2','2','2','5','2','3','2','2017-05-13 14:00:03'),(101,'2017-05-13 14:00:00','2','2','3','2','2','2','3','2','2','2','2','2','2','2','6','3','2','5','2','2','2','2','2','2','2','2','2','2','2','2','2','6','2','3','2','2017-05-13 15:00:04'),(102,'2017-05-13 15:00:00','2','2','3','2','2','2','3','2','2','2','2','2','2','2','5','3','3','5','2','2','2','2','2','2','2','2','2','2','2','2','2','8','2','3','2','2017-05-13 16:00:03'),(103,'2017-05-13 16:00:00','2','2','3','2','2','2','3','2','2','2','2','2','2','2','6','3','3','4','2','2','2','2','2','2','2','2','2','2',NULL,'2','2','9','2','3','2','2017-05-13 17:00:03'),(104,'2017-05-13 17:00:00','2','2','3','2','2','2','3','2','2','2','2','2','2','2','6','3','3','5','2','2','2','2','2','2','2','2','2','2','2','2','2','8','2','3','2','2017-05-13 18:00:03'),(105,'2017-05-13 18:00:00','2','2','3','2','2','2','2','2','2','2','2','2','2','2','6','3','3','6','2','2','2','2','2','2','2','2','2','2','2','2','2','未公布','2','3','2','2017-05-13 19:00:03'),(106,'2017-05-13 19:00:00','2','2','3','2','2','2','2','2','2','2','2','2','2','2','5','4','3','6','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-13 20:00:03'),(107,'2017-05-13 20:00:00','2','2','4','2','2','2','2','2','2','2','2','2','3','2','5','4','3','6','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-13 21:00:04'),(108,'2017-05-13 21:00:00','2','2','4','2','2','2','2','2','2','2','2','2','2','2','6','4','3','7','2','2','2','2','4','2','2','2','2','6','2','2','2','2','2','2','2','2017-05-13 22:00:03'),(109,'2017-05-14 00:00:00','2','2','5','2','2','2','4','2','2','2','2','4','2','2','6','4','4','12','2','2','2','2','4','4','2','2','2','3','2','2','7','2','2','5','6','2017-05-14 01:00:03'),(110,'2017-05-14 01:00:00','2','2','6','2','2','2','2','2','2','2','2','2','2','2','5','3','4','10','2','2','2','2','3','4','2','2','2','3','2','2','9','2','2','3','7','2017-05-14 02:00:03'),(111,'2017-05-14 02:00:00','2','2','6','2','2','2','2','2','2','2','2','2','2','2','3','4','2','6','2','2','2','2','2','4','2','2','2','2','2','2','4','2','2','2','6','2017-05-14 03:00:03'),(112,'2017-05-14 02:00:00','2','2','6','2','2','2','2','2','2','2','2','2','2','2','3','4','2','6','2','2','2','2','2','4','2','2','2','2','2','2','4','2','2','2','6','2017-05-14 04:00:03'),(113,'2017-05-14 05:00:00','2','2','11','2','6','2',NULL,'2','2','4','2','2','2','2','3','5','2','6','2','2','2','2','2','4','2','2','2','5','2','2','2','2','2','2','7','2017-05-14 06:00:02'),(114,'2017-05-14 06:00:00','2','2','14','2','9','2',NULL,'2','2','12','2','2','2','2','2','5','2','8','2','2','2','2','2',NULL,'2','2','2','9','2','2','2','2','2','2','5','2017-05-14 07:00:02'),(115,'2017-05-14 07:00:00','2','2','15','2','10','2','2','2','2','18','2','2','2','2','3','5','2','11','2','2','2','2','4','5','2','2','2','12','2',NULL,'4','2','2','2','5','2017-05-14 08:00:03'),(116,'2017-05-14 08:00:00','2','2','19','2','12','2','2','2','2','10','2','2','2','2','8','5','2','15','2','2','2','5','10','3','2','2','2','12','2','2','9','2','2','5','11','2017-05-14 09:00:03'),(117,'2017-05-14 09:00:00','2','4','11','2','2','2','2','2','2','2','2','2','2','2','2','4','2','14','2','2','2','2','10','3','2','2','2','7','3','2','15','2','2','2','8','2017-05-14 10:00:03'),(118,'2017-05-14 10:00:00','2','2','3','2','2','5','2','2','2','2','2','2','2','2','2','5','2','14','2','2','2','2','8','3','2','2','2','2','2','2','13','2','2','2','6','2017-05-14 11:00:03'),(119,'2017-05-14 11:00:00','2','2','2','2','2','4','2','2','2','2','2','2','2','2','2','6','2','14','2','2','2','2','7','2','2','2','2','2','2','2','6','2','2','2','5','2017-05-14 12:00:03'),(120,'2017-05-14 12:00:00','3','3','2','2','2','2','3','2','2','2','2','2','2','2','3','6','2','13','2','2','2','2','6','2','2','2','2','2','2','2','4','2','2','2','5','2017-05-14 13:00:03'),(121,'2017-05-14 13:00:00','3','2','2','2','2','2','2','2','2','2','2','2','2','2','3','7','2','12','2','2','2','2','4','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-14 14:00:03'),(122,'2017-05-14 14:00:00','3','2','2','2','2','2','3','2','2','2','2','2','2','2','3','7','2','11','2','2',NULL,'2','4','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-14 15:00:02'),(123,'2017-05-14 15:00:00','2','3','2','2','2','2','3','2','2','2','2','2','2','2','5','7','2','10','2','2','未公布','2','4','2','2','2','2','2','2','2','2','2','2','2','2','2017-05-14 16:00:07'),(124,'2017-05-14 16:00:00',NULL,'3','2','2','2','2','2','2','2','2','2','2','2','2','6','8','3','9','2','2','2','2','6','3','2','2','2','2','2','2','2','2','2','2','3','2017-05-14 17:00:03'),(125,'2017-05-14 17:00:00','3','5','3','2','2','2','2','2','2','2',NULL,'2','2','2','6','9','4','9','2','2','2','3','5','3','2','2','2','3','2','2','2','2','2','2','3','2017-05-14 18:00:03'),(126,'2017-05-14 18:00:00','4','5','3','2','2','2','4','2','4','2',NULL,'3','2','2','8','9','5','9','2','3','3','4','5','4','2','2','2','4','2','2','2','2','3','4','3','2017-05-14 19:00:03'),(127,'2017-05-14 19:00:00','3','4','3','2','3','2','8','2','4','2',NULL,'4','2','3','10','8','5','9','2','4','3','4','5','6','4','2','2','4','2','2','2','3','4','3','3','2017-05-14 20:00:03'),(128,'2017-05-14 20:00:00','2','4','3','2','3','2','7','2','4','4',NULL,'4','3','4','8','8','4','12','2','4','3','4','8','6','3','2','2','5','2','2','2','4','3','4','3','2017-05-14 21:00:04'),(129,'2017-05-14 21:00:00','2','5','5','2','3','2','6','2','2','5',NULL,'4','3','3','7','8','3','9','2','3','2','4','12','6','3','2','2','5','2','2','2','3','3','4','2','2017-05-14 21:48:27'),(130,'2017-05-14 21:00:00','2','5','5','2','3','2','6','2','2','5',NULL,'4','3','3','7','8','3','9','2','3','2','4','12','6','3','2','2','5','2','2','2','3','3','4','2','2017-05-14 21:53:56'),(131,'2017-05-14 21:00:00','2','5','5','2','3','2','6','2','2','5',NULL,'4','3','3','7','8','3','9','2','3','2','4','12','6','3','2','2','5','2','2','2','3','3','4','2','2017-05-14 21:54:30'),(132,'2017-05-14 21:00:00','2','5','5','2','3','2','6','2','2','5',NULL,'4','3','3','7','8','3','9','2','3','2','4','12','6','3','2','2','5','2','2','2','3','3','4','2','2017-05-14 21:55:00'),(133,'2017-05-14 21:00:00','2','5','5','2','3','2','6','2','2','5',NULL,'4','3','3','7','8','3','9','2','3','2','4','12','6','3','2','2','5','2','2','2','3','3','4','2','2017-05-14 21:56:46'),(134,'2017-05-14 21:00:00','2','5','5','2','3','2','6','2','2','5',NULL,'4','3','3','7','8','3','9','2','3','2','4','12','6','3','2','2','5','2','2','2','3','3','4','2','2017-05-14 22:00:03'),(135,'2017-05-14 22:00:00','2','3','7','2','3','2','2','2','2','5',NULL,'2','2','2','9','8','2','10','2','2','2','3','12','4','2','2','2','6','2','2','4','2','2','2','2','2017-05-14 23:00:03'),(136,'2017-05-14 23:00:00','2','2','6','2','4','2','2','2','2','4','2','2','2','3','3','8','2','7','2','2','2','2','7','5','2','2','2','5','2','2','3','2','2','2','2','2017-05-15 00:00:03'),(137,'2017-05-15 00:00:00','2','2','5','2','3','2','2','2','2','2','2','2','2','2','3','8','2','5','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','3','2017-05-15 01:00:03'),(138,'2017-05-15 01:00:00','2','2','5','2','2','2','2','2','2','2','2','2','2','2','3','7','2','5','未公布','2','2','2','2','2','2','2','2','2','2','2','3','2','2','2','3','2017-05-15 02:00:03'),(139,'2017-05-15 02:00:00','2','2','4','2','2','2','2','2','2','2','2','2','2','2','9','7','2','5','未公布','4','3','2','2','2','2','2','2','2','4','2','4','2','2','4','2','2017-05-15 03:00:03'),(140,'2017-05-15 03:00:00','2','2','5','2','2','2','2','2','2','2','2','2','2','2','9','7','2','4','2','4','2','2','2','5','2','2','2','2','2','2','4','2','2','3','2','2017-05-15 04:00:03'),(141,'2017-05-15 04:00:00','2','2','6','2','3','2','2','2','2','2','2','2','2','2','8','7','2','5','2','4','2','2','2','7','2','2','2','2','2','2','3','2','2','2','2','2017-05-15 05:00:03'),(142,'2017-05-15 05:00:00','2','2','14','2','4','2',NULL,'2','2','11','2','2','2','2','9','7','2','5','2','4','2','2','2','3','2','12','2','2','2','2','2','2','2','4','2','2017-05-15 06:00:03'),(143,'2017-05-15 06:00:00','2','2','22','2','13','2',NULL,'2','4','31','17','16','2','18','20','7','2','6','2','13','2','5','2','12','16','6','2','8','2','2','3','10','12','18','4','2017-05-15 07:00:03'),(144,'2017-05-15 07:00:00','3','12','33','2','23','2','17','2','17','38','29','28','2','28','26','7','8','12','2','25','12','18','17','24','26','4','2','16','2','2','3','28','22','31','9','2017-05-15 08:00:03'),(145,'2017-05-15 08:00:00','17','20','36','2','29','2','25','2','22','40','30','30','2','29','33','7','18','17','2','29','19','25','19','30','26','5','10','25','9','9','2','25','28','37','8','2017-05-15 09:00:03'),(146,'2017-05-15 09:00:00','20','23','30','3','23','2','26','3','23','26','23','21','5','22','29','8','19','16','3','24','21','20','24','25','23','7','15','20','14','22','9','19','22','31','8','2017-05-15 09:57:39'),(147,'2017-05-15 09:00:00','20','23','30','3','23','2','26','3','23','26','23','21','5','22','29','8','19','16','3','24','21','20','24','25','23','7','15','20','14','22','9','19','22','31','8','2017-05-15 10:00:03'),(148,'2017-05-15 10:00:00','19','20','21','2','17','7','25','3','19','18','18','18','10','20','26','未公布','19','19','2','21','18','18','22','24','19','8','10','14','10','20','13','16','18','25','6','2017-05-15 10:33:28'),(149,'2017-05-15 10:00:00','19','20','21','2','17','7','25','3','19','18','18','18','10','20','26','未公布','19','19','2','21','18','18','22','24','19','8','10','14','10','20','13','16','18','25','6','2017-05-15 10:34:21'),(150,'2017-05-15 10:00:00','19','20','21','2','17','7','25','3','19','18','18','18','10','20','26','未公布','19','19','2','21','18','18','22','24','19','8','10','14','10','20','13','16','18','25','6','2017-05-15 11:00:04'),(151,'2017-05-15 11:00:00','15','17','17','2','16','6','18','3','15','17','16','16','11','16','23','6','17','22','2','19','16','15','17','21','18','13','8','14','8','15','8','13','15','22','7','2017-05-15 12:00:03'),(152,'2017-05-15 12:00:00','10','13','16','2','13','3','未公布','2','12','12','13','14','10','11','21','8','15','17','2','15','12','11','13','14','12','14','5','12','5','8','3','10','12','20','7','2017-05-15 13:00:03'),(153,'2017-05-15 13:00:00','7','9','13','2','10','3','11','2','7','9','8','9','6','6',NULL,'7','12','13','2','12','9','8','9','9','6','9','4','9','3','6','3','6','8','15','6','2017-05-15 14:00:03'),(154,'2017-05-15 14:00:00','5','8','10','2','8','3','11','2','7','6','6','7','3','4','16','7','9','12','2','10','7','7','8','7','5','5','3','8','3','5','5','5','7','13','4','2017-05-15 15:00:05'),(155,'2017-05-15 15:00:00','6','7','9','2','7','4','9','2',NULL,'4','5','6','2','4','16','7','8','10','2','9','6','6','7','6','5','5','3','6','3','5','6','4','6','12','3','2017-05-15 16:00:02'),(156,'2017-05-15 16:00:00','6','6','8','2','6','5','10','2','6','4','4','6','2','3','16','7','8','9','2','9','6','6','6','5','5','4','3','6','3','5','6','4','6','12','3','2017-05-15 16:55:48'),(157,'2017-05-15 16:00:00','6','6','8','2','6','5','10','2','6','4','4','6','2','3','16','7','8','9','2','9','6','6','6','5','5','4','3','6','3','5','6','4','6','12','3','2017-05-15 16:56:14'),(158,'2017-05-15 16:00:00','6','6','8','2','6','5','10','2','6','4','4','6','2','3','16','7','8','9','2','9','6','6','6','5','5','4','3','6','3','5','6','4','6','12','3','2017-05-15 17:00:02'),(159,'2017-05-15 17:00:00','7','6','8','2','5','4','11','2','7','5','5','7','2','4','14','7','7','8','2','10','6','6','5','7','5','4','3','5','4','6','4','5','6','12','3','2017-05-15 18:00:04'),(160,'2017-05-15 18:00:00','6','5','7','2','5','5','11','2','6','4',NULL,'7','2','4','17','7','6','8','3','9','5','5','4','8','5','6','4','4','5','6','6','5','5','10','3','2017-05-15 19:00:03'),(161,'2017-05-15 19:00:00','5','4','6','3','3','6','10','2','5','4',NULL,NULL,'4','3','16','7','5','8','4','8','4','4','4','6','4','7','4','4','5','5','6','5','4','9','3','2017-05-15 20:00:03'),(162,'2017-05-15 20:00:00','4','3','5','5','3','6','10','2','4','3','3','5','4','3','14','7','5','10','5','7','3','4','4','6','4','7','3','4','3','4','6','4','3','9','3','2017-05-15 20:57:18'),(163,'2017-05-15 20:00:00','4','3','5','5','3','6','10','2','4','3','3','5','4','3','14','7','5','10','5','7','3','4','4','6','4','7','3','4','3','4','6','4','3','9','3','2017-05-15 21:00:04'),(164,'2017-05-15 20:00:00','4','3','5','5','3','6','10','2','4','3','3','5','4','3','14','7','5','10','5','7','3','4','4','6','4','7','3','4','3','4','6','4','3','9','3','2017-05-15 21:08:51'),(165,'2017-05-15 20:00:00','4','3','5','5','3','6','10','2','4','3','3','5','4','3','14','7','5','10','5','7','3','4','4','6','4','7','3','4','3','4','6','4','3','9','3','2017-05-15 21:08:57'),(166,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 21:16:46'),(167,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 21:24:58'),(168,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 21:27:18'),(169,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 21:29:10'),(170,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 21:31:36'),(171,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 21:45:33'),(172,'2017-05-15 21:00:00','4','4','6','5','4','5','10','2','5','4','3','6','3','3','16','7','5','9','4','8','3','5','6','6','5','6','2','6','2','3','5','4','4','9','4','2017-05-15 22:00:04'),(173,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 22:35:24'),(174,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 22:35:30'),(175,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 22:37:44'),(176,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 22:40:39'),(177,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 22:41:24'),(178,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 22:44:47'),(179,'2017-05-15 22:00:00','4','5','8','4','5','5','12','2','6','8','4','7','3','5','16','7','7','6','3','9','4','6','7','8','6','6','2','7','2','4','5','6','5','11','4','2017-05-15 23:00:04'),(180,'2017-05-15 23:00:00','4','5','8','4','5','4','11','2','7','7','3',NULL,'4','4','17','6','7','10','3','9','4','6','6','7','5','7','2','5','2','3','6','5','5','10','3','2017-05-16 00:00:02'),(181,'2017-05-16 00:00:00','6','7','17','5','5','3','12','2','8','8','5','8','2','5','17','6','9','11','4','11','5','6','8','7','6','8','2','6','2','2','3','6','6','11','5','2017-05-16 01:00:03'),(182,'2017-05-16 01:00:00','9','10','20','6','7','3','16','2','12','11','10','14','2','9','21','7','10','9','4','16','8','10','10','9','12','6','2','7','2','2','4','11','11','17','13','2017-05-16 02:00:03'),(183,'2017-05-16 02:00:00','9','11','13','5','8','2','16','2','12','14','10','14','2','13','22','5','8','7','4','15','10','10','10','13','12','8','2','12','2','2','3','11','11','18','11','2017-05-16 03:00:03'),(184,'2017-05-16 04:00:00','6','8','10','4','10','2','13','2','10','13','6','12','2','12','20','7','4','7','3','13','8','9','9','12','10','11','2','10','2','2','2','9','9','16','3','2017-05-16 05:00:02'),(185,'2017-05-16 05:00:00','4','7','13','3','10','2',NULL,'2','8','14','3','13','3','10','20','6','3','5','2','13','7','7','8','10','10','12','2','7','2','2','2','9','8','14','2','2017-05-16 06:00:02'),(186,'2017-05-16 06:00:00','5','8','13','2','8','2',NULL,'2','5','16','2','11','3','10','18','7','3','5','2','12','7','4','8','10','9','11','2','5','2','2','2','7','5','10','2','2017-05-16 07:00:02'),(187,'2017-05-16 07:00:00','6','14','20','3','12','3','11','2','6','18','5','12','5','9','20','7','4','15','2','12','8','8','13','12','11','13','2','12','2','5','3','6','8','16','3','2017-05-16 08:00:03'),(188,'2017-05-16 08:00:00','8','14','23','6','18','4','12','2','10','18','9','13','13','11','22','7','4','38','4','12','10','12','20','15','11','19','3','24','3','7','5','7','11','20','14','2017-05-16 09:00:03'),(189,'2017-05-16 09:00:00','8','13','30','9','22','6','18','3','11','15','9','10','19','10','23','7','5','49','7','13','8','11','18','18','9','21','5','27','4','9','7','10','9','20','30','2017-05-16 10:00:05'),(190,'2017-05-16 10:00:00','9','13','36','11','19','7','22','2','11','14','8','10','18','10','24','8','8','36','9','13','8','10','16','16','9','21','4','24','5','8','8','12','9','18','32','2017-05-16 11:00:02'),(191,'2017-05-16 11:00:00','9','13','34','11','17','9','19','2','10','12','10','11','16','10','25','9','9','26','9','12','8','10','16','15','10','20','4','21','5','9','6','11','10','18','24','2017-05-16 12:00:02'),(192,'2017-05-16 12:00:00','8','13','25','11','19','10','18','2','10','13','12','14','14','10','28','10','9','26','10','14','9','11','17','14','11','16','4','22','5','9','5','10','12','22','15','2017-05-16 13:00:03'),(193,'2017-05-16 13:00:00','8','14','18','9','18','9','22','2','12','16','14','16','13',NULL,'30','9','10','24','未公布','17','9','12','17','16','14','16','5','20','未公布','7','3','12','14','23','12','2017-05-16 14:00:03'),(194,'2017-05-16 15:00:00','10','14','13','9','8','5','21','2','10','8','7','11','13','8','25','6','11','18','8','15','11','10','15','14','10','15','6','10','7','9','4','10','10','17','12','2017-05-16 15:38:35'),(195,'2017-05-16 15:00:00','10','14','13','9','8','5','21','2','10','8','7','11','13','8','25','6','11','18','8','15','11','10','15','14','10','15','6','10','7','9','4','10','10','17','12','2017-05-16 15:39:45'),(196,'2017-05-16 15:00:00','10','14','13','9','8','5','21','2','10','8','7','11','13','8','25','6','11','18','8','15','11','10','15','14','10','15','6','10','7','9','4','10','10','17','12','2017-05-16 15:42:42'),(197,'2017-05-16 15:00:00','10','14','13','9','8','5','21','2','10','8','7','11','13','8','25','6','11','18','8','15','11','10','15','14','10','15','6','10','7','9','4','10','10','17','12','2017-05-16 15:43:26'),(198,'2017-05-16 15:00:00','10','14','13','9','8','5','21','2','10','8','7','11','13','8','25','6','11','18','8','15','11','10','15','14','10','15','6','10','7','9','4','10','10','17','12','2017-05-16 16:00:04'),(199,'2017-05-16 15:00:00','10','14','13','9','8','5','21','2','10','8','7','11','13','8','25','6','11','18','8','15','11','10','15','14','10','15','6','10','7','9','4','10','10','17','12','2017-05-16 16:07:41'),(200,'2017-05-16 16:00:00','8','12','13','10','8','5','18','2','9','7',NULL,'13','9','7','28','6','10','21','9','13','10','10','11','10','10','13','7','14','7','8','5','8','10','19','11','2017-05-16 16:23:33'),(201,'2017-05-16 16:00:00','8','12','13','10','8','5','18','2','9','7',NULL,'13','9','7','28','6','10','21','9','13','10','10','11','10','10','13','7','14','7','8','5','8','10','19','11','2017-05-16 16:24:30'),(202,'2017-05-16 16:00:00','8','12','13','10','8','5','18','2','9','7',NULL,'13','9','7','28','6','10','21','9','13','10','10','11','10','10','13','7','14','7','8','5','8','10','19','11','2017-05-16 16:27:10'),(203,'2017-05-16 16:00:00','8','12','13','10','8','5','18','2','9','7',NULL,'13','9','7','28','6','10','21','9','13','10','10','11','10','10','13','7','14','7','8','5','8','10','19','11','2017-05-16 17:00:03');
/*!40000 ALTER TABLE `Website_so2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_trackinfo`
--

DROP TABLE IF EXISTS `Website_trackinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_trackinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `doc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_trackinfo`
--

LOCK TABLES `Website_trackinfo` WRITE;
/*!40000 ALTER TABLE `Website_trackinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_trackinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_ucg`
--

DROP TABLE IF EXISTS `Website_ucg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_ucg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `head` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LVEF` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASP` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `left` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AE_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_ucg`
--

LOCK TABLES `Website_ucg` WRITE;
/*!40000 ALTER TABLE `Website_ucg` DISABLE KEYS */;
INSERT INTO `Website_ucg` VALUES (2,'0000000001','1970-01-01','1','12','1','12','1','3','12',23);
/*!40000 ALTER TABLE `Website_ucg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_userinfo`
--

DROP TABLE IF EXISTS `Website_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `cellphone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weChat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userGroup` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerDate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_userinfo`
--

LOCK TABLES `Website_userinfo` WRITE;
/*!40000 ALTER TABLE `Website_userinfo` DISABLE KEYS */;
INSERT INTO `Website_userinfo` VALUES (1,'pbkdf2_sha256$30000$ZbaOsOdsufAJ$m31H1i8hFj5kQ0nfS5+2HjnLPvn8S8ptb/dcs4wOpw4=',NULL,0,'zhangyc','','','1097238999@qq.com',0,1,'2017-03-31 09:07:35','','','1970-01-01','','','','','','','1','2017-03-31'),(2,'pbkdf2_sha256$30000$X4IvCGOGelNx$yVc2zFqgJ3LuInFUpUXCdx5PiZln+tKUExF+1+VDvM4=',NULL,0,'abc','','','123@qq.com',0,1,'2017-03-31 11:03:29','','','1970-01-01','','','','','','','1','2017-03-31'),(3,'pbkdf2_sha256$30000$LcplWxUfeP2H$qu43ZHoHmsSSuvn6tpGl60ME3lJhTtI+7ULUKdonGnk=',NULL,0,'123','','','123@qq.com',0,1,'2017-03-31 11:16:33','','','1970-01-01','','','','','','','1','2017-03-31'),(4,'pbkdf2_sha256$30000$pUbkleV174dB$V4Q8Mjak9G0K2qizShOFgWO3Tpqie/TppzqPXU+jFGo=','2017-05-12 15:44:23',0,'liming','','','2q123123@qq.com',0,1,'2017-03-31 11:51:46','小明','1','1970-01-01','18813564523','sfsdfw','2q123123@qq.com','教师','北医三院','呼吸科','1','2017-03-31'),(5,'pbkdf2_sha256$30000$Xqef3vQ7wROj$xb+7zPZBepFW1KIcWIfvzIq3ovb6GA9bw5pFYrq9cc8=','2017-04-05 08:44:04',0,'haoyi','','','123@buaa.edu.cn',0,1,'2017-04-05 08:42:15','','','1970-01-01','','','','','','','1','2017-04-05'),(6,'pbkdf2_sha256$30000$7EYT1LLFqzzo$pGYAHuCXzqnNGw1rZgQ/bUjA64IqGA21TYJCxdGAyKc=','2017-04-12 13:17:48',0,'new@1','','','1213@qq.com',0,1,'2017-04-12 11:48:10','','1','1970-01-01','','','1213@qq.com','','','','1','2017-04-12'),(7,'pbkdf2_sha256$30000$TUFLfcIJEeHd$ZpEjCzqJVdROXrtMrjPklf1jCJ3eaep6BxBAk9Li8B4=',NULL,0,'new@2','','','12312@qq.com',0,1,'2017-04-12 11:55:27','','','1970-01-01','','','','','','','3','2017-04-12'),(8,'pbkdf2_sha256$30000$7Js5uCD0iKIa$sjlgg1B1ypTwG1+thxISEMgyQyilP9PB+PqZ24rk9Gw=','2017-04-12 15:39:17',0,'kitty','','','12@qq.com',0,1,'2017-04-12 15:39:05','测试员1','1','1985-07-10','18813564562','WEchat23','12@qq.com','医师','北医三院','呼吸科','1','2017-04-12'),(9,'pbkdf2_sha256$30000$uVm7QFqmLzpP$g+w+KJWARzP2R/d2ZlKHCVOXI9xAfu6j0E+rfcPxa4k=','2017-04-14 13:50:27',0,'王蔡勐','','','1026389913@qq.com',0,1,'2017-04-14 13:50:09','','1','1970-01-01','','','','','','','2','2017-04-14');
/*!40000 ALTER TABLE `Website_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_userinfo_groups`
--

DROP TABLE IF EXISTS `Website_userinfo_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_userinfo_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Website_userinfo_groups_userinfo_id_6218c9b5_uniq` (`userinfo_id`,`group_id`),
  KEY `Website_userinfo_groups_group_id_a89af25f_fk_auth_group_id` (`group_id`),
  CONSTRAINT `Website_userinfo_groups_group_id_a89af25f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `Website_userinfo_gro_userinfo_id_dfb884d1_fk_Website_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `Website_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_userinfo_groups`
--

LOCK TABLES `Website_userinfo_groups` WRITE;
/*!40000 ALTER TABLE `Website_userinfo_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_userinfo_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_userinfo_user_permissions`
--

DROP TABLE IF EXISTS `Website_userinfo_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_userinfo_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Website_userinfo_user_permissions_userinfo_id_4ec247d1_uniq` (`userinfo_id`,`permission_id`),
  KEY `Website_userinfo_us_permission_id_b5681859_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `Website_userinfo_use_userinfo_id_ebbfda08_fk_Website_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `Website_userinfo` (`id`),
  CONSTRAINT `Website_userinfo_us_permission_id_b5681859_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_userinfo_user_permissions`
--

LOCK TABLES `Website_userinfo_user_permissions` WRITE;
/*!40000 ALTER TABLE `Website_userinfo_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_userinfo_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_warninginfo`
--

DROP TABLE IF EXISTS `Website_warninginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_warninginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warning` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `P_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_warninginfo`
--

LOCK TABLES `Website_warninginfo` WRITE;
/*!40000 ALTER TABLE `Website_warninginfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_warninginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website_weatherinfo`
--

DROP TABLE IF EXISTS `Website_weatherinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website_weatherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `zhiWuYuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yunGang` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yongLeDian` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongDingMenNei` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yiZhuang` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yanQing` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xiZhiMenBei` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanShouGongXi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wanLiu` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tongZhou` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tianTan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qianMen` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pingGu` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nongZhanGuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanSanHuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miYunShuiKu` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menTouGou` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liuLiHe` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huaiRou` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guanYuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guCheng` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fengTaiHuaYuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fangShan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSiHuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongSi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dongGaoCun` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dingLing` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daXing` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changPing` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beiBuXinQu` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baDaLing` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aoTiZhongXin` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_auto` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_weatherinfo`
--

LOCK TABLES `Website_weatherinfo` WRITE;
/*!40000 ALTER TABLE `Website_weatherinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website_weatherinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add accessory examination',6,'add_accessoryexamination'),(17,'Can change accessory examination',6,'change_accessoryexamination'),(18,'Can delete accessory examination',6,'delete_accessoryexamination'),(19,'Can add app attachment',7,'add_appattachment'),(20,'Can change app attachment',7,'change_appattachment'),(21,'Can delete app attachment',7,'delete_appattachment'),(22,'Can add app info',8,'add_appinfo'),(23,'Can change app info',8,'change_appinfo'),(24,'Can delete app info',8,'delete_appinfo'),(25,'Can add attach info',9,'add_attachinfo'),(26,'Can change attach info',9,'change_attachinfo'),(27,'Can delete attach info',9,'delete_attachinfo'),(28,'Can add ca tand mrc',10,'add_catandmrc'),(29,'Can change ca tand mrc',10,'change_catandmrc'),(30,'Can delete ca tand mrc',10,'delete_catandmrc'),(31,'Can add clinic',11,'add_clinic'),(32,'Can change clinic',11,'change_clinic'),(33,'Can delete clinic',11,'delete_clinic'),(34,'Can add co',12,'add_co'),(35,'Can change co',12,'change_co'),(36,'Can delete co',12,'delete_co'),(37,'Can add disease type',13,'add_diseasetype'),(38,'Can change disease type',13,'change_diseasetype'),(39,'Can delete disease type',13,'delete_diseasetype'),(40,'Can add emerg call info',14,'add_emergcallinfo'),(41,'Can change emerg call info',14,'change_emergcallinfo'),(42,'Can delete emerg call info',14,'delete_emergcallinfo'),(43,'Can add ess',15,'add_ess'),(44,'Can change ess',15,'change_ess'),(45,'Can delete ess',15,'delete_ess'),(46,'Can add group info',16,'add_groupinfo'),(47,'Can change group info',16,'change_groupinfo'),(48,'Can delete group info',16,'delete_groupinfo'),(49,'Can add healthy condition',17,'add_healthycondition'),(50,'Can change healthy condition',17,'change_healthycondition'),(51,'Can delete healthy condition',17,'delete_healthycondition'),(52,'Can add in hospital info',18,'add_inhospitalinfo'),(53,'Can change in hospital info',18,'change_inhospitalinfo'),(54,'Can delete in hospital info',18,'delete_inhospitalinfo'),(55,'Can add mbq',19,'add_mbq'),(56,'Can change mbq',19,'change_mbq'),(57,'Can delete mbq',19,'delete_mbq'),(58,'Can add medical visit',20,'add_medicalvisit'),(59,'Can change medical visit',20,'change_medicalvisit'),(60,'Can delete medical visit',20,'delete_medicalvisit'),(61,'Can add medicine change',21,'add_medicinechange'),(62,'Can change medicine change',21,'change_medicinechange'),(63,'Can delete medicine change',21,'delete_medicinechange'),(64,'Can add medicine record',22,'add_medicinerecord'),(65,'Can change medicine record',22,'change_medicinerecord'),(66,'Can delete medicine record',22,'delete_medicinerecord'),(67,'Can add medicine regular',23,'add_medicineregular'),(68,'Can change medicine regular',23,'change_medicineregular'),(69,'Can delete medicine regular',23,'delete_medicineregular'),(70,'Can add n o2',24,'add_no2'),(71,'Can change n o2',24,'change_no2'),(72,'Can delete n o2',24,'delete_no2'),(73,'Can add o3',25,'add_o3'),(74,'Can change o3',25,'change_o3'),(75,'Can delete o3',25,'delete_o3'),(76,'Can add out patient service info',26,'add_outpatientserviceinfo'),(77,'Can change out patient service info',26,'change_outpatientserviceinfo'),(78,'Can delete out patient service info',26,'delete_outpatientserviceinfo'),(79,'Can add patient group',27,'add_patientgroup'),(80,'Can change patient group',27,'change_patientgroup'),(81,'Can delete patient group',27,'delete_patientgroup'),(82,'Can add patient info',28,'add_patientinfo'),(83,'Can change patient info',28,'change_patientinfo'),(84,'Can delete patient info',28,'delete_patientinfo'),(85,'Can add p m10',29,'add_pm10'),(86,'Can change p m10',29,'change_pm10'),(87,'Can delete p m10',29,'delete_pm10'),(88,'Can add p m25',30,'add_pm25'),(89,'Can change p m25',30,'change_pm25'),(90,'Can delete p m25',30,'delete_pm25'),(91,'Can add pm exposure',31,'add_pmexposure'),(92,'Can change pm exposure',31,'change_pmexposure'),(93,'Can delete pm exposure',31,'delete_pmexposure'),(94,'Can add relation info',32,'add_relationinfo'),(95,'Can change relation info',32,'change_relationinfo'),(96,'Can delete relation info',32,'delete_relationinfo'),(97,'Can add sgrq',33,'add_sgrq'),(98,'Can change sgrq',33,'change_sgrq'),(99,'Can delete sgrq',33,'delete_sgrq'),(100,'Can add s o2',34,'add_so2'),(101,'Can change s o2',34,'change_so2'),(102,'Can delete s o2',34,'delete_so2'),(103,'Can add track info',35,'add_trackinfo'),(104,'Can change track info',35,'change_trackinfo'),(105,'Can delete track info',35,'delete_trackinfo'),(106,'Can add warning info',36,'add_warninginfo'),(107,'Can change warning info',36,'change_warninginfo'),(108,'Can delete warning info',36,'delete_warninginfo'),(109,'Can add weather info',37,'add_weatherinfo'),(110,'Can change weather info',37,'change_weatherinfo'),(111,'Can delete weather info',37,'delete_weatherinfo'),(112,'Can add user',38,'add_userinfo'),(113,'Can change user',38,'change_userinfo'),(114,'Can delete user',38,'delete_userinfo'),(115,'Can add invitation',39,'add_invitation'),(116,'Can change invitation',39,'change_invitation'),(117,'Can delete invitation',39,'delete_invitation'),(118,'Can add blood gas analysis',40,'add_bloodgasanalysis'),(119,'Can change blood gas analysis',40,'change_bloodgasanalysis'),(120,'Can delete blood gas analysis',40,'delete_bloodgasanalysis'),(121,'Can add cardiogram',41,'add_cardiogram'),(122,'Can change cardiogram',41,'change_cardiogram'),(123,'Can delete cardiogram',41,'delete_cardiogram'),(124,'Can add lung ct',42,'add_lungct'),(125,'Can change lung ct',42,'change_lungct'),(126,'Can delete lung ct',42,'delete_lungct'),(127,'Can add lung func',43,'add_lungfunc'),(128,'Can change lung func',43,'change_lungfunc'),(129,'Can delete lung func',43,'delete_lungfunc'),(130,'Can add sleep detect result',44,'add_sleepdetectresult'),(131,'Can change sleep detect result',44,'change_sleepdetectresult'),(132,'Can delete sleep detect result',44,'delete_sleepdetectresult'),(133,'Can add ucg',45,'add_ucg'),(134,'Can change ucg',45,'change_ucg'),(135,'Can delete ucg',45,'delete_ucg');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_Website_userinfo_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Website_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `Website_userinfo` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'Website','accessoryexamination'),(7,'Website','appattachment'),(8,'Website','appinfo'),(9,'Website','attachinfo'),(40,'Website','bloodgasanalysis'),(41,'Website','cardiogram'),(10,'Website','catandmrc'),(11,'Website','clinic'),(12,'Website','co'),(13,'Website','diseasetype'),(14,'Website','emergcallinfo'),(15,'Website','ess'),(16,'Website','groupinfo'),(17,'Website','healthycondition'),(18,'Website','inhospitalinfo'),(39,'Website','invitation'),(42,'Website','lungct'),(43,'Website','lungfunc'),(19,'Website','mbq'),(20,'Website','medicalvisit'),(21,'Website','medicinechange'),(22,'Website','medicinerecord'),(23,'Website','medicineregular'),(24,'Website','no2'),(25,'Website','o3'),(26,'Website','outpatientserviceinfo'),(27,'Website','patientgroup'),(28,'Website','patientinfo'),(29,'Website','pm10'),(30,'Website','pm25'),(31,'Website','pmexposure'),(32,'Website','relationinfo'),(33,'Website','sgrq'),(44,'Website','sleepdetectresult'),(34,'Website','so2'),(35,'Website','trackinfo'),(45,'Website','ucg'),(38,'Website','userinfo'),(36,'Website','warninginfo'),(37,'Website','weatherinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-31 07:24:32'),(2,'contenttypes','0002_remove_content_type_name','2017-03-31 07:24:33'),(3,'auth','0001_initial','2017-03-31 07:24:34'),(4,'auth','0002_alter_permission_name_max_length','2017-03-31 07:24:34'),(5,'auth','0003_alter_user_email_max_length','2017-03-31 07:24:34'),(6,'auth','0004_alter_user_username_opts','2017-03-31 07:24:34'),(7,'auth','0005_alter_user_last_login_null','2017-03-31 07:24:34'),(8,'auth','0006_require_contenttypes_0002','2017-03-31 07:24:34'),(9,'auth','0007_alter_validators_add_error_messages','2017-03-31 07:24:34'),(10,'auth','0008_alter_user_username_max_length','2017-03-31 07:24:34'),(11,'Website','0001_initial','2017-03-31 07:24:39'),(12,'admin','0001_initial','2017-03-31 07:24:39'),(13,'admin','0002_logentry_remove_auto_add','2017-03-31 07:24:39'),(14,'sessions','0001_initial','2017-03-31 07:24:40'),(15,'Website','0002_auto_20170331_2100','2017-03-31 13:00:31'),(16,'Website','0003_auto_20170406_1438','2017-04-06 06:38:49'),(17,'Website','0004_auto_20170406_1506','2017-04-06 07:06:41'),(18,'Website','0005_auto_20170406_2117','2017-04-06 13:17:34'),(19,'Website','0006_auto_20170407_2001','2017-04-07 12:01:15'),(20,'Website','0007_invitation','2017-04-12 08:58:40'),(21,'Website','0008_auto_20170412_1700','2017-04-12 09:00:26'),(22,'Website','0009_auto_20170412_1704','2017-04-12 09:04:47'),(23,'Website','0010_invitation_u_id','2017-04-12 15:31:06'),(24,'Website','0011_auto_20170412_2332','2017-04-12 15:32:54'),(25,'Website','0012_auto_20170412_2340','2017-04-12 15:40:08'),(26,'Website','0013_auto_20170413_1720','2017-04-13 09:20:51'),(27,'Website','0014_bloodgasanalysis_cardiogram_lungct_lungfunc_sleepdetectresult_ucg','2017-04-16 12:27:13'),(28,'Website','0015_auto_20170419_2010','2017-04-19 12:10:30'),(29,'Website','0016_auto_20170419_2011','2017-04-19 12:11:04'),(30,'Website','0017_auto_20170419_2049','2017-04-19 12:51:18'),(31,'Website','0018_auto_20170419_2054','2017-04-19 12:54:22'),(32,'Website','0019_auto_20170419_2112','2017-04-19 13:12:54'),(33,'Website','0020_auto_20170419_2113','2017-04-19 13:13:34'),(34,'Website','0021_auto_20170419_2115','2017-04-19 13:15:47'),(35,'Website','0022_auto_20170419_2330','2017-04-19 15:30:30'),(36,'Website','0023_auto_20170420_0003','2017-04-19 16:03:20'),(37,'Website','0024_auto_20170420_1435','2017-04-20 06:36:03'),(38,'Website','0025_auto_20170420_1525','2017-04-20 07:25:53'),(39,'Website','0026_auto_20170424_1110','2017-04-24 03:10:15'),(40,'Website','0027_auto_20170424_1543','2017-04-24 07:43:43'),(41,'Website','0028_auto_20170424_2250','2017-04-24 14:50:58'),(42,'Website','0029_appinfo_ai_id','2017-04-24 15:52:03'),(43,'Website','0030_appinfo_s_id','2017-04-25 14:57:09'),(44,'Website','0031_auto_20170510_2320','2017-05-10 15:20:54'),(45,'Website','0032_auto_20170511_1445','2017-05-11 06:45:16'),(46,'Website','0033_auto_20170511_1446','2017-05-11 06:46:06'),(47,'Website','0034_auto_20170511_1450','2017-05-11 06:51:19'),(48,'Website','0035_auto_20170511_1516','2017-05-11 15:21:58'),(49,'Website','0036_medicinerecord_sign','2017-05-15 16:56:15'),(50,'Website','0037_medicinerecord_doc','2017-05-15 21:08:58'),(51,'Website','0038_auto_20170515_2235','2017-05-15 22:35:31');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1yimbx6otvlvt9ndg3k80nelkum62dgf','NTk1YzI2YTBhODFiMmI2Yjk0YzIxODIzYzRmZGRlNjgxZGEzMGFhNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkyZWU0NWFkNmNjZDQzZTk2YzFiNmI4MWNmZWYyODQyZjE1N2NlZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=','2017-04-28 13:50:27'),('2csedfi3bab99r1e1p43qja2abcvfjk5','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-26 15:44:23'),('3zasy5mtpx1br0xnx7js1whiolc21wnx','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-01 01:33:21'),('4hwra84dbgjjcb5ziv16sneh5qq2hrne','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-01 11:17:50'),('5lt8u55ids2iydx096neykax08mxl78k','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-24 12:54:55'),('82mwq5vombd3uezq67hjgm0ya7nnkied','YWU3NWQxYWY4NDc3MDhjY2I5MTBmNDdlZWQ5MTNiMGQ0NjQwMTY0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-05-09 08:35:09'),('87b8eihtjpano7ly8uxmin510pb6f4ky','YTNmZGFlYWM1YWZmMjNkNDM5MmFmMTgxNzQ2MjgzMDg3NDFmZGZiZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-28 11:50:49'),('bzjt63wohhc9k1xloqxomoqi2f29g4vi','Y2M4YTExNjU0ZTE3MjJlY2FmZmZjZDllOWZkZDI5MmE5MTlmODBkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyOTFkY2VhNjZiYjdmNzUwYmUxODkyM2E1YTA5OTExYWMwMjQxMzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2017-04-19 08:44:04'),('d7in3wg0bb0nuva27xmhqxq8s4famimh','ODdjMjE4YjQyNDkxY2RjNzJkZDhlZmZlOTllNTkzOGVjYjkyNzk5Mjp7IkRfaWQiOjQsIl9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-14 11:53:19'),('g73e3au22wvs0jq2lajl3vxxppmgkfr5','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-04 08:33:37'),('i97tprj3mqab5zweu5rqip43cxxq9lqp','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-09 08:22:10'),('k9vwovz5n7zrhxny3yt1xk45fjriauty','YTNmZGFlYWM1YWZmMjNkNDM5MmFmMTgxNzQ2MjgzMDg3NDFmZGZiZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-20 11:13:14'),('nhd92chvgbtdv019vlg1u3si317hjm9h','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-09 06:52:18'),('pyz1kkaka9kbyxxfdlj33s3jacnszki6','YTNmZGFlYWM1YWZmMjNkNDM5MmFmMTgxNzQ2MjgzMDg3NDFmZGZiZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-28 11:08:29'),('rnifb0kbx6ulsytt04hoqg6em6tslauo','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-23 07:48:54'),('zhonamndh5uzw6f5wam4s3s2kd2xteca','Y2M4YTExNjU0ZTE3MjJlY2FmZmZjZDllOWZkZDI5MmE5MTlmODBkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyOTFkY2VhNjZiYjdmNzUwYmUxODkyM2E1YTA5OTExYWMwMjQxMzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2017-04-19 08:42:28');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-16 17:08:36
