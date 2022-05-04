-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 30 mars 2022 à 09:59
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `LPMI2022-GR4`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_art` int(11) NOT NULL,
  `nom_article` varchar(20) DEFAULT NULL,
  `designation_article` text DEFAULT NULL,
  `fk_categ` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_art`, `nom_article`, `designation_article`, `fk_categ`, `quantity`, `price`) VALUES
(2, 'Radeon RX 6600 DUAL ', 'Carte graphique PCI-Express - Refroidissement semi-passif', 2, 10, '500.99'),
(3, 'Radeon RX 6500 XT DU', 'PCI-Express - Avec backplate', 2, 7, '513.99'),
(4, 'GeForce GTX 1660 Ti ', 'Carte graphique PCI-Express', 2, 7, '260.99'),
(5, 'GeForce RTX 3090', 'Carte graphique PCI-Express - Compatible VR', 2, 9, '2300.99'),
(6, 'GeForce RTX 3090 ROG', 'Carte graphique PCI-Express overclockée - Refroidissement semi-passif', 2, 10, '2100.99'),
(7, 'GeForce RTX 3070 DUA', 'Carte graphique PCI-Express - Refroidissement semi-passif', 2, 9, '1399.99'),
(8, 'GeForce RTX 3070 DUA', 'Carte graphique PCI-Express - Refroidissement semi-passif', 2, 9, '1399.99'),
(9, 'GeForce RTX 3090', 'Carte graphique PCI-Express - Compatible VR', 2, 9, '2650.99'),
(10, 'Radeon RX 6500 XT DU', 'PCI-Express - Avec backplate', 2, 10, '413.99'),
(11, 'Radeon RX 6700 XT ME', 'Carte graphique PCI-Express OC - Refroidissement semi-passif', 2, 10, '312.99'),
(12, 'ROG STRIX Z490-E GAM', 'Carte mère ATX - Socket 1200 - Chipset Instel Z490', 1, 10, '146.99'),
(13, 'TUF GAMING Z590-PLUS', 'Carte mère ATX - Socket 1200 - Chipset Intel Z590 - WiFi', 1, 10, '0.21'),
(14, 'PRIME Z590-A', 'Carte mère ATX - Socket 1200', 1, 8, '49.99'),
(15, 'ROG STRIX B550-F GAM', 'Carte mère ATX - Socket AM4 - Chipset AMD B550', 1, 10, '99.99'),
(16, 'MAG Z590 TOMAHAWK WI', 'Carte mère ATX - Socket 1200 - WiFi', 1, 9, '102.99'),
(17, 'Z490-A PRO', 'Carte mère ATX - Socket 1200', 1, 10, '62.99'),
(18, 'MPG B550 Gaming Carb', 'Carte mère ATX - Socket AM4 - Chipset AMD B550', 1, 10, '75.00'),
(19, 'DDR4 Corsair Vengean', '32 Go (2 x 16 Go) 3200 MHz - CAS 16', 3, 10, '109.99'),
(20, 'DDR4 Corsair Vengean', '32 Go (2 x 16 Go) 3200 MHz - CAS 16', 3, 10, '60.99'),
(21, 'DDR4 Corsair Vengean', '16 Go (2 x 8 Go) 3200 MHz - CAS 16', 3, 10, '70.00'),
(22, 'DDR4 Corsair Value S', '8 Go - 2133 MHz - CAS 15', 3, 10, '98.99'),
(23, 'Intel Core i5-11600K', 'Socket 1200 - Hexa Core - Cache 12 Mo - Rocket Lake', 4, 10, '321.99'),
(24, 'Intel Core i7-11700K', 'Socket 1200 - Octo Core - Cache 16 Mo - Rocket Lake', 4, 10, '421.50'),
(25, 'Intel Core i9-11900K', 'Socket 1200 - Octo Core - Cache 16 Mo - Rocket Lake', 4, 10, '500.00'),
(26, 'Intel Celeron G5925 ', 'Socket 1200 - Dual Core - Cache 4 Mo - Cornet Lake-S', 4, 7, '654.99'),
(27, 'Ryzen 5 5600X (3.7 G', 'Socket AM4 - Hexa Core - Cache 35 Mo', 4, 10, '256.00'),
(28, 'Ryzen 7 5800X (3.8 G', 'Socket AM4 - Octo Core - Cache 36 Mo', 4, 10, '245.00'),
(29, 'Ryzen 5 PRO 4650G (3', 'Socket AM4 - Hexa Core - Cache 11 Mo - Radeon RX Vega 7', 4, 10, '461.00'),
(30, 'Ryzen 9 5900X (3.7 G', 'Socket AM4 - 12 Coeurs - Cache 70 Mo', 4, 8, '499.99'),
(39, 'nibh.', 'ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu', 4, 77, '598.00'),
(40, 'ipsum', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis', 4, 54, '897.00'),
(41, 'eu,', 'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit', 4, 77, '841.00'),
(42, 'quis', 'turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna', 4, 90, '162.00'),
(43, 'nunc.', 'tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque.', 4, 50, '245.00'),
(44, 'netus', 'Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet', 4, 90, '890.00'),
(45, 'dictum', 'ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac', 4, 57, '618.00'),
(46, 'urna.', 'nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat,', 4, 83, '476.00'),
(47, 'est', 'Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin', 4, 95, '913.00'),
(48, 'Sed', 'mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac', 4, 57, '837.00'),
(49, 'aliquet.', 'sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque', 4, 92, '560.00'),
(50, 'accumsan', 'nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque', 4, 91, '596.00'),
(51, 'mi.', 'a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt', 4, 53, '645.00'),
(52, 'Fusce', 'a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget,', 4, 65, '238.00'),
(53, 'pretium', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget', 4, 75, '724.00'),
(54, 'Aenean', 'sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.', 4, 68, '571.00'),
(55, 'ac', 'neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', 4, 76, '245.00'),
(56, 'ut,', 'velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id', 4, 95, '915.00'),
(57, 'luctus', 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam', 4, 77, '867.00'),
(58, 'odio.', 'eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris', 4, 74, '261.00'),
(59, 'ipsum.', 'eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis,', 4, 94, '898.00'),
(60, 'libero.', 'Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet,', 4, 55, '668.00'),
(61, 'Duis', 'nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc', 4, 61, '738.00'),
(62, 'Aliquam', 'sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,', 4, 64, '998.00'),
(63, 'neque', 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend', 4, 56, '412.00'),
(64, 'dui,', 'purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,', 4, 89, '814.00'),
(65, 'est', 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.', 4, 85, '528.00'),
(66, 'tincidunt', 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend', 4, 57, '506.00'),
(67, 'eros', 'ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse', 4, 56, '763.00'),
(68, 'lobortis', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', 4, 97, '46.00'),
(69, 'eu', 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 4, 50, '669.00'),
(70, 'risus', 'Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam', 4, 77, '583.00'),
(71, 'tristique', 'eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.', 4, 83, '338.00'),
(72, 'vel', 'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,', 4, 99, '834.00'),
(73, 'consectetuer', 'Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.', 4, 70, '387.00'),
(74, 'quam', 'eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.', 4, 83, '618.00'),
(75, 'Integer', 'odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit', 4, 60, '781.00'),
(76, 'sociis', 'nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', 4, 54, '650.00'),
(77, 'Donec', 'enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non', 4, 67, '710.00'),
(78, 'hendrerit', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,', 4, 59, '359.00'),
(79, 'odio,', 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', 4, 76, '740.00'),
(80, 'mauris.', 'est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel', 4, 98, '528.00'),
(81, 'lobortis', 'ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed', 4, 67, '944.00'),
(82, 'tincidunt,', 'arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque', 4, 83, '659.00'),
(83, 'Class', 'nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', 4, 73, '708.00'),
(84, 'Donec', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque', 4, 73, '7.00'),
(85, 'nec,', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate', 4, 90, '483.00'),
(86, 'massa.', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', 4, 90, '753.00'),
(87, 'Morbi', 'libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc', 4, 73, '864.00'),
(88, 'non,', 'ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,', 4, 73, '607.00'),
(89, 'Nunc', 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan', 4, 82, '596.00'),
(90, 'velit.', 'ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer', 4, 85, '918.00'),
(91, 'mollis', 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis,', 4, 76, '638.00'),
(92, 'consequat', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', 4, 64, '421.00'),
(93, 'consequat', 'nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', 4, 94, '245.00'),
(94, 'Quisque', 'conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi', 4, 82, '194.00'),
(95, 'Nunc', 'sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis', 4, 93, '878.00'),
(96, 'turpis.', 'lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat', 4, 96, '455.00'),
(97, 'metus', 'nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas', 4, 52, '514.00'),
(98, 'hendrerit', 'neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida.', 4, 69, '418.00'),
(99, 'at', 'amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a', 4, 54, '656.00'),
(100, 'Maecenas', 'rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula', 4, 67, '793.00'),
(101, 'eu', 'ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas', 4, 69, '180.00'),
(102, 'magna.', 'ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.', 4, 77, '349.00'),
(103, 'lacus', 'magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor', 4, 91, '370.00'),
(104, 'Duis', 'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras', 4, 69, '871.00'),
(105, 'et', 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor', 4, 92, '606.00'),
(106, 'nunc', 'nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.', 4, 80, '264.00'),
(107, 'convallis', 'Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer', 4, 89, '114.00'),
(108, 'lorem', 'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent', 4, 58, '611.00'),
(109, 'odio.', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique', 4, 56, '46.00'),
(110, 'dictum', 'sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin', 4, 78, '163.00'),
(111, 'neque', 'Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo', 4, 55, '269.00'),
(112, 'neque', 'Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', 4, 57, '520.00'),
(113, 'consectetuer', 'purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie', 4, 77, '338.00'),
(114, 'vitae,', 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', 4, 60, '385.00'),
(115, 'massa.', 'mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.', 4, 63, '822.00'),
(116, 'ac', 'Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.', 4, 77, '960.00'),
(117, 'ultrices.', 'velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.', 4, 72, '568.00'),
(118, 'lectus', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a', 4, 65, '502.00'),
(119, 'enim.', 'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy', 4, 74, '292.00'),
(120, 'eleifend', 'ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor', 4, 84, '59.00'),
(121, 'sed', 'pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.', 4, 65, '680.00'),
(122, 'eu,', 'Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In', 4, 72, '347.00'),
(123, 'vitae', 'dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim', 4, 87, '620.00'),
(124, 'molestie', 'amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', 4, 72, '915.00'),
(125, 'Praesent', 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 4, 94, '325.00'),
(126, 'sem', 'tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan', 4, 82, '189.00'),
(127, 'iaculis,', 'nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam', 4, 52, '643.00'),
(128, 'fringilla.', 'Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.', 4, 74, '433.00'),
(129, 'vel', 'dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis', 4, 76, '811.00'),
(130, 'pede.', 'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque', 4, 72, '256.00'),
(131, 'dictum', 'metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula', 4, 92, '817.00'),
(132, 'a,', 'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in', 4, 91, '150.00'),
(133, 'porta', 'consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu', 4, 51, '549.00'),
(134, 'mollis.', 'cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.', 4, 91, '21.00'),
(135, 'nec', 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis', 4, 56, '358.00'),
(136, 'hendrerit', 'interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus', 4, 95, '310.00'),
(137, 'est.', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', 4, 98, '50.00'),
(138, 'non', 'arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor', 4, 92, '28.00'),
(139, 'arcu', 'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut,', 5, 62, '81.00'),
(140, 'sem', 'blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 5, 95, '82.00'),
(141, 'vehicula.', 'in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper', 5, 98, '610.00'),
(142, 'arcu.', 'Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac', 5, 51, '199.00'),
(143, 'vitae', 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 5, 57, '563.00'),
(144, 'molestie', 'ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium', 5, 71, '985.00'),
(145, 'pellentesque.', 'blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 5, 95, '341.00'),
(146, 'dignissim', 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', 5, 88, '839.00'),
(147, 'neque', 'scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.', 5, 59, '573.00'),
(148, 'nisi.', 'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu.', 5, 84, '427.00'),
(149, 'rutrum', 'augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam', 5, 92, '871.00'),
(150, 'est,', 'lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla,', 5, 86, '727.00'),
(151, 'bibendum.', 'Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris', 5, 54, '20.00'),
(152, 'Aliquam', 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', 5, 89, '798.00'),
(153, 'sit', 'nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at', 5, 94, '143.00'),
(154, 'hendrerit', 'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor', 5, 64, '81.00'),
(155, 'turpis', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non,', 5, 53, '432.00'),
(156, 'Aenean', 'purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie', 5, 98, '548.00'),
(157, 'imperdiet', 'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu.', 5, 81, '699.00'),
(158, 'in,', 'arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor', 5, 72, '846.00'),
(159, 'fermentum', 'dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.', 5, 93, '332.00'),
(160, 'Proin', 'Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu', 5, 91, '170.00'),
(161, 'Donec', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi', 5, 96, '964.00'),
(162, 'ipsum.', 'aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor', 5, 91, '498.00'),
(163, 'arcu', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', 5, 77, '500.00'),
(164, 'massa.', 'est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus.', 5, 77, '927.00'),
(165, 'vitae', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque', 5, 55, '438.00'),
(166, 'nec,', 'pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla', 5, 51, '258.00'),
(167, 'semper', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis', 5, 94, '409.00'),
(168, 'orci.', 'et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis', 5, 89, '336.00'),
(169, 'Ut', 'malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas', 5, 83, '864.00'),
(170, 'tellus.', 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada', 5, 89, '471.00'),
(171, 'nec', 'blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus', 5, 84, '93.00'),
(172, 'egestas', 'Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer', 5, 74, '929.00'),
(173, 'facilisis,', 'porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc', 5, 62, '853.00'),
(174, 'dis', 'auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod', 5, 60, '597.00'),
(175, 'diam.', 'tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet,', 5, 78, '770.00'),
(176, 'orci', 'vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at', 5, 57, '854.00'),
(177, 'Aliquam', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo', 5, 85, '476.00'),
(178, 'magna.', 'ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,', 5, 62, '754.00'),
(179, 'Nullam', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', 5, 60, '670.00'),
(180, 'purus.', 'lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,', 5, 92, '212.00'),
(181, 'ridiculus', 'sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel,', 5, 81, '584.00'),
(182, 'tincidunt,', 'ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus,', 5, 63, '441.00'),
(183, 'ornare', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', 5, 81, '904.00'),
(184, 'nunc', 'nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis', 5, 90, '832.00'),
(185, 'adipiscing', 'sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec', 5, 93, '971.00'),
(186, 'scelerisque', 'Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,', 5, 57, '630.00'),
(187, 'eleifend', 'orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam', 5, 68, '7.00'),
(188, 'a', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus', 5, 59, '960.00'),
(189, 'orci.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', 5, 67, '387.00'),
(190, 'varius', 'Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis', 5, 92, '845.00'),
(191, 'rhoncus', 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum', 5, 72, '832.00'),
(192, 'purus', 'et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor', 5, 78, '620.00'),
(193, 'sapien.', 'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare', 5, 60, '9.00'),
(194, 'aliquet', 'auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod', 5, 98, '431.00'),
(195, 'eros', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.', 5, 63, '599.00'),
(196, 'diam', 'ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed', 5, 90, '693.00'),
(197, 'blandit', 'quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus', 5, 56, '364.00'),
(198, 'gravida.', 'tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', 5, 67, '171.00'),
(199, 'tristique', 'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam,', 5, 59, '208.00'),
(200, 'dui.', 'felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris', 5, 63, '798.00'),
(201, 'convallis', 'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae', 5, 62, '185.00'),
(202, 'In', 'dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur', 5, 66, '15.00'),
(203, 'erat.', 'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu', 5, 94, '798.00'),
(204, 'sagittis', 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi.', 5, 73, '607.00'),
(205, 'Etiam', 'luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor', 5, 94, '52.00'),
(206, 'In', 'mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis,', 5, 63, '392.00'),
(207, 'dolor.', 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est', 5, 93, '415.00'),
(208, 'odio', 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum', 5, 69, '267.00'),
(209, 'eu,', 'dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna.', 5, 64, '231.00'),
(210, 'aliquet.', 'non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,', 5, 74, '592.00'),
(211, 'non', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', 5, 87, '867.00'),
(212, 'dapibus', 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet', 5, 69, '196.00'),
(213, 'placerat', 'luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu', 5, 67, '782.00'),
(214, 'Cum', 'ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,', 5, 63, '388.00'),
(215, 'ipsum', 'tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper.', 5, 91, '817.00'),
(216, 'Donec', 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,', 5, 51, '177.00'),
(217, 'rhoncus.', 'elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse', 5, 71, '255.00'),
(218, 'et', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', 5, 72, '550.00'),
(219, 'dapibus', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', 5, 59, '952.00'),
(220, 'vitae', 'dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc', 5, 60, '673.00'),
(221, 'felis,', 'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et', 5, 82, '767.00'),
(222, 'In', 'egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis.', 5, 87, '653.00'),
(223, 'ipsum.', 'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non', 5, 76, '93.00'),
(224, 'aliquet', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis', 5, 69, '679.00'),
(225, 'quam,', 'porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc', 5, 50, '870.00'),
(226, 'commodo', 'non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae', 5, 94, '917.00'),
(227, 'arcu', 'consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum', 5, 76, '11.00'),
(228, 'Morbi', 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 5, 66, '683.00'),
(229, 'mollis.', 'ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut', 5, 55, '728.00'),
(230, 'odio', 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem', 5, 65, '965.00'),
(231, 'Sed', 'leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non', 5, 71, '917.00'),
(232, 'risus', 'a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam', 5, 95, '412.00'),
(233, 'Aliquam', 'erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In', 5, 64, '95.00'),
(234, 'vitae,', 'Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora', 5, 87, '780.00'),
(235, 'enim.', 'dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim', 5, 68, '177.00'),
(236, 'turpis', 'a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare,', 5, 84, '362.00'),
(237, 'Phasellus', 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum', 5, 90, '543.00'),
(238, 'erat.', 'pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan', 5, 69, '839.00'),
(239, 'at,', 'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed', 6, 97, '153.00'),
(240, 'amet,', 'et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam', 6, 83, '495.00'),
(241, 'metus', 'risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a,', 6, 64, '26.00'),
(242, 'porttitor', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', 6, 62, '312.00'),
(243, 'taciti', 'tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,', 6, 64, '950.00'),
(244, 'adipiscing', 'eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper', 6, 88, '468.00'),
(245, 'diam', 'mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla', 6, 58, '420.00'),
(246, 'molestie', 'fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras', 6, 67, '246.00'),
(247, 'Donec', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.', 6, 93, '793.00'),
(248, 'Donec', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer', 6, 97, '898.00'),
(249, 'placerat.', 'luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue.', 6, 60, '75.00'),
(250, 'id', 'lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus', 6, 77, '669.00'),
(251, 'Vestibulum', 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 6, 71, '286.00'),
(252, 'eget', 'enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et,', 6, 66, '832.00'),
(253, 'ligula.', 'non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,', 6, 97, '730.00'),
(254, 'eu', 'egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris', 6, 87, '196.00'),
(255, 'ligula', 'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu', 6, 66, '25.00'),
(256, 'Phasellus', 'luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae', 6, 81, '682.00'),
(257, 'felis,', 'amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a', 6, 88, '769.00'),
(258, 'aliquet,', 'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum', 6, 71, '837.00'),
(259, 'vitae,', 'nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit', 6, 96, '334.00'),
(260, 'cursus,', 'posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque', 6, 99, '537.00'),
(261, 'et,', 'felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', 6, 70, '14.00'),
(262, 'nunc', 'vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales', 6, 52, '1.00'),
(263, 'primis', 'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec', 6, 84, '342.00'),
(264, 'porttitor', 'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.', 6, 84, '197.00'),
(265, 'magnis', 'Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.', 6, 83, '407.00'),
(266, 'consectetuer', 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', 6, 59, '780.00'),
(267, 'erat,', 'nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.', 6, 72, '890.00'),
(268, 'sem', 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.', 6, 84, '822.00'),
(269, 'tempus', 'pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class', 6, 71, '184.00'),
(270, 'diam.', 'quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', 6, 91, '117.00'),
(271, 'Suspendisse', 'Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante.', 6, 92, '124.00'),
(272, 'primis', 'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus', 6, 65, '445.00'),
(273, 'dapibus', 'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla', 6, 61, '11.00'),
(274, 'vitae,', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod', 6, 78, '994.00'),
(275, 'neque', 'auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae', 6, 75, '740.00'),
(276, 'Quisque', 'malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', 6, 95, '612.00'),
(277, 'eu', 'fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.', 6, 98, '957.00'),
(278, 'Pellentesque', 'felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue', 6, 80, '473.00'),
(279, 'Nunc', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui', 6, 63, '191.00'),
(280, 'erat.', 'pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare', 6, 74, '94.00'),
(281, 'iaculis,', 'ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum', 6, 53, '498.00'),
(282, 'ad', 'purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id', 6, 77, '156.00'),
(283, 'non', 'est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius', 6, 89, '592.00'),
(284, 'eu', 'ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem', 6, 84, '114.00'),
(285, 'Proin', 'eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit', 6, 62, '556.00'),
(286, 'cursus', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', 6, 81, '561.00'),
(287, 'montes,', 'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.', 6, 88, '901.00'),
(288, 'erat.', 'Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis', 6, 76, '902.00'),
(289, 'et', 'faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet', 6, 76, '44.00'),
(290, 'auctor.', 'libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis,', 6, 80, '686.00'),
(291, 'natoque', 'nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus', 6, 69, '449.00'),
(292, 'ut', 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam', 6, 63, '371.00'),
(293, 'sollicitudin', 'nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', 6, 99, '183.00'),
(294, 'Pellentesque', 'ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,', 6, 61, '314.00'),
(295, 'et', 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus', 6, 89, '269.00'),
(296, 'sagittis.', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis', 6, 69, '875.00'),
(297, 'lacus.', 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam', 6, 71, '986.00'),
(298, 'Aliquam', 'nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', 6, 70, '506.00'),
(299, 'venenatis', 'Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor', 6, 85, '996.00'),
(300, 'eget', 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus', 6, 94, '581.00'),
(301, 'volutpat', 'justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras', 6, 62, '506.00'),
(302, 'enim', 'vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In', 6, 92, '759.00'),
(303, 'hendrerit', 'tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis', 6, 61, '253.00'),
(304, 'dictum', 'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi,', 6, 88, '496.00'),
(305, 'Morbi', 'at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit', 6, 75, '21.00'),
(306, 'Proin', 'metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum', 6, 85, '944.00'),
(307, 'et', 'Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices', 6, 73, '483.00'),
(308, 'ut', 'cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus.', 6, 90, '812.00'),
(309, 'ad', 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus', 6, 79, '590.00'),
(310, 'In', 'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan', 6, 55, '482.00'),
(311, 'molestie', 'turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla', 6, 97, '951.00'),
(312, 'ac,', 'erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus', 6, 69, '921.00'),
(313, 'adipiscing', 'egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed', 6, 70, '830.00'),
(314, 'risus.', 'eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,', 6, 74, '247.00'),
(315, 'dolor', 'malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede', 6, 69, '348.00'),
(316, 'convallis', 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare', 6, 94, '174.00'),
(317, 'fermentum', 'tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper,', 6, 55, '196.00'),
(318, 'quis', 'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,', 6, 84, '232.00'),
(319, 'diam', 'dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 6, 70, '624.00'),
(320, 'eget', 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.', 6, 93, '140.00'),
(321, 'vehicula.', 'vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit', 6, 52, '885.00'),
(322, 'orci', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum', 6, 75, '292.00'),
(323, 'habitant', 'ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus', 6, 63, '322.00'),
(324, 'non,', 'fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 6, 81, '992.00'),
(325, 'lacus', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi', 6, 86, '401.00'),
(326, 'Donec', 'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus', 6, 95, '416.00'),
(327, 'velit.', 'et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada', 6, 99, '559.00'),
(328, 'Pellentesque', 'Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc', 6, 79, '91.00'),
(329, 'inceptos', 'urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', 6, 67, '918.00'),
(330, 'enim.', 'ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.', 6, 59, '664.00'),
(331, 'metus.', 'vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu,', 6, 61, '437.00'),
(332, 'sed', 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus', 6, 83, '204.00'),
(333, 'congue', 'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec', 6, 89, '713.00'),
(334, 'libero.', 'diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos', 6, 79, '109.00'),
(335, 'sagittis.', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla', 6, 96, '239.00'),
(336, 'lacus.', 'ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed', 6, 52, '852.00'),
(337, 'malesuada', 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', 6, 87, '224.00'),
(338, 'arcu.', 'consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue', 6, 96, '323.00'),
(339, 'Nulla', 'massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse', 7, 57, '628.00'),
(340, 'nulla.', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate', 7, 98, '483.00'),
(341, 'Nam', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,', 7, 62, '526.00'),
(342, 'risus.', 'et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam', 7, 62, '258.00'),
(343, 'placerat', 'dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 7, 57, '514.00'),
(344, 'augue.', 'risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque', 7, 75, '289.00'),
(345, 'Aliquam', 'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.', 7, 61, '959.00'),
(346, 'at', 'aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit,', 7, 70, '1000.00'),
(347, 'interdum.', 'Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi.', 7, 69, '422.00'),
(348, 'blandit', 'ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo', 7, 94, '977.00'),
(349, 'lacus.', 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie', 7, 75, '633.00'),
(350, 'nulla.', 'ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc', 7, 95, '818.00'),
(351, 'sociis', 'fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat,', 7, 58, '672.00'),
(352, 'nec', 'Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean', 7, 61, '279.00'),
(353, 'Nulla', 'ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam', 7, 89, '658.00'),
(354, 'Suspendisse', 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,', 7, 91, '822.00'),
(355, 'mi', 'arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,', 7, 66, '831.00'),
(356, 'Vestibulum', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris.', 7, 63, '614.00'),
(357, 'Quisque', 'magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non', 7, 74, '296.00'),
(358, 'egestas', 'euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum', 7, 73, '527.00'),
(359, 'dictum', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis', 7, 85, '403.00'),
(360, 'vel', 'nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 7, 81, '697.00'),
(361, 'Suspendisse', 'Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui nec', 7, 77, '170.00'),
(362, 'dictum', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit', 7, 64, '66.00'),
(363, 'Ut', 'Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,', 7, 70, '211.00'),
(364, 'elementum', 'diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.', 7, 58, '252.00'),
(365, 'consectetuer', 'Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.', 7, 91, '575.00'),
(366, 'aliquet', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', 7, 98, '85.00'),
(367, 'dignissim.', 'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra', 7, 72, '818.00'),
(368, 'Donec', 'non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec', 7, 64, '74.00'),
(369, 'Quisque', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce', 7, 95, '770.00'),
(370, 'semper', 'Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a', 7, 81, '335.00'),
(371, 'convallis', 'libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum', 7, 83, '543.00'),
(372, 'sit', 'massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,', 7, 83, '900.00'),
(373, 'nec,', 'sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur', 7, 88, '195.00'),
(374, 'Nulla', 'et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque', 7, 85, '856.00'),
(375, 'feugiat.', 'vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', 7, 98, '330.00'),
(376, 'litora', 'aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt', 7, 78, '8.00'),
(377, 'elit', 'dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 7, 77, '652.00'),
(378, 'diam', 'nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend', 7, 62, '371.00'),
(379, 'lacinia', 'quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.', 7, 73, '790.00'),
(380, 'Duis', 'Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet', 7, 55, '639.00'),
(381, 'magna.', 'nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et', 7, 64, '132.00'),
(382, 'ornare,', 'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,', 7, 75, '585.00'),
(383, 'risus.', 'Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate', 7, 82, '800.00'),
(384, 'id,', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec', 7, 51, '834.00'),
(385, 'at', 'ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor', 7, 75, '539.00'),
(386, 'id', 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio', 7, 80, '965.00'),
(387, 'nunc,', 'risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum', 7, 65, '688.00');
INSERT INTO `articles` (`id_art`, `nom_article`, `designation_article`, `fk_categ`, `quantity`, `price`) VALUES
(388, 'elit', 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis', 7, 82, '185.00'),
(389, 'egestas.', 'nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit', 7, 67, '641.00'),
(390, 'eu,', 'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus', 7, 100, '624.00'),
(391, 'mauris.', 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc.', 7, 91, '450.00'),
(392, 'Pellentesque', 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros.', 7, 83, '115.00'),
(393, 'non,', 'tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis', 7, 55, '870.00'),
(394, 'Sed', 'justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', 7, 80, '965.00'),
(395, 'pede', 'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer', 7, 95, '945.00'),
(396, 'vestibulum,', 'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra', 7, 74, '779.00'),
(397, 'vulputate,', 'sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,', 7, 56, '775.00'),
(398, 'gravida', 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus', 7, 79, '644.00'),
(399, 'tempor', 'lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis', 7, 72, '466.00'),
(400, 'Aliquam', 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.', 7, 88, '709.00'),
(401, 'Mauris', 'non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,', 7, 96, '311.00'),
(402, 'lobortis.', 'non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce', 7, 75, '300.00'),
(403, 'vulputate,', 'a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque', 7, 73, '706.00'),
(404, 'semper', 'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam.', 7, 84, '707.00'),
(405, 'orci.', 'ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.', 7, 86, '826.00'),
(406, 'turpis', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', 7, 70, '622.00'),
(407, 'ultricies', 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes,', 7, 51, '921.00'),
(408, 'odio', 'Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,', 7, 77, '975.00'),
(409, 'magna.', 'fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu', 7, 82, '804.00'),
(410, 'ligula.', 'sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin', 7, 69, '673.00'),
(411, 'pellentesque', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit,', 7, 60, '224.00'),
(412, 'scelerisque', 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit', 7, 90, '231.00'),
(413, 'Curae', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis', 7, 84, '37.00'),
(414, 'eget', 'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum', 7, 79, '978.00'),
(415, 'dolor', 'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus', 7, 94, '965.00'),
(416, 'faucibus', 'placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus', 7, 83, '826.00'),
(417, 'sem.', 'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy', 7, 94, '190.00'),
(418, 'cursus.', 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis', 7, 83, '740.00'),
(419, 'massa.', 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', 7, 51, '914.00'),
(420, 'pulvinar', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas.', 7, 66, '469.00'),
(421, 'Duis', 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 7, 51, '839.00'),
(422, 'sem', 'cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin', 7, 62, '363.00'),
(423, 'pulvinar', 'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.', 7, 88, '167.00'),
(424, 'sit', 'augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin', 7, 66, '512.00'),
(425, 'est,', 'libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque', 7, 53, '863.00'),
(426, 'augue,', 'adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero', 7, 72, '645.00'),
(427, 'sit', 'odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,', 7, 100, '182.00'),
(428, 'nisi', 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', 7, 88, '822.00'),
(429, 'Nullam', 'nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', 7, 82, '544.00'),
(430, 'metus.', 'mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla', 7, 89, '553.00'),
(431, 'sed', 'justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', 7, 50, '495.00'),
(432, 'gravida', 'mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh', 7, 86, '858.00'),
(433, 'dignissim.', 'ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas', 7, 66, '397.00'),
(434, 'neque.', 'tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus', 7, 90, '517.00'),
(435, 'mus.', 'ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed', 7, 100, '101.00'),
(436, 'elit,', 'eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', 7, 67, '14.00'),
(437, 'mauris', 'hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum', 7, 56, '631.00'),
(438, 'ornare', 'vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit', 7, 70, '337.00'),
(439, 'nulla.', 'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit', 8, 89, '759.00'),
(440, 'pretium', 'ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus', 8, 99, '445.00'),
(441, 'ut', 'pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam', 8, 61, '995.00'),
(442, 'leo.', 'fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel,', 8, 80, '836.00'),
(443, 'enim.', 'neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam', 8, 51, '600.00'),
(444, 'vulputate', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie', 8, 93, '380.00'),
(445, 'orci', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,', 8, 72, '667.00'),
(446, 'odio.', 'Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum', 8, 76, '135.00'),
(447, 'vulputate', 'Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est', 8, 88, '898.00'),
(448, 'vitae,', 'magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis', 8, 79, '101.00'),
(449, 'nec', 'sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu,', 8, 71, '392.00'),
(450, 'sit', 'nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam', 8, 92, '70.00'),
(451, 'Donec', 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', 8, 80, '795.00'),
(452, 'gravida', 'varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec', 8, 95, '267.00'),
(453, 'Proin', 'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed', 8, 95, '139.00'),
(454, 'id', 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet', 8, 51, '98.00'),
(455, 'Nullam', 'erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.', 8, 92, '458.00'),
(456, 'lobortis', 'nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.', 8, 68, '105.00'),
(457, 'dis', 'nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et', 8, 68, '81.00'),
(458, 'eu,', 'metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien.', 8, 81, '161.00'),
(459, 'ac', 'tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi', 8, 86, '947.00'),
(460, 'ante.', 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est', 8, 90, '980.00'),
(461, 'lorem', 'mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', 8, 54, '209.00'),
(462, 'libero.', 'pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 8, 78, '836.00'),
(463, 'Integer', 'blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,', 8, 68, '815.00'),
(464, 'risus,', 'justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', 8, 71, '742.00'),
(465, 'diam.', 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada', 8, 77, '261.00'),
(466, 'et', 'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare', 8, 50, '983.00'),
(467, 'suscipit', 'Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit,', 8, 71, '133.00'),
(468, 'dui,', 'quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 8, 62, '748.00'),
(469, 'urna', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus', 8, 54, '657.00'),
(470, 'nulla', 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed', 8, 72, '439.00'),
(471, 'aliquet', 'nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc', 8, 69, '730.00'),
(472, 'metus.', 'eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices', 8, 77, '436.00'),
(473, 'cursus', 'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,', 8, 65, '651.00'),
(474, 'parturient', 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra.', 8, 73, '193.00'),
(475, 'malesuada', 'nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 8, 88, '320.00'),
(476, 'metus.', 'nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', 8, 83, '644.00'),
(477, 'sapien,', 'pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede,', 8, 73, '118.00'),
(478, 'ultrices', 'scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit.', 8, 88, '192.00'),
(479, 'sed,', 'egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,', 8, 88, '546.00'),
(480, 'ridiculus', 'ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus.', 8, 52, '314.00'),
(481, 'pede.', 'dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.', 8, 59, '530.00'),
(482, 'vel', 'non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.', 8, 72, '588.00'),
(483, 'Duis', 'interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non,', 8, 81, '407.00'),
(484, 'risus', 'nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede', 8, 53, '855.00'),
(485, 'sapien', 'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper', 8, 93, '838.00'),
(486, 'malesuada', 'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper', 8, 58, '492.00'),
(487, 'nisi.', 'mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', 8, 51, '911.00'),
(488, 'odio.', 'rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus.', 8, 77, '700.00'),
(489, 'egestas', 'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin', 8, 81, '683.00'),
(490, 'dolor.', 'odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est', 8, 70, '61.00'),
(491, 'dis', 'fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla', 8, 88, '283.00'),
(492, 'sed', 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis', 8, 99, '62.00'),
(493, 'velit', 'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci.', 8, 68, '609.00'),
(494, 'hendrerit', 'Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis', 8, 65, '751.00'),
(495, 'magna.', 'imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.', 8, 75, '523.00'),
(496, 'ut,', 'placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,', 8, 90, '349.00'),
(497, 'nec', 'Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora', 8, 65, '3.00'),
(498, 'aliquam', 'sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada', 8, 82, '803.00'),
(499, 'Nullam', 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus', 8, 85, '613.00'),
(500, 'erat,', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', 8, 83, '444.00'),
(501, 'et,', 'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi', 8, 59, '168.00'),
(502, 'malesuada', 'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,', 8, 66, '792.00'),
(503, 'fringilla', 'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed', 8, 73, '856.00'),
(504, 'id,', 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros.', 8, 79, '987.00'),
(505, 'non,', 'vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem', 8, 55, '435.00'),
(506, 'ornare,', 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 8, 63, '658.00'),
(507, 'libero.', 'molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent', 8, 84, '600.00'),
(508, 'montes,', 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum', 8, 54, '772.00'),
(509, 'mi', 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies', 8, 59, '814.00'),
(510, 'sit', 'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem', 8, 72, '668.00'),
(511, 'imperdiet', 'eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 8, 73, '268.00'),
(512, 'pede.', 'Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a,', 8, 93, '425.00'),
(513, 'metus', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate', 8, 91, '129.00'),
(514, 'ligula.', 'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas', 8, 75, '469.00'),
(515, 'mauris', 'Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 8, 76, '439.00'),
(516, 'blandit', 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit', 8, 96, '341.00'),
(517, 'montes,', 'erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla', 8, 84, '304.00'),
(518, 'et', 'congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 8, 74, '473.00'),
(519, 'ligula.', 'mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit', 8, 53, '66.00'),
(520, 'arcu.', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum', 8, 70, '101.00'),
(521, 'semper', 'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat', 8, 96, '542.00'),
(522, 'tortor,', 'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,', 8, 88, '6.00'),
(523, 'congue,', 'ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus.', 8, 77, '345.00'),
(524, 'nulla.', 'cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam', 8, 78, '453.00'),
(525, 'dictum', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer', 8, 71, '655.00'),
(526, 'amet', 'Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque', 8, 76, '553.00'),
(527, 'luctus', 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy', 8, 68, '643.00'),
(528, 'imperdiet', 'Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.', 8, 55, '851.00'),
(529, 'dolor.', 'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus', 8, 95, '217.00'),
(530, 'Aliquam', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non,', 8, 61, '990.00'),
(531, 'Nulla', 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,', 8, 54, '7.00'),
(532, 'nascetur', 'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie.', 8, 56, '667.00'),
(533, 'fringilla', 'purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum', 8, 72, '183.00'),
(534, 'lacus.', 'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem', 8, 58, '55.00'),
(535, 'mauris', 'volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus', 8, 99, '863.00'),
(536, 'accumsan', 'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', 8, 74, '838.00'),
(537, 'Vivamus', 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget', 8, 95, '45.00'),
(538, 'Nunc', 'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu.', 8, 77, '25.00'),
(539, 'tortor.', 'euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus', 9, 66, '445.00'),
(540, 'malesuada', 'senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam', 9, 57, '827.00'),
(541, 'Donec', 'mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.', 9, 76, '392.00'),
(542, 'libero.', 'In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat', 9, 80, '241.00'),
(543, 'lacus.', 'luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', 9, 53, '351.00'),
(544, 'tellus', 'sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non,', 9, 56, '160.00'),
(545, 'ornare', 'malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', 9, 55, '602.00'),
(546, 'semper', 'lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque', 9, 92, '434.00'),
(547, 'bibendum', 'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.', 9, 85, '411.00'),
(548, 'lacus.', 'dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', 9, 87, '384.00'),
(549, 'massa.', 'orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.', 9, 88, '190.00'),
(550, 'penatibus', 'mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu', 9, 62, '536.00'),
(551, 'Duis', 'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas', 9, 67, '111.00'),
(552, 'nisi.', 'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et', 9, 56, '366.00'),
(553, 'congue', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', 9, 61, '545.00'),
(554, 'blandit', 'ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis', 9, 96, '477.00'),
(555, 'Mauris', 'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', 9, 67, '2.00'),
(556, 'eget', 'molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl', 9, 75, '983.00'),
(557, 'faucibus', 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed', 9, 64, '988.00'),
(558, 'Nunc', 'vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec', 9, 87, '365.00'),
(559, 'metus', 'pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et', 9, 74, '969.00'),
(560, 'luctus', 'dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', 9, 71, '346.00'),
(561, 'Mauris', 'aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris', 9, 77, '696.00'),
(562, 'Nunc', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', 9, 98, '691.00'),
(563, 'pellentesque.', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,', 9, 89, '904.00'),
(564, 'nulla', 'arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam', 9, 51, '525.00'),
(565, 'interdum.', 'nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', 9, 64, '646.00'),
(566, 'natoque', 'laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer', 9, 77, '456.00'),
(567, 'Cras', 'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu', 9, 66, '914.00'),
(568, 'faucibus.', 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim', 9, 93, '511.00'),
(569, 'ornare,', 'tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis', 9, 70, '544.00'),
(570, 'Phasellus', 'dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus', 9, 84, '495.00'),
(571, 'eget,', 'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce', 9, 68, '637.00'),
(572, 'quis,', 'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque', 9, 81, '928.00'),
(573, 'ante.', 'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus', 9, 51, '712.00'),
(574, 'natoque', 'egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,', 9, 51, '814.00'),
(575, 'consectetuer', 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros.', 9, 71, '918.00'),
(576, 'arcu', 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus', 9, 56, '648.00'),
(577, 'sit', 'eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at,', 9, 64, '944.00'),
(578, 'nibh', 'per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque', 9, 87, '488.00'),
(579, 'ut', 'dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam', 9, 58, '157.00'),
(580, 'Nullam', 'pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus', 9, 66, '999.00'),
(581, 'Sed', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', 9, 83, '18.00'),
(582, 'sollicitudin', 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem', 9, 86, '442.00'),
(583, 'leo.', 'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', 9, 88, '777.00'),
(584, 'fringilla', 'pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et', 9, 91, '506.00'),
(585, 'amet', 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,', 9, 82, '38.00'),
(586, 'arcu.', 'netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi', 9, 61, '690.00'),
(587, 'purus,', 'vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas', 9, 95, '445.00'),
(588, 'sodales.', 'sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer', 9, 69, '363.00'),
(589, 'dignissim', 'eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices,', 9, 89, '767.00'),
(590, 'sit', 'parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero', 9, 85, '259.00'),
(591, 'blandit', 'tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci', 9, 74, '890.00'),
(592, 'est,', 'Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci,', 9, 83, '709.00'),
(593, 'nascetur', 'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus.', 9, 84, '486.00'),
(594, 'Aenean', 'blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus', 9, 86, '817.00'),
(595, 'fringilla', 'Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus', 9, 74, '746.00'),
(596, 'commodo', 'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus,', 9, 91, '450.00'),
(597, 'magna.', 'vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', 9, 100, '569.00'),
(598, 'et', 'et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', 9, 62, '265.00'),
(599, 'mauris', 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.', 9, 78, '835.00'),
(600, 'Nam', 'turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.', 9, 59, '436.00'),
(601, 'mollis.', 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam', 9, 51, '653.00'),
(602, 'montes,', 'adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient', 9, 71, '963.00'),
(603, 'eu', 'quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per', 9, 58, '239.00'),
(604, 'ac', 'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy', 9, 58, '505.00'),
(605, 'velit', 'Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non', 9, 89, '67.00'),
(606, 'ac', 'ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt', 9, 62, '917.00'),
(607, 'metus.', 'molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.', 9, 59, '516.00'),
(608, 'nisl', 'a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris', 9, 67, '220.00'),
(609, 'id,', 'molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', 9, 59, '572.00'),
(610, 'ultrices.', 'ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,', 9, 57, '937.00'),
(611, 'mauris', 'Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit,', 9, 87, '705.00'),
(612, 'porttitor', 'Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse', 9, 84, '433.00'),
(613, 'molestie', 'mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac', 9, 65, '573.00'),
(614, 'Aliquam', 'faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula', 9, 62, '300.00'),
(615, 'ornare', 'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', 9, 61, '995.00'),
(616, 'Phasellus', 'eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris', 9, 88, '102.00'),
(617, 'lacus.', 'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus,', 9, 52, '322.00'),
(618, 'metus.', 'purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie', 9, 92, '746.00'),
(619, 'nonummy.', 'nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing', 9, 62, '655.00'),
(620, 'non', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed', 9, 64, '366.00'),
(621, 'erat,', 'ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit', 9, 54, '531.00'),
(622, 'et,', 'et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,', 9, 74, '291.00'),
(623, 'blandit.', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed', 9, 53, '704.00'),
(624, 'risus,', 'vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh', 9, 96, '233.00'),
(625, 'Cras', 'elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida', 9, 73, '92.00'),
(626, 'in,', 'ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer', 9, 79, '671.00'),
(627, 'mauris.', 'mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.', 9, 57, '476.00'),
(628, 'Morbi', 'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', 9, 87, '520.00'),
(629, 'dictum', 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam', 9, 63, '191.00'),
(630, 'a,', 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc', 9, 70, '783.00'),
(631, 'Curae', 'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae', 9, 63, '521.00'),
(632, 'ullamcorper', 'dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti', 9, 89, '841.00'),
(633, 'Cras', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt', 9, 88, '788.00'),
(634, 'nibh', 'justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum.', 9, 67, '952.00'),
(635, 'Aliquam', 'Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum', 9, 70, '973.00'),
(636, 'tortor,', 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', 9, 50, '487.00'),
(637, 'diam.', 'felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In', 9, 65, '132.00'),
(638, 'arcu.', 'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet', 9, 84, '846.00');

-- --------------------------------------------------------

--
-- Structure de la table `article_commande`
--

CREATE TABLE `article_commande` (
  `id_art_cmd` int(11) NOT NULL,
  `fk_art` int(11) DEFAULT NULL,
  `fk_cmd` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article_commande`
--

INSERT INTO `article_commande` (`id_art_cmd`, `fk_art`, `fk_cmd`, `quantity`, `price`) VALUES
(1, 3, 1, 3, '1541.97'),
(2, 16, 1, 1, '102.99'),
(3, 26, 1, 2, '1309.98'),
(4, 9, 1, 1, '2650.99'),
(5, 8, 2, 1, '1399.99'),
(6, 26, 3, 1, '654.99'),
(7, 14, 4, 2, '99.98');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categ` int(11) NOT NULL,
  `libbele_cat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categ`, `libbele_cat`) VALUES
(1, 'Carte mere'),
(2, 'Carte graphique'),
(3, 'RAM'),
(4, 'Processeur'),
(5, 'Disques SSD'),
(6, 'Disques dur'),
(7, 'Ventirad'),
(8, 'Alimentation'),
(9, 'Boitier');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_cmd` int(11) NOT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `date_cmd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id_cmd`, `fk_user`, `date_cmd`) VALUES
(1, 4, '2022-03-01'),
(2, 4, '2022-03-01'),
(3, 4, '2022-03-01'),
(4, 4, '2022-03-08');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'root', '63a9f0ea7bb98050796b649e85481845', 'admin'),
(5, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user'),
(6, 'user2', '7e58d63b60197ceb55a1c487989a3720', 'user'),
(7, 'user3', '92877af70a45fd6a2ed7fe81e1236b78', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_art`),
  ADD KEY `ck_fk_categ` (`fk_categ`);

--
-- Index pour la table `article_commande`
--
ALTER TABLE `article_commande`
  ADD PRIMARY KEY (`id_art_cmd`),
  ADD KEY `ck_fk_art` (`fk_art`),
  ADD KEY `ck_fk_cmd` (`fk_cmd`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categ`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_cmd`),
  ADD KEY `ck_fk_user` (`fk_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT pour la table `article_commande`
--
ALTER TABLE `article_commande`
  MODIFY `id_art_cmd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_cmd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `ck_fk_categ` FOREIGN KEY (`fk_categ`) REFERENCES `categories` (`id_categ`);

--
-- Contraintes pour la table `article_commande`
--
ALTER TABLE `article_commande`
  ADD CONSTRAINT `ck_fk_art` FOREIGN KEY (`fk_art`) REFERENCES `articles` (`id_art`),
  ADD CONSTRAINT `ck_fk_cmd` FOREIGN KEY (`fk_cmd`) REFERENCES `commandes` (`id_cmd`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `ck_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
