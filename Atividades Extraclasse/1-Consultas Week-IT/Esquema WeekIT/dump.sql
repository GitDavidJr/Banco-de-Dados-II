-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: weekit
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inscricao`
--

DROP TABLE IF EXISTS `inscricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscricao` (
  `codMinicurso` tinyint unsigned NOT NULL,
  `cpf` char(11) NOT NULL,
  `data` timestamp NOT NULL,
  `ultima_inscricao` enum('sim','não') DEFAULT NULL,
  PRIMARY KEY (`codMinicurso`,`cpf`,`data`),
  KEY `cpf` (`cpf`),
  CONSTRAINT `inscricao_ibfk_1` FOREIGN KEY (`codMinicurso`) REFERENCES `minicurso` (`codMinicurso`),
  CONSTRAINT `inscricao_ibfk_2` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscricao`
--

LOCK TABLES `inscricao` WRITE;
/*!40000 ALTER TABLE `inscricao` DISABLE KEYS */;
INSERT INTO `inscricao` VALUES (1,'13131313131','2012-06-25 01:57:05','sim'),(1,'33333333333','2012-06-23 04:20:59','sim'),(1,'44444444444','2012-06-23 04:23:17','sim'),(1,'55555555555','2012-06-23 04:40:28','sim'),(1,'99999999999','2012-06-23 07:36:28','sim'),(2,'12121212121','2012-06-24 02:28:37','sim'),(2,'66666666666','2012-06-23 04:33:29','sim'),(2,'77777777777','2012-06-23 04:34:36','sim'),(2,'88888888888','2012-06-23 07:06:05','não'),(2,'88888888888','2012-06-23 07:16:52','sim'),(3,'13131313131','2012-06-25 01:57:05','sim'),(3,'55555555555','2012-06-23 04:40:28','sim'),(3,'88888888888','2012-06-23 07:06:05','não'),(4,'11111111111','2012-06-23 04:19:07','sim'),(4,'33333333333','2012-06-23 04:20:59','sim'),(5,'22222222222','2012-06-23 04:15:54','não'),(5,'88888888888','2012-06-23 07:16:52','sim'),(5,'99999999999','2012-06-23 07:36:28','sim'),(6,'22222222222','2012-06-23 04:26:31','sim'),(7,'10101010101','2012-06-23 16:43:49','sim'),(7,'11111111111','2012-06-23 04:19:07','sim'),(7,'13131313131','2012-06-25 01:57:05','sim'),(7,'22222222222','2012-06-23 04:15:54','não'),(7,'44444444444','2012-06-23 04:23:17','sim'),(7,'66666666666','2012-06-23 04:33:29','sim'),(7,'77777777777','2012-06-23 04:34:36','sim'),(7,'88888888888','2012-06-23 07:16:52','sim'),(8,'22222222222','2012-06-23 04:26:31','sim'),(9,'55555555555','2012-06-23 04:40:28','sim'),(9,'88888888888','2012-06-23 07:06:05','não'),(9,'99999999999','2012-06-23 07:36:28','sim'),(10,'10101010101','2012-06-23 16:43:49','sim'),(10,'12121212121','2012-06-24 02:28:37','sim'),(11,'33333333333','2012-06-23 04:20:59','sim'),(11,'44444444444','2012-06-23 04:23:17','sim'),(11,'66666666666','2012-06-23 04:33:29','sim'),(11,'77777777777','2012-06-23 04:34:36','sim'),(12,'10101010101','2012-06-23 16:43:49','sim'),(12,'11111111111','2012-06-23 04:19:07','sim'),(12,'12121212121','2012-06-24 02:28:37','sim'),(12,'22222222222','2012-06-23 04:15:54','não'),(12,'22222222222','2012-06-23 04:26:31','sim');
/*!40000 ALTER TABLE `inscricao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minicurso`
--

DROP TABLE IF EXISTS `minicurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minicurso` (
  `codMinicurso` tinyint unsigned NOT NULL,
  `data` date DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `carga_horaria` tinyint unsigned DEFAULT NULL,
  `palestrante` varchar(70) DEFAULT NULL,
  `turma` enum('turma 1','turma 2','turma única') DEFAULT NULL,
  PRIMARY KEY (`codMinicurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minicurso`
--

LOCK TABLES `minicurso` WRITE;
/*!40000 ALTER TABLE `minicurso` DISABLE KEYS */;
INSERT INTO `minicurso` VALUES (1,'2012-07-11','Minicurso 1: Adobe FireWorks CS6',8,'Seidler Carvalho da Silva','turma única'),(2,'2012-07-11','Minicurso 2: Desenvolvimento de Páginas com MVC e Hibernate',8,'Marcos Vinícius Batista dos Reis','turma única'),(3,'2012-07-13','Minicurso 3: Introdução a Programação de Aplicativos Móveis com J2ME',4,'Francisco Hélio de Oliveira','turma 1'),(4,'2012-07-13','Minicurso 3: Introdução a Programação de Aplicativos Móveis com J2ME',4,'Francisco Hélio de Oliveira','turma 2'),(5,'2012-07-12','Minicurso 4: Modelagem de Dados usando a Ferramenta ERwin',4,'Pablo Freire Matos','turma 1'),(6,'2012-07-12','Minicurso 4: Modelagem de Dados usando a Ferramenta ERwin',4,'Pablo Freire Matos','turma 2'),(7,'2012-07-12','Minicurso 5: Introdução ao MySQL',4,'Pablo Freire Matos','turma 1'),(8,'2012-07-12','Minicurso 5: Introdução ao MySQL',4,'Pablo Freire Matos','turma 2'),(9,'2012-07-13','Minicurso 6: Autenticação e Acesso Remoto em Ambiente Windows',4,'Djan Almeida Santos','turma 1'),(10,'2012-07-13','Minicurso 6: Autenticação e Acesso Remoto em Ambiente Windows',4,'Djan Almeida Santos','turma 2'),(11,'2012-07-14','Minicurso 7: Desenvolvimento de Aplicações Web com JSP/Servlet',8,'Cláudio Rodolfo Sousa de Oliveira','turma única'),(12,'2012-07-14','Minicurso 8: Introdução a Servidores Linux - Acesso à Internet',8,'Clésio Rubens de Matos','turma única');
/*!40000 ALTER TABLE `minicurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participante`
--

DROP TABLE IF EXISTS `participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participante` (
  `cpf` char(11) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `sexo` enum('masculino','feminino') DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participante`
--

LOCK TABLES `participante` WRITE;
/*!40000 ALTER TABLE `participante` DISABLE KEYS */;
INSERT INTO `participante` VALUES ('10101010101','Tarcio Franklin Rosario Santos','masculino'),('11111111111','Murilo Porto Rocha','masculino'),('12121212121','Jose Augusto Santos de Souza','masculino'),('13131313131','Lísley de Sousa Quadros','feminino'),('14141414141','Mauricio Jaco Cerri','masculino'),('15151515151','Mateus Barbosa Pessoa','masculino'),('22222222222','Gutemberg Júnior','masculino'),('33333333333','Adilio Soares dos Santos','masculino'),('44444444444','Jessé Alves Ferreira','masculino'),('55555555555','Paulo Zainer de Oliveira Barbosa','masculino'),('66666666666','Hirlei Oliveira Moreira','masculino'),('77777777777','Ivânderson Oliveira Moreira','masculino'),('88888888888','Maria do carmo Silva Souza','feminino'),('99999999999','Brendow Sampaio Lima Pitta','masculino');
/*!40000 ALTER TABLE `participante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 17:37:04
