Drop database if exists Campus_Eats_Fall2020;
Create database Campus_Eats_Fall2020;
Use Campus_Eats_Fall2020;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: niner_eats
-- ------------------------------------------------------
-- Server version	8.0.18
-- created by "mavericks" team:  
-- Dhananjay Arora, Akshay Babu, Sumit Kawale, Prashant Madaan
-- this database is only to be used for educational and class
-- purposes and can not be replicated or used for commercial purposes
-- or private interests without permission by the Mavericks team

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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_delivery_driver_id` (`driver_id`),
  KEY `fk_delivery_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_delivery_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_delivery_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES
	(1,3,8,'2004-04-15 15:15:01'),
    (2,6,17,'1986-03-09 13:02:10'),
    (3,8,4,'2007-03-27 04:20:50'),
    (4,4,4,'1990-11-27 07:17:36'),
    (5,4,7,'1985-05-17 20:06:35'),
    (6,5,15,'1987-07-21 03:13:27'),
    (7,7,1,'1984-12-20 02:07:33'),
    (8,2,16,'1987-10-24 02:17:47'),
    (9,6,10,'1973-08-23 08:51:27'),
    (10,1,8,'1984-07-05 15:41:52');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `fk_D_student_id` (`student_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,110,'fi3980','1989-01-18',4),(2,98,'js4003','2017-03-15',3),(3,104,'xt8429','2002-10-11',3),(4,43,'yv6392','2010-02-23',3),(5,75,'cf3679','1997-04-06',4),(6,68,'rx3942','1970-03-24',3),(7,143,'mf2647','2014-05-06',3),(8,96,'ia9372','2011-06-25',3);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant Professor','Yale','Master'),(6,4,'Professor','CMU','PhD'),(7,15,'Assistant Professor','Duke','PhD'),(8,12,'Professor','NCSU','Master'),(9,10,'Adjunct Professor','Stanford','Bachelor'),(10,7,'Assistant Professor','Duke','PhD'),(11,14,'Assistant Professor','CMU','Bachelor'),(12,3,'Adjunct Professor','UNCC','Bachelor'),(13,1,'Assistant Professor','Harvard','Bachelor'),(14,22,'Assistant Professor','NCSU','PhD'),(15,9,'Assistant Professor','Harvard','Bachelor'),(16,25,'Adjunct Professor','Harvard','Bachelor'),(17,17,'Adjunct Professor','Stanford','Master'),(18,18,'Assistant Professor','UNCC','PhD'),(19,24,'Assistant Professor','CMU','Bachelor'),(20,23,'Adjunct Professor','Stanford','PhD'),(21,19,'Assistant Professor','CMU','PhD'),(22,20,'Professor','Stanford','PhD'),(23,13,'Adjunct Professor','NCSU','PhD'),(24,2,'Assistant Professor','Duke','Master'),(25,5,'Adjunct Professor','SJSU','Master'),(26,205,'Assistant Professor','UCLA','PhD');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(75) DEFAULT NULL,
  `location_address` varchar(75) DEFAULT NULL,
  `latitude` varchar(75) DEFAULT NULL,
  `longitude` varchar(75) DEFAULT NULL,
  `drop_off_point` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_index_desc` (`location_id` DESC),
  KEY `idx_location_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Suite 157','69612 Will Ferry\nEwellfort, KS 63168','-60.101046','101.481031','7893 Zita Mission Suite 949'),(2,'Apt. 080','711 Sammie Manor Apt. 863\nNorth Derek, NC 10578-4530','43.715801','3.213285','456 Lucio Common'),(3,'Suite 057','28742 Cole Forest Suite 483\nPort Jettiestad, RI 73714','89.842723','176.244614','145 Hal Skyway'),(4,'Apt. 443','356 Anderson Ridge Suite 742\nNorth Napoleon, VT 49903-3077','58.930520','109.869865','783 Travis Junction Apt. 728'),(5,'Suite 615','160 Skylar Union Apt. 740\nNew Elna, WY 49897-8734','79.842372','-61.397932','29350 Vandervort Estates'),(6,'Apt. 102','0552 Oran Forest Apt. 992\nMurazikview, NH 38317','-33.883942','-170.177924','1097 Wellington Valleys Apt. 395'),(7,'Apt. 309','6422 Nicolas Parkway Apt. 645\nPort Chadrick, FL 35738-8854','-64.515628','8.086937','408 Arely Streets Suite 405'),(8,'Apt. 210','7342 Lon Burgs Apt. 111\nGriffinborough, VT 64308','86.553283','-141.049418','5539 Mohammad Heights'),(9,'Suite 985','11269 Satterfield Knoll\nMauricehaven, WA 28902','5.180228','-52.389443','65717 Emmerich Walks'),(10,'Suite 343','147 Rempel Fork Apt. 940\nLake Delbert, LA 88131','44.909586','153.999345','658 Muhammad Land'),(11,'Suite 534','6402 Nienow Branch\nAriannatown, OK 28871-1749','-54.503176','-25.420009','27516 Elizabeth Road Suite 956'),(12,'Apt. 170','500 Boyle Gardens\nEast Amaliamouth, NY 48976','-54.104944','162.891267','67672 Frederik Skyway'),(13,'Suite 059','10112 Rau Station Apt. 761\nGarryland, AL 55900-5843','2.597478','-155.953323','7712 Maddison Centers Suite 850'),(14,'Suite 699','3808 Doyle Trail\nEast Silas, IA 37233-1658','30.753077','86.288575','136 O\'Connell Cape'),(15,'Apt. 286','20238 Altenwerth Loaf Suite 010\nDereckshire, VA 95393','-66.122207','-149.824885','77965 Destini Expressway Apt. 959'),(16,'Suite 691','9248 Bogisich Valleys\nTrompstad, NC 13748-3393','2.515638','177.753639','549 McClure Mission Apt. 918'),(17,'Apt. 332','204 Boyle Fort Apt. 653\nKautzerbury, LA 72319-3112','-68.893434','174.800381','11522 Haag Ferry Suite 031'),(18,'Apt. 158','63501 Funk Meadows\nUptonland, SD 60736-9385','28.507958','-75.256071','277 Mitchell Groves'),(19,'Suite 575','5924 Wuckert Meadow\nSouth Peggieview, GA 74295','-16.610616','-72.268415','43775 Narciso Plains'),(20,'Suite 268','345 Hermiston Streets\nPadbergton, MT 28143','65.738737','58.149015','3512 Carmela Cove Apt. 544'),(21,'Apt. 524','873 Percival Lights Suite 233\nAliviaview, GA 03965','67.141265','-173.513727','3838 Kirk Estates'),(22,'Apt. 190','66253 Reynolds Estate Suite 044\nSimonisside, WA 61688','5.838614','-111.040987','2610 Nolan Mill'),(23,'Suite 971','80612 Huel Shoal Suite 474\nGustavetown, NY 21745','38.930320','-13.117365','82341 Bernier Hills'),(24,'Suite 241','0276 Tamia Station Suite 735\nSolonfort, RI 12291-5788','7.830370','144.207856','4173 Theodora Plains'),(25,'Apt. 982','61231 Oda Loaf\nNew Nayeli, AK 82397','-12.199068','-17.852044','4485 Larissa Locks'),(26,'Apt. 366','3756 Terry Garden\nEast Lowellchester, AR 21100-1833','-18.154077','-82.234137','7989 Keira Fields'),(27,'Apt. 655','080 Darian Court\nSchuppemouth, NY 01757-0964','32.289014','-51.656823','6354 Chaya Inlet Apt. 859'),(28,'Suite 627','077 Jones Way\nSouth Mac, NH 34012','-77.441834','138.508983','8576 Mraz Route'),(29,'Apt. 067','532 Walsh Rest\nClementtown, KS 33449-1356','21.713872','64.510151','5524 Amina Meadow'),(30,'Apt. 435','62852 Josianne Mills\nEast Jeromeview, LA 82405','3.125229','-111.949983','21779 Nikolaus Common Apt. 851'),(31,'Apt. 862','3932 Alysha Station Suite 223\nLake Jakeland, WI 16933-0548','-4.658250','90.607759','352 Lehner Club'),(32,'Apt. 547','675 Giuseppe Divide\nNorth Angela, NY 08608','-72.446033','47.048924','7245 Lindgren Mount'),(33,'Suite 890','752 Cecilia Bypass Apt. 959\nSanfordhaven, WA 56971-1157','51.665170','77.806552','15710 Leon Viaduct'),(34,'Suite 328','7598 Klocko Oval Apt. 344\nDavionview, OH 58638','11.881816','73.668767','657 Annie Mission Apt. 557'),(35,'Suite 753','485 Grayce Oval\nWest Jarrett, IA 91623-1323','24.690149','66.045301','369 Schumm Lock Apt. 238'),(36,'Apt. 645','21545 Lind Avenue Apt. 382\nPredovicview, MI 29544','-74.927689','83.265896','091 Matilde Plains'),(37,'Suite 951','6198 Fay Wells\nGaylordstad, CT 61152','66.394980','-59.050144','83844 Colten Locks Apt. 489'),(38,'Suite 216','346 Schaefer Coves\nJadeland, MS 78153','-66.245838','-158.722669','5860 Herbert Mill Apt. 351'),(39,'Suite 468','784 Nickolas Prairie\nEmmanuelleberg, MO 24742','56.745502','-157.051267','333 Kassulke Stravenue Suite 365'),(40,'Apt. 687','7517 Leonard Viaduct Apt. 845\nBettiestad, MI 44408-9670','29.819380','-32.122210','1610 Hermina Harbor'),(41,'Apt. 130','50315 Frami Avenue\nLubowitztown, AR 11074','-84.989439','-80.878304','0930 Kessler Pines'),(42,'Apt. 621','46127 Rowe Meadows\nPort Kacey, OH 67514','42.828977','103.587679','27321 Jonas Lodge'),(43,'Apt. 339','13115 Goyette Hill Apt. 020\nNew Viviane, WI 82795-6389','-64.609637','91.929908','674 Axel Square Apt. 434'),(44,'Suite 091','64736 Michale Dam Suite 996\nVioletton, CT 07419-1266','2.426098','-55.634546','90325 Samson Manors'),(45,'Suite 606','8865 Weimann Meadows Apt. 986\nNew Darrin, ND 68683-4367','9.188521','150.453880','70401 Andres Cape'),(46,'Apt. 895','0651 Hoeger Route\nNew Madelineport, NJ 20757','-87.709982','76.089939','4599 Crona Wall'),(47,'Suite 874','48826 Jacobson Rue Apt. 189\nNew Javon, MT 26911','-21.845400','35.257482','827 Barrows Grove Suite 824'),(48,'Apt. 942','4926 Lupe Prairie Apt. 046\nBeckerville, ME 26965','-78.054954','-130.852481','832 Muller Valley'),(49,'Apt. 614','69415 Gerry Wall Suite 971\nBeattyfort, VT 50012-9205','72.283789','-108.170390','4022 Koelpin Fords Apt. 743'),(50,'Apt. 030','666 Heller Club Apt. 467\nBurleyshire, MD 54385-3107','-38.728546','-35.072223','0068 Tromp Centers'),(51,'Apt. 940','794 Hilbert Roads\nWilhelminemouth, DC 00100','-8.897519','88.848386','346 Janae Harbor Suite 458'),(52,'Apt. 634','65073 Aufderhar Mission Suite 778\nLoniestad, SD 78878-6419','23.408943','165.398873','36035 Barton Crest'),(53,'Apt. 782','746 Jalon Fort\nDariofort, MA 79648','-59.088037','-103.347456','321 Margarett Path'),(54,'Suite 426','8353 Alejandra Heights\nNorth Gardner, AR 00733-0393','-26.565917','115.692025','189 Blick Manors Apt. 066'),(55,'Apt. 709','62270 Katelynn Views\nTomborough, WV 24093-0247','-37.074660','76.206560','2245 Alexander Forest Apt. 581'),(56,'Suite 991','7814 Stanley Ramp\nNorth Alene, MA 01296-2354','46.302614','-25.734456','49283 Kamryn Point Suite 174'),(57,'Suite 960','65592 Liam Route\nLucymouth, VA 96459','-20.775978','121.809647','1714 Dena Ferry Suite 821'),(58,'Apt. 765','18848 Heaney Knoll Apt. 745\nLake Genoveva, FL 65517-3493','-82.197132','47.558329','5529 Rosamond Forges Suite 578'),(59,'Suite 078','7033 Yost Drive Apt. 553\nMekhiview, OK 48129-1227','-84.757382','-58.654951','3021 Baumbach Terrace Suite 512'),(60,'Apt. 554','8312 Elaina Stream\nOsborneview, ME 31318','-41.348220','-36.548238','9338 Chadd Landing'),(61,'Apt. 649','32904 Kunze Point\nWest Marlon, KS 96283','77.113732','173.740537','036 Rebeca Ports Suite 971'),(62,'Suite 285','2055 Reinger Isle Suite 643\nPort Gilbert, CO 29400','41.839736','140.371966','6591 Murazik Fields'),(63,'Suite 131','4927 Rowe Mountains Suite 840\nRomafort, OR 55775-5302','-12.717245','98.803269','0573 Jennie Centers Suite 444'),(64,'Suite 549','38523 Ebert Plains\nNorth Reesemouth, PA 81161','39.412911','-13.612642','847 Alexandrine Pine'),(65,'Suite 057','577 Bosco Green Apt. 208\nRubytown, CO 67492','74.904833','138.781453','715 Elena Prairie'),(66,'Apt. 224','2759 Emmalee Radial\nBogisichmouth, GA 93636-4262','80.350868','109.402133','32117 Larkin Glens Suite 120'),(67,'Suite 842','122 Frederick Plaza Suite 326\nLarkinfurt, LA 61011-0332','51.879563','139.262053','6672 O\'Reilly Station Apt. 304'),(68,'Suite 051','1579 Cyrus Square\nPort Raphaelle, SD 02230','54.628958','16.532622','60762 Lafayette Mount'),(69,'Suite 566','354 Konopelski Mission Suite 967\nNorth Waldo, NH 57787','55.835435','121.519774','37963 Eliseo Field Suite 782'),(70,'Suite 194','270 Wyman Burgs\nSchmidtborough, ID 31185','2.428639','18.915083','3011 Keagan Cliff'),(71,'Suite 400','7180 Devante Hills Suite 245\nSouth Rossie, ND 77848-7427','-31.676452','-171.620202','601 Adriana Forge'),(72,'Suite 170','5862 Leatha Orchard Suite 024\nReubenmouth, LA 38852','-48.152329','144.854379','57056 Lang Vista Suite 576'),(73,'Suite 972','775 Quinton Lane Apt. 482\nQuitzonfort, ID 32867-1172','5.775053','120.802147','01687 Russel Streets'),(74,'Apt. 814','344 Rylee Vista Apt. 872\nElvistown, CO 63706-4744','-67.390203','-38.347276','938 Abshire Mission'),(75,'Apt. 669','45232 Jast Shoals Apt. 768\nWest Nelsview, KY 81086-6074','-71.989135','168.958988','404 Ena Crest Suite 279'),(76,'Suite 564','576 Huels Burgs\nPort Fritz, OH 46070-9005','47.057137','115.145131','2263 Ella Lodge Apt. 429'),(77,'Suite 399','065 Stracke Mountain Suite 204\nWildermantown, MS 82948-2075','-53.323383','140.320853','4862 Stone Coves'),(78,'Apt. 094','91865 Letha Village Suite 621\nLangchester, ND 52116','-6.897948','-60.925732','833 Colten Shore'),(79,'Apt. 567','25427 Casimer Oval Apt. 791\nNorth Herta, TN 66396-2943','-33.475706','131.064403','395 Koepp Plain'),(80,'Suite 693','688 Hahn Centers\nPort Alphonsoview, RI 76712','-53.028515','19.837964','165 Mercedes Place Apt. 655'),(81,'Suite 509','658 Conor Port Apt. 489\nAbigaleview, IN 71308-0448','-76.085998','-54.565506','2862 Marty Throughway'),(82,'Apt. 678','6248 Frida Neck\nHarveyport, NJ 19092-3293','0.498058','39.425007','45787 Chaya Forks'),(83,'Apt. 539','19376 Name Neck Suite 362\nAntonioland, NV 49104-5101','-72.426565','-153.978776','60734 Kathlyn Rue Suite 096'),(84,'Suite 174','16736 Annabel Rapid Suite 989\nPort Halie, VT 56468','20.498983','-156.991411','0603 Ryan Glens'),(85,'Apt. 010','522 Waelchi Ramp\nSouth Polly, HI 61817-1149','-67.186395','95.299372','12273 Paucek Mount Suite 261'),(86,'Suite 873','20209 Mazie Glens Suite 966\nGwenview, KY 53849','-79.339662','-18.135492','9742 Nico Turnpike Apt. 716'),(87,'Apt. 198','8187 O\'Kon Loop Suite 540\nSouth Mikeborough, MT 08645-7217','81.564385','129.153519','667 Nyasia Stravenue Apt. 223'),(88,'Apt. 386','3824 Jerald Wells\nLednerchester, IL 34650','-62.141340','-50.218426','313 Toy Shore'),(89,'Apt. 627','9946 Evangeline Trail\nMitchellfurt, KS 78732','-45.361426','141.801986','48675 Mann Mission'),(90,'Apt. 408','359 Reichel Course\nPort Heathville, NV 22035-1749','-37.629458','142.868503','04507 Aisha Light'),(91,'Apt. 940','2841 Matilda Light\nNew Berneice, KY 93006-1067','44.019826','61.089192','7894 Wiegand Center'),(92,'Suite 523','09351 Dawn Isle\nPort Monty, IN 03900','5.537848','-47.637225','000 Gleichner Groves Suite 760'),(93,'Suite 515','9156 Earlene Drives\nFadelbury, VA 22109-1994','-58.840136','-151.166289','7213 Unique Curve Apt. 238'),(94,'Suite 390','3194 VonRueden Road Suite 638\nEast Tiana, NE 22875','64.883603','157.722086','843 Konopelski Gardens Apt. 507'),(95,'Suite 353','441 Steuber Landing Suite 981\nBayleehaven, DC 05649','28.826289','41.172158','853 Fritsch Street Suite 159'),(96,'Suite 901','94240 Tremblay Viaduct Suite 169\nNew Melody, AR 25552','55.711350','161.543504','9168 Lilly Ranch Apt. 651'),(97,'Apt. 441','26914 Johnston Via Suite 614\nGloverport, GA 39771','-26.328698','120.427582','2852 Marisol Meadows Suite 534'),(98,'Apt. 481','863 Nina Village\nSouth Vernonberg, WA 34268','-68.889173','84.854941','57866 Birdie Corners'),(99,'Apt. 412','50421 Heaney Unions\nNew Pasquale, AK 98565-2159','-35.314166','-155.680802','97642 Rempel Tunnel Suite 610'),(100,'Apt. 474','42828 Evangeline Square\nJacklynfort, AK 42024-2081','66.232111','91.681238','778 Cassandre Cliff');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(300) DEFAULT NULL,
  `person_email` varchar(150) DEFAULT NULL,
  `cell` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Keith Turner','shanon08@example.com',9768623560),(2,'Ms. Antonette Keeling','brady73@example.com',9710540609),(3,'Miss Rosanna Connelly','alayna.schowalter@example.net',9436829146),(4,'Noel Emard','icie96@example.org',9166085646),(5,'Trudie McClure Jr.','hwolf@example.net',9831320422),(6,'Dr. Velva Howe','schmidt.stephan@example.org',9401293781),(7,'Colby Stokes','william.predovic@example.net',9595806999),(8,'Rosie Shields V','prosacco.vidal@example.com',9324930770),(9,'Ms. Marlee Spinka Sr.','otilia80@example.com',9670194175),(10,'Skylar Koelpin Jr.','nterry@example.com',9848597984),(11,'Prof. Marquis Sawayn Sr.','mills.hollis@example.com',9888512127),(12,'Isadore Auer IV','wkuvalis@example.org',9787570990),(13,'Candace Koss','kassulke.estevan@example.net',9308906690),(14,'Carey Sawayn','rgreenfelder@example.org',9256868854),(15,'Mr. Dayne Grimes DVM','phaley@example.org',9757688590),(16,'Rosie Brown','ron18@example.net',9633493813),(17,'Kayli Maggio','stroman.arden@example.net',9524209592),(18,'Eddie Osinski','rocio.mann@example.com',9150770929),(19,'Dr. Lia Marks Jr.','kmedhurst@example.com',9800676038),(20,'Baron Feil','harris.angelina@example.com',9863696126),(21,'Lyric Cassin DVM','tkovacek@example.net',9767050989),(22,'Sigmund Torp','auer.everardo@example.net',9690677374),(23,'Rahsaan Collins','macie66@example.org',9634329045),(24,'Ansel Welch','jeff47@example.net',9842908406),(25,'Axel Bins PhD','bruen.merlin@example.net',9148329336),(26,'Frank Leffler','kautzer.ernestine@example.net',9451359352),(27,'Eden Schowalter','montana49@example.com',9918645459),(28,'Eldridge Von','uupton@example.net',9988165013),(29,'Dagmar Kassulke','emilia.bauch@example.com',9213090583),(30,'Ms. Madelyn Gleichner II','hans36@example.net',9383676151),(31,'Lilliana Emard','xnicolas@example.com',9945887810),(32,'Mrs. Cheyanne Keeling','janelle32@example.org',9289654741),(33,'Gabe Cole','jonathan26@example.com',9344083273),(34,'Mr. Gabe Bauch PhD','konopelski.kylee@example.net',9416224204),(35,'Esther Brekke','anna04@example.org',9577172566),(36,'Mrs. Freida Murphy','delmer.wiza@example.com',9837045438),(37,'Kellie Nicolas V','sylvia31@example.org',9235802954),(38,'Blaise Dare','madison95@example.org',9543994427),(39,'Randi Witting IV','hschultz@example.net',9418786674),(40,'Dr. Kacey Gorczany','camron52@example.com',9238976740),(41,'Alexandrine Donnelly','queen.davis@example.org',9403417764),(42,'Adonis Wilkinson','kamryn97@example.org',9969106027),(43,'Mr. Marcelo Breitenberg Sr.','cconn@example.net',9545589550),(44,'Kraig Littel','lubowitz.lorenza@example.com',9801051720),(45,'Althea Shanahan','mraz.danial@example.org',9179524322),(46,'Haylee Hickle','kirlin.della@example.net',9389501779),(47,'Mallory Rolfson','oraynor@example.org',9944432699),(48,'Lelia Tromp','koch.nathen@example.net',9721533567),(49,'Nicolette Leuschke','ervin.homenick@example.org',9943930303),(50,'Dr. Winston Gottlieb DVM','xwill@example.net',9755087308),(51,'Zackery Hermiston','donny20@example.org',9717042066),(52,'Kari Runte','weimann.marshall@example.org',9873383120),(53,'Alena Macejkovic','jesus54@example.org',9826083434),(54,'Braeden Schamberger','wilfred.hickle@example.org',9294415272),(55,'Mariana Schowalter II','zion.koch@example.net',9236157601),(56,'Osvaldo Casper','queen81@example.com',9627646768),(57,'Malika Beatty','yharvey@example.com',9598094832),(58,'Lisa Conroy Jr.','ilueilwitz@example.com',9228064461),(59,'Earl Dare','gwendolyn.gerhold@example.net',9673098021),(60,'Juvenal McLaughlin','ryan.d\'amore@example.org',9246052737),(61,'Prof. Khalil Howe','brady08@example.com',9687594736),(62,'Emanuel Schmitt','althea.koch@example.org',9284770565),(63,'Bianka Larkin','jaylan46@example.net',9641407974),(64,'Samson Hansen','nathaniel.rowe@example.net',9139417942),(65,'Westley Lakin','enrique60@example.org',9743557343),(66,'Mr. Shane Lebsack','fhirthe@example.net',9313519846),(67,'Emelie Goyette','uharris@example.com',9278293617),(68,'Ms. Meredith Gerlach II','rubie.rosenbaum@example.net',9703845293),(69,'Miss Alberta Conroy I','larkin.ernestine@example.org',9403734826),(70,'Elnora Weissnat','wpadberg@example.com',9348642594),(71,'Joey Reichel MD','jerald.skiles@example.org',9120762353),(72,'Ephraim Johnson','kovacek.ryann@example.com',9268160216),(73,'Mrs. Yesenia Hills PhD','rsteuber@example.net',9537042178),(74,'Diana Stroman','alec.lebsack@example.com',9166374642),(75,'Mr. Alfonso Ullrich IV','beer.camren@example.net',9456875969),(76,'Dr. Deon Harber IV','mafalda94@example.org',9279814004),(77,'Angus Steuber V','laverna47@example.com',9392527907),(78,'Mrs. Antoinette Tremblay V','tanner52@example.com',9627926487),(79,'Mr. Alexandre Balistreri','orodriguez@example.org',9410869140),(80,'Seth Russel V','schmidt.waylon@example.org',9319090756),(81,'Mr. Terrell Becker','tyler11@example.org',9519262117),(82,'Viviane Bayer','harrison18@example.net',9427541515),(83,'Mr. Baron Windler I','seth56@example.net',9242394545),(84,'Mrs. Kaitlyn Jacobs Sr.','vhettinger@example.org',9259287865),(85,'Javier Dooley','tillman.jude@example.com',9143324793),(86,'Alvera Kling','germaine.runolfsdottir@example.com',9403386314),(87,'Prof. Kamryn Armstrong','tyrel13@example.org',9163099974),(88,'Alexandrine Berge Sr.','tia55@example.org',9647050394),(89,'Beryl Adams','randall.strosin@example.com',9607795527),(90,'Dr. Buster Parisian IV','nlangworth@example.org',9965444463),(91,'Prof. Hiram Shanahan','mazie.towne@example.org',9452681581),(92,'Joy Macejkovic','mccullough.kenyon@example.org',9999885755),(93,'Stone Kshlerin','peter.cole@example.org',9851384624),(94,'Gladyce Cole','wweber@example.com',9459837816),(95,'Virginia Roob','augustus08@example.net',9734279443),(96,'Prof. Rahul Howe','anita.torphy@example.com',9644683434),(97,'Bryon Heidenreich','judah.keebler@example.org',9968760342),(98,'Prof. Yessenia Batz','percy62@example.com',9328404976),(99,'Emil Monahan','cassin.elvie@example.org',9168018675),(100,'Guillermo Haley','melvin83@example.com',9266256971),(101,'Dr. Xavier Ryan','sbatz@example.net',9290692579),(102,'Dr. Anibal Grady','tmurazik@example.org',9538369344),(103,'Willis Will','chance.leannon@example.com',9336382266),(104,'Myron Mayert','erling.boyle@example.org',9853200718),(105,'Eleonore Kling','billy.mills@example.org',9278446285),(106,'Adrian Orn MD','felipe.osinski@example.net',9299958360),(107,'Mrs. Lavina Will','bhuel@example.net',9468867991),(108,'Easton Buckridge MD','smcdermott@example.org',9303570434),(109,'Peyton Christiansen II','white.sherwood@example.org',9383615879),(110,'Glennie Corkery Sr.','filomena.mayer@example.com',9467683043),(111,'Prof. Nola Homenick V','brennan.sauer@example.net',9318343144),(112,'Arnaldo Raynor IV','eichmann.rashawn@example.com',9836340755),(113,'Fabiola Gusikowski V','mayert.minerva@example.org',9121545851),(114,'Maxie Grady','laney.flatley@example.net',9628920683),(115,'Mr. Sigrid Morissette','hodkiewicz.dean@example.org',9699469427),(116,'Prof. Mayra Schamberger','hnienow@example.net',9606514404),(117,'Elisha O\'Conner','jabbott@example.com',9569544603),(118,'Colt Wyman','kozey.austyn@example.com',9159123982),(119,'Asha Kuhic','kovacek.shea@example.com',9804473835),(120,'Claudie Williamson','vwintheiser@example.org',9790100203),(121,'Eula Rolfson','wruecker@example.org',9742865777),(122,'Prof. Mitchel O\'Kon DVM','tierra46@example.net',9759421993),(123,'Erica Sporer','khickle@example.net',9537817472),(124,'Greta Hodkiewicz V','alexandro02@example.com',9765562675),(125,'Delores Huel','schimmel.ludie@example.net',9976770718),(126,'Kassandra Quigley Sr.','oo\'conner@example.com',9463113682),(127,'Hayley Pfeffer','rhoda36@example.com',9793665395),(128,'Garrett Botsford','jaunita.schmeler@example.com',9868074160),(129,'Marco Zboncak','vlubowitz@example.net',9115868268),(130,'Walton Gutkowski','kelsie92@example.org',9363265672),(131,'Xzavier Hilpert','ysporer@example.com',9803198155),(132,'Dr. Alec Leannon','labadie.karley@example.com',9980582077),(133,'Hobart Miller','mann.antonio@example.com',9135280373),(134,'Ike Parisian','luella.cummerata@example.org',9463566099),(135,'Casey Feil','jdaniel@example.net',9166649183),(136,'Leopoldo Welch','hills.merritt@example.org',9627584754),(137,'Chasity Kiehn','anna.spinka@example.net',9695158064),(138,'Kenya Littel','bradtke.zita@example.org',9385173006),(139,'Prof. Roxanne Wilderman Jr.','joel.olson@example.net',9291456099),(140,'Miss Aubrey Sawayn MD','trippin@example.net',9535890585),(141,'Prof. Nathen Reichert','shanny.upton@example.net',9645155276),(142,'Ms. Kassandra Jacobi','hadley.kunze@example.com',9362461068),(143,'Myrl Goodwin','kub.jameson@example.net',9851877198),(144,'Bill Douglas','hassan61@example.org',9416415238),(145,'Mr. Peter D\'Amore','otha37@example.org',9562685050),(146,'Dr. Keshawn Greenholt PhD','gillian.von@example.net',9692023975),(147,'Ms. Sincere McDermott','eudora.grant@example.com',9417365224),(148,'Prof. Davonte Harvey','fay.simone@example.net',9198585720),(149,'Adeline Ondricka','wroob@example.org',9489869630),(150,'Ms. Opal Fisher IV','ukuvalis@example.net',9304350705),(151,'Dora Douglas','imelda58@example.net',9351442884),(152,'Prof. Gust Schulist','marlin11@example.org',9253008977),(153,'Mr. Jamaal Graham','gkreiger@example.com',9299781232),(154,'Estevan Stamm','dare.aurelie@example.com',9975958279),(155,'Eda Lowe','damian04@example.org',9738082899),(156,'Caitlyn Runolfsdottir','nwilliamson@example.net',9157717821),(157,'Josh Buckridge','ali85@example.org',9214116473),(158,'Amya Cole','rquitzon@example.net',9739257967),(159,'Jammie Bernhard','gayle.hagenes@example.org',9145191828),(160,'Meredith Konopelski','bode.marianne@example.com',9722902908),(161,'Dr. Russ Ullrich','kaylie25@example.org',9496887232),(162,'Miss Amanda Beier IV','haven70@example.com',9979440999),(163,'Everardo VonRueden','vokuneva@example.net',9307513590),(164,'Kyla Dibbert','katherine17@example.com',9397654914),(165,'Dr. Celestino Hegmann','xwaters@example.net',9574385694),(166,'Adella Gutmann','helga34@example.com',9403978574),(167,'Arch Cassin','qmuller@example.net',9691385176),(168,'Candida Gutmann','kuphal.elwyn@example.net',9919339129),(169,'Millie McClure','quitzon.yvonne@example.com',9379344758),(170,'Will Howe','gutmann.novella@example.org',9149480450),(171,'Celine Mertz','hilpert.caden@example.net',9601448593),(172,'Cletus Connelly DVM','romaguera.odessa@example.com',9568191939),(173,'Abel McLaughlin','maximus04@example.com',9596114054),(174,'Marian Kuphal','bkirlin@example.org',9826873637),(175,'Rita Vandervort II','dooley.godfrey@example.net',9820809334),(176,'Leann O\'Kon Sr.','ruthie15@example.org',9521975342),(177,'Maryam Hyatt','miguel74@example.org',9835366363),(178,'Carmella Kulas','hagenes.wilbert@example.net',9280103270),(179,'Royce Ledner II','lbogan@example.org',9511542747),(180,'Araceli Emard','hcassin@example.org',9314707204),(181,'Alexandro Strosin DVM','kathleen.parisian@example.com',9814787976),(182,'Ernestina Blanda','pearl25@example.com',9871777207),(183,'Kelly Kunze','lloyd62@example.com',9462462695),(184,'Bert Miller DVM','zack.littel@example.net',9532493167),(185,'Ima Deckow PhD','o\'keefe.kevon@example.org',9325208962),(186,'Giovanna Huels','nkrajcik@example.net',9352726912),(187,'Kaitlyn Heller','mozell.bechtelar@example.com',9558063000),(188,'Evan Herman Sr.','adolfo.green@example.net',9553259799),(189,'Carroll Hahn','norberto98@example.com',9447842897),(190,'Isaias Shields','stiedemann.chandler@example.net',9775912526),(191,'Mrs. Emmie Nikolaus Sr.','mcdermott.austin@example.com',9203282907),(192,'Audreanne Olson','litzy.prosacco@example.com',9203988422),(193,'Mr. Lawrence McClure','holly.wolff@example.com',9961654066),(194,'Dr. Hester Feil','cartwright.lonzo@example.net',9976085056),(195,'Pearl Gottlieb','katrina.marvin@example.org',9371313181),(196,'Aubrey Kihn','weissnat.annetta@example.com',9615559380),(197,'Odell Graham','thansen@example.net',9891213805),(198,'Thaddeus Nader','rohan.ressie@example.com',9396553983),(199,'Miss Stephany Harris','judge.predovic@example.org',9368433529),(200,'Prof. Erick Daniel','khills@example.com',9755384471),(201,'Dhananjay Arora','darora2@uncc.edu',9802878895),(202,'Dhananjay Arora','darora2@uncc.edu',9802878895),(203,'Dhananjay Arora','darora2@uncc.edu',9802878896),(204,'Dhananjay Arora','darora2@uncc.edu',9802878897),(205,'Akshay Babu','ababu1@uncc.edu',9802820800);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_join`
--

DROP TABLE IF EXISTS `person_join`;
/*!50001 DROP VIEW IF EXISTS `person_join`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_join` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `student_id`,
 1 AS `graduation_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_student`
--

DROP TABLE IF EXISTS `person_student`;
/*!50001 DROP VIEW IF EXISTS `person_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_student` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `cell`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(75) DEFAULT NULL,
  `restaurant_name` varchar(75) DEFAULT NULL,
  `schedule` varchar(75) DEFAULT NULL,
  `website` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES 
	(1,'8845 Craver Rd, Charlotte, NC 28262','Chartswell','9am - 4pm','http://chartswell.com/'),
	(2,'9025 University Rd, Charlotte, NC 28223','Subway','9am - 4pm','http://subway.com/'),
	(3,'9025 University Rd, Charlotte, NC 28223','Panda Express','9am - 4pm','http://pandaexpress.com/'),
	(4,'9510 University City Blvd #101, Charlotte, NC 28213','Passage to India','9am - 4pm','http://ptoi.com/'),
	(5,'8948 J M Keynes Dr Suite 400, Charlotte, NC 28262','Blaze Pizza','9am - 4pm','http://blaze.com/'),
	(6,'9630 University City Blvd F, Charlotte, NC 28213','Dominoes Pizza','9am - 4pm','http://dominoes.com/');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(75) DEFAULT NULL,
  `is_admin` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`staff_id`),
  KEY `fk_S_person_id` (`person_id`),
  CONSTRAINT `fk_S_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `check_is_admin_y_n` CHECK ((`is_admin` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,27,'Janitor','Y'),(2,37,'Bus Driver','N'),(3,48,'Bus Driver','N'),(4,28,'Assistant Manager','N'),(5,31,'Receptionist','Y'),(6,38,'Assistant Manager','Y'),(7,26,'Bus Driver','N'),(8,49,'Logistic Manager','N'),(9,33,'Receptionist','Y'),(10,45,'Assistant Manager','Y'),(11,40,'Bus Driver','Y'),(12,29,'Logistic Manager','N'),(13,46,'Receptionist','N'),(14,41,'Logistic Manager','Y'),(15,32,'Logistic Manager','Y'),(16,47,'Janitor','N'),(17,50,'Logistic Manager','Y'),(18,30,'Janitor','Y'),(19,39,'Assistant Manager','Y'),(20,43,'Bus Driver','Y'),(21,35,'Bus Driver','Y'),(22,42,'Logistic Manager','Y'),(23,36,'Janitor','N'),(24,34,'Logistic Manager','Y'),(25,44,'Bus Driver','Y');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `graduation_year` int(4) DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_St_person_id` (`person_id`),
  CONSTRAINT `fk_St_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,101,1987,'Philosophy','Undergraduate'),(2,141,1986,'Accounts','Undergraduate'),(3,92,1978,'Electronics','Graduate'),(4,85,2008,'Computer Science','Graduate'),(5,66,1979,'Accounts','Graduate'),(6,164,2019,'Accounts','Graduate'),(7,110,1989,'Philosophy','Undergraduate'),(8,137,1987,'Accounts','Undergraduate'),(9,140,1975,'Data Science','Graduate'),(10,107,1985,'Data Science','Graduate'),(11,55,2017,'Electrical','Undergraduate'),(12,91,2006,'Electrical','Undergraduate'),(13,144,2008,'Cyber Security','Graduate'),(14,58,2005,'Mechanical','Graduate'),(15,191,2015,'Accounts','Undergraduate'),(16,190,2011,'Biotechnology','Undergraduate'),(17,60,1990,'Cyber Security','Undergraduate'),(18,59,1987,'Environmental','Undergraduate'),(19,114,1999,'Data Science','Graduate'),(20,185,1986,'Electrical','Graduate'),(21,61,2006,'Electrical','Undergraduate'),(22,117,1984,'Data Science','Undergraduate'),(23,73,2004,'Chemical','Graduate'),(24,170,1976,'Chemical','Undergraduate'),(25,146,1997,'Computer Science','Graduate'),(26,143,1977,'Chemical','Undergraduate'),(27,108,1995,'Mechanical','Undergraduate'),(28,198,2000,'Mechanical','Graduate'),(29,94,2013,'Accounts','Graduate'),(30,172,2005,'Philosophy','Graduate'),(31,68,1981,'Chemical','Graduate'),(32,111,1991,'Environmental','Undergraduate'),(33,165,1983,'Cyber Security','Undergraduate'),(34,155,1993,'Environmental','Graduate'),(35,163,2013,'Accounts','Undergraduate'),(36,71,2002,'Accounts','Undergraduate'),(37,194,2013,'Data Science','Graduate'),(38,125,1983,'Chemical','Undergraduate'),(39,126,1980,'Chemical','Graduate'),(40,168,2014,'Electrical','Undergraduate'),(41,106,2010,'Data Science','Graduate'),(42,112,1990,'Accounts','Graduate'),(43,93,1975,'Philosophy','Graduate'),(44,195,2016,'Mechanical','Undergraduate'),(45,69,1975,'Philosophy','Graduate'),(46,180,1972,'Accounts','Undergraduate'),(47,56,1990,'Computer Science','Undergraduate'),(48,57,1982,'Accounts','Graduate'),(49,193,2012,'Accounts','Graduate'),(50,100,1988,'Civil','Graduate'),(51,78,1999,'Mechanical','Graduate'),(52,63,1989,'Mechanical','Undergraduate'),(53,153,1978,'Philosophy','Undergraduate'),(54,65,1985,'Cyber Security','Graduate'),(55,118,2010,'Biotechnology','Graduate'),(56,169,1981,'Chemical','Undergraduate'),(57,184,1980,'Chemical','Graduate'),(58,51,2001,'Accounts','Graduate'),(59,130,1993,'Data Science','Graduate'),(60,80,2005,'Chemical','Graduate'),(61,134,1994,'Chemical','Graduate'),(62,142,1979,'Accounts','Graduate'),(63,97,1988,'Data Science','Graduate'),(64,148,1998,'Biotechnology','Undergraduate'),(65,166,1980,'Civil','Undergraduate'),(66,116,1970,'Accounts','Undergraduate'),(67,138,2014,'Chemical','Graduate'),(68,113,1997,'Data Science','Undergraduate'),(69,70,2006,'Mechanical','Graduate'),(70,173,1975,'Cyber Security','Graduate'),(71,182,1984,'Accounts','Undergraduate'),(72,160,1974,'Cyber Security','Undergraduate'),(73,128,1972,'Environmental','Undergraduate'),(74,99,2009,'Environmental','Graduate'),(75,147,1971,'Mechanical','Graduate'),(76,81,1994,'Cyber Security','Graduate'),(77,177,1999,'Electronics','Graduate'),(78,90,1978,'Computer Science','Graduate'),(79,158,1985,'Computer Science','Graduate'),(80,79,2004,'Environmental','Graduate'),(81,119,1989,'Biotechnology','Graduate'),(82,171,2019,'Electronics','Undergraduate'),(83,77,1989,'Electronics','Undergraduate'),(84,186,1973,'Mechanical','Undergraduate'),(85,105,2011,'Chemical','Undergraduate'),(86,149,1971,'Mechanical','Undergraduate'),(87,133,1978,'Mechanical','Undergraduate'),(88,174,2010,'Environmental','Graduate'),(89,95,1994,'Mechanical','Undergraduate'),(90,72,2019,'Environmental','Undergraduate'),(91,76,1978,'Data Science','Graduate'),(92,123,2008,'Philosophy','Undergraduate'),(93,188,1979,'Data Science','Graduate'),(94,132,2001,'Data Science','Graduate'),(95,183,1983,'Data Science','Graduate'),(96,179,1973,'Data Science','Graduate'),(97,129,2000,'Accounts','Graduate'),(98,115,2015,'Philosophy','Undergraduate'),(99,200,1986,'Electronics','Undergraduate'),(100,84,2009,'Cyber Security','Undergraduate'),(101,54,1984,'Chemical','Graduate'),(102,102,2000,'Biotechnology','Undergraduate'),(103,152,2003,'Data Science','Graduate'),(104,176,1985,'Cyber Security','Graduate'),(105,120,2019,'Environmental','Graduate'),(106,53,1992,'Chemical','Graduate'),(107,178,1971,'Cyber Security','Graduate'),(108,122,1998,'Electronics','Graduate'),(109,86,2011,'Electrical','Graduate'),(110,136,2016,'Electronics','Graduate'),(111,151,1981,'Chemical','Undergraduate'),(112,196,1992,'Philosophy','Undergraduate'),(113,161,1994,'Computer Science','Undergraduate'),(114,83,2004,'Biotechnology','Undergraduate'),(115,98,1985,'Civil','Graduate'),(116,139,1979,'Accounts','Undergraduate'),(117,181,1977,'Mechanical','Graduate'),(118,197,1973,'Accounts','Undergraduate'),(119,135,1998,'Electronics','Undergraduate'),(120,109,2002,'Cyber Security','Undergraduate'),(121,159,1976,'Chemical','Graduate'),(122,67,1971,'Chemical','Undergraduate'),(123,199,2019,'Computer Science','Graduate'),(124,64,1992,'Accounts','Undergraduate'),(125,74,2002,'Data Science','Graduate'),(126,175,1987,'Environmental','Undergraduate'),(127,157,2017,'Biotechnology','Undergraduate'),(128,62,1971,'Biotechnology','Undergraduate'),(129,103,1993,'Cyber Security','Graduate'),(130,131,1972,'Environmental','Graduate'),(131,87,1989,'Electrical','Undergraduate'),(132,150,1984,'Cyber Security','Graduate'),(133,75,1988,'Accounts','Graduate'),(134,82,2018,'Civil','Graduate'),(135,124,2016,'Computer Science','Undergraduate'),(136,88,1989,'Biotechnology','Undergraduate'),(137,167,1991,'Data Science','Undergraduate'),(138,127,2013,'Chemical','Undergraduate'),(139,89,1986,'Electronics','Undergraduate'),(140,189,1995,'Environmental','Graduate'),(141,192,1972,'Philosophy','Graduate'),(142,145,1981,'Computer Science','Graduate'),(143,156,1996,'Environmental','Undergraduate'),(144,162,1999,'Cyber Security','Undergraduate'),(145,154,2009,'Biotechnology','Undergraduate'),(146,104,2006,'Electronics','Graduate'),(147,96,1985,'Mechanical','Graduate'),(148,187,2002,'Cyber Security','Undergraduate'),(149,52,1995,'Cyber Security','Undergraduate'),(150,121,1994,'Mechanical','Graduate'),(151,204,2019,'graduate','Graduate');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_plate` varchar(75) DEFAULT NULL,
  `model` varchar(75) DEFAULT NULL,
  `make` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'4333','p','Mercedes'),(2,'8289','y','BMW'),(3,'1126','h','Bugatti'),(4,'7749','p','Audi'),(5,'2644','z','BMW'),(6,'9878','o','Kia'),(7,'4697','i','Kia'),(8,'9687','s','Mercedes'),(9,'3364','c','Hyundai'),(10,'8683','z','Toyota'),(11,'5436','i','Kia'),(12,'9357','e','Kia'),(13,'6519','z','Toyota'),(14,'3585','t','Hyundai'),(15,'2767','d','Bugatti'),(16,'4184','j','Mercedes'),(17,'6489','l','BMW'),(18,'4260','j','Audi'),(19,'6455','d','Mercedes'),(20,'7009','q','Toyota');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'niner_eats'
--

--
-- Dumping routines for database 'niner_eats'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(in person_name varchar(300), in email varchar(150), cellno bigint (15), person_type varchar(10))
BEGIN
insert into person (person_name, person_email, cell) values(person_name, email, cellno);
if(person_type = 'student') then
insert into student (person_id, graduation_year, major, type) values 
((select person_id from person where cell = cellno), 2019, 'Computer Science', 'Graduate');
elseif(person_type = 'faculty') then
insert into faculty (person_id, title, degree_college, highest_degree) values 
((select person_id from person where cell = cellno), 'Assistant Professor', 'UCLA', 'PhD');
elseif(person_type = 'staff') then
insert into student (person_id, position, is_admin) values 
((select person_id from person where cell = cellno), 'Bus Driver', 'N');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
-- /*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `person_join`
--

/*!50001 DROP VIEW IF EXISTS `person_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
-- /*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_join` AS select `person`.`person_id` AS `person_id`,`person`.`person_name` AS `person_name`,`person`.`person_email` AS `person_email`,`student`.`student_id` AS `student_id`,`student`.`graduation_year` AS `graduation_year` from (`person` join `student` on((`student`.`person_id` = `person`.`person_id`))) where (`student`.`major` = 'Computer Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
-- /*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_student`
--

/*!50001 DROP VIEW IF EXISTS `person_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
-- /*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_student` AS select `a`.`person_id` AS `person_id`,`a`.`person_name` AS `person_name`,`a`.`person_email` AS `person_email`,`a`.`cell` AS `cell` from `person` `a` where `a`.`person_id` in (select `student`.`person_id` from `student` where (`student`.`graduation_year` = 2019)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
-- /*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 21:16:05
--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES 
	(1,1,1,1,3,1,9.18,5.00),
    (2,2,2,2,6,2,4.32,5.00),
    (3,3,3,3,8,3,1.50,5.00),
    (4,4,4,4,4,4,6.00,5.00),
    (5,5,5,5,4,5,12.00,5.00),
    (6,6,6,6,5,6,15.00,5.00),
    (7,7,7,7,7,1,4.32,5.00),
    (8,8,8,8,2,2,12.00,5.00),
    (9,9,9,9,6,3,45.00,5.00),
    (10,10,10,10,1,4,1.50,5.00);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
-- /*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_AFTER_INSERT` AFTER INSERT ON `order` FOR EACH ROW BEGIN
	insert into niner_eats.delivery (driver_id, vehicle_id) values(new.driver_id, 2);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
-- /*!50003 SET collation_connection  = @saved_col_connection */ ;


