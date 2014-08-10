-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 24 Juillet 2014 à 13:58
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `uabt`
--
CREATE DATABASE IF NOT EXISTS `uabt` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `uabt`;

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE IF NOT EXISTS `actualite` (
  `id_actualite` int(100) NOT NULL AUTO_INCREMENT,
  `auteur_id_actualite` int(11) NOT NULL,
  `titre_actualite` varchar(1000) NOT NULL,
  `contenu_actualite` longtext NOT NULL,
  `langue_actualite` varchar(100) NOT NULL,
  `categorie_actualite` int(11) NOT NULL,
  `status_actualite` varchar(11) NOT NULL,
  `date_actualite` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_actualite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `actualite`
--

INSERT INTO `actualite` (`id_actualite`, `auteur_id_actualite`, `titre_actualite`, `contenu_actualite`, `langue_actualite`, `categorie_actualite`, `status_actualite`, `date_actualite`) VALUES
(20, 1, 'ma première actualité', '<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans; font-size:11px">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans; font-size:11px">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n', 'fr', 5, '1', '2014-07-20 10:07:34'),
(21, 1, 'ma deuxieme actualité', '<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans; font-size:11px">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n\r\n<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans; font-size:11px">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n\r\n<p><span style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans; font-size:11px">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n', 'fr', 5, '1', '2014-07-20 10:07:38'),
(26, 6, 'ezfzefaze', '<p>fzefzefzafe</p>\r\n', 'fr', 5, '1', '2014-07-24 09:02:47'),
(27, 6, 'hadi nta3 achraf ', '<p>hadi nta3 achraf&nbsp;</p>\r\n', 'fr', 5, '1', '2014-07-24 09:02:43'),
(28, 6, 'ryrtsrthsrthsthrth', '<p>rthrthrthrthrthrhr</p>\r\n', 'fr', 0, '1', '2014-07-24 09:03:27'),
(29, 1, 'yjhrthrthrh', '<p>rthrthrthrthrthr</p>\r\n', 'fr', 0, '2', '2014-07-24 13:55:00'),
(30, 1, 'fzefzedfze', '<p>dzedzedzdz</p>', 'fr', 0, '2', '2014-07-24 13:55:02'),
(31, 1, 'rfgdgedg', '<p>rgergergerg</p>', 'fr', 5, '2', '2014-07-24 13:55:05');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(100) NOT NULL AUTO_INCREMENT,
  `type_admin` varchar(100) NOT NULL,
  `pseudo_admin` varchar(100) NOT NULL,
  `nom_admin` varchar(100) NOT NULL,
  `prenom_admin` varchar(100) NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  `password_admin` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `type_admin`, `pseudo_admin`, `nom_admin`, `prenom_admin`, `email_admin`, `password_admin`) VALUES
(1, 'super administrateur', 'kimhd', 'Ben', 'Abdelhakim', 'hakim12hakim@gmail.com', 'c1181aacf646b97f0a0a782db351a405'),
(5, 'administrateur', 'ilyes', 'benabdallah', 'ilyes', 'ilyes13_ilyes@hotmail.com', 'c1181aacf646b97f0a0a782db351a405'),
(6, 'auteur', 'achraf', 'benabdallah', 'achraf', 'achraf.fcb@hotmail.com', 'c1181aacf646b97f0a0a782db351a405'),
(7, 'administrateur', 'salah', 'Benmammar', 'ilyes', 'salah@gmail.com', 'c1181aacf646b97f0a0a782db351a405');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(100) NOT NULL AUTO_INCREMENT,
  `nom_cat` varchar(100) NOT NULL,
  `langue_cat` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`, `langue_cat`) VALUES
(0, 'Sans catégorie', '-'),
(5, 'nouveautés', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `les_actions`
--

CREATE TABLE IF NOT EXISTS `les_actions` (
  `id_action` int(100) NOT NULL AUTO_INCREMENT,
  `nom_action` varchar(100) NOT NULL,
  `afficher_action` varchar(100) NOT NULL,
  `groupe_action` varchar(100) NOT NULL,
  `date_action` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `les_actions`
--

INSERT INTO `les_actions` (`id_action`, `nom_action`, `afficher_action`, `groupe_action`, `date_action`) VALUES
(1, 'AfficherPosts', 'Afficher les actualités', 'Actualités', '2014-07-22 12:16:29'),
(2, 'ModifierPosts', 'Modifier les actualités', 'Actualités', '2014-07-22 12:16:29'),
(3, 'AjouterPosts', 'Ajouter les actualités', 'Actualités', '2014-07-22 12:17:57'),
(4, 'CorbeillePosts', 'Supprimer définitivement les actualités', 'Actualités', '2014-07-22 12:17:57'),
(5, 'categories', 'Afficher et supprimer les catégories', 'Actualités', '2014-07-22 12:20:34'),
(6, 'AjouterPages', 'Ajouter les pages', 'Pages', '2014-07-22 12:20:34'),
(7, 'AfficherPages', 'Afficher les pages ', 'Pages', '2014-07-22 12:21:30'),
(8, 'ModiferPages', 'Modifier les pages', 'Pages', '2014-07-22 12:25:53'),
(9, 'CorbeillePages', 'Ajouter les pages a la corbeille ', 'Pages', '2014-07-22 12:22:40'),
(10, 'AjouterAdmins', 'Ajouter les Administrateurs', 'Administrateurs', '2014-07-22 12:28:23'),
(11, 'AfficherAdmins', 'Afficher les Administrateurs', 'Administrateurs', '2014-07-22 12:28:23'),
(12, 'GererAdminis', 'Gérer les Administrateurs', 'Administrateurs', '2014-07-22 12:29:22'),
(13, 'AjouterPostsValidation', 'Création des actualités avec validation administrateurs', 'Actualités', '2014-07-24 13:16:55'),
(14, 'ModifierPostsValidation', 'Modification des actualités avec validation administrateurs', 'Actualités', '2014-07-24 13:16:55');

-- --------------------------------------------------------

--
-- Structure de la table `les_roles`
--

CREATE TABLE IF NOT EXISTS `les_roles` (
  `id_role` int(100) NOT NULL AUTO_INCREMENT,
  `nom_role` varchar(100) NOT NULL,
  `date_role` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `les_roles`
--

INSERT INTO `les_roles` (`id_role`, `nom_role`, `date_role`) VALUES
(1, 'super administrateur', '2014-07-22 07:40:17'),
(2, 'administrateur', '2014-07-22 07:39:53'),
(3, 'editeur', '2014-07-22 07:39:53'),
(4, 'auteur', '2014-07-22 07:39:53');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(100) NOT NULL AUTO_INCREMENT,
  `titre_menu` varchar(1000) NOT NULL,
  `id_page_menu` int(100) NOT NULL,
  `parent_menu` int(100) NOT NULL DEFAULT '0',
  `status_menu` varchar(100) NOT NULL,
  `date_menu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Contenu de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `titre_menu`, `id_page_menu`, `parent_menu`, `status_menu`, `date_menu`) VALUES
