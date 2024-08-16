-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: rbtsystem
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (2,'2024_01_16_083820_create_sgcard__n_a_i_s',2),(3,'2024_01_16_084054_create_sgcard__n_a_i_s',3),(8,'2019_12_14_000001_create_personal_access_tokens_table',4),(9,'2024_01_10_020500_create_roles',4),(10,'2024_01_16_084257_create_sgcard_dprivacyn',5),(11,'2024_01_16_082519_create_sgcard_img',6),(12,'2024_01_17_033539_create_sgcard_nais',7),(22,'2024_01_18_033144_create_sam',14),(31,'2024_01_18_022550_create_sgcard_card',21),(32,'2024_01_18_022101_create_sgcard_nais',22),(33,'2024_01_18_023043_create_sgcard_dprivacy',23),(36,'2024_01_18_020817_create_sgcard_customer',24),(37,'2024_01_19_012419_create_sgcard_customers_table',25),(38,'2024_01_19_013552_create_sgcard_customer',26),(39,'2024_01_19_020332_create_sgcard_customer',27),(40,'2024_01_19_021510_create_image_uploads_table',28),(41,'2024_01_22_061554_create_sgcard_customer',29),(42,'2024_01_22_061723_create_sgcard_dprivacy',29),(43,'2024_01_22_061841_create_sgcard_card',29),(44,'2024_01_22_062050_create_sgcard_nais',29),(45,'2024_01_22_063556_create_sgcard_customer',30),(46,'2024_01_22_063536_create_sgcard_nais',31),(47,'2024_01_22_063542_create_sgcard_card',31),(48,'2024_01_22_063548_create_sgcard_dprivacy',31),(49,'2024_02_06_091348_create_sgcard_customer',32),(50,'2024_02_06_091548_create_sgcard_dprivacy',33),(51,'2024_02_06_091854_create_sgcard_card',34),(52,'2024_02_06_092022_create_sgcard_nais',35),(53,'2024_02_12_022649_create_sgcard_customer',36),(54,'2024_02_12_022929_create_sgcard_dprivacy',37),(55,'2024_02_12_023106_create_sgcard_card',38),(56,'2024_02_12_023214_create_sgcard_nais',39),(57,'2024_02_13_012423_create_sgcard_nais',40),(58,'2024_02_13_013555_create_sgcard_card',41),(59,'2024_02_20_051754_create_sgcard_customer',42),(60,'2024_02_20_052044_create_sgcard_dprivacy',43),(61,'2024_02_20_052218_create_sgcard_card',44),(62,'2024_02_20_052411_create_sgcard_nais',45),(63,'2024_08_10_032718_create_user_role',46),(64,'2024_08_11_142633_create_table_name',47),(65,'2024_08_11_145227_users',48);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14 23:46:50
