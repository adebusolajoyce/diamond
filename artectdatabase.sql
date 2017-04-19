-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for artect
CREATE DATABASE IF NOT EXISTS `artect` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `artect`;

-- Dumping structure for table artect.artect_users
CREATE TABLE IF NOT EXISTS `artect_users` (
  `artect_users_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `user_modified` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(50) NOT NULL,
  PRIMARY KEY (`artect_users_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table artect.artect_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `artect_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `artect_users` ENABLE KEYS */;

-- Dumping structure for table artect.blueprint_cart
CREATE TABLE IF NOT EXISTS `blueprint_cart` (
  `blueprint_cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blueprint_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table artect.blueprint_cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `blueprint_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `blueprint_cart` ENABLE KEYS */;

-- Dumping structure for table artect.blue_print
CREATE TABLE IF NOT EXISTS `blue_print` (
  `blue_print_id` int(11) NOT NULL AUTO_INCREMENT,
  `blueprint_cart_id` int(11) NOT NULL DEFAULT '0',
  `artect_users_id` int(11) NOT NULL DEFAULT '0',
  `log_id` int(11) NOT NULL DEFAULT '0',
  `blueprint_type` varchar(50) NOT NULL DEFAULT '0',
  `blueprint_name` varchar(50) NOT NULL DEFAULT '0',
  `location` varchar(50) NOT NULL DEFAULT '0',
  `number_of_download` varchar(50) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blue_print_id`),
  KEY `user_id` (`artect_users_id`),
  KEY `blueprint_cart_id` (`blueprint_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table artect.blue_print: ~0 rows (approximately)
/*!40000 ALTER TABLE `blue_print` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_print` ENABLE KEYS */;

-- Dumping structure for table artect.log_table
CREATE TABLE IF NOT EXISTS `log_table` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `blueprint_cart_id` int(11) NOT NULL DEFAULT '0',
  `logtype_id` int(11) NOT NULL DEFAULT '0',
  `artect_users_id` varchar(50) NOT NULL DEFAULT '0',
  `log_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `blueprint_cart_id` (`blueprint_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table artect.log_table: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_table` ENABLE KEYS */;

-- Dumping structure for table artect.log_type
CREATE TABLE IF NOT EXISTS `log_type` (
  `logtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_activity` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table artect.log_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_type` ENABLE KEYS */;

-- Dumping structure for table artect.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_cart` varchar(50) NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table artect.permission: ~0 rows (approximately)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
