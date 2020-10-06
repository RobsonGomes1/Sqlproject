CREATE DATABASE  IF NOT EXISTS `systemhlr` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `systemhlr`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: systemhlr
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `nomeFornecedor` varchar(120) NOT NULL,
  `emailFornecedor` varchar(120) NOT NULL,
  `cnpjFornecedor` bigint NOT NULL,
  `CepFornecedor` int NOT NULL,
  `DataRegistro` date DEFAULT NULL,
  `IDfornecedor` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDfornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES ('MachineDev LTDA','mach@email.com',186788860001,20152265,'1999-02-15',1),('Microd LTDA','micr@email.com',182748850021,20154255,'1982-06-26',2),('Fazenda LTDA','fazenda@email.com',133788812001,22116455,'2000-04-02',3),('Agro LTDA','agro@email.com',344712860001,22354245,'2021-02-05',4);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `DataN` date NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `Salario` float NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `CEP` int NOT NULL,
  `ende` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Larissa Silva','lari@email.com','1255225544','1985-05-19','Marketing Junior',2000,'Feminino',20150102,'Rua Glória'),(2,'João Gustavo','jo@email.com','1525556654','1982-04-20','Rh',2200,'Masculino',20455852,'Centro oliva'),(3,'Robson Gomes','robson@email.com','15329250778','1997-06-26','Dev junior',2600,'Masculino',20720230,'Rua maranhão'),(4,'Luiz Papai','lu@email.com','15329250774','1997-04-21','BackEnd',4500,'Masculino',20750265,'Rua ilidio'),(5,'Haylton Evana','ht@email.com','1215225544','1997-05-22','FrontEND',3600,'Masculino',20150112,'Rua natasha');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `nomeProduto` varchar(120) NOT NULL,
  `QuantidadeDeProducao` int NOT NULL,
  `ValorDoProduto` float NOT NULL,
  `ValidadeProduto` date NOT NULL,
  `TipoDeGrandeza` varchar(20) NOT NULL,
  `IDproduto` int NOT NULL AUTO_INCREMENT,
  `ProducaoDoProduto` varchar(100) NOT NULL,
  `DatadeProducao` date NOT NULL,
  `QuantidadeDeProduto` bigint NOT NULL,
  PRIMARY KEY (`IDproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES ('Placa de video RTX',100,2300,'2024-06-18','G',1,'Tecnologia','2019-08-22',400),('Placa 1015Ti',100,1200,'2024-06-20','G',2,'Tecnologia','2019-05-15',600),('HyperZ 8gb',100,700,'2025-05-25','G',3,'Tecnologia','2020-02-16',800),('Arroz',80,30,'2022-02-10','KG',4,'agricola','2021-09-12',600),('Feijão',80,8,'2022-02-10','KG',5,'Agricola','2021-09-13',500);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrofornecedores`
--

DROP TABLE IF EXISTS `registrofornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrofornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int NOT NULL,
  `id_Produto` int NOT NULL,
  `dataPedido` datetime NOT NULL,
  `DataCancelamento` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fornecedor` (`id_fornecedor`),
  CONSTRAINT `registrofornecedores_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedores` (`IDfornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrofornecedores`
--

LOCK TABLES `registrofornecedores` WRITE;
/*!40000 ALTER TABLE `registrofornecedores` DISABLE KEYS */;
INSERT INTO `registrofornecedores` VALUES (1,1,1,'2019-08-22 00:00:00','2025-01-19 00:00:00'),(2,2,1,'2019-05-15 00:00:00','2028-03-12 00:00:00'),(3,2,2,'2020-02-16 00:00:00','2028-00-00 00:00:00'),(4,3,4,'2021-09-12 00:00:00','2028-00-00 00:00:00'),(5,4,5,'2021-09-13 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `registrofornecedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 20:12:16
