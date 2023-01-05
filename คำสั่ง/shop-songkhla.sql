-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shop-songkhla
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'การผลิตพืช'),(2,'การผลิตปศุสัตว์'),(3,'การผลิตประมง'),(4,'การแปรรูปและผลิตภัณฑ์อาหาร'),(5,'ผลิตภัณฑ์ผ้าทอ/เสื้อผ้า'),(6,'เครื่องจักสาน'),(7,'ดอกไม้ประดิษฐ์'),(8,'เครื่องจักรกล'),(9,'ของชำร่วย/ของที่ระลึก'),(10,'ผลิตภัณฑ์สมุนไพร'),(11,'เครื่องดื่ม'),(12,'เครื่องประดับ/อัญมณี'),(13,'เครื่องไม้/เฟอร์นิเจอร์'),(14,'เครื่องหนัง'),(15,'การผลิตปัจจัยการผลิต'),(16,'เครื่องปั้น'),(17,'สิ่งประดิษฐ์จากโลหะ'),(18,'การผลิตสินค้าอื่นๆ');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (11,'Shop My0000000Nsight 001','145','0622199310','001','หาดใหญ่','ทุ่งตำเสา',1,18),(12,'sdasd','sdasd','sdasd','sdasd','นาหม่อม','พิจิตร',2,19);
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
  `product_image` varchar(45) DEFAULT NULL,
  `users_commu_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'การจำหน่ายปุ๋ยผสม,ปุ๋ยเคมี,สารเคมีกำจัดวัชพืช',600,10,3,NULL,1,15),(7,'กล้วยเล็บมือนางอบแห้ง',25,10,5,NULL,2,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_community`
--

LOCK TABLES `users_community` WRITE;
/*!40000 ALTER TABLE `users_community` DISABLE KEYS */;
INSERT INTO `users_community` VALUES (18,'mynight01','$2b$10$tiWPgShTVsZX7yKRaH5WsuRehkvwPHITpy5lpNJEfBKqxJudSkxFq','mynight 011111'),(19,'asdasd','$2b$10$LOZrfpCrVwKbaRHhxCclWefrDiKUZTnVBZNNFFHw4ZcEfqZSuO2Ca','aaa');
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

-- Dump completed on 2023-01-05 11:51:08
