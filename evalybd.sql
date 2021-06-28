-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: evaly
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apprenant`
--

DROP TABLE IF EXISTS `apprenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `apprenant` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `id_promotion` int(11) DEFAULT NULL,
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `id_promotion` (`id_promotion`),
  CONSTRAINT `apprenant_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  CONSTRAINT `apprenant_ibfk_2` FOREIGN KEY (`id_promotion`) REFERENCES `promotion` (`id_promotion`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apprenant`
--

LOCK TABLES `apprenant` WRITE;
/*!40000 ALTER TABLE `apprenant` DISABLE KEYS */;
INSERT INTO `apprenant` VALUES (2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1);
/*!40000 ALTER TABLE `apprenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examen` (
  `id_examen` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) DEFAULT NULL,
  `date_examen` datetime DEFAULT NULL,
  `duree_examen` int(11) DEFAULT NULL,
  `id_formateur` int(11) DEFAULT NULL,
  `moyenne` double DEFAULT NULL,
  `id_promotion` int(11) DEFAULT NULL,
  `id_sujet` int(11) DEFAULT NULL,
  `date_examen_string` datetime DEFAULT NULL,
  `id_matiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_examen`),
  KEY `id_formateur` (`id_formateur`),
  KEY `examen_ibfk_2_idx` (`id_promotion`),
  KEY `examen_ibfk_3_idx` (`id_sujet`),
  KEY `examen_ibfk_4_idx` (`id_matiere`),
  CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_utilisateur`),
  CONSTRAINT `examen_ibfk_2` FOREIGN KEY (`id_promotion`) REFERENCES `promotion` (`id_promotion`),
  CONSTRAINT `examen_ibfk_3` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`),
  CONSTRAINT `examen_ibfk_4` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES (1,'Examen Trimestre1','2021-06-05 14:32:00',120,1,NULL,1,1,'2021-06-05 14:32:00',1),(2,'Examen Trimestre2','2021-06-17 10:32:00',115,30,NULL,1,1,'2021-06-17 10:32:00',1),(3,'TDBBBB','2021-06-17 10:32:00',60,1,NULL,1,1,'2021-06-17 10:32:00',1),(15,'Titre','2021-06-17 10:32:00',60,1,NULL,1,1,'2021-06-17 10:32:00',1),(16,'Second Test','2021-06-17 10:32:00',60,1,NULL,1,2,'2021-06-17 10:32:00',1),(24,'Nouveau','2021-06-05 00:00:00',60,1,NULL,1,1,'2021-06-05 12:16:00',1),(25,'Testtimer','2021-06-05 00:00:00',2,1,NULL,1,1,'2021-06-05 13:58:00',1),(26,'AZE','2021-06-05 00:00:00',60,1,NULL,1,1,'2021-06-05 14:46:00',1),(27,'Titre','2021-06-05 00:00:00',60,1,NULL,1,1,'2021-06-05 14:54:00',1),(28,'Examen Test Présentation','2021-06-08 00:00:00',60,1,NULL,1,1,'2021-06-08 15:45:00',1);
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_sujet`
--

DROP TABLE IF EXISTS `examen_sujet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examen_sujet` (
  `id_examen_sujet` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen` int(11) DEFAULT NULL,
  `id_sujet` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_examen_sujet`),
  KEY `id_examen` (`id_examen`),
  KEY `id_sujet` (`id_sujet`),
  CONSTRAINT `examen_sujet_ibfk_1` FOREIGN KEY (`id_examen`) REFERENCES `examen` (`id_examen`),
  CONSTRAINT `examen_sujet_ibfk_2` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_sujet`
--

LOCK TABLES `examen_sujet` WRITE;
/*!40000 ALTER TABLE `examen_sujet` DISABLE KEYS */;
INSERT INTO `examen_sujet` VALUES (1,1,1);
/*!40000 ALTER TABLE `examen_sujet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formateur`
--

DROP TABLE IF EXISTS `formateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `formateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `is_referent` tinyint(1) DEFAULT NULL,
  KEY `id_utilisateur` (`id_utilisateur`),
  CONSTRAINT `formateur_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formateur`
--

LOCK TABLES `formateur` WRITE;
/*!40000 ALTER TABLE `formateur` DISABLE KEYS */;
INSERT INTO `formateur` VALUES (1,1),(30,0),(29,1),(28,0);
/*!40000 ALTER TABLE `formateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formateur_groupe_formateur`
--

DROP TABLE IF EXISTS `formateur_groupe_formateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `formateur_groupe_formateur` (
  `id_formateur_groupe_formateur` int(11) NOT NULL AUTO_INCREMENT,
  `id_formateur` int(11) DEFAULT NULL,
  `id_groupe_formateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_formateur_groupe_formateur`),
  KEY `id_formateur` (`id_formateur`),
  KEY `id_groupe_formateur` (`id_groupe_formateur`),
  CONSTRAINT `formateur_groupe_formateur_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_utilisateur`),
  CONSTRAINT `formateur_groupe_formateur_ibfk_2` FOREIGN KEY (`id_groupe_formateur`) REFERENCES `groupe_formateur` (`id_groupe_formateur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formateur_groupe_formateur`
--

LOCK TABLES `formateur_groupe_formateur` WRITE;
/*!40000 ALTER TABLE `formateur_groupe_formateur` DISABLE KEYS */;
INSERT INTO `formateur_groupe_formateur` VALUES (1,1,2),(2,1,1),(3,1,4),(4,30,3);
/*!40000 ALTER TABLE `formateur_groupe_formateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formateur_matiere`
--

DROP TABLE IF EXISTS `formateur_matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `formateur_matiere` (
  `id_formateur_matiere` int(11) NOT NULL AUTO_INCREMENT,
  `id_matiere` int(11) DEFAULT NULL,
  `id_formateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_formateur_matiere`),
  KEY `id_matiere` (`id_matiere`),
  KEY `id_formateur` (`id_formateur`),
  CONSTRAINT `formateur_matiere_ibfk_1` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`),
  CONSTRAINT `formateur_matiere_ibfk_2` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formateur_matiere`
--

LOCK TABLES `formateur_matiere` WRITE;
/*!40000 ALTER TABLE `formateur_matiere` DISABLE KEYS */;
INSERT INTO `formateur_matiere` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,8,1),(6,9,1),(7,10,1),(8,5,30),(9,6,30),(10,7,30);
/*!40000 ALTER TABLE `formateur_matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupe_formateur`
--

DROP TABLE IF EXISTS `groupe_formateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `groupe_formateur` (
  `id_groupe_formateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `id_organisation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_groupe_formateur`),
  KEY `id_organisation` (`id_organisation`),
  CONSTRAINT `groupe_formateur_ibfk_1` FOREIGN KEY (`id_organisation`) REFERENCES `organisation` (`id_organisation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupe_formateur`
--

LOCK TABLES `groupe_formateur` WRITE;
/*!40000 ALTER TABLE `groupe_formateur` DISABLE KEYS */;
INSERT INTO `groupe_formateur` VALUES (1,'INFORMATIQUE',1),(2,'VENTE',1),(3,'WEB',1),(4,'MARKETING',1),(5,'COMMUNICATION',1),(6,'MANAGEMENT',1),(7,'MECANIQUE',1),(8,'PHYSIQUE',1);
/*!40000 ALTER TABLE `groupe_formateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `matiere` (
  `id_matiere` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `id_groupe_formateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_matiere`),
  KEY `id_groupe_formateur` (`id_groupe_formateur`),
  CONSTRAINT `matiere_ibfk_1` FOREIGN KEY (`id_groupe_formateur`) REFERENCES `groupe_formateur` (`id_groupe_formateur`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matiere`
--

LOCK TABLES `matiere` WRITE;
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
INSERT INTO `matiere` VALUES (1,'JAVA',1),(2,'Javascript - General',1),(3,'Base de donnée',1),(4,'UML',1),(5,'techniques de vente',2),(6,'argumentaire',2),(7,'negociation',2),(8,'Html',3),(9,'CSS',3),(10,'Angular',3),(11,'sociologie et tendances de consommation',4),(12,'management stratégique et opérationnel',4),(13,'gestion de la relation commerciale',5),(14,'Cultures de la communication',5),(15,'management stratégique et opérationne',6),(16,'management de projet',6),(17,'management d équipe',6),(18,'biomécanique',7),(19,'mécatronique',7),(20,'modélisation',7),(21,'Physique quantique',8),(22,'Astrophysique',8),(23,'Mathématique appliquée',8),(24,'Bonjour',1),(25,'654',2);
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `organisation` (
  `id_organisation` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `rue` varchar(500) NOT NULL,
  `ville` varchar(500) NOT NULL,
  `code` varchar(500) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id_organisation`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisation`
--

LOCK TABLES `organisation` WRITE;
/*!40000 ALTER TABLE `organisation` DISABLE KEYS */;
INSERT INTO `organisation` VALUES (1,'AFPA','rue du Luxembourg','Roubaix','59100',20),(2,'AZERT','Rue Dab','LILLE','59000',46),(3,'59000','Rue Dab','LILLE','59000',46),(4,'59000','Rue Dab','LILLE','59000',12),(5,'59000','Rue Dab','LILLE','59000',654);
/*!40000 ALTER TABLE `organisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotion` (
  `id_promotion` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `annee_creation` varchar(10) DEFAULT NULL,
  `id_organisation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_promotion`),
  KEY `id_organisation` (`id_organisation`),
  CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`id_organisation`) REFERENCES `organisation` (`id_organisation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'CDA_2020','2020-12-04','2020',1);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_formateur`
--

DROP TABLE IF EXISTS `promotion_formateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotion_formateur` (
  `id_promotion` int(11) NOT NULL,
  `id_formateur` int(11) NOT NULL,
  `id_promotion_formateur` int(11) NOT NULL,
  PRIMARY KEY (`id_promotion`,`id_formateur`),
  KEY `promotion_formateur_ibfk_2` (`id_formateur`),
  CONSTRAINT `promotion_formateur_ibfk_1` FOREIGN KEY (`id_promotion`) REFERENCES `promotion` (`id_promotion`),
  CONSTRAINT `promotion_formateur_ibfk_2` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_formateur`
--

LOCK TABLES `promotion_formateur` WRITE;
/*!40000 ALTER TABLE `promotion_formateur` DISABLE KEYS */;
INSERT INTO `promotion_formateur` VALUES (1,1,0),(1,30,0);
/*!40000 ALTER TABLE `promotion_formateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `description_question` varchar(500) DEFAULT NULL,
  `coefficient` int(11) DEFAULT NULL,
  `is_qcm` tinyint(1) DEFAULT NULL,
  `id_theme` int(11) DEFAULT NULL,
  `nbnotes` int(11) DEFAULT NULL,
  `tauxreussite` double DEFAULT NULL,
  `nbreussite` int(11) DEFAULT NULL,
  `id_matiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_question`),
  KEY `id_theme` (`id_theme`),
  KEY `question_ibfk_2_idx` (`id_matiere`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_theme`) REFERENCES `theme` (`id_theme`),
  CONSTRAINT `question_ibfk_2` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Lequel des éléments suivants n’est pas un concept POO en Java ?',3,0,1,0,100,6,1),(2,'Quand la surcharge de méthode est-elle déterminée ?',4,1,1,13,84,11,1),(3,'Quand la surcharge ne se produit pas ?',1,1,1,7,71,5,1),(4,'Quel concept de Java est un moyen de convertir des objets du monde réel en termes de classe',2,1,1,1,0,0,1),(5,'Quel concept de Java est utilisé en combinant des méthodes et des attributs dans une classe ?',1,1,1,9,33,3,1),(6,'Comment ça s’appelle si un objet a son propre cycle de vie?',1,1,1,8,87,7,1),(7,'Comment s’appelle-t-on dans le cas où l’objet d’une classe mère est détruit donc l’objet d’une classe fille sera détruit également?',1,1,1,8,75,6,1),(8,'Comment s’appelle-t-on l’objet a son propre cycle de vie et l’objet d’une classe fille ne dépend pas à un autre objet d’une classe mère?',1,1,1,9,44,4,1),(9,'La surcharge d’une méthode peut remplacer l’héritage et le polymorphisme?',1,1,1,7,71,5,1),(10,'Quels keywords sont utilisés pour spécifier la visibilité des propriétés et des méthodes ?',1,1,1,8,37,3,1),(41,'equals ou ==',1,1,1,0,100,0,1),(42,'Comment s\'appellent les objets numériques ?',1,1,1,0,100,0,1),(43,'Numériques',2,1,1,0,100,0,1),(51,'1+1=2',1,0,3,0,100,0,1),(52,'1+1=2',1,0,3,0,100,0,1),(53,'2+2=5',1,0,3,0,100,0,1),(54,'2+2=4',1,0,3,0,100,0,1),(55,'AZE',2,1,33,0,100,0,1),(56,'SQL is MySQL',1,0,36,0,100,0,6),(57,'SQL is MySQLa',1,0,36,0,100,0,6),(58,'dsc',2,0,36,0,100,0,6),(59,'Testreponsesvides',2,1,1,0,100,0,1),(60,'Testreponsesvides2',2,1,1,0,100,0,1),(61,'Test réponses 2',1,1,2,0,100,0,1),(62,'dsc',1,1,3,0,100,0,1),(63,'dsc',1,1,4,0,100,0,1),(64,'dsctest',1,1,1,0,100,0,1),(65,'dscteetetete',1,1,1,0,100,0,1),(66,'dsc2',1,1,1,0,100,0,1),(67,'dscazeaze',1,1,3,0,100,0,1),(68,'dsc',1,1,1,0,100,0,1),(69,'dsc',1,1,1,0,100,0,1),(70,'CT T',3,1,37,0,100,0,9),(71,'Best',1,1,37,0,100,0,9),(72,'Integer est il un objet ?',1,1,1,0,100,0,1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reponse`
--

DROP TABLE IF EXISTS `reponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reponse` (
  `id_reponse` int(11) NOT NULL AUTO_INCREMENT,
  `description_reponse` varchar(500) DEFAULT NULL,
  `is_bonne_reponse` tinyint(1) DEFAULT NULL,
  `valeur_reponse` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reponse`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reponse`
--

LOCK TABLES `reponse` WRITE;
/*!40000 ALTER TABLE `reponse` DISABLE KEYS */;
INSERT INTO `reponse` VALUES (29,'Agrégation',1,1,8),(30,'Composition',0,1,8),(31,'Encapsulation',0,1,8),(32,'Association',0,1,8),(41,'a',1,NULL,13),(42,'a',1,NULL,14),(43,'a',1,NULL,15),(44,'a',1,NULL,16),(45,'aze',1,NULL,17),(46,'Vrai',0,NULL,18),(47,'Faux',0,NULL,18),(48,'Vrai',1,NULL,19),(49,'Faux',1,NULL,19),(50,'Class',1,NULL,20),(51,'Class',1,NULL,21),(52,'Class',1,NULL,22),(53,'Class',1,NULL,23),(54,'Class',1,NULL,24),(55,'a',1,NULL,25),(56,'a',1,NULL,26),(57,'a',1,NULL,27),(58,'a',1,NULL,28),(59,'a',1,NULL,29),(60,'a',1,NULL,30),(61,'a',1,NULL,31),(62,'a',1,NULL,32),(63,'aze',0,NULL,32),(64,'a',1,NULL,33),(65,'aze',0,NULL,33),(66,'a',1,NULL,34),(67,'aze',0,NULL,34),(68,'zeee',0,NULL,34),(70,'Eclipse',1,NULL,35),(71,'JavaFX',1,NULL,35),(72,'TikTok',0,NULL,35),(73,'Snap',0,NULL,35),(74,'Eclipse',1,NULL,36),(75,'JavaFX',1,NULL,36),(76,'TikTok',0,NULL,36),(77,'Snap',0,NULL,36),(78,'Encapsulation',1,NULL,37),(79,'Polymorphisme',1,NULL,37),(80,'Compilation',0,NULL,37),(81,'Héritage',1,NULL,37),(82,'Encapsulation',1,NULL,38),(83,'Polymorphisme',1,NULL,38),(84,'Compilation',0,NULL,38),(85,'Héritage',1,NULL,38),(86,'Encapsulation',1,NULL,39),(87,'Polymorphisme',1,NULL,39),(88,'Compilation',0,NULL,39),(89,'Héritage',1,NULL,39),(90,'Encapsulation',1,NULL,40),(91,'Polymorphisme',1,NULL,40),(92,'Compilation',0,NULL,40),(93,'Héritage',1,NULL,40),(150,'Oui',1,NULL,41),(222,'Polymorphisme',0,NULL,5),(223,'Encapsulation',1,NULL,5),(224,'Abstraction',0,NULL,5),(225,'Héritage',0,NULL,5),(230,'Agrégation',1,NULL,7),(231,'Composition',0,NULL,7),(232,'Encapsulation',0,NULL,7),(233,'Association',0,NULL,7),(238,'Héritage',0,NULL,4),(239,'Abstraction.',1,NULL,4),(240,'Polymorphisme',0,NULL,4),(242,'Vrai',1,NULL,9),(243,'Faux',0,NULL,9),(246,'final',0,NULL,10),(247,'private',1,NULL,10),(248,'abstract',0,NULL,10),(249,'protected',1,NULL,10),(268,'OUi',1,NULL,44),(269,'Non',0,NULL,44),(272,'Vrai',1,NULL,45),(273,'Faux',1,NULL,45),(274,'AZE',1,NULL,48),(275,'zzz',0,NULL,48),(278,'aze',1,NULL,49),(279,'aze',0,NULL,49),(282,'ZE',1,NULL,50),(283,'ZAe',0,NULL,50),(286,'Vrai',1,NULL,51),(287,'Faux',1,NULL,51),(288,'Vrai',0,NULL,53),(289,'Faux',0,NULL,53),(290,'Vrai',1,NULL,54),(291,'Faux',1,NULL,54),(292,'AZe',1,NULL,55),(293,'AZ',0,NULL,55),(298,'Vrai',0,NULL,57),(299,'Faux',0,NULL,57),(300,'Vrai',0,NULL,58),(301,'Faux',0,NULL,58),(302,'Rep1',1,NULL,59),(303,'Rep2',0,NULL,59),(306,'Rep1',1,NULL,60),(307,'Rep2',0,NULL,60),(310,'RE1',1,NULL,61),(311,'RE2',0,NULL,61),(314,'ER1',1,NULL,62),(315,'ER2',0,NULL,62),(318,'RE1',1,NULL,63),(319,'RE2',0,NULL,63),(322,'ER1',1,NULL,64),(323,'ER2',0,NULL,64),(326,'RE1',1,NULL,65),(327,'RE2',0,NULL,65),(330,'aa',1,NULL,66),(331,'aa',0,NULL,66),(334,'az',1,NULL,67),(335,'az',0,NULL,67),(339,'az',0,NULL,68),(342,'az',1,NULL,69),(343,'az',0,NULL,69),(346,'oui',1,NULL,70),(347,'non',0,NULL,70),(350,'AK ',1,NULL,71),(351,'M4',0,NULL,71),(354,'Vrai',0,NULL,56),(355,'Faux',0,NULL,56),(358,'Agrégation',1,NULL,6),(359,'Composition',0,NULL,6),(360,'Encapsulation',0,NULL,6),(361,'Association',0,NULL,6),(362,'Vrai',0,NULL,1),(363,'Faux',0,NULL,1),(364,' Au moment de l’exécution',0,NULL,2),(365,'Au moment de la compilation',1,NULL,2),(366,'Au moment du codage',0,NULL,2),(367,'Au moment de l’exécution',0,NULL,2),(368,'Quand il y a plusieurs méthodes avec le même nom, la même signature, le même nombre de paramètres mais un type différent',0,NULL,3),(369,'Quand il y a plusieurs méthodes avec le même nom, la même signature mais avec différente signature',0,NULL,3),(370,'Quand il y a plusieurs méthodes avec le même nom, le même nombre de paramètres et le type mais une signature différente',1,NULL,3),(371,'Quand il y a plusieurs méthodes avec le même nom mais avec une signature de méthode différente et un nombre ou un type de paramètres différent',0,NULL,3),(372,'Oui',1,NULL,72),(373,'Non',0,NULL,72);
/*!40000 ALTER TABLE `reponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reponse_apprenant`
--

DROP TABLE IF EXISTS `reponse_apprenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reponse_apprenant` (
  `id_reponse_apprenant` int(11) NOT NULL AUTO_INCREMENT,
  `id_apprenant` int(11) DEFAULT NULL,
  `id_examen` int(11) DEFAULT NULL,
  `id_sujet` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `id_reponse` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reponse_apprenant`),
  KEY `id_examen` (`id_examen`),
  KEY `id_sujet` (`id_sujet`),
  KEY `id_question` (`id_question`),
  KEY `id_reponse` (`id_reponse`),
  KEY `FK74igxrk1ngbgr5em8gdljyiha` (`id_apprenant`),
  CONSTRAINT `FK74igxrk1ngbgr5em8gdljyiha` FOREIGN KEY (`id_apprenant`) REFERENCES `utilisateur` (`id_utilisateur`),
  CONSTRAINT `reponse_apprenant_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_utilisateur`),
  CONSTRAINT `reponse_apprenant_ibfk_2` FOREIGN KEY (`id_examen`) REFERENCES `examen` (`id_examen`),
  CONSTRAINT `reponse_apprenant_ibfk_3` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`),
  CONSTRAINT `reponse_apprenant_ibfk_4` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`),
  CONSTRAINT `reponse_apprenant_ibfk_5` FOREIGN KEY (`id_reponse`) REFERENCES `reponse` (`id_reponse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reponse_apprenant`
--

LOCK TABLES `reponse_apprenant` WRITE;
/*!40000 ALTER TABLE `reponse_apprenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `reponse_apprenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reponse_apprenant_examen`
--

DROP TABLE IF EXISTS `reponse_apprenant_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reponse_apprenant_examen` (
  `id_reponse_apprenant_examen` int(11) NOT NULL AUTO_INCREMENT,
  `id_apprenant` int(11) DEFAULT NULL,
  `id_examen` int(11) DEFAULT NULL,
  `id_sujet` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `id_reponse` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reponse_apprenant_examen`),
  KEY `id_examen` (`id_examen`),
  KEY `id_sujet` (`id_sujet`),
  KEY `id_question` (`id_question`),
  KEY `id_reponse` (`id_reponse`),
  KEY `FK95k6gj9en1q9aoft429aebrlo` (`id_apprenant`),
  CONSTRAINT `FK95k6gj9en1q9aoft429aebrlo` FOREIGN KEY (`id_apprenant`) REFERENCES `utilisateur` (`id_utilisateur`),
  CONSTRAINT `reponse_apprenant_examen_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_utilisateur`),
  CONSTRAINT `reponse_apprenant_examen_ibfk_2` FOREIGN KEY (`id_examen`) REFERENCES `examen` (`id_examen`),
  CONSTRAINT `reponse_apprenant_examen_ibfk_3` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`),
  CONSTRAINT `reponse_apprenant_examen_ibfk_4` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`),
  CONSTRAINT `reponse_apprenant_examen_ibfk_5` FOREIGN KEY (`id_reponse`) REFERENCES `reponse` (`id_reponse`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reponse_apprenant_examen`
--

LOCK TABLES `reponse_apprenant_examen` WRITE;
/*!40000 ALTER TABLE `reponse_apprenant_examen` DISABLE KEYS */;
INSERT INTO `reponse_apprenant_examen` VALUES (1,2,1,1,1,1),(2,2,1,1,2,5),(3,2,1,1,3,9),(4,2,1,1,4,13),(5,2,1,1,5,17),(6,2,1,1,6,21),(7,2,1,1,7,25),(8,2,1,1,8,29),(9,2,1,1,9,33),(10,2,1,1,10,35),(11,3,1,1,1,2),(12,3,1,1,2,6),(13,3,1,1,3,10),(14,3,1,1,4,13),(15,3,1,1,5,17),(16,3,1,1,6,21),(17,3,1,1,7,25),(18,3,1,1,8,29),(19,3,1,1,9,33),(20,3,1,1,10,35),(21,4,1,1,1,1),(22,4,1,1,2,5),(23,4,1,1,3,11),(24,4,1,1,4,13),(25,4,1,1,5,17),(26,4,1,1,6,21),(27,4,1,1,7,25),(28,4,1,1,8,29),(29,4,1,1,9,33),(30,4,1,1,10,34),(31,4,1,1,1,1),(32,4,1,1,2,5),(33,4,1,1,3,11),(34,4,1,1,4,13),(35,4,1,1,5,17),(36,4,1,1,6,21),(37,4,1,1,7,25),(38,4,1,1,8,29),(39,4,1,1,9,33),(40,4,1,1,10,34),(41,2,1,1,1,2),(42,2,1,1,1,3),(43,2,1,1,1,14),(44,2,1,1,2,5),(45,2,1,1,3,9),(46,2,1,1,4,13),(47,2,1,1,4,15),(48,2,1,1,9,33),(49,2,1,1,10,35),(50,2,1,1,1,2),(51,2,1,1,1,3),(52,2,1,1,1,14),(53,2,1,1,2,5),(54,2,1,1,3,9),(55,2,1,1,4,13),(56,2,1,1,4,15),(57,2,1,1,9,33),(58,2,1,1,10,35),(59,2,1,1,1,2),(60,2,1,1,1,3),(61,2,1,1,1,14),(62,2,1,1,2,5),(63,2,1,1,3,9),(64,2,1,1,4,13),(65,2,1,1,4,15),(66,2,1,1,9,33),(67,2,1,1,10,35),(68,2,1,1,1,2),(69,2,1,1,1,3),(70,2,1,1,1,14),(71,2,1,1,2,5),(72,2,1,1,3,9),(73,2,1,1,4,13),(74,2,1,1,4,15),(75,2,1,1,9,33),(76,2,1,1,10,35),(77,2,1,1,1,2),(78,2,1,1,1,3),(79,2,1,1,1,14),(80,2,1,1,2,5),(81,2,1,1,3,9),(82,2,1,1,4,13),(83,2,1,1,4,15),(84,2,1,1,9,33),(85,2,1,1,10,35),(86,2,1,1,1,2),(87,2,1,1,1,3),(88,2,1,1,1,14),(89,2,1,1,2,5),(90,2,1,1,3,9),(91,2,1,1,4,13),(92,2,1,1,4,15),(93,2,1,1,5,18),(94,2,1,1,5,19),(95,2,1,1,6,21),(96,2,1,1,6,23),(97,2,1,1,7,26),(98,2,1,1,8,30),(99,2,1,1,9,33),(100,2,1,1,10,35),(101,2,1,1,1,2),(102,2,1,1,1,3),(103,2,1,1,1,14),(104,2,1,1,2,5),(105,2,1,1,3,9),(106,2,1,1,4,13),(107,2,1,1,4,15),(108,2,1,1,5,18),(109,2,1,1,5,19),(110,2,1,1,6,21),(111,2,1,1,6,23),(112,2,1,1,7,26),(113,2,1,1,8,30),(114,2,1,1,9,33),(115,2,1,1,10,35),(116,2,1,1,1,2),(117,2,1,1,1,3),(118,2,1,1,1,14),(119,2,1,1,2,5),(120,2,1,1,3,9),(121,2,1,1,4,13),(122,2,1,1,4,15),(123,2,1,1,5,18),(124,2,1,1,5,19),(125,2,1,1,6,21),(126,2,1,1,6,23),(127,2,1,1,7,26),(128,2,1,1,8,30),(129,2,1,1,9,33),(130,2,1,1,10,35),(131,2,1,1,1,2),(132,2,1,1,1,3),(133,2,1,1,1,14),(134,2,1,1,2,5),(135,2,1,1,3,9),(136,2,1,1,4,13),(137,2,1,1,4,15),(138,2,1,1,5,18),(139,2,1,1,5,19),(140,2,1,1,6,21),(141,2,1,1,6,23),(142,2,1,1,7,26),(143,2,1,1,8,30),(144,2,1,1,9,33),(145,2,1,1,10,35),(146,2,1,1,1,2),(147,2,1,1,1,3),(148,2,1,1,1,4),(149,2,1,1,1,14),(150,2,1,1,2,5),(151,2,1,1,3,9),(152,2,1,1,4,13),(153,2,1,1,4,15),(154,2,1,1,5,17),(155,2,1,1,5,18),(156,2,1,1,5,19),(157,2,1,1,6,21),(158,2,1,1,7,25),(159,2,1,1,9,33),(160,2,1,1,10,34),(161,2,1,1,1,2),(162,2,1,1,1,3),(163,2,1,1,1,4),(164,2,1,1,1,14),(165,2,1,1,2,5),(166,2,1,1,3,9),(167,2,1,1,4,13),(168,2,1,1,4,15),(169,2,1,1,5,17),(170,2,1,1,5,18),(171,2,1,1,5,19),(172,2,1,1,6,21),(173,2,1,1,7,25),(174,2,1,1,9,33),(175,2,1,1,10,34),(176,2,1,1,1,2),(177,2,1,1,1,3),(178,2,1,1,1,4),(179,2,1,1,1,14),(180,2,1,1,2,5),(181,2,1,1,3,9),(182,2,1,1,4,13),(183,2,1,1,4,15),(184,2,1,1,5,17),(185,2,1,1,5,18),(186,2,1,1,5,19),(187,2,1,1,6,21),(188,2,1,1,7,25),(189,2,1,1,9,33),(190,2,1,1,10,34),(191,2,1,1,1,4),(192,2,1,1,1,14),(193,2,1,1,2,5),(194,2,1,1,3,9),(195,2,1,1,4,13),(196,2,1,1,4,15),(197,2,1,1,5,17),(198,2,1,1,5,18),(199,2,1,1,5,19),(200,2,1,1,6,21),(201,2,1,1,7,25),(202,2,1,1,8,29),(203,2,1,1,9,33),(204,2,1,1,10,34),(205,2,1,1,1,4),(206,2,1,1,1,14),(207,2,1,1,2,5),(208,2,1,1,3,9),(209,2,1,1,4,13),(210,2,1,1,4,15),(211,2,1,1,5,17),(212,2,1,1,5,18),(213,2,1,1,5,19),(214,2,1,1,6,21),(215,2,1,1,7,25),(216,2,1,1,8,29),(217,2,1,1,9,33),(218,2,1,1,10,34),(219,2,1,1,1,4),(220,2,1,1,1,14),(221,2,1,1,2,5),(222,2,1,1,3,9),(223,2,1,1,4,13),(224,2,1,1,4,15),(225,2,1,1,5,17),(226,2,1,1,5,18),(227,2,1,1,5,19),(228,2,1,1,6,21),(229,2,1,1,7,25),(230,2,1,1,8,29),(231,2,1,1,9,33),(232,2,1,1,10,34),(233,2,1,1,1,4),(234,2,1,1,1,14),(235,2,1,1,2,5),(236,2,1,1,3,9),(237,2,1,1,4,13),(238,2,1,1,4,15),(239,2,1,1,5,17),(240,2,1,1,5,18),(241,2,1,1,5,19),(242,2,1,1,6,21),(243,2,1,1,7,25),(244,2,1,1,8,29),(245,2,1,1,9,33),(246,2,1,1,10,34),(247,2,1,1,1,4),(248,2,1,1,1,14),(249,2,1,1,2,5),(250,2,1,1,3,9),(251,2,1,1,4,13),(252,2,1,1,4,15),(253,2,1,1,5,17),(254,2,1,1,5,18),(255,2,1,1,5,19),(256,2,1,1,6,21),(257,2,1,1,7,25),(258,2,1,1,8,29),(259,2,1,1,9,33),(260,2,1,1,10,34),(261,2,1,1,1,4),(262,2,1,1,1,14),(263,2,1,1,2,5),(264,2,1,1,3,9),(265,2,1,1,4,13),(266,2,1,1,4,15),(267,2,1,1,5,17),(268,2,1,1,5,18),(269,2,1,1,5,19),(270,2,1,1,6,21),(271,2,1,1,7,25),(272,2,1,1,8,29),(273,2,1,1,9,33),(274,2,1,1,10,34),(275,2,1,1,1,4),(276,2,1,1,1,14),(277,2,1,1,2,5),(278,2,1,1,3,9),(279,2,1,1,4,13),(280,2,1,1,4,15),(281,2,1,1,5,17),(282,2,1,1,5,18),(283,2,1,1,5,19),(284,2,1,1,6,21),(285,2,1,1,7,25),(286,2,1,1,8,29),(287,2,1,1,9,33),(288,2,1,1,10,34),(289,2,1,1,1,4),(290,2,1,1,1,14),(291,2,1,1,2,5),(292,2,1,1,3,9),(293,2,1,1,4,13),(294,2,1,1,4,15),(295,2,1,1,5,17),(296,2,1,1,5,18),(297,2,1,1,5,19),(298,2,1,1,6,21),(299,2,1,1,7,25),(300,2,1,1,8,29),(301,2,1,1,9,33),(302,2,1,1,10,34),(303,2,1,1,1,2),(304,2,1,1,1,3),(305,2,1,1,1,4),(306,2,1,1,2,5),(307,2,1,1,3,9),(308,2,1,1,4,13),(309,2,1,1,4,15),(310,2,1,1,5,17),(311,2,1,1,5,18),(312,2,1,1,5,19),(313,2,1,1,6,21),(314,2,1,1,7,25),(315,2,1,1,8,29),(316,2,1,1,8,30),(317,2,1,1,8,31),(318,2,1,1,9,33),(319,2,1,1,10,34),(320,2,1,1,1,2),(321,2,1,1,1,3),(322,2,1,1,1,4),(323,2,1,1,2,5),(324,2,1,1,3,9),(325,2,1,1,4,13),(326,2,1,1,4,15),(327,2,1,1,5,17),(328,2,1,1,5,18),(329,2,1,1,5,19),(330,2,1,1,6,21),(331,2,1,1,7,25),(332,2,1,1,8,29),(333,2,1,1,8,30),(334,2,1,1,8,31),(335,2,1,1,9,33),(336,2,1,1,10,34),(337,2,1,1,1,2),(338,2,1,1,1,3),(339,2,1,1,1,4),(340,2,1,1,2,5),(341,2,1,1,3,9),(342,2,1,1,4,13),(343,2,1,1,4,15),(344,2,1,1,5,17),(345,2,1,1,5,18),(346,2,1,1,5,19),(347,2,1,1,6,21),(348,2,1,1,7,25),(349,2,1,1,8,29),(350,2,1,1,8,30),(351,2,1,1,8,31),(352,2,1,1,9,33),(353,2,1,1,10,34),(354,2,1,1,10,35),(355,2,1,1,1,2),(356,2,1,1,1,3),(357,2,1,1,1,4),(358,2,1,1,2,5),(359,2,1,1,3,9),(360,2,1,1,4,13),(361,2,1,1,4,15),(362,2,1,1,5,17),(363,2,1,1,5,18),(364,2,1,1,5,19),(365,2,1,1,6,21),(366,2,1,1,7,25),(367,2,1,1,8,29),(368,2,1,1,8,30),(369,2,1,1,8,31),(370,2,1,1,10,34),(371,2,1,1,10,35),(372,2,1,1,1,2),(373,2,1,1,1,3),(374,2,1,1,1,4),(375,2,1,1,2,5),(376,2,1,1,3,9),(377,2,1,1,4,13),(378,2,1,1,4,15),(379,2,1,1,5,17),(380,2,1,1,5,18),(381,2,1,1,6,21),(382,2,1,1,7,25),(383,2,1,1,7,28),(384,2,1,1,9,33),(385,2,1,1,10,34),(386,2,25,1,10,34),(387,2,28,1,1,264),(388,2,28,1,2,210),(389,2,28,1,3,218),(390,2,28,1,4,238),(391,2,28,1,5,222),(392,2,28,1,6,21),(393,2,28,1,7,230),(394,2,28,1,8,29),(395,2,28,1,9,242),(396,2,28,1,10,247),(397,2,28,1,10,249);
/*!40000 ALTER TABLE `reponse_apprenant_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultat_examen`
--

DROP TABLE IF EXISTS `resultat_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resultat_examen` (
  `id_resultat_examen` int(11) NOT NULL AUTO_INCREMENT,
  `note` double DEFAULT NULL,
  `absence_justifie` tinyint(1) DEFAULT NULL,
  `id_apprenant` int(11) DEFAULT NULL,
  `id_examen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_resultat_examen`),
  KEY `id_examen` (`id_examen`),
  KEY `FK44c3s99vud50lrffmvvq4wtv9` (`id_apprenant`),
  CONSTRAINT `FK44c3s99vud50lrffmvvq4wtv9` FOREIGN KEY (`id_apprenant`) REFERENCES `utilisateur` (`id_utilisateur`),
  CONSTRAINT `resultat_examen_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_utilisateur`),
  CONSTRAINT `resultat_examen_ibfk_2` FOREIGN KEY (`id_examen`) REFERENCES `examen` (`id_examen`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultat_examen`
--

LOCK TABLES `resultat_examen` WRITE;
/*!40000 ALTER TABLE `resultat_examen` DISABLE KEYS */;
INSERT INTO `resultat_examen` VALUES (1,15,0,2,1),(2,7,0,3,1),(3,18,0,4,1),(4,10,0,5,1),(5,14,0,5,1),(6,19,0,6,1),(7,3,0,7,1),(8,10,1,8,1),(9,11,0,10,1),(10,12,0,11,1),(11,1,0,12,1),(12,15,0,13,1),(13,7,0,14,1),(14,10,0,15,2),(15,15,0,16,2),(21,0,NULL,2,25),(22,10,NULL,2,28);
/*!40000 ALTER TABLE `resultat_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','ROLE_ADMIN'),(2,'ROLE_ FORMATEUR','ROLE_FORMATEUR'),(3,'ROLE_APPRENANT','ROLE_APPRENANT');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sujet`
--

DROP TABLE IF EXISTS `sujet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sujet` (
  `id_sujet` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `is_automatic_generated` tinyint(1) DEFAULT NULL,
  `description_suejt` varchar(1000) DEFAULT NULL,
  `note_moyenne` double DEFAULT NULL,
  `id_formateur` int(11) DEFAULT NULL,
  `description_sujet` longtext,
  `nbnotes` int(11) DEFAULT NULL,
  `testannotation` bit(1) DEFAULT NULL,
  `id_matiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sujet`),
  KEY `id_formateur` (`id_formateur`),
  KEY `FKk2caycpauuby8ykyb7eglrxcp` (`id_matiere`),
  CONSTRAINT `FKk2caycpauuby8ykyb7eglrxcp` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`),
  CONSTRAINT `sujet_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sujet`
--

LOCK TABLES `sujet` WRITE;
/*!40000 ALTER TABLE `sujet` DISABLE KEYS */;
INSERT INTO `sujet` VALUES (1,'Exercices sur la POO',1,'Thématique d ecercices en lien avec les cours sur l\'oriente objet',8.29,1,NULL,7,NULL,1),(2,'Exercices sur les variables',1,'En rapport avec les cours sur les variables',0,1,NULL,0,NULL,1);
/*!40000 ALTER TABLE `sujet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sujet_question`
--

DROP TABLE IF EXISTS `sujet_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sujet_question` (
  `id_sujet_question` int(11) NOT NULL AUTO_INCREMENT,
  `id_question` int(11) DEFAULT NULL,
  `id_sujet` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sujet_question`),
  KEY `id_question` (`id_question`),
  KEY `id_sujet` (`id_sujet`),
  CONSTRAINT `sujet_question_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`),
  CONSTRAINT `sujet_question_ibfk_2` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sujet_question`
--

LOCK TABLES `sujet_question` WRITE;
/*!40000 ALTER TABLE `sujet_question` DISABLE KEYS */;
INSERT INTO `sujet_question` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1);
/*!40000 ALTER TABLE `sujet_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `id_matiere` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_theme`),
  KEY `id_matiere` (`id_matiere`),
  CONSTRAINT `theme_ibfk_1` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'Objet',1),(2,'variables',1),(3,'algo',1),(4,'fonctions',1),(5,'Class',1),(6,'Les bases',2),(7,'Les spécificités du langage',2),(8,'Diagramme de sequence',4),(9,'Diagramme Use case',4),(10,'Diagramme de class',4),(24,'Méthodes',1),(33,'Méthodes2',1),(36,'321',6),(37,'CSGO',9);
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `id_utilisateur` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  KEY `id_role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (39,1),(40,1),(41,1),(42,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `question_secrete` varchar(200) DEFAULT NULL,
  `reponse_secrete` varchar(200) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `id_promotion` int(11) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `is_admin` bit(1) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `FKqvul7f4bg29d84ljwqfrup0s` (`id_promotion`),
  CONSTRAINT `FKqvul7f4bg29d84ljwqfrup0s` FOREIGN KEY (`id_promotion`) REFERENCES `promotion` (`id_promotion`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'Morgen','Braney','mbraney0@theatlantic.com','d9lC1nc','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/TQmTFL6XoEssdRfGWvJZelhy_eIvoy-mLKQFaGOo1iI/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA3OTUwMTYuanBn.jpg',NULL,NULL,NULL,NULL),(2,'Julie','Lamcken','jlamcken1@buzzfeed.com','EykDIR8x','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(3,'Nita','Keiling','nkeiling2@xing.com','y21kFf','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(4,'Armando','Corbet','acorbet3@unc.edu','I1qc4bLVu','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(5,'Shelbi','Call','scall4@yelp.com','LoWi3z','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(6,'Kathy','Crampin','kcrampin5@answers.com','zsWvvKTN352v','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(7,'Olivier','Bayfield','obayfield6@pbs.org','BizjE5','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(8,'Tamra','Osgar','tosgar7@t-online.de','osVQ7JAjpfb','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(9,'Alano','Antonucci','aantonucci8@shop-pro.jp','VTgjUTJjRNz','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(10,'Gilbertine','Gagin','ggagin9@ucoz.ru','pwn7R6dGux','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(11,'Corabella','Iacoboni','ciacobonia@mtv.com','u1qi3buNg','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(12,'Keelia','Niese','knieseb@yolasite.com','n8vr2zhdH7c','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(13,'Ivory','Donaho','idonahoc@mozilla.com','uBek3IcxpR','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(14,'Bax','Cleaton','bcleatond@bluehost.com','pWEPt3b3e8','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(15,'Anne','Ogborne','aogbornee@privacy.gov.au','DhTFzwRK','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(16,'Reilly','Merriment','rmerrimentf@usnews.com','Cq9EM4hx93AL','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(17,'Arny','Hartness','ahartnessg@cisco.com','UreIYt3c','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(18,'Albert','Plowman','aplowmanh@slate.com','WuE0EuY','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(19,'Ranee','McAllister','rmcallisteri@blogs.com','gFPuKvso7v','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(20,'Anthea','Haxley','ahaxleyj@economist.com','L2gKoDrWn6s5','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(21,'Gearalt','Kroll','gkrollk@soup.io','ekWnsdg','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(22,'Alick','Garces','agarcesl@msn.com','ez19rMEX5RF','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(23,'Hanan','Bohin','hbohinm@microsoft.com','3vzsrDNRD','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(24,'Linoel','Bruntje','lbruntjen@google.com.br','bMSK2suwJaA','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(25,'Malena','Titterell','mtitterello@patch.com','ZMvJkGSMDF','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(26,'Porty','Swafield','pswafieldp@mediafire.com','oQrEidV4tOgj','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(27,'Teddie','Stile','tstileq@over-blog.com','zJammGk','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(28,'Cindy','Kerfut','ckerfutr@army.mil','KY5ZHSNB7Loc','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/YHkop4O20ludTdLsJvOn4ROBaPu0V8SFY3lU6HHxrxQ/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMjg5MjUuanBn.jpg',NULL,NULL,NULL,NULL),(29,'Bill','Capoun','bcapouns@sun.com','6S7r1ZpRETF','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/-oOMoKgSKbRYSDIwcISWrJN-kcElhSjUMQISAQwFUo0/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAxNzYxODIuanBn.jpg',NULL,NULL,NULL,NULL),(30,'Candra','Orpin','corpint@dailymotion.com','Zin9u5CPv3z','quel est le prenom de votre pere?','c\'est mon pere','2020-11-11','https://images.generated.photos/cRzC1dn60KKzSb56iKFDgjiCLeuauf75T3c1D_3-dYA/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA5MTkwNjMuanBn.jpg',NULL,NULL,NULL,NULL),(39,'BUFFETEAU','BRENDAN','buffeteau.ban@orange.fr','$2a$10$z/m0jLBRrjQRmDIdILjGVeNvjg8Qlp2AbGOMNGBaeK0QkljIE17Ce','moust','123','2021-06-04',NULL,NULL,'','',NULL),(40,'BUFFETEAU','BRENDAN','buffeteau.bren@gmail.com','$2a$10$z/m0jLBRrjQRmDIdILjGVeNvjg8Qlp2AbGOMNGBaeK0QkljIE17Ce','moust','123456aaa','2021-06-04',NULL,NULL,'','',NULL),(41,'BUFFETEAU','BRENDAN','buffeteau.brendn@gmail.com','$2a$10$z/m0jLBRrjQRmDIdILjGVeNvjg8Qlp2AbGOMNGBaeK0QkljIE17Ce','azerty','azerty','2021-06-04',NULL,NULL,'','',NULL),(42,'BUFFETEAU','BRENDAN','buffeteau.brendan@gmail.com','$2a$10$z/m0jLBRrjQRmDIdILjGVeNvjg8Qlp2AbGOMNGBaeK0QkljIE17Ce','123456','123456','2021-06-04',NULL,NULL,'','',NULL);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verify_utilisateur`
--

DROP TABLE IF EXISTS `verify_utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `verify_utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(500) DEFAULT NULL,
  `expiredDataToken` date DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `expired_data_token` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`),
  CONSTRAINT `verify_utilisateur_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verify_utilisateur`
--

LOCK TABLES `verify_utilisateur` WRITE;
/*!40000 ALTER TABLE `verify_utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `verify_utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-28 14:33:16
