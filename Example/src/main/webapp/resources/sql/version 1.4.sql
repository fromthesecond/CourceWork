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
	(5, '&#1052;&#1072;&#1084;&#1072;', '&#1084;&#1074;&#1099;&#1074;&#1072;', '2014-04-04 11:35:33', 35, 2, 2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Дамп данных таблицы example.games: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`ID`, `NAME`, `price`, `DESCRIPTION`, `URL`) VALUES
	(2, 'The Void', 2.99, 'The game is about a soul that accidentally lingered in the Void, before absolute death. The Void is a purgatory-like place, in which the most valuable thing is Color, a liquid that represents lifeforce. Color is scarce and famine is a usual thing for its dwellers — beautiful naked Sisters and deformed monstrous Brothers. Color is a universal resource in the game — at the same time it is the hero\'s health, armor, stats and ammo. With the help of Nameless Sister, the soul finds out that there is a way to escape and be reincarnated again on the surface, but in order to do this the player must disguise himself as one of the Brothers and eventually confront them.', 'http://upload.wikimedia.org/wikipedia/en/4/49/The_Void_%28video_game%29.jpg'),
	(3, 'Goat Simulator', 4.2, 'Goat Simulator is officially released! Want to experience the goat wonder for yourself? Buy now and get access to the game immediately. You guys know how this works: once you\'ve placed your order you\'ll get a steam key to your mail which you can use to unlock the game in Steam. However, be sure to read the disclaimer & FAQ below first! ', 'http://igrotecka.ru/uploads/posts/2014-03/1396084034_5b026d97b6890e3b5c6514323ef4d442.jpg');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;

-- Дамп данных таблицы example.images: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Дамп данных таблицы example.orders: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `idUser`, `date`, `idGame`) VALUES
	(8, 2, '2014-04-04 11:37:46', 2);
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
