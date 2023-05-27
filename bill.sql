

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 82.157.238.118    Database: table
-- ------------------------------------------------------
-- Server version	5.7.38

CREATE DATABASE Bill;

use Bill;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` int(11) NOT NULL COMMENT '账单类型',
  `time` varchar(13) CHARACTER SET latin1 NOT NULL COMMENT '账单时间',
  `category` varchar(11) NOT NULL COMMENT '账单分类',
  `amount` double NOT NULL COMMENT '账单金额',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `billMonth` varchar(2) NOT NULL COMMENT '月份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,0,'1561910400000','8s0p77c323',5400,'2023-04-04 08:37:25.208776','2023-04-23 08:25:04.028080','7'),(2,0,'1561910400000','0fnhbcle6hg',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:25:04.084508','7'),(3,0,'1563897600000','3tqndrjqgrg',3900,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.309289','7'),(4,0,'1564502400000','bsn20th0k2o',1900,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.353265','7'),(5,0,'1564588800000','8s0p77c323',5400,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.397036','8'),(6,0,'1564588800000','0fnhbcle6hg',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.544035','8'),(7,0,'1564588800000','3tqndrjqgrg',5000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.591291','8'),(8,0,'1566316800000','bsn20th0k2o',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.673521','8'),(9,0,'1567267200000','8s0p77c323',5400,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.758558','9'),(10,0,'1567267200000','0fnhbcle6hg',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.809864','9'),(11,0,'1569772800000','1bcddudhmh',3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:13.928999','9'),(12,0,'1569772800000','bsn20th0k2o',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.001493','9'),(13,0,'1569772800000','3tqndrjqgrg',5000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.099260','9'),(14,0,'1569859200000','0fnhbcle6hg',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.144989','10'),(15,0,'1572364800000','odrjk823mj8',3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.186256','10'),(16,0,'1572451200000','3tqndrjqgrg',4600,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.271239','10'),(17,0,'1572451200000','3tqndrjqgrg',3800,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.324004','10'),(18,0,'1572537600000','0fnhbcle6hg',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.413763','11'),(19,0,'1574179200000','odrjk823mj8',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.474266','11'),(20,0,'1574870400000','1bcddudhmh',3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.526243','11'),(21,0,'1574956800000','8s0p77c323',5400,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.591014','11'),(22,0,'1575043200000','3tqndrjqgrg',5000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.721515','11'),(23,0,'1575129600000','0fnhbcle6hg',1500,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.802545','12'),(24,0,'1577289600000','3tqndrjqgrg',4000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.905004','12'),(25,0,'1577345333184','odrjk823mj8',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:14.948254','12'),(26,0,'1577345367638','1bcddudhmh',3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.003752','12'),(27,0,'1577345378418','j1h1nohhmmo',800,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.142018','12'),(28,0,'1577345504140','bsn20th0k2o',1000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.255278','12'),(29,0,'1577345517217','hc5g66kviq',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.299519','12'),(30,0,'1577345576917','8s0p77c323',5400,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.343733','12'),(31,0,'1577345590283','1bcddudhmh',3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.460244','12'),(32,0,'1577345789527','3tqndrjqgrg',3900,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.571495','12'),(33,0,'1577548800000','8s0p77c323',5400,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.651262','12'),(34,1,'1561910400000','s73ijpispio',30000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.696811','7'),(35,1,'1564502400000','5il79e11628',1000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.764478','7'),(36,1,'1567094400000','5il79e11628',-3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.858012','8'),(37,1,'1567180800000','s73ijpispio',28000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.916505','8'),(38,1,'1569772800000','s73ijpispio',28000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:15.981751','9'),(39,1,'1569772800000','1vjj47vpd28',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.036757','9'),(40,1,'1572451200000','s73ijpispio',20000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.101758','10'),(41,1,'1577345267529','s73ijpispio',30000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.148986','12'),(42,1,'1577345303191','1vjj47vpd28',-10000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.190973','12'),(43,1,'1577345317187','5il79e11628',1000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.304506','12'),(44,1,'1577345463930','s73ijpispio',3000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.395745','12'),(45,1,'1577345477581','5il79e11628',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.453010','12'),(46,1,'1577345638784','1vjj47vpd28',2000,'2023-04-04 08:37:25.208776','2023-04-23 08:42:16.526010','12'),(47,0,'1682328016000','odrjk823mj8',2000,'2023-04-24 09:20:18.648420','2023-04-24 09:20:18.648420','4');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` varchar(11) NOT NULL COMMENT 'id',
  `type` int(11) NOT NULL COMMENT '账单类型',
  `name` varchar(100) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('0fnhbcle6hg',0,'房屋租赁'),('1bcddudhmh',0,'车贷'),('1vjj47vpd28',1,'股票投资'),('3tqndrjqgrg',0,'日常饮食'),('5il79e11628',1,'基金投资'),('8s0p77c323',0,'房贷'),('bsn20th0k2o',0,'交通'),('hc5g66kviq',0,'车辆保养'),('j1h1nohhmmo',0,'旅游'),('odrjk823mj8',0,'家庭用品'),('s73ijpispio',1,'工资');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;