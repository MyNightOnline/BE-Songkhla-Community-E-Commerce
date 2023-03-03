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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'user01','$2a$10$.Vs7aGVrNMtKGMdo0PqSQOz0rt9iFwGAcp890563AfYQy.30fhmt6','user 01 v11','0123456678','1/145'),(4,'user02','$2a$10$etnhJnF6S.Ef87VCZyRhqejEoGQNSVWdUFW1uIUmD9yYq9opQ6I0W','user 02','023456789','1/1'),(5,'user03','$2a$10$cUZuUKaVl/DRN8Rfi40RSewPLvw2x0S4YJxzD.71fgTenVXMt21NO','user03','033456789','1/3'),(6,'user04','$2a$10$9JF3znB.nZQko6f7Fdt3OeKi0r39Ys7buY5kcY1yUtvvp2WtLwh0W','user 04','043456789','1/4'),(7,'user05','$2a$10$7OdocTvo4mQpXdMYMG4DXOwtUBHhSIq51MPJn/w9GJDf/mzjex/Kq','user05','053456789','1/5'),(9,'user06','$2a$10$Nen9ZiHotSSJi06alX.aoekmaUC9NMOdvb.2fdatv3Pag70kF447G','user 06','0622199366','06'),(10,'user07','$2a$10$W7rIiL7MkSXlTe83tLjdp.MpGA07pTFCkgZ3.6gfirEl5jGu88gIu','user-07','074460706','07/07'),(11,'stnight','$2a$10$k71TDMWXSuddqHPSBb6A/.pQdnTx8m1VBYVqi5BRquYB53h/WKAz6','รดิศ ลำสุณีกาญ','0622199310','1/123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
