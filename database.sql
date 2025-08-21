-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.5.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sandbox
CREATE DATABASE IF NOT EXISTS `sandbox` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `sandbox`;

-- Dumping structure for table sandbox.app_profile_history
CREATE TABLE IF NOT EXISTS `app_profile_history` (
  `sid` bigint(20) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `app` varchar(32) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `picture` varchar(2048) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.app_profile_history: ~0 rows (approximately)

-- Dumping structure for table sandbox.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `account` int(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `balance` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`account`) USING BTREE,
  KEY `Owner` (`owner`) USING BTREE,
  KEY `Type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.bank_accounts: ~89 rows (approximately)
INSERT INTO `bank_accounts` (`account`, `type`, `owner`, `balance`, `name`) VALUES
	(100000, 'organization', 'government', 503333, 'San Andreas State Account'),
	(105694, 'organization', 'superperformance', 50000, 'Super Performance Account'),
	(114521, 'organization', 'autoexotics', 50000, 'Auto Exotics Account'),
	(129411, 'organization', 'taxicab', 10000, 'Downtown Cab Co. Account'),
	(143785, 'organization', 'casino', 100000, 'Diamond Casino & Resort Account'),
	(182954, 'organization', 'pizza_this', 10000, 'Pizza This Account'),
	(185395, 'organization', 'atomic', 50000, 'Atomic Mechanics Account'),
	(185637, 'personal', '2', 5000, '185637'),
	(193477, 'organization', 'cluckinbell', 10000, 'Cluckin\' Bell Account'),
	(231947, 'organization', 'pepega_pawn', 10000, 'Pepega Pawn Account'),
	(235548, 'organization', 'uwu', 10000, 'UwU Cafe Account'),
	(235602, 'organization', 'police-sast', 200000, 'SAST Account'),
	(238431, 'organization', 'realestate', 25000, 'Dynasty 8 Account'),
	(239009, 'organization', 'jewel', 10000, 'The Jeweled Dragon Account'),
	(240246, 'organization', 'rustynutz', 50000, 'Rusty Nutz Account'),
	(241417, 'organization', 'hayes', 50000, 'Hayes Autos Account'),
	(242293, 'organization', 'dgang', 11427, 'Lua Holdings LLC Account'),
	(242659, 'organization', 'ferrari_pawn', 0, 'Ferrari Pawn'),
	(279506, 'organization', 'tequila', 10000, 'Tequil-La-La Account'),
	(308894, 'organization', 'police-bcso', 200000, 'BCSO Account'),
	(318324, 'personal', '1', 2147333944, '318324'),
	(338977, 'organization', 'aztecas', 0, 'Aztecas'),
	(351819, 'organization', 'noircafe', 10000, 'Noir Cafe Account'),
	(364980, 'organization', 'sagma', 10000, 'Sagma Account'),
	(394920, 'organization', 'triad_boxing', 0, 'Triad Boxing'),
	(395758, 'organization', 'pdm', 25005, 'Premium Deluxe Motorsport Account'),
	(411076, 'organization', 'mosleys', 1, 'Mosleys Car Dealership'),
	(411653, 'organization', 'demonetti_storage', 10000, 'Demonetti Storage Account'),
	(423012, 'organization', 'vagos', 0, 'Vagos'),
	(428374, 'organization', 'bahama', 25000, 'Bahama Mamas Account'),
	(446433, 'organization', 'nines', 0, 'The 9\'s'),
	(465971, 'organization', 'weed', 5000, 'Smoke on the Water Account'),
	(468489, 'organization', 'odmc', 10000, 'Odins Disciples MC Account'),
	(470005, 'organization', 'triad', 5000, 'Triad Records Account'),
	(480796, 'organization', 'white', 0, 'White & Associates'),
	(484199, 'organization', 'prison', 500000, 'Department of Corrections Account'),
	(500068, 'organization', 'triad_holdings', 0, 'Triad Holdings LLC'),
	(538243, 'organization', 'pearls', 10000, 'Pearl\'s Account'),
	(541169, 'organization', 'ems', 328000, 'EMS Account'),
	(544169, 'organization', 'sushi', 0, 'Sushi Boutique'),
	(552976, 'organization', 'tow', 0, 'Towing Account'),
	(557086, 'organization', 'tirenutz', 50000, 'Tire Nutz Account'),
	(557693, 'organization', 'vangelico_grapeseed', 10000, 'Vangelico Grapeseed Jewelry Account'),
	(561850, 'organization', 'rustybrowns', 10000, 'Rusty Browns Account'),
	(565649, 'organization', 'bennys', 50000, 'Benny\'s Account'),
	(575156, 'organization', 'woods_saloon', 10000, 'Black Woods Saloon Account'),
	(576324, 'organization', 'ottos', 50000, 'Ottos Auto\'s Account'),
	(586619, 'organization', 'police-lspd', 200000, 'LSPD Account'),
	(608835, 'organization', 'securoserv', 50000, 'SecuroServ Account'),
	(623586, 'organization', 'bowling', 10000, 'Bobs Balls Account'),
	(649752, 'organization', 'redline', 50000, 'Redline Account'),
	(666018, 'organization', 'lasttrain', 10000, 'The Last Train Account'),
	(675295, 'organization', 'avast_arcade', 10000, 'Avast Arcade Account'),
	(701029, 'organization', 'sterling_construction', 0, 'Sterling Construction'),
	(702441, 'organization', 'lostmc', 10000, 'The Lost MC Account'),
	(705055, 'organization', 'digitalden', 10000, 'Digital Den Account'),
	(713111, 'organization', 'beanmachine', 10000, 'Bean Machine Account'),
	(713669, 'organization', 'saints', 10000, 'The Saints Account'),
	(716734, 'organization', 'doctors', 50000, 'St Fiacre Medical Account'),
	(716750, 'organization', 'blackdragons', 0, 'Black Dragons'),
	(718042, 'organization', 'burgershot', 10000, 'Burger Shot Account'),
	(722985, 'organization', 'cloud9', 100000, 'Cloud9 Account'),
	(723869, 'organization', 'casino-bets', 0, 'Diamond Casino Bets'),
	(739527, 'organization', 'tuna', 50000, 'Tuner Shop Account'),
	(740935, 'organization', 'pawn', 10000, 'Pawn Shop Account'),
	(741217, 'organization', 'deathrow', 0, 'Death Row'),
	(757118, 'organization', 'snrbuns', 10000, 'Snr. Buns Account'),
	(771506, 'organization', 'vangelico', 10000, 'Vangelico Jewelry Account'),
	(786253, 'organization', 'noodle', 10000, 'Noodle Exchange Account'),
	(796653, 'personal', '3', 5000, '796653'),
	(801448, 'organization', 'dreamworks', 0, 'Dreamworks'),
	(811152, 'organization', 'unicorn', 25000, 'Vanilla Unicorn Account'),
	(814691, 'organization', 'paleto_tuners', 0, 'Paleto Tuners'),
	(819125, 'organization', 'ballers', 0, 'East Side Ballers'),
	(830129, 'organization', 'police-guardius', 200000, 'Guardius Account'),
	(833519, 'personal', '4', 5000, '833519'),
	(837025, 'organization', 'clicklovers', 10000, 'Click Lovers Account'),
	(856175, 'organization', 'yellowjack', 10000, 'Yellow Jack Account'),
	(866623, 'organization', 'mintmate', 0, 'Mint Mate'),
	(867951, 'organization', 'doj', 100000, 'DOJ Account'),
	(869077, 'organization', 'mba', 0, 'Maze Bank Arena'),
	(880640, 'organization', 'bandits', 0, 'Bandits'),
	(895988, 'organization', 'garcon_pawn', 10000, 'Garcon Pawn Account'),
	(924227, 'organization', 'prego', 10000, 'Cafe Prego Account'),
	(931952, 'organization', 'oni', 0, 'Oni'),
	(952664, 'organization', 'golddiggers', 10000, 'Gold Diggers Account'),
	(957019, 'organization', 'bakery', 10000, 'Bakery Account'),
	(969503, 'organization', 'police', 200000, 'Law Enforcement Shared Account'),
	(973530, 'organization', 'blackline', 50000, 'Blackline Mechanics Account'),
	(982140, 'organization', 'lsfc', 10000, 'Los Santos Fight Club Account'),
	(985538, 'organization', 'block', 0, 'The Block Neighborhood Watch'),
	(991050, 'organization', 'greycat_shipping', 10000, 'Greycat Shipping Account'),
	(995920, 'organization', 'harmony', 50000, 'Harmony Repairs Account'),
	(999430, 'organization', 'rockford_records', 5000, 'Rockford Records Account');

-- Dumping structure for table sandbox.bank_accounts_permissions
CREATE TABLE IF NOT EXISTS `bank_accounts_permissions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `jointOwner` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  `jobPermissions` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job` (`job`) USING BTREE,
  KEY `workplace` (`workplace`) USING BTREE,
  KEY `jointOwner` (`jointOwner`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.bank_accounts_permissions: ~89 rows (approximately)
INSERT INTO `bank_accounts_permissions` (`id`, `account`, `type`, `jointOwner`, `job`, `workplace`, `jobPermissions`) VALUES
	(69, 100000, 0, NULL, 'government', 'doj', '{"BILL":"STATE_ACCOUNT_BILL","MANAGE":"STATE_ACCOUNT_MANAGE","DEPOSIT":"STATE_ACCOUNT_DEPOSIT","BALANCE":"STATE_ACCOUNT_BALANCE","WITHDRAW":"STATE_ACCOUNT_WITHDRAW","TRANSACTIONS":"STATE_ACCOUNT_TRANSACTIONS"}'),
	(70, 100000, 0, NULL, 'government', 'mayoroffice', '{"BILL":"STATE_ACCOUNT_BILL","MANAGE":"STATE_ACCOUNT_MANAGE","DEPOSIT":"STATE_ACCOUNT_DEPOSIT","BALANCE":"STATE_ACCOUNT_BALANCE","WITHDRAW":"STATE_ACCOUNT_WITHDRAW","TRANSACTIONS":"STATE_ACCOUNT_TRANSACTIONS"}'),
	(71, 969503, 0, NULL, 'police', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(72, 586619, 0, NULL, 'police', 'lspd', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(73, 830129, 0, NULL, 'police', 'guardius', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(74, 308894, 0, NULL, 'police', 'bcso', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(75, 235602, 0, NULL, 'police', 'sast', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(76, 541169, 0, NULL, 'ems', 'safd', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(77, 716734, 0, NULL, 'ems', 'doctors', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(78, 484199, 0, NULL, 'prison', 'corrections', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(79, 867951, 0, NULL, 'government', 'doj', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(80, 723869, 0, NULL, 'casino', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(81, 722985, 0, NULL, 'cloud9', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(82, 705055, 0, NULL, 'digitalden', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(83, 231947, 0, NULL, 'pepega_pawn', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(84, 895988, 0, NULL, 'garcon_pawn', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(85, 364980, 0, NULL, 'sagma', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(86, 239009, 0, NULL, 'jewel', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(87, 771506, 0, NULL, 'vangelico', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(88, 557693, 0, NULL, 'vangelico_grapeseed', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(89, 608835, 0, NULL, 'securoserv', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(90, 675295, 0, NULL, 'avast_arcade', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(91, 957019, 0, NULL, 'bakery', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(92, 713111, 0, NULL, 'beanmachine', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(93, 623586, 0, NULL, 'bowling', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(94, 129411, 0, NULL, 'taxicab', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(95, 143785, 0, NULL, 'casino', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(96, 411653, 0, NULL, 'demonetti_storage', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(97, 952664, 0, NULL, 'golddiggers', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(98, 991050, 0, NULL, 'greycat_shipping', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(99, 702441, 0, NULL, 'lostmc', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(100, 468489, 0, NULL, 'odmc', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(101, 713669, 0, NULL, 'saints', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(102, 982140, 0, NULL, 'lsfc', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(103, 242293, 0, NULL, 'dgang', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(104, 739527, 0, NULL, 'tuna', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(105, 649752, 0, NULL, 'redline', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(106, 973530, 0, NULL, 'blackline', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(107, 557086, 0, NULL, 'tirenutz', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(108, 241417, 0, NULL, 'hayes', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(109, 185395, 0, NULL, 'atomic', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(110, 995920, 0, NULL, 'harmony', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(111, 105694, 0, NULL, 'superperformance', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(112, 114521, 0, NULL, 'autoexotics', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(113, 576324, 0, NULL, 'ottos', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(114, 565649, 0, NULL, 'bennys', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(115, 786253, 0, NULL, 'noodle', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(116, 395758, 0, NULL, 'pdm', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(117, 238431, 0, NULL, 'realestate', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(118, 718042, 0, NULL, 'burgershot', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(119, 561850, 0, NULL, 'rustybrowns', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(120, 193477, 0, NULL, 'cluckinbell', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(121, 666018, 0, NULL, 'lasttrain', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(122, 235548, 0, NULL, 'uwu', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(123, 575156, 0, NULL, 'woods_saloon', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(124, 182954, 0, NULL, 'pizza_this', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(125, 924227, 0, NULL, 'prego', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(126, 538243, 0, NULL, 'pearls', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(127, 999430, 0, NULL, 'rockford_records', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(128, 279506, 0, NULL, 'tequila', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(129, 552976, 0, NULL, 'tow', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(130, 470005, 0, NULL, 'triad', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(131, 428374, 0, NULL, 'bahama', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(132, 811152, 0, NULL, 'unicorn', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(133, 465971, 0, NULL, 'weed', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(134, 869077, 0, NULL, 'mba', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(135, 931952, 0, NULL, 'oni', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(136, 446433, 0, NULL, 'nines', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(137, 814691, 0, NULL, 'paleto_tuners', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(138, 716750, 0, NULL, 'blackdragons', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(139, 866623, 0, NULL, 'mintmate', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(140, 985538, 0, NULL, 'block', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(141, 394920, 0, NULL, 'triad_boxing', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(142, 741217, 0, NULL, 'deathrow', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(143, 338977, 0, NULL, 'aztecas', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(144, 423012, 0, NULL, 'vagos', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(145, 480796, 0, NULL, 'white', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(146, 500068, 0, NULL, 'triad_holdings', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(147, 801448, 0, NULL, 'dreamworks', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(148, 819125, 0, NULL, 'ballers', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(149, 880640, 0, NULL, 'bandits', '', '{"BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(150, 740935, 0, NULL, 'pawn', '', '{"WITHDRAW":"BANK_ACCOUNT_WITHDRAW","MANAGE":"BANK_ACCOUNT_MANAGE","BILL":"BANK_ACCOUNT_BILL","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS"}'),
	(151, 757118, 0, NULL, 'snrbuns', '', '{"WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","MANAGE":"BANK_ACCOUNT_MANAGE","BILL":"BANK_ACCOUNT_BILL","DEPOSIT":"BANK_ACCOUNT_DEPOSIT"}'),
	(152, 411076, 0, NULL, 'mosleys', '', '{"BILL":"BANK_ACCOUNT_BILL","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","MANAGE":"BANK_ACCOUNT_MANAGE","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE","WITHDRAW":"BANK_ACCOUNT_WITHDRAW"}'),
	(153, 837025, 0, NULL, 'clicklovers', '', '{"DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BILL":"BANK_ACCOUNT_BILL","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","MANAGE":"BANK_ACCOUNT_MANAGE"}'),
	(154, 240246, 0, NULL, 'rustynutz', '', '{"DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BILL":"BANK_ACCOUNT_BILL","BALANCE":"BANK_ACCOUNT_BALANCE","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","MANAGE":"BANK_ACCOUNT_MANAGE"}'),
	(155, 351819, 0, NULL, 'noircafe', '', '{"DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE"}'),
	(156, 856175, 0, NULL, 'yellowjack', '', '{"DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE"}'),
	(157, 544169, 0, NULL, 'sushi', '', '{"DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","BILL":"BANK_ACCOUNT_BILL","MANAGE":"BANK_ACCOUNT_MANAGE"}'),
	(158, 242659, 0, NULL, 'ferrari_pawn', '', '{"MANAGE":"BANK_ACCOUNT_MANAGE","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BILL":"BANK_ACCOUNT_BILL","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE"}'),
	(159, 701029, 0, NULL, 'sterling_construction', '', '{"MANAGE":"BANK_ACCOUNT_MANAGE","WITHDRAW":"BANK_ACCOUNT_WITHDRAW","BILL":"BANK_ACCOUNT_BILL","TRANSACTIONS":"BANK_ACCOUNT_TRANSACTIONS","DEPOSIT":"BANK_ACCOUNT_DEPOSIT","BALANCE":"BANK_ACCOUNT_BALANCE"}');

-- Dumping structure for table sandbox.bank_accounts_transactions
CREATE TABLE IF NOT EXISTS `bank_accounts_transactions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `account` int(10) NOT NULL,
  `amount` int(10) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(1024) NOT NULL DEFAULT '',
  `data` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sandbox.bank_accounts_transactions: ~0 rows (approximately)

-- Dumping structure for table sandbox.bench_schematics
CREATE TABLE IF NOT EXISTS `bench_schematics` (
  `bench` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `schematic` char(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `bench` (`bench`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.bench_schematics: ~0 rows (approximately)

-- Dumping structure for table sandbox.blueline_race_history
CREATE TABLE IF NOT EXISTS `blueline_race_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `host` varchar(32) NOT NULL,
  `track` int(11) unsigned NOT NULL,
  `class` varchar(4) NOT NULL,
  `racers` longtext NOT NULL DEFAULT '[]',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pd_race_history_track` (`track`) USING BTREE,
  KEY `host` (`host`),
  CONSTRAINT `pd_race_history_track` FOREIGN KEY (`track`) REFERENCES `blueline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.blueline_race_history: ~0 rows (approximately)

-- Dumping structure for table sandbox.blueline_tracks
CREATE TABLE IF NOT EXISTS `blueline_tracks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `distance` varchar(256) NOT NULL,
  `type` varchar(16) NOT NULL,
  `checkpoints` longtext NOT NULL,
  `created_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.blueline_tracks: ~0 rows (approximately)

-- Dumping structure for table sandbox.blueline_track_history
CREATE TABLE IF NOT EXISTS `blueline_track_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `track` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `callsign` varchar(32) NOT NULL,
  `lap_start` int(11) NOT NULL,
  `lap_end` int(11) NOT NULL,
  `laptime` int(11) NOT NULL,
  `car` varchar(256) NOT NULL,
  `owned` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pd_track_history_track` (`track`) USING BTREE,
  KEY `pd_track_history_race` (`race`) USING BTREE,
  KEY `callsign` (`callsign`),
  CONSTRAINT `pd_track_history_race` FOREIGN KEY (`race`) REFERENCES `blueline_race_history` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pd_track_history_track` FOREIGN KEY (`track`) REFERENCES `blueline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.blueline_track_history: ~0 rows (approximately)

-- Dumping structure for table sandbox.business_phones
CREATE TABLE IF NOT EXISTS `business_phones` (
  `id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `number` varchar(50) NOT NULL DEFAULT '0',
  `muted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.business_phones: ~34 rows (approximately)
INSERT INTO `business_phones` (`id`, `number`, `muted`) VALUES
	('autoexotics', '489-417-3964', NULL),
	('bahama', '176-710-5149', NULL),
	('bakery', '100-429-1055', NULL),
	('beanmachine', '970-097-3623', NULL),
	('bennys', '499-398-9443', NULL),
	('bowling', '829-533-8953', NULL),
	('burgershot', '644-140-8964', NULL),
	('casino', '465-106-6739', NULL),
	('dreamworks', '839-643-4896', NULL),
	('garcon_pawn', '202-900-4674', NULL),
	('harmony', '525-372-1537', NULL),
	('hayes', '712-130-2659', NULL),
	('lasttrain', '248-432-3626', NULL),
	('noodle', '132-753-2651', NULL),
	('ottos', '620-081-6144', NULL),
	('paleto_tuners', '458-364-0074', NULL),
	('pawn', '515-503-9498', NULL),
	('pdm', '310-421-0540', NULL),
	('pearls', '861-961-0068', NULL),
	('pepega_pawn', '308-615-6861', NULL),
	('pizza_this', '944-473-4158', NULL),
	('prego', '151-948-8862', NULL),
	('realestate', '037-759-3912', NULL),
	('rustybrowns', '353-452-8449', NULL),
	('rustynutz', '080-442-3304', NULL),
	('snrbuns', '159-989-2122', NULL),
	('triad', '617-999-8554', NULL),
	('tuna', '743-660-9150', NULL),
	('unicorn', '307-160-1624', NULL),
	('uwu', '516-162-0863', NULL),
	('vangelico', '613-274-2527', NULL),
	('vangelico_grapeseed', '353-096-5205', NULL),
	('woods_saloon', '357-547-1307', NULL),
	('yellowjack', '129-206-7845', NULL);

-- Dumping structure for table sandbox.character_app_profiles
CREATE TABLE IF NOT EXISTS `character_app_profiles` (
  `sid` bigint(20) unsigned NOT NULL,
  `app` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `meta` longtext NOT NULL DEFAULT '{}',
  PRIMARY KEY (`sid`,`app`),
  UNIQUE KEY `app` (`app`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_app_profiles: ~9 rows (approximately)
INSERT INTO `character_app_profiles` (`sid`, `app`, `name`, `picture`, `meta`) VALUES
	(1, 'email', 'fffffffff_ffffffffffffffffff1@mythicmail.net', NULL, '{}'),
	(1, 'redline', 'gay', '', '[]'),
	(1, 'twitter', 'fffffffffffffffffffffffffff1', NULL, '{}'),
	(2, 'email', 'dddd_ddd2@sandboxrp.gg', NULL, '{}'),
	(2, 'twitter', 'ddddddd2', NULL, '{}'),
	(3, 'email', 'dddd_dddd3@sandboxrp.gg', NULL, '{}'),
	(3, 'twitter', 'dddddddd3', NULL, '{}'),
	(4, 'email', 'dddddddd_ddddddddddddddddddd4@Prizm.gg', NULL, '{}'),
	(4, 'twitter', 'ddddddddddddddddddddddddddd4', NULL, '{}');

-- Dumping structure for table sandbox.character_calls
CREATE TABLE IF NOT EXISTS `character_calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(12) NOT NULL,
  `number` varchar(12) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `method` bit(1) NOT NULL DEFAULT b'0',
  `duration` int(11) NOT NULL DEFAULT -1,
  `anonymous` bit(1) NOT NULL DEFAULT b'0',
  `decryptable` bit(1) NOT NULL DEFAULT b'0',
  `limited` bit(1) NOT NULL DEFAULT b'0',
  `unread` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `number` (`number`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_calls: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_chatter_groups
CREATE TABLE IF NOT EXISTS `character_chatter_groups` (
  `sid` bigint(20) unsigned NOT NULL,
  `chatty_group` bigint(20) unsigned NOT NULL,
  `joined_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sid`,`chatty_group`) USING BTREE,
  KEY `chatter_char_group` (`chatty_group`),
  CONSTRAINT `chatter_char_group` FOREIGN KEY (`chatty_group`) REFERENCES `chatter_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_chatter_groups: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_contacts
CREATE TABLE IF NOT EXISTS `character_contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` bigint(20) NOT NULL,
  `number` varchar(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `favorite` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_contacts: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_documents
CREATE TABLE IF NOT EXISTS `character_documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_documents: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_documents_shared
CREATE TABLE IF NOT EXISTS `character_documents_shared` (
  `doc_id` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `sharer` int(10) unsigned NOT NULL,
  `sharer_name` varchar(256) DEFAULT NULL,
  `shared_date` datetime NOT NULL DEFAULT current_timestamp(),
  `signature_required` tinyint(1) NOT NULL DEFAULT 0,
  `signed` datetime DEFAULT NULL,
  `signed_name` varchar(256) DEFAULT NULL,
  UNIQUE KEY `doc_id_sid` (`doc_id`,`sid`),
  KEY `sid` (`sid`),
  KEY `sharer` (`sharer`),
  KEY `doc_sid` (`doc_id`) USING BTREE,
  CONSTRAINT `doc_shared` FOREIGN KEY (`doc_id`) REFERENCES `character_documents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_documents_shared: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_emails
CREATE TABLE IF NOT EXISTS `character_emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL,
  `sender` varchar(256) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `body` longtext NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `unread` bit(1) NOT NULL DEFAULT b'1',
  `flags` longtext DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_emails: ~7 rows (approximately)
INSERT INTO `character_emails` (`id`, `sid`, `sender`, `subject`, `body`, `timestamp`, `unread`, `flags`, `expires`) VALUES
	(1, 1, 'sales@premiumdeluxe.com', 'Vehicle Purchase - sdfg slkd', '                Dear test test,\n                We thank you for completing your purchase of a <b>sdfg slkd</b> for $1, it has been a pleasure doing business with you.\n                Your new vehicle will be delivered as quickly as possible.<br><br>\n                The Vehicle VIN is <b>SEU2MEPYYFA873156</b><br>\n                The Vehicle License Plate is <b>5K2KTYRY</b><br>\n                <br><br>\n                Thanks, Premium Deluxe Motorsport\n            ', '2024-07-02 20:18:46', b'1', '[]', NULL),
	(2, 1, 'sales@premiumdeluxe.com', 'Vehicle Purchase - sdfg slkd', '                Dear test test,\n                We thank you for completing your purchase of a <b>sdfg slkd</b> for $1, it has been a pleasure doing business with you.\n                Your new vehicle will be delivered as quickly as possible.<br><br>\n                The Vehicle VIN is <b>MRCALV6D00AZ98615</b><br>\n                The Vehicle License Plate is <b>1GTCBVVK</b><br>\n                <br><br>\n                Thanks, Premium Deluxe Motorsport\n            ', '2024-07-02 20:28:39', b'1', '[]', NULL),
	(3, 1, 'sales@premiumdeluxe.com', 'Vehicle Purchase - sdfg slkd', '                Dear test test,\n                We thank you for completing your purchase of a <b>sdfg slkd</b> for $1, it has been a pleasure doing business with you.\n                Your new vehicle will be delivered as quickly as possible.<br><br>\n                The Vehicle VIN is <b>PZA3HW6AN9AC35265</b><br>\n                The Vehicle License Plate is <b>7G0TYB74</b><br>\n                <br><br>\n                Thanks, Premium Deluxe Motorsport\n            ', '2024-07-02 20:41:50', b'1', '[]', NULL),
	(4, 1, 'sales@premiumdeluxe.com', 'Vehicle Purchase - sdfg slkd', '                Dear test test,\n                We thank you for completing your purchase of a <b>sdfg slkd</b> for $1, it has been a pleasure doing business with you.\n                Your new vehicle will be delivered as quickly as possible.<br><br>\n                The Vehicle VIN is <b>NVTLZEA1F1AK21156</b><br>\n                The Vehicle License Plate is <b>NS646R1V</b><br>\n                <br><br>\n                Thanks, Premium Deluxe Motorsport\n            ', '2024-07-02 20:44:59', b'1', '[]', NULL),
	(5, 1, 'sales@premiumdeluxe.com', 'Vehicle Purchase - gg gg', '                Dear test test,\n                We thank you for completing your purchase of a <b>gg gg</b> for $1, it has been a pleasure doing business with you.\n                Your new vehicle will be delivered as quickly as possible.<br><br>\n                The Vehicle VIN is <b>D3N94B6G87AB52143</b><br>\n                The Vehicle License Plate is <b>P1WNF0PA</b><br>\n                <br><br>\n                Thanks, Premium Deluxe Motorsport\n            ', '2024-07-02 20:49:44', b'1', '[]', NULL),
	(6, 1, 'shadow@ls.undg', 'Recent Work', '												Good Work test<br /><br />\n												Some of my guys were able to get some more materials and parts out of that car, I\'ve left those materials & parts in a package with the salvaging foreman.<br /><br />\n												Goodluck with your future endeavors\n											', '2024-07-02 21:15:55', b'1', NULL, NULL),
	(7, 1, 'sales@mosleys.com', 'Vehicle Purchase - faggio faggio', '                Dear test test,\n                We thank you for completing your purchase of a <b>faggio faggio</b> for $1, it has been a pleasure doing business with you.\n                Your new vehicle will be delivered as quickly as possible.<br><br>\n                The Vehicle VIN is <b>L9TCCGVV2XAL98040</b><br>\n                The Vehicle License Plate is <b>YA1MDPMG</b><br>\n                <br><br>\n                Thanks, Mosleys Car Dealership\n            ', '2024-07-09 17:52:37', b'1', '[]', NULL);

-- Dumping structure for table sandbox.character_messages
CREATE TABLE IF NOT EXISTS `character_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(12) NOT NULL,
  `number` varchar(12) NOT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 0,
  `unread` bit(1) NOT NULL DEFAULT b'1',
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `message` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `number` (`number`),
  KEY `ownu` (`owner`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_messages: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_parole
CREATE TABLE IF NOT EXISTS `character_parole` (
  `SID` int(11) NOT NULL,
  `end` datetime NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `parole` int(11) NOT NULL DEFAULT 0,
  `sentence` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.character_parole: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_photos
CREATE TABLE IF NOT EXISTS `character_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) NOT NULL,
  `image_url` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.character_photos: ~0 rows (approximately)

-- Dumping structure for table sandbox.character_schematics
CREATE TABLE IF NOT EXISTS `character_schematics` (
  `sid` int(11) DEFAULT NULL,
  `bench` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `schematic` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `sid` (`sid`,`bench`),
  KEY `schematic` (`schematic`,`bench`,`sid`),
  KEY `sid_schem` (`sid`,`schematic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.character_schematics: ~0 rows (approximately)

-- Dumping structure for table sandbox.chatter_groups
CREATE TABLE IF NOT EXISTS `chatter_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL DEFAULT 'Chatter Group',
  `icon` varchar(1024) DEFAULT NULL,
  `owner` bigint(20) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.chatter_groups: ~0 rows (approximately)

-- Dumping structure for table sandbox.chatter_messages
CREATE TABLE IF NOT EXISTS `chatter_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group` bigint(20) unsigned NOT NULL,
  `author` bigint(20) unsigned NOT NULL,
  `message` varchar(256) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `chatter_msg_group` (`group`),
  KEY `chatter_msg_author` (`author`),
  CONSTRAINT `chatter_msg_group` FOREIGN KEY (`group`) REFERENCES `chatter_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.chatter_messages: ~0 rows (approximately)

-- Dumping structure for table sandbox.crafting_cooldowns
CREATE TABLE IF NOT EXISTS `crafting_cooldowns` (
  `bench` varchar(64) NOT NULL,
  `id` varchar(64) NOT NULL,
  `expires` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.crafting_cooldowns: ~0 rows (approximately)

-- Dumping structure for table sandbox.firearms
CREATE TABLE IF NOT EXISTS `firearms` (
  `police_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serial` char(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `scratched` tinyint(1) NOT NULL DEFAULT 0,
  `purchased` datetime NOT NULL DEFAULT current_timestamp(),
  `model` varchar(128) NOT NULL,
  `item` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `owner_sid` int(11) unsigned DEFAULT NULL,
  `owner_name` varchar(512) DEFAULT NULL,
  `police_filed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`police_id`),
  KEY `owner_sid` (`owner_sid`) USING BTREE,
  KEY `police_filed` (`police_filed`) USING BTREE,
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=1966 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.firearms: ~10 rows (approximately)
INSERT INTO `firearms` (`police_id`, `serial`, `scratched`, `purchased`, `model`, `item`, `owner_sid`, `owner_name`, `police_filed`) VALUES
	(1956, 'SA-1630761003-1', 0, '2024-07-07 22:54:28', 'SB 226', 'WEAPON_FM1_P226', 1, 'test test', 0),
	(1957, 'SA-1630761003-2', 0, '2024-07-07 22:54:38', 'SB 226', 'WEAPON_FM1_P226', 1, 'test test', 0),
	(1958, 'SA-1409371625-1', 0, '2024-07-07 23:43:40', 'PD Glock', 'WEAPON_FM1_GLOCK19', 1, 'test test', 0),
	(1959, 'SA-581044007-1', 0, '2024-07-08 22:46:27', 'Machete', 'WEAPON_MACHETE', 1, 'test test', 0),
	(1960, 'SA-690582282-1', 0, '2024-07-12 22:43:57', 'M9A3', 'WEAPON_FM1_M9A3', 1, 'test test', 1),
	(1961, 'SA-1951375401-1', 0, '2024-07-12 22:44:51', 'Flashlight', 'WEAPON_FLASHLIGHT', 1, 'test test', 0),
	(1962, 'SA-453432689-1', 0, '2024-07-20 12:36:19', 'Pistol', 'WEAPON_PISTOL', 1, 'te te', 1),
	(1963, 'SA-1630761003-3', 0, '2024-07-20 13:48:46', 'SB 226', 'WEAPON_FM1_P226', 1, 'te te', 1),
	(1964, 'SA-820634585-1', 0, '2024-07-21 00:53:35', 'Taser', 'WEAPON_TASER', 1, 'te te', 1),
	(1965, 'SA-911657153-1', 0, '2024-07-21 01:03:16', 'Stun Gun', 'WEAPON_STUNGUN', 1, 'te te', 1);

-- Dumping structure for table sandbox.firearms_flags
CREATE TABLE IF NOT EXISTS `firearms_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial` char(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` char(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `author_sid` int(11) unsigned NOT NULL,
  `author_first` varchar(128) NOT NULL,
  `author_last` varchar(128) NOT NULL,
  `author_callsign` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.firearms_flags: ~0 rows (approximately)

-- Dumping structure for table sandbox.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` char(64) NOT NULL,
  `slot` int(11) DEFAULT NULL,
  `item_id` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `quality` int(11) DEFAULT NULL,
  `information` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  `expiryDate` bigint(20) NOT NULL DEFAULT -1,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`owner`) USING BTREE,
  KEY `slot` (`slot`,`owner`) USING BTREE,
  KEY `item_id` (`owner`,`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.inventory: ~8 rows (approximately)
INSERT INTO `inventory` (`id`, `owner`, `type`, `slot`, `item_id`, `quality`, `information`, `dropped`, `creationDate`, `expiryDate`, `price`) VALUES
	(101, '1', '1', 1, 'govid', 0, '{"Name":"fffffffff ffffffffffffffffff","DOB":662687999,"Gender":"Male","StateID":1,"PassportID":2}', 0, 1729982254, -1, NULL),
	(102, '1', '1', 2, 'phone', 0, '[]', 0, 1729982281, -1, NULL),
	(103, '4', '1', 1, 'govid', 0, '{"DOB":"2006-10-30T22:47:48.571Z","Gender":"Male","Name":"dddddddd ddddddddddddddddddd","StateID":4,"PassportID":2}', 0, 1730328473, -1, NULL),
	(104, '4', '1', 2, 'phone', 0, '[]', 0, 1730328474, -1, NULL),
	(105, '4', '1', 3, 'water', 0, '[]', 0, 1730328474, 1730760474, NULL),
	(106, '4', '1', 4, 'sandwich_blt', 0, '[]', 0, 1730328474, 1730760474, NULL),
	(107, '4', '1', 5, 'bandage', 0, '[]', 0, 1730328474, 1730760474, NULL),
	(108, '4', '1', 6, 'coffee', 0, '[]', 0, 1730328474, 1730760474, NULL);

-- Dumping structure for table sandbox.inventory_shop_logs
CREATE TABLE IF NOT EXISTS `inventory_shop_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `inventory` varchar(255) NOT NULL DEFAULT '0',
  `item` varchar(255) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT 0,
  `itemId` bigint(20) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `metadata` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.inventory_shop_logs: ~7 rows (approximately)
INSERT INTO `inventory_shop_logs` (`id`, `date`, `inventory`, `item`, `count`, `itemId`, `buyer`, `metadata`) VALUES
	(91, '2024-07-12 22:43:57', 'shop:24', 'WEAPON_FM1_M9A3', 1, 0, 1, '{"SerialNumber":"SA-690582282-1","ammo":0,"clip":0}'),
	(92, '2024-07-12 22:44:00', 'shop:24', 'AMMO_PISTOL', 10, 0, 1, '[]'),
	(93, '2024-07-21 01:03:16', 'mrpd-armory', 'WEAPON_STUNGUN', 1, 0, 1, '{"ammo":0,"SerialNumber":"SA-911657153-1","clip":0}'),
	(94, '2024-08-01 00:33:39', 'shop:2', 'sandwich', 15, 0, 1, '[]'),
	(95, '2024-08-01 00:33:41', 'shop:2', 'sandwich_egg', 15, 0, 1, '[]'),
	(96, '2024-08-01 00:33:42', 'shop:2', 'water', 25, 0, 1, '[]'),
	(97, '2024-08-01 00:33:44', 'shop:2', 'bandage', 30, 0, 1, '[]');

-- Dumping structure for table sandbox.item_template
CREATE TABLE IF NOT EXISTS `item_template` (
  `name` char(64) CHARACTER SET big5 COLLATE big5_bin NOT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `rarity` int(11) NOT NULL,
  `iconOverride` varchar(256) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT 0,
  `weapon` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT 0,
  `imitate` char(64) CHARACTER SET ascii COLLATE ascii_bin DEFAULT NULL,
  `isStackable` int(10) unsigned DEFAULT NULL,
  `closeUi` tinyint(1) NOT NULL DEFAULT 0,
  `metalic` tinyint(1) NOT NULL DEFAULT 0,
  `durability` bigint(20) unsigned DEFAULT NULL,
  `isUsable` tinyint(1) NOT NULL DEFAULT 0,
  `isDestroyed` tinyint(1) NOT NULL DEFAULT 0,
  `isRemoved` tinyint(1) NOT NULL DEFAULT 0,
  `gun` tinyint(1) NOT NULL DEFAULT 0,
  `requiresLicense` tinyint(1) NOT NULL DEFAULT 0,
  `qualification` varchar(32) DEFAULT NULL,
  `ammoType` varchar(32) DEFAULT NULL,
  `bulletCount` int(10) unsigned DEFAULT NULL,
  `container` int(10) unsigned DEFAULT NULL,
  `staticMetadata` longtext DEFAULT NULL,
  `component` longtext DEFAULT NULL,
  `animConfig` longtext DEFAULT NULL,
  `statusChange` longtext DEFAULT NULL,
  `extra` longtext DEFAULT NULL,
  `schematic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.item_template: ~698 rows (approximately)
INSERT INTO `item_template` (`name`, `label`, `description`, `type`, `rarity`, `iconOverride`, `price`, `weapon`, `state`, `weight`, `imitate`, `isStackable`, `closeUi`, `metalic`, `durability`, `isUsable`, `isDestroyed`, `isRemoved`, `gun`, `requiresLicense`, `qualification`, `ammoType`, `bulletCount`, `container`, `staticMetadata`, `component`, `animConfig`, `statusChange`, `extra`, `schematic`) VALUES
	('AMMO_PISTOL', 'Pistol Ammo', NULL, 9, 1, NULL, 50, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_PISTOL', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_PISTOL_PD', 'PD Pistol Ammo', NULL, 9, 1, 'AMMO_PISTOL', 5, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_PISTOL', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_RIFLE', 'Rifle Ammo', NULL, 9, 1, NULL, 25, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_RIFLE', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_RIFLE_PD', 'PD Rifle Ammo', NULL, 9, 1, 'AMMO_RIFLE', 10, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, 'PD_AR', 'AMMO_RIFLE', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_RPG', 'Fookin Rockets Mate', NULL, 9, 1, NULL, 3, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_RPG', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SHOTGUN', 'Shotgun Ammo', NULL, 9, 1, NULL, 30, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_SHOTGUN', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SHOTGUN_PD', 'PD Shotgun Ammo', NULL, 9, 1, 'AMMO_SHOTGUN', 5, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, 'PD_BEANBAG', 'AMMO_SHOTGUN', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SMG', 'SMG Ammo', NULL, 9, 1, NULL, 300, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_SMG', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SMG_PD', 'PD SMG Ammo', NULL, 9, 1, 'AMMO_SMG', 5, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, 'PD_SMG', 'AMMO_SMG', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SNIPER', 'Hunting Rifle Ammo', NULL, 9, 1, NULL, 250, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_SNIPER', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_STUNGUN', 'Taser Ammo', NULL, 9, 1, NULL, 3, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_STUNGUN', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ATTCH_ADV_AR_SILENCER', 'Adv. Rifle Suppressor', NULL, 16, 4, NULL, 25000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_AR_SUPP_02","WEAPON_RPK16":"COMPONENT_RPK16_MUZZLE_05","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_AR_SUPP_02","WEAPON_PM4":"COMPONENT_MARKOMODS_SHARED_SUPP_14","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_AR_SUPP","WEAPON_HK416":"COMPONENT_AT_HK416B_SUPP","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_AR_SUPP_02","WEAPON_G36":"COMPONENT_MARKOMODSG36_BARREL_03","WEAPON_AR15":"COMPONENT_AR15_SUPP_01"}}', NULL, NULL, NULL, NULL),
	('ATTCH_ADV_PISTOL_SILENCER', 'Adv. Pistol Suppressor', NULL, 16, 4, NULL, 25000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_SNSPISTOL_MK2":"COMPONENT_AT_PI_SUPP_02","WEAPON_GLOCK19":"COMPONENT_GLOCK19_SUPP_02","WEAPON_PISTOL_MK2":"COMPONENT_AT_PI_SUPP_02","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_SUPP_02","WEAPON_FM1_M9A3":"COMPONENT_FMSUPP_07"}}', NULL, NULL, NULL, NULL),
	('ATTCH_ADV_SMG_SILENCER', 'Adv. SMG Suppressor', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_MPX":"COMPONENT_MPX_BARREL_08","WEAPON_VECTOR":"COMPONENT_MARKOMODS_VECTOR_SUPP_1","WEAPON_PP19":"COMPONENT_PP19_MUZZLE_05","WEAPON_SMG_MK2":"COMPONENT_AT_PI_SUPP","WEAPON_HKUMP":"COMPONENT_UMP_SUPP_02","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SUPP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_AR_EXT_MAG', 'Extended AR Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_ASSAULTRIFLE_MK2_CLIP_02","WEAPON_ADVANCEDRIFLE":"COMPONENT_ADVANCEDRIFLE_CLIP_02","WEAPON_BULLPUPRIFLE":"COMPONENT_BULLPUPRIFLE_CLIP_02","WEAPON_G36":"COMPONENT_MARKOMODSG36_CLIP_02","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_BULLPUPRIFLE_MK2_CLIP_02","WEAPON_ASSAULTRIFLE":"COMPONENT_ASSAULTRIFLE_CLIP_02","WEAPON_SPECIALCARBINE":"COMPONENT_SPECIALCARBINE_CLIP_02","WEAPON_FM1_HONEYBADGER":"COMPONENT_FMCLIP_02","WEAPON_AR15":"COMPONENT_AR15_CLIP_02","WEAPON_ASSAULTSMG":"COMPONENT_ASSAULTSMG_CLIP_02","WEAPON_CARBINERIFLE_MK2":"COMPONENT_CARBINERIFLE_MK2_CLIP_02","WEAPON_PM4":"COMPONENT_MARKOMODS_SHARED_556MAG_03","WEAPON_HK416":"COMPONENT_HK416B_CLIP_02","WEAPON_RPK16":"COMPONENT_RPK16_CLIP_05","WEAPON_COMPACTRIFLE":"COMPONENT_COMPACTRIFLE_CLIP_02","WEAPON_CARBINERIFLE":"COMPONENT_CARBINERIFLE_CLIP_02","WEAPON_AK74":"COMPONENT_AK74_CLIP_02","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_SPECIALCARBINE_MK2_CLIP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_AR_SILENCER', 'Rifle Suppressor', NULL, 16, 3, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_SPECIALRIFLE":"COMPONENT_AT_AR_SUPP","WEAPON_ADVANCEDRIFLE":"COMPONENT_AT_AR_SUPP","WEAPON_BULLPUPRIFLE":"COMPONENT_AT_AR_SUPP_02","WEAPON_ASSAULTRIFLE":"COMPONENT_AT_AR_SUPP_02","WEAPON_AK74":"COMPONENT_AK74_SUPP","WEAPON_CARBINERIFLE":"COMPONENT_AT_AR_SUPP"}}', NULL, NULL, NULL, NULL),
	('ATTCH_BOX_MAG', 'Box Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_RPK16":"COMPONENT_RPK16_CLIP_06","WEAPON_CARBINERIFLE":"COMPONENT_CARBINERIFLE_CLIP_03","WEAPON_AK74":"COMPONENT_AK74_CLIP_03","WEAPON_G36":"COMPONENT_MARKOMODSG36_CLIP_04"}}', NULL, NULL, NULL, NULL),
	('ATTCH_DRUM_MAG', 'Drum Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_MACHINEPISTOL":"COMPONENT_MACHINEPISTOL_CLIP_03","WEAPON_RPK16":"COMPONENT_RPK16_CLIP_07","WEAPON_G36":"COMPONENT_MARKOMODSG36_CLIP_03","WEAPON_MPX":"COMPONENT_MPX_CLIP_03","WEAPON_ASSAULTRIFLE":"COMPONENT_ASSAULTRIFLE_CLIP_03","WEAPON_PP19":"COMPONENT_PP19_CLIP_07","WEAPON_COMPACTRIFLE":"COMPONENT_COMPACTRIFLE_CLIP_03","WEAPON_COMBATPDW":"COMPONENT_COMBATPDW_CLIP_03","WEAPON_SPECIALCARBINE":"COMPONENT_SPECIALCARBINE_CLIP_03","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_CLIP_04"}}', NULL, NULL, NULL, NULL),
	('ATTCH_GRIP', 'Foregrip', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"grip","returnItem":true,"strings":{"WEAPON_RPK16":"COMPONENT_RPK16_GRIP_01","WEAPON_HKUMP":"COMPONENT_UMP_GRIP_01","WEAPON_G36":"COMPONENT_MARKOMODSG36_GRIP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_HOLO', 'Holographic Sight', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_AR15":"COMPONENT_BEOWULF_SCOPE_04","WEAPON_P90FM":"COMPONENT_P90_SCOPE_07","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_02","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_04","WEAPON_MPX":"COMPONENT_MPX_SCOPE_04","WEAPON_PP19":"COMPONENT_PP19_SCOPE_07","WEAPON_HK416":"COMPONENT_AT_SCOPE_HK416B","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_04","WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_06","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SCOPE_01"}}', NULL, NULL, NULL, NULL),
	('ATTCH_LRG_SCOPE', 'Large Scope', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_MPX":"COMPONENT_MPX_SCOPE_08","WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_SCOPE_MEDIUM_MK2","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_SCOPE_MEDIUM_MK2","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_10","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_SCOPE_MEDIUM_MK2"}}', NULL, NULL, NULL, NULL),
	('ATTCH_MED_SCOPE', 'Medium Scope', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_09","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_08","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_09","WEAPON_MPX":"COMPONENT_MPX_SCOPE_06","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_SCOPE_SMALL_MK2","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_10","WEAPON_CARBINERIFLE":"COMPONENT_AT_SCOPE_MEDIUM","WEAPON_SPECIALCARBINE":"COMPONENT_AT_SCOPE_MEDIUM","WEAPON_PP19":"COMPONENT_PP19_SCOPE_10"}}', NULL, NULL, NULL, NULL),
	('ATTCH_PISTOL_EXT_MAG', 'Extended Pistol Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_SNSPISTOL":"COMPONENT_SNSPISTOL_CLIP_02","WEAPON_L5":"COMPONENT_MARKOMODSL5_CLIP_02","WEAPON_APPISTOL":"COMPONENT_APPISTOL_CLIP_02","WEAPON_MACHINEPISTOL":"COMPONENT_MACHINEPISTOL_CLIP_02","WEAPON_FIVESEVEN":"COMPONENT_FIVESEVEN_CLIP_02","WEAPON_2011":"COMPONENT_MARKOMODS2011_CLIP_02","WEAPON_PISTOL":"COMPONENT_PISTOL_CLIP_02","WEAPON_SNSPISTOL_MK2":"COMPONENT_SNSPISTOL_MK2_CLIP_02","WEAPON_GLOCK19":"COMPONENT_GLOCK19_CLIP_02","WEAPON_PISTOL50":"COMPONENT_PISTOL50_CLIP_02","WEAPON_M45A1":"COMPONENT_M45A1_CLIP_02","WEAPON_HEAVYPISTOL":"COMPONENT_HEAVYPISTOL_CLIP_02","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_CLIP_02","WEAPON_COMBATPISTOL":"COMPONENT_COMBATPISTOL_CLIP_02","WEAPON_FM1_M9A3":"COMPONENT_FM1_M9A3_CLIP_02","WEAPON_PISTOL_MK2":"COMPONENT_PISTOL_MK2_CLIP_02","WEAPON_FNX45":"COMPONENT_MARKOMODS_FNX45_MAG_03","WEAPON_P320A":"COMPONENT_MARKOMODSP320a_CLIP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_PISTOL_SILENCER', 'Pistol Suppressor', NULL, 16, 3, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_2011":"COMPONENT_MARKOMODS2011_MUZZLE_02","WEAPON_HEAVYPISTOL":"COMPONENT_AT_PI_SUPP","WEAPON_FNX45":"COMPONENT_MARKOMODS_FNX45_SUPP_02","WEAPON_COMBATPISTOL":"COMPONENT_AT_PI_SUPP","WEAPON_M45A1":"COMPONENT_M45A1_SUPP_01","WEAPON_PISTOL":"COMPONENT_AT_PI_SUPP"}}', NULL, NULL, NULL, NULL),
	('ATTCH_REDDOT', 'Red Dot Sight', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_AR15":"COMPONENT_BEOWULF_SCOPE_09","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_06","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_SCOPE_03","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_03","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_04","WEAPON_PP19":"COMPONENT_PP19_SCOPE_02","WEAPON_SMG_MK2":"COMPONENT_AT_SIGHTS_SMG","WEAPON_GLOCK19":"COMPONENT_GLOCK19_SCOPE_03","WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_07","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SCOPE_06"}}', NULL, NULL, NULL, NULL),
	('ATTCH_SMALL_SCOPE', 'Small Scope', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_SCOPE_MACRO_MK2","WEAPON_ADVANCEDRIFLE":"COMPONENT_AT_SCOPE_SMALL","WEAPON_BULLPUPRIFLE":"COMPONENT_AT_SCOPE_SMALL","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_06","WEAPON_SMG":"COMPONENT_AT_SCOPE_MACRO_02","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_SCOPE_MACRO_02_MK2","WEAPON_SMG_MK2":"COMPONENT_AT_SCOPE_SMALL_SMG_MK2","WEAPON_MICROSMG":"COMPONENT_AT_SCOPE_MACRO","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_01","WEAPON_ASSAULTRIFLE":"COMPONENT_AT_SCOPE_MACRO","WEAPON_GLOCK19":"COMPONENT_GLOCK19_SCOPE_07","WEAPON_AR15":"COMPONENT_BEOWULF_SCOPE_10","WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_08","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_04","WEAPON_ASSAULTSMG":"COMPONENT_AT_SCOPE_MACRO","WEAPON_PP19":"COMPONENT_PP19_SCOPE_06","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_SCOPE_07","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_SCOPE_MACRO_MK2","WEAPON_MPX":"COMPONENT_MPX_SCOPE_03","WEAPON_MP9A":"COMPONENT_AT_SCOPE_MP9A","WEAPON_P90FM":"P90Scope4FluffysMods","WEAPON_COMBATPDW":"COMPONENT_AT_SCOPE_SMALL","WEAPON_MP5":"COMPONENT_AT_SCOPE_MP5","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_SCOPE_MACRO_MK2","WEAPON_CARBINERIFLE":"COMPONENT_CARBINERIFLE_CLIP_03","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SCOPE_03"}}', NULL, NULL, NULL, NULL),
	('ATTCH_SMG_EXT_MAG', 'Extended SMG Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_MP9A":"COMPONENT_MP9A_CLIP_02","WEAPON_SMG_MK2":"COMPONENT_SMG_MK2_CLIP_02","WEAPON_ASSAULTSMG":"COMPONENT_ASSAULTSMG_CLIP_02","WEAPON_HKUMP":"COMPONENT_UMP_CLIP_02","WEAPON_MINISMG":"COMPONENT_MINISMG_CLIP_02","WEAPON_PISTOL_MK2":"COMPONENT_PISTOL_MK2_CLIP_02","WEAPON_MPX":"COMPONENT_MPX_CLIP_02","WEAPON_VECTOR":"COMPONENT_MARKOMODS_VECTOR_CLIP_2","WEAPON_SMG":"COMPONENT_SMG_CLIP_02","WEAPON_PP19":"COMPONENT_PP19_CLIP_03","WEAPON_MP5":"COMPONENT_MP5_CLIP_02","WEAPON_MICROSMG":"COMPONENT_MICROSMG_CLIP_02","WEAPON_COMBATPDW":"COMPONENT_SNSPISTOL_MK2_CLIP_02","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_CLIP_03"}}', NULL, NULL, NULL, NULL),
	('ATTCH_SMG_SILENCER', 'SMG Suppressor', NULL, 16, 3, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_MP9A":"COMPONENT_AT_MP9A_SUPP_02","WEAPON_SMG":"COMPONENT_AT_PI_SUPP","WEAPON_MP5":"COMPONENT_AT_MP5_SUPP","WEAPON_MICROSMG":"COMPONENT_AT_AR_SUPP_02","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SUPP_01"}}', NULL, NULL, NULL, NULL),
	('ATTCH_WEAPON_FLASHLIGHT', 'Weapon Flashlight', NULL, 16, 2, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"flashlight","returnItem":true,"strings":{"WEAPON_MP9A":"COMPONENT_AT_MP9A_FLSH","WEAPON_APPISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_ADVANCEDRIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_BULLPUPRIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_G36":"COMPONENT_MARKOMODSG36_FLASH_02","WEAPON_SMG":"COMPONENT_AT_AR_FLSH","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_SMG_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_SPECIALCARBINE":"COMPONENT_AT_AR_FLSH","WEAPON_FM1_HONEYBADGER":"COMPONENT_FMFLSH_12","WEAPON_AR15":"COMPONENT_BEOWULF_FLSH_01","WEAPON_ASSAULTSMG":"COMPONENT_AT_AR_FLSH","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_MPX":"COMPONENT_MPX_FLSH_03","WEAPON_PUMPSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_CARBINERIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_2011":"COMPONENT_MARKOMODS2011_FLSH_03","WEAPON_PISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_PM4":"COMPONENT_MARKOMODS_SHARED_FLASH_07a","WEAPON_FM1_M9A3":"COMPONENT_FMFLSH_01","WEAPON_HEAVYSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_FNX45":"COMPONENT_MARKOMODS_FNX45_FLASH_02","WEAPON_HK416":"COMPONENT_AT_HK416B_FLSH","WEAPON_PISTOL50":"COMPONENT_AT_PI_FLSH","WEAPON_M45A1":"COMPONENT_M45A1_FLSH_01","WEAPON_HEAVYPISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_HKUMP":"COMPONENT_UMP_FLSH_03","WEAPON_P90FM":"COMPONENT_P90_FLSH_01","WEAPON_P320A":"COMPONENT_MARKOMODSP320a_FLASH_01","WEAPON_RPK16":"COMPONENT_RPK16_LASER_01","WEAPON_ASSAULTSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_ASSAULTRIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_FLSH_01","WEAPON_COMBATPISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_PUMPSHOTGUN_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_50BEOWULF":"COMPONENT_BEOWULF_FLSH_01","WEAPON_COMBATPDW":"COMPONENT_AT_AR_FLSH","WEAPON_MP5":"COMPONENT_AT_AR_FLSH","WEAPON_PISTOL_MK2":"COMPONENT_AT_PI_FLSH_02","WEAPON_BULLPUPSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_MICROSMG":"COMPONENT_AT_PI_FLSH"}}', NULL, NULL, NULL, NULL),
	('BOBCAT_57', 'Six Eight', NULL, 2, 2, 'WEAPON_FIVESEVEN', 10000, 'WEAPON_FIVESEVEN', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_COMBATPISTOL', 'Combat Pistol', NULL, 2, 1, 'WEAPON_COMBATPISTOL', 3200, 'WEAPON_COMBATPISTOL', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_DBSHOTGUN', 'Double Barrel Shotgun', NULL, 2, 1, 'WEAPON_DBSHOTGUN', 10000, 'WEAPON_DBSHOTGUN', NULL, 12, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_DOUBLEACTION', 'Double Action Revolver', NULL, 2, 2, 'WEAPON_DOUBLEACTION', 8000, 'WEAPON_DOUBLEACTION', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_FNX', 'SB 45 Tactical', NULL, 2, 1, 'WEAPON_FNX', 3200, 'WEAPON_FNX', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_GLOCK19_CIV', 'F19X', NULL, 2, 3, 'WEAPON_GLOCK19', 6000, 'WEAPON_GLOCK19_CIV', NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_PISTOL50', 'Desert Eagle', NULL, 2, 2, 'WEAPON_PISTOL50', 6000, 'WEAPON_PISTOL50', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_PUMPSHOTGUN', 'Pump Shotgun', NULL, 2, 2, 'WEAPON_PUMPSHOTGUN', 10000, 'WEAPON_PUMPSHOTGUN', NULL, 15, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_REVOLVER', 'Revolver', NULL, 2, 2, 'WEAPON_REVOLVER', 7000, 'WEAPON_REVOLVER', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_SAWNOFFSHOTGUN', 'Sawnoff Shotgun', NULL, 2, 1, 'WEAPON_SAWNOFFSHOTGUN', 10000, 'WEAPON_SAWNOFFSHOTGUN', NULL, 12, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_SMG_MK2', 'SIG MPX', NULL, 2, 2, 'WEAPON_SMG_MK2', 10000, 'WEAPON_SMG_MK2', NULL, 12, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_SNSPISTOL', 'SNS Pistol', NULL, 2, 2, 'WEAPON_SNSPISTOL', 3500, 'WEAPON_SNSPISTOL', NULL, 8, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_2011', '2011 Tactical', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_50BEOWULF', 'SB .50 Beowulf', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ADVANCEDRIFLE', 'Adv. Rifle', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AK74', 'AK-74', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_APPISTOL', 'F18 Auto', NULL, 2, 2, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AR15', 'SB556A1', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AR15_PD', 'PD SB556A1', NULL, 2, 3, 'WEAPON_AR15', 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, 'PD_AR', 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTRIFLE', 'AK-47', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTRIFLE_MK2', 'AK-12', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTSHOTGUN', 'SB 12G Assault', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTSMG', 'F90', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASVAL', 'AS-VAL', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotty', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BALL', 'Ball', NULL, 2, 1, NULL, 1000, NULL, NULL, 5, NULL, 0, 1, 0, 1814400, 1, 0, 1, 1, 0, NULL, 'AMMO_BALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BAT', 'Baseball Bat', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BATTLEAXE', 'Battle Axe', NULL, 2, 2, NULL, 400, NULL, NULL, 18, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BEANBAG', 'Beanbag Gun', NULL, 2, 3, NULL, 300, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, 'PD_BEANBAG', 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BENELLIM2', 'BM2', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BENELLIM2_PD', 'PD BM2', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, 'PD_BEANBAG', 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BOTTLE', 'Broken Bottle', NULL, 2, 1, NULL, 400, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BULLPUPRIFLE_MK2', 'Bullpup Rifle Mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BULLPUPSHOTGUN', 'SB Bullpup Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BZGAS', 'BZ Gas', NULL, 2, 4, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_BZGAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CARBINERIFLE', 'PD .556', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CARBINERIFLE_MK2', 'PD .762', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATMG', 'LMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATMG_MK2', 'LMG MK2', NULL, 2, 3, NULL, 10000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATPDW', 'Combat PDW', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMPACTRIFLE', 'Draco', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CROWBAR', 'Crowbar', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CRUTCH', 'Crutch', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DAGGER', 'Dagger', NULL, 2, 2, NULL, 400, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', NULL, 2, 1, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', NULL, 2, 3, NULL, 8000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DOUBLEBARRELFM', 'Double Barrel', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DRBAT', 'Dr-Deshbat', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', NULL, 1, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, 'AMMO_FIREEXTINGUISHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FIREWORK', 'Firework Launcher', NULL, 2, 1, NULL, 100000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'AMMO_FIREWORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FIVESEVEN', 'Six Eight', NULL, 2, 3, NULL, 10000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLARE', 'Flare', NULL, 2, 3, NULL, 1000, NULL, NULL, 10, NULL, 10, 1, 1, 1209600, 1, 0, 1, 1, 0, NULL, 'AMMO_FLARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLAREGUN', 'Flaregun', NULL, 2, 3, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'AMMO_FLAREGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLASHBANG', 'Flashbang', NULL, 2, 4, NULL, 1000, NULL, NULL, 1, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, 'PD_SWAT', 'AMMO_FLASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLASHLIGHT', 'Flashlight', NULL, 2, 1, NULL, 75, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_CZ75', 'SB-69', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_HK416', 'HK416 FM1', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_HONEYBADGER', 'Honey Badger', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_M9A3', 'M9A3', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_P226', 'SB 226', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM2_HK416', 'HK416 FM2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FN509', 'SB-509', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FNX', 'SB 45 Tactical', NULL, 2, 1, NULL, 3200, 'WEAPON_FNX45', NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FNX45', 'SB 45 Tactical', NULL, 2, 1, 'WEAPON_FNX', 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_G36', 'F69', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GLOCK19', 'PD F19', NULL, 2, 3, 'WEAPON_GLOCK19', 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GLOCK19_CIV', 'F19', NULL, 2, 3, 'WEAPON_GLOCK19', 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GOLFCLUB', 'Golf Club', NULL, 2, 1, NULL, 500, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GRENADE', 'Grenade', NULL, 2, 4, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_GRENADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GRENADELAUNCHER_SMOKE', 'S Grenade Launcher', NULL, 2, 3, NULL, 100000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_GRENADELAUNCHER_SMOKE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GUSENBERG', 'Tommy Gun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HAMMER', 'Hammer', NULL, 2, 1, NULL, 500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HATCHET', 'Hatchet', NULL, 2, 1, NULL, 400, NULL, NULL, 18, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', NULL, 2, 2, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYSHOTGUN', 'Assault Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYSNIPER', '.50 Sniper', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYSNIPER_MK2', 'BFG-50A', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HK417', 'HK417', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HKUMP', '.45 SMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 259200, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HKUMP_PD', 'PD .45 SMG', NULL, 2, 3, 'WEAPON_HKUMP', 10000, NULL, NULL, 15, NULL, 0, 1, 1, 259200, 1, 0, 0, 1, 1, 'PD_SMG', 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_KATANAS', 'Katana', NULL, 2, 1, NULL, 2000, NULL, NULL, 3, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'NONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_KNIFE', 'Knife', NULL, 2, 1, NULL, 400, NULL, NULL, 9, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_KNUCKLE', 'Knuckle Dusters', NULL, 2, 2, NULL, 400, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_L5', 'Desert Eagle K8', NULL, 2, 3, 'WEAPON_PISTOL50', 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_LUCILLE', 'Lucille', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_M249', 'M249', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_M45A1', 'M45', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MACHETE', 'Machete', NULL, 2, 2, NULL, 700, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MACHINEPISTOL', 'TEC-9', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', NULL, 2, 3, NULL, 7500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MARKSMANRIFLE', 'F39 MMR', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MARKSMANRIFLE_MK2', 'F39 MMR mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MCXRATTLER', 'MCX Rattler', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MCXSPEAR', 'MCX Spear', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MG', 'PKM', NULL, 2, 3, NULL, 10000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MICROSMG', 'MAC 10', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MINISMG', 'Mini SMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MINIUZI', 'Mini UZI', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK14', 'Mk14 EBR', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK47BANSHEE', 'MK47 Banshee S', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK47BANSHEE2', 'MK47 Banshee A', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK47FM', 'MK47 Mutant', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MOLOTOV', 'Molotov', NULL, 2, 4, NULL, 1000, NULL, NULL, 2, NULL, 5, 1, 0, 604800, 1, 0, 1, 1, 0, NULL, 'AMMO_MOLOTOV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MP5', 'SB54', NULL, 2, 3, 'WEAPON_SMG', 10000, 'WEAPON_MP5', NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MP9A', 'MP9', NULL, 2, 3, NULL, 10000, 'WEAPON_MP9A', NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MPX', 'MP 9mm', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MUSKET', 'Musket', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_NIGHTSTICK', 'Nightstick', NULL, 2, 1, NULL, 1000, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_NSR9', 'NSR9', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_P3200A', 'SB9x19 Custom', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_P320A', 'SB 9x19a', NULL, 2, 2, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_P90FM', 'PDW', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PETROLCAN', 'Petrol Can', NULL, 2, 1, NULL, 150, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 1, 0, 1, 0, NULL, 'AMMO_PETROLCAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', NULL, 2, 4, NULL, 1000, NULL, NULL, 12, NULL, 10, 1, 1, 604800, 1, 0, 1, 1, 0, NULL, 'AMMO_PIPEBOMB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PISTOL', 'Pistol', NULL, 2, 1, NULL, 2000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PISTOL50', 'Desert Eagle', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PISTOL_MK2', 'PD 9MM', NULL, 2, 3, NULL, 2500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PM4', 'M4', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PONY', 'Pony', NULL, 2, 2, NULL, 700, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_POOLCUE', 'Pool Cue', NULL, 2, 1, NULL, 200, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PP19', 'PP-19', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PROXMINE', 'Proximity Mine', NULL, 2, 4, NULL, 1000, NULL, NULL, 12, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_PROXMINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PUMPSHOTGUN_MK2', 'PD Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_REVOLVER', 'Revolver', NULL, 2, 3, NULL, 7000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_REVOLVER_MK2', 'Revolver MK2', NULL, 2, 3, NULL, 7000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_RFB', 'RFB', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_RPG', 'RPG', NULL, 2, 4, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_RPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_RPK16', 'RPK16', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawnoff Shotgun', NULL, 2, 1, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SHIV', 'Shiv', NULL, 2, 1, NULL, 2000, NULL, NULL, 1, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'NONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SHOVEL', 'Shovel', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SLEDGE', 'Sledge Hammer', NULL, 2, 1, NULL, 1000, NULL, NULL, 12, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SMG', 'SMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SMG_MK2', 'SMG Mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SMOKEGRENADE', 'Smoke Grenade', NULL, 2, 3, NULL, 1000, NULL, NULL, 1, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, 'PD_SWAT', 'AMMO_SMOKEGRENADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNIPERRIFLE', '7.62 Sniper', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNIPERRIFLE2', 'Hunting Rifle', NULL, 2, 3, NULL, 1000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNOWBALL', 'Snowball', NULL, 2, 1, NULL, 1000, NULL, NULL, 5, NULL, 0, 1, 0, 86400, 1, 0, 1, 1, 0, NULL, 'AMMO_SNOWBALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNSPISTOL', 'SNS Pistol', NULL, 2, 2, NULL, 3500, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNSPISTOL_MK2', 'SNS Pistol MK2', NULL, 2, 3, NULL, 4500, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SPECIALCARBINE', 'F36D', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SPECIALCARBINE_MK2', 'F36D Mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_STICKYBOMB', 'C4', NULL, 2, 4, NULL, 1000, NULL, NULL, 12, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_STICKYBOMB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_STONE_HATCHET', 'Stone Hatchet', NULL, 2, 1, NULL, 300, NULL, NULL, 12, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SWITCHBLADE', 'Switchblade', NULL, 2, 1, NULL, 400, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SWMP9', 'SB NQ9', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_TASER', 'Taser', NULL, 2, 1, NULL, 200, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'AMMO_STUNGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_UZI', 'Uzi', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_VECTOR', 'Vector', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', NULL, 2, 1, NULL, 5500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_WRENCH', 'Pipe Wrench', NULL, 2, 1, NULL, 400, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('accessory', 'Accessory', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('adv_electronics_kit', 'Hacking Device', '<i>Marked For Police Seizure</i>', 7, 1, NULL, 7500, NULL, NULL, 1, NULL, 5, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('adv_lockpick', 'Advanced Lockpick', NULL, 3, 2, NULL, 600, NULL, NULL, 1, NULL, 20, 1, 1, 2419200, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('amethyst', 'Amethyst', NULL, 11, 2, NULL, 1500, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('apple_crumble', 'Apple Crumble', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('armor', 'Body Armor', NULL, 1, 1, NULL, 750, NULL, NULL, 8, NULL, 5, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"adjust","pbConfig":{"label":"Equipping","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', NULL, NULL, NULL),
	('baconeggbiscuit', 'Bacon & Egg Biscuit', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":15}', NULL),
	('baggy', 'Empty Baggy', NULL, 4, 1, NULL, 50, NULL, NULL, 0, NULL, 100, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('baguette', 'Baguette', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('bahama_mamas', 'Bahama Mamas', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bandage', 'Bandage', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 30, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Bandaging","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"anim":"bandage","time":2000,"dictName":"ifak"}', NULL, NULL, NULL),
	('bavarois', 'Bavarois', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('beanbag', 'A Beanbag', 'So Comfortable', 13, 1, NULL, 700, NULL, NULL, 2, NULL, 0, 1, 1, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('beanmachine', 'The Bean Machine', 'We take beans and put them in machines', 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":15}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('beef', 'Beef', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('beer', 'Beer', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bento_box', 'Bento Box', 'Open Me!', 10, 1, NULL, 4, NULL, NULL, 10, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
	('big_tv', 'Television', 'Potentially Stolen', 6, 1, NULL, 3400, NULL, 'ANIM_bigtv', 100, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('binoculars', 'Binoculars', NULL, 1, 4, NULL, 90, NULL, NULL, 3, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('birthday_cake', 'Birthday Cake', 'Happy Birthday', 5, 4, NULL, 240, NULL, NULL, 2, NULL, 1, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["3","3","3","3","3","3","3","3"]}', NULL),
	('blindfold', 'Blindfold', NULL, 13, 1, NULL, 2, NULL, NULL, 1, NULL, 0, 1, 0, 4320000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bloody_mary', 'Bloody Mary', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blue_dongle', 'USB Drive (Blue)', '<i>Marked For Police Seizure</i>', 3, 3, NULL, 10000, NULL, 'DONGLE_BLUE', 1, NULL, 0, 0, 1, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blue_laptop', 'Laptop (Blue)', '<i>Marked For Police Seizure</i>', 3, 3, NULL, 10000, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blue_sequencer', 'Blue Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 10000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blueberry_muffin', 'Blueberry Muffin', NULL, 1, 1, NULL, 105, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":50}}', '{"stressTicks":["2","2","1","1","1"]}', NULL),
	('boar_bait', 'Boar Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bobcat_charge', 'Breach Charge', 'Kinda like thermite, but more ... explosive', 7, 3, 'thermite', 1000, NULL, NULL, 3, NULL, 0, 1, 1, 3600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bobcat_tracker', 'GPS Tracker', NULL, 7, 4, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('booba_tea', 'Bobba Tea', NULL, 1, 1, NULL, 125, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking Tea","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":100}}', '{"progressModifier":{"min":2,"modifier":60,"max":4}}', NULL),
	('boombox', 'Boom Box', 'Potentially Stolen', 6, 1, NULL, 300, NULL, 'ANIM_boombox', 50, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('boosting_tracking_disabler', 'Tracker Hacker Device', '<i>Marked For Police Seizure</i>', 7, 1, NULL, 7500, NULL, NULL, 1, NULL, 5, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bowling_ball', 'Bowling Ball', NULL, 7, 4, NULL, 0, NULL, 'ANIM_bowling_ball', 50, NULL, 0, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('briefcase_cash', 'Briefcase', 'Sandbox Lotto Event', 1, 4, NULL, 25000, NULL, NULL, 1, NULL, 0, 1, 0, 864000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bun', 'Hamburger Bun', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('burger', 'The Bleeder', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_bleeder","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":70}}', NULL, NULL),
	('burgershot_bag', 'Burgershot Bag', 'Have a Murder Meal!', 10, 1, NULL, 6, NULL, NULL, 10, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
	('burgershot_cup', 'BS Cup', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('burgershot_drink', 'Burger Shot Drink', NULL, 1, 1, NULL, 10, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_drink","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Remove":{"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":75}}', NULL, NULL),
	('burgershot_fries', 'Fries', NULL, 1, 1, NULL, 15, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_fries","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":60}}', NULL, NULL),
	('buttplug_black', 'Butt Plug', 'Part of the Uranus Butt Plug Corporation.', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('buttplug_pink', 'Butt Plug', 'Part of the Uranus Butt Plug Corporation.', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('camera', 'Camera', NULL, 1, 4, NULL, 200, NULL, NULL, 3, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('camping_chair', 'Foldable Chair', NULL, 13, 1, NULL, 400, NULL, NULL, 2, NULL, 0, 1, 1, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('car_bomb', 'Car Bomb', NULL, 3, 3, NULL, 1500, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('carclean', 'Car Cleaning Kit', 'Make your car squeaky clean!', 3, 1, NULL, 425, NULL, NULL, 5, NULL, 100, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('card_holder', 'Card Holder', 'Store Those Cards!', 10, 1, NULL, 3, NULL, NULL, 2, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL),
	('cardboard_box', 'Box', 'Open Me!', 10, 1, NULL, 8, NULL, 'ANIM_box', 50, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL),
	('carpolish', 'Car Polish', 'Stop your car getting dirty!', 3, 1, NULL, 275, NULL, NULL, 2, NULL, 100, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('carpolish_high', 'Fantastic Car Wax', 'Stop your car getting dirty and keep it sqeaky clean!', 3, 2, NULL, 375, NULL, NULL, 2, NULL, 100, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('carrot_cake', 'Carrot Cake', 'A Lovely Comforting Cake', 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["3","3","3","3","3","3","3","3"]}', NULL),
	('case_black', 'Phone Case: Black', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"black"}', NULL),
	('case_blue', 'Phone Case: Blue', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"blue"}', NULL),
	('case_gold', 'Phone Case: Gold', NULL, 1, 1, NULL, 25000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"gold"}', NULL),
	('case_pink', 'Phone Case: Pink', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"pink"}', NULL),
	('case_white', 'Phone Case: White', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"white"}', NULL),
	('cat_cupcake', 'Cat Cupcake', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"donut","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Ignore":{"PLAYER_STRESS":10},"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('cat_donut', 'Cat Donut', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"donut","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Ignore":{"PLAYER_STRESS":10},"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('cat_tuccino', 'Cat Tuccino', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":15}}', '{"progressModifier":{"min":6,"modifier":40,"max":10}}', NULL),
	('chain', 'Gold Chain', 'Potentially Stolen', 6, 1, NULL, 215, NULL, NULL, 1, NULL, 50, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('charlotte', 'Charlotte', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","1","1","1","3"]}', NULL),
	('cheese', 'Bag of Cheese', NULL, 4, 1, NULL, 4, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cheeseburger', 'Cheese Burger', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Remove":{"PLAYER_THIRST":3},"Add":{"PLAYER_HUNGER":15}}', NULL, NULL),
	('chicken', 'Chicken', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('chicken_bait', 'Chicken Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('chicken_wrap', 'Chicken Wrap', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_wrap2","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","2","3","4","5"]}', NULL),
	('chickenfriedsteak', 'Chicken Fried Steak', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('chickenpotpie', 'Chicken Pot Pie', 'A truly hearty meal', 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"healthModifier":15,"stressTicks":["6","6","6"]}', NULL),
	('chips', 'Chips', NULL, 1, 1, NULL, 30, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":55}}', NULL, NULL),
	('choclat_eclair', 'Chocolate Eclair', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","1","1","1","3"]}', NULL),
	('choclate_pancakes', 'Chocolate Pancakes', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('chocolate_bar', 'Chocolate Bar', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"egobar","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":10}}', NULL, NULL),
	('chocolate_shake', 'Chocolate Shake', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_THIRST":80,"PLAYER_HUNGER":20}}', '{"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true},"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('chocy_muff', 'Chocolate Muffin', NULL, 1, 1, NULL, 105, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":50}}', '{"stressTicks":["2","2","1","1","1"]}', NULL),
	('choplist', 'LSUNDG Shopping List', 'Personal list just for you, how special', 14, 4, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('choux', 'Choux Pastry', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","1","1","1","3"]}', NULL),
	('cigarette', 'Cigarette', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 30, 1, 1, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"animation":{"anim":"smoke_cigarette"},"label":"Smoking","disableMouse":false,"disarm":false,"disableCombat":false,"disableMovement":false,"canCancel":false,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', NULL, NULL, NULL),
	('cigarette_pack', 'Pack of Cigarettes', NULL, 1, 1, NULL, 20, NULL, NULL, 5, NULL, 0, 1, 1, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Unpacking","disableMouse":false,"disarm":false,"disableCombat":false,"disableMovement":false,"ignoreModifier":true,"canCancel":false,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":2000}', NULL, NULL, NULL),
	('citrine', 'Citrine', NULL, 11, 2, NULL, 1500, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cloth', 'Cloth', NULL, 6, 1, NULL, 4, NULL, NULL, 0, NULL, 1000, 0, 0, 2592000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('coconut_milk', 'Coconut Milk', NULL, 4, 1, NULL, 3, NULL, NULL, 1, NULL, 100, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('coffee', 'Coffee', NULL, 1, 1, NULL, 295, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_THIRST":15}}', '{"progressModifier":{"min":2,"modifier":70,"max":4}}', NULL),
	('coffee_beans', 'Coffee Beans', NULL, 1, 1, NULL, 7, NULL, NULL, 0, NULL, 300, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('coffee_holder', 'Drinks Holder', 'Open Me!', 10, 1, NULL, 3, NULL, NULL, 8, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL),
	('coke_bag', 'Cocaine', NULL, 12, 1, NULL, 400, NULL, NULL, 0, NULL, 25, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Remove":{"PLAYER_THIRST":5}}', '{"drugState":{"duration":3600,"type":"meth"}}', NULL),
	('coke_brick', 'Brick of Cocaine', NULL, 12, 1, NULL, 60, NULL, NULL, 5, NULL, 0, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('contraband', 'Mysterious Box', NULL, 14, 5, NULL, 1000, NULL, 'ANIM_box', 10, NULL, 0, 0, 0, 86400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('copperwire', 'Copper Wire', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cow_bait', 'Cow Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('crisp', 'Crisps', 'Yeah, that\'s right. Crisps', 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":20}}', NULL, NULL),
	('croissant', 'Croissant', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":10},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('crushedrock', 'Crushed Rock', NULL, 6, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('crypto_voucher', 'Crypto Voucher', NULL, 7, 4, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cucumber', 'Cucumber', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('deer_bait', 'Deer Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('diamond', 'Diamond', NULL, 11, 4, NULL, 3000, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('diamond_drink', 'The Diamond Cocktail', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('diamond_vip', 'Diamond VIP', NULL, 5, 3, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('donut', 'Donut', NULL, 1, 1, NULL, 105, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"donut","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":15}}', '{"energyModifier":{"modifier":1.1,"duration":3,"cooldown":80},"stressTicks":["1","1","1","1","3"]}', NULL),
	('donut_stack', 'Stack of Donuts', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":80}}', '{"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true},"stressTicks":["3","3","3","3","3"]}', NULL),
	('double_shot_burger', 'Double Shot', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_doubleshot","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('dough', 'Dough', NULL, 4, 1, NULL, 3, NULL, NULL, 0, NULL, 200, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('drill', 'Drill', NULL, 7, 1, NULL, 5000, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('earrings', 'Gold Earrings', 'Potentially Stolen', 6, 1, NULL, 185, NULL, NULL, 1, NULL, 100, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('eggs', 'Eggs', NULL, 4, 1, NULL, 2, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('electronic_parts', 'Electronic Parts', NULL, 4, 1, NULL, 250, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('electronics_kit', 'Electronics Kit', NULL, 7, 1, NULL, 7500, NULL, NULL, 1, NULL, 5, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('emerald', 'Emerald', NULL, 11, 4, NULL, 3000, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('energy_pepe', 'Energy Drink', NULL, 1, 1, NULL, 110, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"energydrink","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":6000}', '{"Add":{"PLAYER_THIRST":15}}', '{"energyModifier":{"modifier":1.15,"duration":4,"cooldown":60}}', NULL),
	('evidence-casing', 'Bullet Casing', 'Identifies the type of ammo used', 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('evidence-dna', 'DNA Sample', NULL, 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('evidence-paint', 'Paint Fragment', NULL, 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('evidence-projectile', 'Bullet Projectile', 'Can be matched to the weapon it was fired from', 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('exotic_bait', 'Exotic Bait', NULL, 7, 5, 'hunting_bait', 1000, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('expresso', 'Espresso', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee_expresso","pbConfig":{"label":"Drinking Espresso","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":6,"modifier":50,"max":10}}', NULL),
	('fakeplates', 'License Plates', 'A set of license plates from a vehicle', 3, 3, NULL, 5000, NULL, NULL, 2, NULL, 0, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fertilizer_nitrogen', 'Fertilizer (Nitrogen)', 'Nitrogen rich fertilizer improves viability of output when the plant is harvested.', 1, 1, NULL, 600, NULL, NULL, 3, NULL, 50, 1, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fertilizer_phosphorus', 'Fertilizer (Phosphorus)', 'Phosphorus rich fertilizer helps increase plant growth speed.', 1, 1, NULL, 600, NULL, NULL, 3, NULL, 50, 1, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fertilizer_potassium', 'Fertilizer (Potassium)', 'Potassium rich fertilizer helps keep plants hydrated.', 1, 1, NULL, 600, NULL, NULL, 3, NULL, 50, 1, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fettuccini_alfredo', 'Fettuccini Alfredo', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('firstaid', 'First Aid Kit', NULL, 1, 2, NULL, 250, NULL, NULL, 5, NULL, 5, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"firstaid","pbConfig":{"label":"Using First Aid Kit","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', NULL, NULL, NULL),
	('fishandchips', 'Fish and Chips', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Add":{"PLAYER_HUNGER":80}}', NULL, NULL),
	('fishing_bait_lugworm', 'Lugworm Bait', 'Marine Fish Bait', 7, 1, NULL, 10, NULL, NULL, 0, NULL, 50, 0, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bait_worm', 'Worm Bait', 'Fresh Water Fish Bait', 7, 1, NULL, 15, NULL, NULL, 0, NULL, 50, 0, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bass', 'Bass Fish', 'A fish found in the ocean', 4, 2, NULL, 70, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bike', 'Rusty Bicycle', 'I don\'t think this is worth anything', 6, 2, NULL, 250, NULL, NULL, 25, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bluefintuna', 'Bluefin Tuna', NULL, 4, 3, NULL, 0, NULL, NULL, 4, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_boot', 'Soggy Boot', 'I think someone is missing a boot', 6, 3, NULL, 250, NULL, NULL, 5, NULL, 2, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_chest', 'Old Chest', 'Maybe There is Treasure!', 5, 4, NULL, 1500, NULL, 'ANIM_chest', 50, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_chub', 'Chub', 'A fish found in fresh water', 4, 2, NULL, 40, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_dolphin', 'A Dolphin', NULL, 4, 4, NULL, 0, NULL, NULL, 50, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_grasscarp', 'Grass Carp', 'A fish found in fresh water', 4, 2, NULL, 40, NULL, NULL, 1, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_kelp', 'Kelp Fish', 'A fish found in the ocean', 4, 2, NULL, 50, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_lobster', 'Lobster', 'It\'s a lobster', 4, 2, NULL, 0, NULL, NULL, 1, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_net', 'Fishing Net', 'Catch all the Fishies', 3, 2, NULL, 3000, NULL, NULL, 5, NULL, 0, 1, 1, 5184000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_oil', 'Fish Oil', 'Eww', 5, 4, NULL, 175, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_rainbowtrout', 'Rainbow Trout', 'A fish found in fresh water', 4, 2, NULL, 60, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_rockfish', 'Rock Fish', 'A fish found in the ocean', 4, 2, NULL, 70, NULL, NULL, 1, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_rod', 'Fishing Rod', 'Catch the Fishies', 3, 1, NULL, 900, NULL, NULL, 4, NULL, 0, 1, 1, 2592000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_seaweed', 'Seaweed', 'A salty snack', 4, 2, NULL, 30, NULL, NULL, 0, NULL, 250, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_shark', 'A Shark', NULL, 4, 4, NULL, 0, NULL, NULL, 75, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_tuna', 'Tuna', NULL, 4, 2, NULL, 0, NULL, NULL, 3, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_whale', 'A Whale', NULL, 4, 4, NULL, 0, NULL, NULL, 100, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fleeca_card', 'Disposable Access Card', 'This seems like it may be usefull', 14, 4, NULL, 10000, NULL, NULL, 0, NULL, 0, 1, 0, 21600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fleeca_tracker', 'GPS Tracker', NULL, 7, 4, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('flour', 'Bag of Flour', NULL, 4, 1, NULL, 2, NULL, NULL, 1, NULL, 60, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fluffyhandcuffs', 'Fluffy Handcuffs', NULL, 3, 1, NULL, 600, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('foodbag', 'Carrier Bag', 'Open Me!', 10, 1, NULL, 4, NULL, NULL, 15, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
	('fresh_lemonade', 'Fresh Lemonade', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":40,"PLAYER_HUNGER":5}}', '{"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true}}', NULL),
	('fries', 'Fries', NULL, 1, 1, NULL, 15, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_fries","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":30}}', NULL, NULL),
	('frosty_chain', 'Frosty Chain', 'Frosty Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"frosty"}', NULL),
	('frozen_yoghurt', 'Frozen Yoghurt', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":40}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":6,"skipScreenEffects":true}}', NULL),
	('fruit_explosion', 'Fruit Explosion', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":30,"PLAYER_THIRST":100}}', '{"energyModifier":{"cooldown":30,"modifier":1.2,"duration":4,"skipScreenEffects":true}}', NULL),
	('gascan', 'Gas Can', NULL, 1, 2, NULL, 25, NULL, NULL, 1, NULL, 5, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"redd","pbConfig":{"label":"Drinking Gasoline","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Remove":{"PLAYER_THIRST":70}}', NULL, NULL),
	('gauze', 'Gauze', NULL, 1, 1, NULL, 10, NULL, NULL, 0, NULL, 30, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Packing Wound","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"anim":"bandage","time":2000,"dictName":"gauze"}', NULL, NULL, NULL),
	('ginger', 'Ginger', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gingerale', 'Gingerale', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"soda","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Remove":{"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":35}}', NULL, NULL),
	('glass_cock', 'Coke', 'Glass of Cock', 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":60,"PLAYER_HUNGER":5}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":5,"skipScreenEffects":true}}', NULL),
	('glue', 'Glue', NULL, 4, 1, NULL, 150, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('goat_cheese_wrap', 'Goat Cheese Wrap', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_wrap1","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","2","3","4","5"]}', NULL),
	('goldbar', 'Gold Bar', NULL, 4, 3, NULL, 500, NULL, NULL, 0, NULL, 10000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('goldcoins', 'Gold Coins', 'Potentially Stolen', 6, 1, NULL, 90, NULL, NULL, 0, NULL, 1000, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('goldore', 'Gold Ore', NULL, 6, 3, NULL, 0, NULL, NULL, 0, NULL, 200, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('golfclubs', 'Golf Club Set', NULL, 6, 2, NULL, 450, NULL, 'ANIM_golfclubs', 100, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gotti_chain', 'Gotti Family Chain', 'Gotti Family Chain', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"gotti"}', NULL),
	('government_badge', 'Badge', 'Government Issued Badge', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('govid', 'Government ID', NULL, 5, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gps', 'SB NavMaster', NULL, 7, 1, NULL, 5000, NULL, 'GPS', 1, NULL, 0, 0, 0, 1814400, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gps_tracker', 'GPS Tracker', NULL, 7, 4, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('grain', 'Grain', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_dongle', 'USB Drive (Green)', '<i>Marked For Police Seizure</i>', 3, 2, NULL, 5000, NULL, 'DONGLE_GREEN', 1, NULL, 0, 0, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_laptop', 'Laptop (Green)', '<i>Marked For Police Seizure</i>', 3, 2, NULL, 5000, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_sequencer', 'Green Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 5000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_tea', 'Green Tea', NULL, 1, 1, NULL, 125, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Tea","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Remove":{"PLAYER_DRUNK":10},"Add":{"PLAYER_THIRST":75}}', '{"progressModifier":{"min":1,"modifier":50,"max":2},"stressTicks":["5","4","3","2","1"]}', NULL),
	('guksu', 'Guksu', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('gunpowder', 'Gun Powder', NULL, 4, 1, NULL, 1000, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hack_usb', 'Easy Hacker 3000', 'So easy, a caveman could maybe do it.', 7, 1, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('handcuffs', 'Handcuffs', NULL, 3, 1, NULL, 600, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('harness', 'Vehicle Harness', 'Stop flying to the moon!', 3, 2, NULL, 1150, NULL, NULL, 3, NULL, 0, 1, 1, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hat', 'Hat', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('heartstopper', 'Heart Stopper', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_heartstopper","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":12},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('heavy_glue', 'Heavy Duty Glue', NULL, 4, 1, NULL, 200, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('heavyarmor', 'Heavy Body Armor', NULL, 1, 2, NULL, 2250, NULL, NULL, 8, NULL, 5, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"adjust","pbConfig":{"label":"Equipping","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', NULL, NULL, NULL),
	('hide_tier1', 'Animal Hide (Tier 1)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hide_tier2', 'Animal Hide (Tier 2)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hide_tier3', 'Animal Hide (Tier 3)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hide_tier4', 'Animal Hide (Tier 4)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hobs', 'Hobs', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('homemade_cookie', 'Homemade Cookie', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":50}}', NULL, NULL),
	('hotdog', 'Hotdog', 'A dog but very hot', 1, 1, NULL, 20, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"hotdog","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Remove":{"PLAYER_THIRST":3},"Add":{"PLAYER_HUNGER":10}}', NULL, NULL),
	('hotdog_single', 'Hotdog Single', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('house_art', 'Painting', NULL, 6, 2, NULL, 3600, NULL, 'ANIM_house_art', 100, NULL, 1, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hunting_bait', 'Hunting Bait', NULL, 7, 5, NULL, 25, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hunting_map_dark', 'Hunting Map (Dark)', NULL, 5, 1, NULL, 25, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hunting_map_light', 'Hunting Map (Light)', NULL, 5, 1, NULL, 25, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('iced_coffee', 'Iced Coffee', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":8,"modifier":75,"max":12}}', NULL),
	('icing', 'Icing', NULL, 4, 1, NULL, 3, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ifak', 'IFAK', NULL, 1, 3, NULL, 200, NULL, NULL, 3, NULL, 5, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"ifak","pbConfig":{"label":"Using IFAK","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', NULL, NULL, NULL),
	('ironbar', 'Iron Bar', NULL, 4, 1, NULL, 2500, NULL, NULL, 0, NULL, 10000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ironore', 'Iron Ore', NULL, 6, 3, NULL, 0, NULL, NULL, 0, NULL, 200, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('jaeger', 'Jägermeister', NULL, 1, 1, NULL, 150, NULL, NULL, 0, NULL, 10, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('jaeger_bomb', 'Jägerbomb', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('japanese_pan_noodles', 'Japanese Pan Noodles', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":12},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('keg', 'Keg of Irish Stout', 'McDougle\'s Irish Stout™', 4, 1, NULL, 150, NULL, NULL, 2, NULL, 5, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('laptop', 'Laptop', NULL, 7, 2, NULL, 1250, NULL, 'LAPTOP', 4, NULL, 0, 1, 1, 2592000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lasagna', 'Lasagna', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":12},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('latte', 'Latte', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Latte","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":6,"modifier":40,"max":10}}', NULL),
	('lemonade', 'Lemonade', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":40,"PLAYER_HUNGER":5}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":6,"skipScreenEffects":true}}', NULL),
	('lettuce', 'Lettuce', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('loaf', 'Bread Loaf', NULL, 4, 1, NULL, 4, NULL, NULL, 1, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lockpick', 'Lockpick', NULL, 3, 2, NULL, 200, NULL, NULL, 1, NULL, 50, 1, 1, 1209600, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lockpick_pd', 'PD Lockpick', 'Only Usable By Police', 3, 1, 'lockpick', 200, NULL, NULL, 1, NULL, 10, 1, 1, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lsundg_invite', 'LSUNDG Invitation', 'Gain access to an exclusive club, wow aren\'t you special', 7, 4, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('maki_calirolls', 'San Andreas Maki', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"healthModifier":15}', NULL),
	('maki_tuna', 'Tuna Rolls', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"healthModifier":15,"armourModifier":10}', NULL),
	('margherita_pizza', 'Margherita Pizza', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"pizza","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":90}}', '{"healthModifier":10}', NULL),
	('mask', 'Mask', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('matcha_latte', 'Matcha Latte', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Latte","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":50}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('medicalkit', 'Medical Kit', 'Used to treat patients. Only usable by Doctors', 1, 1, NULL, 1000, NULL, NULL, 3, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('megaphone', 'Megaphone', 'Yell insults at people but from a longer distance', 3, 2, NULL, 1500, NULL, 'MEGAPHONE', 2, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meteorite_icecream', 'Meteorite Ice Cream', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_icecream","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_THIRST":50,"PLAYER_HUNGER":50}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":2,"skipScreenEffects":true}}', NULL),
	('meth_bag', 'Meth', NULL, 12, 1, NULL, 400, NULL, NULL, 0, NULL, 25, 1, 0, 1728000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meth_brick', 'Brick of Meth', NULL, 12, 1, NULL, 60, NULL, NULL, 5, NULL, 0, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meth_pipe', 'Meth Pipe', NULL, 12, 1, NULL, 1000, NULL, NULL, 1, NULL, 0, 1, 0, 2592000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meth_table', 'Meth Table', NULL, 3, 2, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('microwave', 'Microwave', 'Potentially Stolen', 6, 1, NULL, 500, NULL, 'ANIM_microwave', 50, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('milk_can', 'Milk Canister', NULL, 4, 1, NULL, 4, NULL, NULL, 2, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('milk_chain', 'Milk Chain', 'Milk Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"milk"}', NULL),
	('milkshake', 'Explosive Shake', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_THIRST":80,"PLAYER_HUNGER":20}}', '{"armourModifier":10,"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true}}', NULL),
	('million_shrtbread', 'Millionare Shortbread', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":80}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":6,"skipScreenEffects":true}}', NULL),
	('mint_mate_chain', 'Mint Mate Chain', 'It\'s Mint Mate', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"mint_mate"}', NULL),
	('mint_mate_chain_2', 'Mint Mate Chain (Large)', 'It\'s Mint Mate ... but large', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"mint_mate2"}', NULL),
	('mocha_shake', 'Mocha Shake', 'Go Crazy', 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Shake","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_HUNGER":10,"PLAYER_THIRST":50}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('moneybag', 'Bag of Cash', NULL, 14, 1, NULL, 10000, NULL, NULL, 3, NULL, 0, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('moneyband', 'Bands of Cash', NULL, 14, 1, NULL, 1000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('moneyroll', 'Cash Roll', NULL, 14, 1, NULL, 100, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('morphine', 'Morphine', NULL, 1, 1, NULL, 600, NULL, NULL, 1, NULL, 3, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Administering Morphine","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":true,"canCancel":true,"disableCarMovement":true,"vehicle":false,"useWhileDead":false},"anim":"bandage","time":8000,"dictName":"morphine"}', NULL, NULL, NULL),
	('nails', 'Nails', NULL, 6, 1, NULL, 2, NULL, NULL, 0, NULL, 1000, 0, 0, 2592000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('nitrous', 'Nitrous Oxide', 'Copium', 3, 3, NULL, 2000, NULL, NULL, 3, NULL, 5, 1, 1, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '{"Nitrous":100}', NULL, NULL, NULL, NULL, NULL),
	('onion_rings', 'Onion Rings', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":30}}', '{"stressTicks":["3","3","3","3","3"]}', NULL),
	('opal', 'Opal', NULL, 11, 1, NULL, 500, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('orange', 'Orange', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('orangotang_icecream', 'Orangotang Ice Cream', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_icecream2","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_THIRST":50,"PLAYER_HUNGER":50}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":2,"skipScreenEffects":true}}', NULL),
	('oxy', 'OxyContin', NULL, 12, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 1728000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"animation":{"animDict":"mp_suicide","anim":"pill","flags":50},"label":"Popping Oxy","disableMouse":false,"disarm":false,"disableCombat":false,"disableMovement":false,"ignoreModifier":true,"canCancel":false,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":2800}', '{"Remove":{"PLAYER_THIRST":3}}', '{"drugState":{"duration":3600,"type":"oxy"}}', NULL),
	('packaged_parts', 'Packaged Parts', NULL, 7, 5, NULL, 0, NULL, NULL, 4, NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pad_thai', 'Pad Thai', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('paleto_access_codes', 'Access Codes', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 1, 14400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('paper_bag', 'Bag', 'Open Me!', 10, 1, NULL, 6, NULL, NULL, 10, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
	('parachute', 'Parachute', NULL, 3, 2, NULL, 1000, NULL, NULL, 5, NULL, 0, 1, 0, 604800, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('parts_box', 'Scrap Box', NULL, 1, 3, NULL, 250, NULL, 'ANIM_box', 10, NULL, 0, 1, 0, 604800, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pasta_fresca', 'Pasta Fresca', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Add":{"PLAYER_HUNGER":80}}', NULL, NULL),
	('patty', 'Hamburger Patty', NULL, 1, 1, NULL, 10, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pc', 'PC', NULL, 6, 2, NULL, 1200, NULL, 'ANIM_pc', 80, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pdarmor', 'PD Body Armor', NULL, 1, 3, NULL, 25, NULL, NULL, 8, NULL, 5, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"adjust","pbConfig":{"label":"Equipping","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', NULL, NULL, NULL),
	('pdhandcuffs', 'PD Handcuffs', NULL, 3, 4, NULL, 25, NULL, NULL, 0, NULL, 0, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('peach_juice', 'Peach Juice', NULL, 4, 1, NULL, 2, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('peas', 'Peas', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('penna_rosa', 'Penne Rosa', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Add":{"PLAYER_HUNGER":85}}', NULL, NULL),
	('pepperoni_pizza', 'Pepperoni Pizza', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"pizza","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":20}', NULL),
	('personal_plates', 'Personal Plate', 'Set a personal plate for a vehicle.', 3, 3, NULL, 5000, NULL, NULL, 1, NULL, 10, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('personal_plates_donator', 'Personal Plate', 'Set a personal plate for a vehicle.', 3, 3, 'personal_plates', 5000, NULL, NULL, 1, NULL, 10, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pesto_cavatappi', 'Pesto Cavatappi', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":17000}', '{"Add":{"PLAYER_HUNGER":75}}', NULL, NULL),
	('petrock', 'Pet Rock', 'Please take care of me', 5, 4, NULL, 10, NULL, NULL, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('phone', 'Phone', NULL, 7, 1, NULL, 100, NULL, 'PHONE', 1, NULL, 0, 1, 0, 1814400, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pickaxe', 'Pickaxe', NULL, 3, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, 86400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pickle', 'Pickle', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pig_bait', 'Pig Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pina_colada', 'Pina Colada', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pineapple', 'Pineapple', NULL, 4, 1, NULL, 1, NULL, NULL, 1, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pint_mcdougles', 'McDougle\'s Stout', 'McDougle\'s Irish Stout™', 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 604800, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pipe', 'Pipe', NULL, 6, 1, NULL, 12, NULL, NULL, 0, NULL, 100, 0, 0, 2592000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pixels_chain', 'Business Bureau Chain', 'Business Bureau Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"lua"}', NULL),
	('plastic', 'Plastic', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('plastic_cup', 'Plastic Cup', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('plastic_wrap', 'Plastic Wrap', NULL, 4, 1, NULL, 50, NULL, NULL, 0, NULL, 5, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('popcorn', 'Popcorn', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"popcorn","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Remove":{"PLAYER_THIRST":3},"Add":{"PLAYER_HUNGER":20}}', NULL, NULL),
	('popcorn_bucket', 'Empty Bucket', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('popcorn_kernal', 'Popcorn Kernal', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pork', 'Pork', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('potato', 'Potato', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('prickly_burger', 'The Prickly', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_prickly","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('prison_drink', 'Prison Drink', NULL, 1, 1, NULL, 5, NULL, NULL, 1, NULL, 15, 1, 0, 86400, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"soda","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_THIRST":100}}', NULL, NULL),
	('prison_food', 'Prison Food', NULL, 1, 1, NULL, 5, NULL, NULL, 1, NULL, 15, 1, 0, 86400, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('pumpkinspiced_latte', 'Pumpkin Spice Latte', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('purple_dongle', 'USB Drive (Purple)', '<i>Marked For Police Seizure</i>', 3, 2, NULL, 5000, NULL, 'DONGLE_PURPLE', 1, NULL, 0, 0, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('purple_laptop', 'Laptop (Purple)', '<i>Marked For Police Seizure</i>', 3, 3, NULL, 10000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rabbit', 'Rabbit', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rabbit_bait', 'Rabbit Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('racedongle', 'Phone Dongle', 'Its a dongly boi', 7, 4, NULL, 0, NULL, 'RACE_DONGLE', 3, NULL, 0, 1, 0, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('racing_crappy', 'Homemade Phone Dongle', 'Its a really shitty dongly boi', 7, 4, NULL, 0, NULL, 'RACE_DONGLE', 1, NULL, 0, 1, 0, 43200, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('radio', 'Encrypted Radio', 'Encrypted Communication Device for Emergency Services', 3, 2, NULL, 725, NULL, 'RADIO_ENCRYPTED', 1, NULL, 0, 1, 0, 5184000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('radio_extendo', 'B0085 Radio', 'Used for Slightly Longer Range Communication', 3, 3, NULL, 10000, NULL, 'RADIO_EXTENDO', 1, NULL, 0, 1, 0, 1814400, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('radio_shitty', 'P6900 Radio', 'High Frequency Used for Short Range Communication', 3, 1, NULL, 2500, NULL, 'RADIO_CIV', 1, NULL, 0, 1, 0, 1814400, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('raspberry', 'Raspberry', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('raspberry_liqueur', 'Raspberry Liqueur', NULL, 4, 1, NULL, 5, NULL, NULL, 0, NULL, 30, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('raspberry_mimosa', 'Raspberry Mimosa', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ravioli', 'Ravioli', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('recycledgoods', 'Recycled Goods', NULL, 6, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('red_dongle', 'USB Drive (Red)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 25000, NULL, 'DONGLE_RED', 1, NULL, 0, 0, 1, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('red_laptop', 'Laptop (Red)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 25000, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('red_sequencer', 'Red Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 25000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('redlight', 'Handheld Light', NULL, 7, 2, NULL, 1000, NULL, NULL, 2, NULL, 0, 1, 1, 2592000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_copper', 'Refined Copper', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_electronics', 'Advanced Electronic Parts', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_glue', 'Refined Glue', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_iron', 'Refined Iron', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_metal', 'Refined Aluminum', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_plastic', 'Refined Plasic', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_rubber', 'Refined Rubber', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rental_papers', 'Rental Papers', 'Documents that prove who rented a vehicle.', 6, 1, NULL, 0, NULL, NULL, 1, NULL, 0, 0, 0, 86400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rep_voucher', 'Rep Voucher', NULL, 7, 4, 'crypto_voucher', 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_axle', 'Axle Parts', 'Vehicle Axle Parts', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_brakes', 'Brakes', 'Vehicle Brakes', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_brakes_hg', 'HG Brakes', '(High Grade) Vehicle Brakes', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_clutch', 'Clutch', 'Vehicle Clutch', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_clutch_hg', 'HG Clutch', '(High Grade) Vehicle Clutch', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_electronics', 'Vehicle Electronics', 'Vehicle Electronic Parts', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_injectors', 'Fuel Injectors', 'Vehicle Fuel Injectors', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_injectors_hg', 'HG Fuel Injectors', '(High Grade) Vehicle Fuel Injectors', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_rad', 'Radiator', 'Vehicle Radiator', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_rad_hg', 'HG Radiator', '(High Grade) Vehicle Radiator', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_transmission', 'Transmission Parts', 'Vehicle Transmission', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_transmission_hg', 'HG Transmission Parts', '(High Grade) Vehicle Transmission Parts', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repairkit', 'Repair Kit', 'Fixes a vehicles engine so it can be driven again.', 3, 1, NULL, 350, NULL, NULL, 10, NULL, 4, 1, 1, 604800, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repairkitadv', 'Advanced Repair Kit', 'Fixes a vehicles engine and tires so it can be driven again.', 3, 2, NULL, 600, NULL, NULL, 15, NULL, 2, 1, 1, 1209600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rice', 'Bag of Rice', NULL, 4, 1, NULL, 5, NULL, NULL, 1, NULL, 60, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ring', 'Ring', 'Potentially Stolen', 6, 1, NULL, 185, NULL, NULL, 1, NULL, 100, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rolex', 'Rolex', 'Potentially Stolen', 6, 2, NULL, 500, NULL, NULL, 1, NULL, 50, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rolling_paper', 'Rolling Paper', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 30, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rootbeerfloat', 'Root Beer Float', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Remove":{"PLAYER_STRESS":10},"Add":{"PLAYER_THIRST":90,"PLAYER_HUNGER":10}}', NULL, NULL),
	('rubber', 'Rubber', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ruby', 'Ruby', NULL, 11, 3, NULL, 2250, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rum', 'Rum', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('safecrack_kit', 'Safe Cracking Kit', '<i>Marked For Police Seizure</i>', 7, 1, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('saint_chain', 'Saint Chain', 'Saint Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"saint"}', NULL),
	('salad', 'Salad', NULL, 1, 1, NULL, 150, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":50}}', '{"healthModifier":7}', NULL),
	('salisbury_steak', 'Salisbury Steak', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"healthModifier":15,"stressTicks":["6","6","6"]}', NULL),
	('salvagedparts', 'Salvaged Parts', NULL, 6, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('san_manzano_pizza', 'San Manzano Pizza', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"pizza","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":25}', NULL),
	('sandwich', 'Ham Sandwich', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":15}}', NULL, NULL),
	('sandwich_beef', 'Beef Sandwich', NULL, 1, 1, NULL, 6, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":42}}', NULL, NULL),
	('sandwich_blt', 'BLT Sandwich', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":45}}', NULL, NULL),
	('sandwich_chips', 'Chip Butty', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('sandwich_crisp', 'Crisp Sandwich', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":30}}', NULL, NULL),
	('sandwich_egg', 'Egg Sandwich', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":35}}', NULL, NULL),
	('sandwich_turkey', 'Turkey Sandwich', NULL, 1, 1, NULL, 4, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('sapphire', 'Sapphire', NULL, 11, 3, NULL, 2250, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sashimi_mix', 'Sashimi Mix', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"healthModifier":15,"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('sausageroll', 'Sausage Roll', NULL, 1, 1, NULL, 15, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('schematic_2011', 'Schematic: 2011 Tactical', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tact2011'),
	('schematic_57', 'Schematic: Six Eight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fiveseven'),
	('schematic_adv_ar_suppressor', 'Schematic: Adv. AR Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv_ar_suppressor'),
	('schematic_adv_pistol_suppressor', 'Schematic: Adv. Pistol Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv_pistol_suppressor'),
	('schematic_adv_smg_suppressor', 'Schematic: Adv. SMG Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv_smg_suppressor'),
	('schematic_advrifle', 'Schematic: Adv. Rifle', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'advrifle'),
	('schematic_ak74', 'Schematic: AK-74', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ak74'),
	('schematic_appistol', 'Schematic: F18 Auto', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'appistol'),
	('schematic_ar', 'Schematic: AK-47', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar'),
	('schematic_ar15', 'Schematic: AR-15', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar15'),
	('schematic_ar_suppressor', 'Schematic: AR Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar_suppressor'),
	('schematic_asval', 'Schematic: AS-VAL', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asval'),
	('schematic_blindfold', 'Schematic: Blindfold', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blindfold'),
	('schematic_blue_laptop', 'Schematic: Blue Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blue_laptop'),
	('schematic_box_mag', 'Schematic: Box Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'box_mag'),
	('schematic_combat_pistol', 'Schematic: Combat Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'combatpistol'),
	('schematic_deagle', 'Schematic: Desert Eagle', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deagle'),
	('schematic_doubleaction', 'Schematic: Double Action Revolver', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'doubleaction'),
	('schematic_draco', 'Schematic: Draco', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'draco'),
	('schematic_drum_mag', 'Schematic: Drum Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drum_mag'),
	('schematic_fnx', 'Schematic: SB 45 Tactical', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fnx'),
	('schematic_g36', 'Schematic: F69', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g36'),
	('schematic_glock', 'Schematic: F19', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'glock'),
	('schematic_green_laptop', 'Schematic: Green Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'green_laptop'),
	('schematic_handcuffs', 'Schematic: Handcuffs', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'handcuffs'),
	('schematic_heavypistol', 'Schematic: Heavy Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'heavypistol'),
	('schematic_hk16a', 'Schematic: HK16A', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hk16a'),
	('schematic_hk16b', 'Schematic: HK16B', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hk16b'),
	('schematic_hk417', 'Schematic: HK417', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hk417'),
	('schematic_honeybadger', 'Schematic: Honey Badger', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'honeybadger'),
	('schematic_l5', 'Schematic: Desert Eagle K8', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'l5'),
	('schematic_m9a3', 'Schematic: M9A3', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'm9a3'),
	('schematic_mcxrattler', 'Schematic: MCX Rattler', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mcxrattler'),
	('schematic_mcxspear', 'Schematic: MCX Spear', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mcxspear'),
	('schematic_microsmg', 'Schematic: MAC 10', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'microsmg'),
	('schematic_miniuzi', 'Schematic: Mini UZI', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'miniuzi'),
	('schematic_mk47a', 'Schematic: MK47 A', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mk47a'),
	('schematic_mk47mutant', 'Schematic: MK47 Mutant', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mk47mutant'),
	('schematic_mk47s', 'Schematic: MK47 S', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mk47s'),
	('schematic_mp5', 'Schematic: SB54', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp5'),
	('schematic_mp9', 'Schematic: MP9', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp9'),
	('schematic_mpx', 'Schematic: MP 9mm', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mpx'),
	('schematic_nsr9', 'Schematic: NSR9', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nsr9'),
	('schematic_p90', 'Schematic: PDW', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ump'),
	('schematic_pistol', 'Schematic: Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol'),
	('schematic_pistol_ammo', 'Schematic: Pistol Ammo', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol_ammo'),
	('schematic_pistol_ext_mag', 'Schematic: Pistol Ext. Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol_ext_mag'),
	('schematic_pistol_suppressor', 'Schematic Pistol Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ATTCH_PISTOL_SILENCER'),
	('schematic_pp19', 'Schematic: PP-19', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pp19'),
	('schematic_purple_laptop', 'Schematic: Purple Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'purple_laptop'),
	('schematic_radio_extendo', 'Schematic: B0085 Radio', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radio_extendo'),
	('schematic_redlaptop', 'Schematic: Red Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'red_laptop'),
	('schematic_revolver', 'Schematic: Revolver', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'revolver'),
	('schematic_rfb', 'Schematic: RFB', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rfb'),
	('schematic_rifle_ext_mag', 'Schematic: AR Ext. Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rifle_ext_mag'),
	('schematic_rpk', 'Schematic: RPK16', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rpk'),
	('schematic_scope_holo', 'Schematic: Holographic Sight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_holo'),
	('schematic_scope_lrg', 'Schematic: Large Scope', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_lrg'),
	('schematic_scope_med', 'Schematic: Medium Scope', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_med'),
	('schematic_scope_reddot', 'Schematic: Red Dot Sight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_reddot'),
	('schematic_scope_small', 'Schematic: Small Scope', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_small'),
	('schematic_shotgun_ammo', 'Schematic: Shotgun Ammo', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shotgun_ammo'),
	('schematic_smg', 'Schematic: SMG', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg'),
	('schematic_smg_ammo', 'Schematic: SMG Ammo', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg_ammo'),
	('schematic_smg_ext_mag', 'Schematic: SMG Ext. Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg_ext_mag'),
	('schematic_smg_suppressor', 'Schematic: SMG Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg_suppressor'),
	('schematic_smgmk2', 'Schematic: SMG Mk2', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smgmk2'),
	('schematic_sns', 'Schematic: SNS Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sns'),
	('schematic_tec9', 'Schematic: TEC-9', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tech9'),
	('schematic_thermite', 'Schematic: Thermite', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thermite'),
	('schematic_tommygun', 'Schematic: Tommy Gun', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tommygun'),
	('schematic_ump', 'Schematic: .45 SMG', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ump'),
	('schematic_vector', 'Schematic: Vector', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vector'),
	('schematic_weapon_flashlight', 'Schematic: Weapon Flashlight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'weapon_flashlight'),
	('schematic_yellow_laptop', 'Schematic: Yellow Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yellow_laptop'),
	('scrapmetal', 'Scrap Metal', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('screwdriver', 'Screwdriver', NULL, 3, 1, NULL, 400, NULL, NULL, 0, NULL, 0, 1, 1, 259200, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('scuba_gear', 'Scuba Gear', NULL, 3, 2, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, 'EMS_DIVING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sequencer', 'Yellow Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_dontblock', 'Do Not Block Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_leftturn', 'Left Turn Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_nopark', 'No Parking Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_notresspass', 'No Tresspassing Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_rightturn', 'Right Turn Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_stop', 'Stop Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_uturn', 'U-Turn Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_walkingman', 'Walking Man Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_yield', 'Yield Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('silverbar', 'Silver Bar', NULL, 4, 2, NULL, 200, NULL, NULL, 0, NULL, 10000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('silverore', 'Silver Ore', NULL, 6, 3, NULL, 0, NULL, NULL, 0, NULL, 200, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sloppyjoe', 'Sloppy Joe', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":10}', NULL),
	('smoothie_orange', 'Orange Smoothie', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":60,"PLAYER_HUNGER":15}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":5,"skipScreenEffects":true}}', NULL),
	('smoothie_veg', 'Veg Smoothie', 'A Bean Machine Exclusive', 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Remove":{"PLAYER_DRUNK":10},"Add":{"PLAYER_THIRST":75,"PLAYER_HUNGER":10}}', '{"energyModifier":{"cooldown":60,"modifier":1.2,"duration":5,"skipScreenEffects":true}}', NULL),
	('soda', 'Soda', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"soda","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Remove":{"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":35}}', NULL, NULL),
	('sombrero', 'Sombrero', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '{"hat":{"disabled":false,"textureId":0,"componentId":0,"drawableId":166}}', NULL, NULL, NULL, NULL, NULL),
	('spag_bowl', 'Spaghetti Bolognese', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":17000}', '{"Add":{"PLAYER_HUNGER":70}}', NULL, NULL),
	('sparkling_wine', 'Sparkling Wine', NULL, 4, 1, NULL, 5, NULL, NULL, 0, NULL, 30, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('spikes', 'Spike Strips', NULL, 1, 4, NULL, 200, NULL, NULL, 13, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ssb_chain', 'SSB Chain', 'SSB Gang Chain', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"ssb"}', NULL),
	('sugar', 'Bag of Sugar', NULL, 4, 1, NULL, 2, NULL, NULL, 1, NULL, 40, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tacos', 'Taco', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_tacos","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('tea_leaf', 'Tea Leaf', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 500, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tequila', 'Tequila', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tequila_shot', 'Shot of Tequila', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tequila_sunrise', 'Tequila Sunrise', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('the_simply_burger', 'Simply Burger', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_simply","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":80}}', NULL, NULL),
	('thermite', 'Thermite Charge', NULL, 1, 1, NULL, 200, NULL, NULL, 3, NULL, 0, 1, 1, 5184000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tiramisu', 'Tiramisu', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_THIRST":50,"PLAYER_HUNGER":50}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":2,"skipScreenEffects":true}}', NULL),
	('tomato', 'Tomato', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tourniquet', 'Tourniquet', NULL, 1, 1, NULL, 150, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bandage","pbConfig":{"label":"Applying Tourniquet","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', NULL, NULL, NULL),
	('traumakit', 'Trauma Kit', 'Needed to treat serious trauma in the field', 1, 1, NULL, 500, NULL, NULL, 5, NULL, 0, 1, 0, 432000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tv', 'Television', 'Potentially Stolen', 6, 1, NULL, 1800, NULL, 'ANIM_tv', 100, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('unk_meat', 'Meat', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('unknown_ore', 'Unknown Ore', NULL, 7, 5, NULL, 0, NULL, NULL, 3, NULL, 15, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes1', 'Brakes Upgrade (1)', 'Upgrade a Vehicles Brakes to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes2', 'Brakes Upgrade (2)', 'Upgrade a Vehicles Brakes to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes3', 'Brakes Upgrade (3)', 'Upgrade a Vehicles Brakes to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes4', 'Brakes Upgrade (4)', 'Upgrade a Vehicles Brakes to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine1', 'Engine Upgrade (1)', 'Upgrade a Vehicles Engine to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine2', 'Engine Upgrade (2)', 'Upgrade a Vehicles Engine to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine3', 'Engine Upgrade (3)', 'Upgrade a Vehicles Engine to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine4', 'Engine Upgrade (4)', 'Upgrade a Vehicles Engine to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension1', 'Suspension Upgrade (1)', 'Upgrade a Vehicles Suspension to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension2', 'Suspension Upgrade (2)', 'Upgrade a Vehicles Suspension to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension3', 'Suspension Upgrade (3)', 'Upgrade a Vehicles Suspension to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension4', 'Suspension Upgrade (4)', 'Upgrade a Vehicles Suspension to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission1', 'Transmission Upgrade (1)', 'Upgrade a Vehicles Transmission to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission2', 'Transmission Upgrade (2)', 'Upgrade a Vehicles Transmission to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission3', 'Transmission Upgrade (3)', 'Upgrade a Vehicles Transmission to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission4', 'Transmission Upgrade (4)', 'Upgrade a Vehicles Transmission to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_turbo', 'Turbo Upgrade', 'Upgrade a Vehicles to a Turbo', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_chain', 'UwU Chain', 'UwU Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"uwu"}', NULL),
	('uwu_prize_b1', 'UwU Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b10', 'UwU Snow Bear', 'UwU Cafe Collectable', 5, 4, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b2', 'UwU Rainbow Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b3', 'UwU Sun Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b4', 'UwU Flower Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b5', 'UwU Tree Bear', 'UwU Cafe Collectable', 5, 2, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b6', 'UwU Heart Bear', 'UwU Cafe Collectable', 5, 2, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b7', 'UwU Moon Bear', 'UwU Cafe Collectable', 5, 3, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b8', 'UwU Rain Bear', 'UwU Cafe Collectable', 5, 3, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b9', 'UwU Star Bear', 'UwU Cafe Collectable', 5, 4, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_box', 'UwU Mystery Box', 'Collect all the different bears! UwU', 1, 1, NULL, 0, NULL, NULL, 0, NULL, 100, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"mindblown","pbConfig":{"label":"Opening UwU Mystery Box","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, NULL, NULL),
	('valuegoods', 'Valuable Goods', 'Potentially Stolen', 4, 4, NULL, 2450, NULL, NULL, 1, NULL, 10, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vanityitem', 'Vanity Item', NULL, 5, 3, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('venison', 'Venison', NULL, 1, 1, NULL, 40, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vension_steak', 'Venison Steak', NULL, 1, 1, NULL, 150, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":50}}', NULL, NULL),
	('vibrator_pink', 'Vibrator', 'If you vibe it, they will cum.', 1, 4, NULL, 400, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vodka', 'Vodka', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vodka_shot', 'Shot of Vodka', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vpn', 'VPN', NULL, 7, 4, NULL, 15000, NULL, 'PHONE_VPN', 1, NULL, 0, 1, 0, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('watch', 'Gold Watch', 'Potentially Stolen', 6, 1, NULL, 215, NULL, NULL, 1, NULL, 50, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('water', 'Water', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"water","pbConfig":{"label":"Drinking Water","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Remove":{"PLAYER_DRUNK":20,"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":30}}', NULL, NULL),
	('weed_baggy', 'Baggy of Weed', NULL, 12, 2, NULL, 200, NULL, NULL, 0, NULL, 100, 1, 0, 1209600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weed_brick', 'Brick of Weed', NULL, 12, 3, NULL, 10000, NULL, 'ANIM_weed', 10, NULL, 0, 1, 0, 3888000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weed_bud', 'Marijuana Bud', NULL, 12, 1, NULL, 100, NULL, NULL, 0, NULL, 100, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weed_joint', 'Joint', NULL, 12, 1, NULL, 25, NULL, NULL, 1, NULL, 10, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Remove":{"PLAYER_HUNGER":5}}', '{"drugState":{"duration":1800,"type":"weed"}}', NULL),
	('weedseed_female', 'Female Marijuana Seed', NULL, 7, 1, NULL, 100, NULL, NULL, 0, NULL, 500, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weedseed_male', 'Male Marijuana Seed', NULL, 7, 1, NULL, 100, NULL, NULL, 0, NULL, 500, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('whiskey', 'Whiskey', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('whiskey_glass', 'Glass of Whiskey', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('wine_bottle', 'Bottle of Wine', NULL, 1, 2, NULL, 50, NULL, NULL, 1, NULL, 10, 1, 0, 12960000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('wine_glass', 'Glass of Wine', NULL, 1, 2, NULL, 200, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('yeast', 'Yeast', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('yellow_dongle', 'USB Drive (Yellow)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 2500, NULL, 'DONGLE_YELLOW', 1, NULL, 0, 0, 1, 259200, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('yellow_laptop', 'Laptop (Yellow)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table sandbox.mdt_charges
CREATE TABLE IF NOT EXISTS `mdt_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.mdt_charges: ~144 rows (approximately)
INSERT INTO `mdt_charges` (`id`, `type`, `title`, `description`, `fine`, `jail`, `points`) VALUES
	(1, 3, 'Capital Murder', '1st Degree Murder with specific circumstances. The special circumstances are defined as such:- Killing a government employee;- Killing an active member of a jury;- Killing a witness to prevent testimony in court;- Killing more than one victim (serial);', 0, 999, 0),
	(2, 3, ' Accessory to Capital Murder', 'Accessory to Capital Murder', 0, 999, 0),
	(3, 3, '1st Degree Murder', 'The unlawful killing of another human without justification or valid excuse, with malice aforethought/premeditation.', 0, 999, 0),
	(4, 3, 'Accessory to 1st Degree Murder', 'Aids and or Abets the unlawful killing of another human without justification or valid excuse, especially the unlawful killing of another human with malice aforethought / premeditation.', 0, 999, 0),
	(5, 3, 'Attempted 1st Degree Murder', 'The attempt to unlawfully kill another human without justification or valid excuse, with malice aforethought/premeditation.', 5000, 85, 0),
	(6, 3, '2nd Degree Murder', 'The act of unlawfully killing that doesn’t involve malice aforethought—intent to seriously harm or kill, or extreme, reckless disregard for life. Heat of passion, callous disregard for human life.', 30000, 350, 0),
	(7, 3, 'Accessory to 2nd Degree Murder', 'Aids and or Abets the unlawfully killing that doesn’t involve malice aforethought—intent to seriously harm or kill, or extreme, reckless disregard for life. Heat of passion, callous disregard for human life.', 0, 300, 0),
	(8, 3, 'Attempted 2nd Degree Murder', 'The attempt to unlawfully kill that doesn’t involve malice aforethought—intent to seriously harm or kill, or extreme, reckless disregard for life. Heat of passion, callous disregard for human life.', 3000, 65, 0),
	(9, 3, 'Voluntary Manslaughter', 'The accidental, criminally negligent, or criminally reckless killing of another individual with the intent to physically harm them. ', 20000, 130, 0),
	(10, 3, 'Vehiclular Manslaughter', 'The accidental, criminally negligent, or criminally reckless killing of another individual whilst driving a motor vehicle. ', 16000, 115, 0),
	(11, 3, 'Involuntary Manslaughter', 'The accidental, criminally negligent, or criminally reckless killing of another individual with no intent to physically harm them. ', 15000, 100, 0),
	(12, 3, 'Gang Related Shooting', 'Any individual who, with one or more members of their “gang” engages in a shooting/shootout with two or more members of other gangs. A “gang” is defined as an ongoing group, club, organization, or association of three or more persons which has the primary purpose of the commission of criminal offenses, or the members of which over the last ninety days have engaged in continuing or ongoing series of felony offenses. Alternatively, any individual or individuals flagged as “gang related” based on knowledge or probable cause by Law Enforcement. ', 10000, 75, 0),
	(13, 3, 'Kidnapping a Government Employee', 'Abducts a government employee and holds them against their will.', 5000, 30, 0),
	(14, 3, 'Kidnapping', 'Abducts another person and holds them against their will.', 2000, 20, 0),
	(15, 3, 'Assault with a Deadly Weapon', 'Attempts to commit a violent injury upon another person with a deadly weapon. A weapon is descibed as a firearm or any type of melee item, also including motor vehicles.', 2000, 25, 0),
	(16, 3, 'Reckless Endangerment ', 'Person creates a substantial risk of serious physical injury to themselves or another person. The accused person isn\'t required to intend the resulting or potential harm, but must have acted in a way that showed a disregard for the foreseeable consequences of the actions.', 1000, 15, 0),
	(17, 2, 'Unlawful Imprisonment', 'Restricts a person\'s movement within any area without justification or consent.', 1000, 15, 0),
	(18, 2, 'Criminal Threats', 'A "criminal threat" is when you threaten to kill or physically harm someone.That person is thereby placed in a state of reasonably sustained fear for his/her safety or for the safety of his/her immediate family, the threat is specific and unequivocal and you communicate the threat verbally, in writing, or via an electronically transmitted device.', 1250, 15, 0),
	(19, 2, 'Assault & Battery', 'Openly threatens violence or injury upon an individual either orally or thru their actions and acts upon that threat.', 825, 15, 0),
	(20, 3, 'Terrorism ', 'The unlawful use of Extreme Violence and Intimidation against the Civilian Population that would pursue political aims, compromise medical neutrality, or in the name of religious ideology. The unlawful use of Extreme Violence and Intimidation against Government Entities that would pursue the disruption, destabilization or destruction of those entities for political or religious aims.', 0, 999, 0),
	(21, 3, 'Weapons Trafficking', 'The unlawful transportation of a large quantity of any class of firearms and/or molotov cocktails and/or explosives, with the intent to distribute. Intent to distribute can be inferred through circumstances surrounding the discovery of the firearms or a pattern of behavior of the suspects, including large sums of money, and/or the possession of six or more firearms.', 0, 999, 0),
	(22, 3, 'Criminal Possession of a Government-Issue Firearm', 'It is illegal to possess a government-owned or issued firearm, without being a duly sworn Peace Officer. This also includes flashbangs.', 22500, 210, 0),
	(23, 3, 'Criminal Possession of a Government-Issue Less Lethal Firearm/Weapon', 'It is illegal to possess a government-owned or issued less-lethal firearm, without being a duly sworn Peace Officer. This would include tasers, batons and beanbag shotguns.', 12000, 70, 0),
	(24, 3, 'Criminal Possession of a Firearm [Class 3]', 'Possesses a Class 3 weapon. LMG, RPG, DMR\'s', 3000, 35, 0),
	(25, 3, 'Criminal Possession of a Firearm [Class 2]', 'Possess a Class 2 weapon. Possesses semi-automatic to automatic firearms, and shotguns.', 2000, 28, 0),
	(26, 2, 'Criminal Possession of a Firearm [Class 1]', 'Possess a Class 1 weapon without a proper license or a weapon which is not registered to the individual possessing it.', 500, 10, 0),
	(27, 3, 'Criminal Sale of a Firearm [Class 2 and 3]', 'The unlawful sale of a Class 2 or Class 3 weapon', 3000, 35, 0),
	(28, 3, 'Criminal Sale of a Firearm [Class 1]', 'The unlawful sale, or purchase, of a Class 1 firearm, when a person does not own a proper weapon license.', 1000, 12, 0),
	(29, 3, 'Possession of Explosives', 'Possesses explosives on his or her person. Includes transport of explosives.', 5000, 100, 0),
	(30, 3, 'Criminal Use of Explosives', 'A person is guilty of criminal use of explosives if they intentionally place, use, or attempt to use explosives against any real person or property and detonate said explosives, directly or indirectly. This shall include the use of tanker trucks, cars ignited in gasoline, or tanks/barrels full of combustible liquid for the purpose of causing an explosion. This charge may be issued in addition to Attempted Murder.', 3000, 35, 0),
	(31, 3, 'Criminal Possession of a Government Issued Equipment', 'It is illegal to possess a government-owned or issued equipment (non weapons) without being a government employee with the right to possess them.', 1250, 20, 0),
	(32, 3, 'Possession of a Molotov', 'Person possesses a molotov or other improvised incendiary weapons.', 3000, 30, 0),
	(33, 3, 'Possession of a Silencer / Suppressor', 'It is illegal to possess a silencer/suppressor. No person shall possess any type of device that alters the sound of a firearm.', 1000, 25, 0),
	(34, 2, 'Resisting Arrest', 'Flees from a Law Enforcement Officer to avoid being apprehended, detained, or arrested while on foot, or a passenger in a vehicle.', 1000, 10, 0),
	(35, 2, 'Criminal Use of a Firearm', 'Discharges a firearm for no legal reason, or using a firearm in the commission to aid in a crime.', 1000, 15, 0),
	(36, 2, 'Brandishing of a Firearm', 'Displaying a firearm in public without a legal reason. "Open Carry" is not a legal reason to have a weapon in your hand. To open carry, the weapon must be holstered or attached to a sling. ', 1000, 10, 0),
	(37, 2, 'Brandishing of a non Firearm', 'It is unlawful for you to draw or exhibit a potentially deadly weapon in a rude, angry, or threatening way in the presence of another person and not in defense of self or others', 500, 10, 0),
	(38, 1, 'Jaywalking', 'Crosses a road without the use of a crosswalk, or without a marked crossing light.', 100, 0, 0),
	(39, 3, 'Aggravated Robbery', 'A robbery in which the victim, a hostage, or a third party otherwise uninvolved in the crime is physically injured. ', 2250, 35, 0),
	(40, 3, 'Accessory to Aggravated Robbery', 'Harboring, concealing or aiding a person in the act/attempt to commit Aggravated Robbery.', 1500, 30, 0),
	(41, 3, 'Robbery', 'The taking or carrying away with the intent to steal any thing of value in the care, custody, control, management, or possession of any store, bank, or financial institution, including but not limited to all Fleeca Banks, 24/7 Gas Stations, LTD Gas Stations, or Vangelico’s Jewelry Stores. Alternatively, the taking or carrying away with the intent to steal any thing of value from the direct custody of another person.', 2000, 25, 0),
	(42, 3, 'Accessory to Robbery', 'Harboring, concealing or aiding a person in the act/attempt to commit Robbery.', 1050, 20, 0),
	(43, 3, 'First Degree Money Laundering', 'Possesses money in the amount of $30,000 or more with the specific intent to use it to promote criminal activity or the knowledge that the money involved came from criminal activity.', 5000, 35, 0),
	(44, 3, 'Second Degree Money Laundering', 'Possesses money in the amount of $10,000 or more with the specific intent to use it to promote criminal activity or the knowledge that the money involved came from criminal activity.', 2500, 20, 0),
	(45, 2, 'Third Degree Money Laundering', 'Possesses money in the amount of less than $10,000 with the specific intent to use it to promote criminal activity or the knowledge that the money involved came from criminal activity.', 1500, 15, 0),
	(46, 2, 'Sale of Stolen Goods or Stolen Property', 'The bartering or selling of wares, merchandise, or property that has been stolen from another and the person knew or has reason to know the property was stolen. Color coded bank cards are per se considered to be stolen goods or property under this statute. ', 2000, 25, 0),
	(47, 3, 'Receiving Stolen Property in the First Degree', 'A person who bought, received, sold or participated in selling, concealed or withheld property that has been stolen from another, and the individual knew the property was stolen.  To include possession of color coded bank cards in the amount of 11 or more.', 1500, 15, 0),
	(48, 2, 'Receiving Stolen Property in the Second Degree', 'A person who bought, received, sold or participated in selling, concealed or withheld property that has been stolen from another, and the individual knew the property was stolen. To included color coded bank cards in the amount of 6 to 10', 1000, 12, 0),
	(49, 2, 'Receiving Stolen Property in the Third Degree', 'A person who bought, received, sold or participated in selling, concealed or withheld property that has been stolen from another, and the individual knew the property was stolen. To included color coded bank cards in the amount of 5 or less.', 500, 10, 0),
	(50, 3, 'Possession of Stolen Goods', 'Possesion of Valuable Goods without proof of ownership.', 1050, 15, 0),
	(51, 2, 'Possession of a Stolen Identification ', 'Possesses the Identification Card of another citizen without consent.', 1000, 12, 0),
	(52, 2, 'Leaving Without Paying', 'It is illegal for a person to obtain services by deception, force, threat or other unlawful means, or without lawfully compensating the provider for these services provided. This will include garages and restaurants.', 1000, 12, 0),
	(53, 3, 'Grand Theft Auto', 'Unlawfully taking a vehicle belonging to another, or driving the vehicle without the owner\'s consent, with the intent to permanently deprive the owner of the vehicle.', 1050, 15, 0),
	(54, 2, 'Joyriding', 'The taking or operating of a vehicle without the owner\'s consent, without the intent to deprive the owner of the vehicle permanently.', 500, 10, 4),
	(55, 2, 'Tampering with a Vehicle', 'No person shall either individually or in association with one or more other persons, willfully tamper with any vehicle or the contents thereof, or break or remove any part of a vehicle without the consent of the owner.', 500, 10, 0),
	(56, 2, 'Grand Theft', 'Steals property in the value of $1,000 or more from another person.', 1500, 10, 0),
	(57, 2, 'Petty Theft', 'Steals property in the value of less than $1,000 from another person.', 500, 10, 0),
	(58, 3, 'Arson', 'Person maliciously sets fire to a structure, forest land, or other property. To include the use of thermite at banks, vaults, or other locations.', 2000, 25, 0),
	(59, 3, 'Felony Trespassing', 'Enters knowingly or remains unlawfully in or upon a government property without permission or the right to do so. Includes power plants.', 1500, 15, 0),
	(60, 3, 'Burglary', 'Any person who breaks and enters any property or attempts to break and enter into a property with the intent either to commit theft or to commit any misdemeanor or felony within.', 1000, 15, 0),
	(61, 2, 'Trespassing', 'Enters knowingly or remains unlawfully upon a property without the permission or the right to do so.', 500, 10, 0),
	(62, 2, 'Contempt of Court', 'The act of being disobedient to or discourteous towards a court of law and its officers in the form of behavior that opposes or defies the authority, justice and dignity of the court. Time/Fine is at Judge discretion.', 0, 999, 0),
	(63, 2, 'Failure to Appear', 'Failure to appear in Court when summoned.', 0, 999, 0),
	(64, 3, 'Perjury', 'Knowingly lies under oath in judicial proceedings.', 0, 999, 0),
	(65, 3, 'Witness Tampering', 'The use of physical force, threat of physical force, use of intimidation, or use of threats in an attempt to hinder, delay, or prevent, an individual from producing testimony or evidence before the court or an attempt to alter or destroy the evidence or testimony to be produced. ', 0, 999, 0),
	(66, 3, 'Prison Break', 'Breaks into government buildings, vehicles designated for detainment, or imprisonment with intent to break a prisoner out. Steals a law enforcement vehicle intending to transport an individual/individuals to prison after processing has occurred. Includes the act of an inmate or suspect leaving prison through unofficial or illegal ways.', 4000, 75, 0),
	(67, 3, 'Attempted Prison Break', 'Aids in the act of, or attempt to break an individual out of prison, or prison transport after processing has occurred.', 2500, 40, 0),
	(68, 3, 'Harboring or Aiding an Escaped Violent Felon', 'Whoever knowingly harbors or conceals any prisoner wanted for a capital level offense after their escape from custody of Bolingbroke State Penitentiary or any other State correctional institution shall be guilty of this offense. This offense shall include but not be limited to providing residence for the prisoner, assisting the prisoner in escape from the authorities, and/or failing to notify the proper authorities of the prisoner\'s location if the suspect should reasonably know the prisoner is wanted for arrest on capital level offenses. ', 3000, 65, 0),
	(69, 3, 'Introducing Contraband Into a Government Facility', 'It is unlawful to introduce contraband into or upon the grounds of Bolingbroke State Penitentiary or any other State correctional institution shall be guilty of this offense.Contraband is described as any controlled substance, intoxicating beverage, weapon, explosive, radio, telephone or any writing or recording device to be used to transmit information.', 1500, 20, 0),
	(70, 3, 'Violating a Court Order', 'Willful disobedience of the terms written in a court order. To include a sentence imposed on a citizen, protective, and restraining orders.', 2000, 30, 0),
	(71, 3, 'Embezzlement ', 'Steals or misappropriates funds or property that has been entrusted in you with the intent of depriving the rightful owner.', 500, 25, 0),
	(72, 3, 'Bribery', 'The offering, giving or recieving of anything of value in exchange for the recipient to perform an act such as a favour. The bribe can consist of anything that the recipient may view as valuable like cash or personal favours. This charge includes the recipient of a bribe.', 2000, 20, 0),
	(73, 3, 'Escaping Custody', 'Escapes the custody of law enforcement once that person has been, detained/arrested but before processing occurs.', 1500, 15, 0),
	(74, 3, 'Accessory to Escaping Custody', 'Person aids or assists, another citizen in escaping the custody of law enforcement once that person has been, detained/arrested but before processing occurs.', 1000, 15, 0),
	(75, 3, 'Parole Violation ', 'Person who violates their parole time, set by their previous arrest.', 1000, 10, 0),
	(76, 2, 'Conspiracy', 'Conspires to commit a crime.', 1000, 10, 0),
	(77, 2, 'Unauthorized Practice of Law', 'Practices law without a proper Bar certification.', 2500, 10, 0),
	(78, 2, 'Misuse of a 911 System', 'Person makes a request for emergency response when no actual emergency exists, and when the caller does not have a good faith basis to request emergency assistance.', 1000, 5, 0),
	(79, 3, 'Human Trafficking', 'The unlawful act of forcefully transporting or coercing individuals into preforming an act or service, being that of forced labor or otherwise, without that indviduals consent. ', 0, 999, 0),
	(80, 3, 'Drug Trafficking', 'Any person who is found guilty of Felony Possession with Intent to Distribute and which meets one or more of the following requirements: (1) The suspect shows a pattern of drug distribution or felony possession of controlled dangerous substances, demonstrable through three or more provable instances;(2) Proof or evidence that the suspect has manufactured or cultivated a controlled dangerous substance;', 0, 999, 0),
	(81, 3, 'Felony Possession with intent to Distribute', 'Any person who is found to have large quantities of drugs on their person, vehicle, and or property with intent to distribute. Intent to distribute can be inferred through circumstances surrounding the discovery of the drugs or a pattern of behavior of the suspect such as large sums of money, high-grade weaponry, or other paraphernalia used in the measuring/weighing or breaking down of large quantities to smaller quantities', 12500, 150, 0),
	(82, 3, 'Sale of Drugs', 'Sale of a controlled substance or controlled dangerous substance.', 2500, 35, 0),
	(83, 3, 'Felony Possession of a Controlled Dangerous Substance', 'Possesses a controlled dangerous substance. 27+ units of OXY. Possesses methamphetamine. 20+ units of methamphetamine.', 2000, 30, 0),
	(84, 3, 'Felony Possession of a Controlled Substance', 'Possesses 50+ grams (10 bags @ 5g per bag) of Crack Cocaine.Possessing 50+ grams (10 bags @ 5g per bag) of Cocaine.Possesses 10 or more LSD tabs.Possesses any amount of marijuana greater than 15 lbs, or greater than 25 joints.', 2000, 25, 0),
	(85, 3, 'Cultivation of Marijuana', 'Person possesses 3 or more marijuana plants in a single location.', 2000, 25, 0),
	(86, 2, 'Misdemeanor Possession of Controlled Dangerous Substance', 'Possesses a controlled dangerous substance. 5+ units of Oxy. Possesses methamphetamine.', 1000, 15, 0),
	(87, 2, 'Misdemeanor Possession of a Controlled Substance', 'Possesses up to 50 grams (10 bags @ 5g per bag) of Crack Cocaine.Possesses up to 50 grams (10 bags @ 5g per bag) of Cocaine.Possesses less than 10 LSD tabs.Possesses any amount of marijuana greater than 5 lbs, or greater than 9 joints.', 750, 10, 0),
	(88, 2, 'Possession of Drug Paraphernalia ', 'Any item that is used in the manufacturing, production, distribution, sale, or consumption of drugs. This is to include marijuana seeds, and scales that are used to weigh drugs.', 500, 5, 0),
	(89, 3, 'Desecration of a Human Corpse', 'Desecration of a human corpse means any act committed after the death of a human being including, but not limited to, dismemberment, disfigurement, mutilation, burning, or any act committed to cause the dead body to be devoured, scattered or dissipated; except, those procedures performed by a state agency or licensed authority in due course of its duties and responsibilities. This includes the removal of a corpse from the custody of the morgue.', 1500, 20, 0),
	(90, 3, 'Illegal Exhumation', 'The removal of a body without authorization from where it lies in state, or it\'s final resting place.', 1000, 15, 0),
	(91, 2, 'Practicing Medicine Without a License', 'Practicing medicine without a proper license. Treating citizens for any medical, or health related issue without proper documentation or licensing. Law Enforcement is exempt only during their qualified duties. ', 1500, 12, 0),
	(92, 2, 'Public Indecency', 'A lewd caress or indecent fondling of the body. Public place shall also include jails, and correctional institutions of the state.', 500, 10, 0),
	(93, 1, 'Littering', 'The act of throwing objects on the ground in a disobedient manner. Leaving trash and other items on the ground.', 250, 0, 0),
	(94, 1, 'Public Intoxication ', 'A person who is under the influence of Alcohol or a Controlled Dangerous Substance, in a public place.', 100, 0, 0),
	(95, 3, 'Impersonating a Judge', 'Acting as a Judge or introducing themselves to others a judge and attempting to perform judicial duties', 10000, 40, 0),
	(96, 3, 'Impersonating a Government Employee', 'Acting as public servant or introducing themselves to others as a public servant, and attempting to perform their duties. This includes public servants and all other government employees that are not otherwise listed under a higher impersonation charge.', 5000, 30, 0),
	(97, 3, 'Impersonation', 'Providing law enforcement with a false, or fictitious name, while under detainment or under arrest.', 1250, 15, 0),
	(98, 3, 'Identity Theft', 'A person secures an undeserved financial benefit for themselves. Cause the victim to suffer a loss, which could be financial, emotional or some other type of damage. Escapes criminal liability by using another person\'s name, birth date or other identifying information.', 1500, 20, 0),
	(99, 3, 'Vehicle Registration Fraud', 'Person(s) possesses or displays a falsified license plate on a motor vehicle. Person(s) manufactures a falsified license plates.', 1500, 20, 0),
	(100, 3, 'Extortion', 'The use of force or threats to compel another person to relinquish money or property or to compel a public officer or State employee to perform an official act within the course and scope of their employment. ', 1000, 15, 0),
	(101, 3, 'Fraud', 'Wrongfully deceits intending to receive financial or personal gain.', 1000, 10, 0),
	(102, 3, 'Disruption of a Public Utility', 'Disruption of a Public Utility - The attempt, or successful execution of the disruption of any electrical power grid.', 6000, 35, 0),
	(103, 3, 'Inciting a Riot', 'Organizes an event/assembly which results in violent conduct or creates a risk of causing public harm with a group of at least four people.', 5000, 30, 0),
	(104, 3, 'Felony Obstruction of Justice', 'Intentionally hinders the discovery, apprehension, conviction, or punishment of a person who committed a crime, including intentionally involving oneself in an ongoing criminal act or investigation in such a way that peace officers are impeded from administering justice.', 2500, 25, 0),
	(105, 2, 'Misdemeanor Obstruction of Justice', 'Recklessly or with criminal negligence hinders the discovery, apprehension, conviction, or punishment of a person who committed a crime, including issuing threats of violence, impeding the administration of justice, or withholding of non-privileged information or evidence from peace officers.', 1500, 20, 0),
	(106, 2, 'Planting or Tampering of Evidence', 'Destroy, plant, conceal, or remove a piece of evidence with the purpose of hiding the truth, altering the truth or make an item unavailable for proceeding investigation.', 1000, 15, 0),
	(107, 2, 'Disobeying a Peace Officer ', 'Willfully refusing or failing to comply with a lawful order, signal, or direction of any peace officer.', 1000, 12, 0),
	(108, 2, 'Disorderly Conduct', 'Engages in behavior intending to cause public inconvenience.', 500, 10, 0),
	(109, 2, 'Harassment', 'Intimidates or pressures another person aggressively with unwelcome words, deeds, actions, or gestures.', 1000, 10, 0),
	(110, 2, 'False Reporting', 'Reports a false or non-existent crime.', 1000, 10, 0),
	(111, 3, 'Poaching', 'No person shall either individually or in association with one or more other persons, bait, trap, hunt injure, maim, kill, otherwise harm, or maintain possession of the pelt, carcass, or any other part of an a wild animal without the correct license to hunt such animal or the animal is defined as being protected by the DOJ.', 1500, 15, 0),
	(112, 2, 'Animal Cruelty', 'Maliciously and intentionally wounds or kills an animal.', 500, 10, 0),
	(113, 2, 'Stalking', 'The following, harassing, threatening of another person, to the point where an individual fears for his/her safety.', 250, 10, 0),
	(114, 2, 'Disturbing the Peace', 'Unlawfully fighting, or challenging another person to fight, in a public place. Disturbing another person by loud and unreasonable noise; if this is done willfully and maliciously. Using offensive words in a public place, if the words are likely to provoke an immediate violent reaction.', 500, 5, 0),
	(115, 2, 'Vandalism of Government Property', 'Intentionally causing damage to Government Property.', 500, 5, 0),
	(116, 1, 'Vandalism', 'Intentionally causing damage to property they do not own.', 250, 0, 0),
	(117, 1, 'Loitering', 'Intentionally standing or waiting idly without apparent purpose.', 250, 0, 0),
	(118, 3, 'Piloting Without a Proper License', 'Operating (or attempting to operate) an aircraft without the proper license. This includes, Helicopters, and Fixed Wing Aircraft.', 3500, 40, 0),
	(119, 3, 'Flying into Restricted Airspace', 'The unauthorized flight into, or landing in restricted airspace. The restricted areas are as follows. Aircraft carrier, any and all power plants. This includes landing on Pillbox Medical Center, and any Government building or property without permission to do so. Certified pilots will lose their license for any of of the above listed. Law Enforcement and EMS are exempt.', 5000, 30, 0),
	(120, 3, 'Street Racing', 'A person shall not engage (organize or partake) in a street race on a highway or public roadway of any kind whether it be as a sport of for material gain.A street race can be against another vehicle or any kind of timing device.Adds 4 points on License.', 4000, 25, 4),
	(121, 3, 'Reckless Evading', 'Dangerously flees from law enforcement while operating a motor vehicle to avoid being apprehended, detained, or arrested. Crossing into oncoming lanes of traffic, causing damage to property, putting lives in danger.', 2000, 20, 5),
	(122, 3, 'Operating a Motor Vehicle on a Suspended or Revoked License', 'Person operates a motor vehicle on a suspended and revoked license. Vehicle is to be Impounded, and the operator of the vehicle arrested for not having the proper license to drive legally.', 2000, 15, 0),
	(123, 3, 'Felony Hit and Run', 'Leaving a scene of an accident that resulted in injury to others, without identifying yourself to the parties involved.', 2000, 15, 4),
	(124, 3, 'Reckless Driving', 'Drives in a way that is careless and with gross disregard for human life.', 1000, 12, 4),
	(125, 2, 'Unauthorized Operation of an Off-Road Vehicle', 'It is unlawful to operate an off-road, or off highway vehicle on city streets, highways, county roads, and sidewalks. Off-road vehicles are classified as ATV\'s, Dirt Bikes, Farm Tractors, Golf Carts, and Dune Buggies that don\'t have a visible license plate displayed. Law enforcement may use discretion if the person is transporting from a car dealership after purchase.', 750, 10, 0),
	(126, 2, 'Misdemeanor Hit and Run', 'Leaving a scene of an accident with property damage, without identifying yourself to the parties involved.', 500, 10, 0),
	(127, 2, 'Evading', 'Flees from law enforcement in a vehicle to avoid being apprehended, detained, or arrested.', 750, 10, 3),
	(128, 1, 'Driving While Intoxicated', 'Drives while affected by drug or alcohol intoxication. Licenses is suspended ', 500, 5, 3),
	(129, 1, 'First Degree Speeding', 'Speeds exceeding the limit by more than 55 mph. Add 3 license points.', 1500, 0, 3),
	(130, 1, 'Second Degree Speeding', 'Speeds exceeding the limit by 35-55 mph. Add 2 license points.', 1000, 0, 2),
	(131, 1, 'Third Degree Speeding', 'Speeds exceeding the limit by 0-34 mph. Add 1 license point', 500, 0, 1),
	(132, 1, 'Improper Window Tint', 'Operating a vehicle with tint that obscures the view from the outside. Window tint must be completely be dark to where Law Enforcement can\'t see citizens in the vehicle.  Law Enforcement may use discretion to give a verbal warning, or written violation. Vehicle may be impounded. **Government vehicles are exempt.**', 250, 0, 0),
	(133, 1, 'Failure to Yield to Emergency Vehicle', 'Does not pull to the side of the road when an emergency vehicle is trying to pass with sirens and or lights enabled.', 250, 0, 0),
	(134, 1, 'Failure to Obey a Traffic Control Device', 'Does not obey a sign or signal defined as regulatory.', 250, 0, 0),
	(135, 1, 'Negligent Driving', 'Drives in a way that is negligent with no regard to basic traffic rules.', 500, 0, 2),
	(136, 1, 'Illegal Passing', 'Passing another vehicle by a shoulder, median, or solid lines. Passing must be completely made without interfering with safe operation of any approaching vehicle from the opposite direction.', 250, 0, 0),
	(137, 1, 'Driving on the Wrong Side of The Road', 'Driving on the left side of the road, against opposing traffic.', 250, 0, 0),
	(138, 1, 'Illegal Turn', 'Performing a turn at a stop sign or red light without coming to a full and complete stop, or failure to yield to pedestrians. Making a left-hand turn where signs posted prohibit such a turn.', 250, 0, 0),
	(139, 1, 'Failure to Stop', 'Failure to come to a complete and full stop at a posted stop sign or red light. Right on red is permitted when a full stop is completed and after yielding to traffic and pedestrians.', 250, 0, 0),
	(140, 1, 'Unauthorized Parking', 'Parks in an area that is unsafe or on government property. Parking on a sidewalk, to include ANY portion of the tire touching the curb. Parking in the wrong direction of traffic. Parking on a red line. Parking in front of a fire hydrant. Parking vehicle across multiple parking spaces. Vehicle is subject to being towed. Government vehicles with lights and/or sirens on are exempt. Further, a vehicle may be driven onto a curb or sidewalk for the purposes of immediately parking that vehicle within a garage or driveway. ', 500, 0, 0),
	(141, 1, 'Operating a Motor Vehicle Without Proper Identification ', 'Person has a valid drivers license but is unable to provide a valid citizen identification to law enforcement upon request. Vehicle is to be impounded by law enforcement. This law is to ensure that citizens provide proper identification to law enforcement while operating a motor vehicle.', 250, 0, 0),
	(142, 1, 'Failure to Signal', 'Does not use a turn signal when necessary.', 100, 0, 0),
	(143, 1, 'Driving Without Headlights During Darkness', 'Driving after dusk and before dawn or in other poor visiblity conditions without headlights.', 100, 0, 0),
	(144, 2, 'Accessory to Assault & Battery', 'Assits in the threatens violence or injury upon an individual either orally or thru their actions and acts upon that threat.', 1000, 15, 0);

-- Dumping structure for table sandbox.mdt_library
CREATE TABLE IF NOT EXISTS `mdt_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job` (`job`),
  KEY `workplace` (`workplace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.mdt_library: ~0 rows (approximately)

-- Dumping structure for table sandbox.mdt_notices
CREATE TABLE IF NOT EXISTS `mdt_notices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `restricted` varchar(50) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job` (`restricted`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.mdt_notices: ~0 rows (approximately)

-- Dumping structure for table sandbox.mdt_reports
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `allowAttorney` tinyint(4) NOT NULL DEFAULT 0,
  `creatorSID` int(11) NOT NULL,
  `creatorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creatorCallsign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `type` (`type`),
  KEY `creatorSID` (`creatorSID`),
  KEY `creatorName` (`creatorName`),
  KEY `creatorCallsign` (`creatorCallsign`),
  KEY `allowAttorney` (`allowAttorney`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.mdt_reports: ~5 rows (approximately)
INSERT INTO `mdt_reports` (`id`, `type`, `title`, `notes`, `created`, `updated`, `allowAttorney`, `creatorSID`, `creatorName`, `creatorCallsign`) VALUES
	(1, 25, 'sdfgsdfgsdfg', '<p>fake</p>', '2024-07-15 02:31:35', '2024-07-15 02:31:35', 0, 1, 'te te', '25'),
	(2, 0, 'testsfdgs', '<p>test</p>', '2024-07-15 02:32:15', '2024-07-15 02:32:15', 0, 1, 'te te', '25'),
	(3, 0, 'test2', '<p>tsagsdfgsdfg</p>', '2024-07-15 02:33:44', '2024-07-15 02:33:44', 0, 1, 'te te', '25'),
	(4, 0, 'test3', '<p>sdfghsdfgsdfg</p>', '2024-07-15 02:36:53', '2024-07-15 02:36:53', 0, 1, 'te te', '25'),
	(5, 0, 'sdfgsdfgsdfg', '<p>sadfgsdfgsdfg</p>', '2024-07-15 12:17:37', '2024-07-15 12:17:37', 0, 1, 'te te', '25');

-- Dumping structure for table sandbox.mdt_reports_evidence
CREATE TABLE IF NOT EXISTS `mdt_reports_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report` (`report`),
  CONSTRAINT `FK1_mdt_reports_evidence` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.mdt_reports_evidence: ~0 rows (approximately)

-- Dumping structure for table sandbox.mdt_reports_people
CREATE TABLE IF NOT EXISTS `mdt_reports_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'person',
  `SID` int(11) NOT NULL,
  `First` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Last` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Callsign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Licenses` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '{}',
  `charges` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '{}',
  `sentenced` tinyint(4) NOT NULL DEFAULT 0,
  `sentencedAt` datetime DEFAULT NULL,
  `plea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'unknown',
  `points` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `parole` int(11) NOT NULL DEFAULT 0,
  `reduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `revoked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `doc` tinyint(4) NOT NULL DEFAULT 0,
  `expunged` tinyint(4) NOT NULL DEFAULT 0,
  `warrant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SID` (`SID`),
  KEY `Callsign` (`Callsign`),
  KEY `FK_mdt_reports_people` (`report`),
  KEY `type` (`type`),
  KEY `sentenced` (`sentenced`),
  KEY `expunged` (`expunged`),
  KEY `FK2_mdt_reports_people` (`warrant`),
  CONSTRAINT `FK2_mdt_reports_people` FOREIGN KEY (`warrant`) REFERENCES `mdt_warrants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_mdt_reports_people` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.mdt_reports_people: ~9 rows (approximately)
INSERT INTO `mdt_reports_people` (`id`, `report`, `type`, `SID`, `First`, `Last`, `Callsign`, `Licenses`, `charges`, `sentenced`, `sentencedAt`, `plea`, `points`, `fine`, `jail`, `parole`, `reduction`, `revoked`, `doc`, `expunged`, `warrant`) VALUES
	(1, 1, 'primary', 1, 'te', 'te', '25', '{}', '{}', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, NULL),
	(2, 2, 'primary', 1, 'te', 'te', '25', '{}', '{}', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, NULL),
	(3, 2, 'suspect', 1, 'te', 'te', NULL, '{"Drift":{"Suspended":false,"Active":false},"Weapons":{"Suspended":false,"Active":false},"Hunting":{"Suspended":false,"Active":false},"Pilot":{"Suspended":false,"Active":false},"Fishing":{"Suspended":false,"Active":false},"Drivers":{"Suspended":false,"Points":0,"Active":true}}', '[{"count":1,"id":116},{"count":1,"id":143},{"count":1,"id":142}]', 1, '2024-07-15 02:32:45', 'unknown', 0, 450, 0, 0, '{"value":0,"type":false}', '{"hunting":false,"weapons":false,"fishing":false,"drivers":false}', 0, 0, NULL),
	(4, 3, 'primary', 1, 'te', 'te', '25', '{}', '{}', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, NULL),
	(5, 3, 'suspect', 1, 'te', 'te', NULL, '{"Drift":{"Suspended":false,"Active":false},"Weapons":{"Suspended":false,"Active":false},"Hunting":{"Suspended":false,"Active":false},"Pilot":{"Suspended":false,"Active":false},"Fishing":{"Suspended":false,"Active":false},"Drivers":{"Suspended":false,"Points":0,"Active":true}}', '[{"count":1,"id":142},{"count":1,"id":54},{"count":1,"id":34}]', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, 2),
	(6, 4, 'primary', 1, 'te', 'te', '25', '{}', '{}', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, NULL),
	(7, 4, 'suspect', 1, 'te', 'te', NULL, '{"Drift":{"Suspended":false,"Active":false},"Weapons":{"Suspended":false,"Active":false},"Hunting":{"Suspended":false,"Active":false},"Pilot":{"Suspended":false,"Active":false},"Fishing":{"Suspended":false,"Active":false},"Drivers":{"Suspended":false,"Points":0,"Active":true}}', '[{"count":1,"id":93},{"count":1,"id":132},{"count":1,"id":94},{"count":1,"id":73},{"count":1,"id":97}]', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, 3),
	(8, 5, 'primary', 1, 'te', 'te', '25', '{}', '{}', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, NULL),
	(9, 5, 'suspect', 1, 'te', 'te', NULL, '{"Drift":{"Suspended":false,"Active":false},"Drivers":{"Active":true,"Points":0,"Suspended":false},"Weapons":{"Suspended":false,"Active":false},"Fishing":{"Suspended":false,"Active":false},"Pilot":{"Suspended":false,"Active":false},"Hunting":{"Suspended":false,"Active":false}}', '[{"id":65,"count":1},{"id":1,"count":1}]', 0, NULL, 'unknown', 0, 0, 0, 0, NULL, NULL, 0, 0, 4);

-- Dumping structure for table sandbox.mdt_warrants
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) NOT NULL DEFAULT 'active',
  `title` varchar(1024) NOT NULL,
  `report` int(10) NOT NULL,
  `suspect` int(10) NOT NULL,
  `notes` longtext NOT NULL,
  `creatorSID` int(11) NOT NULL,
  `creatorName` varchar(255) NOT NULL DEFAULT '',
  `creatorCallsign` varchar(255) NOT NULL DEFAULT '',
  `issued` datetime NOT NULL DEFAULT current_timestamp(),
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `suspect` (`suspect`),
  KEY `report` (`report`),
  KEY `expires` (`expires`),
  CONSTRAINT `FK1_mdt_warrants` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK2_mdt_warrants` FOREIGN KEY (`suspect`) REFERENCES `mdt_reports_people` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.mdt_warrants: ~4 rows (approximately)
INSERT INTO `mdt_warrants` (`id`, `state`, `title`, `report`, `suspect`, `notes`, `creatorSID`, `creatorName`, `creatorCallsign`, `issued`, `expires`) VALUES
	(1, 'void', 'Warrant For te te (1)', 3, 5, '', 1, 'te te', '25', '2024-07-15 02:33:49', '2024-07-22 02:33:49'),
	(2, 'expired', 'Warrant For te te (1)', 3, 5, 'test', 1, 'te te', '25', '2024-07-15 02:34:21', '2024-07-22 02:34:21'),
	(3, 'expired', 'Warrant For te te (1)', 4, 7, '', 1, 'te te', '25', '2024-07-15 02:38:20', '2024-07-22 02:38:20'),
	(4, 'expired', 'Warrant For te te (1)', 5, 9, '', 1, 'te te', '25', '2024-07-15 12:17:54', '2024-07-22 12:17:54');

-- Dumping structure for table sandbox.meth_tables
CREATE TABLE IF NOT EXISTS `meth_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tier` int(11) NOT NULL DEFAULT 1,
  `created` bigint(20) NOT NULL,
  `cooldown` bigint(20) DEFAULT NULL,
  `recipe` varchar(512) NOT NULL,
  `active_cook` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.meth_tables: ~0 rows (approximately)

-- Dumping structure for table sandbox.moonshine_barrels
CREATE TABLE IF NOT EXISTS `moonshine_barrels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality` int(11) NOT NULL,
  `drinks` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.moonshine_barrels: ~0 rows (approximately)

-- Dumping structure for table sandbox.moonshine_stills
CREATE TABLE IF NOT EXISTS `moonshine_stills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `tier` int(11) NOT NULL,
  `cooldown` int(11) DEFAULT NULL,
  `active_cook` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`active_cook`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.moonshine_stills: ~3 rows (approximately)
INSERT INTO `moonshine_stills` (`id`, `created`, `tier`, `cooldown`, `active_cook`) VALUES
	(1, 1721462882, 1, 1721470298, '{"start_time":1721463098,"end_time":1721464898,"quality":100.0}'),
	(2, 1721494108, 1, NULL, NULL),
	(3, 1721494168, 1, NULL, NULL);

-- Dumping structure for table sandbox.placed_meth_tables
CREATE TABLE IF NOT EXISTS `placed_meth_tables` (
  `table_id` int(11) NOT NULL,
  `owner` bigint(20) DEFAULT NULL,
  `placed` bigint(20) NOT NULL DEFAULT 0,
  `expires` bigint(20) NOT NULL DEFAULT 0,
  `coords` varchar(255) NOT NULL,
  `heading` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.placed_meth_tables: ~0 rows (approximately)

-- Dumping structure for table sandbox.placed_moonshine_barrels
CREATE TABLE IF NOT EXISTS `placed_moonshine_barrels` (
  `barrel_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `placed` int(11) NOT NULL,
  `ready` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`coords`)),
  `heading` float NOT NULL,
  `brew_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`brew_data`)),
  PRIMARY KEY (`barrel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.placed_moonshine_barrels: ~3 rows (approximately)
INSERT INTO `placed_moonshine_barrels` (`barrel_id`, `owner`, `placed`, `ready`, `expires`, `coords`, `heading`, `brew_data`) VALUES
	(1, '1', 1719973587, 1720146387, 1721465000, '{"x":152.12367248535157,"y":-1694.897216796875,"z":28.4493179321289}', 104.099, '{"Quality":9,"Drinks":25}'),
	(3, '1', 1721062224, 1721235024, 1722271824, '{"x":289.565185546875,"y":-1943.5068359375,"z":23.75417137145996}', 53.6165, '{"Drinks":27,"Quality":100.0}'),
	(4, '1', 1721077965, 1721250765, 1722287565, '{"x":289.68194580078127,"y":-1944.3729248046876,"z":23.60334014892578}', 358.917, '{"Drinks":29,"Quality":90.0}');

-- Dumping structure for table sandbox.placed_moonshine_stills
CREATE TABLE IF NOT EXISTS `placed_moonshine_stills` (
  `still_id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `placed` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`coords`)),
  `heading` float NOT NULL,
  PRIMARY KEY (`still_id`),
  CONSTRAINT `placed_moonshine_stills_ibfk_1` FOREIGN KEY (`still_id`) REFERENCES `moonshine_stills` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.placed_moonshine_stills: ~0 rows (approximately)
INSERT INTO `placed_moonshine_stills` (`still_id`, `owner`, `placed`, `expires`, `coords`, `heading`) VALUES
	(1, '1', 1721462900, 1722672482, '{"x":-1038.356201171875,"y":-2739.608642578125,"z":19.16928100585937}', 327.305);

-- Dumping structure for table sandbox.placed_props
CREATE TABLE IF NOT EXISTS `placed_props` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL DEFAULT '',
  `coords` varchar(255) NOT NULL,
  `rotation` varchar(255) NOT NULL,
  `heading` double NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` bigint(20) NOT NULL,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 0,
  `name_override` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.placed_props: ~0 rows (approximately)

-- Dumping structure for table sandbox.player_shops
CREATE TABLE IF NOT EXISTS `player_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `ped_model` varchar(256) DEFAULT NULL,
  `position` text NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `owner_bank` int(11) NOT NULL,
  `job` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.player_shops: ~0 rows (approximately)

-- Dumping structure for table sandbox.player_shops_moderators
CREATE TABLE IF NOT EXISTS `player_shops_moderators` (
  `shop` int(10) unsigned NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shop`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.player_shops_moderators: ~0 rows (approximately)

-- Dumping structure for table sandbox.radiocar_music
CREATE TABLE IF NOT EXISTS `radiocar_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `url` varchar(256) NOT NULL,
  `plate` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table sandbox.radiocar_music: ~0 rows (approximately)

-- Dumping structure for table sandbox.radiocar_owned
CREATE TABLE IF NOT EXISTS `radiocar_owned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spz` varchar(32) NOT NULL,
  `style` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table sandbox.radiocar_owned: ~0 rows (approximately)

-- Dumping structure for table sandbox.radiocar_playlist
CREATE TABLE IF NOT EXISTS `radiocar_playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist` text NOT NULL,
  `plate` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table sandbox.radiocar_playlist: ~0 rows (approximately)

-- Dumping structure for table sandbox.redline_racer_history
CREATE TABLE IF NOT EXISTS `redline_racer_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `placing` int(11) NOT NULL,
  `winnings` text DEFAULT NULL,
  `vehicle` varchar(128) NOT NULL,
  `vehicle_class` varchar(4) NOT NULL,
  `track` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `racer_history_track` (`track`),
  KEY `racer_history` (`sid`) USING BTREE,
  CONSTRAINT `racer_history_track` FOREIGN KEY (`track`) REFERENCES `redline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.redline_racer_history: ~0 rows (approximately)

-- Dumping structure for table sandbox.redline_race_history
CREATE TABLE IF NOT EXISTS `redline_race_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `buyin` int(11) unsigned NOT NULL DEFAULT 0,
  `host` int(11) unsigned NOT NULL,
  `track` int(11) unsigned NOT NULL,
  `class` varchar(4) NOT NULL,
  `racers` longtext NOT NULL DEFAULT '[]',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `race_config` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `race_history_track` (`track`),
  CONSTRAINT `race_history_track` FOREIGN KEY (`track`) REFERENCES `redline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.redline_race_history: ~0 rows (approximately)
INSERT INTO `redline_race_history` (`id`, `state`, `name`, `buyin`, `host`, `track`, `class`, `racers`, `date`, `race_config`) VALUES
	(1, 0, 'adsfasdf', 0, 1, 1, 'All', '[]', '2024-07-08 13:24:55', '{"phasing":"none","host":"gay","phasingAdv":0,"buyin":"0","countdown":"8","class":"All","state":0,"track":1,"dnf_time":"120","host_id":1,"racers":{"gay":{"sid":1,"source":2}},"name":"adsfasdf","laps":1,"time":1720463095,"access":"public","host_src":2,"dnf_start":"3"}');

-- Dumping structure for table sandbox.redline_tracks
CREATE TABLE IF NOT EXISTS `redline_tracks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `distance` varchar(256) NOT NULL,
  `type` varchar(16) NOT NULL,
  `checkpoints` longtext NOT NULL,
  `created_by` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.redline_tracks: ~0 rows (approximately)
INSERT INTO `redline_tracks` (`id`, `name`, `distance`, `type`, `checkpoints`, `created_by`) VALUES
	(1, 'Southside Sprint', '8.32 Miles', 'p2p', '[{"left":{"y":-2545.04,"x":151.89,"z":5.35},"leftrv":{"y":0.99992561340332,"x":0.01190332323312,"z":0.00265991804189},"right":{"y":-2558.54,"x":151.73,"z":5.35},"coords":{"y":-2551.79,"x":151.81,"z":5.35},"facingVector":{"y":-0.01190332323312,"x":0.99992561340332,"z":0.00265991804189},"isStart":true,"size":6.75,"rightrv":{"y":-0.99992561340332,"x":-0.01190332323312,"z":0.00265991804189}},{"left":{"y":-2527.19,"x":253.88,"z":5.2},"leftrv":{"y":0.90037167072296,"x":-0.43512055277824,"z":0.000793842657},"right":{"y":-2547.9,"x":263.89,"z":5.2},"coords":{"y":-2537.54,"x":258.88,"z":5.2},"facingVector":{"y":0.43512055277824,"x":0.90037167072296,"z":0.000793842657},"isStart":false,"size":11.5,"rightrv":{"y":-0.90037167072296,"x":0.43512055277824,"z":0.000793842657}},{"left":{"y":-2500.45,"x":318.7,"z":4.82},"leftrv":{"y":-0.22621075809001,"x":-0.97399795055389,"z":-0.01250652782618},"right":{"y":-2495.02,"x":342.08,"z":4.82},"coords":{"y":-2497.73,"x":330.39,"z":4.82},"facingVector":{"y":0.97399795055389,"x":-0.22621075809001,"z":-0.01250652782618},"isStart":false,"size":12.0,"rightrv":{"y":0.22621075809001,"x":0.97399795055389,"z":-0.01250652782618}},{"left":{"y":-2235.32,"x":340.93,"z":9.9},"leftrv":{"y":0.06015831977128,"x":-0.99571764469146,"z":0.07019367069005},"right":{"y":-2236.76,"x":364.83,"z":9.9},"coords":{"y":-2236.04,"x":352.88,"z":9.9},"facingVector":{"y":0.99571764469146,"x":0.06015831977128,"z":0.07019367069005},"isStart":false,"size":12.0,"rightrv":{"y":-0.06015831977128,"x":0.99571764469146,"z":0.07019367069005}},{"left":{"y":-2178.35,"x":338.72,"z":13.58},"leftrv":{"y":-0.93105173110961,"x":-0.36446127295494,"z":0.01763263903558},"right":{"y":-2153.22,"x":348.56,"z":13.58},"coords":{"y":-2165.79,"x":343.64,"z":13.58},"facingVector":{"y":0.36446127295494,"x":-0.93105173110961,"z":0.01763263903558},"isStart":false,"size":13.5,"rightrv":{"y":0.93105173110961,"x":0.36446127295494,"z":0.01763263903558}},{"left":{"y":-2057.04,"x":239.5,"z":16.98},"leftrv":{"y":0.62439852952957,"x":-0.78102570772171,"z":0.01119582448154},"right":{"y":-2067.03,"x":251.99,"z":16.98},"coords":{"y":-2062.03,"x":245.74,"z":16.98},"facingVector":{"y":0.78102570772171,"x":0.62439852952957,"z":0.01119582448154},"isStart":false,"size":8.0,"rightrv":{"y":-0.62439852952957,"x":0.78102570772171,"z":0.01119582448154}},{"left":{"y":-1941.83,"x":337.19,"z":23.86},"leftrv":{"y":0.64007931947708,"x":-0.76830893754959,"z":-0.0009464265895},"right":{"y":-1952.07,"x":349.48,"z":23.86},"coords":{"y":-1946.95,"x":343.34,"z":23.86},"facingVector":{"y":0.76830893754959,"x":0.64007931947708,"z":-0.0009464265895},"isStart":false,"size":8.0,"rightrv":{"y":-0.64007931947708,"x":0.76830893754959,"z":-0.0009464265895}},{"left":{"y":-1941.26,"x":407.61,"z":23.6},"leftrv":{"y":0.85183537006378,"x":-0.52380520105361,"z":-0.00229657790623},"right":{"y":-1954.89,"x":415.99,"z":23.6},"coords":{"y":-1948.08,"x":411.8,"z":23.6},"facingVector":{"y":0.52380520105361,"x":0.85183537006378,"z":-0.00229657790623},"isStart":false,"size":8.0,"rightrv":{"y":-0.85183537006378,"x":0.52380520105361,"z":-0.00229657790623}},{"left":{"y":-1886.22,"x":527.35,"z":24.86},"leftrv":{"y":0.86129087209701,"x":-0.50810652971267,"z":-0.00248333066701},"right":{"y":-1900.43,"x":535.74,"z":24.86},"coords":{"y":-1893.33,"x":531.55,"z":24.86},"facingVector":{"y":0.50810652971267,"x":0.86129087209701,"z":-0.00248333066701},"isStart":false,"size":8.25,"rightrv":{"y":-0.86129087209701,"x":0.50810652971267,"z":-0.00248333066701}},{"left":{"y":-1762.47,"x":588.89,"z":20.94},"leftrv":{"y":0.10209745168685,"x":-0.99458944797515,"z":-0.0191758275032},"right":{"y":-1763.85,"x":602.32,"z":20.94},"coords":{"y":-1763.16,"x":595.61,"z":20.94},"facingVector":{"y":0.99458944797515,"x":0.10209745168685,"z":-0.0191758275032},"isStart":false,"size":6.75,"rightrv":{"y":-0.10209745168685,"x":0.99458944797515,"z":-0.0191758275032}},{"left":{"y":-1629.06,"x":597.34,"z":24.34},"leftrv":{"y":0.07507366687059,"x":-0.99672126770019,"z":-0.03016951866447},"right":{"y":-1630.33,"x":614.28,"z":24.34},"coords":{"y":-1629.7,"x":605.81,"z":24.34},"facingVector":{"y":0.99672126770019,"x":0.07507366687059,"z":-0.03016951866447},"isStart":false,"size":8.5,"rightrv":{"y":-0.07507366687059,"x":0.99672126770019,"z":-0.03016951866447}},{"left":{"y":-1560.07,"x":561.17,"z":28.58},"leftrv":{"y":-0.77419412136077,"x":-0.63197439908981,"z":0.03510232269763},"right":{"y":-1546.91,"x":571.91,"z":28.58},"coords":{"y":-1553.49,"x":566.54,"z":28.58},"facingVector":{"y":0.63197439908981,"x":-0.77419412136077,"z":0.03510232269763},"isStart":false,"size":8.5,"rightrv":{"y":0.77419412136077,"x":0.63197439908981,"z":0.03510232269763}},{"left":{"y":-1529.22,"x":522.99,"z":28.63},"leftrv":{"y":-0.6840317249298,"x":0.7294076681137,"z":0.0080837206915},"right":{"y":-1522.38,"x":515.7,"z":28.63},"coords":{"y":-1525.8,"x":519.34,"z":28.63},"facingVector":{"y":-0.7294076681137,"x":-0.6840317249298,"z":0.0080837206915},"isStart":false,"size":5.0,"rightrv":{"y":0.6840317249298,"x":-0.7294076681137,"z":0.0080837206915}},{"left":{"y":-1614.13,"x":472.21,"z":28.72},"leftrv":{"y":-0.65811747312545,"x":0.75289762020111,"z":0.00515914708375},"right":{"y":-1607.55,"x":464.68,"z":28.72},"coords":{"y":-1610.84,"x":468.44,"z":28.72},"facingVector":{"y":-0.75289762020111,"x":-0.65811747312545,"z":0.00515914708375},"isStart":false,"size":5.0,"rightrv":{"y":0.65811747312545,"x":-0.75289762020111,"z":0.00515914708375}},{"left":{"y":-1734.31,"x":343.61,"z":28.75},"leftrv":{"y":-0.82413357496261,"x":-0.56639432907104,"z":0.00107503868639},"right":{"y":-1722.36,"x":351.82,"z":28.75},"coords":{"y":-1728.33,"x":347.72,"z":28.75},"facingVector":{"y":0.56639432907104,"x":-0.82413357496261,"z":0.00107503868639},"isStart":false,"size":7.25,"rightrv":{"y":0.82413357496261,"x":0.56639432907104,"z":0.00107503868639}},{"left":{"y":-1706.43,"x":338.65,"z":28.71},"leftrv":{"y":0.63069158792495,"x":-0.77302861213684,"z":0.06822851300239},"right":{"y":-1712.74,"x":346.38,"z":28.71},"coords":{"y":-1709.58,"x":342.51,"z":28.71},"facingVector":{"y":0.77302861213684,"x":0.63069158792495,"z":0.06822851300239},"isStart":false,"size":5.0,"rightrv":{"y":-0.63069158792495,"x":0.77302861213684,"z":0.06822851300239}},{"left":{"y":-1665.58,"x":384.71,"z":26.7},"leftrv":{"y":-0.59702265262603,"x":0.8014817237854,"z":0.03450896963477},"right":{"y":-1659.61,"x":376.69,"z":26.7},"coords":{"y":-1662.59,"x":380.7,"z":26.7},"facingVector":{"y":-0.8014817237854,"x":-0.59702265262603,"z":0.03450896963477},"isStart":false,"size":5.0,"rightrv":{"y":0.59702265262603,"x":-0.8014817237854,"z":0.03450896963477}},{"left":{"y":-1659.59,"x":361.86,"z":26.65},"leftrv":{"y":-0.75889730453491,"x":-0.65121048688888,"z":-0.0000518129309},"right":{"y":-1652.0,"x":368.37,"z":26.65},"coords":{"y":-1655.79,"x":365.11,"z":26.65},"facingVector":{"y":0.65121048688888,"x":-0.75889730453491,"z":-0.0000518129309},"isStart":false,"size":5.0,"rightrv":{"y":0.75889730453491,"x":0.65121048688888,"z":-0.0000518129309}},{"left":{"y":-1682.41,"x":330.74,"z":26.96},"leftrv":{"y":-0.98768162727355,"x":-0.08789994567632,"z":0.12945474684238},"right":{"y":-1672.53,"x":331.62,"z":26.96},"coords":{"y":-1677.47,"x":331.18,"z":26.96},"facingVector":{"y":0.08789994567632,"x":-0.98768162727355,"z":0.12945474684238},"isStart":false,"size":5.0,"rightrv":{"y":0.98768162727355,"x":0.08789994567632,"z":0.12945474684238}},{"left":{"y":-1682.93,"x":276.3,"z":28.68},"leftrv":{"y":-0.62147504091262,"x":0.78342878818511,"z":-0.00286012538708},"right":{"y":-1674.54,"x":265.73,"z":28.68},"coords":{"y":-1678.74,"x":271.02,"z":28.68},"facingVector":{"y":-0.78342878818511,"x":-0.62147504091262,"z":-0.00286012538708},"isStart":false,"size":6.75,"rightrv":{"y":0.62147504091262,"x":-0.78342878818511,"z":-0.00286012538708}},{"left":{"y":-1760.02,"x":190.28,"z":28.29},"leftrv":{"y":-0.66664803028106,"x":0.74518013000488,"z":0.01695185713469},"right":{"y":-1751.02,"x":180.22,"z":28.29},"coords":{"y":-1755.52,"x":185.25,"z":28.29},"facingVector":{"y":-0.74518013000488,"x":-0.66664803028106,"z":0.01695185713469},"isStart":false,"size":6.75,"rightrv":{"y":0.66664803028106,"x":-0.74518013000488,"z":0.01695185713469}},{"left":{"y":-1795.36,"x":160.52,"z":28.53},"leftrv":{"y":-0.67836165428161,"x":0.73324614763259,"z":-0.04664065688848},"right":{"y":-1786.21,"x":150.62,"z":28.53},"coords":{"y":-1790.78,"x":155.57,"z":28.53},"facingVector":{"y":-0.73324614763259,"x":-0.67836165428161,"z":-0.04664065688848},"isStart":false,"size":6.75,"rightrv":{"y":0.67836165428161,"x":-0.73324614763259,"z":-0.04664065688848}},{"left":{"y":-1898.91,"x":72.94,"z":21.02},"leftrv":{"y":-0.66241323947906,"x":0.74893337488174,"z":-0.01753867603838},"right":{"y":-1889.97,"x":62.83,"z":21.02},"coords":{"y":-1894.44,"x":67.89,"z":21.02},"facingVector":{"y":-0.74893337488174,"x":-0.66241323947906,"z":-0.01753867603838},"isStart":false,"size":6.75,"rightrv":{"y":0.66241323947906,"x":-0.74893337488174,"z":-0.01753867603838}},{"left":{"y":-1772.09,"x":-107.34,"z":29.1},"leftrv":{"y":-0.764413356781,"x":-0.64376699924468,"z":0.0351624675095},"right":{"y":-1759.86,"x":-97.04,"z":29.1},"coords":{"y":-1765.97,"x":-102.19,"z":29.1},"facingVector":{"y":0.64376699924468,"x":-0.764413356781,"z":0.0351624675095},"isStart":false,"size":8.0,"rightrv":{"y":0.764413356781,"x":0.64376699924468,"z":0.0351624675095}},{"left":{"y":-1766.32,"x":-182.07,"z":29.08},"leftrv":{"y":-0.66518509387969,"x":-0.74557220935821,"z":0.04063151031732},"right":{"y":-1757.67,"x":-172.38,"z":29.08},"coords":{"y":-1761.99,"x":-177.22,"z":29.08},"facingVector":{"y":0.74557220935821,"x":-0.66518509387969,"z":0.04063151031732},"isStart":false,"size":6.5,"rightrv":{"y":0.66518509387969,"x":0.74557220935821,"z":0.04063151031732}},{"left":{"y":-1685.43,"x":-245.39,"z":32.8},"leftrv":{"y":0.0165229588747,"x":-0.99977773427963,"z":0.01309978310018},"right":{"y":-1685.6,"x":-235.39,"z":32.8},"coords":{"y":-1685.52,"x":-240.39,"z":32.8},"facingVector":{"y":0.99977773427963,"x":0.0165229588747,"z":0.01309978310018},"isStart":false,"size":5.0,"rightrv":{"y":-0.0165229588747,"x":0.99977773427963,"z":0.01309978310018}},{"left":{"y":-1504.43,"x":-181.63,"z":32.16},"leftrv":{"y":0.6851332783699,"x":-0.72104710340499,"z":-0.1033624485135},"right":{"y":-1511.28,"x":-174.42,"z":32.16},"coords":{"y":-1507.85,"x":-178.02,"z":32.16},"facingVector":{"y":0.72104710340499,"x":0.6851332783699,"z":-0.1033624485135},"isStart":false,"size":5.0,"rightrv":{"y":-0.6851332783699,"x":0.72104710340499,"z":-0.1033624485135}},{"left":{"y":-1475.24,"x":-216.29,"z":30.9},"leftrv":{"y":-0.75189220905303,"x":-0.65927177667617,"z":0.00414845580235},"right":{"y":-1447.42,"x":-191.89,"z":30.9},"coords":{"y":-1461.33,"x":-204.09,"z":30.9},"facingVector":{"y":0.65927177667617,"x":-0.75189220905303,"z":0.00414845580235},"isStart":false,"size":18.5,"rightrv":{"y":0.75189220905303,"x":0.65927177667617,"z":0.00414845580235}},{"left":{"y":-1372.24,"x":-150.96,"z":29.17},"leftrv":{"y":0.87568539381027,"x":-0.4821311533451,"z":-0.02692457102239},"right":{"y":-1396.76,"x":-137.46,"z":29.17},"coords":{"y":-1384.5,"x":-144.21,"z":29.17},"facingVector":{"y":0.4821311533451,"x":0.87568539381027,"z":-0.02692457102239},"isStart":false,"size":14.0,"rightrv":{"y":-0.87568539381027,"x":0.4821311533451,"z":-0.02692457102239}},{"left":{"y":-1357.47,"x":72.42,"z":28.69},"leftrv":{"y":0.99994349479675,"x":-0.01062243804335,"z":0.00076035939855},"right":{"y":-1379.97,"x":72.66,"z":28.69},"coords":{"y":-1368.72,"x":72.54,"z":28.69},"facingVector":{"y":0.01062243804335,"x":0.99994349479675,"z":0.00076035939855},"isStart":false,"size":11.25,"rightrv":{"y":-0.99994349479675,"x":0.01062243804335,"z":0.00076035939855}},{"left":{"y":-1431.45,"x":145.07,"z":28.69},"leftrv":{"y":-0.68037819862365,"x":0.7328610420227,"z":0.00062148604774},"right":{"y":-1409.68,"x":121.62,"z":28.69},"coords":{"y":-1420.56,"x":133.34,"z":28.69},"facingVector":{"y":-0.7328610420227,"x":-0.68037819862365,"z":0.00062148604774},"isStart":false,"size":16.0,"rightrv":{"y":0.68037819862365,"x":-0.7328610420227,"z":0.00062148604774}},{"left":{"y":-1597.23,"x":1.89,"z":28.69},"leftrv":{"y":-0.72073227167129,"x":0.69321310520172,"z":0.00073672737926},"right":{"y":-1574.16,"x":-20.29,"z":28.69},"coords":{"y":-1585.69,"x":-9.2,"z":28.69},"facingVector":{"y":-0.69321310520172,"x":-0.72073227167129,"z":0.00073672737926},"isStart":false,"size":16.0,"rightrv":{"y":0.72073227167129,"x":-0.69321310520172,"z":0.00073672737926}},{"left":{"y":-1818.81,"x":-208.92,"z":29.22},"leftrv":{"y":-0.87510514259338,"x":0.48393264412879,"z":-0.00042321838554},"right":{"y":-1790.8,"x":-224.4,"z":29.22},"coords":{"y":-1804.8,"x":-216.66,"z":29.22},"facingVector":{"y":-0.48393264412879,"x":-0.87510514259338,"z":-0.00042321838554},"isStart":false,"size":16.0,"rightrv":{"y":0.87510514259338,"x":-0.48393264412879,"z":-0.00042321838554}},{"left":{"y":-1840.62,"x":-237.31,"z":28.38},"leftrv":{"y":0.39348876476287,"x":0.91922569274902,"z":0.01382028590887},"right":{"y":-1846.52,"x":-251.1,"z":28.38},"coords":{"y":-1843.57,"x":-244.2,"z":28.38},"facingVector":{"y":-0.91922569274902,"x":0.39348876476287,"z":0.01382028590887},"isStart":false,"size":7.5,"rightrv":{"y":-0.39348876476287,"x":-0.91922569274902,"z":0.01382028590887}},{"left":{"y":-1941.85,"x":-152.52,"z":23.7},"leftrv":{"y":0.30153763294219,"x":0.95192778110504,"z":-0.05393475666642},"right":{"y":-1946.38,"x":-166.8,"z":23.7},"coords":{"y":-1944.12,"x":-159.66,"z":23.7},"facingVector":{"y":-0.95192778110504,"x":0.30153763294219,"z":-0.05393475666642},"isStart":false,"size":7.5,"rightrv":{"y":-0.30153763294219,"x":-0.95192778110504,"z":-0.05393475666642}},{"left":{"y":-2004.65,"x":-143.67,"z":21.79},"leftrv":{"y":0.97989672422409,"x":0.12867076694965,"z":-0.15246941149234},"right":{"y":-2017.39,"x":-145.34,"z":21.79},"coords":{"y":-2011.02,"x":-144.5,"z":21.79},"facingVector":{"y":-0.12867076694965,"x":0.97989672422409,"z":-0.15246941149234},"isStart":false,"size":6.5,"rightrv":{"y":-0.97989672422409,"x":-0.12867076694965,"z":-0.15246941149234}},{"left":{"y":-2012.46,"x":-100.56,"z":17.37},"leftrv":{"y":0.99935275316238,"x":0.03596783429384,"z":0.00071290862979},"right":{"y":-2025.46,"x":-101.03,"z":17.37},"coords":{"y":-2018.96,"x":-100.79,"z":17.37},"facingVector":{"y":-0.03596783429384,"x":0.99935275316238,"z":0.00071290862979},"isStart":false,"size":6.5,"rightrv":{"y":-0.99935275316238,"x":-0.03596783429384,"z":0.00071290862979}},{"left":{"y":-2009.99,"x":-64.21,"z":17.37},"leftrv":{"y":-0.4209961593151,"x":-0.90706187486648,"z":0.00100730301346},"right":{"y":-2001.78,"x":-46.52,"z":17.37},"coords":{"y":-2005.89,"x":-55.37,"z":17.37},"facingVector":{"y":0.90706187486648,"x":-0.4209961593151,"z":0.00100730301346},"isStart":false,"size":9.75,"rightrv":{"y":0.4209961593151,"x":0.90706187486648,"z":0.00100730301346}},{"left":{"y":-1999.42,"x":-96.03,"z":17.37},"leftrv":{"y":-0.99230587482452,"x":-0.12380958348512,"z":0.0004718369455},"right":{"y":-1989.0,"x":-94.73,"z":17.37},"coords":{"y":-1994.21,"x":-95.38,"z":17.37},"facingVector":{"y":0.12380958348512,"x":-0.99230587482452,"z":0.0004718369455},"isStart":false,"size":5.25,"rightrv":{"y":0.99230587482452,"x":0.12380958348512,"z":0.0004718369455}},{"left":{"y":-2007.7,"x":-102.38,"z":17.37},"leftrv":{"y":-0.16820782423019,"x":0.98575139045715,"z":0.00052633578889},"right":{"y":-2005.0,"x":-118.15,"z":17.37},"coords":{"y":-2006.35,"x":-110.26,"z":17.37},"facingVector":{"y":-0.98575139045715,"x":-0.16820782423019,"z":0.00052633578889},"isStart":false,"size":8.0,"rightrv":{"y":0.16820782423019,"x":-0.98575139045715,"z":0.00052633578889}},{"left":{"y":-2043.66,"x":-104.98,"z":16.82},"leftrv":{"y":0.29916211962699,"x":0.95360749959945,"z":-0.03368899971246},"right":{"y":-2048.44,"x":-120.24,"z":16.82},"coords":{"y":-2046.05,"x":-112.61,"z":16.82},"facingVector":{"y":-0.95360749959945,"x":0.29916211962699,"z":-0.03368899971246},"isStart":false,"size":8.0,"rightrv":{"y":-0.29916211962699,"x":-0.95360749959945,"z":-0.03368899971246}},{"left":{"y":-2138.47,"x":-93.68,"z":16.05},"leftrv":{"y":-0.88591027259826,"x":0.46385610103607,"z":0.00079670804552},"right":{"y":-2108.79,"x":-109.22,"z":16.05},"coords":{"y":-2123.63,"x":-101.45,"z":16.05},"facingVector":{"y":-0.46385610103607,"x":-0.88591027259826,"z":0.00079670804552},"isStart":false,"size":16.75,"rightrv":{"y":0.88591027259826,"x":-0.46385610103607,"z":0.00079670804552}},{"left":{"y":-2169.96,"x":-253.4,"z":9.44},"leftrv":{"y":-0.99761348962783,"x":0.01452017668634,"z":-0.06750496476888},"right":{"y":-2158.99,"x":-253.56,"z":9.44},"coords":{"y":-2164.48,"x":-253.48,"z":9.44},"facingVector":{"y":-0.01452017668634,"x":-0.99761348962783,"z":-0.06750496476888},"isStart":false,"size":5.5,"rightrv":{"y":0.99761348962783,"x":-0.01452017668634,"z":-0.06750496476888}},{"left":{"y":-2168.65,"x":-306.37,"z":9.7},"leftrv":{"y":-0.82559561729431,"x":-0.56425696611404,"z":0.00226015760563},"right":{"y":-2157.92,"x":-299.04,"z":9.7},"coords":{"y":-2163.29,"x":-302.7,"z":9.7},"facingVector":{"y":0.56425696611404,"x":-0.82559561729431,"z":0.00226015760563},"isStart":false,"size":6.5,"rightrv":{"y":0.82559561729431,"x":0.56425696611404,"z":0.00226015760563}},{"left":{"y":-2155.71,"x":-504.87,"z":8.28},"leftrv":{"y":-0.63327449560165,"x":0.77150851488113,"z":-0.06113993003964},"right":{"y":-2145.58,"x":-517.21,"z":8.28},"coords":{"y":-2150.65,"x":-511.04,"z":8.28},"facingVector":{"y":-0.77150851488113,"x":-0.63327449560165,"z":-0.06113993003964},"isStart":false,"size":8.0,"rightrv":{"y":0.63327449560165,"x":-0.77150851488113,"z":-0.06113993003964}},{"left":{"y":-2457.96,"x":-753.54,"z":13.79},"leftrv":{"y":-0.43164214491844,"x":0.90200322866439,"z":-0.00867740996181},"right":{"y":-2449.11,"x":-772.03,"z":13.79},"coords":{"y":-2453.53,"x":-762.78,"z":13.79},"facingVector":{"y":-0.90200322866439,"x":-0.43164214491844,"z":-0.00867740996181},"isStart":false,"size":10.25,"rightrv":{"y":0.43164214491844,"x":-0.90200322866439,"z":-0.00867740996181}},{"left":{"y":-2490.29,"x":-794.33,"z":12.88},"leftrv":{"y":-0.99738126993179,"x":-0.04791057109832,"z":-0.05417932197451},"right":{"y":-2480.32,"x":-793.85,"z":12.88},"coords":{"y":-2485.3,"x":-794.09,"z":12.88},"facingVector":{"y":0.04791057109832,"x":-0.99738126993179,"z":-0.05417932197451},"isStart":false,"size":5.0,"rightrv":{"y":0.99738126993179,"x":0.04791057109832,"z":-0.05417932197451}},{"left":{"y":-2474.69,"x":-810.38,"z":13.03},"leftrv":{"y":-0.3895114660263,"x":-0.92101854085922,"z":0.00239776307716},"right":{"y":-2470.79,"x":-801.17,"z":13.03},"coords":{"y":-2472.74,"x":-805.78,"z":13.03},"facingVector":{"y":0.92101854085922,"x":-0.3895114660263,"z":0.00239776307716},"isStart":false,"size":5.0,"rightrv":{"y":0.3895114660263,"x":0.92101854085922,"z":0.00239776307716}},{"left":{"y":-2133.82,"x":-698.6,"z":12.71},"leftrv":{"y":0.75206112861633,"x":-0.65890020132064,"z":0.01595521904528},"right":{"y":-2141.34,"x":-692.01,"z":12.71},"coords":{"y":-2137.58,"x":-695.31,"z":12.71},"facingVector":{"y":0.65890020132064,"x":0.75206112861633,"z":0.01595521904528},"isStart":false,"size":5.0,"rightrv":{"y":-0.75206112861633,"x":0.65890020132064,"z":0.01595521904528}},{"left":{"y":-2078.37,"x":-563.95,"z":26.69},"leftrv":{"y":0.99989813566207,"x":-0.00901378132402,"z":0.0110792228952},"right":{"y":-2088.37,"x":-563.86,"z":26.69},"coords":{"y":-2083.37,"x":-563.9,"z":26.69},"facingVector":{"y":0.00901378132402,"x":0.99989813566207,"z":0.0110792228952},"isStart":false,"size":5.0,"rightrv":{"y":-0.99989813566207,"x":0.00901378132402,"z":0.0110792228952}},{"left":{"y":-2100.57,"x":-373.22,"z":24.62},"leftrv":{"y":0.96006458997726,"x":0.27724495530128,"z":-0.03756964579224},"right":{"y":-2110.17,"x":-375.99,"z":24.62},"coords":{"y":-2105.37,"x":-374.6,"z":24.62},"facingVector":{"y":-0.27724495530128,"x":0.96006458997726,"z":-0.03756964579224},"isStart":false,"size":5.0,"rightrv":{"y":-0.96006458997726,"x":-0.27724495530128,"z":-0.03756964579224}},{"left":{"y":-2086.21,"x":-171.26,"z":24.47},"leftrv":{"y":0.93181711435317,"x":-0.3607333600521,"z":0.03985207155346},"right":{"y":-2114.16,"x":-160.44,"z":24.47},"coords":{"y":-2100.18,"x":-165.85,"z":24.47},"facingVector":{"y":0.3607333600521,"x":0.93181711435317,"z":0.03985207155346},"isStart":false,"size":15.0,"rightrv":{"y":-0.93181711435317,"x":0.3607333600521,"z":0.03985207155346}},{"left":{"y":-2032.85,"x":202.23,"z":17.72},"leftrv":{"y":0.88941293954849,"x":0.45710003376007,"z":0.00208195438608},"right":{"y":-2062.2,"x":187.15,"z":17.72},"coords":{"y":-2047.52,"x":194.69,"z":17.72},"facingVector":{"y":-0.45710003376007,"x":0.88941293954849,"z":0.00208195438608},"isStart":false,"size":16.5,"rightrv":{"y":-0.88941293954849,"x":-0.45710003376007,"z":0.00208195438608}},{"left":{"y":-2129.12,"x":408.19,"z":18.01},"leftrv":{"y":0.65104073286056,"x":-0.7561131119728,"z":0.06663062423467},"right":{"y":-2146.69,"x":428.61,"z":18.01},"coords":{"y":-2137.9,"x":418.4,"z":18.01},"facingVector":{"y":0.7561131119728,"x":0.65104073286056,"z":0.06663062423467},"isStart":false,"size":13.5,"rightrv":{"y":-0.65104073286056,"x":0.7561131119728,"z":0.06663062423467}},{"left":{"y":-2041.79,"x":686.5,"z":28.83},"leftrv":{"y":0.99646925926208,"x":0.08394782245159,"z":0.00131365284323},"right":{"y":-2072.18,"x":683.94,"z":28.83},"coords":{"y":-2056.99,"x":685.22,"z":28.83},"facingVector":{"y":-0.08394782245159,"x":0.99646925926208,"z":0.00131365284323},"isStart":false,"size":15.25,"rightrv":{"y":-0.99646925926208,"x":-0.08394782245159,"z":0.00131365284323}},{"left":{"y":-2062.53,"x":859.55,"z":29.59},"leftrv":{"y":0.9985949397087,"x":0.05011701956391,"z":0.01722758449614},"right":{"y":-2089.5,"x":858.2,"z":29.59},"coords":{"y":-2076.01,"x":858.88,"z":29.59},"facingVector":{"y":-0.05011701956391,"x":0.9985949397087,"z":0.01722758449614},"isStart":false,"size":13.5,"rightrv":{"y":-0.9985949397087,"x":-0.05011701956391,"z":0.01722758449614}},{"left":{"y":-2068.83,"x":969.02,"z":30.26},"leftrv":{"y":0.99950695037841,"x":0.02828351221978,"z":0.01365980133414},"right":{"y":-2099.32,"x":968.16,"z":30.26},"coords":{"y":-2084.08,"x":968.59,"z":30.26},"facingVector":{"y":-0.02828351221978,"x":0.99950695037841,"z":0.01365980133414},"isStart":false,"size":15.25,"rightrv":{"y":-0.99950695037841,"x":-0.02828351221978,"z":0.01365980133414}},{"left":{"y":-2077.93,"x":1271.41,"z":44.46},"leftrv":{"y":0.37002927064895,"x":0.92805230617523,"z":0.04239302128553},"right":{"y":-2092.73,"x":1234.29,"z":44.46},"coords":{"y":-2085.33,"x":1252.85,"z":44.46},"facingVector":{"y":-0.92805230617523,"x":0.37002927064895,"z":0.04239302128553},"isStart":false,"size":20.0,"rightrv":{"y":-0.37002927064895,"x":-0.92805230617523,"z":0.04239302128553}},{"left":{"y":-2408.91,"x":1340.05,"z":50.42},"leftrv":{"y":-0.26495510339736,"x":0.96362328529357,"z":-0.03505703434348},"right":{"y":-2401.23,"x":1312.11,"z":50.42},"coords":{"y":-2405.07,"x":1326.08,"z":50.42},"facingVector":{"y":-0.96362328529357,"x":-0.26495510339736,"z":-0.03505703434348},"isStart":false,"size":14.5,"rightrv":{"y":0.26495510339736,"x":-0.96362328529357,"z":-0.03505703434348}},{"left":{"y":-2570.7,"x":1188.08,"z":35.28},"leftrv":{"y":0.65005671977996,"x":0.75279939174652,"z":0.1035364344716},"right":{"y":-2581.42,"x":1175.65,"z":35.28},"coords":{"y":-2576.06,"x":1181.86,"z":35.28},"facingVector":{"y":-0.75279939174652,"x":0.65005671977996,"z":0.1035364344716},"isStart":false,"size":8.25,"rightrv":{"y":-0.65005671977996,"x":-0.75279939174652,"z":0.1035364344716}},{"left":{"y":-2571.91,"x":1451.74,"z":47.63},"leftrv":{"y":0.97516441345214,"x":0.22087584435939,"z":0.01637733541429},"right":{"y":-2586.05,"x":1448.53,"z":47.63},"coords":{"y":-2578.98,"x":1450.14,"z":47.63},"facingVector":{"y":-0.22087584435939,"x":0.97516441345214,"z":0.01637733541429},"isStart":false,"size":7.25,"rightrv":{"y":-0.97516441345214,"x":-0.22087584435939,"z":0.01637733541429}},{"left":{"y":-2523.26,"x":1634.3,"z":72.95},"leftrv":{"y":0.91489523649215,"x":-0.379234790802,"z":0.13837563991546},"right":{"y":-2538.35,"x":1640.55,"z":72.95},"coords":{"y":-2530.8,"x":1637.43,"z":72.95},"facingVector":{"y":0.379234790802,"x":0.91489523649215,"z":0.13837563991546},"isStart":false,"size":8.25,"rightrv":{"y":-0.91489523649215,"x":0.379234790802,"z":0.13837563991546}},{"left":{"y":-2382.34,"x":1641.18,"z":94.31},"leftrv":{"y":0.8496435880661,"x":-0.52535444498062,"z":0.04591990634799},"right":{"y":-2396.36,"x":1649.85,"z":94.31},"coords":{"y":-2389.35,"x":1645.51,"z":94.31},"facingVector":{"y":0.52535444498062,"x":0.8496435880661,"z":0.04591990634799},"isStart":false,"size":8.25,"rightrv":{"y":-0.8496435880661,"x":0.52535444498062,"z":0.04591990634799}},{"left":{"y":-2181.65,"x":1643.17,"z":107.77},"leftrv":{"y":0.19105234742164,"x":-0.98089736700057,"z":-0.03659544512629},"right":{"y":-2184.81,"x":1659.35,"z":107.77},"coords":{"y":-2183.23,"x":1651.26,"z":107.77},"facingVector":{"y":0.98089736700057,"x":0.19105234742164,"z":-0.03659544512629},"isStart":false,"size":8.25,"rightrv":{"y":-0.19105234742164,"x":0.98089736700057,"z":-0.03659544512629}},{"left":{"y":-1900.87,"x":1744.01,"z":116.57},"leftrv":{"y":0.34143009781837,"x":-0.93984204530715,"z":0.01108487695455},"right":{"y":-1906.5,"x":1759.52,"z":116.57},"coords":{"y":-1903.68,"x":1751.76,"z":116.57},"facingVector":{"y":0.93984204530715,"x":0.34143009781837,"z":0.01108487695455},"isStart":false,"size":8.25,"rightrv":{"y":-0.34143009781837,"x":0.93984204530715,"z":0.01108487695455}},{"left":{"y":-1777.89,"x":1715.06,"z":110.96},"leftrv":{"y":0.30540922284126,"x":-0.95039469003677,"z":0.05895016342401},"right":{"y":-1782.93,"x":1730.74,"z":110.96},"coords":{"y":-1780.41,"x":1722.9,"z":110.96},"facingVector":{"y":0.95039469003677,"x":0.30540922284126,"z":0.05895016342401},"isStart":false,"size":8.25,"rightrv":{"y":-0.30540922284126,"x":0.95039469003677,"z":0.05895016342401}},{"left":{"y":-1621.77,"x":1800.96,"z":117.88},"leftrv":{"y":-0.41886076331138,"x":-0.90788269042968,"z":-0.01745508238673},"right":{"y":-1615.28,"x":1815.03,"z":117.88},"coords":{"y":-1618.52,"x":1808.0,"z":117.88},"facingVector":{"y":0.90788269042968,"x":-0.41886076331138,"z":-0.01745508238673},"isStart":false,"size":7.75,"rightrv":{"y":0.41886076331138,"x":0.90788269042968,"z":-0.01745508238673}},{"left":{"y":-1453.61,"x":1810.68,"z":120.32},"leftrv":{"y":0.28519758582115,"x":-0.95192670822143,"z":0.111795052886},"right":{"y":-1458.03,"x":1825.44,"z":120.32},"coords":{"y":-1455.82,"x":1818.06,"z":120.32},"facingVector":{"y":0.95192670822143,"x":0.28519758582115,"z":0.111795052886},"isStart":false,"size":7.75,"rightrv":{"y":-0.28519758582115,"x":0.95192670822143,"z":0.111795052886}},{"left":{"y":-1120.21,"x":1931.39,"z":100.03},"leftrv":{"y":-0.03315017744898,"x":-0.98254430294036,"z":-0.18305180966854},"right":{"y":-1119.7,"x":1946.62,"z":100.03},"coords":{"y":-1119.96,"x":1939.0,"z":100.03},"facingVector":{"y":0.98254430294036,"x":-0.03315017744898,"z":-0.18305180966854},"isStart":false,"size":7.75,"rightrv":{"y":0.03315017744898,"x":0.98254430294036,"z":-0.18305180966854}},{"left":{"y":-951.0,"x":1983.94,"z":78.51},"leftrv":{"y":-0.577830016613,"x":-0.81611663103103,"z":-0.0081327445805},"right":{"y":-942.04,"x":1996.59,"z":78.51},"coords":{"y":-946.52,"x":1990.26,"z":78.51},"facingVector":{"y":0.81611663103103,"x":-0.577830016613,"z":-0.0081327445805},"isStart":false,"size":7.75,"rightrv":{"y":0.577830016613,"x":0.81611663103103,"z":-0.0081327445805}},{"left":{"y":-954.12,"x":1934.32,"z":78.52},"leftrv":{"y":-0.77615028619766,"x":0.63054722547531,"z":0.00064109277445},"right":{"y":-942.86,"x":1925.18,"z":78.52},"coords":{"y":-948.49,"x":1929.75,"z":78.52},"facingVector":{"y":-0.63054722547531,"x":-0.77615028619766,"z":0.00064109277445},"isStart":false,"size":7.25,"rightrv":{"y":0.77615028619766,"x":-0.63054722547531,"z":0.00064109277445}},{"left":{"y":-1332.99,"x":1675.12,"z":83.77},"leftrv":{"y":-0.8864933848381,"x":0.46123865246772,"z":-0.03726625069975},"right":{"y":-1314.82,"x":1665.66,"z":83.77},"coords":{"y":-1323.9,"x":1670.39,"z":83.77},"facingVector":{"y":-0.46123865246772,"x":-0.8864933848381,"z":-0.03726625069975},"isStart":false,"size":10.25,"rightrv":{"y":0.8864933848381,"x":-0.46123865246772,"z":-0.03726625069975}},{"left":{"y":-1517.93,"x":1437.86,"z":61.72},"leftrv":{"y":-0.99523973464965,"x":-0.02059710770845,"z":-0.09525597095489},"right":{"y":-1505.0,"x":1438.13,"z":61.72},"coords":{"y":-1511.47,"x":1437.99,"z":61.72},"facingVector":{"y":0.02059710770845,"x":-0.99523973464965,"z":-0.09525597095489},"isStart":false,"size":6.5,"rightrv":{"y":0.99523973464965,"x":0.02059710770845,"z":-0.09525597095489}},{"left":{"y":-1556.65,"x":1318.68,"z":49.36},"leftrv":{"y":-0.93728977441787,"x":0.32673633098602,"z":-0.1213721036911},"right":{"y":-1540.71,"x":1313.12,"z":49.36},"coords":{"y":-1548.68,"x":1315.9,"z":49.36},"facingVector":{"y":-0.32673633098602,"x":-0.93728977441787,"z":-0.1213721036911},"isStart":false,"size":8.5,"rightrv":{"y":0.93728977441787,"x":-0.32673633098602,"z":-0.1213721036911}},{"left":{"y":-1529.73,"x":1271.87,"z":43.41},"leftrv":{"y":-0.36986076831817,"x":-0.91313767433166,"z":-0.17141339182853},"right":{"y":-1519.37,"x":1297.44,"z":43.41},"coords":{"y":-1524.55,"x":1284.66,"z":43.41},"facingVector":{"y":0.91313767433166,"x":-0.36986076831817,"z":-0.17141339182853},"isStart":false,"size":14.0,"rightrv":{"y":0.36986076831817,"x":0.91313767433166,"z":-0.17141339182853}},{"left":{"y":-1450.32,"x":1199.21,"z":34.59},"leftrv":{"y":-0.99978047609329,"x":0.01783875934779,"z":0.01098167523741},"right":{"y":-1419.33,"x":1198.66,"z":34.59},"coords":{"y":-1434.82,"x":1198.93,"z":34.59},"facingVector":{"y":-0.01783875934779,"x":-0.99978047609329,"z":0.01098167523741},"isStart":false,"size":15.5,"rightrv":{"y":0.99978047609329,"x":-0.01783875934779,"z":0.01098167523741}},{"left":{"y":-1449.65,"x":978.29,"z":30.87},"leftrv":{"y":-0.99968570470809,"x":-0.00513870827853,"z":-0.02453888207674},"right":{"y":-1422.65,"x":978.43,"z":30.87},"coords":{"y":-1436.15,"x":978.36,"z":30.87},"facingVector":{"y":0.00513870827853,"x":-0.99968570470809,"z":-0.02453888207674},"isStart":false,"size":13.5,"rightrv":{"y":0.99968570470809,"x":0.00513870827853,"z":-0.02453888207674}},{"left":{"y":-1452.68,"x":819.49,"z":26.64},"leftrv":{"y":-0.99997955560684,"x":0.00633944477885,"z":-0.00094650679966},"right":{"y":-1422.18,"x":819.3,"z":26.64},"coords":{"y":-1437.43,"x":819.4,"z":26.64},"facingVector":{"y":-0.00633944477885,"x":-0.99997955560684,"z":-0.00094650679966},"isStart":false,"size":15.25,"rightrv":{"y":0.99997955560684,"x":-0.00633944477885,"z":-0.00094650679966}},{"left":{"y":-1451.49,"x":569.33,"z":29.16},"leftrv":{"y":-0.99983608722686,"x":0.00686864461749,"z":-0.01676048524677},"right":{"y":-1420.99,"x":569.12,"z":29.16},"coords":{"y":-1436.24,"x":569.23,"z":29.16},"facingVector":{"y":-0.00686864461749,"x":-0.99983608722686,"z":-0.01676048524677},"isStart":false,"size":15.25,"rightrv":{"y":0.99983608722686,"x":-0.00686864461749,"z":-0.01676048524677}},{"left":{"y":-1343.44,"x":344.21,"z":31.9},"leftrv":{"y":-0.75377815961837,"x":-0.65709221363067,"z":0.00696390913799},"right":{"y":-1324.6,"x":360.64,"z":31.9},"coords":{"y":-1334.02,"x":352.42,"z":31.9},"facingVector":{"y":0.65709221363067,"x":-0.75377815961837,"z":0.00696390913799},"isStart":false,"size":12.5,"rightrv":{"y":0.75377815961837,"x":0.65709221363067,"z":0.00696390913799}},{"left":{"y":-1344.02,"x":211.83,"z":28.69},"leftrv":{"y":-0.47250241041183,"x":0.88132917881011,"z":0.00066416792105},"right":{"y":-1328.67,"x":183.18,"z":28.69},"coords":{"y":-1336.35,"x":197.5,"z":28.69},"facingVector":{"y":-0.88132917881011,"x":-0.47250241041183,"z":0.00066416792105},"isStart":false,"size":16.25,"rightrv":{"y":0.47250241041183,"x":-0.88132917881011,"z":0.00066416792105}},{"left":{"y":-1392.61,"x":186.19,"z":28.69},"leftrv":{"y":-0.58271634578704,"x":0.81267553567886,"z":0.00043589944834},"right":{"y":-1365.52,"x":148.4,"z":28.69},"coords":{"y":-1379.06,"x":167.29,"z":28.69},"facingVector":{"y":-0.81267553567886,"x":-0.58271634578704,"z":0.00043589944834},"isStart":false,"size":23.25,"rightrv":{"y":0.58271634578704,"x":-0.81267553567886,"z":0.00043589944834}},{"left":{"y":-1517.11,"x":88.47,"z":28.73},"leftrv":{"y":0.74781084060668,"x":0.663911819458,"z":-0.00014971998461},"right":{"y":-1528.33,"x":78.51,"z":28.73},"coords":{"y":-1522.72,"x":83.49,"z":28.73},"facingVector":{"y":-0.663911819458,"x":0.74781084060668,"z":-0.00014971998461},"isStart":false,"size":7.5,"rightrv":{"y":-0.74781084060668,"x":-0.663911819458,"z":-0.00014971998461}},{"left":{"y":-1577.28,"x":158.81,"z":28.69},"leftrv":{"y":0.77529788017272,"x":0.6315957903862,"z":0.00039637371082},"right":{"y":-1588.91,"x":149.33,"z":28.69},"coords":{"y":-1583.09,"x":154.07,"z":28.69},"facingVector":{"y":-0.6315957903862,"x":0.77529788017272,"z":0.00039637371082},"isStart":false,"size":7.5,"rightrv":{"y":-0.77529788017272,"x":-0.6315957903862,"z":0.00039637371082}},{"left":{"y":-1635.24,"x":252.89,"z":28.63},"leftrv":{"y":0.6961110830307,"x":-0.71790808439254,"z":0.00613203924149},"right":{"y":-1642.21,"x":260.07,"z":28.63},"coords":{"y":-1638.72,"x":256.48,"z":28.63},"facingVector":{"y":0.71790808439254,"x":0.6961110830307,"z":0.00613203924149},"isStart":false,"size":5.0,"rightrv":{"y":-0.6961110830307,"x":0.71790808439254,"z":0.00613203924149}},{"left":{"y":-1582.42,"x":277.4,"z":29.88},"leftrv":{"y":-0.06955263763666,"x":-0.99757802486419,"z":0.00085816171485},"right":{"y":-1581.2,"x":294.86,"z":29.88},"coords":{"y":-1581.81,"x":286.13,"z":29.88},"facingVector":{"y":0.99757802486419,"x":-0.06955263763666,"z":0.00085816171485},"isStart":false,"size":8.75,"rightrv":{"y":0.06955263763666,"x":0.99757802486419,"z":0.00085816171485}},{"left":{"y":-1510.98,"x":296.96,"z":28.68},"leftrv":{"y":0.90882515907287,"x":-0.41717678308486,"z":-0.00058311183238},"right":{"y":-1536.88,"x":308.85,"z":28.68},"coords":{"y":-1523.93,"x":302.91,"z":28.68},"facingVector":{"y":0.41717678308486,"x":0.90882515907287,"z":-0.00058311183238},"isStart":false,"size":14.25,"rightrv":{"y":-0.90882515907287,"x":0.41717678308486,"z":-0.00058311183238}},{"left":{"y":-1537.47,"x":372.65,"z":28.84},"leftrv":{"y":0.81040102243423,"x":0.58587479591369,"z":0.00094892381457},"right":{"y":-1562.19,"x":354.78,"z":28.84},"coords":{"y":-1549.83,"x":363.71,"z":28.84},"facingVector":{"y":-0.58587479591369,"x":0.81040102243423,"z":0.00094892381457},"isStart":false,"size":15.25,"rightrv":{"y":-0.81040102243423,"x":-0.58587479591369,"z":0.00094892381457}},{"left":{"y":-1663.91,"x":432.84,"z":28.66},"leftrv":{"y":-0.62511307001113,"x":0.78053402900695,"z":-0.00056810904061},"right":{"y":-1655.47,"x":422.3,"z":28.66},"coords":{"y":-1659.69,"x":427.57,"z":28.66},"facingVector":{"y":-0.78053402900695,"x":-0.62511307001113,"z":-0.00056810904061},"isStart":false,"size":6.75,"rightrv":{"y":0.62511307001113,"x":-0.78053402900695,"z":-0.00056810904061}},{"left":{"y":-1734.26,"x":343.63,"z":28.75},"leftrv":{"y":-0.82586461305618,"x":-0.5638638138771,"z":0.00225513684563},"right":{"y":-1722.29,"x":351.81,"z":28.75},"coords":{"y":-1728.28,"x":347.72,"z":28.75},"facingVector":{"y":0.5638638138771,"x":-0.82586461305618,"z":0.00225513684563},"isStart":false,"size":7.25,"rightrv":{"y":0.82586461305618,"x":0.5638638138771,"z":0.00225513684563}},{"left":{"y":-1706.28,"x":338.53,"z":28.7},"leftrv":{"y":0.64478331804275,"x":-0.76176726818084,"z":0.06296861171722},"right":{"y":-1712.73,"x":346.15,"z":28.7},"coords":{"y":-1709.5,"x":342.34,"z":28.7},"facingVector":{"y":0.76176726818084,"x":0.64478331804275,"z":0.06296861171722},"isStart":false,"size":5.0,"rightrv":{"y":-0.64478331804275,"x":0.76176726818084,"z":0.06296861171722}},{"left":{"y":-1680.09,"x":343.73,"z":31.88},"leftrv":{"y":0.66501665115356,"x":-0.74682748317718,"z":0.0011624044273},"right":{"y":-1703.37,"x":369.86,"z":31.88},"coords":{"y":-1691.73,"x":356.79,"z":31.88},"facingVector":{"y":0.74682748317718,"x":0.66501665115356,"z":0.0011624044273},"isStart":false,"size":17.5,"rightrv":{"y":-0.66501665115356,"x":0.74682748317718,"z":0.0011624044273}},{"left":{"y":-1665.55,"x":385.11,"z":31.89},"leftrv":{"y":-0.64818006753921,"x":0.76145637035369,"z":0.00685870926827},"right":{"y":-1659.07,"x":377.49,"z":31.89},"coords":{"y":-1662.31,"x":381.3,"z":31.89},"facingVector":{"y":-0.76145637035369,"x":-0.64818006753921,"z":0.00685870926827},"isStart":false,"size":5.0,"rightrv":{"y":0.64818006753921,"x":-0.76145637035369,"z":0.00685870926827}},{"left":{"y":-1678.88,"x":345.18,"z":37.14},"leftrv":{"y":0.65687268972396,"x":-0.75400125980377,"z":0.00077024521306},"right":{"y":-1701.87,"x":371.57,"z":37.14},"coords":{"y":-1690.38,"x":358.37,"z":37.14},"facingVector":{"y":0.75400125980377,"x":0.65687268972396,"z":0.00077024521306},"isStart":false,"size":17.5,"rightrv":{"y":-0.65687268972396,"x":0.75400125980377,"z":0.00077024521306}},{"left":{"y":-1666.03,"x":385.44,"z":37.16},"leftrv":{"y":-0.64795917272567,"x":0.76135098934173,"z":0.02221838198602},"right":{"y":-1659.55,"x":377.83,"z":37.16},"coords":{"y":-1662.79,"x":381.64,"z":37.16},"facingVector":{"y":-0.76135098934173,"x":-0.64795917272567,"z":0.02221838198602},"isStart":false,"size":5.0,"rightrv":{"y":0.64795917272567,"x":-0.76135098934173,"z":0.02221838198602}},{"left":{"y":-1691.73,"x":363.5,"z":42.33},"leftrv":{"y":-0.64638692140579,"x":0.76120418310165,"z":0.05246417596936},"right":{"y":-1685.27,"x":355.89,"z":42.33},"coords":{"y":-1688.5,"x":359.69,"z":42.33},"facingVector":{"y":-0.76120418310165,"x":-0.64638692140579,"z":0.05246417596936},"isStart":false,"size":5.0,"rightrv":{"y":0.64638692140579,"x":-0.76120418310165,"z":0.05246417596936}},{"left":{"y":-1666.07,"x":385.11,"z":42.42},"leftrv":{"y":-0.67197632789611,"x":0.74023115634918,"z":0.02248944342136},"right":{"y":-1659.35,"x":377.71,"z":42.42},"coords":{"y":-1662.71,"x":381.41,"z":42.42},"facingVector":{"y":-0.74023115634918,"x":-0.67197632789611,"z":0.02248944342136},"isStart":false,"size":5.0,"rightrv":{"y":0.67197632789611,"x":-0.74023115634918,"z":0.02248944342136}},{"left":{"y":-1691.66,"x":363.44,"z":47.59},"leftrv":{"y":-0.64439326524734,"x":0.7626918554306,"z":0.05530304089188},"right":{"y":-1685.22,"x":355.82,"z":47.59},"coords":{"y":-1688.44,"x":359.63,"z":47.59},"facingVector":{"y":-0.7626918554306,"x":-0.64439326524734,"z":0.05530304089188},"isStart":false,"size":5.0,"rightrv":{"y":0.64439326524734,"x":-0.7626918554306,"z":0.05530304089188}}]', 'Razor');

-- Dumping structure for table sandbox.redline_track_history
CREATE TABLE IF NOT EXISTS `redline_track_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `track` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `sid` int(11) NOT NULL,
  `lap_start` int(11) NOT NULL,
  `lap_end` int(11) NOT NULL,
  `laptime` int(11) NOT NULL,
  `car` varchar(256) NOT NULL,
  `owned` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `track_history_track` (`track`),
  KEY `track_history_race` (`race`),
  KEY `sid` (`sid`),
  CONSTRAINT `track_history_race` FOREIGN KEY (`race`) REFERENCES `redline_race_history` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `track_history_track` FOREIGN KEY (`track`) REFERENCES `redline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table sandbox.redline_track_history: ~0 rows (approximately)

-- Dumping structure for table sandbox.sequence
CREATE TABLE IF NOT EXISTS `sequence` (
  `id` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `sequence` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.sequence: ~10 rows (approximately)
INSERT INTO `sequence` (`id`, `sequence`) VALUES
	('Account', 1),
	('Character', 3),
	('WEAPON_FLASHLIGHT', 1),
	('WEAPON_FM1_GLOCK19', 1),
	('WEAPON_FM1_M9A3', 1),
	('WEAPON_FM1_P226', 2),
	('WEAPON_MACHETE', 1),
	('WEAPON_PISTOL', 1),
	('WEAPON_STUNGUN', 1),
	('WEAPON_TASER', 1);

-- Dumping structure for table sandbox.shop_bank_accounts
CREATE TABLE IF NOT EXISTS `shop_bank_accounts` (
  `shop` int(10) unsigned NOT NULL,
  `bank` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.shop_bank_accounts: ~0 rows (approximately)

-- Dumping structure for table sandbox.whitelisted_peds
CREATE TABLE IF NOT EXISTS `whitelisted_peds` (
  `sid` int(11) NOT NULL,
  `model` text NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table sandbox.whitelisted_peds: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
