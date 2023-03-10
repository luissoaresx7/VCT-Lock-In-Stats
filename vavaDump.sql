-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vava
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `agente`
--

DROP TABLE IF EXISTS `agente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agente` (
  `AgtId` int(11) NOT NULL AUTO_INCREMENT,
  `AgtNome` varchar(255) NOT NULL,
  PRIMARY KEY (`AgtId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agente`
--

LOCK TABLES `agente` WRITE;
/*!40000 ALTER TABLE `agente` DISABLE KEYS */;
INSERT INTO `agente` VALUES (1,'KillJoy'),(2,'Jett'),(3,'Viper'),(4,'KAY/O'),(5,'Sova'),(6,'Omen'),(7,'Astra'),(8,'Breach'),(9,'Raze'),(10,'Skye'),(11,'Fade'),(12,'Sage'),(13,'Cypher'),(14,'Harbor'),(15,'Brimstone'),(16,'Neon'),(17,'Chamber'),(18,'Phoenix'),(19,'Yoru'),(20,'Reyna');
/*!40000 ALTER TABLE `agente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armas`
--

DROP TABLE IF EXISTS `armas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armas` (
  `WeapId` int(11) NOT NULL AUTO_INCREMENT,
  `WeapNome` varchar(255) NOT NULL,
  `WeapUsage` int(11) DEFAULT NULL,
  PRIMARY KEY (`WeapId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armas`
--

LOCK TABLES `armas` WRITE;
/*!40000 ALTER TABLE `armas` DISABLE KEYS */;
INSERT INTO `armas` VALUES (1,'Classic',1091),(2,'Shorty',61),(3,'Frenzy',555),(4,'Ghost',830),(5,'Sheriff',1138),(6,'Vandal',5979),(7,'Phantom',3764),(8,'Spectre',859),(9,'Stinger',522),(10,'Bulldog',523),(11,'Guardian',216),(12,'Marshal',160),(13,'Operator',618),(14,'Judge',71),(15,'Bucky',12),(16,'Ares',0),(17,'Odin',44);
/*!40000 ALTER TABLE `armas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipes` (
  `EquipeId` int(11) NOT NULL AUTO_INCREMENT,
  `EquipeNome` varchar(255) NOT NULL,
  `EquipePais` varchar(255) NOT NULL,
  PRIMARY KEY (`EquipeId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipes`
--

LOCK TABLES `equipes` WRITE;
/*!40000 ALTER TABLE `equipes` DISABLE KEYS */;
INSERT INTO `equipes` VALUES (1,'Koi','Espanha'),(2,'NRG','USA'),(3,'DetonatioN FM','Japão'),(4,'Giants','Espanha'),(5,'GenG','Coreia'),(6,'LOUD','Brasil'),(7,'FunPlus Phoenix','China'),(8,'Karmine Korp','França'),(9,'BBL Esports','Turquia'),(10,'DRX','Coreia'),(11,'Cloud9','USA'),(12,'Paper Rex','Singapura'),(13,'Evil Geniuses','USA'),(14,'Team Heretics','Espanha'),(15,'MIBR','Brasil'),(16,'Talon Esports','Tailândia'),(17,'Team Liquid','Holanda'),(18,'Team Secret','Filipinas'),(19,'Natus Vincere','Ucrânia'),(20,'KRÜ Esports','Chile'),(21,'ZETA DIVISION','Japão'),(22,'Leviatán','Chile'),(23,'Team Vitality','França'),(24,'Global Esports','Índia'),(25,'FUT Esports','Turquia'),(26,'Rex Regum Qeon','Polonia'),(27,'100 Thieves','USA'),(28,'Edward Gaming','China'),(29,'Sentinels','USA'),(30,'Fnatic','Inglaterra'),(31,'T1','Coreia'),(32,'Furia','Brasil');
/*!40000 ALTER TABLE `equipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogadores` (
  `JogadorId` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Pais` varchar(255) NOT NULL,
  `Equipe` int(11) NOT NULL,
  `K` int(11) NOT NULL,
  `D` int(11) NOT NULL,
  `A` int(11) NOT NULL,
  `KDA` decimal(10,0) NOT NULL,
  `Agentes` int(11) NOT NULL,
  `Agente2` int(11) DEFAULT NULL,
  `Agente3` int(11) DEFAULT NULL,
  `Agente4` int(11) DEFAULT NULL,
  `Agente5` int(11) DEFAULT NULL,
  `Agente6` int(11) DEFAULT NULL,
  `Mapas` int(11) DEFAULT NULL,
  PRIMARY KEY (`JogadorId`),
  KEY `Jogadores_fk0` (`Equipe`),
  KEY `Jogadores_fk1` (`Agentes`),
  KEY `Jogadores_fk2` (`Agente2`),
  KEY `Jogadores_fk3` (`Agente3`),
  KEY `Jogadores_fk4` (`Agente4`),
  KEY `Jogadores_fk5` (`Agente5`),
  KEY `Jogadores_fk6` (`Agente6`),
  CONSTRAINT `Jogadores_fk0` FOREIGN KEY (`Equipe`) REFERENCES `equipes` (`EquipeId`),
  CONSTRAINT `Jogadores_fk1` FOREIGN KEY (`Agentes`) REFERENCES `agente` (`AgtId`),
  CONSTRAINT `Jogadores_fk2` FOREIGN KEY (`Agente2`) REFERENCES `agente` (`AgtId`),
  CONSTRAINT `Jogadores_fk3` FOREIGN KEY (`Agente3`) REFERENCES `agente` (`AgtId`),
  CONSTRAINT `Jogadores_fk4` FOREIGN KEY (`Agente4`) REFERENCES `agente` (`AgtId`),
  CONSTRAINT `Jogadores_fk5` FOREIGN KEY (`Agente5`) REFERENCES `agente` (`AgtId`),
  CONSTRAINT `Jogadores_fk6` FOREIGN KEY (`Agente6`) REFERENCES `agente` (`AgtId`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` VALUES (1,'Cryocells','EUA',27,131,130,54,1,2,6,9,NULL,NULL,NULL,8),(2,'Asuna','EUA',27,118,135,76,1,4,8,12,NULL,NULL,NULL,8),(3,'bang','EUA',27,129,131,59,1,3,6,7,NULL,NULL,NULL,8),(4,'stellar','EUA',27,123,119,42,1,1,13,NULL,NULL,NULL,NULL,8),(5,'Derrek','EUA',27,112,131,59,1,5,8,11,NULL,NULL,NULL,8),(6,'QutionerX','Turquia',9,51,52,7,1,2,19,NULL,NULL,NULL,NULL,3),(7,'Brave','Turquia',9,41,49,26,1,6,7,NULL,NULL,NULL,NULL,3),(8,'SouhcNi','Turquia',9,33,43,17,1,5,NULL,NULL,NULL,NULL,NULL,3),(9,'AsLanM4ShadoW','Turquia',9,33,44,8,1,1,NULL,NULL,NULL,NULL,NULL,3),(10,'Turko','Turquia',9,30,41,18,1,4,8,NULL,NULL,NULL,NULL,3),(11,'leaf','EUA',11,72,58,26,2,1,3,13,NULL,NULL,NULL,5),(12,'Xeeppaa','EUA',11,77,62,25,2,5,10,NULL,NULL,NULL,NULL,5),(13,'yay','EUA',11,67,54,13,1,2,12,17,NULL,NULL,NULL,5),(14,'Zellsis','EUA',11,58,62,37,2,12,16,18,NULL,NULL,NULL,5),(15,'Vanity','EUA',11,49,59,54,2,1,6,7,NULL,NULL,NULL,5),(16,'Reita','Japão',3,25,30,8,1,5,NULL,NULL,NULL,NULL,NULL,2),(17,'takej','Japão',3,13,13,5,1,3,NULL,NULL,NULL,NULL,NULL,1),(18,'Anthem','Japão',3,19,29,6,1,1,NULL,NULL,NULL,NULL,NULL,2),(19,'Suggest','Coreia',3,21,31,14,1,4,8,NULL,NULL,NULL,NULL,2),(20,'xnfri','Japão',3,19,30,6,1,7,9,NULL,NULL,NULL,NULL,2),(21,'Seoldam','Coreia',3,7,16,2,1,2,NULL,NULL,NULL,NULL,NULL,1),(22,'MaKo','Coreia',10,219,175,163,2,3,6,7,15,NULL,NULL,14),(23,'BuZz','Coreia',10,227,201,56,1,1,2,9,NULL,NULL,NULL,14),(24,'stax','Coreia',10,185,191,103,2,4,8,10,11,14,NULL,14),(25,'Rb','Coreia',10,187,177,77,1,1,4,6,7,10,16,14),(26,'Zest','Coreia',10,170,179,71,1,1,4,5,11,NULL,NULL,14),(27,'CHICHOO','China',28,62,49,13,2,1,3,NULL,NULL,NULL,NULL,3),(28,'ZmjjKK','China',28,62,50,11,1,2,NULL,NULL,NULL,NULL,NULL,3),(29,'nobody','China',28,47,50,27,1,4,5,8,NULL,NULL,NULL,3),(30,'Smoggy','China',28,44,53,11,1,9,11,14,NULL,NULL,NULL,3),(31,'Haodong','China',28,37,51,24,1,3,6,7,NULL,NULL,NULL,3),(32,'Ethan','EUA',13,71,61,48,2,4,8,19,NULL,NULL,NULL,4),(33,'jawgemo','Camboja',13,70,65,17,1,2,9,NULL,NULL,NULL,NULL,4),(34,'Boostio','EUA',13,65,61,14,1,1,NULL,NULL,NULL,NULL,NULL,4),(35,'BcJ','EUA',13,56,60,50,2,6,7,NULL,NULL,NULL,NULL,4),(36,'C0M','EUA',13,56,66,54,2,4,5,11,NULL,NULL,NULL,4),(37,'Derke','Finlandia',30,274,220,58,2,2,9,NULL,NULL,NULL,NULL,14),(38,'Leo','Suécia',30,243,172,100,2,5,11,12,NULL,NULL,NULL,14),(39,'Chronicle','Rússia',30,218,198,135,2,3,4,8,9,12,NULL,14),(40,'Alfajer','Turquia',30,221,187,66,2,1,13,NULL,NULL,NULL,NULL,14),(41,'Boaster','Inglaterra',30,196,204,125,2,3,6,7,15,NULL,NULL,14),(42,'AAAAY','China',7,39,49,20,1,10,NULL,NULL,NULL,NULL,NULL,3),(43,'Yuicaw','Taiwan',7,42,40,7,1,1,2,17,NULL,NULL,NULL,3),(44,'WudiYuChEn','China',7,40,42,20,1,3,NULL,NULL,NULL,NULL,NULL,3),(45,'BerLIN','Taiwan',7,34,47,23,1,11,NULL,NULL,NULL,NULL,NULL,3),(46,'TZH','China',7,35,42,16,1,6,7,NULL,NULL,NULL,NULL,3),(47,'mwzera','Brasil',32,85,65,33,2,5,10,11,NULL,NULL,NULL,4),(48,'dgzin','Brasil',32,80,60,17,2,2,16,NULL,NULL,NULL,NULL,4),(49,'qck','Brasil',32,69,65,19,1,1,3,12,13,NULL,NULL,4),(50,'mazin','Brasil',32,63,60,37,2,3,4,10,14,NULL,NULL,4),(51,'Khalil','Brasil',32,46,58,23,1,1,6,7,NULL,NULL,NULL,4),(52,'qw1','Turquia',25,98,81,20,1,2,16,NULL,NULL,NULL,NULL,5),(53,'qRaxs','Turquia',25,79,70,50,2,4,11,NULL,NULL,NULL,NULL,5),(54,'mojj','Turquia',25,74,74,27,1,1,3,NULL,NULL,NULL,NULL,5),(55,'MrFaliN','Turquia',25,69,84,43,1,1,4,5,NULL,NULL,NULL,5),(56,'AKA KAPTAN','Turquia',25,64,71,35,1,7,8,12,NULL,NULL,NULL,5),(57,'k1Ng','Coreia',5,44,32,23,2,3,4,NULL,NULL,NULL,NULL,2),(58,'Meteor','Coreia',5,39,37,10,1,2,9,NULL,NULL,NULL,NULL,2),(59,'TS','Coreia',5,37,32,24,2,7,15,NULL,NULL,NULL,NULL,2),(60,'eKo','Coreia',5,24,35,21,1,16,10,NULL,NULL,NULL,NULL,2),(61,'Secret','Coreia',5,25,37,22,1,5,11,NULL,NULL,NULL,NULL,2),(62,'Cloud','Rússia',4,80,66,14,1,5,NULL,NULL,NULL,NULL,NULL,5),(63,'Fit1nho','Espanha',4,72,69,18,1,2,9,NULL,NULL,NULL,NULL,5),(64,'nukkye','Lituânia',4,68,58,45,2,12,8,NULL,NULL,NULL,NULL,5),(65,'hoody','Finlandia',4,61,65,16,1,1,NULL,NULL,NULL,NULL,NULL,5),(66,'rhyme','Noruega',4,57,68,43,1,3,6,7,NULL,NULL,NULL,5),(67,'Monyet','Indonésia',24,45,41,15,1,6,7,NULL,NULL,NULL,NULL,3),(68,'t3xture','Coreia',24,46,45,4,1,2,9,NULL,NULL,NULL,NULL,3),(69,'AYRIN','Canadá',24,36,45,7,1,1,3,NULL,NULL,NULL,NULL,3),(70,'Bazzi','Coreia',24,30,47,23,1,8,10,11,NULL,NULL,NULL,3),(71,'SkRossi','Índia',24,29,45,19,1,2,4,5,12,NULL,NULL,3),(72,'Shin','França',8,97,74,28,2,3,9,11,NULL,NULL,NULL,5),(73,'Nivera','Bélgica',8,93,70,37,2,6,7,NULL,NULL,NULL,NULL,5),(74,'ScreaM','Bélgica',8,69,75,34,1,4,10,NULL,NULL,NULL,NULL,5),(75,'xms','França',8,56,69,25,1,1,13,NULL,NULL,NULL,NULL,5),(76,'Newzera','França',8,53,64,29,1,5,8,14,NULL,NULL,NULL,5),(77,'trexx','Rússia',1,46,27,9,2,5,NULL,NULL,NULL,NULL,NULL,2),(78,'Wolfen','Bulgária',1,28,38,7,1,2,NULL,NULL,NULL,NULL,NULL,2),(79,'Sheydos','Rússia',1,27,24,6,1,1,NULL,NULL,NULL,NULL,NULL,2),(80,'starxo','Polônia',1,17,29,22,1,8,12,NULL,NULL,NULL,NULL,2),(81,'koldamenta','Espanha',1,17,34,19,1,3,6,NULL,NULL,NULL,NULL,2),(82,'Daveeys','Colômbia',20,27,33,5,1,1,9,NULL,NULL,NULL,NULL,2),(83,'xand','Brasil',20,25,34,15,1,4,16,NULL,NULL,NULL,NULL,2),(84,'axeddy','Brasil',20,21,32,15,1,5,8,NULL,NULL,NULL,NULL,2),(85,'Melser','Chile',20,20,32,11,1,6,NULL,NULL,NULL,NULL,NULL,2),(86,'NagZ','Chile',20,14,33,3,1,1,2,NULL,NULL,NULL,NULL,2),(87,'Shyy','Chile',22,109,79,25,2,1,NULL,NULL,NULL,NULL,NULL,6),(88,'Tacolilla','Chile',22,91,87,23,1,2,9,NULL,NULL,NULL,NULL,6),(89,'kiNgg','Chile',22,95,82,52,2,3,4,8,NULL,NULL,NULL,6),(90,'Mazino','Chile',22,82,82,51,2,6,7,15,NULL,NULL,NULL,6),(91,'Nozwerr','Argentina',22,61,78,39,1,5,8,10,11,NULL,NULL,6),(92,'Less','Brasil',6,312,255,95,2,1,3,NULL,NULL,NULL,NULL,17),(93,'aspas','Brasil',6,305,258,65,1,2,NULL,NULL,NULL,NULL,NULL,17),(94,'cauanzin','Brasil',6,280,276,163,2,8,10,NULL,NULL,NULL,NULL,17),(95,'Saadhak','Argentina',6,230,279,105,1,1,3,9,NULL,NULL,NULL,17),(96,'tuyz','Brasil',6,238,257,156,2,6,7,15,14,NULL,NULL,17),(97,'heat','Brasil',15,37,36,10,1,9,16,NULL,NULL,NULL,NULL,2),(98,'frz','Brasil',15,37,32,13,2,1,13,NULL,NULL,NULL,NULL,2),(99,'murizzz','Brasil',15,32,31,26,2,4,8,NULL,NULL,NULL,NULL,2),(100,'jzz','Brasil',15,32,36,14,1,8,11,NULL,NULL,NULL,NULL,2),(101,'RgLM','Brasil',15,23,32,28,2,6,15,NULL,NULL,NULL,NULL,2),(102,'cNed','Turquia',19,146,125,37,1,2,9,NULL,NULL,NULL,NULL,8),(103,'ANGE1','Ucrânia',19,130,122,60,2,5,6,13,NULL,NULL,NULL,8),(104,'Shao','NA',19,137,84,64,2,6,7,11,12,NULL,NULL,8),(105,'Zyppan','Suécia',19,133,112,83,2,4,NULL,NULL,NULL,NULL,NULL,8),(106,'SUYGETSU','NA',19,125,112,48,2,1,3,13,14,NULL,NULL,8),(107,'ardiis','Letônia',2,142,125,49,2,1,2,4,9,12,NULL,8),(108,'crashies','EUA',2,147,115,56,2,1,5,8,NULL,NULL,NULL,8),(109,'s0m','EUA',2,135,118,82,2,3,6,7,14,15,NULL,8),(110,'FNS','Canadá',2,111,131,64,1,1,3,8,13,NULL,NULL,8),(111,'Victor','EUA',2,108,128,72,1,1,4,9,10,NULL,NULL,8),(112,'f0rsakeN','Singapura',12,25,34,2,1,2,17,NULL,NULL,NULL,NULL,2),(113,'Jinggg','Singapura',12,27,29,8,1,9,12,NULL,NULL,NULL,NULL,2),(114,'Benkai','Singapura',12,21,32,11,1,1,12,NULL,NULL,NULL,NULL,2),(115,'mindfreak','Singapura',12,21,32,11,1,6,7,NULL,NULL,NULL,NULL,2),(116,'d4v41','Malásia',12,16,31,16,1,10,11,NULL,NULL,NULL,NULL,2),(117,'Emman','Filipinas',26,32,29,18,2,4,20,NULL,NULL,NULL,NULL,2),(118,'Lmemore','Indonésia',26,27,31,12,1,12,13,NULL,NULL,NULL,NULL,2),(119,'EJAY','Filipinas',26,10,14,3,1,16,NULL,NULL,NULL,NULL,NULL,1),(120,'Techbotol','Indonésia',26,26,28,10,1,6,11,NULL,NULL,NULL,NULL,2),(121,'fl1pzjder','Indonésia',26,23,29,18,1,3,8,NULL,NULL,NULL,NULL,2),(122,'2ge','Filipinas',26,10,18,6,1,7,NULL,NULL,NULL,NULL,NULL,1),(123,'pANcada','Brasil',29,28,30,8,1,3,6,7,NULL,NULL,NULL,2),(124,'TenZ','Canadá',29,26,27,8,1,2,12,NULL,NULL,NULL,NULL,2),(125,'Sacy','Brasil',29,24,31,10,1,10,NULL,NULL,NULL,NULL,NULL,2),(126,'dephh','Inglaterra',29,16,30,7,1,1,7,NULL,NULL,NULL,NULL,2),(127,'zekken','EUA',29,15,32,11,1,9,8,NULL,NULL,NULL,NULL,2),(128,'Carpe','Coreia',31,29,30,5,1,5,NULL,NULL,NULL,NULL,NULL,2),(129,'Sayaplayer','Coreia',31,26,33,2,1,2,NULL,NULL,NULL,NULL,NULL,2),(130,'xeta','Coreia',31,17,30,19,1,4,NULL,NULL,NULL,NULL,NULL,2),(131,'Munchkin','Coreia',31,18,30,14,1,3,7,NULL,NULL,NULL,NULL,2),(132,'ban','EUA',31,16,32,3,1,1,NULL,NULL,NULL,NULL,NULL,2),(133,'garnetS','Tailândia',16,128,117,24,1,16,9,2,NULL,NULL,NULL,7),(134,'foxs','Tailândia',16,116,103,49,2,10,4,5,11,NULL,NULL,7),(135,'Crws','Tailândia',16,96,115,65,1,6,3,15,NULL,NULL,NULL,7),(136,'sushiboys','Tailândia',16,105,104,31,1,1,7,NULL,NULL,NULL,NULL,7),(137,'jitboyS','Tailândia',16,106,114,56,1,8,14,4,NULL,NULL,NULL,7),(138,'keloqz','França',14,38,33,5,1,2,NULL,NULL,NULL,NULL,NULL,2),(139,'mixwell','Espanha',14,30,34,26,2,8,4,NULL,NULL,NULL,NULL,2),(140,'zeek','Polônia',14,32,32,14,1,1,4,NULL,NULL,NULL,NULL,2),(141,'avovA','Dinamarca',14,20,37,16,1,6,7,NULL,NULL,NULL,NULL,2),(142,'Boo','Lituânia',14,19,29,9,1,13,5,NULL,NULL,NULL,NULL,2),(143,'nAts','Rússia',17,40,30,13,2,9,2,NULL,NULL,NULL,NULL,2),(144,'Jamppi','Finlandia',17,32,33,10,1,8,5,NULL,NULL,NULL,NULL,2),(145,'Redgar','Rússia',17,25,32,13,1,4,1,NULL,NULL,NULL,NULL,2),(146,'Sayf','Suécia',17,26,31,9,1,4,1,NULL,NULL,NULL,NULL,2),(147,'soulcas','Inglaterra',17,16,30,10,1,12,7,NULL,NULL,NULL,NULL,2),(148,'JessieVash','Filipinas',18,71,67,25,1,5,11,NULL,NULL,NULL,NULL,4),(149,'invy','Filipinas',18,58,58,30,2,4,1,8,NULL,NULL,NULL,4),(150,'BORKUM','Filipinas',18,42,63,43,1,14,15,3,NULL,NULL,NULL,4),(151,'Jremy','Filipinas',18,47,60,24,1,12,4,9,NULL,NULL,NULL,4),(152,'DubsteP','Filipinas',18,39,57,13,1,7,1,13,NULL,NULL,NULL,4),(153,'Twisten','Rep. Tcheca',23,99,73,16,2,2,9,NULL,NULL,NULL,NULL,5),(154,'MOLSI','Polônia',23,89,73,53,2,9,11,8,4,NULL,NULL,5),(155,'ceNder','Lituânia',23,85,73,19,1,1,13,NULL,NULL,NULL,NULL,5),(156,'Destrian','Lituânia',23,52,69,51,1,14,7,6,NULL,NULL,NULL,5),(157,'BONECOLD','Finlandia',23,52,77,39,1,5,7,11,8,12,NULL,5),(158,'Dep','Japão',21,26,30,4,1,2,NULL,NULL,NULL,NULL,NULL,2),(159,'SugarZ3ro','Japão',21,24,30,16,1,6,7,NULL,NULL,NULL,NULL,2),(160,'Laz','Japão',21,24,26,6,1,1,NULL,NULL,NULL,NULL,NULL,2),(161,'crow','Japão',21,17,33,16,1,4,5,NULL,NULL,NULL,NULL,2),(162,'TENNN','Japão',21,17,34,8,1,4,5,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogos` (
  `JogoId` int(11) NOT NULL AUTO_INCREMENT,
  `Time1` int(11) NOT NULL,
  `PlacarTime1` varchar(255) NOT NULL,
  `PlacarTime2` varchar(255) NOT NULL,
  `Time2` int(11) NOT NULL,
  `Mapa` int(11) NOT NULL,
  `MVP` int(11) DEFAULT NULL,
  PRIMARY KEY (`JogoId`),
  KEY `Jogos_fk0` (`Time1`),
  KEY `Jogos_fk1` (`Time2`),
  KEY `Jogos_fk2` (`Mapa`),
  KEY `Jogos_fk3` (`MVP`),
  CONSTRAINT `Jogos_fk0` FOREIGN KEY (`Time1`) REFERENCES `equipes` (`EquipeId`),
  CONSTRAINT `Jogos_fk1` FOREIGN KEY (`Time2`) REFERENCES `equipes` (`EquipeId`),
  CONSTRAINT `Jogos_fk2` FOREIGN KEY (`Mapa`) REFERENCES `mapa` (`MapId`),
  CONSTRAINT `Jogos_fk3` FOREIGN KEY (`MVP`) REFERENCES `jogadores` (`JogadorId`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,1,'11','13',2,4,109),(2,1,'9','13',2,2,NULL),(3,3,'4','13',4,2,62),(4,3,'7','13',4,4,NULL),(5,5,'9','13',6,6,93),(6,5,'12','14',6,5,NULL),(7,7,'6','13',8,7,72),(8,7,'13','8',8,2,NULL),(9,7,'6','13',8,6,NULL),(10,9,'3','13',10,6,23),(11,9,'13','11',10,3,NULL),(12,9,'7','13',10,2,NULL),(13,11,'13','8',12,7,12),(14,11,'13','4',12,6,NULL),(15,28,'13','8',14,6,32),(16,28,'13','8',14,3,NULL),(17,15,'8','13',16,2,136),(18,15,'11','13',16,5,NULL),(19,17,'8','13',18,4,148),(20,17,'7','13',18,5,NULL),(21,19,'13','5',20,3,105),(22,19,'13','10',20,5,NULL),(23,21,'4','13',22,3,90),(24,21,'11','13',22,6,NULL),(25,23,'13','4',24,1,153),(26,23,'9','13',24,6,NULL),(27,23,'13','6',24,7,NULL),(28,25,'13','3',26,7,52),(29,25,'13','11',26,6,NULL),(30,27,'13','10',28,4,4),(31,27,'9','13',28,7,NULL),(32,27,'14','12',28,6,NULL),(33,29,'6','13',30,2,37),(34,29,'7','13',30,1,NULL),(35,31,'7','13',32,6,48),(36,31,'5','13',32,4,NULL),(37,2,'12','14',4,7,109),(38,2,'13','1',4,2,NULL),(39,2,'13','7',4,4,NULL),(40,6,'13','10',8,6,93),(41,6,'13','8',8,1,NULL),(42,10,'3','13',11,6,24),(43,10,'13','7',11,2,NULL),(44,10,'13','2',11,4,NULL),(45,13,'11','13',16,2,133),(46,13,'10','13',16,1,NULL),(47,18,'8','13',19,4,102),(48,18,'4','13',19,6,NULL),(49,22,'16','14',23,2,88),(50,22,'13','3',23,6,NULL),(51,25,'13','9',27,7,3),(52,25,'11','13',27,2,NULL),(53,25,'8','13',27,4,NULL),(54,30,'18','16',32,2,37),(55,30,'13','9',32,3,NULL),(56,2,'3','13',6,1,93),(57,2,'15','13',6,6,NULL),(58,2,'16','18',6,5,NULL),(59,10,'10','13',16,5,26),(60,10,'13','6',16,3,NULL),(61,10,'13','10',16,4,NULL),(62,19,'13','10',22,3,104),(63,19,'13','2',22,5,NULL),(64,27,'1','13',30,5,37),(65,27,'10','13',30,4,NULL),(66,6,'13','5',10,6,93),(67,6,'13','8',10,4,NULL),(68,6,'7','13',10,1,NULL),(69,6,'7','13',10,5,NULL),(70,6,'13','8',10,3,NULL),(71,19,'11','13',30,2,38),(72,19,'4','13',30,7,NULL),(73,19,'11','13',30,5,NULL),(74,6,'8','13',30,3,38),(75,6,'7','13',30,5,NULL),(76,6,'13','9',30,1,NULL),(77,6,'13','8',30,7,NULL),(78,6,'12','14',30,4,NULL);
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapa`
--

DROP TABLE IF EXISTS `mapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mapa` (
  `MapId` int(11) NOT NULL AUTO_INCREMENT,
  `MapNome` varchar(255) NOT NULL,
  `MapBan` varchar(255) NOT NULL,
  `MapPick` varchar(255) NOT NULL,
  `RoundAtkWin` varchar(255) NOT NULL,
  `RoundDefWin` varchar(255) NOT NULL,
  PRIMARY KEY (`MapId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapa`
--

LOCK TABLES `mapa` WRITE;
/*!40000 ALTER TABLE `mapa` DISABLE KEYS */;
INSERT INTO `mapa` VALUES (1,'Split','21','10','68','71'),(2,'Haven','16','15','159','131'),(3,'Ascent','20','11','88','98'),(4,'Icebox','15','16','146','130'),(5,'Fracture','17','14','117','103'),(6,'Pearl','11','20','160','169'),(7,'Lotus','18','13','123','83');
/*!40000 ALTER TABLE `mapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vava'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 22:22:54
