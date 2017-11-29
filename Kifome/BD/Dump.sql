CREATE DATABASE  IF NOT EXISTS `kifome` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kifome`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: kifome
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `can_cancelado`
--

DROP TABLE IF EXISTS `can_cancelado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `can_cancelado` (
  `can_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `can_pedido` varchar(255) NOT NULL,
  `can_motivo` varchar(255) NOT NULL,
  PRIMARY KEY (`can_codigo`),
  UNIQUE KEY `can_codigo_UNIQUE` (`can_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `can_cancelado`
--

LOCK TABLES `can_cancelado` WRITE;
/*!40000 ALTER TABLE `can_cancelado` DISABLE KEYS */;
INSERT INTO `can_cancelado` VALUES (2,'a6c6a068-32a0-464b-ace5-fb720994052d','A encomenda era para um evento e não foi entreguee no dia correto.'),(3,'302bb7b9-f7e9-4999-82e3-1246ff8ff631','Pedido cancelado por atraso'),(4,'e9fd1266-5419-4cc5-b51c-1964bb6d2b95','Não foi necessário repor o estoque do quiosque'),(5,'089b22e1-a580-4fdb-afd7-b8f940e385a8','Cliente sem compromisso'),(6,'02bb1305-2c92-496e-9152-4d73f5d55a5c','Razão qualqueer pra cancelamento'),(7,'287f2a29-1e56-4c11-9931-1ea368857c29','Cancelamento qualquer'),(8,'44ec4b92-14c9-48b3-8e02-b91bea5afdc6','Bateu a van'),(9,'9600b279-0818-4254-90a9-915e31828605','Fogo'),(10,'7cfc4a7a-e75a-4e0a-99e3-ad2467e22e37','Lanchonete faliu'),(11,'727d072d-7f05-42fd-b1c6-ae22aafca530','Hotel perdeu os clientes.');
/*!40000 ALTER TABLE `can_cancelado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ent_entradamateria`
--

DROP TABLE IF EXISTS `ent_entradamateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ent_entradamateria` (
  `ent_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ent_nome` varchar(255) NOT NULL,
  `ent_quantidade` int(11) NOT NULL,
  `ent_descricao` varchar(255) NOT NULL,
  `ent_valor` decimal(10,2) NOT NULL,
  `ent_data` datetime NOT NULL,
  `ent_funcionario` varchar(255) NOT NULL,
  PRIMARY KEY (`ent_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ent_entradamateria`
--

LOCK TABLES `ent_entradamateria` WRITE;
/*!40000 ALTER TABLE `ent_entradamateria` DISABLE KEYS */;
INSERT INTO `ent_entradamateria` VALUES (22,'Açucar',10,'10 kg de açucar',40.00,'2017-11-27 03:05:35','Rafaela'),(23,'Farinha',40,'40 kg de farinha dona benta',70.00,'2017-11-27 03:06:01','Rafaela'),(24,'Carne moída',10,'10 kg de carne moida',50.00,'2017-11-27 03:06:41','Rafaela'),(25,'Frango',5,'5kg de peito de frango',30.00,'2017-11-27 03:07:48','Rafaela'),(26,'Ovos',48,'4 duzias de ovos',20.00,'2017-11-27 03:08:09','Rafaela'),(27,'Sal',3,'3 kg de sal',8.00,'2017-11-27 03:08:25','Rafaela'),(28,'Leite',12,'12 litros de leite integral',25.82,'2017-11-27 03:08:50','Rafaela'),(29,'Margarina',4,'4 potes de margarina',12.00,'2017-11-27 03:09:12','Rafaela'),(30,'Fermento',3,'3 potes de fermento',10.00,'2017-11-27 03:09:43','Rafaela'),(31,'Ovos',12,'Uma duzia de ovos',5.00,'2017-11-27 03:14:10','Rafaela'),(32,'Tempero',2,'2 kg de tempero pronto',5.00,'2017-11-27 03:14:42','Rafaela');
/*!40000 ALTER TABLE `ent_entradamateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_funcionario`
--

DROP TABLE IF EXISTS `fun_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_funcionario` (
  `fun_codigo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fun_nome` varchar(255) NOT NULL,
  `fun_email` varchar(255) NOT NULL,
  `fun_senha` varchar(255) NOT NULL,
  `fun_tipo` int(11) NOT NULL,
  `fun_salario` decimal(10,2) NOT NULL,
  `fun_cracha` varchar(10) NOT NULL,
  PRIMARY KEY (`fun_codigo`),
  UNIQUE KEY `idpes_pessoas_UNIQUE` (`fun_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_funcionario`
--

LOCK TABLES `fun_funcionario` WRITE;
/*!40000 ALTER TABLE `fun_funcionario` DISABLE KEYS */;
INSERT INTO `fun_funcionario` VALUES (1,'thalles','thalles_guatura@hotmail.com','123',0,1000.00,'6'),(2,'rafael','rafael@hotmail.com','123',1,1100.00,'8'),(3,'Rafaela','rafaela@hotmail.com','123',0,1200.00,'5'),(4,'thalles','thalles_guatura2@hotmail.com','123',0,1200.00,'10'),(5,'Samilly','samilly@gmail.com','123',0,1200.00,'1'),(6,'Samilly','samilly3@gmail.com','123',1,1200.00,'4'),(7,'Guarino','du.guarino@gmail.com','123',0,1000.00,'76576'),(8,'Chapolin','ch.chesp@gmail.com','123',0,1090.00,'CH'),(9,'Super Sam','SS@gmail.com','123',1,666.66,'SS'),(10,'Tripa Seca','TSCH@gmail.com','123',0,999.99,'9493');
/*!40000 ALTER TABLE `fun_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ite_itenspedido`
--

DROP TABLE IF EXISTS `ite_itenspedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ite_itenspedido` (
  `ite_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ite_produto` varchar(255) NOT NULL,
  `ite_quantidade` int(11) NOT NULL,
  `ite_guid` varchar(255) NOT NULL,
  `ite_data` datetime DEFAULT NULL,
  `ite_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ite_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ite_itenspedido`
--

LOCK TABLES `ite_itenspedido` WRITE;
/*!40000 ALTER TABLE `ite_itenspedido` DISABLE KEYS */;
INSERT INTO `ite_itenspedido` VALUES (71,'Bolinha de Queijo',250,'f2f16ca6-41f9-489a-a2a7-d6dec113a45b','2017-11-22 15:29:27','Pronto'),(72,'Coxinha',250,'f2f16ca6-41f9-489a-a2a7-d6dec113a45b','2017-11-22 15:29:27','Pronto'),(73,'Kibe',200,'f2f16ca6-41f9-489a-a2a7-d6dec113a45b','2017-11-22 15:29:27','Pronto'),(74,'Bolinha de Queijo',100,'da3e60a4-1b00-4e04-9a2a-ccdeec2494f0','2017-11-23 15:31:13','Pronto'),(75,'Kibe',100,'da3e60a4-1b00-4e04-9a2a-ccdeec2494f0','2017-11-23 15:31:13','Pronto'),(76,'Coxinha',100,'da3e60a4-1b00-4e04-9a2a-ccdeec2494f0','2017-11-23 15:31:13','Pronto'),(77,'Bolinha de Queijo',600,'594d400e-f021-4193-90b9-03294e6e1767','2017-11-24 15:32:50','Pronto'),(78,'Kibe',400,'594d400e-f021-4193-90b9-03294e6e1767','2017-11-24 15:32:50','Pronto'),(79,'Coxinha',600,'594d400e-f021-4193-90b9-03294e6e1767','2017-11-24 15:32:50','Pronto'),(80,'Bolinha de Queijo',300,'727d072d-7f05-42fd-b1c6-ae22aafca530','2017-11-22 15:33:45','Cancelado'),(81,'Kibe',100,'727d072d-7f05-42fd-b1c6-ae22aafca530','2017-11-22 15:33:45','Cancelado'),(82,'Coxinha',300,'727d072d-7f05-42fd-b1c6-ae22aafca530','2017-11-22 15:33:45','Cancelado'),(83,'Bolinha de Queijo',330,'7ef66fca-bb3b-4e96-9d54-beaab569e5cf','2017-11-23 15:41:11','Pronto'),(84,'Kibe',300,'7ef66fca-bb3b-4e96-9d54-beaab569e5cf','2017-11-23 15:41:11','Pronto'),(85,'Coxinha',600,'7ef66fca-bb3b-4e96-9d54-beaab569e5cf','2017-11-23 15:41:11','Pronto'),(86,'Coxinha',1300,'51ec8fa4-5ba6-411c-8935-70d76f2c3144','2017-11-24 15:43:23','Pronto'),(87,'Bolinha de Queijo',1000,'51ec8fa4-5ba6-411c-8935-70d76f2c3144','2017-11-24 15:43:23','Pronto'),(88,'Coxinha',100,'302bb7b9-f7e9-4999-82e3-1246ff8ff631','2017-11-15 15:45:10','Cancelado'),(89,'Bolinha de Queijo',200,'302bb7b9-f7e9-4999-82e3-1246ff8ff631','2017-11-15 15:45:10','Cancelado'),(90,'Bolinha de Queijo',500,'6404cbd5-cf2d-4110-aa36-674a8c20c14d','2017-11-22 15:48:31','Pronto'),(91,'Cigarrete',120,'6404cbd5-cf2d-4110-aa36-674a8c20c14d','2017-11-22 15:48:31','Pronto'),(95,'Produto de Teste',50,'e9fd1266-5419-4cc5-b51c-1964bb6d2b95','2017-11-24 15:52:43','Cancelado'),(96,'Coxinha',500,'a6c6a068-32a0-464b-ace5-fb720994052d','2017-11-25 15:54:50','Cancelado'),(97,'Bolinha de Queijo',500,'a6c6a068-32a0-464b-ace5-fb720994052d','2017-11-25 15:54:50','Cancelado'),(98,'Kibe',300,'a6c6a068-32a0-464b-ace5-fb720994052d','2017-11-25 15:54:50','Cancelado'),(99,'Coxinha',500,'ad778873-fd5f-43ff-9aff-8163191f1114','2017-11-22 16:04:55','Pronto'),(100,'Coxinha',300,'e75d1233-8511-4ff4-85ab-f6ad21d11cb8','2017-10-25 16:05:19','Pronto'),(101,'Bolinha de Queijo',400,'86ff5c52-7002-427a-9474-41d51517bfa4','2017-10-27 16:05:41','Pronto'),(102,'Bolinha de Queijo',430,'ece481ff-c1a7-49dd-b1d0-5dd86dc63b56','2017-10-01 14:11:21','Pronto'),(103,'Coxinha',300,'ece481ff-c1a7-49dd-b1d0-5dd86dc63b56','2017-10-01 14:11:21','Pronto'),(104,'Bolinha de Queijo',800,'4250f551-0b1b-4cd5-acab-5f6c69240067','2017-10-03 14:11:44','Pronto'),(105,'Cigarrete',150,'2835fd8a-57c8-4c7d-9783-b853f6f247dd','2017-10-03 14:12:09','Pronto'),(106,'Coxinha',400,'2835fd8a-57c8-4c7d-9783-b853f6f247dd','2017-10-03 14:12:09','Pronto'),(107,'Bolinha de Queijo',490,'df7dff7d-29cb-4410-bf99-1d8718562031','2017-10-04 14:12:52','Pronto'),(108,'Coxinha',300,'df7dff7d-29cb-4410-bf99-1d8718562031','2017-10-04 14:12:52','Pronto'),(109,'Bolinha de Queijo',300,'7cfc4a7a-e75a-4e0a-99e3-ad2467e22e37','2017-10-07 14:14:14','Cancelado'),(110,'Empada de Frango',200,'746375c3-e1b5-4bc6-9b35-918420669929','2017-10-04 14:14:35','Pronto'),(111,'Kibe',300,'0449219c-aa8d-45c9-9ee3-6fb1f9d4cea0','2017-10-08 14:14:54','Pronto'),(112,'Coxinha',150,'b38c1f66-02a7-4417-b1e5-26e3c26e00f5','2017-10-08 14:15:19','Pronto'),(113,'Coxinha',120,'089b22e1-a580-4fdb-afd7-b8f940e385a8','2017-10-08 14:15:40','Cancelado'),(114,'Bolinha de Queijo',700,'6f405e6b-9caa-4218-81da-74e3c104527f','2017-10-09 14:16:07','Pronto'),(115,'Coxinha',500,'6f405e6b-9caa-4218-81da-74e3c104527f','2017-10-09 14:16:07','Pronto'),(116,'Coxinha',400,'43eb954c-6a7d-4047-8327-a82e02b7a9c3','2017-10-09 14:16:33','Pronto'),(117,'Bolinha de Queijo',400,'43eb954c-6a7d-4047-8327-a82e02b7a9c3','2017-10-09 14:16:33','Pronto'),(118,'Coxinha',4000,'03fea6c7-2570-4b62-ba02-f79d66a141ef','2017-10-09 14:16:53','Pronto'),(119,'Coxinha',4000,'839929de-17fd-4177-b242-060a575b40ea','2017-10-09 14:17:25','Pronto'),(120,'Bolinha de Queijo',3000,'839929de-17fd-4177-b242-060a575b40ea','2017-10-09 14:17:25','Pronto'),(121,'Coxinha',600,'3b685f21-6459-4d3c-ada5-0515dc349a0c','2017-10-13 14:18:03','Pronto'),(122,'Bolinha de Queijo',600,'3b685f21-6459-4d3c-ada5-0515dc349a0c','2017-10-13 14:18:03','Pronto'),(123,'Bolinha de Queijo',200,'44ec4b92-14c9-48b3-8e02-b91bea5afdc6','2017-10-15 14:18:34','Cancelado'),(124,'Coxinha',200,'44ec4b92-14c9-48b3-8e02-b91bea5afdc6','2017-10-15 14:18:34','Cancelado'),(125,'Coxinha',150,'9600b279-0818-4254-90a9-915e31828605','2017-10-05 14:18:53','Cancelado'),(126,'Coxinha',450,'e31a4a89-c5f0-4bfc-a3a6-1a9f5b31f5db','2017-10-08 14:19:41','Pronto'),(127,'Bolinha de Queijo',450,'e31a4a89-c5f0-4bfc-a3a6-1a9f5b31f5db','2017-10-08 14:19:41','Pronto'),(128,'Bolinha de Queijo',450,'7d5bae45-b4d0-4fac-b261-467c35acfe74','2017-10-15 14:20:06','Pronto'),(129,'Coxinha',450,'7d5bae45-b4d0-4fac-b261-467c35acfe74','2017-10-15 14:20:06','Pronto'),(130,'Bolinha de Queijo',3000,'cfba5b7a-98cf-4a5d-a0a2-740fe850e071','2017-10-13 14:20:33','Pronto'),(131,'Coxinha',3000,'cfba5b7a-98cf-4a5d-a0a2-740fe850e071','2017-10-13 14:20:33','Pronto'),(132,'Bolinha de Queijo',4000,'f8bf9a2e-43f3-4a53-8531-55ba3fdd9257','2017-10-01 15:21:03','Pronto'),(133,'Coxinha',5000,'f8bf9a2e-43f3-4a53-8531-55ba3fdd9257','2017-10-01 15:21:03','Pronto'),(134,'Bolinha de Queijo',2000,'d077a43d-f7de-40ee-b9e3-42dafc8d9458','2017-10-03 14:21:30','Pronto'),(135,'Coxinha',2000,'d077a43d-f7de-40ee-b9e3-42dafc8d9458','2017-10-03 14:21:30','Pronto'),(136,'Coxinha',800,'ebdbe3a0-da4f-47e2-9471-87414bef8b1a','2017-10-05 14:21:57','Pronto'),(137,'Bolinha de Queijo',700,'ebdbe3a0-da4f-47e2-9471-87414bef8b1a','2017-10-05 14:21:57','Pronto'),(138,'Coxinha',300,'7df1d7f5-343d-4565-bd7b-995118296379','2017-10-15 14:22:25','Pronto'),(139,'Bolinha de Queijo',250,'7df1d7f5-343d-4565-bd7b-995118296379','2017-10-15 14:22:25','Pronto'),(140,'Bolinha de Queijo',3000,'f902e392-2463-46e8-88d0-3c6402badd1c','2017-10-17 14:22:41','Pronto'),(141,'Bolinha de Queijo',2000,'8934577b-dcbe-442f-b7c9-686e735e701c','2017-10-22 14:23:12','Pronto'),(142,'Coxinha',1000,'8934577b-dcbe-442f-b7c9-686e735e701c','2017-10-22 14:23:12','Pronto'),(143,'Bolinha de Queijo',500,'1f03a41b-ce33-42a8-a017-34dc05ced8c1','2017-10-18 14:23:32','Pronto'),(144,'Coxinha',500,'1f03a41b-ce33-42a8-a017-34dc05ced8c1','2017-10-18 14:23:32','Pronto'),(145,'Bolinha de Queijo',400,'04c5bc2d-8cba-42fb-a6c6-ea2032c26261','2017-10-22 14:24:03','Pronto'),(146,'Coxinha',3000,'8d140afd-bd2f-4a76-ba0c-735a05493de7','2017-10-22 14:33:40','Pronto'),(147,'Bolinha de Queijo',3000,'8d140afd-bd2f-4a76-ba0c-735a05493de7','2017-10-22 14:33:40','Pronto'),(148,'Bolinha de Queijo',500,'8f700f97-6c12-42a0-a35a-821264330c1a','2017-10-23 14:34:01','Pronto'),(149,'Coxinha',400,'8f700f97-6c12-42a0-a35a-821264330c1a','2017-10-23 14:34:01','Pronto'),(150,'Bolinha de Queijo',800,'5b796152-c776-4e2d-a361-e7df1f074042','2017-10-22 14:34:24','Pronto'),(151,'Coxinha',700,'5b796152-c776-4e2d-a361-e7df1f074042','2017-10-22 14:34:24','Pronto'),(152,'Bolinha de Queijo',500,'7ecfd04a-1dc3-4578-b255-577f423bed19','2017-10-24 14:34:59','Pronto'),(153,'Coxinha',450,'7ecfd04a-1dc3-4578-b255-577f423bed19','2017-10-24 14:34:59','Pronto'),(154,'Bolinha de Queijo',350,'3247cee5-67f3-46df-ac30-65e112536132','2017-10-24 21:00:06','Pronto'),(155,'Coxinha',500,'3247cee5-67f3-46df-ac30-65e112536132','2017-10-24 21:00:06','Pronto'),(156,'Coxinha',450,'caa1ac90-c336-4ffb-9930-d51bab962c42','2017-10-24 21:22:44','Pronto'),(157,'Bolinha de Queijo',800,'caa1ac90-c336-4ffb-9930-d51bab962c42','2017-10-24 21:22:44','Pronto'),(158,'Coxinha',300,'287f2a29-1e56-4c11-9931-1ea368857c29','2017-10-25 21:24:34','Cancelado'),(159,'Bolinha de Queijo',200,'287f2a29-1e56-4c11-9931-1ea368857c29','2017-10-25 21:24:34','Cancelado'),(160,'Cigarrete',200,'287f2a29-1e56-4c11-9931-1ea368857c29','2017-10-25 21:24:34','Cancelado'),(161,'Coxinha',1000,'6e31e26a-0b39-40cc-8a9d-1798e5366b9a','2017-10-25 21:32:22','Pronto'),(162,'Bolinha de Queijo',1500,'6e31e26a-0b39-40cc-8a9d-1798e5366b9a','2017-10-25 21:32:22','Pronto'),(163,'Coxinha',900,'dd42a864-ccc2-4fa7-b13a-2b591f6b2585','2017-10-27 21:37:03','Pronto'),(164,'Bolinha de Queijo',700,'dd42a864-ccc2-4fa7-b13a-2b591f6b2585','2017-10-27 21:37:03','Pronto'),(165,'Coxinha',700,'27d8fc21-b1fa-40d2-94fa-6b8381ad890c','2017-10-27 21:38:21','Pronto'),(166,'Bolinha de Queijo',700,'27d8fc21-b1fa-40d2-94fa-6b8381ad890c','2017-10-27 21:38:21','Pronto'),(167,'Coxinha',2000,'9e19dafd-316c-4c58-ac49-d991d0f24fd3','2017-10-27 21:40:41','Pronto'),(168,'Bolinha de Queijo',2000,'9e19dafd-316c-4c58-ac49-d991d0f24fd3','2017-10-27 21:40:41','Pronto'),(169,'Coxinha',300,'f444de0f-3eea-4ea3-b3ce-5f09f9992c22','2017-10-28 21:50:04','Pronto'),(170,'Bolinha de Queijo',500,'f444de0f-3eea-4ea3-b3ce-5f09f9992c22','2017-10-28 21:50:04','Pronto'),(171,'Bolinha de Queijo',200,'02bb1305-2c92-496e-9152-4d73f5d55a5c','2017-10-28 23:00:33','Cancelado'),(172,'Coxinha',200,'02bb1305-2c92-496e-9152-4d73f5d55a5c','2017-10-28 23:00:33','Cancelado');
/*!40000 ALTER TABLE `ite_itenspedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_materiaprima`
--

DROP TABLE IF EXISTS `mat_materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_materiaprima` (
  `mat_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mat_nome` varchar(255) NOT NULL,
  `mat_quantidade` int(11) NOT NULL,
  `mat_descricao` varchar(255) NOT NULL,
  `mat_status` varchar(255) NOT NULL,
  PRIMARY KEY (`mat_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_materiaprima`
--

LOCK TABLES `mat_materiaprima` WRITE;
/*!40000 ALTER TABLE `mat_materiaprima` DISABLE KEYS */;
INSERT INTO `mat_materiaprima` VALUES (1,'Margarina',4,'Potes de margarina','Ativo'),(2,'Ovos',37,'Unidades de ovos Brancos','Ativo'),(3,'Farinha',38,'Kg de farinha Dona Benta','Ativo'),(4,'Leite',8,'Litros de leite','Ativo'),(5,'Sal',3,'Kilos de Sal','Ativo'),(6,'Fermento',3,'Potes de fermento','Ativo'),(7,'Frango',3,'Kg de frango','Ativo'),(8,'Carne moída',7,'kg de carne moída','Ativo'),(9,'Tempero',2,'kg de tempero','Ativo'),(10,'Açucar',7,'kg de açucar','Ativo');
/*!40000 ALTER TABLE `mat_materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pea_pedidoatrasado`
--

DROP TABLE IF EXISTS `pea_pedidoatrasado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pea_pedidoatrasado` (
  `pea_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pea_nomecliente` varchar(255) NOT NULL,
  `pea_contatocliente` varchar(255) NOT NULL,
  `pea_guid` varchar(255) NOT NULL,
  `pea_quantidadetotal` int(11) NOT NULL,
  `pea_valortotal` decimal(10,2) NOT NULL,
  `pea_status` varchar(255) NOT NULL,
  `pea_dataentrada` datetime NOT NULL,
  `pea_datapronto` datetime NOT NULL,
  `pea_dataprevista` datetime NOT NULL,
  `pea_qtddias` int(11) NOT NULL,
  PRIMARY KEY (`pea_codigo`),
  UNIQUE KEY `pea_codigo_UNIQUE` (`pea_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pea_pedidoatrasado`
--

LOCK TABLES `pea_pedidoatrasado` WRITE;
/*!40000 ALTER TABLE `pea_pedidoatrasado` DISABLE KEYS */;
INSERT INTO `pea_pedidoatrasado` VALUES (11,'Buffet XAZ','(12) 98123-2236','51ec8fa4-5ba6-411c-8935-70d76f2c3144',2300,525.00,'Atrasado','2017-11-24 15:43:23','2017-11-28 15:43:23','2017-11-27 00:00:00',1),(12,'Cliente Doméstico','(12) 91111-9999','302bb7b9-f7e9-4999-82e3-1246ff8ff631',300,65.00,'Atrasado','2017-11-15 15:45:10','2017-11-17 15:45:10','2017-11-16 00:00:00',1),(13,'Fatec Guaratinguetá','(12) 3333-3333','a6c6a068-32a0-464b-ace5-fb720994052d',1300,324.00,'Atrasado','2017-11-25 15:54:50','2017-11-27 15:54:50','2017-11-26 00:00:00',1),(14,'Hotel A','(12) 3642-1932','6f405e6b-9caa-4218-81da-74e3c104527f',1200,265.00,'Atrasado','2017-10-09 14:16:07','2017-10-12 14:16:07','2017-10-11 23:00:00',1),(15,'Hotel C','(12) 3642-1111','03fea6c7-2570-4b62-ba02-f79d66a141ef',4000,1000.00,'Atrasado','2017-10-09 14:16:53','2017-10-14 14:16:53','2017-10-12 23:00:00',2),(16,'Hotel C','(12) 3642-1111','839929de-17fd-4177-b242-060a575b40ea',7000,1600.00,'Atrasado','2017-10-09 14:17:25','2017-10-15 14:17:25','2017-10-14 23:00:00',1),(17,'Rodrigo','(12) 3642-1111','44ec4b92-14c9-48b3-8e02-b91bea5afdc6',400,90.00,'Atrasado','2017-10-15 14:18:34','2017-11-17 14:18:34','2017-10-19 23:00:00',2),(18,'Empresa XXX','(12) 3642-1111','7df1d7f5-343d-4565-bd7b-995118296379',550,125.00,'Atrasado','2017-10-15 14:22:25','2017-11-18 14:22:25','2017-10-19 23:00:00',1),(19,'Hotel A','(12) 3642-1111','f902e392-2463-46e8-88d0-3c6402badd1c',3000,600.00,'Atrasado','2017-10-17 14:22:41','2017-10-25 14:22:41','2017-10-23 23:00:00',2),(20,'Quiosque','(12) 3642-1111','1f03a41b-ce33-42a8-a017-34dc05ced8c1',1000,225.00,'Atrasado','2017-10-18 14:23:32','2017-10-24 14:23:32','2017-10-23 23:00:00',1),(21,'Hotel D','(12) 3642-1932','9e19dafd-316c-4c58-ac49-d991d0f24fd3',4000,900.00,'Atrasado','2017-10-27 21:40:41','2017-11-02 21:40:41','2017-11-01 23:00:00',1);
/*!40000 ALTER TABLE `pea_pedidoatrasado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ped_pedido`
--

DROP TABLE IF EXISTS `ped_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ped_pedido` (
  `ped_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ped_nomecliente` varchar(255) NOT NULL,
  `ped_contatocliente` varchar(255) NOT NULL,
  `ped_guid` varchar(255) NOT NULL,
  `ped_quantidadetotal` int(11) NOT NULL,
  `ped_valortotal` decimal(10,2) NOT NULL,
  `ped_status` varchar(255) NOT NULL,
  `ped_dataentrada` datetime NOT NULL,
  `ped_datapronto` datetime NOT NULL,
  `ped_dataprevista` datetime NOT NULL,
  `ped_qtddias` int(11) DEFAULT '0',
  PRIMARY KEY (`ped_codigo`,`ped_guid`),
  UNIQUE KEY `ped_codigo_UNIQUE` (`ped_codigo`),
  UNIQUE KEY `ped_guid_UNIQUE` (`ped_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ped_pedido`
--

LOCK TABLES `ped_pedido` WRITE;
/*!40000 ALTER TABLE `ped_pedido` DISABLE KEYS */;
INSERT INTO `ped_pedido` VALUES (39,'Quiosque','(12) 1212-1212','f2f16ca6-41f9-489a-a2a7-d6dec113a45b',700,178.50,'Pronto','2017-11-22 15:29:27','2017-11-25 15:29:27','2017-11-27 00:00:00',3),(40,'Quiosque','(12) 1212-1212','da3e60a4-1b00-4e04-9a2a-ccdeec2494f0',300,78.00,'Pronto','2017-11-23 15:31:13','2017-11-25 15:31:13','2017-11-30 00:00:00',2),(41,'Hotel A','(12) 3642-11111','594d400e-f021-4193-90b9-03294e6e1767',1600,402.00,'Pronto','2017-11-24 15:32:50','2017-11-27 15:32:50','2017-12-01 00:00:00',3),(42,'Hotel A','(12) 3642-1111','727d072d-7f05-42fd-b1c6-ae22aafca530',700,168.00,'Cancelado','2017-11-22 15:33:45','2017-11-25 15:33:45','2017-11-27 00:00:00',3),(43,'Hotel B','(12) 3105-2323','7ef66fca-bb3b-4e96-9d54-beaab569e5cf',1230,315.00,'Pronto','2017-11-23 15:41:11','2017-11-27 15:41:11','2017-11-29 00:00:00',4),(44,'Buffet XAZ','(12) 98123-2236','51ec8fa4-5ba6-411c-8935-70d76f2c3144',2300,525.00,'Pronto','2017-11-24 15:43:23','2017-11-28 15:43:23','2017-11-27 00:00:00',4),(45,'Cliente Doméstico','(12) 91111-9999','302bb7b9-f7e9-4999-82e3-1246ff8ff631',300,65.00,'Cancelado','2017-11-15 15:45:10','2017-11-17 15:45:10','2017-11-16 00:00:00',2),(46,'Lanchonete tal','(12) 1232-1232','6404cbd5-cf2d-4110-aa36-674a8c20c14d',620,142.00,'Pronto','2017-11-22 15:48:31','2017-11-25 15:48:31','2017-11-27 00:00:00',3),(50,'Quiosque','(12) 1212-1212','e9fd1266-5419-4cc5-b51c-1964bb6d2b95',50,15.00,'Cancelado','2017-11-24 15:52:43','2017-11-25 15:52:43','2017-12-01 00:00:00',1),(51,'Fatec Guaratinguetá','(12) 3333-3333','a6c6a068-32a0-464b-ace5-fb720994052d',1300,324.00,'Cancelado','2017-11-25 15:54:50','2017-11-27 15:54:50','2017-11-26 00:00:00',2),(52,'Fatec Guaratinguetá','(12) 3333-3333','ad778873-fd5f-43ff-9aff-8163191f1114',500,125.00,'Pronto','2017-11-22 16:04:55','2017-11-26 16:04:55','2017-11-28 00:00:00',4),(53,'Hotel C','(12) 3642-1111','e75d1233-8511-4ff4-85ab-f6ad21d11cb8',300,75.00,'Pronto','2017-10-25 16:05:19','2017-10-28 16:05:19','2017-11-03 00:00:00',3),(54,'Hotel A','(12) 1212-1212','86ff5c52-7002-427a-9474-41d51517bfa4',400,80.00,'Pronto','2017-10-27 16:05:41','2017-10-31 16:05:41','2017-11-04 00:00:00',4),(55,'Hotel A','(12) 1212-1212','ece481ff-c1a7-49dd-b1d0-5dd86dc63b56',730,161.00,'Pronto','2017-10-01 14:11:21','2017-10-04 14:11:21','2017-10-05 23:00:00',3),(56,'Buffet XAZ','(12) 3642-1111','4250f551-0b1b-4cd5-acab-5f6c69240067',800,160.00,'Pronto','2017-10-03 14:11:44','2017-10-07 14:11:44','2017-10-07 23:00:00',4),(57,'Lanchonete tal','(12) 3642-1932','2835fd8a-57c8-4c7d-9783-b853f6f247dd',550,152.50,'Pronto','2017-10-03 14:12:09','2017-10-06 14:12:09','2017-10-09 23:00:00',3),(58,'Quiosque','(12) 3642-1111','df7dff7d-29cb-4410-bf99-1d8718562031',790,173.00,'Pronto','2017-10-04 14:12:52','2017-10-08 14:12:52','2017-10-11 23:00:00',4),(59,'Lanchonete tal','(12) 1212-1212','7cfc4a7a-e75a-4e0a-99e3-ad2467e22e37',300,60.00,'Cancelado','2017-10-07 14:14:14','2017-10-10 14:14:14','2017-10-12 23:00:00',3),(60,'Hotel C','(12) 3642-1932','746375c3-e1b5-4bc6-9b35-918420669929',200,70.00,'Pronto','2017-10-04 14:14:35','2017-10-06 14:14:35','2017-10-09 23:00:00',2),(61,'Hotel C','(12) 1212-1212','0449219c-aa8d-45c9-9ee3-6fb1f9d4cea0',300,99.00,'Pronto','2017-10-08 14:14:54','2017-10-11 14:14:54','2017-10-12 23:00:00',3),(62,'Cliente','(12) 3642-1111','b38c1f66-02a7-4417-b1e5-26e3c26e00f5',150,37.50,'Pronto','2017-10-08 14:15:19','2017-10-09 14:15:19','2017-10-10 23:00:00',1),(63,'Cliente Doméstico C','(12) 3642-1111','089b22e1-a580-4fdb-afd7-b8f940e385a8',120,30.00,'Cancelado','2017-10-08 14:15:40','2017-10-09 14:15:40','2017-10-10 23:00:00',1),(64,'Hotel A','(12) 3642-1932','6f405e6b-9caa-4218-81da-74e3c104527f',1200,265.00,'Pronto','2017-10-09 14:16:07','2017-10-12 14:16:07','2017-10-11 23:00:00',3),(65,'Buffet XAZ','(12) 3642-11111','43eb954c-6a7d-4047-8327-a82e02b7a9c3',800,180.00,'Pronto','2017-10-09 14:16:33','2017-10-11 14:16:33','2017-10-11 23:00:00',2),(66,'Hotel C','(12) 3642-1111','03fea6c7-2570-4b62-ba02-f79d66a141ef',4000,1000.00,'Pronto','2017-10-09 14:16:53','2017-10-14 14:16:53','2017-10-12 23:00:00',5),(67,'Hotel C','(12) 3642-1111','839929de-17fd-4177-b242-060a575b40ea',7000,1600.00,'Pronto','2017-10-09 14:17:25','2017-10-15 14:17:25','2017-10-14 23:00:00',6),(68,'Buffet ZYZ','(12) 1212-1212','3b685f21-6459-4d3c-ada5-0515dc349a0c',1200,270.00,'Pronto','2017-10-13 14:18:03','2017-10-15 14:18:03','2017-10-15 23:00:00',2),(69,'Rodrigo','(12) 3642-1111','44ec4b92-14c9-48b3-8e02-b91bea5afdc6',400,90.00,'Cancelado','2017-10-15 14:18:34','2017-11-17 14:18:34','2017-10-19 23:00:00',2),(70,'Cliente Doméstico A','(12) 1212-1212','9600b279-0818-4254-90a9-915e31828605',150,37.50,'Cancelado','2017-10-05 14:18:53','2017-10-07 14:18:53','2017-10-11 23:00:00',2),(71,'Quiosque','(12) 3642-1932','e31a4a89-c5f0-4bfc-a3a6-1a9f5b31f5db',900,202.50,'Pronto','2017-10-08 14:19:41','2017-10-12 14:19:41','2017-10-13 23:00:00',4),(72,'Quiosque','(12) 3642-1111','7d5bae45-b4d0-4fac-b261-467c35acfe74',900,202.50,'Pronto','2017-10-15 14:20:06','2017-10-18 14:20:06','2017-10-19 23:00:00',3),(73,'Hotel A','(12) 3642-1111','cfba5b7a-98cf-4a5d-a0a2-740fe850e071',6000,1350.00,'Pronto','2017-10-13 14:20:33','2017-10-19 14:20:33','2017-10-20 23:00:00',6),(74,'Hotel C','(12) 3642-1932','f8bf9a2e-43f3-4a53-8531-55ba3fdd9257',9000,2050.00,'Pronto','2017-10-01 15:21:03','2017-10-06 14:21:03','2017-10-06 23:00:00',5),(75,'Pousada','(12) 3642-1111','d077a43d-f7de-40ee-b9e3-42dafc8d9458',4000,900.00,'Pronto','2017-10-03 14:21:30','2017-10-08 14:21:30','2017-10-08 23:00:00',5),(76,'Igreja','(12) 3642-1111','ebdbe3a0-da4f-47e2-9471-87414bef8b1a',1500,340.00,'Pronto','2017-10-05 14:21:57','2017-10-09 14:21:57','2017-10-12 23:00:00',4),(77,'Empresa XXX','(12) 3642-1111','7df1d7f5-343d-4565-bd7b-995118296379',550,125.00,'Pronto','2017-10-15 14:22:25','2017-11-18 14:22:25','2017-10-19 23:00:00',5),(78,'Hotel A','(12) 3642-1111','f902e392-2463-46e8-88d0-3c6402badd1c',3000,600.00,'Pronto','2017-10-17 14:22:41','2017-10-25 14:22:41','2017-10-23 23:00:00',5),(79,'Hotel A','(12) 3642-1932','8934577b-dcbe-442f-b7c9-686e735e701c',3000,650.00,'Pronto','2017-10-22 14:23:12','2017-10-26 14:23:12','2017-10-26 23:00:00',5),(80,'Quiosque','(12) 3642-1111','1f03a41b-ce33-42a8-a017-34dc05ced8c1',1000,225.00,'Pronto','2017-10-18 14:23:32','2017-10-24 14:23:32','2017-10-23 23:00:00',6),(81,'Quiosque','(12) 3642-1111','04c5bc2d-8cba-42fb-a6c6-ea2032c26261',400,80.00,'Pronto','2017-10-22 14:24:03','2017-10-24 14:24:03','2017-10-28 23:00:00',2),(82,'Hotel A','(12) 1212-1212','8d140afd-bd2f-4a76-ba0c-735a05493de7',6000,1350.00,'Pronto','2017-10-22 14:33:40','2017-10-28 14:33:40','2017-10-28 23:00:00',6),(83,'Quiosque','(12) 3642-1111','8f700f97-6c12-42a0-a35a-821264330c1a',900,200.00,'Pronto','2017-10-23 14:34:01','2017-10-26 14:34:01','2017-10-26 23:00:00',3),(84,'Buffet XAZ','(12) 3642-1932','5b796152-c776-4e2d-a361-e7df1f074042',1500,335.00,'Pronto','2017-10-22 14:34:24','2017-10-25 14:34:24','2017-10-29 23:00:00',3),(85,'Lanchonete tal','(12) 3642-1111','7ecfd04a-1dc3-4578-b255-577f423bed19',950,212.50,'Pronto','2017-10-24 14:34:59','2017-10-27 14:34:59','2017-10-30 23:00:00',3),(86,'Hotel A','(12) 3642-1111','3247cee5-67f3-46df-ac30-65e112536132',850,195.00,'Pronto','2017-10-24 21:00:06','2017-10-27 21:00:06','2017-10-31 23:00:00',3),(87,'Hotel C','(12) 3642-1111','caa1ac90-c336-4ffb-9930-d51bab962c42',1250,272.50,'Pronto','2017-10-24 21:22:44','2017-10-27 21:22:44','2017-10-30 23:00:00',3),(88,'Lanchonete tal','(12) 1212-1212','287f2a29-1e56-4c11-9931-1ea368857c29',700,185.00,'Cancelado','2017-10-25 21:24:34','2017-10-29 21:24:34','2017-11-01 23:00:00',4),(89,'Hotel C','(12) 1212-1212','6e31e26a-0b39-40cc-8a9d-1798e5366b9a',2500,550.00,'Pronto','2017-10-25 21:32:22','2017-10-30 21:32:22','2017-11-02 23:00:00',5),(90,'Hotel C','(12) 3642-1932','dd42a864-ccc2-4fa7-b13a-2b591f6b2585',1600,365.00,'Pronto','2017-10-27 21:37:03','2017-11-01 21:37:03','2017-11-03 23:00:00',5),(91,'Buffet XAZ','(12) 3642-11111','27d8fc21-b1fa-40d2-94fa-6b8381ad890c',1400,315.00,'Pronto','2017-10-27 21:38:21','2017-11-01 21:38:21','2017-11-04 23:00:00',5),(92,'Hotel D','(12) 3642-1932','9e19dafd-316c-4c58-ac49-d991d0f24fd3',4000,900.00,'Pronto','2017-10-27 21:40:41','2017-11-02 21:40:41','2017-11-01 23:00:00',6),(93,'Hotel C','(12) 1212-1212','f444de0f-3eea-4ea3-b3ce-5f09f9992c22',800,175.00,'Pronto','2017-10-28 21:50:04','2017-11-01 21:50:04','2017-11-04 23:00:00',4),(94,'Lanchonete tal','(12) 3642-11111','02bb1305-2c92-496e-9152-4d73f5d55a5c',400,90.00,'Cancelado','2017-10-28 23:00:33','2017-10-31 23:00:33','2017-11-07 23:00:00',3);
/*!40000 ALTER TABLE `ped_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_perdas`
--

DROP TABLE IF EXISTS `per_perdas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_perdas` (
  `per_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `per_produto` varchar(255) NOT NULL,
  `per_quantidade` int(11) NOT NULL,
  `per_data` datetime NOT NULL,
  `per_pedcodigo` varchar(255) NOT NULL,
  `per_motivo` varchar(255) DEFAULT 'XXX',
  PRIMARY KEY (`per_codigo`),
  UNIQUE KEY `per_codigo_UNIQUE` (`per_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_perdas`
--

LOCK TABLES `per_perdas` WRITE;
/*!40000 ALTER TABLE `per_perdas` DISABLE KEYS */;
INSERT INTO `per_perdas` VALUES (8,'Bolinha de Queijo',10,'2017-11-25 00:00:00','7ef66fca-bb3b-4e96-9d54-beaab569e5cf','Rachados no resfriamento'),(9,'Coxinha',10,'2017-11-27 00:00:00','7ef66fca-bb3b-4e96-9d54-beaab569e5cf','Massa não cresceu'),(10,'Cigarrete',5,'2017-11-27 00:00:00','6404cbd5-cf2d-4110-aa36-674a8c20c14d','Queimou no forno'),(11,'Coxinha',5,'2017-11-27 00:00:00','9600b279-0818-4254-90a9-915e31828605','Queimou no forno'),(12,'Coxinha',30,'2017-11-27 00:00:00','d077a43d-f7de-40ee-b9e3-42dafc8d9458','Queimou no forno'),(13,'Bolinha de Queijo',210,'2017-11-27 00:00:00','8d140afd-bd2f-4a76-ba0c-735a05493de7','Imperícia do trabalhador, bandeja caiu no chão'),(14,'Coxinha',63,'2017-11-27 00:00:00','8d140afd-bd2f-4a76-ba0c-735a05493de7','Falha na cortadeira'),(15,'Bolinha de Queijo',15,'2017-11-27 00:00:00','5b796152-c776-4e2d-a361-e7df1f074042','Grudou no forno'),(16,'Coxinha',12,'2017-11-27 00:00:00','5b796152-c776-4e2d-a361-e7df1f074042','Queimou no forno'),(17,'Bolinha de queijo',43,'2017-11-27 00:00:00','6e31e26a-0b39-40cc-8a9d-1798e5366b9a','Rachou no congelamento'),(18,'Coxinha',22,'2017-11-27 00:00:00','6e31e26a-0b39-40cc-8a9d-1798e5366b9a','Rachou no congelamento');
/*!40000 ALTER TABLE `per_perdas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_produto`
--

DROP TABLE IF EXISTS `pro_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_produto` (
  `pro_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nome` varchar(255) NOT NULL,
  `pro_quantidade` int(11) NOT NULL,
  `pro_valorcento` decimal(10,2) NOT NULL,
  `pro_descricao` varchar(255) NOT NULL,
  `pro_status` varchar(255) NOT NULL,
  PRIMARY KEY (`pro_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_produto`
--

LOCK TABLES `pro_produto` WRITE;
/*!40000 ALTER TABLE `pro_produto` DISABLE KEYS */;
INSERT INTO `pro_produto` VALUES (1,'Coxinha',100,25.00,'Frango','Ativo'),(2,'Bolinha de Queijo',100,20.00,'Queijo','Ativo'),(3,'Kibe',100,33.00,'Carne','Ativo'),(4,'Risoles de Carne',100,32.00,'Carne','Ativo'),(5,'Risoles de Frango',100,28.00,'Frango','Ativo'),(6,'Empada de Frango',100,35.00,'Frango','Ativo'),(7,'Cigarrete',100,35.00,'Presunto e Queijo','Ativo'),(8,'Produto de Teste',10,30.00,'Produto para teste','Ativo'),(9,'Produto de Teste 2',100,50.00,'Produto para teste2','Inativo'),(10,'Produto de Teste 3',100,55.00,'Produto para teste3','Inativo');
/*!40000 ALTER TABLE `pro_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sai_saidamateria`
--

DROP TABLE IF EXISTS `sai_saidamateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sai_saidamateria` (
  `sai_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `sai_materia` varchar(255) NOT NULL,
  `sai_quantidade` int(11) NOT NULL,
  `sai_data` datetime NOT NULL,
  `sai_funcionario` varchar(255) NOT NULL,
  PRIMARY KEY (`sai_codigo`),
  UNIQUE KEY `sai_codigo_UNIQUE` (`sai_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sai_saidamateria`
--

LOCK TABLES `sai_saidamateria` WRITE;
/*!40000 ALTER TABLE `sai_saidamateria` DISABLE KEYS */;
INSERT INTO `sai_saidamateria` VALUES (10,'Açucar',-1,'2017-11-27 03:15:33','Rafaela'),(11,'Frango',-1,'2017-11-27 03:22:25','Rafaela'),(12,'Frango',-1,'2017-11-27 03:22:30','Rafaela'),(13,'Ovos',-4,'2017-11-27 03:22:33','Rafaela'),(14,'Ovos',-10,'2017-11-27 03:22:39','Rafaela'),(15,'Carne moída',-3,'2017-11-27 03:22:43','Rafaela'),(16,'Leite',-4,'2017-11-27 03:22:47','Rafaela'),(17,'Açucar',-2,'2017-11-27 03:22:52','Rafaela'),(18,'Farinha',-2,'2017-11-27 03:23:08','Rafaela'),(19,'Ovos',-5,'2017-11-27 03:23:14','Rafaela'),(20,'Ovos',-4,'2017-11-27 03:23:31','Rafaela');
/*!40000 ALTER TABLE `sai_saidamateria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 11:12:06
