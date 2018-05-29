-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: teknomarket
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fabrics`
--

DROP TABLE IF EXISTS `fabrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabrics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabrics`
--

LOCK TABLES `fabrics` WRITE;
/*!40000 ALTER TABLE `fabrics` DISABLE KEYS */;
INSERT INTO `fabrics` VALUES (1,'Romaguera-Spencer','considine.imelda@morar.info',59368863,'2018-05-29 10:58:39','2018-05-29 10:58:39'),(2,'Sporer LLC','rowland.collins@yahoo.com',266491391,'2018-05-29 10:58:39','2018-05-29 10:58:39'),(3,'Olson-Schultz','prosacco.marques@turner.com',828499546,'2018-05-29 10:58:39','2018-05-29 10:58:39'),(4,'Rowe-Hayes','welch.jaquelin@witting.com',558537100,'2018-05-29 10:58:39','2018-05-29 10:58:39'),(5,'Cormier LLC','ahagenes@borer.info',271153572,'2018-05-29 10:59:54','2018-05-29 10:59:54'),(6,'Mueller, Toy and Ferry','zosinski@rau.com',577858143,'2018-05-29 10:59:54','2018-05-29 10:59:54'),(7,'Wolf-Hammes','ptorphy@hotmail.com',284211926,'2018-05-29 10:59:54','2018-05-29 10:59:54'),(8,'Kassulke, Labadie and Brown','tlockman@gmail.com',688023287,'2018-05-29 10:59:54','2018-05-29 10:59:54'),(9,'Mohr and Sons','keara.conn@gmail.com',773458343,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(10,'Ondricka, Wunsch and Hoppe','laurence73@hotmail.com',345028179,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(11,'Swift, Howell and Hammes','kris.rutherford@gmail.com',88719176,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(12,'Cruickshank-Roob','pprice@yahoo.com',60592070,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(13,'Ziemann Group','phoeger@yahoo.com',771497099,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(14,'Bosco Ltd','mohamed.feil@frami.com',153637858,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(15,'Lehner, Lemke and Balistreri','waylon.bradtke@gmail.com',417590364,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(16,'Doyle, Bartoletti and McKenzie','hansen.lurline@gmail.com',350992071,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(17,'Marvin, Lubowitz and Harris','cierra04@gmail.com',684545305,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(18,'Moore-Mueller','welch.nikita@leannon.com',626417161,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(19,'Pollich, Leannon and Breitenberg','pascale.cruickshank@gmail.com',120631078,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(20,'Leffler-Barrows','ondricka.lon@nicolas.com',880300164,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(21,'Ondricka-Huels','rschamberger@yahoo.com',245093186,'2018-05-29 11:00:17','2018-05-29 11:00:17'),(22,'Monahan LLC','giuseppe11@baumbach.net',936856677,'2018-05-29 11:00:17','2018-05-29 11:00:17'),(23,'Auer-Reichel','catalina86@bogan.info',511929941,'2018-05-29 11:00:17','2018-05-29 11:00:17'),(24,'Thompson Inc','axel12@kuhlman.net',192696516,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(25,'Blick, Wolff and Macejkovic','ziemann.althea@wintheiser.biz',262326919,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(26,'Cassin, Sanford and Watsica','shayna06@jacobs.info',849062477,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(27,'Ankunding-Kshlerin','lilla.mosciski@yahoo.com',418650005,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(28,'Kertzmann, Schmitt and Gleichner','rolfson.herta@yahoo.com',996492743,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(29,'O\'Connell-Denesik','vharvey@hotmail.com',923823645,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(30,'Terry-Herzog','gloria.hettinger@pagac.com',800711237,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(31,'Kuphal-Bode','joesph.lebsack@monahan.com',227754928,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(32,'Smitham and Sons','abbie46@yahoo.com',114278893,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(33,'Orn and Sons','vjenkins@hotmail.com',195609264,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(34,'O\'Reilly PLC','lorna.buckridge@yahoo.com',134744622,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(35,'Christiansen PLC','angela68@fisher.info',90714306,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(36,'Schoen Inc','dedric.kautzer@pfannerstill.com',633272464,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(37,'Cormier LLC','vallie41@hammes.com',949291554,'2018-05-29 11:00:26','2018-05-29 11:00:26'),(38,'Kassulke, Welch and Cremin','bfranecki@kutch.org',588834513,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(39,'Turcotte-Kilback','osvaldo81@luettgen.net',491302068,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(40,'Zieme-Hilpert','maud48@yahoo.com',132643080,'2018-05-29 11:00:27','2018-05-29 11:00:27');
/*!40000 ALTER TABLE `fabrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `serie` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `claves` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`serie`),
  KEY `items_fabric_id_foreign` (`fabric_id`),
  CONSTRAINT `items_fabric_id_foreign` FOREIGN KEY (`fabric_id`) REFERENCES `fabrics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'et',683,89,2,'eius','https://lorempixel.com/800/450/?40528',3,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(2,'delectus',299,18,6,'quod','https://lorempixel.com/800/450/?22296',5,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(3,'consequuntur',237,52,5,'consequatur','https://lorempixel.com/800/450/?72833',1,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(4,'aut',680,42,7,'officia','https://lorempixel.com/800/450/?22462',12,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(5,'rerum',664,22,9,'deserunt','https://lorempixel.com/800/450/?14060',1,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(6,'dignissimos',310,40,5,'odio','https://lorempixel.com/800/450/?68682',12,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(7,'facere',830,15,8,'dolor','https://lorempixel.com/800/450/?41540',2,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(8,'impedit',396,87,3,'magnam','https://lorempixel.com/800/450/?50750',2,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(9,'quis',457,50,8,'voluptatem','https://lorempixel.com/800/450/?25145',9,'2018-05-29 11:00:06','2018-05-29 11:00:06'),(10,'sunt',527,40,9,'excepturi','https://lorempixel.com/800/450/?14137',3,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(11,'itaque',921,40,5,'cupiditate','https://lorempixel.com/800/450/?17633',11,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(12,'nobis',995,3,0,'maiores','https://lorempixel.com/800/450/?31403',1,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(13,'eaque',58,78,1,'quasi','https://lorempixel.com/800/450/?45542',2,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(14,'dolor',394,20,5,'adipisci','https://lorempixel.com/800/450/?83906',6,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(15,'in',178,21,4,'ipsa','https://lorempixel.com/800/450/?57450',6,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(16,'dolorem',414,1,7,'voluptas','https://lorempixel.com/800/450/?90341',5,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(17,'quos',220,86,7,'voluptas','https://lorempixel.com/800/450/?83714',8,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(18,'quis',279,30,2,'suscipit','https://lorempixel.com/800/450/?34834',7,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(19,'optio',585,81,4,'velit','https://lorempixel.com/800/450/?35403',2,'2018-05-29 11:00:07','2018-05-29 11:00:07'),(20,'enim',367,70,1,'est','https://lorempixel.com/800/450/?76362',12,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(21,'inventore',265,96,0,'voluptatem','https://lorempixel.com/800/450/?47684',3,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(22,'numquam',448,43,0,'molestiae','https://lorempixel.com/800/450/?16184',9,'2018-05-29 11:00:12','2018-05-29 11:00:12'),(23,'deleniti',662,76,7,'veniam','https://lorempixel.com/800/450/?42180',9,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(24,'dolorem',362,9,8,'aut','https://lorempixel.com/800/450/?54446',10,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(25,'voluptatem',761,20,5,'assumenda','https://lorempixel.com/800/450/?99324',2,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(26,'quia',927,75,4,'voluptatibus','https://lorempixel.com/800/450/?46565',10,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(27,'sint',874,99,3,'deserunt','https://lorempixel.com/800/450/?83549',13,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(28,'dolor',575,40,8,'aut','https://lorempixel.com/800/450/?35363',6,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(29,'et',599,24,8,'vero','https://lorempixel.com/800/450/?90550',12,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(30,'vero',624,65,6,'consequatur','https://lorempixel.com/800/450/?70461',5,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(31,'totam',304,33,3,'quo','https://lorempixel.com/800/450/?71223',16,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(32,'cum',531,49,7,'qui','https://lorempixel.com/800/450/?58095',8,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(33,'enim',596,69,3,'delectus','https://lorempixel.com/800/450/?32386',2,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(34,'rem',40,69,1,'dolor','https://lorempixel.com/800/450/?21269',12,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(35,'labore',460,72,2,'alias','https://lorempixel.com/800/450/?81564',2,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(36,'quisquam',780,13,4,'ut','https://lorempixel.com/800/450/?84624',1,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(37,'tempore',124,48,0,'autem','https://lorempixel.com/800/450/?12474',5,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(38,'itaque',392,83,5,'sed','https://lorempixel.com/800/450/?54824',14,'2018-05-29 11:00:13','2018-05-29 11:00:13'),(39,'dolorum',753,20,0,'ab','https://lorempixel.com/800/450/?99390',18,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(40,'sequi',11,83,9,'ad','https://lorempixel.com/800/450/?12472',6,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(41,'sed',248,24,2,'iure','https://lorempixel.com/800/450/?16896',16,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(42,'quis',482,43,9,'incidunt','https://lorempixel.com/800/450/?67476',2,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(43,'voluptatem',790,21,9,'quo','https://lorempixel.com/800/450/?65495',17,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(44,'consequuntur',21,66,0,'dolorem','https://lorempixel.com/800/450/?40195',16,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(45,'deserunt',340,67,4,'qui','https://lorempixel.com/800/450/?89977',19,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(46,'est',209,57,9,'culpa','https://lorempixel.com/800/450/?49822',20,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(47,'necessitatibus',895,19,8,'cum','https://lorempixel.com/800/450/?30994',11,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(48,'quia',632,94,7,'rerum','https://lorempixel.com/800/450/?26821',19,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(49,'voluptatem',702,73,5,'earum','https://lorempixel.com/800/450/?17635',8,'2018-05-29 11:00:15','2018-05-29 11:00:15'),(50,'voluptate',175,1,5,'aut','https://lorempixel.com/800/450/?77230',9,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(51,'voluptate',767,0,7,'libero','https://lorempixel.com/800/450/?98785',15,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(52,'ipsa',993,57,9,'ut','https://lorempixel.com/800/450/?84329',7,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(53,'est',898,61,1,'quae','https://lorempixel.com/800/450/?85036',16,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(54,'aliquam',668,73,4,'natus','https://lorempixel.com/800/450/?25021',20,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(55,'temporibus',22,85,7,'laboriosam','https://lorempixel.com/800/450/?97264',2,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(56,'unde',43,47,0,'vel','https://lorempixel.com/800/450/?36610',20,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(57,'nihil',455,46,7,'dignissimos','https://lorempixel.com/800/450/?15552',11,'2018-05-29 11:00:16','2018-05-29 11:00:16'),(58,'esse',753,62,4,'officia','https://lorempixel.com/800/450/?34754',1,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(59,'quibusdam',186,92,0,'ut','https://lorempixel.com/800/450/?12036',4,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(60,'nihil',722,28,3,'assumenda','https://lorempixel.com/800/450/?47944',5,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(61,'saepe',351,27,8,'enim','https://lorempixel.com/800/450/?26610',11,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(62,'totam',805,53,8,'animi','https://lorempixel.com/800/450/?36571',8,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(63,'aperiam',450,4,3,'veniam','https://lorempixel.com/800/450/?36654',20,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(64,'deserunt',707,29,5,'molestias','https://lorempixel.com/800/450/?55840',21,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(65,'illo',102,90,5,'dignissimos','https://lorempixel.com/800/450/?98176',20,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(66,'temporibus',18,95,3,'nobis','https://lorempixel.com/800/450/?52397',6,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(67,'quia',885,53,9,'ratione','https://lorempixel.com/800/450/?96994',17,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(68,'corrupti',410,93,6,'fugit','https://lorempixel.com/800/450/?78523',22,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(69,'ex',926,98,1,'rerum','https://lorempixel.com/800/450/?76789',5,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(70,'odit',415,73,3,'vel','https://lorempixel.com/800/450/?20264',19,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(71,'nisi',865,42,9,'possimus','https://lorempixel.com/800/450/?99155',16,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(72,'minima',586,34,0,'placeat','https://lorempixel.com/800/450/?43788',10,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(73,'facilis',981,90,6,'aperiam','https://lorempixel.com/800/450/?46045',2,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(74,'voluptatum',224,63,0,'officia','https://lorempixel.com/800/450/?81951',3,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(75,'asperiores',557,54,2,'dolorem','https://lorempixel.com/800/450/?27099',11,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(76,'quidem',896,16,8,'ipsum','https://lorempixel.com/800/450/?16533',1,'2018-05-29 11:00:18','2018-05-29 11:00:18'),(77,'rerum',315,49,7,'deserunt','https://lorempixel.com/800/450/?29109',11,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(78,'et',513,35,9,'natus','https://lorempixel.com/800/450/?28917',25,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(79,'at',751,63,1,'qui','https://lorempixel.com/800/450/?46760',10,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(80,'qui',740,53,7,'iure','https://lorempixel.com/800/450/?12198',15,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(81,'eius',345,99,7,'quaerat','https://lorempixel.com/800/450/?18428',16,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(82,'est',384,1,6,'aspernatur','https://lorempixel.com/800/450/?79562',8,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(83,'voluptatibus',536,77,4,'consectetur','https://lorempixel.com/800/450/?39148',21,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(84,'qui',193,35,7,'consequuntur','https://lorempixel.com/800/450/?78459',13,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(85,'et',454,69,0,'laboriosam','https://lorempixel.com/800/450/?81121',25,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(86,'tempora',637,21,4,'temporibus','https://lorempixel.com/800/450/?96860',13,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(87,'accusamus',664,74,0,'delectus','https://lorempixel.com/800/450/?66099',7,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(88,'numquam',405,71,3,'aut','https://lorempixel.com/800/450/?73983',1,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(89,'error',351,54,2,'non','https://lorempixel.com/800/450/?78972',8,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(90,'sit',292,20,5,'alias','https://lorempixel.com/800/450/?78024',23,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(91,'velit',766,58,8,'reprehenderit','https://lorempixel.com/800/450/?94336',1,'2018-05-29 11:00:20','2018-05-29 11:00:20'),(92,'omnis',676,82,2,'enim','https://lorempixel.com/800/450/?62118',17,'2018-05-29 11:00:21','2018-05-29 11:00:21'),(93,'hic',155,85,2,'consequuntur','https://lorempixel.com/800/450/?27051',3,'2018-05-29 11:00:21','2018-05-29 11:00:21'),(94,'officiis',631,18,5,'totam','https://lorempixel.com/800/450/?59876',6,'2018-05-29 11:00:21','2018-05-29 11:00:21'),(95,'unde',281,2,0,'temporibus','https://lorempixel.com/800/450/?90498',10,'2018-05-29 11:00:21','2018-05-29 11:00:21'),(96,'illo',904,59,5,'aperiam','https://lorempixel.com/800/450/?90548',5,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(97,'error',700,37,3,'consectetur','https://lorempixel.com/800/450/?92039',10,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(98,'placeat',320,86,2,'ipsa','https://lorempixel.com/800/450/?98002',32,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(99,'dolorem',696,98,6,'quia','https://lorempixel.com/800/450/?37629',3,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(100,'tempore',729,28,3,'hic','https://lorempixel.com/800/450/?51504',12,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(101,'corrupti',41,42,2,'sit','https://lorempixel.com/800/450/?76447',4,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(102,'architecto',208,7,1,'molestias','https://lorempixel.com/800/450/?12032',18,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(103,'nulla',440,82,3,'perferendis','https://lorempixel.com/800/450/?77580',28,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(104,'est',256,96,1,'molestiae','https://lorempixel.com/800/450/?45117',31,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(105,'vel',318,18,7,'iste','https://lorempixel.com/800/450/?52931',14,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(106,'quibusdam',790,61,7,'in','https://lorempixel.com/800/450/?65206',4,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(107,'at',501,0,3,'qui','https://lorempixel.com/800/450/?57944',3,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(108,'eum',165,75,1,'consequatur','https://lorempixel.com/800/450/?55180',26,'2018-05-29 11:00:22','2018-05-29 11:00:22'),(109,'modi',312,40,5,'aut','https://lorempixel.com/800/450/?26139',21,'2018-05-29 11:00:23','2018-05-29 11:00:23'),(110,'error',964,12,9,'possimus','https://lorempixel.com/800/450/?32492',6,'2018-05-29 11:00:23','2018-05-29 11:00:23'),(111,'excepturi',470,12,3,'quia','https://lorempixel.com/800/450/?82234',28,'2018-05-29 11:00:23','2018-05-29 11:00:23'),(112,'sit',894,27,3,'eos','https://lorempixel.com/800/450/?60840',14,'2018-05-29 11:00:23','2018-05-29 11:00:23'),(113,'cumque',926,75,4,'voluptas','https://lorempixel.com/800/450/?34038',22,'2018-05-29 11:00:23','2018-05-29 11:00:23'),(114,'neque',946,12,1,'fugiat','https://lorempixel.com/800/450/?66058',5,'2018-05-29 11:00:23','2018-05-29 11:00:23'),(115,'delectus',123,38,7,'iusto','https://lorempixel.com/800/450/?16855',35,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(116,'aspernatur',306,19,7,'cum','https://lorempixel.com/800/450/?48483',29,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(117,'earum',373,8,9,'ipsa','https://lorempixel.com/800/450/?45930',33,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(118,'voluptates',145,99,4,'tempora','https://lorempixel.com/800/450/?31580',5,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(119,'eos',909,61,4,'dolores','https://lorempixel.com/800/450/?32489',20,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(120,'placeat',787,1,3,'qui','https://lorempixel.com/800/450/?22793',11,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(121,'reprehenderit',194,85,7,'consectetur','https://lorempixel.com/800/450/?45230',7,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(122,'quam',207,55,9,'necessitatibus','https://lorempixel.com/800/450/?86519',27,'2018-05-29 11:00:24','2018-05-29 11:00:24'),(123,'laudantium',616,86,4,'alias','https://lorempixel.com/800/450/?26345',5,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(124,'repudiandae',487,46,1,'ex','https://lorempixel.com/800/450/?50287',28,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(125,'adipisci',973,32,0,'odit','https://lorempixel.com/800/450/?95443',7,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(126,'et',571,24,6,'fugit','https://lorempixel.com/800/450/?13295',16,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(127,'provident',281,18,0,'eius','https://lorempixel.com/800/450/?20348',34,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(128,'reiciendis',499,56,1,'et','https://lorempixel.com/800/450/?46596',27,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(129,'et',947,34,7,'quaerat','https://lorempixel.com/800/450/?39346',10,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(130,'quae',23,28,2,'voluptatem','https://lorempixel.com/800/450/?78029',26,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(131,'voluptatum',788,59,2,'quis','https://lorempixel.com/800/450/?51127',6,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(132,'nostrum',789,31,2,'eveniet','https://lorempixel.com/800/450/?84231',4,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(133,'quia',778,53,4,'fuga','https://lorempixel.com/800/450/?66344',36,'2018-05-29 11:00:25','2018-05-29 11:00:25'),(134,'cupiditate',442,18,8,'odio','https://lorempixel.com/800/450/?49663',19,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(135,'est',898,12,2,'ad','https://lorempixel.com/800/450/?62726',3,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(136,'voluptate',730,17,3,'voluptatem','https://lorempixel.com/800/450/?94274',20,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(137,'maiores',425,57,5,'tempore','https://lorempixel.com/800/450/?97108',39,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(138,'mollitia',385,26,8,'dolore','https://lorempixel.com/800/450/?60785',12,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(139,'qui',908,80,3,'iste','https://lorempixel.com/800/450/?77350',31,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(140,'quo',295,51,2,'libero','https://lorempixel.com/800/450/?23972',10,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(141,'voluptatum',717,16,3,'corrupti','https://lorempixel.com/800/450/?50944',34,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(142,'occaecati',936,50,8,'autem','https://lorempixel.com/800/450/?75594',27,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(143,'tenetur',478,71,6,'earum','https://lorempixel.com/800/450/?83340',35,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(144,'sit',597,97,5,'beatae','https://lorempixel.com/800/450/?86645',28,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(145,'perferendis',225,14,8,'repudiandae','https://lorempixel.com/800/450/?49348',31,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(146,'facere',465,93,3,'enim','https://lorempixel.com/800/450/?93434',7,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(147,'rerum',224,34,8,'voluptas','https://lorempixel.com/800/450/?99117',1,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(148,'aliquam',183,57,4,'sunt','https://lorempixel.com/800/450/?65816',37,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(149,'rerum',275,87,6,'officiis','https://lorempixel.com/800/450/?96281',7,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(150,'quas',84,24,0,'eligendi','https://lorempixel.com/800/450/?60300',16,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(151,'praesentium',881,92,4,'esse','https://lorempixel.com/800/450/?66832',29,'2018-05-29 11:00:27','2018-05-29 11:00:27'),(152,'aut',469,15,2,'libero','https://lorempixel.com/800/450/?81895',27,'2018-05-29 11:00:27','2018-05-29 11:00:27');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (7,'2014_10_12_000000_create_users_table',1),(8,'2014_10_12_100000_create_password_resets_table',1),(9,'2018_05_23_124809_fabrics_migration',1),(10,'2018_05_23_124921_items_migration',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2018-05-29 15:01:41
