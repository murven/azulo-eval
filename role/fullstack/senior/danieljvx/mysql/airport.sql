USE azulo_airport;

DROP TABLE IF EXISTS `airport`;
DROP TABLE IF EXISTS `airport_operator`;
DROP TABLE IF EXISTS `airport_location`;

--
-- Table `airport_operator`
--

DROP TABLE IF EXISTS `airport_operator`;
CREATE TABLE `airport_operator` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table `airport_location`
--

DROP TABLE IF EXISTS `airport_location`;
CREATE TABLE `airport_location` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(100) DEFAULT NULL,
  `state` VARCHAR(100) DEFAULT NULL,
  `longitude` DECIMAL(11,7) DEFAULT NULL,
  `latitude` DECIMAL(11,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table `airport`
--

DROP TABLE IF EXISTS `airport`;
CREATE TABLE `airport` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) DEFAULT NULL,
  `operator_id` INT(10) DEFAULT NULL,
  `code` VARCHAR(30) DEFAULT NULL,
  `location_id` INT(10) DEFAULT NULL,
  `priority_order` INT(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_airport_operator_idx` (`operator_id`),
  CONSTRAINT `fk_airport_operator_idx` FOREIGN KEY (`operator_id`) REFERENCES `airport_operator` (`id`),
  KEY `fk_airport_location_idx` (`location_id`),
  CONSTRAINT `fk_airport_location_idx` FOREIGN KEY (`location_id`) REFERENCES `airport_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data `airport_operator`
--

INSERT INTO `airport_operator`
VALUES (1,'Operadora Aeropuerto Internacional - OPAIN S.A.')
      ,(2,'Gobierno de Colombia')
      ,(3,'El Comando Aéreo de Transporte Militar')
      ,(4,'Unidad Administrativa Especial de Aeronáutica Civil')
      ,(5,'Grupo Aeroportuario Del Caribe S.A.S.')
      ,(6,'Aeropuertos de Oriente S.A.S.')
      ,(7,'AEROCALI S.A.')
      ,(8,'Instituto Aeropuerto Internacional de Maiquetía (IAIM)')
      ,(9,'Instituto Autónomo de Aeropuertos del Estado Carabobo (IAAEC)');

--
-- Data `airport_location`
--

INSERT INTO `airport_location`
VALUES (1,'Colombia','Bogotá', 4.70195733,-74.14632833)
      ,(2,'Colombia','Armenia', 4.45280777, -75.76783433)
      ,(3,'Colombia','Barranquilla', 10.8885666, -74.7817666)
      ,(4,'Colombia','Bucaramanga', 7.1263888, -73.1847222)
      ,(5,'Colombia','Cali', 3.5430555, -76.3813888)
      ,(6,'Colombia','Cúcuta', 7.9271799, -72.5081766)
      ,(7,'Venezuela','Caracas', -66.9905853, -10.6031177)
      ,(8,'Venezuela','Valencia', 10.1540601, -67.9224074);

--
-- Data `airport`
--

INSERT INTO `airport` VALUES (1,'Aeropuerto Internacional El Dorado',1,'BOG',1,1);
INSERT INTO `airport` VALUES (2,'Aeropuerto Guaymaral',2,'GAA',1,2);
INSERT INTO `airport` VALUES (3,'Aeropuerto Militar CATAM',3,'CATAM',1,3);
INSERT INTO `airport` VALUES (4,'Aeropuerto Internacional El Edén',4,'AXM',2,4);
INSERT INTO `airport` VALUES (5,'Aeropuerto Internacional Ernesto Cortissoz',5,'BAQ',3,5);
INSERT INTO `airport` VALUES (6,'Aeropuerto Internacional Palonegro',6,'BGA',4,6);
INSERT INTO `airport` VALUES (7,'Aeropuerto Internacional Alfonso Bonilla Aragón',7,'CLO',5,7);
INSERT INTO `airport` VALUES (8,'Aeropuerto Internacional Camilo Daza',6,'CUC',6,8);
INSERT INTO `airport` VALUES (9,'Aeropuerto Internacional Simón Bolívar de Maiqutía',8,'CCS',7,9);
INSERT INTO `airport` VALUES (10,'Aeropuerto Internacional Arturo Michelena',9,'VLN',8,10);