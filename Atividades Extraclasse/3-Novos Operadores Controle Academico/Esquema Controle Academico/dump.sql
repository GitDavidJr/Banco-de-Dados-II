-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: controleacademico
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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `matricula` char(8) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `sexo` enum('m','f') DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `numero` smallint DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `codCurso` smallint DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `codCurso` (`codCurso`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`codCurso`) REFERENCES `curso` (`codCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES ('20120001','1982-05-30','m','Claudio Santana Cruz','Jardim','BA','Vitoria da Conquista',245,'Centro',1),('20120002','1984-06-30','m','Matheus Carvalho Souza','Recreio','BA','Vitoria da Conquista',111,'Centro',1),('20120003','1984-06-30','m','Gustavo Pinto Brito','Botafogo','BA','Vitoria da Conquista',123,'Centro',1),('20120004','1989-12-12','f','Barbara de Souza Aguiar','Fluminense','BA','Itapetinga',315,'Primavera',1),('20120005','1991-06-12','f','Joana Castro Barbosa','Centro','BA','Itapetinga',122,'Primavera',1),('20120006','1990-06-30','m','Vitor Pinto Cardoso','Centro','BA','Itapetinga',25,'Primavera',1),('20120007','1993-06-30','f','Marcelo Santana Souza','Centro','BA','Vitoria da Conquista',25,'Fluminense',1),('20120008','1982-04-30','f','Valeria Cruz de Jesus','Jardim','BA','Itororo',212,'Centro',2),('20120009','1980-05-30','f','Creuza Carvalho Rocha','Recreio','BA','Itororo',226,'Centro',2),('20120010','1987-04-30','m','Josue Pinto Cardoso','Botafogo','BA','Itapetinga',142,'Centro',2),('20120011','1989-12-11','f','Catia de Souza Aguiar','Fluminense','BA','Itapetinga',315,'Primavera',2),('20120012','1991-06-24','m','Nelson Castro da Silva','Centro','BA','Itapetinga',122,'Primavera',2),('20120013','1990-04-09','m','Vitor Pinto Cardoso','Centro','BA','Itapetinga',255,'Primavera',2),('20120014','1982-02-28','m','Jorge Filho de Arruda','Jardim','BA','Itororo',245,'Centro',3),('20120015','1984-12-30','m','Janio Souza Brito','Recreio','BA','Itororo',111,'Centro',3),('20120016','1984-11-30','m','Juliano Pinto da Cruz','Botafogo','BA','Itororo',123,'Centro',3),('20120017','1989-01-12','f','Beatriz de Souza Cardoso','Fluminense','BA','Itapetinga',315,'Primavera',3),('20120018','1991-02-12','f','Luana Castro Pinto','Centro','BA','Itapetinga',122,'Primavera',3);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunotelefone`
--

DROP TABLE IF EXISTS `alunotelefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunotelefone` (
  `matricula` char(8) NOT NULL,
  `nroTelefone` char(10) NOT NULL,
  PRIMARY KEY (`matricula`,`nroTelefone`),
  CONSTRAINT `alunotelefone_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `aluno` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunotelefone`
--

LOCK TABLES `alunotelefone` WRITE;
/*!40000 ALTER TABLE `alunotelefone` DISABLE KEYS */;
INSERT INTO `alunotelefone` VALUES ('20120001','7732612167'),('20120001','7732612279'),('20120002','7732612279'),('20120002','7732621100'),('20120003','7732612279'),('20120003','7732621595'),('20120003','7732630001'),('20120004','7732639899'),('20120005','7732611887'),('20120006','7732611887'),('20120006','7732612186'),('20120007','7732631201');
/*!40000 ALTER TABLE `alunotelefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concluido`
--

DROP TABLE IF EXISTS `concluido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concluido` (
  `codDisciplina` smallint NOT NULL,
  `matricula` char(8) NOT NULL,
  `nota` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`codDisciplina`,`matricula`),
  KEY `matricula` (`matricula`),
  CONSTRAINT `concluido_ibfk_1` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  CONSTRAINT `concluido_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `aluno` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concluido`
--

LOCK TABLES `concluido` WRITE;
/*!40000 ALTER TABLE `concluido` DISABLE KEYS */;
INSERT INTO `concluido` VALUES (1,'20120001',7.7),(1,'20120002',7.8),(1,'20120003',6.7),(1,'20120004',8.4),(1,'20120005',6.7),(1,'20120006',7.8),(1,'20120007',6.7),(2,'20120001',7.4),(2,'20120002',3.5),(2,'20120003',3.8),(2,'20120004',2.5),(2,'20120005',7.8),(2,'20120006',3.5),(2,'20120007',3.0),(3,'20120001',2.2),(3,'20120002',9.7),(3,'20120003',4.7),(3,'20120004',8.5),(3,'20120005',4.2),(3,'20120006',6.9),(3,'20120007',4.7),(4,'20120001',5.1),(4,'20120002',9.3),(4,'20120003',4.0),(4,'20120004',5.0),(4,'20120005',6.2),(4,'20120006',7.3),(4,'20120007',8.9),(7,'20120008',6.6),(7,'20120009',8.6),(7,'20120010',9.7),(7,'20120011',8.1),(7,'20120012',9.2),(7,'20120013',7.3),(8,'20120008',6.6),(8,'20120009',5.7),(8,'20120010',7.0),(8,'20120011',5.0),(8,'20120012',6.0),(8,'20120013',5.7),(9,'20120008',6.9),(9,'20120009',5.1),(9,'20120010',6.8),(9,'20120011',7.4),(9,'20120012',7.0),(9,'20120013',8.0),(10,'20120008',7.1),(10,'20120009',6.2),(10,'20120010',8.9),(10,'20120011',7.0),(10,'20120012',6.0),(10,'20120013',10.0);
/*!40000 ALTER TABLE `concluido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `codCurso` smallint NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `codDepart` smallint DEFAULT NULL,
  PRIMARY KEY (`codCurso`),
  KEY `codDepart` (`codDepart`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`codDepart`) REFERENCES `departamento` (`codDepart`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Sistemas de Informacao',4),(2,'Agronomia',1),(3,'Engenharia Ambiental',6),(4,'Engenharia da Computacao',6);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `codDepart` smallint NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`codDepart`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias Agrarias'),(2,'Ciencias Biologicas'),(3,'Ciencias da Saude'),(4,'Ciencias Exatas e da Terra'),(5,'Ciencias Humanas'),(6,'Engenharias');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `codDisciplina` smallint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `semestre` enum('I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `cargaHoraria` tinyint DEFAULT NULL,
  PRIMARY KEY (`codDisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Introducao a Programacao','I',80),(2,'Estrutura de Dados','III',80),(3,'Banco de Dados I','IV',60),(4,'Redes de Computadores I','IV',60),(5,'Banco de Dados II','V',60),(6,'Promogracao Web','V',80),(7,'Portugues','I',80),(8,'Quimica','I',60),(9,'Zootecnica','II',80),(10,'Introducao a Agropecuaria','II',80),(11,'Nutricao Animal e Forrageiras','VI',80),(12,'Criacao de Pequenos Animais','VII',80),(13,'Introducao a Poluicao Ambiental','II',60),(14,'Fundamentos de Biologia Ambiental','III',80),(15,'Geotecnia Ambiental','III',80),(16,'Empresas de Engenharia Economica Ambiental','IV',60),(17,'Complexos Industriais e de Agribusiness','VI',40),(18,'Modelagem Matematica em Sistemas Ambientais','VIII',80);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculado`
--

DROP TABLE IF EXISTS `matriculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculado` (
  `matricula` char(8) NOT NULL,
  `codDisciplina` smallint NOT NULL,
  PRIMARY KEY (`matricula`,`codDisciplina`),
  KEY `codDisciplina` (`codDisciplina`),
  CONSTRAINT `matriculado_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `aluno` (`matricula`),
  CONSTRAINT `matriculado_ibfk_2` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculado`
--

LOCK TABLES `matriculado` WRITE;
/*!40000 ALTER TABLE `matriculado` DISABLE KEYS */;
INSERT INTO `matriculado` VALUES ('20120001',1),('20120002',1),('20120003',1),('20120004',1),('20120005',1),('20120006',1),('20120007',1),('20120001',2),('20120002',2),('20120003',2),('20120004',2),('20120005',2),('20120006',2),('20120007',2),('20120001',3),('20120002',3),('20120003',3),('20120004',3),('20120005',3),('20120006',3),('20120007',3),('20120001',4),('20120002',4),('20120003',4),('20120004',4),('20120005',4),('20120006',4),('20120007',4),('20120001',5),('20120002',5),('20120003',5),('20120004',5),('20120005',5),('20120006',5),('20120007',5),('20120001',6),('20120002',6),('20120003',6),('20120004',6),('20120005',6),('20120006',6),('20120007',6),('20120008',7),('20120009',7),('20120010',7),('20120011',7),('20120012',7),('20120013',7),('20120008',8),('20120009',8),('20120010',8),('20120011',8),('20120012',8),('20120013',8),('20120008',9),('20120009',9),('20120010',9),('20120011',9),('20120012',9),('20120013',9),('20120008',10),('20120009',10),('20120010',10),('20120011',10),('20120012',10),('20120013',10),('20120008',11),('20120009',11),('20120010',11),('20120011',11),('20120012',11),('20120013',11),('20120008',12),('20120009',12),('20120010',12),('20120011',12),('20120012',12),('20120013',12),('20120014',13),('20120015',13),('20120016',13),('20120017',13),('20120018',13),('20120014',14),('20120015',14),('20120016',14),('20120017',14),('20120018',14),('20120014',15),('20120015',15),('20120016',15),('20120017',15),('20120018',15),('20120014',16),('20120015',16),('20120016',16),('20120017',16),('20120018',16),('20120014',17),('20120015',17),('20120016',17),('20120017',17),('20120018',17),('20120014',18),('20120015',18),('20120016',18),('20120017',18),('20120018',18);
/*!40000 ALTER TABLE `matriculado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministra`
--

DROP TABLE IF EXISTS `ministra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ministra` (
  `matricula` char(8) NOT NULL,
  `codDisciplina` smallint NOT NULL,
  `ano` year DEFAULT NULL,
  `semestre` enum('I','II') DEFAULT NULL,
  PRIMARY KEY (`matricula`,`codDisciplina`),
  KEY `codDisciplina` (`codDisciplina`),
  CONSTRAINT `ministra_ibfk_1` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  CONSTRAINT `ministra_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `professor` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministra`
--

LOCK TABLES `ministra` WRITE;
/*!40000 ALTER TABLE `ministra` DISABLE KEYS */;
INSERT INTO `ministra` VALUES ('20120001',3,2012,'II'),('20120002',4,2012,'I'),('20120003',2,2011,'II'),('20120003',6,2012,'II'),('20120004',1,2011,'I'),('20120004',5,2012,'II');
/*!40000 ALTER TABLE `ministra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prerequisito`
--

DROP TABLE IF EXISTS `prerequisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prerequisito` (
  `codDisciplina` smallint NOT NULL,
  `codPrerequisito` smallint NOT NULL,
  PRIMARY KEY (`codDisciplina`,`codPrerequisito`),
  KEY `codPrerequisito` (`codPrerequisito`),
  CONSTRAINT `prerequisito_ibfk_1` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  CONSTRAINT `prerequisito_ibfk_2` FOREIGN KEY (`codPrerequisito`) REFERENCES `disciplina` (`codDisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisito`
--

LOCK TABLES `prerequisito` WRITE;
/*!40000 ALTER TABLE `prerequisito` DISABLE KEYS */;
INSERT INTO `prerequisito` VALUES (2,1),(3,1),(4,2),(5,2),(6,2),(5,3),(6,3),(6,4),(9,7),(10,7),(9,8),(10,8),(11,9),(12,10),(15,13),(16,13),(18,13),(17,14),(17,16);
/*!40000 ALTER TABLE `prerequisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `matricula` char(8) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `titulacao` enum('Graduação','Especialização','Mestrado','Doutorado') DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES ('20120001','Lidiana Franca martins','Mestrado'),('20120002','Fernando Bulhoes','Mestrado'),('20120003','Claudio Rodolfo Oliveira','Mestrado'),('20120004','Pablo Freire Matos','Mestrado'),('20120005','Rosana Moura de Oliveira','Doutorado');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-10 17:45:25
