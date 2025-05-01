-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: empresax
-- ------------------------------------------------------
-- Server version	8.0.41

use empresax;

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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `codDepart` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `dataInicio` date NOT NULL,
  `matriculaGerente` char(8) DEFAULT NULL,
  PRIMARY KEY (`codDepart`),
  KEY `matriculaGerente` (`matriculaGerente`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`matriculaGerente`) REFERENCES `funcionario` (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Almoxarifado','2010-04-21',NULL),(2,'Compras','2009-09-02',NULL),(3,'Vendas','2012-01-15',NULL),(4,'Tecnologia de Informática','2005-10-07','20250001'),(5,'Audiovisual','2010-10-29','20250002');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependente` (
  `nome` varchar(60) NOT NULL,
  `matricula` char(8) NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `grauParentesco` varchar(20) NOT NULL,
  PRIMARY KEY (`nome`,`matricula`),
  KEY `matricula` (`matricula`),
  CONSTRAINT `dependente_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `funcionario` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
INSERT INTO `dependente` VALUES ('Carlos','20250005','2001-12-25','M','filho'),('Carol','20250005','2003-06-12','M','filha'),('Fernanda','20250002','2000-08-22','F','filha'),('Fernanda','20250003','2000-11-20','F','filha'),('Fernando','20250003','1998-12-25','M','cunhado'),('Maria','20250002','1999-11-02','F','filha'),('Vinicius','20250001','2003-09-06','M','irmão');
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `matricula` char(8) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `salario` decimal(6,2) unsigned NOT NULL,
  `dataNascimento` date NOT NULL,
  `matriculaSupervisor` char(8) DEFAULT NULL,
  `codDepart` smallint unsigned NOT NULL,
  PRIMARY KEY (`matricula`),
  KEY `matriculaSupervisor` (`matriculaSupervisor`),
  KEY `codDepart` (`codDepart`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`matriculaSupervisor`) REFERENCES `funcionario` (`matricula`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`codDepart`) REFERENCES `departamento` (`codDepart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('20250001','CARLOS MACEDO CERRI','Centro','F',1530.00,'2010-05-25',NULL,1),('20250002','HENRIQUE SOUZA MARCOS','Joao Bosco','F',3985.75,'2009-07-01',NULL,2),('20250003','ADRIANA ARAUJO DA SILVA','Jardim Primavera','M',1200.50,'2012-07-10',NULL,1),('20250004','SOLANGE APARECIDA SOUZA','Alto Maron','F',1599.51,'2006-12-08',NULL,3),('20250005','MARCELO AMORIM PACHECO','Bairro Brasil','F',2850.11,'2005-06-06',NULL,1),('20250006','CELIA ASSIS DO AMARAL','Bairro Victor da Silva','M',1200.50,'2009-01-10',NULL,1),('20250007','WILSON CAMPOS MACEDO','Primavera','F',2050.00,'2012-11-07',NULL,2),('20250008','AUGUSTO AGUIAR SOUZA','Centro','M',2050.00,'2010-05-26',NULL,1),('20250009','JESSICA ALVES TOLEDO','Centro','F',2100.00,'2006-07-05',NULL,3),('20250010','VITORIA CRUZ ALMEIDA','Jardim Primavera','M',2500.00,'2006-05-23',NULL,1),('20250011','MARCIO CANUTO DOS SANTOS','Centro','M',1800.00,'2008-07-29',NULL,3),('20250012','CRISTINA CACHOEIRA BUZZI','Bairro Brasil','M',1950.00,'2011-07-14',NULL,2);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarioprojeto`
--

DROP TABLE IF EXISTS `funcionarioprojeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarioprojeto` (
  `codProjeto` smallint unsigned NOT NULL,
  `matricula` char(8) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date DEFAULT NULL,
  PRIMARY KEY (`codProjeto`,`matricula`,`dataInicio`),
  KEY `matricula` (`matricula`),
  CONSTRAINT `funcionarioprojeto_ibfk_1` FOREIGN KEY (`codProjeto`) REFERENCES `projeto` (`codProjeto`),
  CONSTRAINT `funcionarioprojeto_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `funcionario` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarioprojeto`
--

LOCK TABLES `funcionarioprojeto` WRITE;
/*!40000 ALTER TABLE `funcionarioprojeto` DISABLE KEYS */;
INSERT INTO `funcionarioprojeto` VALUES (1,'20250001','2012-10-15',NULL),(1,'20250002','2012-10-15',NULL),(2,'20250003','2012-10-15',NULL),(2,'20250004','2012-10-15',NULL);
/*!40000 ALTER TABLE `funcionarioprojeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horastrabalhadas`
--

DROP TABLE IF EXISTS `horastrabalhadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horastrabalhadas` (
  `codProjeto` smallint unsigned NOT NULL,
  `matricula` char(8) NOT NULL,
  `data` date NOT NULL,
  `qtdHoras` mediumint NOT NULL,
  PRIMARY KEY (`codProjeto`,`matricula`,`data`),
  KEY `matricula` (`matricula`),
  CONSTRAINT `horastrabalhadas_ibfk_1` FOREIGN KEY (`codProjeto`) REFERENCES `projeto` (`codProjeto`),
  CONSTRAINT `horastrabalhadas_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `funcionario` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horastrabalhadas`
--

LOCK TABLES `horastrabalhadas` WRITE;
/*!40000 ALTER TABLE `horastrabalhadas` DISABLE KEYS */;
INSERT INTO `horastrabalhadas` VALUES (1,'20250001','2025-10-22',10),(1,'20250001','2025-10-23',8),(1,'20250001','2025-10-24',8),(1,'20250001','2025-10-25',8),(1,'20250001','2025-10-26',8),(1,'20250002','2025-10-22',6),(1,'20250002','2025-10-23',6),(1,'20250002','2025-10-24',6),(1,'20250002','2025-10-25',6),(1,'20250002','2025-10-26',6),(2,'20250003','2025-10-22',10),(2,'20250003','2025-10-23',8),(2,'20250003','2025-10-24',8),(2,'20250003','2025-10-25',8),(2,'20250003','2025-10-26',8);
/*!40000 ALTER TABLE `horastrabalhadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto` (
  `codProjeto` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `horasPrevistas` smallint unsigned NOT NULL,
  `codDepart` smallint unsigned NOT NULL,
  PRIMARY KEY (`codProjeto`),
  KEY `codDepart` (`codDepart`),
  CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`codDepart`) REFERENCES `departamento` (`codDepart`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,'Braçadeira para Punhobol',1000,5),(2,'Estabilizador de Tensão para uso Doméstico',1500,5),(3,'Food Design: Linha Bonna Vita de Refeições Individuais',2000,4),(4,'ETP – Equipamento de Transferência para Paciente',1000,4);
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-26 16:41:46
