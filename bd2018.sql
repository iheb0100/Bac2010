
Serveur: localhostlocalhost	
Base de données: bd2018bd2018
-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Dimanche 26 Mai 2019 à 10:13
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `bd2018`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `evaluation`
-- 

CREATE TABLE `evaluation` (
  `dateeval` date NOT NULL default '0000-00-00',
  `idhotel` int(11) NOT NULL default '0',
  `noteacceuil` int(11) NOT NULL default '0',
  `noterest` int(11) NOT NULL default '0',
  `noteectra` int(11) NOT NULL default '0',
  PRIMARY KEY  (`dateeval`,`idhotel`),
  KEY `idhotel` (`idhotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `evaluation`
-- 

INSERT INTO `evaluation` VALUES ('2017-05-22', 10, 3, 1, 0);
INSERT INTO `evaluation` VALUES ('2017-06-15', 20, 3, 2, 2);
INSERT INTO `evaluation` VALUES ('2017-06-15', 30, 2, 1, 2);
INSERT INTO `evaluation` VALUES ('2018-02-20', 10, 2, 1, 1);
INSERT INTO `evaluation` VALUES ('2018-04-13', 30, 2, 2, 7);

-- --------------------------------------------------------

-- 
-- Structure de la table `hotel`
-- 

CREATE TABLE `hotel` (
  `idhotel` int(11) NOT NULL default '0',
  `nomhotel` varchar(50) NOT NULL default '',
  `telhotel` varchar(8) NOT NULL default '',
  `villehotel` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`idhotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `hotel`
-- 

INSERT INTO `hotel` VALUES (10, '5 Stars', '76333444', 'Tozeur');
INSERT INTO `hotel` VALUES (20, 'Globe', '78111111', 'Tabarka');
INSERT INTO `hotel` VALUES (30, 'The Sun', '73888888', 'Monastir');

-- 
-- Contraintes pour les tables exportées
-- 

-- 
-- Contraintes pour la table `evaluation`
-- 
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`idhotel`) ON DELETE CASCADE ON UPDATE CASCADE;
        
