-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: livejournal
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(500) NOT NULL,
  `author` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_comment_fk` (`post_id`),
  CONSTRAINT `post_comment_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Quisque lobortis justo ac sem pellentesque mollis. Sed efficitur quis ligula ut suscipit. Duis quis imperdiet turpis, in suscipit odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Curabitur a volutpat metus. Nunc sem eros, porttitor at pretium sodales, suscipit eu eros.','Anonymous','2016-09-22 13:22:16',15),(2,'Quisque lobortis justo ac sem pellentesque mollis. Sed efficitur quis ligula ut suscipit. Duis quis imperdiet turpis, in suscipit odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Curabitur a volutpat metus. Nunc sem eros, porttitor at pretium sodales, suscipit eu eros.','Arlen','2016-09-22 13:22:16',15),(3,'Quisque lobortis justo ac sem pellentesque mollis. Sed efficitur quis ligula ut suscipit. Duis quis imperdiet turpis, in suscipit odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Curabitur a volutpat metus. Nunc sem eros, porttitor at pretium sodales, suscipit eu eros.','arlen','2016-09-22 17:27:41',15),(4,'Quisque lobortis justo ac sem pellentesque mollis. Sed efficitur quis ligula ut suscipit. Duis quis imperdiet turpis, in suscipit odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Curabitur a volutpat metus. Nunc sem eros, porttitor at pretium sodales, suscipit eu eros.','','2016-09-22 17:30:00',15),(5,'Quisque lobortis justo ac sem pellentesque mollis. Sed efficitur quis ligula ut suscipit. Duis quis imperdiet turpis, in suscipit odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Curabitur a volutpat metus. Nunc sem eros, porttitor at pretium sodales, suscipit eu eros.','','2016-09-22 17:30:49',15),(6,'Quisque lobortis justo ac sem pellentesque mollis. Sed efficitur quis ligula ut suscipit. Duis quis imperdiet turpis, in suscipit odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Curabitur a volutpat metus. Nunc sem eros, porttitor at pretium sodales, suscipit eu eros.','arlen','2016-09-22 17:38:20',5),(8,'oui oi oi oi oi ','Autor ','2016-09-22 21:38:35',18);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (5,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','Guimarães Rosa','2016-09-22 12:47:32','2016-09-22 12:47:32'),(6,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','Machado de Assis','2016-09-22 12:48:23','2016-09-22 12:48:23'),(7,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','JK Rowling','2016-09-22 12:51:42','2016-09-22 12:51:42'),(8,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','Gene Simmons','2016-09-22 12:56:01','2016-09-22 12:56:01'),(9,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','Bon Jovi','2016-09-22 13:06:47','2016-09-22 13:06:47'),(10,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','David Guetta','2016-09-22 13:22:16','2016-09-22 13:22:16'),(11,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png',NULL,'2016-09-22 13:22:27','2016-09-22 13:22:27'),(12,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png',NULL,'2016-09-22 13:22:40','2016-09-22 13:22:40'),(13,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png',NULL,'2016-09-22 16:24:26','2016-09-22 16:24:26'),(14,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png',NULL,'2016-09-22 16:26:33','2016-09-22 16:26:33'),(15,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','Anonymous','2016-09-22 16:33:52','2016-09-22 16:33:52'),(16,'Título','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed accumsan nibh. Vivamus pellentesque tortor et enim gravida hendrerit. Cras sagittis leo sit amet rhoncus ultrices. Maecenas purus purus, auctor in facilisis nec, mollis sed neque. Nullam consectetur, magna eget ultricies hendrerit, justo ipsum placerat lorem, a elementum nisl est sit amet diam. Donec vel felis vitae libero lobortis scelerisque. Mauris suscipit tristique tempor. Cras vestibulum felis est, non iaculis justo cursus sed. Integer egestas est mi, vel convallis orci iaculis blandit. Nullam convallis, orci hendrerit vehicula scelerisque, odio odio sodales arcu, sed pellentesque ipsum ipsum at metus. Mauris pulvinar viverra volutpat. Donec varius lorem eget ullamcorper gravida. In nulla mauris, porta vitae interdum quis, faucibus at nisl. ','avatar.png','Avatar padrão','2016-09-22 17:44:58','2016-09-22 17:44:58'),(17,'Este é o titulo','Este é o conteudo do post do blog','pmg-zy3hzrLVffoSbsnke_qd0moTFnPO.jpg','Arlen Nascimento','2016-09-22 19:33:47','2016-09-22 19:33:47'),(18,'Bom dia','bom dia bom dia','wsQcrg6ZiiyIwNXXnc2T-ItDYxznSErV.jpg','Arlen','2016-09-22 21:37:28','2016-09-22 21:37:28');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22 21:46:23
