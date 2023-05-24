-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 31 mai 2019 à 10:55
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `source`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`, `date`) VALUES
(1, 'samirpemi@gmail.com', 'sami@dd.com', 'salut', '2019-05-13 22:56:42'),
(2, 'samirpemi@gmail.com', 'sami@dd.com', 'comment tu vas ?', '2019-05-13 22:56:52'),
(3, 'pemi@gmail.com', 'samirpemi@gmail.com', 'salut', '2019-05-13 22:57:12'),
(4, 'samirpemi@gmail.com', 'pemi@gmail.com', 'salut l\'ami ! comment tu vas ?', '2019-05-13 22:57:37'),
(5, 'pemi@gmail.com', 'samirpemi@gmail.com', 'je suis posé frère!', '2019-05-13 22:58:03'),
(6, 'pemi@gmail.com', 'samirpemi@gmail.com', 'à part le tp de 316 qui me traumatise', '2019-05-13 22:58:29'),
(7, 'samirpemi@gmail.com', 'pemi@gmail.com', 'gar laisse seulement, je vois le feu sur le way là !!!', '2019-05-13 22:59:04'),
(8, 'samirpemi@gmail.com', 'samic@sd.com', 'salut', '2019-05-14 08:57:11'),
(9, 'samirpemi@gmail.com', 'pemi@gmail.com', 'on se prend', '2019-05-14 10:14:53'),
(10, 'samirpemi@gmail.com', 'sami@dd.com', 'gg', '2019-05-25 13:12:37'),
(11, 'yous@gmail.com', 'mans@gmail.com', 'salut', '2019-05-28 11:16:05'),
(12, 'mans@gmail.com', 'yous@gmail.com', 'oui salut', '2019-05-28 11:16:23'),
(13, 'yous@gmail.com', 'mans@gmail.com', 'on dit quoi ?', '2019-05-28 11:16:38'),
(14, 'mans@gmail.com', 'yous@gmail.com', 'posé et toi ?', '2019-05-28 11:17:03'),
(15, 'yous@gmail.com', 'mans@gmail.com', 'gar je suis là à part les devoirs qui veulent ma tête', '2019-05-28 11:17:45'),
(16, 'mans@gmail.com', 'yous@gmail.com', 'gar je confirme la rage que les profs ont le semestre ci', '2019-05-28 11:18:24'),
(17, 'mans@gmail.com', 'yous@gmail.com', 'c\'est grave gar', '2019-05-28 11:18:48');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'samir', 'sami@dd.com', '8a018a44c34568674a6a2eb7798db3239aba0c15'),
(2, 'macs', 'samic@sd.com', '71ca1995d9af75c54a596ff92d8fa1be453cf785'),
(3, 'pemi', 'samir@dss.com', '8b0655d6562b333ed4137caddad0176ea8a8c63c'),
(4, 'dfdf', 'dsds@sd.com', 'de271790913ea81742b7d31a70d85f50a3d3e5ae'),
(5, 'pemi', 'saf@ma.f', '49349e1cacc93d88f445adc2d93f63bb39ded52b'),
(6, 'samir', 'samirpemi@gmail.com', '8a018a44c34568674a6a2eb7798db3239aba0c15'),
(7, 'pemi', 'pemi@gmail.com', '71ca1995d9af75c54a596ff92d8fa1be453cf785'),
(8, 'Mansour', 'mans@gmail.com', '0a138151f0b84cd00a0d46ca219e90c21972910c'),
(9, 'Yaya', 'yaya@gmail.com', '0a63b55ccc887cad85cb6b463fb861b4ea9f37b6'),
(10, 'yous', 'yous@gmail.com', 'b1bdaf1d5edad3c5c9d6af6903d61502d03b17a6');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
