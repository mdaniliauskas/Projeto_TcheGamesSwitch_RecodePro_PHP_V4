-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tchegames
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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `idComentarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `mensagem` varchar(500) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idComentarios`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'Marcelo','marcelo@marcelo.com','Muito obrigado pela venda!\r\n\r\nSeguramente comprarei de novo!\r\n\r\nAtt.\r\n\r\nMarcelo','2020-11-03 20:32:59'),(2,'Telma','telma@telma.com','Ainda tem o Nintendo Switch Lite na cor Turquesa?\r\n\r\nObrigado,\r\n\r\nT.','2020-11-03 20:33:33'),(3,'Romulado','romulado@out.com','Vocês têm 3 Nintendo Switch cinzas no estoque?\r\n\r\nObrigado.\r\n\r\nR.','2020-11-03 20:34:51'),(4,'Rody','rody@rody.com','Adorei a compra, farei novamente!\r\n\r\n','2020-11-03 20:51:54');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  `nomeClientes` varchar(150) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `nomeProduto` varchar(150) NOT NULL,
  `valorUnitario` decimal(8,2) NOT NULL DEFAULT '0.00',
  `quantidade` int NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`idpedidos`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de pedidos contendo: nome do cliente, data do pedido (automático), telefone, endereço, nome do produto, valor unitário, quantidade e valor total.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2020-11-03 20:31:32','Maya','111111','R. das Verbenas, 2000. Bela-Vista. São Paulo','Nintendo Lite Turquesa',0.00,1,0.00),(2,'2020-11-03 20:32:19','Marcelo','333333','R. das Camélias, 23. Centro. São Paulo.','Nintendo Vermelho e Azul',0.00,3,0.00),(3,'2020-11-03 20:37:14','Andrade','2222222','R. dos Andrades, 222. Centro. São Paulo','Mario Kart',0.00,5,0.00),(4,'2020-11-03 20:51:19','Rosy','88888','R. Rosy, 202. Rio de Janeiro.','Nintendo Switch Lite Amarelo',0.00,3,0.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  `precoCheio` decimal(8,2) NOT NULL,
  `precoDesconto` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idprodutos`),
  UNIQUE KEY `idprodutos_UNIQUE` (`idprodutos`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de produtos contendo: categoria, descrição, imagem, preço cheio e preço com desconto.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'consoles','Nintendo Switch - Vermelho e Azul','img/produtos/Consoles/Switch_Azul_Vermelho.jpg',2500.00,2000.00),(2,'consoles','Nintendo Switch - Cinza','img/produtos/Consoles/Switch_Cinza.jpg',2000.00,1800.00),(3,'consoles','Nintendo Switch Lite - Amarelo','img/produtos/Consoles/Switch_Lite_Amarelo.jpg',1750.00,1500.00),(4,'consoles','Nintendo Switch Lite - Cinza','img/produtos/Consoles/Switch_Lite_Cinza.jpg',1750.00,1500.00),(5,'consoles','Nintendo Switch Lite - Coral','img/produtos/Consoles/Switch_Lite_Coral.jpg',1750.00,1500.00),(6,'consoles','Nintendo Switch Lite - Turquesa','img/produtos/Consoles/Switch_Lite_Turquesa.jpg',1750.00,1500.00),(7,'jogos','Super Mario Odyssey','img/produtos/Jogos/MarioOdissey.jpg',250.00,200.00),(8,'jogos','Mario Kart','img/produtos/Jogos/MarioKart.jpg',250.00,200.00),(9,'jogos','The Legend Of Zelda Breath Of The Wild','img/produtos/Jogos/Zelda.jpg',250.00,200.00),(10,'jogos','Sonic Forces','img/produtos/Jogos/Sonic.jpg',250.00,200.00),(11,'jogos','Pokémon Sword','img/produtos/Jogos/PokemonSword.jpg',250.00,200.00),(12,'acessorios','Dock Station Charging','img/produtos/Acessorios/Charging%20Dock.jpg',500.00,300.00),(13,'acessorios','Organizador de jogos','img/produtos/Acessorios/Organizador%20Jogos.jpg',150.00,100.00),(14,'acessorios','Película de vidro ultra-resistente','img/produtos/Acessorios/Pelicula.jpg',50.00,25.00),(15,'acessorios','Pro Contoller Nintendo Switch','img/produtos/Acessorios/Pro%20Controller.jpg',500.00,400.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tchegames'
--

--
-- Dumping routines for database 'tchegames'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-03 21:41:53
