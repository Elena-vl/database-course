-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `appartment`
--

DROP TABLE IF EXISTS `appartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_number` int NOT NULL DEFAULT '1',
  `appartment_type_id` int NOT NULL,
  `media_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_appartment_appartment_type1_idx` (`appartment_type_id`),
  KEY `fk_appartment_media1_idx` (`media_id`),
  CONSTRAINT `fk_appartment_appartment_type1` FOREIGN KEY (`appartment_type_id`) REFERENCES `appartment_type` (`id`),
  CONSTRAINT `fk_appartment_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartment`
--

LOCK TABLES `appartment` WRITE;
/*!40000 ALTER TABLE `appartment` DISABLE KEYS */;
INSERT INTO `appartment` VALUES (1,806,1,1),(2,1000,1,2),(3,300,2,3),(4,110,3,4),(5,408,2,5),(6,104,3,6),(7,102,1,7),(8,202,3,8),(9,800,1,9),(10,1007,2,10),(11,807,2,11),(12,406,3,12),(13,101,3,13),(14,606,2,14),(15,208,3,15),(16,503,1,16),(17,501,2,17),(18,203,1,18),(19,507,2,19),(20,801,2,20),(21,407,1,21),(22,1005,3,22),(23,209,1,23),(24,706,3,24),(25,809,1,25),(26,506,1,26),(27,308,1,27),(28,303,2,28),(29,600,2,29),(30,602,1,30),(31,509,1,31),(32,502,3,32),(33,808,3,33),(34,608,1,34),(35,504,2,35),(36,1004,2,36),(37,702,2,37),(38,402,2,38),(39,400,3,39),(40,804,2,40),(41,708,2,41),(42,403,3,42),(43,206,1,43),(44,505,3,44),(45,607,3,45),(46,1001,2,46),(47,603,2,47),(48,204,2,48),(49,108,1,49),(50,903,2,50),(51,704,1,51),(52,306,2,52),(53,1003,1,53),(54,703,3,54),(55,207,2,55),(56,205,3,56),(57,701,1,57),(58,905,1,58),(59,301,3,59),(60,909,3,60),(61,1006,1,61),(62,508,3,62),(63,901,3,63),(64,304,3,64),(65,802,3,65),(66,500,1,66),(67,604,3,67),(68,307,3,68),(69,105,1,69),(70,103,2,70),(71,605,1,71),(72,902,1,72),(73,707,1,73),(74,302,1,74),(75,601,3,75),(76,1008,3,76),(77,200,1,77),(78,805,3,78),(79,404,1,79),(80,2,2,80),(81,409,3,81),(82,803,1,82),(83,1,1,83),(84,109,2,84),(85,405,2,85),(86,709,3,86),(87,106,2,87),(88,309,2,88),(89,107,3,89),(90,906,2,90),(91,609,2,91),(92,305,1,92),(93,904,3,93),(94,1002,3,94),(95,1009,1,95),(96,705,2,96),(97,401,1,97),(98,201,2,98),(99,700,3,99),(100,900,2,100);
/*!40000 ALTER TABLE `appartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartment_cust`
--

DROP TABLE IF EXISTS `appartment_cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartment_cust` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cust_date` date NOT NULL,
  `appartment_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `appartment_price` decimal(10,0) NOT NULL,
  `appartment_reserv_rec_id` int DEFAULT NULL,
  `discounts_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_appartment_cust_discounts1_idx` (`discounts_id`),
  CONSTRAINT `fk_appartment_cust_discounts1` FOREIGN KEY (`discounts_id`) REFERENCES `discounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartment_cust`
--

LOCK TABLES `appartment_cust` WRITE;
/*!40000 ALTER TABLE `appartment_cust` DISABLE KEYS */;
INSERT INTO `appartment_cust` VALUES (1,'2014-01-04',82,'2012-09-22','2001-05-31',162394141,81,1),(2,'2018-08-11',91,'1970-10-22','2014-02-09',72485,82,1),(3,'1995-03-30',95,'1972-10-14','1995-10-25',75287,83,2),(4,'2010-06-03',46,'2005-10-18','1999-11-21',90848,84,1),(5,'2016-04-29',31,'2009-10-29','2020-01-31',48502,85,1),(6,'1992-11-29',15,'1982-05-25','1990-12-13',60005,86,2),(7,'2010-10-22',35,'2006-05-01','1979-02-06',37077,87,1),(8,'1988-11-07',12,'1979-07-02','2020-05-02',97513,88,1),(9,'2006-01-26',34,'1986-07-08','1976-09-11',67788,89,2),(10,'1991-05-24',9,'2010-03-30','2011-06-17',88343,90,1);
/*!40000 ALTER TABLE `appartment_cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartment_cust_detail`
--

DROP TABLE IF EXISTS `appartment_cust_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartment_cust_detail` (
  `customer_id` int NOT NULL,
  `appartment_cust_id` int NOT NULL,
  KEY `fk_appartment_cust_detail_customer_idx` (`customer_id`),
  KEY `fk_appartment_cust_detail_appartment_cust1_idx` (`appartment_cust_id`),
  CONSTRAINT `fk_appartment_cust_detail_appartment_cust1` FOREIGN KEY (`appartment_cust_id`) REFERENCES `appartment_cust` (`id`),
  CONSTRAINT `fk_appartment_cust_detail_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartment_cust_detail`
--

LOCK TABLES `appartment_cust_detail` WRITE;
/*!40000 ALTER TABLE `appartment_cust_detail` DISABLE KEYS */;
INSERT INTO `appartment_cust_detail` VALUES (47,1),(92,2),(9,3),(43,4),(32,5),(62,6),(38,7),(73,8),(13,9),(19,10);
/*!40000 ALTER TABLE `appartment_cust_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartment_reserv`
--

DROP TABLE IF EXISTS `appartment_reserv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartment_reserv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `appartment_id` bigint NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_appartment_reserv_customer1_idx` (`customer_id`),
  KEY `fk_appartment_reserv_spr_appartment1_idx` (`appartment_id`),
  CONSTRAINT `fk_appartment_reserv_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartment_reserv`
--

LOCK TABLES `appartment_reserv` WRITE;
/*!40000 ALTER TABLE `appartment_reserv` DISABLE KEYS */;
INSERT INTO `appartment_reserv` VALUES (1,47,78,'2020-01-20','2020-01-31'),(2,42,25,'2020-01-20','2020-01-31'),(3,34,58,'2020-09-03','2020-09-05'),(4,85,47,'2020-11-01','2020-12-01'),(5,2,86,'2021-01-02','2021-01-07'),(6,47,86,'2021-01-08','2021-01-30'),(102,97,5,'2021-02-07','2021-02-08'),(107,93,2,'2021-03-08','2021-03-01'),(118,5,10,'2021-01-08','2021-01-30'),(119,3,94,'2021-01-08','2021-01-30'),(120,5,10,'2021-01-08','2021-01-30'),(121,5,10,'2021-01-08','2021-01-30'),(122,11,6,'2021-01-08','2021-01-30'),(123,21,31,'2021-01-08','2021-01-30'),(125,3,17,'2021-01-08','2021-01-30');
/*!40000 ALTER TABLE `appartment_reserv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appartment_type`
--

DROP TABLE IF EXISTS `appartment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartment_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartment_type`
--

LOCK TABLES `appartment_type` WRITE;
/*!40000 ALTER TABLE `appartment_type` DISABLE KEYS */;
INSERT INTO `appartment_type` VALUES (1,'Single',96881.30),(2,'Double',65664.30),(3,'Double',33942.42),(4,'Double',19743.26),(5,'Family Room',89475.20),(6,'Family Room',32291.51),(7,'Double',32720.19),(8,'Apartament',61761.83),(9,'Family Room',85658.22),(10,'Family Room',30757.89),(11,'Double',64697.51),(12,'Apartament',16523.18),(13,'Apartament',66484.74),(14,'Single',49637.88),(15,'Apartament',28456.65),(16,'Double',3001.00),(17,'Double',48747.34),(18,'Double',73731.53),(19,'Single',49711.45),(20,'Double',14280.23),(21,'Double',94293.92),(22,'Apartament',21801.05),(23,'Apartament',2123.26),(24,'Family Room',55674.80),(25,'Apartament',64398.42),(26,'Double',50866.39),(27,'Family Room',10088.75),(28,'Family Room',80255.80),(29,'Family Room',24303.72),(30,'Single',60075.84),(31,'Family Room',56602.37),(32,'Family Room',64900.59),(33,'Family Room',17777.00),(34,'Family Room',4207.37),(35,'Single',54276.41),(36,'Double',50832.00),(37,'Family Room',18998.00),(38,'Single',16671.42),(39,'Family Room',63170.08),(40,'Single',50163.89),(41,'Family Room',45824.75),(42,'Single',99543.00),(43,'Family Room',9283.93),(44,'Family Room',86957.43),(45,'Family Room',69959.06),(46,'Family Room',91432.95),(47,'Family Room',6792.00),(48,'Single',47715.90),(49,'Double',38145.85),(50,'Family Room',50287.80),(51,'Apartament',96807.52),(52,'Double',8236.29),(53,'Family Room',97814.93),(54,'Single',90092.97),(55,'Double',58581.90),(56,'Family Room',66784.77),(57,'Apartament',80979.88),(58,'Single',75267.21),(59,'Double',6499.65),(60,'Apartament',10345.00),(61,'Single',46673.17),(62,'Apartament',90769.90),(63,'Apartament',11438.00),(64,'Single',90694.42),(65,'Double',42563.64),(66,'Double',72186.69),(67,'Single',75092.35),(68,'Apartament',29696.17),(69,'Double',35309.38),(70,'Family Room',78494.46),(71,'Double',16964.64),(72,'Family Room',14551.21),(73,'Apartament',96743.13),(74,'Double',10749.74),(75,'Double',52114.26),(76,'Single',12845.82),(77,'Double',66773.48),(78,'Single',78822.01),(79,'Apartament',19997.90),(80,'Single',66822.05),(81,'Family Room',56619.81),(82,'Family Room',97548.00),(83,'Double',91357.64),(84,'Single',91633.31),(85,'Single',48588.30),(86,'Double',44372.00),(87,'Apartament',93008.35),(88,'Double',44383.78),(89,'Single',13997.00),(90,'Family Room',42004.03),(91,'Double',17875.18),(92,'Single',20717.25),(93,'Apartament',92138.00),(94,'Double',2750.09),(95,'Family Room',11869.34),(96,'Family Room',65350.50),(97,'Apartament',57210.84),(98,'Family Room',75467.47),(99,'Apartament',75479.39),(100,'Family Room',31107.91);
/*!40000 ALTER TABLE `appartment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `passport` varchar(45) DEFAULT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Luz Volkman','4504949125',7942535820),(2,'Merritt Greenholt','4504761407',7905077270),(3,'Mohammad Herman','4504452777',7949846299),(4,'Wilbert Schroeder','4504171103',7959062561),(5,'Haylie Steuber','4504849988',7913741564),(6,'Erika Tillman','4504119826',7931652257),(7,'Mazie Wyman','4504815841',7952702736),(8,'Dr. Louisa Herman','4504407331',7953316873),(9,'Miss Kathlyn Torp','4504235911',7963383839),(10,'Prof. General Johns','4504104162',7934980742),(11,'Dr. Gavin Wintheiser Sr.','4504022811',7957755538),(12,'Ena Toy II','4504757439',7906063628),(13,'Haven Haag','4504528249',7954958985),(14,'Dr. Betsy Rice','4504168781',7957907897),(15,'Dr. Shanel Veum','4504585194',7994678855),(16,'Miss Jalyn Wehner IV','4504988508',7945312272),(17,'Dr. Caroline Welch','4504536235',7951819355),(18,'Aubrey Sipes','4504285856',7982847538),(19,'Jeanette Swift','4504189864',7926391430),(20,'Fleta Bernier V','4504039577',7954534938),(21,'Dannie Glover','4504069158',7925323085),(22,'Selmer Hills','4504953798',7907583586),(23,'Evelyn Crona','4504573695',7997609922),(24,'Nathan Schaden','4504330750',7973893180),(25,'Mr. Malachi Hickle','4504535954',7934362344),(26,'Dorian Howell','4504171253',7992389809),(27,'Lester Dietrich','4504472712',7980452838),(28,'Jany Becker MD','4504609523',7946873983),(29,'Joanne Miller','4504888309',7924668426),(30,'Miss Madelynn Waters','4504560623',7954754936),(31,'Dr. Erich Marks','4504387406',7925969484),(32,'Crawford Mayert','4504401205',7951714636),(33,'Prof. Abdullah Crist Jr.','4504152883',7960403856),(34,'Prof. Elsie Hauck','4504869486',7964106184),(35,'Dr. Amara Cassin','4504671597',7967937737),(36,'Jack Price','4504809151',7930746707),(37,'Robbie Legros','4504572882',7941307449),(38,'Hosea Hayes','4504790288',7975490423),(39,'Chelsie Conroy','4504601063',7911980431),(40,'Noemie Rohan III','4504243621',7921648567),(41,'Prof. Adolfo Robel','4504320218',7924434780),(42,'Kian Rolfson','4504287572',7903813987),(43,'Dr. Jeffery Gleichner III','4504404324',7905306476),(44,'Marcelo Prohaska','4504760530',7944315521),(45,'Rasheed Ortiz','4504404196',7968546693),(46,'Dr. Khalil Rohan IV','4504078840',7990561683),(47,'Daphnee Rippin','4504013939',7975383290),(48,'Prof. Rosendo Wintheiser DDS','4504432586',7914655074),(49,'Mr. Myrl Anderson Jr.','4504992793',7909500629),(50,'Susanna Rogahn','4504613926',7988213657),(51,'Lorenz Hane','4504690743',7996221650),(52,'Sandrine Glover','4504137553',7919505962),(53,'Darrick Renner','4504439133',7935546580),(54,'Ms. Dawn Krajcik Sr.','4504914562',7969736102),(55,'Enos Wolff','4504705652',7974339413),(56,'Ayana Mohr','4504712705',7914116609),(57,'Prof. Lucie Schowalter','4504005758',7972725922),(58,'Mr. Fritz Christiansen IV','4504322267',7902196082),(59,'Mr. Trevion Smith MD','4504430109',7916781195),(60,'Gene Glover','4504164001',7991143901),(61,'Scarlett Dickinson','4504098433',7988349103),(62,'Prof. Sammy McGlynn Jr.','4504582302',7961713928),(63,'Melvin Franecki','4504543195',7921947998),(64,'Prof. Arnulfo Lemke III','4504660032',7991913852),(65,'Marlee Huel','4504003902',7900753269),(66,'Amya Gibson PhD','4504636293',7977846513),(67,'Ms. Claire Goodwin Jr.','4504344364',7994113099),(68,'Dr. Nickolas Morissette','4504168166',7958918934),(69,'Mr. Jamison Schulist II','4504762019',7995592369),(70,'Jaunita Littel','4504616593',7918518174),(71,'Nigel Parisian PhD','4504144654',7904574852),(72,'Lessie Marvin','4504448003',7953187193),(73,'Francis McGlynn','4504893134',7982237529),(74,'Christy Breitenberg','4504816734',7924933850),(75,'Naomie Smitham','4504003606',7968840725),(76,'Ed Pacocha III','4504070804',7966362382),(77,'Dr. Elnora Conroy','4504260047',7939147132),(78,'Agustina Marvin','4504937951',7997928909),(79,'Kathryne McDermott','4504100850',7906493754),(80,'Brittany Turcotte','4504196418',7943759637),(81,'Adella Schulist','4504008126',7901583653),(82,'Mr. Cade Cruickshank','4504734136',7923416208),(83,'Cindy Osinski DVM','4504919107',7933687915),(84,'Barry Boyle','4504846771',7930869157),(85,'Dorian Dibbert Sr.','4504595515',7983787097),(86,'Allan Lebsack DDS','4504353378',7907055651),(87,'Ramiro Bernhard','4504874827',7973662180),(88,'Prof. Tristin Cremin DVM','4504972716',7995742934),(89,'Dr. Stephanie Halvorson PhD','4504041705',7926078336),(90,'Dr. Kelton Raynor III','4504122108',7930818328),(91,'Norwood Will','4504964865',7992618039),(92,'Mrs. Elsa Steuber Jr.','4504099977',7910724046),(93,'Dr. Fae Collins','4504928462',7942847917),(94,'Therese Quitzon','4504804668',7904743080),(95,'Belle Huel','4504913606',7981283532),(96,'Constantin Dickinson','4504870093',7920688941),(97,'Trey Altenwerth PhD','4504058738',7986040240),(98,'Barry Hills','4504431181',7975860433),(99,'Salvador Zulauf','4504443856',7909029022),(100,'Frederick Dickens','4504625610',7934391359),(101,'Frederick Dickens2','4504949122',7942535822);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_max_booking`
--

DROP TABLE IF EXISTS `customer_max_booking`;
/*!50001 DROP VIEW IF EXISTS `customer_max_booking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_max_booking` AS SELECT 
 1 AS `number_bookings`,
 1 AS `name`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` int NOT NULL,
  `percent` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `condition` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,5,'maxime','9'),(2,15,'cum','6'),(3,10,'magnam','4');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `get_appartment_id`
--

DROP TABLE IF EXISTS `get_appartment_id`;
/*!50001 DROP VIEW IF EXISTS `get_appartment_id`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `get_appartment_id` AS SELECT 
 1 AS `appartment_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(45) NOT NULL,
  `type_media_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_type_media1_idx` (`type_media_id`),
  CONSTRAINT `fk_media_type_media1` FOREIGN KEY (`type_media_id`) REFERENCES `type_media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'http://www.conroy.com/',1),(2,'http://quitzon.com/',2),(3,'http://oberbrunnerstoltenberg.info/',3),(4,'http://www.labadie.com/',1),(5,'http://rice.org/',2),(6,'http://strosinhickle.com/',3),(7,'http://www.boscoaltenwerth.biz/',1),(8,'http://bogan.com/',2),(9,'http://www.emmerich.com/',3),(10,'http://towne.com/',1),(11,'http://wilkinson.org/',2),(12,'http://www.reichelgleichner.org/',3),(13,'http://www.rath.com/',1),(14,'http://www.rippinbernier.com/',2),(15,'http://collins.com/',3),(16,'http://www.homenickjast.com/',1),(17,'http://wiegand.com/',2),(18,'http://www.turcotte.biz/',3),(19,'http://bartell.biz/',1),(20,'http://www.vonbalistreri.com/',2),(21,'http://www.frami.com/',3),(22,'http://www.boyer.com/',1),(23,'http://morar.biz/',2),(24,'http://www.schaden.info/',3),(25,'http://www.pfeffer.info/',1),(26,'http://www.oberbrunner.net/',2),(27,'http://www.yundt.com/',3),(28,'http://www.effertzmills.org/',1),(29,'http://www.trantow.com/',2),(30,'http://www.satterfieldjast.net/',3),(31,'http://www.moen.net/',1),(32,'http://cummerata.com/',2),(33,'http://www.stokes.com/',3),(34,'http://lednercorkery.com/',1),(35,'http://conn.com/',2),(36,'http://paucek.com/',3),(37,'http://www.turcotte.com/',1),(38,'http://durganlegros.com/',2),(39,'http://www.ratke.info/',3),(40,'http://www.hodkiewicz.com/',1),(41,'http://www.kunzehayes.com/',2),(42,'http://wardschuster.info/',3),(43,'http://buckridge.org/',1),(44,'http://www.leffler.com/',2),(45,'http://cristhodkiewicz.com/',3),(46,'http://www.considine.org/',1),(47,'http://skiles.info/',2),(48,'http://www.rath.net/',3),(49,'http://www.boganmosciski.net/',1),(50,'http://brown.com/',2),(51,'http://www.adams.com/',3),(52,'http://yundt.org/',1),(53,'http://www.schaefer.com/',2),(54,'http://shields.com/',3),(55,'http://streich.info/',1),(56,'http://shanahanborer.net/',2),(57,'http://www.lakin.com/',3),(58,'http://hoeger.com/',1),(59,'http://hackettschowalter.com/',2),(60,'http://king.org/',3),(61,'http://www.reichel.com/',1),(62,'http://rutherfordlesch.org/',2),(63,'http://www.gleasonstiedemann.com/',3),(64,'http://baumbach.com/',1),(65,'http://hegmannhomenick.org/',2),(66,'http://www.moenwill.info/',3),(67,'http://www.mccullough.com/',1),(68,'http://www.pourosstiedemann.net/',2),(69,'http://www.daniel.com/',3),(70,'http://www.gerhold.org/',1),(71,'http://www.labadiemayert.info/',2),(72,'http://www.reinger.org/',3),(73,'http://wildermanyost.info/',1),(74,'http://kemmercormier.net/',2),(75,'http://klingking.net/',3),(76,'http://www.hettingeraufderhar.org/',1),(77,'http://www.wisoky.com/',2),(78,'http://www.naderhodkiewicz.org/',3),(79,'http://www.halvorson.com/',1),(80,'http://pfeffer.net/',2),(81,'http://oreilly.info/',3),(82,'http://bailey.com/',1),(83,'http://cassinheidenreich.com/',2),(84,'http://www.goldnerlind.org/',3),(85,'http://www.harber.com/',1),(86,'http://www.torphy.info/',2),(87,'http://donnellyhoeger.info/',3),(88,'http://steuberrau.net/',1),(89,'http://fishernikolaus.com/',2),(90,'http://hagenes.com/',3),(91,'http://www.renner.net/',1),(92,'http://hilpertrice.com/',2),(93,'http://www.hegmannflatley.com/',3),(94,'http://mosciski.com/',1),(95,'http://www.daniel.org/',2),(96,'http://www.waelchi.org/',3),(97,'http://www.raynor.com/',1),(98,'http://johns.com/',2),(99,'http://west.com/',3),(100,'http://www.herzog.org/',1);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `select_customer_booking`
--

DROP TABLE IF EXISTS `select_customer_booking`;
/*!50001 DROP VIEW IF EXISTS `select_customer_booking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `select_customer_booking` AS SELECT 
 1 AS `customer_id`,
 1 AS `number_bookings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type_media`
--

DROP TABLE IF EXISTS `type_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_media`
--

LOCK TABLES `type_media` WRITE;
/*!40000 ALTER TABLE `type_media` DISABLE KEYS */;
INSERT INTO `type_media` VALUES (1,'audio'),(2,'video'),(3,'img');
/*!40000 ALTER TABLE `type_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_booking`
--

DROP TABLE IF EXISTS `users_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_booking` (
  `customer_id` int NOT NULL,
  `number_bookings` int DEFAULT '0',
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  KEY `fk_users_booking_customer1_idx` (`customer_id`),
  CONSTRAINT `pk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_booking`
--

LOCK TABLES `users_booking` WRITE;
/*!40000 ALTER TABLE `users_booking` DISABLE KEYS */;
INSERT INTO `users_booking` VALUES (1,0),(2,1),(3,2),(4,0),(5,4),(11,1),(21,1),(34,1),(42,1),(47,2),(85,1),(91,0),(93,1),(97,1);
/*!40000 ALTER TABLE `users_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_info_appartment`
--

DROP TABLE IF EXISTS `view_info_appartment`;
/*!50001 DROP VIEW IF EXISTS `view_info_appartment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_info_appartment` AS SELECT 
 1 AS `id`,
 1 AS `room_number`,
 1 AS `type`,
 1 AS `price`,
 1 AS `link_media`,
 1 AS `count_reserv`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `customer_max_booking`
--

/*!50001 DROP VIEW IF EXISTS `customer_max_booking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_max_booking` AS select `users_booking`.`number_bookings` AS `number_bookings`,`customer`.`name` AS `name`,`customer`.`phone` AS `phone` from (`users_booking` left join `customer` on((`users_booking`.`customer_id` = `customer`.`id`))) where (`users_booking`.`number_bookings` = (select max(`users_booking`.`number_bookings`) from `users_booking`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get_appartment_id`
--

/*!50001 DROP VIEW IF EXISTS `get_appartment_id`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `get_appartment_id` AS select `appartment`.`id` AS `appartment_id` from `appartment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `select_customer_booking`
--

/*!50001 DROP VIEW IF EXISTS `select_customer_booking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `select_customer_booking` AS select `users_booking`.`customer_id` AS `customer_id`,`users_booking`.`number_bookings` AS `number_bookings` from `users_booking` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_info_appartment`
--

/*!50001 DROP VIEW IF EXISTS `view_info_appartment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_info_appartment` AS with `data_reserv` (`appartment_id`,`count_reserv`) as (select `appartment_reserv`.`appartment_id` AS `appartment_id`,count(1) AS `COUNT(1)` from `appartment_reserv` group by `appartment_reserv`.`appartment_id`) select `appartment`.`id` AS `id`,`appartment`.`room_number` AS `room_number`,`appartment_type`.`name` AS `type`,`appartment_type`.`price` AS `price`,`media`.`link` AS `link_media`,`data_reserv`.`count_reserv` AS `count_reserv` from (((`appartment` left join `appartment_type` on((`appartment`.`appartment_type_id` = `appartment_type`.`id`))) left join `media` on((`appartment`.`media_id` = `media`.`id`))) left join `data_reserv` on((`appartment`.`id` = `data_reserv`.`appartment_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-27 21:48:39
