-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bdsistemabancario
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(40) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'admin','admin'),(2,'admin1','admin1');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `DNI` varchar(8) NOT NULL,
  `idProvincia` int(11) NOT NULL,
  `idLocalidad` int(11) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `CUIL` varchar(11) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `nacionalidad` varchar(40) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE KEY `CUIL` (`CUIL`),
  UNIQUE KEY `usuario` (`usuario`),
  KEY `idProvincia` (`idProvincia`,`idLocalidad`),
  KEY `idGenero` (`idGenero`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idProvincia`, `idLocalidad`) REFERENCES `localidades` (`idProvincia`, `id`),
  CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('00000000',1,1,1,'00000000000','','','','1000-10-10','','','','','',1),('30123456',1,1,1,'20301234561','Perez','Juan','Argentina','1985-03-15','Av. Libertador 1234','juan.perez@mail.com','1123456789','jperez','pass123',1),('30123457',5,14,2,'20301234571','Torres','Lucia','Argentina','1988-02-14','Belgrano 987','lucia.torres@mail.com','1188889999','ltorres','torres456',1),('30123458',10,28,3,'20301234581','Ruiz','Fernando','Argentina','1976-10-08','Av. Roca 321','fernando.ruiz@mail.com','1123232323','fruiz','ruizpass',1),('30234567',1,2,2,'27302345672','Gomez','Maria','Argentina','1990-07-22','Calle Falsa 123','maria.gomez@mail.com','1122334455','mgomez','pass456',1),('30234568',6,16,1,'20302345682','Fernandez','Jorge','Argentina','1994-01-20','Córdoba 555','jorge.fernandez@mail.com','1132123435','jfernandez','ferna987',0),('30234569',10,29,1,'27302345692','Ponce','Carla','Argentina','1997-06-11','Alsina 876','carla.ponce@mail.com','1134343434','cponce','ponce456',1),('30345678',2,4,1,'20303456783','Sosa','Carlos','Argentina','1982-11-30','Calle 1 234','carlos.sosa@mail.com','1198765432','csosa','sosa123',1),('30345679',6,17,2,'27303456793','Hernández','Valeria','Argentina','1991-11-25','Las Flores 555','valeria.hernandez@mail.com','1150987654','vhernandez','hernand456',1),('30456780',7,19,3,'20304567804','Castro','Ricardo','Argentina','1979-03-05','Alberdi 888','ricardo.castro@mail.com','1176543210','rcastro','castro789',1),('30456789',2,5,2,'27304567894','Ramirez','Ana','Argentina','1995-05-12','Av. Siempre Viva 456','ana.ramirez@mail.com','1145678910','aramirez','ramirez2021',1),('30567890',3,7,3,'20305678905','Lopez','Santiago','Argentina','1978-10-10','Las Heras 789','santiago.lopez@mail.com','1133334444','slopez','lopez567',0),('30567891',7,20,1,'20305678915','Vega','Patricia','Argentina','1983-04-17','Sucre 444','patricia.vega@mail.com','1198765432','pvega','vega123',0),('30678901',3,8,1,'20306789016','Molina','Laura','Argentina','1987-09-09','Rivadavia 1111','laura.molina@mail.com','1155556666','lmolina','molina789',1),('30678902',8,22,2,'27306789026','Rojas','Esteban','Argentina','1996-12-30','Italia 121','esteban.rojas@mail.com','1121223344','erojas','rojas567',1),('30789012',4,10,2,'27307890127','Diaz','Martin','Argentina','1992-08-23','San Martín 123','martin.diaz@mail.com','1144447777','mdiaz','diaz890',1),('30789013',8,23,3,'20307890137','Silva','Daniela','Argentina','1980-01-12','Uruguay 432','daniela.silva@mail.com','1145432100','dsilva','silva123',1),('30890123',4,11,3,'20308901238','Gutiérrez','Sofia','Argentina','1989-12-11','Mitre 321','sofia.gutierrez@mail.com','1122223333','sgutierrez','guti123',1),('30890124',9,25,1,'27308901248','Ortiz','Alberto','Argentina','1974-07-03','Av. Cabildo 234','alberto.ortiz@mail.com','1167890123','aortiz','ortiz456',1),('30901234',5,13,1,'27309012349','Alvarez','Pablo','Argentina','1975-06-18','Av. Colón 789','pablo.alvarez@mail.com','1166665555','palvarez','alvarez789',0),('30901235',9,26,2,'20309012359','Medina','Lorena','Argentina','1982-05-29','Moreno 987','lorena.medina@mail.com','1187654321','lmedina','medina789',0);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas` (
  `numeroDeCuenta` varchar(9) NOT NULL,
  `idTipoCuenta` int(11) NOT NULL,
  `dniCliente` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `CBU` varchar(22) NOT NULL,
  `saldo` decimal(65,2) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`numeroDeCuenta`),
  UNIQUE KEY `CBU` (`CBU`),
  KEY `idTipoCuenta` (`idTipoCuenta`),
  KEY `dniCliente` (`dniCliente`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`idTipoCuenta`) REFERENCES `tiposcuentas` (`id`),
  CONSTRAINT `cuentas_ibfk_2` FOREIGN KEY (`dniCliente`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES ('0000',3,'00000000','1000-10-10','0000000000000000000000',0.00,1),('1001',2,'30123456','2023-01-10','2850590940090418135201',10000.50,1),('1002',2,'30234567','2022-05-15','2850590940090418135202',25000.00,1),('1003',1,'30345678','2023-07-01','2850590940090418135203',1500.75,1),('1004',2,'30456789','2022-10-20','2850590940090418135204',12500.00,1),('1005',1,'30567890','2023-02-14','2850590940090418135205',500.00,1),('1006',2,'30678901','2021-12-25','2850590940090418135206',8700.30,1),('1007',1,'30789012','2022-08-12','2850590940090418135207',12000.00,1),('1008',2,'30890123','2023-06-05','2850590940090418135208',4500.60,1),('1009',1,'30901234','2022-03-11','2850590940090418135209',35000.25,1),('1010',2,'30123457','2021-07-19','2850590940090418135210',9800.00,1),('1011',1,'30234568','2022-04-04','2850590940090418135211',2000.50,1),('1012',2,'30345679','2023-11-28','2850590940090418135212',7800.80,1),('1013',1,'30456780','2023-09-15','2850590940090418135213',25000.40,1),('1014',2,'30567891','2021-05-25','2850590940090418135214',14500.00,1),('1015',1,'30678902','2022-12-01','2850590940090418135215',6300.75,1),('1016',2,'30789013','2023-10-02','2850590940090418135216',9999.99,1),('1017',1,'30890124','2023-08-20','2850590940090418135217',400.00,1),('1018',2,'30901235','2021-11-16','2850590940090418135218',8700.30,1),('1019',1,'30123458','2022-06-23','2850590940090418135219',12000.50,1),('1020',2,'30234569','2023-03-08','2850590940090418135220',5600.00,1);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Hombre'),(2,'Mujer'),(3,'Otro');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProvincia` int(11) NOT NULL,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProvincia` (`idProvincia`),
  CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,1,'La Plata'),(2,1,'Mar del Plata'),(3,1,'Bahía Blanca'),(4,2,'San Fernando del Valle de Catamarca'),(5,2,'Belén'),(6,2,'Tinogasta'),(7,3,'Resistencia'),(8,3,'Roque Sáenz Peña'),(9,3,'Villa Ángela'),(10,4,'Rawson'),(11,4,'Trelew'),(12,4,'Puerto Madryn'),(13,5,'Córdoba'),(14,5,'Villa Carlos Paz'),(15,5,'Río Cuarto'),(16,6,'Corrientes'),(17,6,'Goya'),(18,6,'Paso de los Libres'),(19,7,'Paraná'),(20,7,'Concordia'),(21,7,'Gualeguaychú'),(22,8,'Formosa'),(23,8,'Clorinda'),(24,8,'Pirané'),(25,9,'San Salvador de Jujuy'),(26,9,'Palpalá'),(27,9,'Perico'),(28,10,'Santa Rosa'),(29,10,'General Pico'),(30,10,'Toay'),(31,11,'La Rioja'),(32,11,'Chilecito'),(33,11,'Aimogasta'),(34,12,'Mendoza'),(35,12,'San Rafael'),(36,12,'Godoy Cruz'),(37,13,'Posadas'),(38,13,'Oberá'),(39,13,'Eldorado'),(40,14,'Neuquén'),(41,14,'San Martín de los Andes'),(42,14,'Zapala'),(43,15,'Viedma'),(44,15,'San Carlos de Bariloche'),(45,15,'General Roca'),(46,16,'Salta'),(47,16,'Orán'),(48,16,'Tartagal'),(49,17,'San Juan'),(50,17,'Rivadavia'),(51,17,'Rawson'),(52,18,'San Luis'),(53,18,'Villa Mercedes'),(54,18,'Merlo'),(55,19,'Río Gallegos'),(56,19,'Caleta Olivia'),(57,19,'El Calafate'),(58,20,'Santa Fe'),(59,20,'Rosario'),(60,20,'Rafaela'),(61,21,'Santiago del Estero'),(62,21,'La Banda'),(63,21,'Añatuya'),(64,22,'Ushuaia'),(65,22,'Río Grande'),(66,22,'Tolhuin'),(67,23,'San Miguel de Tucumán'),(68,23,'Tafí Viejo'),(69,23,'Concepción'),(70,24,'Palermo'),(71,24,'Recoleta'),(72,24,'Belgrano');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTipoMovimiento` int(11) NOT NULL,
  `numeroCuenta` varchar(9) NOT NULL,
  `destinoCBU` varchar(22) NOT NULL,
  `fecha` date NOT NULL,
  `detalle` varchar(200) NOT NULL,
  `importe` decimal(65,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoMovimiento` (`idTipoMovimiento`),
  KEY `numeroCuenta` (`numeroCuenta`),
  KEY `destinoCBU` (`destinoCBU`),
  CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`idTipoMovimiento`) REFERENCES `tiposmovimientos` (`id`),
  CONSTRAINT `movimientos_ibfk_2` FOREIGN KEY (`numeroCuenta`) REFERENCES `cuentas` (`numeroDeCuenta`),
  CONSTRAINT `movimientos_ibfk_3` FOREIGN KEY (`destinoCBU`) REFERENCES `cuentas` (`CBU`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (1,1,'0000','2850590940090418135201','2023-01-10','Alta de cuenta',10000.00),(2,1,'0000','2850590940090418135202','2022-05-15','Alta de cuenta',10000.00),(3,1,'0000','2850590940090418135203','2023-07-01','Alta de cuenta',10000.00),(4,1,'0000','2850590940090418135204','2022-10-20','Alta de cuenta',10000.00),(5,1,'0000','2850590940090418135205','2023-02-14','Alta de cuenta',10000.00),(6,1,'0000','2850590940090418135206','2021-12-25','Alta de cuenta',10000.00),(7,1,'0000','2850590940090418135207','2022-08-12','Alta de cuenta',10000.00),(8,1,'0000','2850590940090418135208','2023-06-05','Alta de cuenta',10000.00),(9,1,'0000','2850590940090418135209','2022-03-11','Alta de cuenta',10000.00),(10,1,'0000','2850590940090418135210','2021-07-19','Alta de cuenta',10000.00),(11,1,'0000','2850590940090418135211','2022-04-04','Alta de cuenta',10000.00),(12,1,'0000','2850590940090418135212','2023-11-28','Alta de cuenta',10000.00),(13,1,'0000','2850590940090418135213','2023-09-15','Alta de cuenta',10000.00),(14,1,'0000','2850590940090418135214','2021-05-25','Alta de cuenta',10000.00),(15,1,'0000','2850590940090418135215','2022-12-01','Alta de cuenta',10000.00),(16,1,'0000','2850590940090418135216','2023-10-02','Alta de cuenta',10000.00),(17,1,'0000','2850590940090418135217','2023-08-20','Alta de cuenta',10000.00),(18,1,'0000','2850590940090418135218','2021-11-16','Alta de cuenta',10000.00),(19,1,'0000','2850590940090418135219','2022-06-23','Alta de cuenta',10000.00),(20,1,'0000','2850590940090418135220','2023-03-08','Alta de cuenta',10000.00),(21,4,'1001','2850590940090418135202','2023-01-11','Transferencia a cuenta 000001002',-1500.00),(22,4,'1002','2850590940090418135203','2022-05-16','Transferencia a cuenta 000001003',-2000.00),(23,4,'1003','2850590940090418135204','2023-07-02','Transferencia a cuenta 000001004',-300.00),(24,4,'1004','2850590940090418135205','2022-10-21','Transferencia a cuenta 000001005',-400.00),(25,4,'1005','2850590940090418135206','2023-02-15','Transferencia a cuenta 000001006',-100.00),(26,4,'1006','2850590940090418135207','2021-12-26','Transferencia a cuenta 000001007',-500.00),(27,4,'1007','2850590940090418135208','2022-08-13','Transferencia a cuenta 000001008',-600.00),(28,4,'1008','2850590940090418135209','2023-06-06','Transferencia a cuenta 000001009',-700.00),(29,4,'1009','2850590940090418135210','2022-03-12','Transferencia a cuenta 000001010',-800.00),(30,4,'1010','2850590940090418135211','2021-07-20','Transferencia a cuenta 000001011',-900.00),(31,4,'1011','2850590940090418135212','2022-04-05','Transferencia a cuenta 000001012',-1000.00),(32,4,'1012','2850590940090418135213','2023-11-29','Transferencia a cuenta 000001013',-1100.00),(33,4,'1013','2850590940090418135214','2023-09-16','Transferencia a cuenta 000001014',-1200.00),(34,4,'1014','2850590940090418135215','2021-05-26','Transferencia a cuenta 000001015',-1300.00),(35,4,'1015','2850590940090418135216','2022-12-02','Transferencia a cuenta 000001016',-1400.00),(36,4,'1016','2850590940090418135217','2023-10-03','Transferencia a cuenta 000001017',-1500.00),(37,4,'1017','2850590940090418135218','2023-08-21','Transferencia a cuenta 000001018',-1600.00),(38,4,'1018','2850590940090418135219','2021-11-17','Transferencia a cuenta 000001019',-1700.00),(39,4,'1019','2850590940090418135220','2022-06-24','Transferencia a cuenta 000001020',-1800.00),(40,4,'1020','2850590940090418135201','2023-03-09','Transferencia a cuenta 000001001',-1900.00),(41,2,'0000','2850590940090418135201','2023-01-15','Alta de préstamo',7500.00),(42,2,'0000','2850590940090418135202','2022-06-10','Alta de préstamo',8000.00),(43,2,'0000','2850590940090418135203','2023-03-05','Alta de préstamo',5500.00),(44,2,'0000','2850590940090418135204','2023-08-20','Alta de préstamo',9000.00),(45,2,'0000','2850590940090418135205','2022-11-30','Alta de préstamo',6500.00),(46,3,'1001','0000000000000000000000','2023-02-12','Pago de cuota 1',-750.00),(47,3,'1001','0000000000000000000000','2023-03-10','Pago de cuota 2',-750.00);
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagosdecuotas`
--

DROP TABLE IF EXISTS `pagosdecuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagosdecuotas` (
  `idPrestamo` int(11) NOT NULL,
  `idMovimiento` int(11) NOT NULL,
  `numeroCuota` int(11) NOT NULL,
  PRIMARY KEY (`idPrestamo`,`idMovimiento`,`numeroCuota`),
  KEY `idMovimiento` (`idMovimiento`),
  CONSTRAINT `pagosdecuotas_ibfk_1` FOREIGN KEY (`idPrestamo`) REFERENCES `prestamos` (`id`),
  CONSTRAINT `pagosdecuotas_ibfk_2` FOREIGN KEY (`idMovimiento`) REFERENCES `movimientos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagosdecuotas`
--

LOCK TABLES `pagosdecuotas` WRITE;
/*!40000 ALTER TABLE `pagosdecuotas` DISABLE KEYS */;
INSERT INTO `pagosdecuotas` VALUES (1,46,1),(1,47,2);
/*!40000 ALTER TABLE `pagosdecuotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dniCliente` varchar(8) NOT NULL,
  `fechaDePedido` date NOT NULL,
  `importeFinal` decimal(65,2) NOT NULL,
  `importeOriginal` decimal(65,2) NOT NULL,
  `cantidadMeses` int(11) NOT NULL,
  `cantidadMesesRestantes` int(11) NOT NULL,
  `valorCuota` decimal(65,2) NOT NULL,
  `numeroCuentaDestino` varchar(9) NOT NULL,
  `estadoAutorizacion` tinyint(1) NOT NULL,
  `estadoPago` tinyint(1) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `dniCliente` (`dniCliente`),
  KEY `numeroCuentaDestino` (`numeroCuentaDestino`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`dniCliente`) REFERENCES `clientes` (`DNI`),
  CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`numeroCuentaDestino`) REFERENCES `cuentas` (`numeroDeCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,'30123456','2023-01-15',9000.00,7500.00,12,10,750.00,'1001',1,0,1),(2,'30123456','2023-01-15',9000.00,7500.00,6,6,750.00,'1001',1,0,1),(3,'30123456','2023-01-15',9000.00,7500.00,3,3,750.00,'1001',1,0,1),(4,'30234567','2022-06-10',9600.00,8000.00,12,12,800.00,'1002',1,0,1),(5,'30345678','2023-03-05',6600.00,5500.00,6,6,1100.00,'1003',1,0,1),(6,'30456789','2023-08-20',10800.00,9000.00,12,12,900.00,'1004',1,0,1),(7,'30567890','2022-11-30',7800.00,6500.00,6,6,1300.00,'1005',1,0,1);
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_estado_pago
BEFORE UPDATE ON prestamos
FOR EACH ROW
BEGIN
    -- Verifica si cantidadMesesRestantes llega a 0 y actualiza estadoPago
    IF NEW.cantidadMesesRestantes = 0 THEN
        SET NEW.estadoPago = TRUE;
    ELSE
        SET NEW.estadoPago = FALSE; 
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Buenos Aires'),(2,'Catamarca'),(3,'Chaco'),(4,'Chubut'),(5,'Córdoba'),(6,'Corrientes'),(7,'Entre Ríos'),(8,'Formosa'),(9,'Jujuy'),(10,'La Pampa'),(11,'La Rioja'),(12,'Mendoza'),(13,'Misiones'),(14,'Neuquén'),(15,'Río Negro'),(16,'Salta'),(17,'San Juan'),(18,'San Luis'),(19,'Santa Cruz'),(20,'Santa Fe'),(21,'Santiago del Estero'),(22,'Tierra del Fuego'),(23,'Tucumán'),(24,'Ciudad Autónoma de Buenos Aires');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposcuentas`
--

DROP TABLE IF EXISTS `tiposcuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposcuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposcuentas`
--

LOCK TABLES `tiposcuentas` WRITE;
/*!40000 ALTER TABLE `tiposcuentas` DISABLE KEYS */;
INSERT INTO `tiposcuentas` VALUES (1,'Cuenta de ahorro'),(2,'Cuenta corriente'),(3,'Cuenta administrador');
/*!40000 ALTER TABLE `tiposcuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposmovimientos`
--

DROP TABLE IF EXISTS `tiposmovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposmovimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposmovimientos`
--

LOCK TABLES `tiposmovimientos` WRITE;
/*!40000 ALTER TABLE `tiposmovimientos` DISABLE KEYS */;
INSERT INTO `tiposmovimientos` VALUES (1,'Alta de cuenta'),(2,'Alta de prestamo'),(3,'Pago de prestamo'),(4,'Transferencia');
/*!40000 ALTER TABLE `tiposmovimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26  0:07:49
