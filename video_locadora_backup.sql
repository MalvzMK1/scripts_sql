-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: db_video_locadora
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tbl_ator`
--

DROP TABLE IF EXISTS `tbl_ator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ator` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantidade_filmes` int DEFAULT NULL,
  `biografia` text,
  `ano_inicio_carreira` year DEFAULT NULL,
  `id_ator_diretor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ator_diretor_ator` (`id_ator_diretor`),
  CONSTRAINT `FK_ator_diretor_ator` FOREIGN KEY (`id_ator_diretor`) REFERENCES `tbl_ator_diretor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ator`
--

LOCK TABLES `tbl_ator` WRITE;
/*!40000 ALTER TABLE `tbl_ator` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ator_diretor`
--

DROP TABLE IF EXISTS `tbl_ator_diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ator_diretor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `nome_artistico` varchar(45) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_falescimento` date DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `id_sexo` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_sexo_ator_diretor` (`id_sexo`),
  CONSTRAINT `FK_sexo_ator_diretor` FOREIGN KEY (`id_sexo`) REFERENCES `tbl_sexo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ator_diretor`
--

LOCK TABLES `tbl_ator_diretor` WRITE;
/*!40000 ALTER TABLE `tbl_ator_diretor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ator_diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ator_diretor_nacionalidade`
--

DROP TABLE IF EXISTS `tbl_ator_diretor_nacionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ator_diretor_nacionalidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_nacionalidade` int NOT NULL,
  `id_ator_diretor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_nacionalidade_ator_diretor_nacionalidade` (`id_nacionalidade`),
  KEY `FK_ator_diretor_ator_diretor_nacionalidade` (`id_ator_diretor`),
  CONSTRAINT `FK_ator_diretor_ator_diretor_nacionalidade` FOREIGN KEY (`id_ator_diretor`) REFERENCES `tbl_ator_diretor` (`id`),
  CONSTRAINT `FK_nacionalidade_ator_diretor_nacionalidade` FOREIGN KEY (`id_nacionalidade`) REFERENCES `tbl_nacionalidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ator_diretor_nacionalidade`
--

LOCK TABLES `tbl_ator_diretor_nacionalidade` WRITE;
/*!40000 ALTER TABLE `tbl_ator_diretor_nacionalidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ator_diretor_nacionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classificacao`
--

DROP TABLE IF EXISTS `tbl_classificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classificacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `classificacao` varchar(50) DEFAULT NULL,
  `caracteristicas` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classificacao`
--

LOCK TABLES `tbl_classificacao` WRITE;
/*!40000 ALTER TABLE `tbl_classificacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_classificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_diretor`
--

DROP TABLE IF EXISTS `tbl_diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_diretor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantidade_filmes` int DEFAULT NULL,
  `biografia` text,
  `ano_inicio_carreira` year DEFAULT NULL,
  `id_ator_diretor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ator_diretor_diretor` (`id_ator_diretor`),
  CONSTRAINT `FK_ator_diretor_diretor` FOREIGN KEY (`id_ator_diretor`) REFERENCES `tbl_ator_diretor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_diretor`
--

LOCK TABLES `tbl_diretor` WRITE;
/*!40000 ALTER TABLE `tbl_diretor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_filme`
--

DROP TABLE IF EXISTS `tbl_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `duracao` time DEFAULT NULL,
  `sinopse` text,
  `data_lancamento` date NOT NULL,
  `data_relancemento` date DEFAULT NULL,
  `foto_capa` varchar(200) NOT NULL,
  `nome_original` varchar(50) DEFAULT NULL,
  `id_classificacao` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_classificacao_filme` (`id_classificacao`),
  CONSTRAINT `FK_classificacao_filme` FOREIGN KEY (`id_classificacao`) REFERENCES `tbl_classificacao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_filme`
--

LOCK TABLES `tbl_filme` WRITE;
/*!40000 ALTER TABLE `tbl_filme` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_filme_genero`
--

DROP TABLE IF EXISTS `tbl_filme_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_filme_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_filme` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_filme_filme_genero` (`id_filme`),
  KEY `FK_genero_filme_genero` (`id_genero`),
  CONSTRAINT `FK_filme_filme_genero` FOREIGN KEY (`id_filme`) REFERENCES `tbl_filme` (`id`),
  CONSTRAINT `FK_genero_filme_genero` FOREIGN KEY (`id_genero`) REFERENCES `tbl_genero` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_filme_genero`
--

LOCK TABLES `tbl_filme_genero` WRITE;
/*!40000 ALTER TABLE `tbl_filme_genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_filme_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nacionalidade`
--

DROP TABLE IF EXISTS `tbl_nacionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nacionalidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nacionalidade`
--

LOCK TABLES `tbl_nacionalidade` WRITE;
/*!40000 ALTER TABLE `tbl_nacionalidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_nacionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sexo`
--

DROP TABLE IF EXISTS `tbl_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sexo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexo`
--

LOCK TABLES `tbl_sexo` WRITE;
/*!40000 ALTER TABLE `tbl_sexo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sexo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-25 10:35:34
