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
INSERT INTO `class_info` VALUES (1,'フレーム','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(2,'プロペラ','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(3,'電動モーター','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(4,'電子速度調整器','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(5,'バッテリー','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(6,'フライトコントローラー','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(7,'リモートコントローラー','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(8,'受信機','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(9,'GPSモジュール','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),(10,'カメラ/センサー','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
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
  `description` varchar(256) NOT NULL,
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
INSERT INTO `stock_info` VALUES ('1','カーボンライトフレーム','1','軽量で耐久性に優れたカーボン製ドローンフレーム','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('10','エコスライス','2','環境に優しい再生可能素材から作られたプロペラ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('11','パワーマックス','3','高トルクでバッテリー効率の良いモーター','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('12','サイレントスピン','3','低騒音で滑らかな回転を実現','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('13','デュアルドライブ','3','二重巻線で安定した動力供給を提供','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('14','スピードキング','3','高速飛行用に最適化されたモーター','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('15','エコモーター','3','電力消費を抑えた環境に優しい設計','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('16','スムーズコントロール','4','精密な速度調整が可能','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('17','ダイナミックブースト','4','急加速と減速をスムーズに制御','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('18','ステルスモード','4','低速飛行時の騒音を最小限に抑える','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('19','パワーセーブ','4','電力消費を最適化して飛行時間を延長','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('2','ステルスマックス','1','強化プラスチック製で夜間飛行に適したマットブラック仕上げ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('20','プログラマブルESC','4','カスタマイズ可能な設定で多様な飛行スタイルに対応','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('21','パワーフライ3000','5','高容量3000mAhで長時間飛行を実現するドローン用リチウムポリマーバッテリー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('22','エナジーマックス5000','5','5000mAhの大容量で、冒険を長く続けるためのドローン用バッテリー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('23','スカイセル20C','5','20Cの放電率を持つ、高性能ドローン用バッテリーで飛行性能を向上','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('24','フライトパワーV2','5','バランスの取れた性能と耐久性を誇る、汎用性の高いドローン用バッテリー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('25','エコフライト1500','5','環境に優しく、再利用可能な1500mAhドローン用バッテリーで効率的な飛行を','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('26','スカイマインド','6','直感的な操作が可能な高度なフライトプランニング機能を備えたコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('27','ナビゲーターX2','6','多機能で精密な飛行制御を実現する先進的なドローン用フライトコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('28','ピクセルホーク','6','オープンソースでカスタマイズ可能な、高性能ドローンフライトコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('29','エアーコマンドPro','6','プロレベルの飛行制御が可能な、専門家向けのフライトコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('3','アルマジロ・アーマー','1','耐衝撃性を高めたアルミニウム合金製フレーム','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('30','ドリームフライ','6','初心者から上級者まで、幅広いユーザーに対応した使いやすいフライトコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('31','スカイジョイ','7','長距離通信に対応した快適な握り心地のドローン用リモートコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('32','マスターコマンド','7','プログラム可能なボタンを備え、カスタマイズ性に優れたリモートコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('33','フライトスティックX1','7','リアルな飛行体験を提供する、高感度ジョイスティック搭載リモートコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('34','エアーコントロール','7','シンプルで直感的な操作が可能な、初心者向けリモートコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('35','パイロットタッチ','7','タッチスクリーンを備えた先進的な操作性を誇る、高機能リモートコントローラー','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('36','スカイリンクRX-200','8','高感度で長距離通信に対応したドローン用受信機安定した接続を提供','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('37','ナノコアRX-5','8','コンパクトサイズで軽量、小型ドローンに最適な受信機消費電力が少なく長時間の飛行が可能','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('38','マルチバンドRX-800','8','複数の周波数帯に対応し、干渉の少ないクリアな通信を実現する受信機','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('39','ダイレクトリンクRX-300','8','直接的なコントロールを可能にする高速応答の受信機レース用ドローンに適している','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('4','エアロダイナミクス・プロ','1','高速飛行を可能にする流線型設計','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('40','エアーウェーブRX-450','8','広範囲をカバーするための強化された信号強度を持つ受信機安心の飛行をサポート','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('41','ジオトラッカーGT-100','9','高精度の位置情報を提供するGPSモジュール追跡とナビゲーションに最適','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('42','スカイマップSM-200','9','小型で精度の高いGPSモジュールバッテリー消費を抑えつつ、正確な位置情報を提供','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('43','ナビコアNC-300','9','複数の衛星システムに対応して高い汎用性と信頼性を提供するGPSモジュール','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('44','ロケーターLT-400','9','高度な位置補正機能を備え、都市部でも精度の高い位置情報を提供するGPSモジュール','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('45','パスファインダーPF-500','9','広い範囲のカバレッジと高速な位置特定能力を持つGPSモジュール探検用ドローンに適している','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('46','ビジョンクリアVC-1000','10','4K解像度で高画質な映像を撮影可能高度な画像処理機能を搭載','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('47','ナイトアイNE-200','10','低照度でもクリアな画像を提供するナイトビジョンカメラ夜間飛行に最適','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('48','スカイスキャンSS-300','10','広範囲を高速でスキャン可能な3Dマッピングセンサー地形や建物の3Dモデル作成に適している','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('49','サーマルビジョンTV-400','10','熱画像を捉えるサーマルカメラ救助活動や農業での健康診断に有効','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('5','クリスタル・ビジョン','1','透明なアクリル素材で製造されたユニークなデザイン','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('50','エコーパルスEP-500','10','高精度な距離測定を可能にする超音波センサー障害物回避や位置調整に役立つ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('6','サイレントウィンド','2','低騒音設計の高効率プロペラ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('7','ターボブースト','2','高速回転に適した強化プラスチック製','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('8','ネオンフライト','2','夜間飛行用の発光プロペラ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44'),('9','ダブルブレード','2','二重構造で安定性を向上させたプロペラ','10','1','0','2024-01-23 00:44:44','2024-01-23 00:44:44');
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

-- Dump completed on 2024-02-23 16:32:33
