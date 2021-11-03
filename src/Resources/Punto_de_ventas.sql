-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.2.7-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla punto_de_ventas.tclientes
CREATE TABLE IF NOT EXISTS `tclientes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nid` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Credito` tinyint(4) DEFAULT NULL,
  `Imagen` longblob DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla punto_de_ventas.tclientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclientes` ENABLE KEYS */;

-- Volcando estructura para tabla punto_de_ventas.treportes_clientes
CREATE TABLE IF NOT EXISTS `treportes_clientes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DeudaActual` decimal(10,0) NOT NULL DEFAULT 0,
  `FechaDeuda` varchar(50) NOT NULL DEFAULT '0',
  `UltimoPago` decimal(10,0) NOT NULL DEFAULT 0,
  `FechaPago` varchar(50) NOT NULL DEFAULT '0',
  `Ticket` varchar(50) NOT NULL DEFAULT '0',
  `FechaLimite` varchar(50) NOT NULL DEFAULT '0',
  `IdCliente` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `FK_treportes_clientes_tclientes` (`IdCliente`),
  CONSTRAINT `FK_treportes_clientes_tclientes` FOREIGN KEY (`IdCliente`) REFERENCES `tclientes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla punto_de_ventas.treportes_clientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `treportes_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `treportes_clientes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
