-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 26 Janvier 2022 à 16:07
-- Version du serveur: 5.1.49
-- Version de PHP: 5.3.3

--
-- invoice management system database
--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `billingsystem`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `name` varchar(100) DEFAULT NULL,
  `telephone` varchar(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`telephone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `customer`
--

INSERT INTO `customer` (`name`, `telephone`, `email`, `address`, `gender`) VALUES
('Kelvin', '5565757', 'kelvin@gmail.com', 'Kanyosha,Bujumbura', 'masculin'),
('Amanda', '556575', 'amanda@gmail.com', 'Ngagara,Bujumbura', 'feminin'),
('Ambaza Marcellin', '71164310', 'ambaza@gmail.com', 'kayanza', 'Masculin'),
('Jodelle', '62164310', 'jodellea@gmail.com', 'Bubanza', 'Masculin');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`idProduct`, `name`, `rate`, `description`, `status`) VALUES
(2, 'clavier', 25000, 'occasion', 'OUI'),
(3, 'souris', 25000, 'presque neuf', 'NON'),
(4, 'Tole', 30000, 'tole musumba steel', 'OUI'),
(5, 'Tube', 15000, 'tube musumba steel', 'OUI');

-- --------------------------------------------------------

--
-- Structure de la table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `namecustomer` varchar(100) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nameproduct` varchar(100) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `date` varchar(30) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idreport`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `report`
--

INSERT INTO `report` (`idreport`, `namecustomer`, `telephone`, `address`, `nameproduct`, `rate`, `quantite`, `total`, `date`, `status`) VALUES
(1, 'Kelvin', '5565757', 'Kanyosha,Bujumbura', 'clavier', 25000, 1, 25000, '22-janv.-2022', 'PAYE'),
(2, 'Amanda', '556575', 'Ngagara,Bujumbura', 'clavier', 25000, 5, 125000, '22-janv.-2022', 'NON PAYE'),
(3, 'Ambaza Marcellin', '71164310', 'kayanza', 'Tole', 30000, 4, 120000, '22-janv.-2022', 'NON PAYE'),
(4, 'Ambaza Marcellin', '71164310', 'kayanza', 'Tube', 15000, 6, 90000, '22-janv.-2022', 'PAYE'),
(5, 'Ambaza Marcellin', '71164310', 'kayanza', 'souris', 25000, 3, 75000, '23-janv.-2022', 'PAYE');
