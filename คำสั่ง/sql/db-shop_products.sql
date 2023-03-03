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
INSERT INTO `products` VALUES (11,'ลูกหยีปรุงรส',8,10,3,5,'https://smce.doae.go.th/smce1/images/Product/59004061000120061003100732.jpg',21,4),(12,'ขนมกระหรี่ปั๊บ',20,13,0,10,'https://smce.doae.go.th/smce1/images/Product/59001041000220170803155122.jpg',22,4),(13,'สบู่ว่านสมุนไพรสามราศี',30,10,2,10,'https://smce.doae.go.th/smce1/images/Product/59004101000220061030160811.jpg',23,10),(14,'น้ำตาลแว่น',120,10,3,1000,'https://smce.doae.go.th/smce1/images/Product/59002051000120181228101234.jpg',24,4),(15,'กระเป๋าใยตาล',600,5,4,800,'https://smce.doae.go.th/smce1/images/Product/59002041000120061030112048.jpg',25,6),(16,'ปุ๋ยอินทรีย์ชีวภาพ',135,10,0,2000,'https://smce.doae.go.th/smce1/images/Product/59014021000420061109142426.JPG',26,45),(17,'วุ้นลูกตาลกรอบ',80,10,0,1000,'https://smce.doae.go.th/smce1/images/Product/59002071000120061110094315.jpg',27,4),(18,'เมล็ดมะม่วงหิมพานต์เคลือบน้ำตาล',10,15,5,1000,'https://smce.doae.go.th/smce1/images/Product/59002041000220061110110631.jpg',28,4),(19,'ลูกหยีปรุงรส_Item2',8,10,2,10,'https://smce.doae.go.th/smce1/images/Product/59004061000120061003100732.jpg',21,4),(20,'ขนมกระหรี่ปั๊บ_Item2',20,10,2,15,'https://smce.doae.go.th/smce1/images/Product/59001041000220170803155122.jpg',22,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
