-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Sam 29 Juin 2013 à 17:41
-- Version du serveur: 5.5.27-log
-- Version de PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `nemovelo`
--
CREATE DATABASE `nemovelo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nemovelo`;

-- --------------------------------------------------------

--
-- Structure de la table `bornes`
--

DROP TABLE IF EXISTS `bornes`;
CREATE TABLE IF NOT EXISTS `bornes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borne_id` int(11) NOT NULL,
  `station_id` int(10) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=161 ;

--
-- Contenu de la table `bornes`
--

INSERT INTO `bornes` (`id`, `borne_id`, `station_id`, `etat`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 1),
(7, 7, 1, 1),
(8, 8, 1, 1),
(9, 1, 5, 1),
(10, 2, 5, 1),
(11, 3, 5, 1),
(12, 4, 5, 1),
(13, 5, 5, 1),
(14, 6, 5, 1),
(15, 7, 5, 1),
(16, 8, 5, 1),
(17, 1, 20, 0),
(18, 2, 20, 1),
(19, 3, 20, 1),
(20, 4, 20, 1),
(21, 5, 20, 1),
(22, 6, 20, 1),
(23, 7, 20, 0),
(24, 8, 20, 1),
(25, 1, 6, 1),
(26, 2, 6, 1),
(27, 3, 6, 1),
(28, 4, 6, 1),
(29, 5, 6, 1),
(30, 6, 6, 1),
(31, 7, 6, 1),
(32, 8, 6, 1),
(33, 1, 7, 1),
(34, 2, 7, 1),
(35, 3, 7, 1),
(36, 4, 7, 1),
(37, 5, 7, 1),
(38, 6, 7, 1),
(39, 7, 7, 1),
(40, 8, 7, 1),
(41, 1, 8, 1),
(42, 2, 8, 1),
(43, 3, 8, 1),
(44, 4, 8, 1),
(45, 5, 8, 1),
(46, 6, 8, 1),
(47, 7, 8, 1),
(48, 8, 8, 1),
(49, 1, 9, 1),
(50, 2, 9, 1),
(51, 3, 9, 1),
(52, 4, 9, 1),
(53, 5, 9, 1),
(54, 6, 9, 1),
(55, 7, 9, 1),
(56, 8, 9, 1),
(57, 1, 0, 1),
(58, 2, 0, 1),
(59, 3, 0, 1),
(60, 4, 0, 1),
(61, 5, 0, 1),
(62, 6, 0, 1),
(63, 7, 0, 1),
(64, 8, 0, 1),
(65, 1, 2, 1),
(66, 2, 2, 1),
(67, 3, 2, 1),
(68, 4, 2, 1),
(69, 5, 2, 1),
(70, 6, 2, 1),
(71, 7, 2, 1),
(72, 8, 2, 1),
(73, 1, 3, 1),
(74, 2, 3, 1),
(75, 3, 3, 1),
(76, 4, 3, 1),
(77, 5, 3, 1),
(78, 6, 3, 1),
(79, 7, 3, 1),
(80, 8, 3, 1),
(81, 1, 4, 1),
(82, 2, 4, 1),
(83, 3, 4, 1),
(84, 4, 4, 1),
(85, 5, 4, 1),
(86, 6, 4, 1),
(87, 7, 4, 1),
(88, 8, 4, 1),
(89, 1, 21, 1),
(90, 2, 21, 1),
(91, 3, 21, 1),
(92, 4, 21, 1),
(93, 5, 21, 1),
(94, 6, 21, 1),
(95, 7, 21, 1),
(96, 8, 21, 1),
(97, 1, 22, 1),
(98, 2, 22, 1),
(99, 3, 22, 1),
(100, 4, 22, 1),
(101, 5, 22, 1),
(102, 6, 22, 1),
(103, 7, 22, 1),
(104, 8, 22, 1),
(105, 1, 23, 1),
(106, 2, 23, 1),
(107, 3, 23, 1),
(108, 4, 23, 1),
(109, 5, 23, 1),
(110, 6, 23, 1),
(111, 7, 23, 1),
(112, 8, 23, 1),
(113, 1, 24, 1),
(114, 2, 24, 1),
(115, 3, 24, 1),
(116, 4, 24, 1),
(117, 5, 24, 1),
(118, 6, 24, 1),
(119, 7, 24, 1),
(120, 8, 24, 1),
(121, 1, 10, 1),
(122, 2, 10, 1),
(123, 3, 10, 1),
(124, 4, 10, 1),
(125, 5, 10, 1),
(126, 6, 10, 1),
(127, 7, 10, 1),
(128, 8, 10, 1),
(129, 1, 11, 1),
(130, 2, 11, 1),
(131, 3, 11, 1),
(132, 4, 11, 1),
(133, 5, 11, 1),
(134, 6, 11, 1),
(135, 7, 11, 1),
(136, 8, 11, 1),
(137, 1, 12, 1),
(138, 2, 12, 1),
(139, 3, 12, 1),
(140, 4, 12, 1),
(141, 5, 12, 1),
(142, 6, 12, 1),
(143, 7, 12, 1),
(144, 8, 12, 1),
(145, 1, 13, 1),
(146, 2, 13, 1),
(147, 3, 13, 1),
(148, 4, 13, 1),
(149, 5, 13, 1),
(150, 6, 13, 1),
(151, 7, 13, 1),
(152, 8, 13, 1),
(153, 1, 14, 1),
(154, 2, 14, 1),
(155, 3, 14, 1),
(156, 4, 14, 1),
(157, 5, 14, 1),
(158, 6, 14, 1),
(159, 7, 14, 1),
(160, 8, 14, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

DROP TABLE IF EXISTS `fonctions`;
CREATE TABLE IF NOT EXISTS `fonctions` (
  `fonction_id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`fonction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fonctions`
--

INSERT INTO `fonctions` (`fonction_id`, `role`) VALUES
(0, 'admin'),
(1, 'tech'),
(2, 'client');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `historique_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `commande` varchar(255) NOT NULL,
  PRIMARY KEY (`historique_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bornes` int(11) NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `stations`
--

INSERT INTO `stations` (`station_id`, `Nom`, `bornes`) VALUES
(1, 'Maison Carre', 8),
(2, 'Lycée Alphonse Daudet', 8),
(5, 'Université de Nîmes', 8),
(20, 'Rue André Simon', 8),
(6, 'Clinique Mont Duplan', 8),
(7, 'Boulevard Gambetta', 8),
(8, 'Enclos Rey', 8),
(9, 'Quai de la Fonatine', 8),
(3, 'Arènes', 8),
(4, 'Grand Rue', 8),
(0, 'Av Général Perrier', 8),
(21, 'Rue Terraube', 8),
(22, 'Ecole Mines Alès', 8),
(23, 'Bd Sergent Triaire', 8),
(24, 'Lycée Duhoda', 8),
(10, 'Rue Séguier', 8),
(11, 'Rue de Barcelone', 8),
(12, 'Rue Salomon Reinach', 8),
(13, 'Av Feuchères', 8),
(14, 'Route de Beaucaire', 8),
(15, 'Av Franklin Roosevelt', 8),
(16, 'Place Séverine', 8),
(17, 'Quai de la Fontaine', 8),
(18, 'Av Kennedy', 8),
(19, 'Av Jean jaurès', 8);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `prenom` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `login` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `fonction_id` int(11) NOT NULL DEFAULT '2',
  `location` int(1) DEFAULT '0',
  `en_cours` tinyint(1) NOT NULL DEFAULT '0',
  `heure` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`user_id`, `nom`, `prenom`, `login`, `password`, `fonction_id`, `location`, `en_cours`, `heure`) VALUES
(1, 'bill', 'kane', 'admin', 'admin', 1, 10, 1, '1372003446185'),
(9, 'def', 'clement', 'clem', 'clem', 2, 10, 0, '1372414435468'),
(12, 'testn', 'testp', 'test', 'test', 2, -22873558, 0, '1372415167335'),
(13, 'Hugounenq', 'Aurel', 'aurel', 'pass', 2, 14, 0, '1372265946023'),
(14, 'ben', 'ben', 'ben', 'ben', 2, -22873560, 0, '1372415432182');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
