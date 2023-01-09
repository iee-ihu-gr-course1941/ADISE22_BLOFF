-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 09 Ιαν 2023 στις 17:48:10
-- Έκδοση διακομιστή: 10.4.24-MariaDB
-- Έκδοση PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `bloffa`
--

DELIMITER $$
--
-- Διαδικασίες
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_cards` ()   BEGIN
REPLACE INTO cards SELECT * FROM cards_empty;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `shuffle_deck` ()   BEGIN
  UPDATE cards SET player = 'X' WHERE player IS NULL LIMIT 26;
  UPDATE cards SET player = 'Y' WHERE player IS NULL LIMIT 26;
  UPDATE cards SET player = 'X' WHERE player = 'Y' AND RAND() < 0.5 LIMIT 13;
  UPDATE cards SET player = 'Y' WHERE player = 'X' AND RAND() < 0.5 LIMIT 13;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `cards`
--

CREATE TABLE `cards` (
  `id` int(2) NOT NULL,
  `number` enum('2','3','4','5','6','7','8','9','10','J','Q','K','A') NOT NULL,
  `symbol` enum('C','D','H','S') NOT NULL,
  `player` enum('X','Y','T','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `cards`
--

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

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `cards_empty`
--

CREATE TABLE `cards_empty` (
  `id` int(2) NOT NULL,
  `number` enum('2','3','4','5','6','7','8','9','10','J','Q','K','A') NOT NULL,
  `symbol` enum('C','D','H','S') NOT NULL,
  `player` enum('X','Y','T','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Άδειασμα δεδομένων του πίνακα `cards_empty`
--

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

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `game_status`
--

CREATE TABLE `game_status` (
  `status` enum('not active','initialized','started','\r\nended','aborded') NOT NULL DEFAULT 'not active',
  `player_turn` enum('X','Y') DEFAULT NULL,
  `result` enum('X','Y') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `game_status`
--

INSERT INTO `game_status` (`status`, `player_turn`, `result`, `last_change`) VALUES
('initialized', NULL, 'Y', '2023-01-09 15:49:24'),
('initialized', NULL, 'X', '2023-01-09 15:49:24');

--
-- Δείκτες `game_status`
--
DELIMITER $$
CREATE TRIGGER `game_status_update` BEFORE UPDATE ON `game_status` FOR EACH ROW BEGIN
SET NEW.last_change = NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `players`
--

CREATE TABLE `players` (
  `username` varchar(20) DEFAULT NULL,
  `player` enum('X','Y') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `cards_empty`
--
ALTER TABLE `cards_empty`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
