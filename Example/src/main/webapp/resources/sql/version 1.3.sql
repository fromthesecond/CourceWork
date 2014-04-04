-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.24-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Дамп данных таблицы example.comments: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `title`, `comment`, `date`, `rating`, `idUser`, `idGame`) VALUES
	(1, 'Some Comment', 'siod;sh;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;dfdgfdf', '2014-04-04 08:35:14', 68, 2, 2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Дамп данных таблицы example.games: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`ID`, `NAME`, `DESCRIPTION`, `URL`) VALUES
	(1, 'Company of Heroes', 'With the Germans apparently near defeat in the latter part of World War II, a squad of American soldiers sent on a routine mission, near Elsenborn in the Belgian Ardennes, encounter a surprisingly strong German tank and infantry force. After a fierce firefight, the Americans manage to escape and try to make their way back to their own lines to report the German surge. En route, they stumble across a German experimental site, still smoldering with flames, ash and smoke from some devastating event. Surprisingly this site is in Heidenfeld, Thuringia in Germany, although their own lines are hundreds of kilometers away in Belgium. Nevertheless the story goes on from there and they come across an American OSS agent, suffering with horrific burn wounds, and learn that the Germans are close to development of a super-bomb which will enable them to turn the tides of war and achieve victory. ', 'http://upload.wikimedia.org/wikipedia/en/c/c0/Company_of_heroes_diskcover.jpg'),
	(2, 'The Void', 'The game is about a soul that accidentally lingered in the Void, before absolute death. The Void is a purgatory-like place, in which the most valuable thing is Color, a liquid that represents lifeforce. Color is scarce and famine is a usual thing for its dwellers — beautiful naked Sisters and deformed monstrous Brothers. Color is a universal resource in the game — at the same time it is the hero\'s health, armor, stats and ammo. With the help of Nameless Sister, the soul finds out that there is a way to escape and be reincarnated again on the surface, but in order to do this the player must disguise himself as one of the Brothers and eventually confront them.', 'http://upload.wikimedia.org/wikipedia/en/4/49/The_Void_%28video_game%29.jpg');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;

-- Дамп данных таблицы example.images: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Дамп данных таблицы example.orders: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `price`, `idUser`, `date`, `idGame`) VALUES
	(1, 19.99, 2, '2014-04-04 08:38:06', 2),
	(2, 19.99, 2, '2014-04-04 09:11:12', 2),
	(3, 19.99, 2, '2014-04-04 09:16:54', 1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Дамп данных таблицы example.users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `Roles`, `username`, `Password`, `email`) VALUES
	(1, 'ROLE_ADMIN', 'admin', 'admin', 'admin@mail.ru'),
	(2, 'ROLE_USER', 'SaneCross', 'q', 'q@mail.ru');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
