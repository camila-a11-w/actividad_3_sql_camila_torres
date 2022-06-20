-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `phone_number` varchar(50) NOT NULL DEFAULT '',
  `premium` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.clients: ~4 rows (aproximadamente)
DELETE FROM `clients`;
INSERT INTO `clients` (`id`, `name`, `phone_number`, `premium`) VALUES
	(1, 'Alexander García', '3044448221', b'1'),
	(2, 'Lukas Mendoza', '3233750916', b'0'),
	(3, 'Juan Pablo Colorado', '3016037023', b'1'),
	(4, 'Daniel Villada ', '3007256619', b'1');

-- Volcando estructura para tabla tienda_deportiva_el_podio.payment method
DROP TABLE IF EXISTS `payment method`;
CREATE TABLE IF NOT EXISTS `payment method` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.payment method: ~3 rows (aproximadamente)
DELETE FROM `payment method`;
INSERT INTO `payment method` (`id`, `method`) VALUES
	(1, 'cheque'),
	(2, 'efectivo'),
	(3, 'tdc_amex');

-- Volcando estructura para tabla tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `product_measure` varchar(50) NOT NULL,
  `imported` bit(1) NOT NULL DEFAULT b'1',
  `value` float(12,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.products: ~2 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `product_measure`, `imported`, `value`) VALUES
	(1, 'camisa futbolera', 'XL', b'1', 50000.00),
	(2, 'sudadera', 'M', b'1', 30000.00),
	(3, 'gorra futbolera', 'L', b'0', 25000.00);

-- Volcando estructura para tabla tienda_deportiva_el_podio.purshases
DROP TABLE IF EXISTS `purshases`;
CREATE TABLE IF NOT EXISTS `purshases` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `product_id` smallint(5) unsigned NOT NULL,
  `method_id` smallint(5) unsigned NOT NULL,
  `client_id` smallint(5) unsigned NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el_podio.purshases: ~3 rows (aproximadamente)
DELETE FROM `purshases`;
INSERT INTO `purshases` (`id`, `date`, `product_id`, `method_id`, `client_id`, `value`) VALUES
	(1, '2000-02-17', 3, 2, 1, 25000),
	(2, '2022-06-13', 1, 3, 4, 50000),
	(3, '2012-06-13', 2, 1, 3, 30000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
