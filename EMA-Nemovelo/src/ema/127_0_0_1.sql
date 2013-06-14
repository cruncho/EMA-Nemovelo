-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Ven 14 Juin 2013 à 16:44
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `nemovelo`
--
DROP DATABASE `nemovelo`;
CREATE DATABASE `nemovelo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nemovelo`;

-- --------------------------------------------------------

--
-- Structure de la table `abonnements`
--

CREATE TABLE IF NOT EXISTS `abonnements` (
  `abo_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `date_location` date NOT NULL,
  PRIMARY KEY (`abo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `bornes`
--

CREATE TABLE IF NOT EXISTS `bornes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borne_id` int(11) NOT NULL,
  `velo_id` int(10) NOT NULL,
  `station_id` int(10) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `bornes`
--

INSERT INTO `bornes` (`id`, `borne_id`, `velo_id`, `station_id`, `etat`) VALUES
(1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

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

CREATE TABLE IF NOT EXISTS `stations` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bornes` int(11) NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `stations`
--

INSERT INTO `stations` (`station_id`, `Nom`, `bornes`) VALUES
(1, 'Maison Carre', 4),
(2, 'Lycée Alphonse Daudet', 8);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fonction_id` int(11) NOT NULL DEFAULT '2',
  `location` int(1) DEFAULT '0',
  `velo_id` int(10) DEFAULT NULL,
  `en_cours` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`user_id`, `nom`, `prenom`, `login`, `password`, `fonction_id`, `location`, `velo_id`, `en_cours`) VALUES
(1, 'bill', 'kane', 'admin', 'admin', 1, 21, NULL, 0),
(9, 'def', 'clement', 'clem', 'clem', 2, 21, NULL, 0),
(8, '', '', '', '', 2, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `velos`
--

CREATE TABLE IF NOT EXISTS `velos` (
  `velo_id` int(11) NOT NULL AUTO_INCREMENT,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`velo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
