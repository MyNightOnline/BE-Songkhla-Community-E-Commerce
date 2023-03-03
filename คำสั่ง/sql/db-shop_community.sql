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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (21,'แปรรูปผลิตภัณฑ์ลูกหยี 3','เลขที่ 72 หมู่ที่ 3 ถนน - ตำบลท่าประดู่ อำเภอนาทวี จังหวัดสงขลา','078349151','5-90-04-06/1-0001','นาทวี','ท่าประดู่',3,21),(22,'ขนมอบและผลไม้หยีบ้านดอนขี้เหล็ก','เลขที่ 72 หมู่ที่ 5 ถนน ควนหินดอนขี้เหล็ก ตำบลพะวง อำเภอเมืองสงขลา จังหวัดสงขลา','074334834','5-90-01-04/1-0021','เมืองสงขลา','ทุ่งหวัง',2,22),(23,'กลุ่มสมุนไพรสามราศี','เลขที่ 34 หมู่ที่ 5 ถนน ตำบลคลองกวาง อำเภอนาทวี จังหวัดสงขลา','017329600','5-90-04-10/1-0002','นาทวี','คลองกวาง',2,23),(24,'กลุ่มแม่บ้านเกษตรกรบ้านคลองฉนวน','เลขที่ 11 หมู่ที่ 5 ถนน ชุมพล-เกาะใหญ่ ตำบลชุมพล อำเภอสทิงพระ จังหวัดสงขลา','062890377','5-90-02-05/1-0001','สทิงพระ','ชุมพล',2,24),(25,'แม่บ้านเกษตรบ้านบ่อใหม่','	เลขที่ 115/30 หมู่ที่ 3 ถนน ตำบลจะทิ้งพระ อำเภอสทิงพระ จังหวัดสงขลา','0867411667','5-90-02-04/1-0001','สทิงพระ','จะทิ้งพระ',2,25),(26,'กลุ่มปุ๋ยชีวภาพบ้านยางงาม','เลขที่ 97/2 หมู่ที่ 10 ถนน ตำบลท่าช้าง อำเภอบางกล่ำ จังหวัดสงขลา','0899782179','5-90-14-02/1-0004','บางกล่ำ','ท่าช้าง',2,26),(27,'กลุ่มแม่บ้านบ้านดอนคันใต้','เลขที่ 32 หมู่ที่ 7 ถนน ตำบลคูขุด อำเภอสทิงพระ จังหวัดสงขลา','072997432','5-90-02-07/1-0001','สทิงพระ','คูขุด',2,27),(28,'แม่บ้านเกษตรกรบ้านชะแม','เลขที่ 39/1 หมู่ที่ 6 ถนน สงขลา-ระโนด ตำบลดีหลวง อำเภอสทิงพระ จังหวัดสงขลา','074486294','5-90-02-04/1-0002','สทิงพระ','ดีหลวง',2,28),(29,'test-shop-99','99','099','9-99','เมืองสงขลา','บ่อยาง',1,32),(30,'กลุ่มแม่บ้านเกษตรกรเจริญผลพัฒนา','เลขที่ 17 หมู่ที่ 7 ถนน ตำบลตะโก อำเภอทุ่งตะโก จังหวัดชุมพร','077536203','5-86-08-03/1-0008','--- เลือกอำเภอ ---','--- เลือกตำบล ---',1,33),(31,'กลุ่มแม่บ้านเกษตรกรเจริญผลพัฒนา v2','เลขที่ 17 หมู่ที่ 7 ถนน ตำบลตะโก อำเภอทุ่งตะโก จังหวัดชุมพร','077536203','5-86-08-03/1-0008','เมืองสงขลา','บ่อยาง',1,34),(32,'test-shop98','98','098','98','สทิงพระ','กระดังงา',1,35),(33,'การบ้าน','146','0684215557','2-4','เมืองสงขลา','บ่อยาง',1,36),(34,'test-shop-97','97','097','97','สทิงพระ','คลองรี',1,37),(35,'shop-96','96','096','96','จะนะ','ป่าชิง',1,38),(36,'shop-95','95','095','9-5','เมืองสงขลา','บ่อยาง',1,39),(37,'ฟหกฟห','ฟฟ','','','','',1,40),(38,'shop test 02','','','','เมืองสงขลา','เกาะแต้ว',1,41),(39,'Shop-003','123/2','0622199310','2-44523-3545','เมืองสงขลา','บ่อยาง',1,42),(40,'regShop01','1/146','0622199310','2-20-223','บางกล่ำ','ท่าช้าง',1,43);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-03 11:50:22
