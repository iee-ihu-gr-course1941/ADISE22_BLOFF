-- --------------------------------------------------------
-- Διακομιστής:                  127.0.0.1
-- Έκδοση διακομιστή:            10.4.24-MariaDB - mariadb.org binary distribution
-- Λειτ. σύστημα διακομιστή:     Win64
-- HeidiSQL Έκδοση:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bloffa
CREATE DATABASE IF NOT EXISTS `bloffa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bloffa`;

-- Dumping structure for πίνακας bloffa.cards
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(2) NOT NULL,
  `number` enum('2','3','4','5','6','7','8','9','10','J','Q','K','A') NOT NULL,
  `symbol` enum('C','D','H','S') NOT NULL,
  `player` enum('X','Y','T','F') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloffa.cards: ~52 rows (approximately)
INSERT INTO `cards` (`id`, `number`, `symbol`, `player`) VALUES
	(1, 'A', 'C', NULL),
	(2, '2', 'C', NULL),
	(3, '3', 'C', NULL),
	(4, '4', 'C', NULL),
	(5, '5', 'C', NULL),
	(6, '6', 'C', NULL),
	(7, '7', 'C', NULL),
	(8, '8', 'C', NULL),
	(9, '9', 'C', NULL),
	(10, '10', 'C', NULL),
	(11, 'J', 'C', NULL),
	(12, 'Q', 'C', NULL),
	(13, 'K', 'C', NULL),
	(14, 'A', 'H', NULL),
	(15, '2', 'H', NULL),
	(16, '3', 'H', NULL),
	(17, '4', 'H', NULL),
	(18, '5', 'H', NULL),
	(19, '6', 'H', NULL),
	(20, '7', 'H', NULL),
	(21, '8', 'H', NULL),
	(22, '9', 'H', NULL),
	(23, '10', 'H', NULL),
	(24, 'J', 'H', NULL),
	(25, 'Q', 'H', NULL),
	(26, 'K', 'H', NULL),
	(27, 'A', 'D', NULL),
	(28, '2', 'D', NULL),
	(29, '3', 'D', NULL),
	(30, '4', 'D', NULL),
	(31, '5', 'D', NULL),
	(32, '6', 'D', NULL),
	(33, '7', 'D', NULL),
	(34, '8', 'D', NULL),
	(35, '9', 'D', NULL),
	(36, '10', 'D', NULL),
	(37, 'J', 'D', NULL),
	(38, 'Q', 'D', NULL),
	(39, 'K', 'D', NULL),
	(40, 'A', 'S', NULL),
	(41, '2', 'S', NULL),
	(42, '3', 'S', NULL),
	(43, '4', 'S', NULL),
	(44, '5', 'S', NULL),
	(45, '6', 'S', NULL),
	(46, '7', 'S', NULL),
	(47, '8', 'S', NULL),
	(48, '9', 'S', NULL),
	(49, '10', 'S', NULL),
	(50, 'J', 'S', NULL),
	(51, 'Q', 'S', NULL),
	(52, 'K', 'S', NULL);

-- Dumping structure for πίνακας bloffa.cards_empty
CREATE TABLE IF NOT EXISTS `cards_empty` (
  `id` int(2) NOT NULL,
  `number` enum('2','3','4','5','6','7','8','9','10','J','Q','K','A') NOT NULL,
  `symbol` enum('C','D','H','S') NOT NULL,
  `player` enum('X','Y','T','F') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table bloffa.cards_empty: ~52 rows (approximately)
INSERT INTO `cards_empty` (`id`, `number`, `symbol`, `player`) VALUES
	(1, 'A', 'C', NULL),
	(2, '2', 'C', NULL),
	(3, '3', 'C', NULL),
	(4, '4', 'C', NULL),
	(5, '5', 'C', NULL),
	(6, '6', 'C', NULL),
	(7, '7', 'C', NULL),
	(8, '8', 'C', NULL),
	(9, '9', 'C', NULL),
	(10, '10', 'C', NULL),
	(11, 'J', 'C', NULL),
	(12, 'Q', 'C', NULL),
	(13, 'K', 'C', NULL),
	(14, 'A', 'H', NULL),
	(15, '2', 'H', NULL),
	(16, '3', 'H', NULL),
	(17, '4', 'H', NULL),
	(18, '5', 'H', NULL),
	(19, '6', 'H', NULL),
	(20, '7', 'H', NULL),
	(21, '8', 'H', NULL),
	(22, '9', 'H', NULL),
	(23, '10', 'H', NULL),
	(24, 'J', 'H', NULL),
	(25, 'Q', 'H', NULL),
	(26, 'K', 'H', NULL),
	(27, 'A', 'D', NULL),
	(28, '2', 'D', NULL),
	(29, '3', 'D', NULL),
	(30, '4', 'D', NULL),
	(31, '5', 'D', NULL),
	(32, '6', 'D', NULL),
	(33, '7', 'D', NULL),
	(34, '8', 'D', NULL),
	(35, '9', 'D', NULL),
	(36, '10', 'D', NULL),
	(37, 'J', 'D', NULL),
	(38, 'Q', 'D', NULL),
	(39, 'K', 'D', NULL),
	(40, 'A', 'S', NULL),
	(41, '2', 'S', NULL),
	(42, '3', 'S', NULL),
	(43, '4', 'S', NULL),
	(44, '5', 'S', NULL),
	(45, '6', 'S', NULL),
	(46, '7', 'S', NULL),
	(47, '8', 'S', NULL),
	(48, '9', 'S', NULL),
	(49, '10', 'S', NULL),
	(50, 'J', 'S', NULL),
	(51, 'Q', 'S', NULL),
	(52, 'K', 'S', NULL);

-- Dumping structure for procedure bloffa.clean_cards
DELIMITER //
CREATE PROCEDURE `clean_cards`()
BEGIN
REPLACE INTO cards SELECT * FROM cards_empty;
END//
DELIMITER ;

-- Dumping structure for πίνακας bloffa.game_status
CREATE TABLE IF NOT EXISTS `game_status` (
  `status` enum('not active','initialized','started','\r\nended','aborded') NOT NULL DEFAULT 'not active',
  `player_turn` enum('X','Y') DEFAULT NULL,
  `result` enum('X','Y') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloffa.game_status: ~0 rows (approximately)

-- Dumping structure for πίνακας bloffa.players
CREATE TABLE IF NOT EXISTS `players` (
  `username` varchar(20) DEFAULT NULL,
  `player` enum('X','Y') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloffa.players: ~0 rows (approximately)

-- Dumping structure for trigger bloffa.game_status_update
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER game_status_update BEFORE UPDATE
ON game_status
FOR EACH ROW BEGIN
SET NEW.last_change = NOW();
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
