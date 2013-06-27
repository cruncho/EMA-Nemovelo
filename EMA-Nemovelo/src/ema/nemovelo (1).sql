-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Jeu 27 Juin 2013 à 17:24
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `bornes`
--

INSERT INTO `bornes` (`id`, `borne_id`, `station_id`, `etat`) VALUES
(1, 1, 1, 0),
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
(17, 1, 20, 1),
(18, 2, 20, 0),
(19, 3, 20, 1),
(20, 4, 20, 1),
(21, 5, 20, 1),
(22, 6, 20, 1),
(23, 7, 20, 0),
(24, 8, 20, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `stations`
--

INSERT INTO `stations` (`station_id`, `Nom`, `bornes`) VALUES
(1, 'Maison Carre', 8),
(2, 'Lycée Alphonse Daudet', 8),
(5, 'Université de Nîmes', 8),
(20, 'Rue André Simon', 8);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`user_id`, `nom`, `prenom`, `login`, `password`, `fonction_id`, `location`, `en_cours`, `heure`) VALUES
(1, 'bill', 'kane', 'admin', 'admin', 1, 10, 1, '1372003446185'),
(9, 'def', 'clement', 'clem', 'clem', 2, 34, 0, '1372346577028'),
(12, 'testn', 'testp', 'test', 'test', 2, 28, 0, '0'),
(13, 'Hugounenq', 'Aurel', 'aurel', 'pass', 2, 14, 0, '1372265946023');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
