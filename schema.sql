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

-- Dumping structure for πίνακας bloff.board
CREATE TABLE IF NOT EXISTS `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `piecechar` varchar(11) NOT NULL,
  `piececolor` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloff.board: ~52 rows (approximately)
INSERT INTO `board` (`id`, `piecechar`, `piececolor`) VALUES
	(1, 'A', 'D'),
	(2, '2', 'D'),
	(3, '3', 'D'),
	(4, '4', 'D'),
	(5, '5', 'D'),
	(6, '6', 'D'),
	(7, '7', 'D'),
	(8, '8', 'D'),
	(9, '9', 'D'),
	(10, '10', 'D'),
	(11, 'J', 'D'),
	(12, 'Q', 'D'),
	(13, 'K', 'D'),
	(14, 'A', 'C'),
	(15, '2', 'C'),
	(16, '3', 'C'),
	(17, '4', 'C'),
	(18, '5', 'C'),
	(19, '6', 'C'),
	(20, '7', 'C'),
	(21, '8', 'C'),
	(22, '9', 'C'),
	(23, '10', 'C'),
	(24, 'J', 'C'),
	(25, 'Q', 'C'),
	(26, 'K', 'C'),
	(27, 'A', 'H'),
	(28, '2', 'H'),
	(29, '3', 'H'),
	(30, '4', 'H'),
	(31, '5', 'H'),
	(32, '6', 'H'),
	(33, '7', 'H'),
	(34, '8', 'H'),
	(35, '9', 'H'),
	(36, '10', 'H'),
	(37, 'J', 'H'),
	(38, 'Q', 'H'),
	(39, 'K', 'H'),
	(40, 'A', 'S'),
	(41, '2', 'S'),
	(42, '3', 'S'),
	(43, '4', 'S'),
	(44, '5', 'S'),
	(45, '6', 'S'),
	(46, '7', 'S'),
	(47, '8', 'S'),
	(48, '9', 'S'),
	(49, '10', 'S'),
	(50, 'J', 'S'),
	(51, 'Q', 'S'),
	(52, 'K', 'S');

-- Dumping structure for πίνακας bloff.game
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL,
  `player1_id` int(11) NOT NULL,
  `player2_id` int(11) NOT NULL,
  `outcome` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player1_id` (`player1_id`),
  KEY `outcome` (`outcome`),
  KEY `player2_id` (`player2_id`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`player1_id`) REFERENCES `player` (`id`) ON DELETE CASCADE,
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`outcome`) REFERENCES `player` (`id`) ON DELETE CASCADE,
  CONSTRAINT `game_ibfk_3` FOREIGN KEY (`player2_id`) REFERENCES `player` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloff.game: ~0 rows (approximately)

-- Dumping structure for πίνακας bloff.move
CREATE TABLE IF NOT EXISTS `move` (
  `move_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `round_id` int(11) NOT NULL,
  `player_move` int(11) NOT NULL,
  PRIMARY KEY (`move_id`),
  KEY `game_id` (`game_id`),
  KEY `player_move` (`player_move`),
  CONSTRAINT `move_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  CONSTRAINT `move_ibfk_2` FOREIGN KEY (`player_move`) REFERENCES `board` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloff.move: ~0 rows (approximately)

-- Dumping structure for πίνακας bloff.player
CREATE TABLE IF NOT EXISTS `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloff.player: ~0 rows (approximately)

-- Dumping structure for πίνακας bloff.round
CREATE TABLE IF NOT EXISTS `round` (
  `game_id` int(11) NOT NULL,
  `round_number` int(11) NOT NULL,
  `player1_move` int(11) NOT NULL,
  `player2_move` int(11) NOT NULL,
  KEY `game_id` (`game_id`),
  KEY `player1_move` (`player1_move`),
  KEY `player2_move` (`player2_move`),
  CONSTRAINT `round_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  CONSTRAINT `round_ibfk_2` FOREIGN KEY (`player1_move`) REFERENCES `move` (`move_id`),
  CONSTRAINT `round_ibfk_3` FOREIGN KEY (`player2_move`) REFERENCES `move` (`move_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bloff.round: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
