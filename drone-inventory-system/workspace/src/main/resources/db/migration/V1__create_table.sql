-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: stock_mng
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_info` (
  `admin_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `delete_flag` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`admin_id`,`delete_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES ('1','kijima','sample.com','090××××××××','sample','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_info`
--

DROP TABLE IF EXISTS `class_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_info` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `delete_flag` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`class_id`,`delete_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_info`
--

LOCK TABLES `class_info` WRITE;
/*!40000 ALTER TABLE `class_info` DISABLE KEYS */;
INSERT INTO `class_info` VALUES (1,'フレーム','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(2,'プロペラ','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(3,'電動モーター','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(4,'電子速度調整器','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(5,'バッテリー','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(6,'フライトコントローラー','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(7,'リモートコントローラー','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(8,'受信機','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(9,'GPSモジュール','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(10,'カメラ','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(11,'センサー','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
/*!40000 ALTER TABLE `class_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `input_output_history`
--

DROP TABLE IF EXISTS `input_output_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `input_output_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(45) NOT NULL,
  `in_out_index` varchar(2) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `delete_flag` varchar(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`history_id`,`delete_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input_output_history`
--

LOCK TABLES `input_output_history` WRITE;
/*!40000 ALTER TABLE `input_output_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `input_output_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `order_id` varchar(45) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `delete_flag` varchar(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`order_id`,`delete_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES ('1','1','10','2024-01-23 12:00:00','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_info`
--

DROP TABLE IF EXISTS `place_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_info` (
  `place_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `postcode` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `delete_flag` varchar(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`place_id`,`delete_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_info`
--

LOCK TABLES `place_info` WRITE;
/*!40000 ALTER TABLE `place_info` DISABLE KEYS */;
INSERT INTO `place_info` VALUES ('1','東京江東','090××××××××','136-0075','東京都江東区新砂×-×-×','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('2','東京品川','090××××××××','140-0003','東京都品川区八潮×-×-×','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
/*!40000 ALTER TABLE `place_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_info`
--

DROP TABLE IF EXISTS `stock_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_info` (
  `stock_id` varchar(45) NOT NULL,
  `name` varchar(256) NOT NULL,
  `classification` varchar(10) NOT NULL,
  `discription` varchar(256) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `place_id` varchar(45) NOT NULL,
  `delete_flag` varchar(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`stock_id`,`delete_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_info`
--

LOCK TABLES `stock_info` WRITE;
/*!40000 ALTER TABLE `stock_info` DISABLE KEYS */;
INSERT INTO `stock_info` VALUES ('1','RC QAV250','1','2タイプ 250mm 航空機','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('2','HAWK\'S WORK F450','1','フレーム + ESC + ブラシレスモーター + プロペラ + バッテリー + 付属品 + ギルドブック＆ビデオ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('3','APC','2','10x4.5 ドローン用プロペラ4本（黒）','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('4','Phantom','2','Phantom 4/4プロドローン用2ペアファントム 4プロペラPhantom 9450Sプロペラ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('5','Yiqigou','3','4pcs 4軸航空機','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('6','G-FORCE','3','Burst Sonic 13.5T G0365','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('7','電子速度レギュレーター','3','V4.12 ミニ大電流ESC ロボット用','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('8','DC 3.5-6V電子速度コントローラーウィンチ制御回路基板','3','DC 速度レギュレーター ミニカーモデル航空機用','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
/*!40000 ALTER TABLE `stock_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17 23:37:07
