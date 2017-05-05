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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_accessoryexamination`
--

LOCK TABLES `Website_accessoryexamination` WRITE;
/*!40000 ALTER TABLE `Website_accessoryexamination` DISABLE KEYS */;
INSERT INTO `Website_accessoryexamination` VALUES (18,'0000000001','0',1,'2017-04-05','6','b81d570c1c9c56f348f1f96576677e52','6',4,'AE/问卷_KuJag1L.png'),(19,'0000000001','0',1,'2017-04-05','2','2fb4c73a2da7b50a2766a737bd4772fa','234',4,'AE/问卷3.png'),(20,'0000000001','0',1,'2017-04-06','3','4c15d45f6f6404b5324deb13068c51e4','123',4,'AE/问卷1_pZHjK2t.png'),(21,'0000000001','0',1,'2017-04-05','1','0a613e024297e37d2751e5607fb40413','1',4,'AE/问卷1_szRUnGM.png'),(22,'0000000001','0',1,'2017-04-21','4','4b3737bd59d696bc81236d8c9ff128cd','5',4,'AE/临床详细信息.png'),(23,'0000000001','0',1,'2017-04-15','5','89c2c31f1d89c34d586511f6a13110bb','5',4,'AE/辅助检查和附件_EB2H3Cg.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_appinfo`
--