(46, '2', 50, 0, '-1', '2014-07-17 13:01:38'),
(53, '2', 57, 0, '-1', '2014-07-22 12:03:57'),
(56, 'ilyes', 60, 0, '-1', '2014-07-23 11:30:29'),
(59, 'jhjhjhj', 63, 65, '1', '2014-07-23 12:58:23'),
(60, '3', 64, 63, '1', '2014-07-23 12:56:20'),
(61, '66', 65, 0, '1', '2014-07-23 12:57:45');

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int(100) NOT NULL AUTO_INCREMENT,
  `titre_page` varchar(1000) NOT NULL,
  `contenu_page` longtext NOT NULL,
  `langue_page` varchar(100) NOT NULL,
  `status_page` varchar(100) NOT NULL,
  `parent_page` int(100) NOT NULL DEFAULT '0',
  `date_page` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`id_page`, `titre_page`, `contenu_page`, `langue_page`, `status_page`, `parent_page`, `date_page`) VALUES
(50, '2', '<p>kug</p>\r\n', 'fr', '-1', 0, '2014-07-17 13:01:38'),
(57, '2', '<p>2</p>\r\n', 'fr', '-1', 0, '2014-07-22 12:03:57'),
(60, 'ilyes', '<p>ilyes</p>\r\n', 'fr', '-1', 0, '2014-07-23 11:30:29'),
(63, 'jhjhjhj', '<p>hkhkh</p>\r\n', 'fr', '1', 65, '2014-07-23 12:58:23'),
(64, '3', '<p>iihih</p>\r\n', 'fr', '1', 63, '2014-07-23 12:56:20'),
(65, '66', '<p>kjuhln</p>\r\n', 'fr', '1', 0, '2014-07-23 12:57:45');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `type_admin_role` varchar(100) NOT NULL,
  `action_role` varchar(100) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id_role`, `type_admin_role`, `action_role`) VALUES
(6, 'super administrateur', 'ALL'),
(19, 'editeur', 'AjouterPosts'),
(20, 'editeur', 'CorbeillePosts'),
(23, 'editeur', 'AfficherPosts'),
(24, 'editeur', 'ModifierPosts'),
(25, 'auteur', 'AfficherPosts'),
(27, 'administrateur', 'ModifierPosts'),
(28, 'administrateur', 'AjouterPosts'),
(29, 'administrateur', 'CorbeillePosts'),
(30, 'administrateur', 'categories'),
(31, 'administrateur', 'AjouterPages'),
(32, 'administrateur', 'AfficherPages'),
(33, 'administrateur', 'ModiferPages'),
(34, 'administrateur', 'CorbeillePages'),
(35, 'administrateur', 'AjouterAdmins'),
(36, 'administrateur', 'AfficherAdmins'),
(37, 'administrateur', 'GererAdminis'),
(39, 'auteur', 'AjouterPostsValidation'),
(40, 'auteur', 'ModifierPostsValidation');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
