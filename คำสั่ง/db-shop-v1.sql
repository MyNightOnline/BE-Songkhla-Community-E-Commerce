-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db-shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'การแปรรูปและผลิตภัณฑ์อาหาร'),(5,'ผลิตภัณฑ์ผ้าทอ/เสื้อผ้า'),(6,'เครื่องจักสาน'),(7,'ดอกไม้ประดิษฐ์'),(8,'เครื่องจักรกล'),(9,'ของชำร่วย/ของที่ระลึก'),(10,'ผลิตภัณฑ์สมุนไพร'),(11,'เครื่องดื่ม'),(12,'เครื่องประดับ/อัญมณี'),(13,'เครื่องไม้/เฟอร์นิเจอร์'),(14,'เครื่องหนัง'),(16,'เครื่องปั้น'),(17,'สิ่งประดิษฐ์จากโลหะ'),(45,'การผลิตปัจจัยการผลิต'),(46,'การผลิตพืช'),(47,'การผลิตปศุสัตว์'),(48,'การผลิตประมง'),(50,'การผลิตสินค้าอื่นๆ');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `commu_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `regis_code` varchar(20) DEFAULT NULL,
  `amp` varchar(30) DEFAULT NULL,
  `tam` varchar(30) DEFAULT NULL,
  `confirm_status` int DEFAULT NULL,
  `users_commu_id` int DEFAULT NULL,
  PRIMARY KEY (`commu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (21,'แปรรูปผลิตภัณฑ์ลูกหยี 3','เลขที่ 72 หมู่ที่ 3 ถนน - ตำบลท่าประดู่ อำเภอนาทวี จังหวัดสงขลา','078349151','5-90-04-06/1-0001','นาทวี','ท่าประดู่',3,21),(22,'ขนมอบและผลไม้หยีบ้านดอนขี้เหล็ก','เลขที่ 71 หมู่ที่ 5 ถนน ควนหินดอนขี้เหล็ก ตำบลพะวง อำเภอเมืองสงขลา จังหวัดสงขลา','074334836','5-90-01-04/1-0002','เมืองสงขลา','พะวง',2,22),(23,'กลุ่มสมุนไพรสามราศี','เลขที่ 34 หมู่ที่ 5 ถนน ตำบลคลองกวาง อำเภอนาทวี จังหวัดสงขลา','017329600','5-90-04-10/1-0002','นาทวี','คลองกวาง',2,23),(24,'กลุ่มแม่บ้านเกษตรกรบ้านคลองฉนวน','เลขที่ 11 หมู่ที่ 5 ถนน ชุมพล-เกาะใหญ่ ตำบลชุมพล อำเภอสทิงพระ จังหวัดสงขลา','062890377','5-90-02-05/1-0001','สทิงพระ','ชุมพล',2,24),(25,'แม่บ้านเกษตรบ้านบ่อใหม่','	เลขที่ 115/30 หมู่ที่ 3 ถนน ตำบลจะทิ้งพระ อำเภอสทิงพระ จังหวัดสงขลา','0867411667','5-90-02-04/1-0001','สทิงพระ','จะทิ้งพระ',2,25),(26,'กลุ่มปุ๋ยชีวภาพบ้านยางงาม','เลขที่ 97/2 หมู่ที่ 10 ถนน ตำบลท่าช้าง อำเภอบางกล่ำ จังหวัดสงขลา','0899782179','5-90-14-02/1-0004','บางกล่ำ','ท่าช้าง',2,26),(27,'กลุ่มแม่บ้านบ้านดอนคันใต้','เลขที่ 32 หมู่ที่ 7 ถนน ตำบลคูขุด อำเภอสทิงพระ จังหวัดสงขลา','072997432','5-90-02-07/1-0001','สทิงพระ','คูขุด',2,27),(28,'แม่บ้านเกษตรกรบ้านชะแม','เลขที่ 39/1 หมู่ที่ 6 ถนน สงขลา-ระโนด ตำบลดีหลวง อำเภอสทิงพระ จังหวัดสงขลา','074486294','5-90-02-04/1-0002','สทิงพระ','ดีหลวง',2,28);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_ id` int NOT NULL AUTO_INCREMENT,
  `total` int DEFAULT NULL,
  `order_status` int DEFAULT NULL,
  `users_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `delivery_price` int DEFAULT NULL,
  PRIMARY KEY (`order_ id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_ id` int DEFAULT NULL,
  `payment_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `otop` int DEFAULT NULL,
  `gram` int DEFAULT NULL,
  `product_image` varchar(200) DEFAULT NULL,
  `users_commu_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (11,'ลูกหยีปรุงรส',8,15,3,5,'https://smce.doae.go.th/smce1/images/Product/59004061000120061003100732.jpg',21,4),(12,'ขนมกระหรี่ปั๊บ',20,20,0,10,'https://smce.doae.go.th/smce1/images/Product/59001041000220170803155122.jpg',22,4),(13,'สบู่ว่านสมุนไพรสามราศี',30,10,2,10,'https://smce.doae.go.th/smce1/images/Product/59004101000220061030160811.jpg',23,10),(14,'น้ำตาลแว่น',80,10,3,1000,'https://smce.doae.go.th/smce1/images/Product/59002051000120181228101234.jpg',24,4),(15,'กระเป๋าใยตาล',600,5,4,800,'https://smce.doae.go.th/smce1/images/Product/59002041000120061030112048.jpg',25,6),(16,'ปุ๋ยอินทรีย์ชีวภาพ',135,10,0,2000,'https://smce.doae.go.th/smce1/images/Product/59014021000420061109142426.JPG',26,45),(17,'วุ้นลูกตาลกรอบ',80,10,0,1000,'https://smce.doae.go.th/smce1/images/Product/59002071000120061110094315.jpg',27,4),(18,'เมล็ดมะม่วงหิมพานต์เคลือบน้ำตาล',10,15,5,1000,'https://smce.doae.go.th/smce1/images/Product/59002041000220061110110631.jpg',28,4),(19,'ลูกหยีปรุงรส_Item2',8,10,2,10,'https://smce.doae.go.th/smce1/images/Product/59004061000120061003100732.jpg',21,4),(20,'ขนมกระหรี่ปั๊บ_Item2',20,20,2,15,'https://smce.doae.go.th/smce1/images/Product/59001041000220170803155122.jpg',22,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `users_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mynight02','$2b$10$m4P31cDlg1wBy8l5FhItSeSKi7qp0VQZ3OdXr/y5.BTrIfusavCgi','mynight 01','0622199310','146/5 หมู่ 1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_admin`
--

DROP TABLE IF EXISTS `users_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_admin` (
  `users_admin_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`users_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_admin`
--

LOCK TABLES `users_admin` WRITE;
/*!40000 ALTER TABLE `users_admin` DISABLE KEYS */;
INSERT INTO `users_admin` VALUES (1,'mynight','$2b$10$7l7DVRPoeK8kmcvOPa.LmOAYxuK9OWZRx1ZcJiccV5Pg2Z/SoxkW6','mynight 01');
/*!40000 ALTER TABLE `users_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_community`
--

DROP TABLE IF EXISTS `users_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_community` (
  `users_commu_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`users_commu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_community`
--

LOCK TABLES `users_community` WRITE;
/*!40000 ALTER TABLE `users_community` DISABLE KEYS */;
INSERT INTO `users_community` VALUES (21,'mynight007','$2a$10$U4PzulpWYvdGuv4dKIyq5OIsyhs.Lc56L/U..vHBLgebZFm8DdXMe','shop 04'),(22,'user01','$2a$10$VdOsipcj0vgmNRpLnPMny.AK.iRtawJKdIxOhX2Vu4zk1PkAZZSEa','user01'),(23,'user02','$2a$10$yheT4eEX1b6d6nqKtAWBhuKjIFlPznwynYPtqVuY3rw6OROQMgUoC','user02'),(24,'user03','$2a$10$.xdErAwH8FTnstHYVcM/KORkkywck5sZ1grnHCAwC.6jw97l4CY2S','user 03'),(25,'user04','$2a$10$rQ0UukMkZvso1CKp7wmEu.wUnK7KcDeE9bmUCzRi8QerGhmEnjsSW','user 04'),(26,'shop-10','$2a$10$SVEm3/7mViG6O8ywRmN39O./x2NzYBrgZFtY7liSURqNLZBLN.gK6','Shop 10'),(27,'Shop11','$2a$10$moqMsSyANXLIKwjuZMDCIeltFnsJ/AfijXI24aam5YR7EXxgmlhBC','Shop 11'),(28,'shop001','$2a$10$QzrntDzNoaH5b4TgLRskqun4J0txB0s65Oq/xA.kUyS5q.uz3pnEm','shop 001');
/*!40000 ALTER TABLE `users_community` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-14  7:54:10
