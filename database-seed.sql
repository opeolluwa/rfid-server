-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: sandy_moon
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.3

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
-- Table structure for table `rfid_attendance`
--

DROP TABLE IF EXISTS `rfid_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfid_attendance` (
  `student_id` varchar(255) NOT NULL,
  `week_1` tinyint DEFAULT '0',
  `week_2` tinyint DEFAULT '0',
  `week_3` tinyint DEFAULT '0',
  `week_4` tinyint DEFAULT '0',
  `week_5` tinyint DEFAULT '0',
  `week_6` tinyint DEFAULT '0',
  `week_7` tinyint DEFAULT '0',
  `week_8` tinyint DEFAULT '0',
  `week_9` tinyint DEFAULT '0',
  `week_10` tinyint DEFAULT '0',
  `week_11` tinyint DEFAULT '0',
  `week_12` tinyint DEFAULT '0',
  `last_seen` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfid_attendance`
--

LOCK TABLES `rfid_attendance` WRITE;
/*!40000 ALTER TABLE `rfid_attendance` DISABLE KEYS */;
INSERT INTO `rfid_attendance` VALUES ('02db2534',1,1,1,1,1,1,1,1,1,0,0,0,NULL),('2af3723b',1,1,0,0,1,1,1,1,1,0,0,0,'2022-01-11 03:57:58'),('3afc5459',1,1,1,1,1,1,1,1,1,0,0,0,NULL),('d741e019',0,1,0,1,1,1,1,1,1,0,0,0,NULL),('fa834758',0,1,1,0,1,1,1,0,1,0,0,0,NULL);
/*!40000 ALTER TABLE `rfid_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfid_auth`
--

DROP TABLE IF EXISTS `rfid_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfid_auth` (
  `id` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfid_auth`
--

LOCK TABLES `rfid_auth` WRITE;
/*!40000 ALTER TABLE `rfid_auth` DISABLE KEYS */;
INSERT INTO `rfid_auth` VALUES ('03e3063a-828f-4d03-8494-55ccb216096b','arowoloip','$2b$13$a3rXM5XK1UimHZd/cl8rou3/QX7gk3JXUi49LkF9aLtSuBmrGom6y','2021-12-30 00:23:01'),('0ac5e651-8e31-4aec-8c31-d38b64677bd0','ayobamieo','$2b$13$.WhiqnbW78uA4FOmVy.3VOKPdg23m7ZZrglxnpU6j0eEffwUi.cyG','2021-12-30 00:23:12'),('0f97ad57-44a9-4b50-a12a-7bed24c9eb07','owususb','$2b$13$IiHGIbdrFYi6Nr4we8.0ouVePpXnrb4qZAZKLNnwOn4AY3dI8K/2O','2021-12-30 00:17:05'),('136fe96c-0448-48e9-8bf3-a1427d8fd459','adefuyeeo','$2b$13$faF.RyIVSCLJJGcYsAiM6.5aMpVhEysLbolAQTLz9YrgNz313NIQS','2021-12-30 00:21:36'),('163caadf-136f-4eb4-b3e1-96685c117fd7','akintoyemo','$2b$13$KqmFp3paR2JhS1IV85g.gentXrdmUcArF9vkf9yTlU3eOC6KxNccu','2021-12-30 00:21:23'),('163fc735-9934-4903-9322-b01c037123ee','adekoyaeo','$2b$13$v2vaQDpnVn37tvN2SmBWROD7Fe8t7GM19MZMDhoco3.aZPhmH0iBS','2021-12-30 00:23:52'),('16a40895-8dea-402d-9cf7-f87ccd5dbc29','kazeemfo','$2b$13$yKlefAt4D0KtwqriMnE55e0rr5Icuw8XbAgDTBoEhMdsXUVYiccR.','2021-12-30 00:21:47'),('1fc377c2-3107-4547-be78-5594d30e0f6f','adeoeao','$2b$13$qMMJehjciWZAFj4DxKHXVeB/2xydUBHPAJmz5eEUnNyVb1cbMik82','2021-12-31 20:05:43'),('2e3e9e5e-7312-4acc-9a2c-68531855f494','lawalqo','$2b$13$31PlIjPmw5O1t/R/2yLzO.vT8dpUJeqbnVgbTXf5xYtwGNx5uHxru','2021-12-30 00:22:27'),('37b81f3b-10e1-4490-b8ed-7481bd59f2d6','adeniyiia','$2b$13$c5ouvfZPELuQJcc4oIzvL.9Gm0P0jKiHUEvyr8zVC5ppf2AR3EJim','2021-12-30 00:22:09'),('3a96e6ad-5dd0-445c-aa59-ba74efe9facf','adeoyeao','$2b$13$hYQ6drPIlQEMNQW7aDoki.MFCpP26fjdaPzhQkVxKC7nt9WXx..KO','2021-12-30 00:10:38'),('40572fe8-bc68-41f7-8088-da9bc16768f0','morinsa','$2b$13$w4Z3gSsrpGSn7wP6vJOFLOIngeM0sQpxqQZNf2eiOA0zTSfOLZJCu','2021-12-30 00:22:17'),('448024e4-9790-43a7-a6c6-52fdb20fa07e','olajumokeoi','$2b$13$sFnBJ.9zu73NuiT.Gt4meOFh1Zv0.qFy/lL/1loInrjzSlvqmPx1G','2021-12-30 00:17:18'),('4cbefb53-517a-4cd6-8076-ae84179bb7fc','onanugaom','$2b$13$8nPaI/rYe2jHs1pYG16WvOY7z3JvsWR73G8jCU8O/22oRW1SyUZhS','2021-12-30 00:23:30'),('50b68238-3314-4dc9-822e-eaadd28951b3','dipeoluam','$2b$13$Ga/tczvmETrv/225yKf7wugjeTlkEGxsyxQ7OHiH40lLAiVqb1VzC','2021-12-30 00:11:38'),('52da7420-0e19-4480-8b14-1149761545df','durojayeto','$2b$13$cASK3ikcUErxm7cjEMDK5OEN3UuKHaEFJUaVq4U.TBM9X6p/ax4au','2021-12-30 00:18:31'),('6644142e-c3b7-4bf4-be5f-cc339dfe2c21','drizzle','$2b$13$Kk9sA/KqeWt.RfTLrXpXy.ViR/tmAT1ScY3NvYOPfqs4tLEApy3Ny','2021-12-28 21:59:06'),('6b1a6dad-af7e-41be-8af2-77faa213813f','lawalao','$2b$13$y4UcgWfwMI/HojylAEbuDOOJA6oSbPF/J9Pz1pRVkHamTBYI3fz16','2021-12-30 00:14:13'),('6c4c19f3-7395-429c-bd62-abb07e4a70ea','ogbodoeu','$2b$13$sHtcKAUg1f13xpbYfLH4zO6P2jdIJudPPC70zjg9nxg3N2o.chr5O','2021-12-30 00:21:00'),('70906a16-1657-4f8b-a8fc-b2e4d5f0c731','fasholaro','$2b$13$dYGvUjTt2SUYFoCtOsh/M.m3kU6jE/fTNKliLt6m1Xj.96T.hWbZC','2021-12-30 00:22:35'),('7e1a941b-e538-4085-ad4b-e594d6b5286e','imhagbeeo','$2b$13$ZLDjZcg9MLGacGLxc4nT0.KHjxXbD4jqslFJo5X4pT3L11qO06l72','2021-12-30 00:18:55'),('80609cae-8001-45e8-b768-7ad6609df6b4','adesokanra','$2b$13$kIgusCJiGmh/IKensHAPg.TrEmE4c8GACXGdjUabXUcai51m.N1z6','2021-12-30 00:22:53'),('8b7f0824-5ae3-4954-a51c-eecea6f52600','ojopo','$2b$13$0gaH1wR58g1R98JSQHkdRu/BeUOrZQXE4HwK4xy6qiPZUoYISf1oy','2021-12-30 00:20:49'),('8fe76666-c910-4f71-8124-62575609d439','omotosoao','$2b$13$O208HEoEmm2sOF1CAj5tl.XlbTUNdVUv/XJ5EsqL0Gh85jaeJQqNW','2021-12-30 00:18:00'),('95c13f01-6e35-4795-a9d0-30249c014fa0','onabanjopo','$2b$13$C0Di4q1ERCafOBigVYqK6OeJlKEzlDRKqFE60ZKeXJrVzQ7dDs9QW','2021-12-30 00:23:39'),('968ede2f-18d8-43ba-a941-e7c1a193d749','olasheindejs','$2b$13$u9PRMtjq37Yuz195Ym4qve79o7Rb.9pBjYMkUnNHR6QzJfpsYFZtq','2021-12-30 00:18:43'),('9cdbe4ea-2d90-4871-9f5a-86db01df20ac','odunukanaa','$2b$13$Hpf7Dp2bjZsNfRHHrWye5e5KRsS5dDZv/8JvTDrhLjRef0kGBw8QO','2021-12-30 00:17:32'),('aabce2ae-54e3-4a17-bb0d-54a3524463fb','bolarinwaea','$2b$13$wdktWnytoKC3GcSmsMvvnub62EOunic/1pseBqtlKyDxUToBu7pKS','2021-12-30 00:17:46'),('b33880b0-4da5-4d9a-8d95-c0fa0b89cf10','onajinrinkv','$2b$13$h8NY/ssrsMF7a.l9K9ekj.e.vCtd3PECDZLZHQWih5RWT3fhbXC9.','2021-12-30 00:13:10'),('b9f289c0-036d-42de-a814-79f54d6a7f2d','admin','$2b$13$Phr7TTbmk9SViAx6ZeZI1eNMtsJkytWhmqsiF7cHuMnzmcB3jKEze','2021-12-27 21:45:01'),('c5724685-7ee1-4b75-b506-0b93cf745056','maximus','$2b$13$ykleSNVu5IErwwtQyTmUOe/lt3NXbUinQdEljiOItfertbKCIvVsC','2021-12-28 21:58:07'),('ca48263c-3b2c-4833-bf58-5774e437d4ca','faladeov','$2b$13$nkMyJN.vsRgnWyFGxKbvQ.JZtWpjKal7VDau7GuPB2TiwPfwVfwAu','2021-12-30 00:22:00'),('cc89feae-49d3-4d6e-8d91-0720e58111c4','adebisiib','$2b$13$BZQQf3z.3Z3LqttOjz3gheOTyTmlMQMsCV6UxwYIJ7AqsNqVrqtdK','2021-12-30 00:13:45'),('d015fc35-c62d-45d6-a58c-8f33bfd4d4b3','olorunnisholako','$2b$13$JalWohlFQOjt9hs3XRko6eo1pC.3w5MSXCDlTm7yiECwtBzveaNDq','2021-12-30 00:16:51'),('f921a735-c3bd-4932-a96d-39fde16f8725','ojoeo','$2b$13$ObuNqNxTqIZ9LMsLdiksWeLWeDRmMND.i0H1gxc24Pj.OeWC3Uxxe','2022-01-06 13:41:04'),('fa46c2c9-3b8e-4de3-96f4-38be944e9ae5','kolawolest','$2b$13$WHVw1vJDoSfZjmMx7WBLhefoIUPnFCwnXyfEHjjDZCFPW4fKT1dUS','2021-12-30 00:22:42'),('fb1248b4-cf69-4f0e-9477-711a57d99512','oyebanjiaa','$2b$13$6r67hRc/fB5Q6ZzsSonS0utKwWLHrSPsSOo/lOksIoEzRGRgFHf6O','2021-12-30 00:21:10'),('fd06ae59-6996-41cf-96a0-9cf6fefe6ef0','hassanbr','$2b$13$SvsU0m2J5fJozHaEomosmOvf9bGXeYiMrzekhH2bPPdcmmwv85IyC','2021-12-30 00:23:21'),('fdb3c9b9-15ab-4e98-bf84-570cc6e5949e','olorunnisholato','$2b$13$rrCQJBljl3o0LzhaZL2RweAAJQ0jRD0aQEig3VQQyKMdg0W9Ptd4.','2021-12-30 00:16:34');
/*!40000 ALTER TABLE `rfid_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfid_student_information`
--

DROP TABLE IF EXISTS `rfid_student_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rfid_student_information` (
  `student_id` varchar(255) NOT NULL,
  `matric_number` int NOT NULL,
  `student_first_name` varchar(255) NOT NULL,
  `student_last_name` varchar(255) NOT NULL,
  `student_middle_name` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) NOT NULL,
  `last_seen` datetime DEFAULT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `student_gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `matric_number` (`matric_number`),
  UNIQUE KEY `student_email` (`student_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfid_student_information`
--

LOCK TABLES `rfid_student_information` WRITE;
/*!40000 ALTER TABLE `rfid_student_information` DISABLE KEYS */;
INSERT INTO `rfid_student_information` VALUES ('02db2534',20181684,'onanuga','oreoluwa','micheal','onanugaom.18@student.funaab.edu.ng',NULL,'2021-12-26 20:20:41','male'),('2af3723b',20183210,'onabanjo','peter','olamide','onabanjopo.18@student.funaab.edu.ng',NULL,'2021-12-26 20:28:29','male'),('3afc5459',20181681,'olorunnishola','taiwo','oluwadamilola','olorunnisholato.18@student.funaab.edu.ng',NULL,'2021-12-26 20:28:29','female'),('d741e019',20181659,'falade','vincent','michael','faladeov.18@student.funaab.edu.ng',NULL,'2021-12-26 20:28:29','male'),('fa834758',20191661,'bolarinwa','emmanuel','ayomide','bolarinwaea.19@student.funaab.edu.ng',NULL,'2021-12-26 20:28:29','male');
/*!40000 ALTER TABLE `rfid_student_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17 11:53:20