LOCK TABLES `Website_appinfo` WRITE;
/*!40000 ALTER TABLE `Website_appinfo` DISABLE KEYS */;
INSERT INTO `Website_appinfo` VALUES (1,'2017-04-24','0000000001','0','00000000011492963200000',0),(2,'2017-04-25','0000000001','0','00000000011493049600000',0),(3,'2017-04-22','0000000001','0','00000000011492790400000',6),(4,'2017-05-04','0000000002','0','00000000021493827200000',7),(5,'2017-05-05','0000000001','2','00000000011493913600000',5),(6,'2017-05-05','0000000001','2','00000000011493913600000',6),(7,'2017-05-05','0000000001','2','00000000011493913600000',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_attachinfo`
--

LOCK TABLES `Website_attachinfo` WRITE;
/*!40000 ALTER TABLE `Website_attachinfo` DISABLE KEYS */;
INSERT INTO `Website_attachinfo` VALUES (5,'0000000001','2017-04-15','0',1,4,'2092c3d9c4a03c44394e1716e7b07e93','紫霞仙子','Attachment/1.jpg'),(6,'0000000001','2016-04-08','0',1,4,'d9b4927987731f1f5e197ceaa1f38f08','app','Attachment/2017-04-06_220239.jpg'),(7,'0000000001','2017-04-08','0',1,4,'4e799da51264fc17e7cb63cc431965c2','12334123123','Attachment/问卷1_CAhqzfv.png'),(8,'0000000001','2017-03-29','0',1,4,'381bdd66513363f4cdad4d4f3b913921','1','Attachment/commond.txt'),(9,'0000000001','1970-01-01','0',1,1,'5773f42c9763ca93de3734b5161804a8','0000','Attachment/IMG_20170425_221957.jpg'),(10,'0000000001','1970-01-01','0',1,1,'7d224adcc3fa4323b5f9d64b5ce3256b','0000','Attachment/IMG_20170425_223235.jpg'),(11,'0000000001','1970-01-01','0',1,1,'11d2241eecebb663e2b3dce9524f7bcf','0000','Attachment/IMG_20170425_224340.jpg'),(12,'0000000001','2017-04-25','0',0,0,'f0e410e32cff7aaabe0d3386c6be4632','from app','Attachment/IMG_20170425_230444.jpg'),(13,'0000000001','2017-04-22','0',6,0,'0d18ea0a5d895cca04b8c352c4692d77','from app','Attachment/IMG_20170425_230842.jpg'),(14,'0000000001','2017-04-25','0',0,0,'44fa8906bca880a3fc6fd3a50c2b4b55','from app','Attachment/IMG_20170425_231316.jpg'),(15,'0000000002','2017-05-04','0',7,0,'fcd454055480d0a0ee4f6b014c1400e9','from app','Attachment/IMG_20170504_215501.jpg'),(16,'0000000002','2017-05-04','0',7,0,'7ed6571a2a0b9983479a882a3b76ade2','from app','Attachment/IMG_20170504_215526.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `P_id` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `cat1` varchar(2) NOT NULL,
  `cat2` varchar(2) NOT NULL,
  `cat3` varchar(2) NOT NULL,
  `cat4` varchar(2) NOT NULL,
  `cat5` varchar(2) NOT NULL,
  `cat6` varchar(2) NOT NULL,
  `cat7` varchar(2) NOT NULL,
  `cat8` varchar(2) NOT NULL,
  `catSum` varchar(3) NOT NULL,
  `mrc` varchar(2) NOT NULL,
  `acuteExac` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_catandmrc`
--

LOCK TABLES `Website_catandmrc` WRITE;
/*!40000 ALTER TABLE `Website_catandmrc` DISABLE KEYS */;
INSERT INTO `Website_catandmrc` VALUES (1,'0000000001','2017-04-06','0','1','2','1','0','0','1','1','100','2.','/'),(2,'0000000001','2017-04-06','0','1','1','2','1','0','0','0','100','1','0'),(3,'0000000001','2017-04-06','0','1','1','2','1','0','0','0','100','1','0'),(4,'0000000001','2017-04-06','0','1','1','0','2','1','0','0','100','0','0'),(5,'0000000001','2017-04-06','3','3','3','3','3','3','3','3','100','1','0'),(6,'0000000001','2013-01-02','0','1','2','0','2','1','3','2','100','1','0'),(7,'0000000001','2017-04-24','1','1','0','2','1','1','0','1','100','1','0'),(8,'0000000001','2017-04-24','0','2','1','2','1','3','1','1','100','1','1'),(9,'0000000001','2017-04-24','0','1','1','0','3','2','1','1','100','1','0'),(10,'0000000001','2017-04-24','3','3','3','3','3','3','3','3','100','2','0'),(11,'0000000001','2017-04-24','2','2','2','2','2','2','2','2','100','1','1'),(12,'0000000001','2017-05-04','0','0','0','0','0','0','0','0','100','0','1'),(13,'0000000001','2017-05-04','5','5','5','4','3','3','3','3','100','3','1'),(14,'0000000002','2017-05-04','1','2','3','4','0','0','0','0','100','0','0'),(15,'0000000001','2017-05-05','3','3','3','3','3','3','3','3','100','1','0');
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
  `zhiWuYuan` varchar(50) NOT NULL,
  `yunGang` varchar(50) NOT NULL,
  `yongLeDian` varchar(50) NOT NULL,
  `dongDingMenNei` varchar(50) NOT NULL,
  `yiZhuang` varchar(50) NOT NULL,
  `yanQing` varchar(50) NOT NULL,
  `xiZhiMenBei` varchar(50) NOT NULL,
  `wanShouGongXi` varchar(50) NOT NULL,
  `wanLiu` varchar(50) NOT NULL,
  `tongZhou` varchar(50) NOT NULL,
  `tianTan` varchar(50) NOT NULL,
  `qianMen` varchar(50) NOT NULL,
  `pingGu` varchar(50) NOT NULL,
  `nongZhanGuan` varchar(50) NOT NULL,
  `nanSanHuan` varchar(50) NOT NULL,
  `miYunShuiKu` varchar(50) NOT NULL,
  `menTouGou` varchar(50) NOT NULL,
  `liuLiHe` varchar(50) NOT NULL,
  `huaiRou` varchar(50) NOT NULL,
  `guanYuan` varchar(50) NOT NULL,
  `guCheng` varchar(50) NOT NULL,
  `fengTaiHuaYuan` varchar(50) NOT NULL,
  `fangShan` varchar(50) NOT NULL,
  `dongSiHuan` varchar(50) NOT NULL,
  `dongSi` varchar(50) NOT NULL,
  `dongGaoCun` varchar(50) NOT NULL,
  `dingLing` varchar(50) NOT NULL,
  `daXing` varchar(50) NOT NULL,
  `changPing` varchar(50) NOT NULL,
  `beiBuXinQu` varchar(50) NOT NULL,
  `baDaLing` varchar(50) NOT NULL,
  `aoTiZhongXin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_co`
--

LOCK TABLES `Website_co` WRITE;
/*!40000 ALTER TABLE `Website_co` DISABLE KEYS */;
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
  `P_id` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_emergcallinfo`
--

LOCK TABLES `Website_emergcallinfo` WRITE;
/*!40000 ALTER TABLE `Website_emergcallinfo` DISABLE KEYS */;
INSERT INTO `Website_emergcallinfo` VALUES (1,'0000000001','1970-01-01','','1256','1','','1','','1','1','','1','1','','1','1','1',''),(2,'0000000001','2017-04-20','bj','125','2','1','1','1','2','2','1','2','2','1','2','2','2','1');
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
  `P_id` varchar(12) NOT NULL,
  `type` varchar(5) NOT NULL,
  `S_id` int(11) NOT NULL,
  `ess1` varchar(5) NOT NULL,
  `ess2` varchar(5) NOT NULL,
  `ess3` varchar(5) NOT NULL,
  `ess4` varchar(5) NOT NULL,
  `ess5` varchar(5) NOT NULL,
  `ess6` varchar(5) NOT NULL,
  `ess7` varchar(5) NOT NULL,
  `ess8` varchar(5) NOT NULL,
  `score` varchar(5) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
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
  `condition` varchar(5) NOT NULL,
  `P_id` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_inhospitalinfo`
--

LOCK TABLES `Website_inhospitalinfo` WRITE;
/*!40000 ALTER TABLE `Website_inhospitalinfo` DISABLE KEYS */;
INSERT INTO `Website_inhospitalinfo` VALUES (3,'0000000001','2017-04-13','1','1','15','1','1','1','1','1','1','1','2','1','2','2','1','1'),(4,'0000000001','2017-04-05','1','1','25','1','1','1','','2','2','','2','','2','2','',''),(5,'0000000001','2017-05-05','','','','','','','','','','','','','','','',''),(6,'0000000001','2017-05-05','','','','','','','','','','','','','','','',''),(7,'0000000001','2017-05-05','','','','','','','','','','','','','','','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_lungct`
--

LOCK TABLES `Website_lungct` WRITE;
/*!40000 ALTER TABLE `Website_lungct` DISABLE KEYS */;
INSERT INTO `Website_lungct` VALUES (1,'0000000001','2017-04-20','1','1367b','',20);
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
  `P_id` varchar(12) NOT NULL,
  `type` varchar(5) NOT NULL,
  `S_id` int(11) NOT NULL,
  `q1` varchar(5) NOT NULL,
  `q2` varchar(5) NOT NULL,
  `q3` varchar(5) NOT NULL,
  `q4` varchar(5) NOT NULL,
  `q5` varchar(5) NOT NULL,
  `q6` varchar(5) NOT NULL,
  `q7` varchar(5) NOT NULL,
  `q8` varchar(1) NOT NULL,
  `q9` varchar(5) NOT NULL,
  `q10` varchar(1) NOT NULL,
  `BMI` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
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
  `o_time` varchar(5) NOT NULL,
  `e_time` varchar(5) NOT NULL,
  `h_time` varchar(5) NOT NULL,
  `P_id` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `P_id` (`P_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicalvisit`
--

LOCK TABLES `Website_medicalvisit` WRITE;
/*!40000 ALTER TABLE `Website_medicalvisit` DISABLE KEYS */;
INSERT INTO `Website_medicalvisit` VALUES (1,'3','2','2','0000000001'),(2,'1','0','0','0000000002'),(3,'0','0','0','0000000003'),(4,'0','0','0','000000000003');
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
  `change` varchar(2) NOT NULL,
  `P_id` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `MC_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
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
  `MC_id` varchar(32) NOT NULL,
  `medicine` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `producer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicinerecord`
--

LOCK TABLES `Website_medicinerecord` WRITE;
/*!40000 ALTER TABLE `Website_medicinerecord` DISABLE KEYS */;
INSERT INTO `Website_medicinerecord` VALUES (1,'00000000011492876800000','6947751402018','2017-04-24','',''),(2,'00000000011492876800000','6947751402018','2017-04-24','',''),(3,'00000000021493827200000','6957526102951','2017-05-04','',''),(4,'00000000021493827200000','6957526102951','2017-05-04','',''),(5,'00000000021493827200000','81309220337984163910','2017-05-04','',''),(6,'00000000021493827200000','81337060763241523529','2017-05-04','','');
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
  `regular` varchar(2) NOT NULL,
  `P_id` varchar(12) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_medicineregular`
--

LOCK TABLES `Website_medicineregular` WRITE;
/*!40000 ALTER TABLE `Website_medicineregular` DISABLE KEYS */;
INSERT INTO `Website_medicineregular` VALUES (1,'/','0000000001','2017-04-24'),(2,'1','0000000001','2017-04-24'),(3,'1','0000000001','2017-04-24'),(4,'0','0000000001','2017-04-24'),(5,'1','0000000001','2017-04-24'),(6,'0','0000000001','2017-04-24'),(7,'1','0000000001','2017-04-24'),(8,'0','0000000001','2017-04-24'),(9,'0','0000000001','2017-04-24'),(10,'0','0000000001','2017-04-23'),(11,'0','0000000001','2017-04-25'),(12,'0','0000000002','2017-05-04');
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
  `zhiWuYuan` varchar(50) NOT NULL,
  `yunGang` varchar(50) NOT NULL,
  `yongLeDian` varchar(50) NOT NULL,
  `dongDingMenNei` varchar(50) NOT NULL,
  `yiZhuang` varchar(50) NOT NULL,
  `yanQing` varchar(50) NOT NULL,
  `xiZhiMenBei` varchar(50) NOT NULL,
  `wanShouGongXi` varchar(50) NOT NULL,
  `wanLiu` varchar(50) NOT NULL,
  `tongZhou` varchar(50) NOT NULL,
  `tianTan` varchar(50) NOT NULL,
  `qianMen` varchar(50) NOT NULL,
  `pingGu` varchar(50) NOT NULL,
  `nongZhanGuan` varchar(50) NOT NULL,
  `nanSanHuan` varchar(50) NOT NULL,
  `miYunShuiKu` varchar(50) NOT NULL,
  `menTouGou` varchar(50) NOT NULL,
  `liuLiHe` varchar(50) NOT NULL,
  `huaiRou` varchar(50) NOT NULL,
  `guanYuan` varchar(50) NOT NULL,
  `guCheng` varchar(50) NOT NULL,
  `fengTaiHuaYuan` varchar(50) NOT NULL,
  `fangShan` varchar(50) NOT NULL,
  `dongSiHuan` varchar(50) NOT NULL,
  `dongSi` varchar(50) NOT NULL,
  `dongGaoCun` varchar(50) NOT NULL,
  `dingLing` varchar(50) NOT NULL,
  `daXing` varchar(50) NOT NULL,
  `changPing` varchar(50) NOT NULL,
  `beiBuXinQu` varchar(50) NOT NULL,
  `baDaLing` varchar(50) NOT NULL,
  `aoTiZhongXin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_no2`
--

LOCK TABLES `Website_no2` WRITE;
/*!40000 ALTER TABLE `Website_no2` DISABLE KEYS */;
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
  `zhiWuYuan` varchar(50) NOT NULL,
  `yunGang` varchar(50) NOT NULL,
  `yongLeDian` varchar(50) NOT NULL,
  `dongDingMenNei` varchar(50) NOT NULL,
  `yiZhuang` varchar(50) NOT NULL,
  `yanQing` varchar(50) NOT NULL,
  `xiZhiMenBei` varchar(50) NOT NULL,
  `wanShouGongXi` varchar(50) NOT NULL,
  `wanLiu` varchar(50) NOT NULL,
  `tongZhou` varchar(50) NOT NULL,
  `tianTan` varchar(50) NOT NULL,
  `qianMen` varchar(50) NOT NULL,
  `pingGu` varchar(50) NOT NULL,
  `nongZhanGuan` varchar(50) NOT NULL,
  `nanSanHuan` varchar(50) NOT NULL,
  `miYunShuiKu` varchar(50) NOT NULL,
  `menTouGou` varchar(50) NOT NULL,
  `liuLiHe` varchar(50) NOT NULL,
  `huaiRou` varchar(50) NOT NULL,
  `guanYuan` varchar(50) NOT NULL,
  `guCheng` varchar(50) NOT NULL,
  `fengTaiHuaYuan` varchar(50) NOT NULL,
  `fangShan` varchar(50) NOT NULL,
  `dongSiHuan` varchar(50) NOT NULL,
  `dongSi` varchar(50) NOT NULL,
  `dongGaoCun` varchar(50) NOT NULL,
  `dingLing` varchar(50) NOT NULL,
  `daXing` varchar(50) NOT NULL,
  `changPing` varchar(50) NOT NULL,
  `beiBuXinQu` varchar(50) NOT NULL,
  `baDaLing` varchar(50) NOT NULL,
  `aoTiZhongXin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_o3`
--

LOCK TABLES `Website_o3` WRITE;
/*!40000 ALTER TABLE `Website_o3` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_outpatientserviceinfo`
--

LOCK TABLES `Website_outpatientserviceinfo` WRITE;
/*!40000 ALTER TABLE `Website_outpatientserviceinfo` DISABLE KEYS */;
INSERT INTO `Website_outpatientserviceinfo` VALUES (1,'0000000001','2017-03-08','1','1','2','123','1','1','1','1','2','1','2','2','1','2','1'),(2,'0000000001','2017-04-13','收到','1','2','12','1','','1','','2','','2','2','1','2',''),(3,'0000000001','2017-04-20','bj','1','1','12','2','1','1','1','2','1','1','2','2','1','1'),(6,'0000000001','2017-04-22','','','','','','','','','','','','','','',''),(7,'0000000002','2017-05-04','','','','','','','','','','','','','','',''),(8,'null','2017-05-04','','','','','','','','','','','','','','',''),(9,'null','2017-05-04','','','','','','','','','','','','','','','');
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
  `P_id` varchar(12) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
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
  `zhiWuYuan` varchar(50) NOT NULL,
  `yunGang` varchar(50) NOT NULL,
  `yongLeDian` varchar(50) NOT NULL,
  `dongDingMenNei` varchar(50) NOT NULL,
  `yiZhuang` varchar(50) NOT NULL,
  `yanQing` varchar(50) NOT NULL,
  `xiZhiMenBei` varchar(50) NOT NULL,
  `wanShouGongXi` varchar(50) NOT NULL,
  `wanLiu` varchar(50) NOT NULL,
  `tongZhou` varchar(50) NOT NULL,
  `tianTan` varchar(50) NOT NULL,
  `qianMen` varchar(50) NOT NULL,
  `pingGu` varchar(50) NOT NULL,
  `nongZhanGuan` varchar(50) NOT NULL,
  `nanSanHuan` varchar(50) NOT NULL,
  `miYunShuiKu` varchar(50) NOT NULL,
  `menTouGou` varchar(50) NOT NULL,
  `liuLiHe` varchar(50) NOT NULL,
  `huaiRou` varchar(50) NOT NULL,
  `guanYuan` varchar(50) NOT NULL,
  `guCheng` varchar(50) NOT NULL,
  `fengTaiHuaYuan` varchar(50) NOT NULL,
  `fangShan` varchar(50) NOT NULL,
  `dongSiHuan` varchar(50) NOT NULL,
  `dongSi` varchar(50) NOT NULL,
  `dongGaoCun` varchar(50) NOT NULL,
  `dingLing` varchar(50) NOT NULL,
  `daXing` varchar(50) NOT NULL,
  `changPing` varchar(50) NOT NULL,
  `beiBuXinQu` varchar(50) NOT NULL,
  `baDaLing` varchar(50) NOT NULL,
  `aoTiZhongXin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_pm10`
--

LOCK TABLES `Website_pm10` WRITE;
/*!40000 ALTER TABLE `Website_pm10` DISABLE KEYS */;
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
  `zhiWuYuan` varchar(50) NOT NULL,
  `yunGang` varchar(50) NOT NULL,
  `yongLeDian` varchar(50) NOT NULL,
  `dongDingMenNei` varchar(50) NOT NULL,
  `yiZhuang` varchar(50) NOT NULL,
  `yanQing` varchar(50) NOT NULL,
  `xiZhiMenBei` varchar(50) NOT NULL,
  `wanShouGongXi` varchar(50) NOT NULL,
  `wanLiu` varchar(50) NOT NULL,
  `tongZhou` varchar(50) NOT NULL,
  `tianTan` varchar(50) NOT NULL,
  `qianMen` varchar(50) NOT NULL,
  `pingGu` varchar(50) NOT NULL,
  `nongZhanGuan` varchar(50) NOT NULL,
  `nanSanHuan` varchar(50) NOT NULL,
  `miYunShuiKu` varchar(50) NOT NULL,
  `menTouGou` varchar(50) NOT NULL,
  `liuLiHe` varchar(50) NOT NULL,
  `huaiRou` varchar(50) NOT NULL,
  `guanYuan` varchar(50) NOT NULL,
  `guCheng` varchar(50) NOT NULL,
  `fengTaiHuaYuan` varchar(50) NOT NULL,
  `fangShan` varchar(50) NOT NULL,
  `dongSiHuan` varchar(50) NOT NULL,
  `dongSi` varchar(50) NOT NULL,
  `dongGaoCun` varchar(50) NOT NULL,
  `dingLing` varchar(50) NOT NULL,
  `daXing` varchar(50) NOT NULL,
  `changPing` varchar(50) NOT NULL,
  `beiBuXinQu` varchar(50) NOT NULL,
  `baDaLing` varchar(50) NOT NULL,
  `aoTiZhongXin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_pm25`
--

LOCK TABLES `Website_pm25` WRITE;
/*!40000 ALTER TABLE `Website_pm25` DISABLE KEYS */;
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
  `P_id` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `exposure` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_pmexposure`
--

LOCK TABLES `Website_pmexposure` WRITE;
/*!40000 ALTER TABLE `Website_pmexposure` DISABLE KEYS */;
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
  `P_id` varchar(12) NOT NULL,
  `type` varchar(5) NOT NULL,
  `S_id` int(11) NOT NULL,
  `H1` varchar(5) NOT NULL,
  `H2` varchar(5) NOT NULL,
  `H3` varchar(5) NOT NULL,
  `H4` varchar(5) NOT NULL,
  `H5` varchar(5) NOT NULL,
  `H6` varchar(5) NOT NULL,
  `H7` varchar(5) NOT NULL,
  `H8` varchar(1) NOT NULL,
  `H9` varchar(5) NOT NULL,
  `H10` varchar(5) NOT NULL,
  `H11` varchar(10) NOT NULL,
  `H12` varchar(10) NOT NULL,
  `H13` varchar(10) NOT NULL,
  `H14` varchar(1) NOT NULL,
  `H15` varchar(10) NOT NULL,
  `H16` varchar(10) NOT NULL,
  `H17` varchar(10) NOT NULL,
  `H18` varchar(1) NOT NULL,
  `actEff` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
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
  `zhiWuYuan` varchar(50) NOT NULL,
  `yunGang` varchar(50) NOT NULL,
  `yongLeDian` varchar(50) NOT NULL,
  `dongDingMenNei` varchar(50) NOT NULL,
  `yiZhuang` varchar(50) NOT NULL,
  `yanQing` varchar(50) NOT NULL,
  `xiZhiMenBei` varchar(50) NOT NULL,
  `wanShouGongXi` varchar(50) NOT NULL,
  `wanLiu` varchar(50) NOT NULL,
  `tongZhou` varchar(50) NOT NULL,
  `tianTan` varchar(50) NOT NULL,
  `qianMen` varchar(50) NOT NULL,
  `pingGu` varchar(50) NOT NULL,
  `nongZhanGuan` varchar(50) NOT NULL,
  `nanSanHuan` varchar(50) NOT NULL,
  `miYunShuiKu` varchar(50) NOT NULL,
  `menTouGou` varchar(50) NOT NULL,
  `liuLiHe` varchar(50) NOT NULL,
  `huaiRou` varchar(50) NOT NULL,
  `guanYuan` varchar(50) NOT NULL,
  `guCheng` varchar(50) NOT NULL,
  `fengTaiHuaYuan` varchar(50) NOT NULL,
  `fangShan` varchar(50) NOT NULL,
  `dongSiHuan` varchar(50) NOT NULL,
  `dongSi` varchar(50) NOT NULL,
  `dongGaoCun` varchar(50) NOT NULL,
  `dingLing` varchar(50) NOT NULL,
  `daXing` varchar(50) NOT NULL,
  `changPing` varchar(50) NOT NULL,
  `beiBuXinQu` varchar(50) NOT NULL,
  `baDaLing` varchar(50) NOT NULL,
  `aoTiZhongXin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website_so2`
--

LOCK TABLES `Website_so2` WRITE;
/*!40000 ALTER TABLE `Website_so2` DISABLE KEYS */;
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
  `P_id` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `doc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
INSERT INTO `Website_userinfo` VALUES (1,'pbkdf2_sha256$30000$ZbaOsOdsufAJ$m31H1i8hFj5kQ0nfS5+2HjnLPvn8S8ptb/dcs4wOpw4=',NULL,0,'zhangyc','','','1097238999@qq.com',0,1,'2017-03-31 09:07:35','','','1970-01-01','','','','','','','1','2017-03-31'),(2,'pbkdf2_sha256$30000$X4IvCGOGelNx$yVc2zFqgJ3LuInFUpUXCdx5PiZln+tKUExF+1+VDvM4=',NULL,0,'abc','','','123@qq.com',0,1,'2017-03-31 11:03:29','','','1970-01-01','','','','','','','1','2017-03-31'),(3,'pbkdf2_sha256$30000$LcplWxUfeP2H$qu43ZHoHmsSSuvn6tpGl60ME3lJhTtI+7ULUKdonGnk=',NULL,0,'123','','','123@qq.com',0,1,'2017-03-31 11:16:33','','','1970-01-01','','','','','','','1','2017-03-31'),(4,'pbkdf2_sha256$30000$pUbkleV174dB$V4Q8Mjak9G0K2qizShOFgWO3Tpqie/TppzqPXU+jFGo=','2017-05-04 13:48:23',0,'liming','','','2q123123@qq.com',0,1,'2017-03-31 11:51:46','小明','1','1970-01-01','18813564523','sfsdfw','2q123123@qq.com','教师','北医三院','呼吸科','1','2017-03-31'),(5,'pbkdf2_sha256$30000$Xqef3vQ7wROj$xb+7zPZBepFW1KIcWIfvzIq3ovb6GA9bw5pFYrq9cc8=','2017-04-05 08:44:04',0,'haoyi','','','123@buaa.edu.cn',0,1,'2017-04-05 08:42:15','','','1970-01-01','','','','','','','1','2017-04-05'),(6,'pbkdf2_sha256$30000$7EYT1LLFqzzo$pGYAHuCXzqnNGw1rZgQ/bUjA64IqGA21TYJCxdGAyKc=','2017-04-12 13:17:48',0,'new@1','','','1213@qq.com',0,1,'2017-04-12 11:48:10','','1','1970-01-01','','','1213@qq.com','','','','1','2017-04-12'),(7,'pbkdf2_sha256$30000$TUFLfcIJEeHd$ZpEjCzqJVdROXrtMrjPklf1jCJ3eaep6BxBAk9Li8B4=',NULL,0,'new@2','','','12312@qq.com',0,1,'2017-04-12 11:55:27','','','1970-01-01','','','','','','','3','2017-04-12'),(8,'pbkdf2_sha256$30000$7Js5uCD0iKIa$sjlgg1B1ypTwG1+thxISEMgyQyilP9PB+PqZ24rk9Gw=','2017-04-12 15:39:17',0,'kitty','','','12@qq.com',0,1,'2017-04-12 15:39:05','测试员1','1','1985-07-10','18813564562','WEchat23','12@qq.com','医师','北医三院','呼吸科','1','2017-04-12'),(9,'pbkdf2_sha256$30000$uVm7QFqmLzpP$g+w+KJWARzP2R/d2ZlKHCVOXI9xAfu6j0E+rfcPxa4k=','2017-04-14 13:50:27',0,'王蔡勐','','','1026389913@qq.com',0,1,'2017-04-14 13:50:09','','1','1970-01-01','','','','','','','2','2017-04-14');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `zhiWuYuan` varchar(15) NOT NULL,
  `yunGang` varchar(15) NOT NULL,
  `yongLeDian` varchar(15) NOT NULL,
  `dongDingMenNei` varchar(15) NOT NULL,
  `yiZhuang` varchar(15) NOT NULL,
  `yanQing` varchar(15) NOT NULL,
  `xiZhiMenBei` varchar(15) NOT NULL,
  `wanShouGongXi` varchar(15) NOT NULL,
  `wanLiu` varchar(15) NOT NULL,
  `tongZhou` varchar(15) NOT NULL,
  `tianTan` varchar(15) NOT NULL,
  `qianMen` varchar(15) NOT NULL,
  `pingGu` varchar(15) NOT NULL,
  `nongZhanGuan` varchar(15) NOT NULL,
  `nanSanHuan` varchar(15) NOT NULL,
  `miYunShuiKu` varchar(15) NOT NULL,
  `menTouGou` varchar(15) NOT NULL,
  `liuLiHe` varchar(15) NOT NULL,
  `huaiRou` varchar(15) NOT NULL,
  `guanYuan` varchar(15) NOT NULL,
  `guCheng` varchar(15) NOT NULL,
  `fengTaiHuaYuan` varchar(15) NOT NULL,
  `fangShan` varchar(15) NOT NULL,
  `dongSiHuan` varchar(15) NOT NULL,
  `dongSi` varchar(15) NOT NULL,
  `dongGaoCun` varchar(15) NOT NULL,
  `dingLing` varchar(15) NOT NULL,
  `daXing` varchar(15) NOT NULL,
  `changPing` varchar(15) NOT NULL,
  `beiBuXinQu` varchar(15) NOT NULL,
  `baDaLing` varchar(15) NOT NULL,
  `aoTiZhongXin` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-31 07:24:32'),(2,'contenttypes','0002_remove_content_type_name','2017-03-31 07:24:33'),(3,'auth','0001_initial','2017-03-31 07:24:34'),(4,'auth','0002_alter_permission_name_max_length','2017-03-31 07:24:34'),(5,'auth','0003_alter_user_email_max_length','2017-03-31 07:24:34'),(6,'auth','0004_alter_user_username_opts','2017-03-31 07:24:34'),(7,'auth','0005_alter_user_last_login_null','2017-03-31 07:24:34'),(8,'auth','0006_require_contenttypes_0002','2017-03-31 07:24:34'),(9,'auth','0007_alter_validators_add_error_messages','2017-03-31 07:24:34'),(10,'auth','0008_alter_user_username_max_length','2017-03-31 07:24:34'),(11,'Website','0001_initial','2017-03-31 07:24:39'),(12,'admin','0001_initial','2017-03-31 07:24:39'),(13,'admin','0002_logentry_remove_auto_add','2017-03-31 07:24:39'),(14,'sessions','0001_initial','2017-03-31 07:24:40'),(15,'Website','0002_auto_20170331_2100','2017-03-31 13:00:31'),(16,'Website','0003_auto_20170406_1438','2017-04-06 06:38:49'),(17,'Website','0004_auto_20170406_1506','2017-04-06 07:06:41'),(18,'Website','0005_auto_20170406_2117','2017-04-06 13:17:34'),(19,'Website','0006_auto_20170407_2001','2017-04-07 12:01:15'),(20,'Website','0007_invitation','2017-04-12 08:58:40'),(21,'Website','0008_auto_20170412_1700','2017-04-12 09:00:26'),(22,'Website','0009_auto_20170412_1704','2017-04-12 09:04:47'),(23,'Website','0010_invitation_u_id','2017-04-12 15:31:06'),(24,'Website','0011_auto_20170412_2332','2017-04-12 15:32:54'),(25,'Website','0012_auto_20170412_2340','2017-04-12 15:40:08'),(26,'Website','0013_auto_20170413_1720','2017-04-13 09:20:51'),(27,'Website','0014_bloodgasanalysis_cardiogram_lungct_lungfunc_sleepdetectresult_ucg','2017-04-16 12:27:13'),(28,'Website','0015_auto_20170419_2010','2017-04-19 12:10:30'),(29,'Website','0016_auto_20170419_2011','2017-04-19 12:11:04'),(30,'Website','0017_auto_20170419_2049','2017-04-19 12:51:18'),(31,'Website','0018_auto_20170419_2054','2017-04-19 12:54:22'),(32,'Website','0019_auto_20170419_2112','2017-04-19 13:12:54'),(33,'Website','0020_auto_20170419_2113','2017-04-19 13:13:34'),(34,'Website','0021_auto_20170419_2115','2017-04-19 13:15:47'),(35,'Website','0022_auto_20170419_2330','2017-04-19 15:30:30'),(36,'Website','0023_auto_20170420_0003','2017-04-19 16:03:20'),(37,'Website','0024_auto_20170420_1435','2017-04-20 06:36:03'),(38,'Website','0025_auto_20170420_1525','2017-04-20 07:25:53'),(39,'Website','0026_auto_20170424_1110','2017-04-24 03:10:15'),(40,'Website','0027_auto_20170424_1543','2017-04-24 07:43:43'),(41,'Website','0028_auto_20170424_2250','2017-04-24 14:50:58'),(42,'Website','0029_appinfo_ai_id','2017-04-24 15:52:03'),(43,'Website','0030_appinfo_s_id','2017-04-25 14:57:09');
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
INSERT INTO `django_session` VALUES ('1yimbx6otvlvt9ndg3k80nelkum62dgf','NTk1YzI2YTBhODFiMmI2Yjk0YzIxODIzYzRmZGRlNjgxZGEzMGFhNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkyZWU0NWFkNmNjZDQzZTk2YzFiNmI4MWNmZWYyODQyZjE1N2NlZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=','2017-04-28 13:50:27'),('3zasy5mtpx1br0xnx7js1whiolc21wnx','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-01 01:33:21'),('4hwra84dbgjjcb5ziv16sneh5qq2hrne','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-01 11:17:50'),('82mwq5vombd3uezq67hjgm0ya7nnkied','YWU3NWQxYWY4NDc3MDhjY2I5MTBmNDdlZWQ5MTNiMGQ0NjQwMTY0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-05-09 08:35:09'),('87b8eihtjpano7ly8uxmin510pb6f4ky','YTNmZGFlYWM1YWZmMjNkNDM5MmFmMTgxNzQ2MjgzMDg3NDFmZGZiZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-28 11:50:49'),('bzjt63wohhc9k1xloqxomoqi2f29g4vi','Y2M4YTExNjU0ZTE3MjJlY2FmZmZjZDllOWZkZDI5MmE5MTlmODBkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyOTFkY2VhNjZiYjdmNzUwYmUxODkyM2E1YTA5OTExYWMwMjQxMzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2017-04-19 08:44:04'),('d7in3wg0bb0nuva27xmhqxq8s4famimh','ODdjMjE4YjQyNDkxY2RjNzJkZDhlZmZlOTllNTkzOGVjYjkyNzk5Mjp7IkRfaWQiOjQsIl9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-14 11:53:19'),('g73e3au22wvs0jq2lajl3vxxppmgkfr5','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-04 08:33:37'),('i97tprj3mqab5zweu5rqip43cxxq9lqp','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-09 08:22:10'),('k9vwovz5n7zrhxny3yt1xk45fjriauty','YTNmZGFlYWM1YWZmMjNkNDM5MmFmMTgxNzQ2MjgzMDg3NDFmZGZiZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-20 11:13:14'),('nhd92chvgbtdv019vlg1u3si317hjm9h','NjlmZTYyNDQ5NjNlOWExYTI2ZjNjNDMxYWZjODJlMGZjMDU3YjA3ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlOGIyZWRkNzhiODhiMDYwODk4YjYxOGNiN2Q3OTA4YTY0ZmMxZjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-05-09 06:52:18'),('pyz1kkaka9kbyxxfdlj33s3jacnszki6','YTNmZGFlYWM1YWZmMjNkNDM5MmFmMTgxNzQ2MjgzMDg3NDFmZGZiZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjEwNGI1MTViNTBiNjliMjlhNWY5MjQyYjBjZmI1MDNhY2JkY2VjMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2017-04-28 11:08:29'),('zhonamndh5uzw6f5wam4s3s2kd2xteca','Y2M4YTExNjU0ZTE3MjJlY2FmZmZjZDllOWZkZDI5MmE5MTlmODBkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyOTFkY2VhNjZiYjdmNzUwYmUxODkyM2E1YTA5OTExYWMwMjQxMzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2017-04-19 08:42:28');
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

-- Dump completed on 2017-05-05 18:13:24
