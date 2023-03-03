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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_community`
--

LOCK TABLES `users_community` WRITE;
/*!40000 ALTER TABLE `users_community` DISABLE KEYS */;
INSERT INTO `users_community` VALUES (21,'mynight007','$2a$10$U4PzulpWYvdGuv4dKIyq5OIsyhs.Lc56L/U..vHBLgebZFm8DdXMe','shop 04'),(22,'user01','$2a$10$xiF4qzpS1hbsDkYNaGwG7.HQumKhDmUFQxHm5ynPKaxDMrx5IzWC6','user0102'),(23,'user02','$2a$10$yheT4eEX1b6d6nqKtAWBhuKjIFlPznwynYPtqVuY3rw6OROQMgUoC','user02'),(24,'user03','$2a$10$.xdErAwH8FTnstHYVcM/KORkkywck5sZ1grnHCAwC.6jw97l4CY2S','user 0333'),(25,'user04','$2a$10$rQ0UukMkZvso1CKp7wmEu.wUnK7KcDeE9bmUCzRi8QerGhmEnjsSW','user 04'),(26,'shop-10','$2a$10$SVEm3/7mViG6O8ywRmN39O./x2NzYBrgZFtY7liSURqNLZBLN.gK6','Shop 10'),(27,'Shop11','$2a$10$moqMsSyANXLIKwjuZMDCIeltFnsJ/AfijXI24aam5YR7EXxgmlhBC','Shop 11'),(28,'shop001','$2a$10$QzrntDzNoaH5b4TgLRskqun4J0txB0s65Oq/xA.kUyS5q.uz3pnEm','shop 001'),(32,'mynight99','$2a$10$V7hMw1nLLVcAeCvBlmO05e2WEchEIPJ55MuHpyAsEQTNBVyJhTTIG','รดิศ'),(33,'usershop01','$2a$10$yrumtw5Kp9J83cRZhDLEjORpvyW9hxFgUF.B0sYneHZ0M5ktg2vHq','การบ้านชอป'),(34,'usershop02','$2a$10$SEwB/Sq3Fn7bg2LcnEB5IOEr5USy4C6GJil8xqUm0jrBvg82ljfjK','นางสาวรัชฎาวรรณ ก้อนมณี'),(35,'user98','$2a$10$GuYhNq5KmKEZ3WC9zJ35bOyvqmyXpileuym0Jb.2nR3s3EXajKyRW','test-shop-98'),(36,'asasdasdas11','$2a$10$VavhQ94GC/OIkyVgEMyCZ.2lAT3qUrtnln59Ij3CvpjQlUHo.CMPG','asdasdasd'),(37,'shop97','$2a$10$ij4zhYRiTmoSuckhqnzEeOobebd6lAeyXqqpgKVscKeSkSknO7hTy','test shop 97'),(38,'shop96','$2a$10$KCDEGGkqBw7IzBEHKF0YmuqI7d9yIyBMYq6.Nm6mNNsMzWNK2LpPG','shop 96'),(39,'shop95','$2a$10$GwGmX8j1HRa82F.pLVYtSeV0loakGsEm546bQQbPEKhzewW8jJCNa','shop 95'),(40,'usershop001','$2a$10$tpOPPlAH5I8jSDmAq8LLjum7mdTg8vZOes04k.jLCPDRVvy3hrBoC','รดิศ ลำสุณีกาญ'),(41,'usershop002','$2a$10$ddfZv2u5k5I9jO8tBX6Uqeg5.2uUxJjqb/WVMDraJx09nNy.qaPFy','test002'),(42,'usershop003','$2a$10$TEyaw69Ioj3pAbf2Muf58e9x/yZR70wnv.UNbxQ0pTm5CcN5E558K','Radis Lamsuneekan'),(43,'user001','$2a$10$O58ymNgLu55a41NhF1tbFudOtL/LfNJ9oK34iVK3CO4vXfmwtkORa','รดิศ ลำสุณีกาญ2');
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

-- Dump completed on 2023-03-03 11:50:22
