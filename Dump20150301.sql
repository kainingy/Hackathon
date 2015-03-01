-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: hackathon
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'manager');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,1,19),(3,1,20),(4,1,21),(5,1,23),(6,1,25),(7,1,26),(8,1,27),(9,1,28),(10,1,29),(11,1,30),(1,1,32);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add survey',7,'add_survey'),(20,'Can change survey',7,'change_survey'),(21,'Can delete survey',7,'delete_survey'),(22,'Can add organization',8,'add_organization'),(23,'Can change organization',8,'change_organization'),(24,'Can delete organization',8,'delete_organization'),(25,'Can add activity',9,'add_activity'),(26,'Can change activity',9,'change_activity'),(27,'Can delete activity',9,'delete_activity'),(28,'Can add question',10,'add_question'),(29,'Can change question',10,'change_question'),(30,'Can delete question',10,'delete_question'),(31,'Can add rate',11,'add_rate'),(32,'Can change rate',11,'change_rate'),(33,'Can delete rate',11,'delete_rate'),(34,'Can add registration profile',12,'add_registrationprofile'),(35,'Can change registration profile',12,'change_registrationprofile'),(36,'Can delete registration profile',12,'delete_registrationprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$15000$QkEdxESS5iIF$BNq6lv23cuIukMWgg92CkY4X1azTm/F7WcDimHivmRc=','2015-03-01 15:59:21',1,'user','','','123@uci.edu',1,1,'2015-03-01 06:41:35'),(2,'pbkdf2_sha256$15000$rPBFq2t0Dn1y$MXtp3PufQxe+iqH7GtV7Eycn2cDb1yELQjSKcXE8V3o=','2015-03-01 16:03:17',0,'test','','','kainingy@uci.edu',0,1,'2015-03-01 16:03:17');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-03-01 07:04:04','1','Teacher',1,'',7,1),(2,'2015-03-01 07:20:17','1','Teacher',2,'Added question \"Do you like the test?\".',7,1),(3,'2015-03-01 07:22:29','1','Teacher',2,'Deleted question \"Do you like the test?\".',7,1),(4,'2015-03-01 07:23:28','1','Teacher',2,'Added question \"lol\".',7,1),(5,'2015-03-01 11:04:17','2','Company',1,'',7,1),(6,'2015-03-01 11:04:19','1','Google',1,'',8,1),(7,'2015-03-01 11:08:52','3','Org',1,'',7,1),(8,'2015-03-01 11:08:54','2','ICSSC',1,'',8,1),(9,'2015-03-01 11:53:01','1','hackathon',1,'',9,1),(10,'2015-03-01 12:21:41','1','manager',1,'',3,1),(11,'2015-03-01 13:08:03','4','Amazon',1,'',7,1),(12,'2015-03-01 13:08:04','3','Amazon',1,'',8,1),(13,'2015-03-01 13:09:06','4','ICS 31',1,'',8,1),(14,'2015-03-01 13:10:12','4','ICS 31',3,'',8,1),(15,'2015-03-01 13:11:33','5','Facebook',1,'',8,1),(16,'2015-03-01 13:16:17','6','Yahoo',1,'',8,1),(17,'2015-03-01 13:17:53','7','Career Center',1,'',8,1),(18,'2015-03-01 13:19:02','7','Career Center',3,'',8,1),(19,'2015-03-01 13:20:11','8','WICS',1,'',8,1),(20,'2015-03-01 13:21:31','5','Activity Survey',1,'',7,1),(21,'2015-03-01 13:21:33','2','Google Info Session',1,'',9,1),(22,'2015-03-01 13:21:43','1','Hackathon',2,'Changed title.',9,1),(23,'2015-03-01 13:22:15','3','Amazon Info Session',1,'',9,1),(24,'2015-03-01 13:23:15','4','WICS Workshop',1,'',9,1),(25,'2015-03-01 13:24:19','2','Info_Session',2,'Changed title.',9,1),(26,'2015-03-01 13:24:27','3','Info_Session',2,'Changed title.',9,1),(27,'2015-03-01 13:24:34','4','Workshop',2,'Changed title.',9,1),(28,'2015-03-01 16:14:23','2','Google_Info_Session',2,'Changed title and description.',9,1),(29,'2015-03-01 16:14:37','3','Amazon_Info_Session',2,'Changed title.',9,1),(30,'2015-03-01 16:17:54','2','Competition',2,'Changed title and description.',9,1),(31,'2015-03-01 16:18:01','3','Info_Session',2,'Changed title.',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'survey','mysite','survey'),(8,'organization','mysite','organization'),(9,'activity','mysite','activity'),(10,'question','mysite','question'),(11,'rate','mysite','rate'),(12,'registration profile','registration','registrationprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-03-01 06:38:19'),(2,'auth','0001_initial','2015-03-01 06:38:20'),(3,'admin','0001_initial','2015-03-01 06:38:20'),(4,'mysite','0001_initial','2015-03-01 06:38:20'),(5,'sessions','0001_initial','2015-03-01 06:38:21');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('c51fvd8torfmdjdg4q7typ6di6higs0f','NDc0YjAyNDYzMWVmMjUyMTBlMmMwMTQ0ODRjYzUxNjNiYmIzZDU0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ2M2Q0MzViN2M2OGU1YTJlNTMyNzUwYWY3M2Q5MGZlODZlNjg2ZTYiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2015-03-15 15:59:21'),('ezy6kp0420qzjot5z4jyjfzcgwgtnzrn','OTRkMjY4NzQyNTBlMGU5MTNhODcyZjQyZmQyZTY3OWYzMTAzMWMxYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ2M2Q0MzViN2M2OGU1YTJlNTMyNzUwYWY3M2Q5MGZlODZlNjg2ZTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2015-03-15 06:42:15'),('x8t9i97s54osznig9669fq20bamkliqq','MjhmYWJjNmJhZDk3ZmMyYWY2ZWE2NjMxMWU3Yzk4NTJhNTM3Y2M2ODp7fQ==','2015-03-15 07:03:29');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysite_activity`
--

DROP TABLE IF EXISTS `mysite_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysite_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `time` date DEFAULT NULL,
  `description` longtext NOT NULL,
  `organization_id` int(11) NOT NULL,
  `survey_id` int(11),
  PRIMARY KEY (`id`),
  KEY `mysite_activity_26b2345e` (`organization_id`),
  KEY `mysite_activity_00b3bd7e` (`survey_id`),
  CONSTRAINT `mysit_organization_id_6210175b1d361f19_fk_mysite_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `mysite_organization` (`id`),
  CONSTRAINT `mysite_activity_survey_id_39b9fbe0d5820cc4_fk_mysite_survey_id` FOREIGN KEY (`survey_id`) REFERENCES `mysite_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysite_activity`
--

LOCK TABLES `mysite_activity` WRITE;
/*!40000 ALTER TABLE `mysite_activity` DISABLE KEYS */;
INSERT INTO `mysite_activity` VALUES (1,'Hackathon','2015-03-01','Google Web Hack',2,3),(2,'Competition','2015-02-10','Doodle 4 Google is our favorite time of the year - it’s when we get to see amazing creativity from kids around the country come to life. For our 8th annual US competition, we’re bringing the fun to the fall. So stay tuned and don’t forget to check back here in the beginning of the new school year.',1,5),(3,'Info_Session','2015-02-27','Meet with Amazon engineers!',3,5),(4,'Workshop','2015-03-12','Let\'s code!',8,5);
/*!40000 ALTER TABLE `mysite_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysite_organization`
--

DROP TABLE IF EXISTS `mysite_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysite_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `survey_id` int(11),
  PRIMARY KEY (`id`),
  KEY `mysite_organization_00b3bd7e` (`survey_id`),
  CONSTRAINT `mysite_organizati_survey_id_543e59e0c3b4a71e_fk_mysite_survey_id` FOREIGN KEY (`survey_id`) REFERENCES `mysite_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysite_organization`
