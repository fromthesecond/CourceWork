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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.comments: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Дамп структуры для таблица example.games
CREATE TABLE IF NOT EXISTS `games` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(1200) NOT NULL,
  `URL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.games: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`ID`, `NAME`, `DESCRIPTION`, `URL`) VALUES
	(1, 'Company of Heroes', 'With the Germans apparently near defeat in the latter part of World War II, a squad of American soldiers sent on a routine mission, near Elsenborn in the Belgian Ardennes, encounter a surprisingly strong German tank and infantry force. After a fierce firefight, the Americans manage to escape and try to make their way back to their own lines to report the German surge. En route, they stumble across a German experimental site, still smoldering with flames, ash and smoke from some devastating event. Surprisingly this site is in Heidenfeld, Thuringia in Germany, although their own lines are hundreds of kilometers away in Belgium. Nevertheless the story goes on from there and they come across an American OSS agent, suffering with horrific burn wounds, and learn that the Germans are close to development of a super-bomb which will enable them to turn the tides of war and achieve victory. ', 'http://upload.wikimedia.org/wikipedia/en/c/c0/Company_of_heroes_diskcover.jpg'),
	(2, 'The Void', 'The game is about a soul that accidentally lingered in the Void, before absolute death. The Void is a purgatory-like place, in which the most valuable thing is Color, a liquid that represents lifeforce. Color is scarce and famine is a usual thing for its dwellers — beautiful naked Sisters and deformed monstrous Brothers. Color is a universal resource in the game — at the same time it is the hero\'s health, armor, stats and ammo. With the help of Nameless Sister, the soul finds out that there is a way to escape and be reincarnated again on the surface, but in order to do this the player must disguise himself as one of the Brothers and eventually confront them.', 'http://upload.wikimedia.org/wikipedia/en/4/49/The_Void_%28video_game%29.jpg');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;


-- Дамп структуры для таблица example.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `idGame` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Images_games` (`idGame`),
  CONSTRAINT `FK_Images_games` FOREIGN KEY (`idGame`) REFERENCES `games` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.images: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `idGame`, `url`) VALUES
	(1, 1, 'http://www.rtsguide.com/wp-content/uploads/2011/09/company-of-heroes.jpg'),
	(2, 1, 'http://www.incgamers.com/wp-content/uploads/2013/04/27921CompanyofHeroes2_ApproachingBattle_1920x1080.jpg'),
	(3, 1, 'http://companyofheroes2.ru/wp-content/uploads/2013/02/Company-of-Heroes-2-preview-6.jpg'),
	(4, 2, 'http://www.gamer.ru/system/attached_images/images/000/018/530/original/The_Void_Game_Test__12_.jpg'),
	(5, 2, 'http://images.stopgame.ru/screenshots/10555/void_the-11.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы example.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `Roles`, `username`, `Password`, `email`) VALUES
	(1, 'ROLE_ADMIN', 'admin', 'admin', 'admin@mail.ru');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
