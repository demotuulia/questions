-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: questions 
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English'),(2,'Dutch'),(3,'French');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` smallint(6) DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,3,'Question 1');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_translations`
--

DROP TABLE IF EXISTS `question_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `question_version` varchar(45) DEFAULT NULL,
  `language_id` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `question_text` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_translations`
--

LOCK TABLES `question_translations` WRITE;
/*!40000 ALTER TABLE `question_translations` DISABLE KEYS */;
INSERT INTO `question_translations` VALUES (1,1,'1','1','Yes or No? VERSION 1','Answer Yes or No  VERSION 1'),(2,1,'1','2','Jaa of Nee? VERSION 1','Geef Jaa of Nee. VERSION 1'),(3,1,'2','1','Yes or No? VERSION 2 ','Answer Yes or No VERSION 2'),(4,1,'2','2','Jaa of Nee? VERSION 2','Geef Jaa of Nee. VERSION 2 '),(5,1,'3','1','Yes or No? VERSION 2 ','Answer Yes or No VERSION 2'),(6,1,'3','2','Ja of Nee? VERSION 3','Geef Jaa of Nee. VERSION 3'),(7,1,'3','3','Oui ou Non?','Repondez Oui ou Non. ');
/*!40000 ALTER TABLE `question_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respondent`
--

DROP TABLE IF EXISTS `respondent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respondent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` smallint(6) DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respondent`
--

LOCK TABLES `respondent` WRITE;
/*!40000 ALTER TABLE `respondent` DISABLE KEYS */;
INSERT INTO `respondent` VALUES (1,1,'Respondent 1','respondent1@respondent.nl'),(2,3,'Respondent 2','respondent2@respondent.nl'),(3,2,'Respondent 3','respondent3@respondent.nl');
/*!40000 ALTER TABLE `respondent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respondent_answer`
--

DROP TABLE IF EXISTS `respondent_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respondent_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `respondent_id` int(11) DEFAULT NULL,
  `language_id` smallint(6) DEFAULT '1',
  `question_id` int(11) DEFAULT NULL,
  `question_version` smallint(6) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respondent_answer`
--

LOCK TABLES `respondent_answer` WRITE;
/*!40000 ALTER TABLE `respondent_answer` DISABLE KEYS */;
INSERT INTO `respondent_answer` VALUES (1,1,2,1,1,'2017-05-10 15:48:15','Jaa'),(2,1,1,1,1,'2017-05-10 15:48:16','Yes'),(3,2,2,1,1,'2017-05-10 15:48:16','Nee'),(4,2,1,1,1,'2017-05-10 15:48:16','No'),(5,3,2,1,2,'2017-05-10 15:48:18','Ja'),(6,3,1,1,2,'2017-05-10 15:48:18','Yes'),(7,2,2,1,2,'2017-05-10 15:48:18','Ja zeker'),(8,2,1,1,2,'2017-05-10 15:48:18','No'),(9,1,3,1,3,'2017-05-10 15:48:21','Oui'),(10,3,1,1,3,'2017-05-10 15:48:21','Yes'),(11,2,2,1,3,'2017-05-10 15:48:21','Ja zeker'),(12,2,3,1,3,'2017-05-10 15:48:21','Non');
/*!40000 ALTER TABLE `respondent_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15  6:29:40