--

LOCK TABLES `mysite_organization` WRITE;
/*!40000 ALTER TABLE `mysite_organization` DISABLE KEYS */;
INSERT INTO `mysite_organization` VALUES (1,'Google','Cool company ','http://www.google.com/',2),(2,'ICSSC','ICS student concile','http://www.icssc.com/',3),(3,'Amazon','Amazon.com, Inc. is an American electronic commerce company with headquarters in Seattle, Washington. It is the largest Internet-based retailer in the United States.[12] Amazon.com started as an online bookstore, but soon diversified, selling DVDs, VHSs, CDs, video and MP3 downloads/streaming, software, video games, electronics, apparel, furniture, food, toys, and jewelry. The company also produces consumer electronics—notably, Amazon Kindle e-book readers, Fire tablets, Fire TV and Fire Phone — and is a major provider of cloud computing services.','http://www.amazon.com/',4),(5,'Facebook','Facebook is an online social networking service headquartered in Menlo Park, California. Its website was launched on February 4, 2004, by Mark Zuckerberg with his college roommates and fellow Harvard University students Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes.[7] The founders had initially limited the website\'s membership to Harvard students, but later expanded it to colleges in the Boston area, the Ivy League, and Stanford University. It gradually added support for students at various other universities and later to high-school students. Facebook now allows anyone who is at least 13 years old to become a registered user of the website.[8] Its name comes from a colloquialism for the directory given to it by American universities students.','http://www.facebook.com/',2),(6,'Yahoo','Yahoo! Inc. is an American multinational Internet corporation headquartered in Sunnyvale, California. It is globally known for its Web portal, search engine Yahoo Search, and related services, including Yahoo Directory, Yahoo Mail, Yahoo News, Yahoo Finance, Yahoo Groups, Yahoo Answers, advertising, online mapping, video sharing, fantasy sports and its social media website. It is one of the most popular sites in the United States.[7] According to news sources, roughly 700 million people visit Yahoo websites every month.[8][9] Yahoo itself claims it attracts \"more than half a billion consumers every month in more than 30 languages.\"[10]','http://www.yahoo.com/',2),(8,'WICS','A student organization at UCI dedicated to helping women succeed in the technological world','http://wics.ics.uci.edu/',3);
/*!40000 ALTER TABLE `mysite_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysite_question`
--

DROP TABLE IF EXISTS `mysite_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysite_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `survey_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mysite_question_00b3bd7e` (`survey_id`),
  CONSTRAINT `mysite_question_survey_id_706be7e33f3b492b_fk_mysite_survey_id` FOREIGN KEY (`survey_id`) REFERENCES `mysite_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysite_question`
--

LOCK TABLES `mysite_question` WRITE;
/*!40000 ALTER TABLE `mysite_question` DISABLE KEYS */;
INSERT INTO `mysite_question` VALUES (1,'Do you like my class?',1),(3,'lol',1),(4,'Do you like our company?',2),(5,'Do you like our club?',3),(6,'Do you like our company?',4),(7,'Do you like this activity?',5);
/*!40000 ALTER TABLE `mysite_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysite_rate`
--

DROP TABLE IF EXISTS `mysite_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysite_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` int(11) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mysite_rate_7aa0f6ee` (`question_id`),
  CONSTRAINT `mysite_rate_question_id_6fc902fe5e23147_fk_mysite_question_id` FOREIGN KEY (`question_id`) REFERENCES `mysite_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysite_rate`
--

LOCK TABLES `mysite_rate` WRITE;
/*!40000 ALTER TABLE `mysite_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysite_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysite_survey`
--

DROP TABLE IF EXISTS `mysite_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysite_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysite_survey`
--

LOCK TABLES `mysite_survey` WRITE;
/*!40000 ALTER TABLE `mysite_survey` DISABLE KEYS */;
INSERT INTO `mysite_survey` VALUES (1,'Teacher'),(2,'Company'),(3,'Org'),(4,'Amazon'),(5,'Activity Survey');
/*!40000 ALTER TABLE `mysite_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
INSERT INTO `registration_registrationprofile` VALUES (1,2,'ALREADY_ACTIVATED');
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-01  8:40:40
