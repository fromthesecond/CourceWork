-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.15 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных example
CREATE DATABASE IF NOT EXISTS `example` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `example`;


-- Дамп структуры для таблица example.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `comment` varchar(4000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` int(10) DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  `idGame` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comments_users` (`idUser`),
  KEY `FK_comments_games` (`idGame`),
  CONSTRAINT `FK_comments_games` FOREIGN KEY (`idGame`) REFERENCES `games` (`ID`),
  CONSTRAINT `FK_comments_users` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.comments: ~2 rows (приблизительно)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `title`, `comment`, `date`, `rating`, `idUser`, `idGame`) VALUES
	(5, 'ssssss', 'aaaaaaaaaaaa', '2014-03-29 19:19:06', 23, 39, 6),
	(6, 'Clusterfuck', 'At its heart Bioshock Infinite is still a shooter and retains many of the mechanics from the original game, though here the plasmids that infused your left hand with powers in Rapture have been replaced with vigors, which do essentially the same job. From sending out fireballs or electric bursts to a swarm of crows these remain a fun and inventive way of mixing up the games combat. You can equip two vigors at once, and two weapons, allowing you plenty of combinations to experiment with as you come up against the various foes of Columbia, These range from your standard troops to mechanised Patriots and even the fearsome Handyman, and there is enough variety in type and setting to prevent the combat from getting stale.\r\n\r\nIn fact combat feels a lot tighter and more enjoyable than in the original game, and this is in part due to one of the games strongest gameplay innovations: the skyrails. Early on you acquire a hook that allows you to graft onto rails that run through areas of the city, opening up combat scenarios to take place in large, spacious multi-level environments allowing for some wonderfully enjoyable situations. Key to this is that the controls for the skyrails work perfectly; the game lets you dismount at any time, even allowing direct attack onto unsuspecting enemies and I never once fell to my death. Once you get the hang of it, it really does feel like something genuinely new, and there are few things as satisfying as using the lines to zip around a series of levels taking out enemies as you go, all the while mixing up your vigors and weapons in such a fluid manner. The only real shame is that there aren’t nearly enough of these situations, and you are often restricted to indoor combat, or more standard level design, which pales in comparison to the larger encounters.', '2014-03-29 18:33:19', 92, 38, 1);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Дамп структуры для таблица example.games
CREATE TABLE IF NOT EXISTS `games` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(1200) NOT NULL,
  `URL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.games: ~0 rows (приблизительно)
DELETE FROM `games`;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`ID`, `NAME`, `DESCRIPTION`, `URL`) VALUES
	(1, 'Bioshock Infinite', 'A lighthouse gleams in the murky distance, choppy seas accompanying your progress towards the dimming light. Clues to your identity are to be found in a wooden box offered with little explanation. Once inside a journey starts to a fantastical world… Bioshock Infinite plays fast and loose with the parallels to the original Bioshock in ways you might expect, and then, as the game progresses, in ways which play on this very expectation. But like everything in this meticulously crafted game nothing is done without purpose or meaning; this is no re-tread merely transposing the ocean for the sky, but an evolution of everything the original game did so well with enough surprises to keep the game feeling fresh throughout.\r\nRather than a descent to a ruined metropolis, this time you ascend, through the clouds, to Columbia, a floating city in the sky, a vision as strikingly realised as it is metaphorically apt for the vision of the city’s ruler, Comstock, or as he is more frequently referred to: the Prophet. You play as Booker DeWitt, a guy at the end of his rope, offered a chance for redemption as a simple mission statement; bring us the girl, and wipe away the debt. The girl in quest', 'http://upload.wikimedia.org/wikipedia/ru/3/35/BioShock_Infinite.jpeg'),
	(6, 'F.E.A.R. 3', 'F.E.A.R. 3 (stylized as F.3.A.R) is a first-person shooter psychological horror video game developed by Day 1 Studios for Microsoft Windows, PlayStation 3 and Xbox 360. It is the sequel to F.E.A.R. 2: Project Origin, and the third installment of the F.E.A.R. series. It was announced on April 8, 2010, and was stated to include John Carpenter helping on the cinematics as well as writer Steve Niles. It is also the only F.E.A.R. game to have offline multiplayer, and the first one to introduce co-op.', 'http://upload.wikimedia.org/wikipedia/en/1/19/Fear_3_Promo_Art.jpg');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;


-- Дамп структуры для таблица example.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Roles` varchar(50) NOT NULL DEFAULT 'ROLE_USER',
  `username` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`username`),
  UNIQUE KEY `Email` (`email`),
  UNIQUE KEY `Id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.users: ~2 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `Roles`, `username`, `Password`, `email`) VALUES
	(1, 'ROLE_ADMIN', 'admin', 'admin', 'admin@mail.ru'),
	(38, 'ROLE_USER', 'SaneCross', 'qwerty', 'q@mail.ru'),
	(39, 'ROLE_USER', 'Bodyaart', 'qwerty', 'body@mail.ru');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
