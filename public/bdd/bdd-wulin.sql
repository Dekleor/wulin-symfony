-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 17 fév. 2021 à 15:37
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wulin`
--

-- --------------------------------------------------------

--
-- Structure de la table `characteridentity`
--

DROP TABLE IF EXISTS `characteridentity`;
CREATE TABLE IF NOT EXISTS `characteridentity` (
  `idIdentity` int(11) NOT NULL AUTO_INCREMENT,
  `identityName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `identityLevel` int(11) NOT NULL,
  `idCharacter` int(11) NOT NULL,
  PRIMARY KEY (`idIdentity`),
  KEY `idCharacter` (`idCharacter`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `characteridentity`
--

INSERT INTO `characteridentity` (`idIdentity`, `identityName`, `identityLevel`, `idCharacter`) VALUES
(1, 'Maitre Alchimiste', 2, 6),
(2, 'Courtisane', 2, 6),
(3, 'Dieu Réincarné', 2, 5),
(4, 'Fang Shi Itinérant', 2, 5),
(5, 'Maitre Assassin', 2, 4),
(6, 'Artiste', 1, 7),
(7, 'Monte-En-l\'Air', 1, 7),
(8, 'Grand Magistrat de Wuxi', 2, 8),
(9, 'Premier au Concours Mandarinal', 2, 8),
(10, 'Génie Littéraire', 1, 8),
(11, 'Chasseur de Mogwaï', 1, 8),
(12, 'Acteur', 2, 9),
(13, 'Dragon Déchu', 2, 9);

-- --------------------------------------------------------

--
-- Structure de la table `charactertrait`
--

DROP TABLE IF EXISTS `charactertrait`;
CREATE TABLE IF NOT EXISTS `charactertrait` (
  `idTrait` int(11) NOT NULL AUTO_INCREMENT,
  `traitName` varchar(200) DEFAULT NULL,
  `traitLevel` int(11) NOT NULL,
  `idCharacter` int(11) NOT NULL,
  PRIMARY KEY (`idTrait`),
  KEY `idCharacter` (`idCharacter`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `charactertrait`
--

INSERT INTO `charactertrait` (`idTrait`, `traitName`, `traitLevel`, `idCharacter`) VALUES
(16, 'Marche dans les pas de Hao', 2, 3),
(17, 'Dans ses yeux brille la flamme de son père', 2, 3),
(18, 'Méthodique tel la fourmi', 1, 3),
(19, 'Instruit par le Grand Maitre Gaï', 1, 3),
(20, 'Inflexible tel le chêne', 1, 3),
(21, 'Habité par l\'esprit du Feu', 2, 1),
(22, 'Fend la otagne à mains nues', 2, 1),
(23, 'Marche sans se fatiguer mais toujours en ligne droite', 0, 1),
(24, 'Nom a redef Emeishan', 3, 1),
(25, 'Vainc les hommes par dizaines', 1, 1),
(26, 'Guide les pas des Tigres et des Dragons', 2, 1),
(27, 'Il ne lui faut qu\'une frappe pour accomplir son oeuvre', 1, 2),
(28, 'Les contes et légendes n\'ont que peu de secret pour lui', 1, 2),
(29, 'Lorsque sa voix s\'élève, les héros l\'écoute', 2, 2),
(30, 'La sagesse de la Qilin est souvent prise pour inconscience', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `participate`
--

DROP TABLE IF EXISTS `participate`;
CREATE TABLE IF NOT EXISTS `participate` (
  `idCharacter` int(11) NOT NULL,
  `idStory` int(11) NOT NULL,
  PRIMARY KEY (`idCharacter`,`idStory`),
  KEY `idStory` (`idStory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personnalities`
--

DROP TABLE IF EXISTS `personnalities`;
CREATE TABLE IF NOT EXISTS `personnalities` (
  `idCharacter` int(11) NOT NULL AUTO_INCREMENT,
  `characterName` varchar(50) DEFAULT NULL,
  `isFemale` tinyint(1) DEFAULT NULL,
  `knownStory` varchar(2000) DEFAULT NULL,
  `isPc` tinyint(1) DEFAULT NULL,
  `idSchool` int(11) NOT NULL,
  PRIMARY KEY (`idCharacter`),
  KEY `idSchool` (`idSchool`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnalities`
--

INSERT INTO `personnalities` (`idCharacter`, `characterName`, `isFemale`, `knownStory`, `isPc`, `idSchool`) VALUES
(1, 'Xiao Long', 0, 'Lorem Ipsum', 1, 2),
(2, 'La Montagne Qui Chante', 0, 'Lorem Ipsum', 1, 1),
(3, 'Lan Shu', 0, 'Lorem Ipsum', 1, 3),
(4, 'Corbeau Spectral', 0, 'Lorem Ipsum', 1, 5),
(5, 'Sun Wukong', 0, 'Lorem Ipsum', 1, 1),
(6, 'Caresse de Jade', 1, 'Lorem Ipsum', 1, 1),
(7, 'Rossignol Au Bandeau', 0, 'Lorem Ipsum', 1, 4),
(8, 'Regard Eclairé', 0, 'Lorem Ipsum', 1, 1),
(9, 'Multiple Echo', 0, 'Lorem Ipsum', 1, 1),
(10, 'Plume Brisée', 0, 'Lorem Ipsum', 1, 1),
(11, 'La Shaman aux Tatouages', 1, 'Lorem Ipsum', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `idSchool` int(11) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(50) DEFAULT NULL,
  `isDragon` tinyint(1) DEFAULT NULL,
  `isTiger` tinyint(1) DEFAULT NULL,
  `schoolMaster` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idSchool`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `school`
--

INSERT INTO `school` (`idSchool`, `schoolName`, `isDragon`, `isTiger`, `schoolMaster`) VALUES
(1, 'Sans Ecole', 0, 0, NULL),
(2, 'Les Huit Paumes du Dragon du Sud', 1, 0, 'Coeur Assagi'),
(3, 'LEpée des Immortelles de Luo-shan', 1, 0, NULL),
(4, 'Système du Grand Un', 1, 0, NULL),
(5, 'La Main de la Seconde Roue', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `story`
--

DROP TABLE IF EXISTS `story`;
CREATE TABLE IF NOT EXISTS `story` (
  `idStory` int(11) NOT NULL AUTO_INCREMENT,
  `storyName` varchar(50) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idStory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sword`
--

DROP TABLE IF EXISTS `sword`;
CREATE TABLE IF NOT EXISTS `sword` (
  `idSword` int(11) NOT NULL AUTO_INCREMENT,
  `swordName` varchar(50) DEFAULT NULL,
  `ancientKingdom` varchar(50) DEFAULT NULL,
  `trigram` varchar(50) DEFAULT NULL,
  `legendaryTrait` varchar(200) DEFAULT NULL,
  `idCharacter` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSword`),
  UNIQUE KEY `idCharacter` (`idCharacter`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sword`
--

INSERT INTO `sword` (`idSword`, `swordName`, `ancientKingdom`, `trigram`, `legendaryTrait`, `idCharacter`) VALUES
(1, 'Fulgurance', 'Luo Yang (Han)', 'Foudre', 'Epée à la vitesse sans limite', NULL),
(2, 'Décision Céleste', 'Min Fang (Hakka)', 'Feu', 'Décide de la vie ou de la mort', NULL),
(3, 'Quietude Pérenne', 'Lijiang (Duan)', 'Terre', 'Impassible et immuable comme le chêne, on dit qu\'elle peut arrêter le temps', NULL),
(4, 'Stelle d\'Unité', 'Inconnu', 'Marais', 'Inconnu', NULL),
(5, 'Impermanence', 'Inconnu', 'Ciel', 'Inconnu', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `treasure`
--

DROP TABLE IF EXISTS `treasure`;
CREATE TABLE IF NOT EXISTS `treasure` (
  `idTreasure` int(11) NOT NULL AUTO_INCREMENT,
  `treasureName` varchar(50) DEFAULT NULL,
  `treasureLevel` int(11) NOT NULL,
  `idCharacter` int(11) NOT NULL,
  PRIMARY KEY (`idTreasure`),
  KEY `idCharacter` (`idCharacter`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `treasure`
--

INSERT INTO `treasure` (`idTreasure`, `treasureName`, `treasureLevel`, `idCharacter`) VALUES
(1, 'La Main Noire', 2, 4),
(2, 'Le Baton du Roi des Singes', 1, 5),
(3, 'La Colère du Dragon', 2, 1),
(4, 'Sibu Xiang', 2, 2),
(5, 'Loyauté Indéflectible', 2, 3),
(6, 'Erhu de Jade', 4, 7),
(7, 'Lunette du Magistrat', 2, 8),
(8, 'Les Masques Arc-En-Ciel', 2, 9),
(9, 'La Serre Noire', 2, 4),
(10, 'Baton du Roi Singe', 2, 5),
(11, 'Les Cent-Une Philosophies', 1, 6);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `characteridentity`
--
ALTER TABLE `characteridentity`
  ADD CONSTRAINT `characteridentity_ibfk_1` FOREIGN KEY (`idCharacter`) REFERENCES `personnalities` (`idCharacter`);

--
-- Contraintes pour la table `charactertrait`
--
ALTER TABLE `charactertrait`
  ADD CONSTRAINT `charactertrait_ibfk_1` FOREIGN KEY (`idCharacter`) REFERENCES `personnalities` (`idCharacter`);

--
-- Contraintes pour la table `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`idCharacter`) REFERENCES `personnalities` (`idCharacter`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`idStory`) REFERENCES `story` (`idStory`);

--
-- Contraintes pour la table `personnalities`
--
ALTER TABLE `personnalities`
  ADD CONSTRAINT `personnalities_ibfk_1` FOREIGN KEY (`idSchool`) REFERENCES `school` (`idSchool`);

--
-- Contraintes pour la table `sword`
--
ALTER TABLE `sword`
  ADD CONSTRAINT `sword_ibfk_1` FOREIGN KEY (`idCharacter`) REFERENCES `personnalities` (`idCharacter`);

--
-- Contraintes pour la table `treasure`
--
ALTER TABLE `treasure`
  ADD CONSTRAINT `treasure_ibfk_1` FOREIGN KEY (`idCharacter`) REFERENCES `personnalities` (`idCharacter`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
