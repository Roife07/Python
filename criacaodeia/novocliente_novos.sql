CREATE DATABASE  IF NOT EXISTS `novocliente` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `novocliente`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: novocliente
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `novos`
--

DROP TABLE IF EXISTS `novos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novos` (
  `mes` int DEFAULT NULL,
  `idade` double DEFAULT NULL,
  `profissao` text,
  `salario_anual` double DEFAULT NULL,
  `num_contas` double DEFAULT NULL,
  `num_cartoes` double DEFAULT NULL,
  `juros_emprestimo` double DEFAULT NULL,
  `num_emprestimos` double DEFAULT NULL,
  `dias_atraso` double DEFAULT NULL,
  `num_pagamentos_atrasados` double DEFAULT NULL,
  `num_verificacoes_credito` double DEFAULT NULL,
  `mix_credito` text,
  `divida_total` double DEFAULT NULL,
  `taxa_uso_credito` double DEFAULT NULL,
  `idade_historico_credito` double DEFAULT NULL,
  `investimento_mensal` double DEFAULT NULL,
  `comportamento_pagamento` text,
  `saldo_final_mes` double DEFAULT NULL,
  `emprestimo_carro` int DEFAULT NULL,
  `emprestimo_casa` int DEFAULT NULL,
  `emprestimo_pessoal` int DEFAULT NULL,
  `emprestimo_credito` int DEFAULT NULL,
  `emprestimo_estudantil` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novos`
--

LOCK TABLES `novos` WRITE;
/*!40000 ALTER TABLE `novos` DISABLE KEYS */;
INSERT INTO `novos` VALUES (38204,31,'empresario',19300.34,6,7,17,5,52,19,7,'Ruim',2430.21,29.934185732751413,218,44.50950984607408,'baixo_gasto_pagamento_baixo',312.4876885895601,1,1,0,0,0),(4,32,'advogado',12600.445,5,5,10,3,25,18,7,'Normal',569.8,28.819407058304,12,0,'baixo_gasto_pagamento_medio',300.9941628933122,0,0,0,0,1);
/*!40000 ALTER TABLE `novos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19 15:58:00
