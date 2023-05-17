CREATE DATABASE  IF NOT EXISTS `db-shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db-shop`;
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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `commu_id` int NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `back_account` varchar(10) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (7,24,'ธนาคารกรุงไทย','9013585906','รดิศ ลำสุณีกาญ 123'),(8,24,'ธนาคารทหารไทยธนชาต','9012541254','รดิศ ลำสุณีกาญ'),(9,24,'ธนาคารไทยพาณิชย์','2022221211','รดิศ ลำสุณีกาญ'),(10,24,'ธนาคารทหารไทยธนชาต','4568585877','รดิศ ลำสุณีกาญ52');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'การแปรรูปและผลิตภัณฑ์อาหาร'),(5,'ผลิตภัณฑ์ผ้าทอ/เสื้อผ้า'),(6,'เครื่องจักสาน'),(7,'ดอกไม้ประดิษฐ์'),(8,'เครื่องจักรกล'),(9,'ของชำร่วย/ของที่ระลึก'),(10,'ผลิตภัณฑ์สมุนไพร'),(11,'เครื่องดื่ม'),(12,'เครื่องประดับ/อัญมณี'),(13,'เครื่องไม้/เฟอร์นิเจอร์'),(14,'เครื่องหนัง'),(16,'เครื่องปั้น'),(17,'สิ่งประดิษฐ์จากโลหะ'),(45,'การผลิตปัจจัยการผลิต'),(46,'การผลิตพืช'),(47,'การผลิตปศุสัตว์'),(50,'การผลิตสินค้าอื่นๆ'),(53,'การผลิตประมง');
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
  `person` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `regis_code` varchar(20) DEFAULT NULL,
  `amp` varchar(30) DEFAULT NULL,
  `tam` varchar(30) DEFAULT NULL,
  `confirm_status` int DEFAULT NULL,
  `users_commu_id` int DEFAULT NULL,
  PRIMARY KEY (`commu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (21,'แปรรูปผลิตภัณฑ์ลูกหยี 3','นางยุพิน ขวัญจินดา','เลขที่ 72 หมู่ที่ 3 ถนน - ตำบลท่าประดู่ อำเภอนาทวี จังหวัดสงขลา','078349151','5-90-04-06/1-0001','นาทวี','ท่าประดู่',0,21),(22,'ขนมอบและผลไม้หยีบ้านดอนขี้เหล็ก','นางสาวมาหรีหย๊ะ สายสลำ','เลขที่ 72 หมู่ที่ 5 ถนน ควนหินดอนขี้เหล็ก ตำบลพะวง อำเภอเมืองสงขลา จังหวัดสงขลา','074334834','5-90-01-04/1-0021','เมืองสงขลา','ทุ่งหวัง',3,22),(23,'กลุ่มสมุนไพรสามราศี','นางปราณี ไหมแก้ว','เลขที่ 34 หมู่ที่ 5 ถนน ตำบลคลองกวาง อำเภอนาทวี จังหวัดสงขลา','017329600','5-90-04-10/1-0002','นาทวี','คลองกวาง',1,23),(24,'กลุ่มแม่บ้านเกษตรกรบ้านคลองฉนวน','นางดำ คล้ายสีนวล','เลขที่ 11 หมู่ที่ 5 ถนน ชุมพล-เกาะใหญ่ ตำบลชุมพล อำเภอสทิงพระ จังหวัดสงขลา','062890376','5-90-02-05/1-0001','เมืองสงขลา','บ่อยาง',1,24),(25,'แม่บ้านเกษตรบ้านบ่อใหม่','นางบุญธรรม บัวแก้ว','	เลขที่ 115/30 หมู่ที่ 3 ถนน ตำบลจะทิ้งพระ อำเภอสทิงพระ จังหวัดสงขลา','0867411667','5-90-02-04/1-0001','สทิงพระ','จะทิ้งพระ',0,25),(26,'กลุ่มปุ๋ยชีวภาพบ้านยางงาม','นายกฤตภาส สนิทมิสโร','เลขที่ 97/2 หมู่ที่ 10 ถนน ตำบลท่าช้าง อำเภอบางกล่ำ จังหวัดสงขลา','0899782179','5-90-14-02/1-0004','บางกล่ำ','ท่าช้าง',1,26),(27,'กลุ่มแม่บ้านบ้านดอนคันใต้','นางสมใจ รุ่งเรือง','เลขที่ 32 หมู่ที่ 7 ถนน ตำบลคูขุด อำเภอสทิงพระ จังหวัดสงขลา','072997432','5-90-02-07/1-0001','สทิงพระ','คูขุด',2,27),(28,'แม่บ้านเกษตรกรบ้านชะแม','นางประทีป ศรีเรืองรอง','เลขที่ 39/1 หมู่ที่ 6 ถนน สงขลา-ระโนด ตำบลดีหลวง อำเภอสทิงพระ จังหวัดสงขลา','074486294','5-90-02-04/1-0001','สทิงพระ','ดีหลวง',0,28),(60,'ร้านค้าสงขลา01','undefined','111/12','0622199310','5-86-08-03/1-0008','เมืองสงขลา','บ่อยาง',1,64),(61,'วิสาหกิจชุมชนบ้านเราเอง','พุธ ส่ง','142/47 หมู่ 1 ...','0810690690','5-86-08-03/1-0008','เมืองสงขลา','เกาะยอ',1,65),(62,'กลุ่มแม่บ้านเกษตรกร','รดิศ ลำสุณีกาญ 2','142','0255144584','5-86-08-03/1-0008','นาหม่อม','พิจิตร',1,66);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (2,26,35,1,200),(7,27,35,1,200),(8,28,34,2,250);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order_status` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `delivery_price` int DEFAULT NULL,
  `tracking_number` varchar(20) DEFAULT NULL,
  `total` int DEFAULT NULL,
  `users_id` int DEFAULT NULL,
  `users_commu_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (26,'รดิศ ลำสุณีกาญ','0622199310','146/5',NULL,'2023-04-03',3,200,45,'12345678910',245,3,24,1),(27,'รดิศ ลำสุณีกาญ','0622199310','146/5',NULL,'2023-04-30',0,200,45,NULL,245,3,25,1),(28,'รดิศ ลำสุณีกาญ','0622199310','146/5',NULL,'2023-04-30',3,145,45,NULL,190,3,24,1);
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
  `order_id` int DEFAULT NULL,
  `payment_image` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,14,'https://firebasestorage.googleapis.com/v0/b/skru-project-c1214.appspot.com/o/payment%2Fslip_1.jpg?alt=media&token=8435916b-32ab-47b0-b584-7b023d0f02cd'),(2,15,NULL);
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
  `image_1` varchar(600) DEFAULT NULL,
  `image_2` varchar(600) DEFAULT NULL,
  `image_3` varchar(600) DEFAULT NULL,
  `users_commu_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'น้ำตาลแว่น',130,10,3,1000,'https://cf.shopee.co.th/file/1a9ba47efbbf28f748584ae7da08294f','https://oer.learn.in.th/search_detail/ZipDownload/152941','https://bit.ly/419GrYP',24,4),(34,'แอปเปิ้ล 2024',125,22,0,10,'https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1681950127021_apples-143457_1920.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=jkaAmS0XvcgqFKgCVB8GNeilqk%2BhLRymvY1SQQj59vYtTcD%2FvlKfREYjc1M5bsSEOiQfwiUuJpvrFXkf3RURnO%2BkKanUQQ9BDNl5wwqaP4t6M66DOatM%2BQWo67NhvOQfxuVruv97M3A6rnJlnj%2BoVWqM6iLECuFIwL3YADmyit8C3%2FK4KMvPhncoroeFrta35VeFUdvrSbBOB8qIu39u7S4pii3ckW3LQ7a%2B0olxDyAVkLuQGvHvmjcaykErNVWckuhRhC3qujan9mFycNXjs1119CcfC3k0W3%2BL9Xzm4W0D7DjoZhA0J5zJtZpAB05QMVe4KoBvoweqRPUgzkwSzQ%3D%3D','https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1681950127025_apples-1253477_1920.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=JoVtp%2FfOeCCFXsUDzaKvlmG6LlPvAwt8LXj3TlBAWm%2FslXnROhn5WGqFbTdeDqKndJBALTLfVTxy6upXSe8t8NOrpjB1ZOZpESeGwA9KHkHOpv4n%2B6fwUEhF0AkWeB6AGM1bqANdFl0F0NLLm4vcsSfd55ZzJ%2B9GJEV6RvKmwZOgcF6jZhSDExLz%2BjweYK7H52%2F38Y2TGeSsv%2F1pJnT3Mva4fvVPLgMyTR8X4g2v%2BxnKoI%2FjInXDf9ntoC5DV8kLswtD23FLLfXCdDLPfcfo7nTC8BMF5hQ14Q1vJmTSN%2BB9jQD0OPjx8Rnudw36feYpyDS4ipzK%2BGJey0J%2B%2BkTcRw%3D%3D','https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1681950127026_apples-1253432_1920.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=tmKECeh4%2By0IlQ3StlbUyQYOAYlIgKd%2FsJkDPYOwmWrCTekB6%2B0rOnclSj23xKtVWknOlJZB08Uu334UHbwIKyWdNc7h39YruTY9G0eAJybZZu9MIuO5I9%2F1uvnIvbwXSf%2Fdybb8L4T5zeyFEJVAu378AzJqnbJjkvZ9cXHPkka1yoP4TOcwTVFkdT45A6C70125NpW16yLvKVvft33mFuz6PzL4q3UK11%2Fc1%2FSF%2F%2BSgE04gqYHTlYS4y0AXnZBnX63AJIq5YhjPwKVcIuOKX5z6TEkfcj%2F0IPU0Dgah3nbu9T0%2F8ZQP2CYp6dOXy6Hcvv%2F6Q9o6Pgvs07qoyAQbWA%3D%3D',24,10),(35,'มะม่วงหวานเปรี้ยวเค็ม 2012',500,15,0,120,'https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1682158800487_mango-1.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=MvutJfUe0LHDJjG4vCcvlLhI1vtfeJ4rT9DLMcAYdAvcKIcMy6C2YwoU%2BB05tlP3iIIFlgmkmqGalH7EhQUWvdPvLOxboneqKxbkmEjjMxUTxFvvCsJenCD6%2FpHqicAGuI1kAxY83nI8z0djUM48x4a%2F5V8HXuk%2FKMJRoese6Okc1zpdoUgQapcTLPrx0IEm%2FYkK5ybMH7Z1lo6RMj%2F%2BoIjGWQztjhZfkiQWX2c8I9kIRx7Va80y%2FMGuiIVzRtuIZCxYqT3cHZV4vldRtI%2Fc%2BpLG8PopQXordtcwhZS9Cn40oilrA1qQkmkFqnldNAPHBB7IEDdPfQPic6FB8lUjTQ%3D%3D','https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1682158800492_mango-2.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=YPZj8YvhVEZ%2BaAHkSdoJfBPZ483rJTQMDejDkX2m4Gz8vN3G5UeYJQb6D%2BhUuZxhTJS9uRXMMOyw3pMq9%2B11y%2BpzcgS15JhKAlVOK9BDu6hpBy9n565JuRXD9jF1wC3f9HNl9UhdhyGX86jECEeFt8IY4t1er4Lum%2BMIU6SU6vprXDd6N%2BsZYsjt7gUY8EEWEbmt936hBkAw7VmgcPcObKett4Q2PgvB2sqoW%2FpKoo94ycH2CNqQCS8TRWmsy1HRuBY2YMG5cQ4hrVzFTTHI6ePwTSacEW9BnlVtSag%2F%2BxjSNAFfcMUcozrSnQ%2FNN%2B8cWlmIy2gFN2lCi1rRvnuufg%3D%3D','https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1682158800493_mango-3.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=qFnRL%2BeH%2FZKp2cCiTHAOpA9DvAplj6S9f01L6Kcs2fcou5JYRbzhY%2FNY8iCrtK5F4v13raxaxEzpOdGJuMkZCbSbwOpUVSL%2BEXqgPx%2FIX%2FZ4Lyq%2BybNHQzDigoUHUbHgut8w5nu3ESrKiEncJltIvMzbDh6hR42QV6c%2FXqNN18sEtzn3nGcIEAEDWbDB20Ve0GLUNGqSXcF8Tf%2FQqXv96RTrJGMBKLNgYxltbzdgNXBGL3LpCMOcQ3TpktUVFsx60LvuiRnSJK5wrSiKrQMwqXahv0Cbo3rWQ%2BuhZmx3j6G4sWigZm7WGRRVAEjd%2FYb5VyTIQw7FXkURdN96lE99RQ%3D%3D',24,9),(37,'มะพร้าว',120,12,0,120,'https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1683534076714_coconut-1.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=QstsFsTU8ignmSONkmPdnrQHUfT%2FlSqmfgrcc7L96YIwIAgo7WbRCTHNS9Z%2BoDKILn7OYXfHMOAwcL%2BhHV23nesxsmxRTG%2BMWN6Z%2B8VOUPOgv%2FuiMJMQQWO9MwCH1NW%2BbEY1REtCN2%2B18AbG1CbV8tyEFyiU5aWqf6f037WBo3SLF56vvXq4dVo4QArpdxv%2BdUuRIMJ0sJAacrCTp%2FpkVJMDVRbJ37s26N54NDnfP2HsFgXLxTAxYVLlSyrCl7C9Lt7r3zdpsfySevOQeDZmG3gNmGAY8FVIzm7LRU2biNrPCfw6m3ts37ucvS9ErN%2Fn8VblcyksWsGbZh9jKH7ebg%3D%3D','https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1683534076718_coconut-2.webp?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=qOeD2JwRVTmdwckn7SCcqYhFIDOkIXVsYN8Wsxb49%2FA1EcBEY5ece4%2BeKMPfael555jzXlJDROHYOvy6oquyw4c4Wfv42gHvkl1AmT3GZ%2FYX7Eoca4vQoNEdf6GW9I%2BLLjAsqbYt%2BlQ7wV%2Fsw0SBzSBpMlmZCnTm0gKymz0sALHmSJDqQI5%2B2Vm3x3iOdSm%2FkERQbBA0e1OLKiLpE2nRJa5tf6uCwBEI1of%2FMVRY8nPSAMA7x85CAdmeRcMaItmlW378rQAPLKHj8HRG3ZFUVJyPBanYAvbYhT%2B2h88kLpNFt%2BCAuIBh0d5yo1cOwAs%2B2UcpIrU08f93n8lSae5Zpg%3D%3D','https://storage.googleapis.com/skru-project-c1214.appspot.com/images/1683534076718_coconut-3.jpg?GoogleAccessId=firebase-adminsdk-iuwtq%40skru-project-c1214.iam.gserviceaccount.com&Expires=1710608400&Signature=mwN%2BzipNh%2BZ%2FlXv8QUFCyvjsRNfiK%2BNEmAXVXBVN%2FET%2FPaMnSOy2TTnQaIwlFfqs0RWSRVeXF%2FbO02zWpvLFxcry25Y7dFdsiE7rhQ%2BRV5ipTq7d%2FxtSWAkEjLTPlTPp7XOr5jl84xorpvmo2SAqh90Ty3%2FnVG85gbmoy%2BXyfJ6bYLZpod%2Fn0oEMxjOU5HvJaG55GfWd%2BbewcbfPNTVZ15qJl2JTm12qDQmnKL9Pg%2Bmka0yPUzCAseRnMXzskpqvsB8M0ks9rwrvZkK7zZizldtSuPU7RF%2B%2BLkwMOzUnUgRKHiixpoOnlF7eWqdb0S7fNsPX9%2FgFRPwe7LYyv5B93Q%3D%3D',23,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'user01','$2a$10$.Vs7aGVrNMtKGMdo0PqSQOz0rt9iFwGAcp890563AfYQy.30fhmt6','user 01 v11','0123456678','1/145'),(4,'user02','$2a$10$etnhJnF6S.Ef87VCZyRhqejEoGQNSVWdUFW1uIUmD9yYq9opQ6I0W','user 02','023456789','1/1'),(5,'user03','$2a$10$cUZuUKaVl/DRN8Rfi40RSewPLvw2x0S4YJxzD.71fgTenVXMt21NO','user03','033456789','1/3'),(6,'user04','$2a$10$9JF3znB.nZQko6f7Fdt3OeKi0r39Ys7buY5kcY1yUtvvp2WtLwh0W','user 04','043456789','1/4'),(7,'user05','$2a$10$7OdocTvo4mQpXdMYMG4DXOwtUBHhSIq51MPJn/w9GJDf/mzjex/Kq','user05','053456789','1/5'),(9,'user06','$2a$10$Nen9ZiHotSSJi06alX.aoekmaUC9NMOdvb.2fdatv3Pag70kF447G','user 06','0622199366','06'),(10,'user07','$2a$10$W7rIiL7MkSXlTe83tLjdp.MpGA07pTFCkgZ3.6gfirEl5jGu88gIu','user-07','074460706','07/07'),(11,'stnight','$2a$10$k71TDMWXSuddqHPSBb6A/.pQdnTx8m1VBYVqi5BRquYB53h/WKAz6','รดิศ ลำสุณีกาญ','0622199310','1/123'),(12,'user09','$2a$10$B63V990wUvnneDLAahZaHeF/.52FzFAo6nWbjGcwAe9CVvcVfmcR.','รดิศ ลำสุณีกาญ','0622199310','1/145');
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
INSERT INTO `users_admin` VALUES (1,'mynight','$2b$10$7l7DVRPoeK8kmcvOPa.LmOAYxuK9OWZRx1ZcJiccV5Pg2Z/SoxkW6','รดิศ ลำสุณีกาญ');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_community`
--

LOCK TABLES `users_community` WRITE;
/*!40000 ALTER TABLE `users_community` DISABLE KEYS */;
INSERT INTO `users_community` VALUES (21,'user01','$2a$10$U4PzulpWYvdGuv4dKIyq5OIsyhs.Lc56L/U..vHBLgebZFm8DdXMe','นางอาจิน ขวัญเอียด'),(22,'user02','$2a$10$xiF4qzpS1hbsDkYNaGwG7.HQumKhDmUFQxHm5ynPKaxDMrx5IzWC6','นางสอฝีหยะ สายสะอิด'),(23,'user03','$2a$10$yheT4eEX1b6d6nqKtAWBhuKjIFlPznwynYPtqVuY3rw6OROQMgUoC','นายชัยยันต จันบัว'),(24,'user04','$2a$10$FArQbP1KhcD3CNZoKBzJS.gXAHBoHpGatVfPtW2mgCcPkmdisL5Gm','นางนิตย์ แก้วดีเลิศ'),(25,'user05','$2a$10$rQ0UukMkZvso1CKp7wmEu.wUnK7KcDeE9bmUCzRi8QerGhmEnjsSW','นางเสริญศิริ หนูเพชร'),(26,'user06','$2a$10$SVEm3/7mViG6O8ywRmN39O./x2NzYBrgZFtY7liSURqNLZBLN.gK6','นายวิชาญ ขวัญช่วย'),(27,'user07','$2a$10$moqMsSyANXLIKwjuZMDCIeltFnsJ/AfijXI24aam5YR7EXxgmlhBC','นางดาเนตร มูณีรัตน์'),(28,'user08','$2a$10$QzrntDzNoaH5b4TgLRskqun4J0txB0s65Oq/xA.kUyS5q.uz3pnEm','นางบุญญา ชุมแสง'),(64,'songkhla01','$2a$10$1oxg0jj6d8YYDEvfOovHt.wVFHCBvMQeFyaQov7/InHZTfNtaVXjm','อังคาร'),(65,'auser01','$2a$10$HYueaJKONshP05qJrK2yEOrKUifHyhd9QPUWIgYBH0AqPvWa8FeB2','อังคาร ดี'),(66,'auser02','$2a$10$HYueaJKONshP05qJrK2yEOrKUifHyhd9QPUWIgYBH0AqPvWa8FeB2','รดิศ ลำสุณีกาญ');
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

-- Dump completed on 2023-05-17 18:54:00
