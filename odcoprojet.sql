-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 27 déc. 2020 à 23:45
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
-- Base de données :  `odcoprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomCategorie` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nomCategorie`, `created_at`, `updated_at`) VALUES
(1, 'actualites', '2020-05-12 22:59:09', '2020-05-12 22:59:10'),
(2, 'programmes', '2020-05-16 14:26:44', '2020-05-16 14:26:45'),
(3, 'agenda', '2020-05-16 14:26:59', '2020-05-16 14:27:00'),
(4, 'assistance', '2020-05-16 20:53:52', '2020-05-16 20:53:52'),
(5, 'postcreation', '2020-05-19 01:47:42', '2020-05-19 01:47:43'),
(6, 'precreation', '2020-05-19 01:47:55', '2020-05-19 01:47:56');

-- --------------------------------------------------------

--
-- Structure de la table `centres`
--

DROP TABLE IF EXISTS `centres`;
CREATE TABLE IF NOT EXISTS `centres` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `delegation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typecentre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `centres_typecentre_id_foreign` (`typecentre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `centres`
--

INSERT INTO `centres` (`id`, `delegation`, `numero`, `adresse`, `typecentre_id`, `created_at`, `updated_at`) VALUES
(1, 'المدير', '05.37.77.10.34', '13 زنقة ضاية عوا ص٠ب 1297 الرباط أكدال المغرب', 1, '2020-05-19 10:59:42', '2020-05-19 10:59:43'),
(4, 'المفتش العام', '05.37.77.60.24', '13 زنقة ضاية عوا ص٠ب 1297 الرباط أكدال المغرب', 1, '2020-05-19 11:00:31', '2020-05-19 11:00:32'),
(8, 'قسم التكوين والاعلام', '05.37.77.84.04', '13 زنقة ضاية عوا ص٠ب 1297 الرباط أكدال المغرب', 1, '2020-05-19 11:01:17', '2020-05-19 11:01:18'),
(9, 'المندوبية الجهوية لطنجة', '05.39.94.67.85', 'شارع يوسف بن تاشفين عمارة الفرايجي ص.ب 1134', 2, '2020-05-19 11:02:04', '2020-05-19 11:02:06'),
(11, 'المندوبية الجهوية لاسفي', '05.24.62.10.95', 'تجزئة بوزوبع شارع إبن زيدون طابق 3 رقم 6 المدينة الجديدة ص.ب 366', 2, '2020-05-19 11:02:36', '2020-05-19 11:02:37'),
(12, 'المندوبية الجهوية لداخلة', '05-28-93-29-83', '2 عمارة الخير الطابق التاني حي مولاي رشيد', 2, '2020-05-19 11:03:20', '2020-05-19 11:03:21');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `email`, `objet`, `contenue`, `created_at`, `updated_at`) VALUES
(1, 'lzlzk', 'mama@lala.com', 'nqndlq', 'ssssss', '2020-05-11 00:38:11', '2020-05-11 00:38:11'),
(4, 'aaaa', 'mama@papa.com', 'hzdhsd', 'djhfksjd', '2020-05-11 00:49:57', '2020-05-11 00:49:57'),
(5, 'test', 'kaka@lala.com', 'mamamam', 'papapappa', '2020-05-16 00:41:28', '2020-05-16 00:41:28'),
(6, 'iliyas boumour', 'ilyass20002017@outlook.fr', 'demande', 'ns jcsz', '2020-05-20 18:32:57', '2020-05-20 18:32:57'),
(10, 'iliyas boumour', 'ilyass20002017@outlook.fr', 'test odco', 'test', '2020-05-20 19:21:00', '2020-05-20 19:22:34'),
(12, 'iliyas boumour', 'ilyass20002017@outlook.fr', 'demande', 'test', '2020-05-20 20:03:54', '2020-05-20 20:03:54'),
(13, 'iliyas boumour', 'ilyass20002017@outlook.fr', 'demande', 'test', '2020-05-20 20:10:00', '2020-05-20 20:11:34'),
(15, 'iliyas boumour', 'ilyass20002017@outlook.fr', 'test odco', 'test odo', '2020-05-21 13:50:10', '2020-05-21 13:50:10'),
(16, 'iliyas boumour', 'ilyass20002017@outlook.fr', 'test odco', 'test odo', '2020-05-21 13:50:29', '2020-05-21 13:50:29'),
(20, 'test', 'ilyass20002017@outlook.fr', 'test', 'test', '2020-12-27 22:36:03', '2020-12-27 22:36:03');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'islot', 'number', 'Islot', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(29, 5, 'date_doc', 'text', 'Date Doc', 0, 1, 1, 1, 1, 1, '{}', 4),
(30, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(31, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(32, 5, 'typedocument_id', 'text', 'Typedocument Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(33, 5, 'document_belongsto_typedocument_relationship', 'relationship', 'typedocuments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Typedocument\",\"table\":\"typedocuments\",\"type\":\"belongsTo\",\"column\":\"typedocument_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(34, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(36, 6, 'path', 'image', 'Path', 1, 1, 1, 1, 1, 1, '{}', 4),
(37, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(38, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(39, 6, 'document_id', 'text', 'Document Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(40, 6, 'pdfdocument_belongsto_document_relationship', 'relationship', 'documents', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Document\",\"table\":\"documents\",\"type\":\"belongsTo\",\"column\":\"document_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(65, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 11, 'nomCategorie', 'text', 'NomCategorie', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(68, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(69, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 12, 'nomService', 'text', 'NomService', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(72, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(73, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 13, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 4),
(75, 13, 'contenue', 'rich_text_box', 'Contenue', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 13, 'dateEvenement', 'date', 'DateEvenement', 0, 1, 1, 1, 1, 1, '{}', 6),
(77, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(78, 13, 'contenueMedia', 'media_picker', 'ContenueMedia', 0, 1, 1, 1, 1, 1, '{}', 8),
(79, 13, 'typeAssistance', 'select_dropdown', 'TypeAssistance', 0, 1, 1, 1, 1, 1, '{\"default\":\"economique\",\"options\":{\"option1\":\"economique\",\"option2\":\"juridique\"}}', 9),
(80, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(81, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(82, 13, 'categorie_id', 'text', 'Categorie Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 13, 'service_id', 'text', 'Service Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(86, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 14, 'delegation', 'text', 'Delegation', 1, 1, 1, 1, 1, 1, '{}', 3),
(88, 14, 'numero', 'text', 'Numero', 1, 1, 1, 1, 1, 1, '{}', 4),
(89, 14, 'adresse', 'text', 'Adresse', 1, 1, 1, 1, 1, 1, '{}', 5),
(90, 14, 'typecentre_id', 'text', 'Typecentre Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(92, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(93, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 15, 'nom', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 15, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(96, 15, 'objet', 'text', 'Objet', 1, 1, 1, 1, 1, 1, '{}', 4),
(97, 15, 'contenue', 'text', 'Contenue', 1, 1, 1, 1, 1, 1, '{}', 5),
(98, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(99, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(100, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(101, 16, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 2),
(102, 16, 'reponse', 'text', 'Reponse', 1, 1, 1, 1, 1, 1, '{}', 3),
(103, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(104, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(105, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 17, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 3),
(107, 17, 'path', 'file', 'Path', 1, 1, 1, 1, 1, 1, '{}', 4),
(108, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(109, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(110, 17, 'poste_id', 'text', 'Poste Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 18, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(113, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(114, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(115, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(116, 20, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 3),
(117, 20, 'path', 'text', 'Path', 1, 1, 1, 1, 1, 1, '{}', 4),
(118, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(119, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(120, 20, 'poste_id', 'text', 'Poste Id', 1, 1, 1, 1, 1, 1, '{}', 2);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-05-15 12:34:14', '2020-05-15 12:34:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-05-15 12:34:14', '2020-05-15 12:34:14'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-05-15 12:34:14', '2020-05-15 12:34:14'),
(4, 'typedocuments', 'typedocuments', 'Typedocument', 'Typedocuments', NULL, 'App\\Typedocument', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-16 12:46:07', '2020-05-16 12:46:07'),
(5, 'documents', 'documents', 'Document', 'Documents', NULL, 'App\\Document', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-05-16 12:47:43', '2020-05-16 12:50:50'),
(6, 'pdfdocuments', 'pdfdocuments', 'Pdfdocument', 'Pdfdocuments', NULL, 'App\\Pdfdocument', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-16 13:24:31', '2020-05-16 20:49:30'),
(11, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Categorie', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-16 20:38:32', '2020-05-16 20:38:32'),
(12, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-16 20:39:07', '2020-05-16 20:39:07'),
(13, 'postes', 'postes', 'Poste', 'Postes', NULL, 'App\\Poste', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"updated_at\",\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-05-16 20:41:32', '2020-05-16 20:41:32'),
(14, 'centres', 'centres', 'Centre', 'Centres', NULL, 'App\\Centre', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-20 17:04:45', '2020-05-20 17:04:45'),
(15, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-20 17:04:59', '2020-05-20 17:04:59'),
(16, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-20 17:06:13', '2020-05-20 17:06:13'),
(17, 'pdfposts', 'pdfposts', 'Pdfpost', 'Pdfposts', NULL, 'App\\Pdfpost', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-20 17:06:27', '2020-05-20 18:06:25'),
(18, 'typecentres', 'typecentres', 'Typecentre', 'Typecentres', NULL, 'App\\Typecentre', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-20 17:06:48', '2020-05-20 17:06:48'),
(20, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-20 17:07:36', '2020-05-20 17:07:36');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_doc` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `typedocument_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_typedocument_id_foreign` (`typedocument_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `title`, `date_doc`, `created_at`, `updated_at`, `typedocument_id`) VALUES
(126, 'وثائق قانونية', '1977-03-01', '2020-05-18 23:59:39', '2020-05-18 23:59:39', 1),
(127, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '1989-10-06', '2020-05-18 23:59:39', '2020-05-18 23:59:39', 1),
(128, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '1984-09-24', '2020-05-18 23:59:39', '2020-05-18 23:59:39', 1),
(129, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '1983-05-07', '2020-05-18 23:59:39', '2020-05-18 23:59:39', 1),
(130, 'وثائق قانونية', '1996-03-19', '2020-05-18 23:59:40', '2020-05-18 23:59:40', 1),
(131, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '1986-06-04', '2020-05-18 23:59:40', '2020-05-18 23:59:40', 1),
(132, 'وثائق قانونية', '1993-07-06', '2020-05-18 23:59:40', '2020-05-18 23:59:40', 1),
(133, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '1994-03-16', '2020-05-18 23:59:40', '2020-05-18 23:59:40', 1),
(134, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '2007-06-08', '2020-05-18 23:59:40', '2020-05-18 23:59:40', 1),
(135, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2018', '1990-03-30', '2020-05-18 23:59:40', '2020-05-18 23:59:40', 1),
(136, 'البيانات الصحفية', '2001-08-14', '2020-05-19 00:01:08', '2020-05-19 00:01:08', 2),
(137, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2017', '1989-12-22', '2020-05-19 00:01:08', '2020-05-19 00:01:08', 2),
(138, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2017', '2007-08-13', '2020-05-19 00:01:08', '2020-05-19 00:01:08', 2),
(139, 'البيانات الصحفية', '1998-11-01', '2020-05-19 00:01:08', '2020-05-19 00:01:08', 2),
(140, 'البيانات الصحفية', '2016-08-01', '2020-05-19 00:01:08', '2020-05-19 00:01:08', 2),
(141, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2017', '1980-09-30', '2020-05-19 00:01:08', '2020-05-19 00:01:08', 2),
(142, 'وثائق قانونية', '2011-04-23', '2020-05-19 00:01:09', '2020-05-19 00:01:09', 2),
(143, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2017', '1977-06-12', '2020-05-19 00:01:09', '2020-05-19 00:01:09', 2),
(144, 'البرنامج التوقعي لطلبات العروض لمكتب تنمية التعاون لسنة 2017', '1972-12-22', '2020-05-19 00:01:09', '2020-05-19 00:01:09', 2),
(145, 'البيانات الصحفية', '2007-10-25', '2020-05-19 00:01:09', '2020-05-19 00:01:09', 2),
(146, 'إعلان عن طلب عروض مفتوح رقم 01/2020 بتاريخ 29 ماي 2020 على الساعة 10:30', '2017-10-03', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(147, 'البيانات الصحفية', '1977-10-04', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(148, 'البيانات الصحفية', '1989-05-28', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(149, 'وثائق قانونية', '1992-02-26', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(150, 'إعلان عن طلب عروض مفتوح رقم 01/2020 بتاريخ 29 ماي 2020 على الساعة 10:30', '1985-07-11', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(151, 'إعلان عن طلب عروض مفتوح رقم 01/2020 بتاريخ 29 ماي 2020 على الساعة 10:30', '2007-11-23', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(152, 'إعلان عن طلب عروض مفتوح رقم 01/2020 بتاريخ 29 ماي 2020 على الساعة 10:30', '2009-06-05', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(153, 'وثائق قانونية', '2006-09-27', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(154, 'إعلان عن طلب عروض مفتوح رقم 01/2020 بتاريخ 29 ماي 2020 على الساعة 10:30', '1976-11-23', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3),
(155, 'وثائق قانونية', '1973-02-09', '2020-05-19 00:02:16', '2020-05-19 00:02:16', 3);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `reponse`, `created_at`, `updated_at`) VALUES
(5, 'ما هي القوانين المنظمة للقطاع التعاوني بالمغرب', 'تخضع التعاونيات للقانون رقم 112.12 المتعلق بالتعاونيات كما تم تغييره وللقانون رقم 16.74 بتغيير القانون رقم 112.12 المتعلق بالتعاونيات وكذا لأحكام المرسوم رقم 2.15.617 صادر في (24 مارس 2016) بتحديد قواعد تنظيم وتسيير سجل التعاونيات ولقرار وزير العدل والحريات رقم 1369.16 الصادر في 9 ماي 2016 بتحديد شكل ومضمون السجل المحلي للتعاونيات ونماذج استمارات طلب التسجيل والتقييد المعدل والتشطيب وكذا نموذج من شهادة ومستخرج من السجل المذكور', '2020-05-19 03:18:22', '2020-05-19 03:18:23'),
(6, 'ما هو مفهوم التعاونية', 'مقاولة مستقلة محدثة بين أشخاص ذاتيين و/أو اعتباريين أو هما معا اتفقوا بشكل إرادي على تسويق منتوجاتهم أو خدماتهم بشكل جماعي أو الحصول على خدمات أو شغل عبر تسخير إمكانياتهم المادية و التقنية، ويتم تسييرها وفق القانون و المبادئ التعاونية.', '2020-05-19 03:18:47', '2020-05-19 03:18:47'),
(7, ' ما هي المبادئ التعاونية', 'المبادئ التعاونية هي مبادئ عالمية يبلغ عددها سبعة وقد تبناها القانون رقم 112.12 ويتعلق الأمر ب:', '2020-05-19 03:19:14', '2020-05-19 03:19:15'),
(8, 'ما هي أهداف التعاونية', 'أهداف التعاونية متعددة وتتميز عن تلك المتعلقة بالشركات والجمعيات، وهي أهداف اقتصادية، اجتماعية، تربوية، ثقافية و بيئية', '2020-05-19 03:21:04', '2020-05-19 03:21:05'),
(9, 'ما هو رأس المال التعاونية', 'مجموع الحصص النقدية و العينية لجميع الأعضاء الذاتيين و الاعتباريين، ويجب أن لا يقل مبلغ راس المال عن ألف (1000) درهم وأن لا تقل قيمة الحصة الواحدة عن مائة (100) درهم', '2020-05-19 03:21:06', '2020-05-19 03:21:07'),
(10, 'مجموع الحصص النقدية و العينية لجميع الأعضاء الذاتيين و الاعتباريين، ويجب أن لا يقل مبلغ راس المال عن ألف (1000) درهم وأن لا تقل قيمة الحصة الواحدة عن مائة (100) درهم', 'مجموع الحصص النقدية و العينية لجميع الأعضاء الذاتيين و الاعتباريين، ويجب أن لا يقل مبلغ راس المال عن ألف (1000) درهم وأن لا تقل قيمة الحصة الواحدة عن مائة (100) درهم', '2020-05-19 03:20:17', '2020-05-19 03:20:18'),
(12, 'كيف يتم إحداث تعاونية', 'يتم إحداث تعاونية بعد القيام بالاجراءات التالية والتي تنتهي بالتسجيل بالسجل المحلي للتعاونيات، وإجراءات الاحداث هي كالاتي: الحصول على شهادة المصادقة على التسمية، توقيع النظام الاساسي، فتح حساب بنكي، الحصول على وصل الايداع لدى السلطة المحلية، التسجيل بالسجل المحلي للتعاونيات والحصول على نسخة من استمارة التسجيل تتضمن رقم التسجيل بالسجل المحلي للتعاونيات.', '2020-05-19 03:21:44', '2020-05-19 03:21:45');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-05-15 12:34:16', '2020-05-15 12:34:16');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-05-15 12:34:16', '2020-05-15 12:34:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 2, '2020-05-15 12:34:16', '2020-05-20 17:15:38', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 29, 2, '2020-05-15 12:34:16', '2020-05-20 17:15:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 29, 1, '2020-05-15 12:34:16', '2020-05-20 17:15:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-05-15 12:34:16', '2020-05-20 17:24:00', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-05-15 12:34:16', '2020-05-16 13:32:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-05-15 12:34:16', '2020-05-20 17:12:15', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-05-15 12:34:16', '2020-05-20 17:12:15', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-05-15 12:34:17', '2020-05-20 17:12:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 29, 3, '2020-05-15 12:34:17', '2020-05-20 17:15:47', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-05-15 12:34:22', '2020-05-20 17:12:29', 'voyager.hooks', NULL),
(12, 1, 'Typedocuments', '', '_self', NULL, NULL, 22, 2, '2020-05-16 12:46:08', '2020-05-19 10:52:30', 'voyager.typedocuments.index', NULL),
(13, 1, 'Documents', '', '_self', NULL, '#000000', 22, 1, '2020-05-16 12:47:44', '2020-05-19 10:52:26', 'voyager.documents.index', 'null'),
(14, 1, 'Pdfdocuments', '', '_self', NULL, NULL, 22, 3, '2020-05-16 13:24:32', '2020-05-19 10:52:30', 'voyager.pdfdocuments.index', NULL),
(18, 1, 'Postes', '', '_self', 'voyager-file-text', '#000000', NULL, 4, '2020-05-16 20:21:50', '2020-05-20 17:15:38', NULL, ''),
(19, 1, 'Categories', '', '_self', NULL, NULL, 18, 2, '2020-05-16 20:38:33', '2020-05-19 10:52:05', 'voyager.categories.index', NULL),
(20, 1, 'Services', '', '_self', NULL, NULL, 18, 3, '2020-05-16 20:39:07', '2020-05-20 17:15:47', 'voyager.services.index', NULL),
(21, 1, 'Postes', '', '_self', NULL, NULL, 18, 1, '2020-05-16 20:41:33', '2020-05-19 10:52:03', 'voyager.postes.index', NULL),
(22, 1, 'Documents', '', '_self', 'voyager-documentation', '#000000', NULL, 3, '2020-05-19 10:50:04', '2020-05-20 17:15:38', NULL, ''),
(23, 1, 'Centres', '', '_self', NULL, '#000000', 30, 2, '2020-05-20 17:04:45', '2020-05-20 17:25:07', 'voyager.centres.index', 'null'),
(24, 1, 'Contacts', '', '_self', NULL, NULL, 30, 1, '2020-05-20 17:04:59', '2020-05-20 17:24:07', 'voyager.contacts.index', NULL),
(25, 1, 'Faqs', '', '_self', 'voyager-question', '#000000', NULL, 6, '2020-05-20 17:06:13', '2020-05-20 17:24:29', 'voyager.faqs.index', 'null'),
(26, 1, 'Pdfposts', '', '_self', NULL, NULL, 18, 4, '2020-05-20 17:06:27', '2020-05-20 17:15:47', 'voyager.pdfposts.index', NULL),
(27, 1, 'Typecentres', '', '_self', NULL, NULL, 30, 3, '2020-05-20 17:06:48', '2020-05-20 17:24:09', 'voyager.typecentres.index', NULL),
(28, 1, 'Videos', '', '_self', NULL, NULL, 18, 5, '2020-05-20 17:07:36', '2020-05-20 17:15:47', 'voyager.videos.index', NULL),
(29, 1, 'parametres', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2020-05-20 17:15:12', '2020-05-20 17:24:00', NULL, ''),
(30, 1, 'Contact', '', '_self', 'voyager-chat', '#000000', NULL, 5, '2020-05-20 17:16:11', '2020-05-20 17:25:18', NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_08_203759_create_contacts_table', 1),
(4, '2020_05_09_001754_create_typecentres_table', 1),
(5, '2020_05_09_005914_create_centres_table', 1),
(6, '2020_05_09_215806_create_documents_table', 2),
(7, '2020_05_09_215844_create_typedocuments_table', 2),
(8, '2020_05_09_215910_create_pdfdocuments_table', 2),
(9, '2020_05_09_220131_add_index_to_documents_table', 3),
(10, '2020_05_09_220154_add_index_to_pdfdocuments_table', 3),
(16, '2020_05_10_225333_create_categories_table', 4),
(17, '2020_05_10_225429_create_services_table', 4),
(19, '2020_05_10_225615_create_pdfposts_table', 4),
(20, '2020_05_10_225636_create_videos_table', 4),
(24, '2020_05_12_032459_create_faqs_table', 6),
(25, '2016_01_01_000000_add_voyager_user_fields', 7),
(26, '2016_01_01_000000_create_data_types_table', 7),
(27, '2016_05_19_173453_create_menu_table', 7),
(28, '2016_10_21_190000_create_roles_table', 7),
(29, '2016_10_21_190000_create_settings_table', 7),
(30, '2016_11_30_135954_create_permission_table', 7),
(31, '2016_11_30_141208_create_permission_role_table', 7),
(32, '2016_12_26_201236_data_types__add__server_side', 7),
(33, '2017_01_13_000000_add_route_to_menu_items_table', 7),
(34, '2017_01_14_005015_create_translations_table', 7),
(35, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 7),
(36, '2017_03_06_000000_add_controller_to_data_types_table', 7),
(37, '2017_04_21_000000_add_order_to_data_rows_table', 7),
(38, '2017_07_05_210000_add_policyname_to_data_types_table', 7),
(39, '2017_08_05_000000_add_group_to_settings_table', 7),
(40, '2017_11_26_013050_add_user_role_relationship', 7),
(41, '2017_11_26_015000_create_user_roles_table', 7),
(42, '2018_03_11_000000_add_user_settings', 7),
(43, '2018_03_14_000000_add_details_to_data_types_table', 7),
(44, '2018_03_16_000000_make_settings_value_nullable', 7),
(49, '2020_05_10_225544_create_postes_table', 8),
(50, '2020_05_11_012945_add_index_to_postes_table', 8),
(51, '2020_05_11_013344_add_index_to_videos_table', 9),
(52, '2020_05_11_013555_add_index_to_pdfposts_table', 9),
(53, '2020_05_18_040410_add_index_to_services_table', 10);

-- --------------------------------------------------------

--
-- Structure de la table `pdfdocuments`
--

DROP TABLE IF EXISTS `pdfdocuments`;
CREATE TABLE IF NOT EXISTS `pdfdocuments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pdfdocuments_document_id_foreign` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pdfdocuments`
--

INSERT INTO `pdfdocuments` (`id`, `title`, `path`, `created_at`, `updated_at`, `document_id`) VALUES
(155, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:28', '2020-05-19 00:18:28', 154),
(156, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:28', '2020-05-19 00:18:28', 140),
(157, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 130),
(158, 'قرار وزير العدل و الحريات', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 152),
(159, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 153),
(160, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 153),
(161, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 129),
(162, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 132),
(163, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 144),
(164, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 129),
(165, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 154),
(166, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 141),
(167, 'قرار وزير العدل و الحريات', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 141),
(168, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 151),
(169, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 146),
(170, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 142),
(171, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 155),
(172, 'قائمة بالأعضاء المتعاونين', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 139),
(173, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 127),
(174, 'نظام الاستشارة', 'pdfdocuments/canevas_master_ess.pdf', '2020-05-19 00:18:29', '2020-05-19 00:18:29', 145),
(175, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 140),
(176, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 137),
(177, 'نظام أساسي الملاءمة', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 126),
(178, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 133),
(179, 'نظام أساسي الملاءمة', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 130),
(180, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 139),
(181, 'نظام أساسي الملاءمة', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:12', '2020-05-19 00:19:12', 142),
(182, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 142),
(183, 'نظام أساسي الملاءمة', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 133),
(184, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 141),
(185, 'قائمة بالأعضاء المتعاونين', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 151),
(186, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 145),
(187, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 143),
(188, 'نظام أساسي الملاءمة', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 134),
(189, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 136),
(190, 'قرار وزير العدل و الحريات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 128),
(191, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 131),
(192, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 133),
(193, 'قائمة بالأعضاء المتعاونين', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 133),
(194, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 00:19:13', '2020-05-19 00:19:13', 150);

-- --------------------------------------------------------

--
-- Structure de la table `pdfposts`
--

DROP TABLE IF EXISTS `pdfposts`;
CREATE TABLE IF NOT EXISTS `pdfposts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `poste_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pdfposts_poste_id_foreign` (`poste_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pdfposts`
--

INSERT INTO `pdfposts` (`id`, `titre`, `path`, `created_at`, `updated_at`, `poste_id`) VALUES
(1, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:34', '2020-05-19 01:01:34', 139),
(2, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:34', '2020-05-19 01:01:34', 134),
(3, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:34', '2020-05-19 01:01:34', 146),
(4, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:34', '2020-05-19 01:01:34', 126),
(5, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:34', '2020-05-19 01:01:34', 121),
(6, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:34', '2020-05-19 01:01:34', 150),
(7, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 144),
(8, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 141),
(9, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 128),
(10, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 143),
(11, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 138),
(12, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 142),
(13, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 128),
(14, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 125),
(15, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:35', '2020-05-19 01:01:35', 137),
(16, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:36', '2020-05-19 01:01:36', 134),
(17, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:36', '2020-05-19 01:01:36', 150),
(18, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:36', '2020-05-19 01:01:36', 129),
(19, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:36', '2020-05-19 01:01:36', 122),
(20, ' دفتر التحملات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:01:36', '2020-05-19 01:01:36', 129),
(21, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:54', '2020-05-19 01:03:54', 145),
(22, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:54', '2020-05-19 01:03:54', 139),
(23, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 131),
(24, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 129),
(25, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 150),
(26, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 132),
(27, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 135),
(28, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 144),
(29, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 132),
(30, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 126),
(31, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 127),
(32, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 147),
(33, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 138),
(34, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 133),
(35, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 126),
(36, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:55', '2020-05-19 01:03:55', 126),
(37, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:56', '2020-05-19 01:03:56', 123),
(38, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:56', '2020-05-19 01:03:56', 147),
(39, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:56', '2020-05-19 01:03:56', 134),
(40, 'لائحة التعاونيات المشاركة بجهة:ازيلال وبني ملال و الفقيه بن صالح', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 01:03:56', '2020-05-19 01:03:56', 135),
(41, 'الخطوات المتبعة للتاسيس', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 15:53:07', '2020-05-19 15:53:09', 121),
(42, 'الايجابيات', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 15:54:27', '2020-05-19 15:54:28', 121),
(45, 'كيفية تسير التعاونية', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 15:58:58', '2020-05-19 15:58:59', 127),
(46, 'مسطرة تأسيس التعاونيات وفق أحكام القانون رقم 112.12', 'PdfsPosts/Savoir faire des transitions.pdf', '2020-05-19 15:59:38', '2020-05-19 15:59:37', 127);

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(2, 'browse_bread', NULL, '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(3, 'browse_database', NULL, '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(4, 'browse_media', NULL, '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(5, 'browse_compass', NULL, '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(6, 'browse_menus', 'menus', '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(7, 'read_menus', 'menus', '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(8, 'edit_menus', 'menus', '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(9, 'add_menus', 'menus', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(10, 'delete_menus', 'menus', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(11, 'browse_roles', 'roles', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(12, 'read_roles', 'roles', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(13, 'edit_roles', 'roles', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(14, 'add_roles', 'roles', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(15, 'delete_roles', 'roles', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(16, 'browse_users', 'users', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(17, 'read_users', 'users', '2020-05-15 12:34:18', '2020-05-15 12:34:18'),
(18, 'edit_users', 'users', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(19, 'add_users', 'users', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(20, 'delete_users', 'users', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(21, 'browse_settings', 'settings', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(22, 'read_settings', 'settings', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(23, 'edit_settings', 'settings', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(24, 'add_settings', 'settings', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(25, 'delete_settings', 'settings', '2020-05-15 12:34:19', '2020-05-15 12:34:19'),
(26, 'browse_hooks', NULL, '2020-05-15 12:34:22', '2020-05-15 12:34:22'),
(27, 'browse_typedocuments', 'typedocuments', '2020-05-16 12:46:08', '2020-05-16 12:46:08'),
(28, 'read_typedocuments', 'typedocuments', '2020-05-16 12:46:08', '2020-05-16 12:46:08'),
(29, 'edit_typedocuments', 'typedocuments', '2020-05-16 12:46:08', '2020-05-16 12:46:08'),
(30, 'add_typedocuments', 'typedocuments', '2020-05-16 12:46:08', '2020-05-16 12:46:08'),
(31, 'delete_typedocuments', 'typedocuments', '2020-05-16 12:46:08', '2020-05-16 12:46:08'),
(32, 'browse_documents', 'documents', '2020-05-16 12:47:44', '2020-05-16 12:47:44'),
(33, 'read_documents', 'documents', '2020-05-16 12:47:44', '2020-05-16 12:47:44'),
(34, 'edit_documents', 'documents', '2020-05-16 12:47:44', '2020-05-16 12:47:44'),
(35, 'add_documents', 'documents', '2020-05-16 12:47:44', '2020-05-16 12:47:44'),
(36, 'delete_documents', 'documents', '2020-05-16 12:47:44', '2020-05-16 12:47:44'),
(37, 'browse_pdfdocuments', 'pdfdocuments', '2020-05-16 13:24:31', '2020-05-16 13:24:31'),
(38, 'read_pdfdocuments', 'pdfdocuments', '2020-05-16 13:24:31', '2020-05-16 13:24:31'),
(39, 'edit_pdfdocuments', 'pdfdocuments', '2020-05-16 13:24:31', '2020-05-16 13:24:31'),
(40, 'add_pdfdocuments', 'pdfdocuments', '2020-05-16 13:24:31', '2020-05-16 13:24:31'),
(41, 'delete_pdfdocuments', 'pdfdocuments', '2020-05-16 13:24:31', '2020-05-16 13:24:31'),
(57, 'browse_categories', 'categories', '2020-05-16 20:38:33', '2020-05-16 20:38:33'),
(58, 'read_categories', 'categories', '2020-05-16 20:38:33', '2020-05-16 20:38:33'),
(59, 'edit_categories', 'categories', '2020-05-16 20:38:33', '2020-05-16 20:38:33'),
(60, 'add_categories', 'categories', '2020-05-16 20:38:33', '2020-05-16 20:38:33'),
(61, 'delete_categories', 'categories', '2020-05-16 20:38:33', '2020-05-16 20:38:33'),
(62, 'browse_services', 'services', '2020-05-16 20:39:07', '2020-05-16 20:39:07'),
(63, 'read_services', 'services', '2020-05-16 20:39:07', '2020-05-16 20:39:07'),
(64, 'edit_services', 'services', '2020-05-16 20:39:07', '2020-05-16 20:39:07'),
(65, 'add_services', 'services', '2020-05-16 20:39:07', '2020-05-16 20:39:07'),
(66, 'delete_services', 'services', '2020-05-16 20:39:07', '2020-05-16 20:39:07'),
(67, 'browse_postes', 'postes', '2020-05-16 20:41:33', '2020-05-16 20:41:33'),
(68, 'read_postes', 'postes', '2020-05-16 20:41:33', '2020-05-16 20:41:33'),
(69, 'edit_postes', 'postes', '2020-05-16 20:41:33', '2020-05-16 20:41:33'),
(70, 'add_postes', 'postes', '2020-05-16 20:41:33', '2020-05-16 20:41:33'),
(71, 'delete_postes', 'postes', '2020-05-16 20:41:33', '2020-05-16 20:41:33'),
(72, 'browse_centres', 'centres', '2020-05-20 17:04:45', '2020-05-20 17:04:45'),
(73, 'read_centres', 'centres', '2020-05-20 17:04:45', '2020-05-20 17:04:45'),
(74, 'edit_centres', 'centres', '2020-05-20 17:04:45', '2020-05-20 17:04:45'),
(75, 'add_centres', 'centres', '2020-05-20 17:04:45', '2020-05-20 17:04:45'),
(76, 'delete_centres', 'centres', '2020-05-20 17:04:45', '2020-05-20 17:04:45'),
(77, 'browse_contacts', 'contacts', '2020-05-20 17:04:59', '2020-05-20 17:04:59'),
(78, 'read_contacts', 'contacts', '2020-05-20 17:04:59', '2020-05-20 17:04:59'),
(79, 'edit_contacts', 'contacts', '2020-05-20 17:04:59', '2020-05-20 17:04:59'),
(80, 'add_contacts', 'contacts', '2020-05-20 17:04:59', '2020-05-20 17:04:59'),
(81, 'delete_contacts', 'contacts', '2020-05-20 17:04:59', '2020-05-20 17:04:59'),
(82, 'browse_faqs', 'faqs', '2020-05-20 17:06:13', '2020-05-20 17:06:13'),
(83, 'read_faqs', 'faqs', '2020-05-20 17:06:13', '2020-05-20 17:06:13'),
(84, 'edit_faqs', 'faqs', '2020-05-20 17:06:13', '2020-05-20 17:06:13'),
(85, 'add_faqs', 'faqs', '2020-05-20 17:06:13', '2020-05-20 17:06:13'),
(86, 'delete_faqs', 'faqs', '2020-05-20 17:06:13', '2020-05-20 17:06:13'),
(87, 'browse_pdfposts', 'pdfposts', '2020-05-20 17:06:27', '2020-05-20 17:06:27'),
(88, 'read_pdfposts', 'pdfposts', '2020-05-20 17:06:27', '2020-05-20 17:06:27'),
(89, 'edit_pdfposts', 'pdfposts', '2020-05-20 17:06:27', '2020-05-20 17:06:27'),
(90, 'add_pdfposts', 'pdfposts', '2020-05-20 17:06:27', '2020-05-20 17:06:27'),
(91, 'delete_pdfposts', 'pdfposts', '2020-05-20 17:06:27', '2020-05-20 17:06:27'),
(92, 'browse_typecentres', 'typecentres', '2020-05-20 17:06:48', '2020-05-20 17:06:48'),
(93, 'read_typecentres', 'typecentres', '2020-05-20 17:06:48', '2020-05-20 17:06:48'),
(94, 'edit_typecentres', 'typecentres', '2020-05-20 17:06:48', '2020-05-20 17:06:48'),
(95, 'add_typecentres', 'typecentres', '2020-05-20 17:06:48', '2020-05-20 17:06:48'),
(96, 'delete_typecentres', 'typecentres', '2020-05-20 17:06:48', '2020-05-20 17:06:48'),
(97, 'browse_videos', 'videos', '2020-05-20 17:07:36', '2020-05-20 17:07:36'),
(98, 'read_videos', 'videos', '2020-05-20 17:07:36', '2020-05-20 17:07:36'),
(99, 'edit_videos', 'videos', '2020-05-20 17:07:36', '2020-05-20 17:07:36'),
(100, 'add_videos', 'videos', '2020-05-20 17:07:36', '2020-05-20 17:07:36'),
(101, 'delete_videos', 'videos', '2020-05-20 17:07:36', '2020-05-20 17:07:36');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

DROP TABLE IF EXISTS `postes`;
CREATE TABLE IF NOT EXISTS `postes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenue` text COLLATE utf8mb4_unicode_ci,
  `dateEvenement` date DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenueMedia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeAssistance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postes_categorie_id_foreign` (`categorie_id`),
  KEY `postes_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id`, `titre`, `contenue`, `dateEvenement`, `image`, `contenueMedia`, `typeAssistance`, `created_at`, `updated_at`, `categorie_id`, `service_id`) VALUES
(121, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 5, 2),
(122, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 2, 13),
(123, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 5, 9),
(124, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 5, 7),
(125, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 4, 2),
(126, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 3, 7),
(127, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 6, 9),
(128, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 1, 12),
(129, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:18', '2020-05-19 00:24:18', 3, 2),
(130, 'تنظيم الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \"', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', '2020-05-30', 'pdfdocuments\\May2020\\9XydOeNhHNfZNLRAgkVk.jpg', NULL, 'juridique', '2020-05-19 00:24:19', '2020-05-19 00:24:19', 4, 8),
(131, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'ترأست السيدة وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي يوم الاثنين 9 مارس 2020 بمقر الوزارة أشغال انطلاق الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \" تحت شعار \" التعاونيات رافعة للتمكين الاقتصادي للنساء \".\r\n         وقد تم تتويج 14 تعاونية نسائية فائزة (357 متعاونة) من 384 فكرة مشروع تقدمت بها التعاونيات النسائية في إطار طلب إبداء الاهتمام الذي أطلقه مكتب تنمية التعاون في هذا الصدد. وتنشط التعاونيات الفائزة بهذه الجائزة الوطنية التي تبلغ قيمتها 50 ألف درهم، بمختلف جهات المملكة في قطاعات الصناعة التقليدية والفلاحة والصيد البحري والمواد الغذائية. وقد ساهم في تمويل هذه الجائزة مجموعة من الشركاء و الداعمين ويتعلق الأمر بمؤسسة المجمع الشريف للفوسفاط ، مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.', '2020-05-30', 'postes\\May2020\\actua1.jpg', NULL, 'juridique', '2020-05-19 00:30:22', '2020-05-19 00:30:22', 4, 11),
(132, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'ترأست السيدة وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي يوم الاثنين 9 مارس 2020 بمقر الوزارة أشغال انطلاق الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \" تحت شعار \" التعاونيات رافعة للتمكين الاقتصادي للنساء \".\r\n         وقد تم تتويج 14 تعاونية نسائية فائزة (357 متعاونة) من 384 فكرة مشروع تقدمت بها التعاونيات النسائية في إطار طلب إبداء الاهتمام الذي أطلقه مكتب تنمية التعاون في هذا الصدد. وتنشط التعاونيات الفائزة بهذه الجائزة الوطنية التي تبلغ قيمتها 50 ألف درهم، بمختلف جهات المملكة في قطاعات الصناعة التقليدية والفلاحة والصيد البحري والمواد الغذائية. وقد ساهم في تمويل هذه الجائزة مجموعة من الشركاء و الداعمين ويتعلق الأمر بمؤسسة المجمع الشريف للفوسفاط ، مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.', '2020-05-30', 'postes\\May2020\\actua1.jpg', NULL, 'juridique', '2020-05-19 00:30:22', '2020-05-19 00:30:22', 1, 11),
(133, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'ترأست السيدة وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي يوم الاثنين 9 مارس 2020 بمقر الوزارة أشغال انطلاق الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \" تحت شعار \" التعاونيات رافعة للتمكين الاقتصادي للنساء \".\r\n         وقد تم تتويج 14 تعاونية نسائية فائزة (357 متعاونة) من 384 فكرة مشروع تقدمت بها التعاونيات النسائية في إطار طلب إبداء الاهتمام الذي أطلقه مكتب تنمية التعاون في هذا الصدد. وتنشط التعاونيات الفائزة بهذه الجائزة الوطنية التي تبلغ قيمتها 50 ألف درهم، بمختلف جهات المملكة في قطاعات الصناعة التقليدية والفلاحة والصيد البحري والمواد الغذائية. وقد ساهم في تمويل هذه الجائزة مجموعة من الشركاء و الداعمين ويتعلق الأمر بمؤسسة المجمع الشريف للفوسفاط ، مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.', '2020-05-30', 'postes\\May2020\\actua1.jpg', NULL, 'juridique', '2020-05-19 00:30:22', '2020-05-19 00:30:22', 2, 9),
(134, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'ترأست السيدة وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي يوم الاثنين 9 مارس 2020 بمقر الوزارة أشغال انطلاق الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \" تحت شعار \" التعاونيات رافعة للتمكين الاقتصادي للنساء \".\r\n         وقد تم تتويج 14 تعاونية نسائية فائزة (357 متعاونة) من 384 فكرة مشروع تقدمت بها التعاونيات النسائية في إطار طلب إبداء الاهتمام الذي أطلقه مكتب تنمية التعاون في هذا الصدد. وتنشط التعاونيات الفائزة بهذه الجائزة الوطنية التي تبلغ قيمتها 50 ألف درهم، بمختلف جهات المملكة في قطاعات الصناعة التقليدية والفلاحة والصيد البحري والمواد الغذائية. وقد ساهم في تمويل هذه الجائزة مجموعة من الشركاء و الداعمين ويتعلق الأمر بمؤسسة المجمع الشريف للفوسفاط ، مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.', '2020-05-30', 'postes\\May2020\\actua1.jpg', NULL, 'juridique', '2020-05-19 00:30:22', '2020-05-19 00:30:22', 1, 13),
(135, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'ترأست السيدة وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي يوم الاثنين 9 مارس 2020 بمقر الوزارة أشغال انطلاق الدورة الأولى لمبادرة الجائزة الوطنية لأحسن فكرة مشروع تطوير تعاوني نسوي \" لالة المتعاونة \" تحت شعار \" التعاونيات رافعة للتمكين الاقتصادي للنساء \".\r\n         وقد تم تتويج 14 تعاونية نسائية فائزة (357 متعاونة) من 384 فكرة مشروع تقدمت بها التعاونيات النسائية في إطار طلب إبداء الاهتمام الذي أطلقه مكتب تنمية التعاون في هذا الصدد. وتنشط التعاونيات الفائزة بهذه الجائزة الوطنية التي تبلغ قيمتها 50 ألف درهم، بمختلف جهات المملكة في قطاعات الصناعة التقليدية والفلاحة والصيد البحري والمواد الغذائية. وقد ساهم في تمويل هذه الجائزة مجموعة من الشركاء و الداعمين ويتعلق الأمر بمؤسسة المجمع الشريف للفوسفاط ، مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.', '2020-05-30', 'postes\\May2020\\actua1.jpg', NULL, 'juridique', '2020-05-19 00:30:22', '2020-05-19 00:30:22', 2, 12),
(136, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.\r\n         ويندرج هذا الحفل الذي نظم بمناسبة الاحتفال باليوم العالمي للمرأة ضمن الجهود التي تبذلها الوزارة ومكتب تنمية التعاون من أجل تعزيز دور التعاونيات النسائية كمقاولات اجتماعية تساهم بامتياز في التمكين الاقتصادي للنساء وتشجيعها على الابتكار الاجتماعي لتحسين أوضاع عضواتها الاقتصادية والاجتماعية والتربوية.\r\n         وفي كلمة بالمناسبة، قالت وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي، السيدة نادية فتاح العلوي، إن التعاونيات النسائية بالمغرب عرفت تطورا ملحوظا خلال السنوات الأخيرة حيث يبلغ عددها 4524 تعاونية تضم أزيد من 35 ألف منخرطة، ما يمثل نسبة 16,6 في المائة من مجموع التعاونيات بالمغرب، مضيفة أن السنوات الأربع الأخيرة التي تلت صدور القانون 12-112 المتعلق بالتعاونيات شهدت إحداث 3360 تعاونية نسائية، بمعدل 840 تعاونية في السنة', '2020-05-30', 'postes\\May2020\\actua2.jpg', NULL, 'juridique', '2020-05-19 00:32:21', '2020-05-19 00:32:21', 2, 13),
(137, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.\r\n         ويندرج هذا الحفل الذي نظم بمناسبة الاحتفال باليوم العالمي للمرأة ضمن الجهود التي تبذلها الوزارة ومكتب تنمية التعاون من أجل تعزيز دور التعاونيات النسائية كمقاولات اجتماعية تساهم بامتياز في التمكين الاقتصادي للنساء وتشجيعها على الابتكار الاجتماعي لتحسين أوضاع عضواتها الاقتصادية والاجتماعية والتربوية.\r\n         وفي كلمة بالمناسبة، قالت وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي، السيدة نادية فتاح العلوي، إن التعاونيات النسائية بالمغرب عرفت تطورا ملحوظا خلال السنوات الأخيرة حيث يبلغ عددها 4524 تعاونية تضم أزيد من 35 ألف منخرطة، ما يمثل نسبة 16,6 في المائة من مجموع التعاونيات بالمغرب، مضيفة أن السنوات الأربع الأخيرة التي تلت صدور القانون 12-112 المتعلق بالتعاونيات شهدت إحداث 3360 تعاونية نسائية، بمعدل 840 تعاونية في السنة', '2020-05-30', 'postes\\May2020\\actua2.jpg', NULL, 'juridique', '2020-05-19 00:32:21', '2020-05-19 00:32:21', 5, 9),
(138, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.\r\n         ويندرج هذا الحفل الذي نظم بمناسبة الاحتفال باليوم العالمي للمرأة ضمن الجهود التي تبذلها الوزارة ومكتب تنمية التعاون من أجل تعزيز دور التعاونيات النسائية كمقاولات اجتماعية تساهم بامتياز في التمكين الاقتصادي للنساء وتشجيعها على الابتكار الاجتماعي لتحسين أوضاع عضواتها الاقتصادية والاجتماعية والتربوية.\r\n         وفي كلمة بالمناسبة، قالت وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي، السيدة نادية فتاح العلوي، إن التعاونيات النسائية بالمغرب عرفت تطورا ملحوظا خلال السنوات الأخيرة حيث يبلغ عددها 4524 تعاونية تضم أزيد من 35 ألف منخرطة، ما يمثل نسبة 16,6 في المائة من مجموع التعاونيات بالمغرب، مضيفة أن السنوات الأربع الأخيرة التي تلت صدور القانون 12-112 المتعلق بالتعاونيات شهدت إحداث 3360 تعاونية نسائية، بمعدل 840 تعاونية في السنة', '2020-05-30', 'postes\\May2020\\actua2.jpg', NULL, 'juridique', '2020-05-19 00:32:21', '2020-05-19 00:32:21', 1, 13),
(139, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.\r\n         ويندرج هذا الحفل الذي نظم بمناسبة الاحتفال باليوم العالمي للمرأة ضمن الجهود التي تبذلها الوزارة ومكتب تنمية التعاون من أجل تعزيز دور التعاونيات النسائية كمقاولات اجتماعية تساهم بامتياز في التمكين الاقتصادي للنساء وتشجيعها على الابتكار الاجتماعي لتحسين أوضاع عضواتها الاقتصادية والاجتماعية والتربوية.\r\n         وفي كلمة بالمناسبة، قالت وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي، السيدة نادية فتاح العلوي، إن التعاونيات النسائية بالمغرب عرفت تطورا ملحوظا خلال السنوات الأخيرة حيث يبلغ عددها 4524 تعاونية تضم أزيد من 35 ألف منخرطة، ما يمثل نسبة 16,6 في المائة من مجموع التعاونيات بالمغرب، مضيفة أن السنوات الأربع الأخيرة التي تلت صدور القانون 12-112 المتعلق بالتعاونيات شهدت إحداث 3360 تعاونية نسائية، بمعدل 840 تعاونية في السنة', '2020-05-30', 'postes\\May2020\\actua2.jpg', NULL, 'juridique', '2020-05-19 00:32:21', '2020-05-19 00:32:21', 6, 11),
(140, 'مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسويق', 'مجموعة كوسيمار ، التعاونية الفلاحية كوباك والبنك المغربي للتجارة الخارجية لإفريقيا ومجموعة القرض الفلاحي.\r\n         ويندرج هذا الحفل الذي نظم بمناسبة الاحتفال باليوم العالمي للمرأة ضمن الجهود التي تبذلها الوزارة ومكتب تنمية التعاون من أجل تعزيز دور التعاونيات النسائية كمقاولات اجتماعية تساهم بامتياز في التمكين الاقتصادي للنساء وتشجيعها على الابتكار الاجتماعي لتحسين أوضاع عضواتها الاقتصادية والاجتماعية والتربوية.\r\n         وفي كلمة بالمناسبة، قالت وزيرة السياحة والصناعة التقليدية والنقل الجوي والاقتصاد الاجتماعي، السيدة نادية فتاح العلوي، إن التعاونيات النسائية بالمغرب عرفت تطورا ملحوظا خلال السنوات الأخيرة حيث يبلغ عددها 4524 تعاونية تضم أزيد من 35 ألف منخرطة، ما يمثل نسبة 16,6 في المائة من مجموع التعاونيات بالمغرب، مضيفة أن السنوات الأربع الأخيرة التي تلت صدور القانون 12-112 المتعلق بالتعاونيات شهدت إحداث 3360 تعاونية نسائية، بمعدل 840 تعاونية في السنة', '2020-05-30', 'postes\\May2020\\actua2.jpg', NULL, 'juridique', '2020-05-19 00:32:21', '2020-05-19 00:32:21', 4, 13),
(141, 'تتويج 14 تعاونية نسوية بالجائزة الوطنية لأحسن فكرة', 'وأشار بالمقابل إلى وجود العديد من الإكراهات التي تعيق تطور التعاونيات النسائية وتنميتها، بما في ذلك ضعف المستوى الدراسي للمتعاونات ومحدودية كفاءاتهن في ميدان تدبير المشاريع، وصعوبة الولوج إلى الأسواق، وعدم التوفر على الشهادات الضرورية، وصعوبة الولوج إلى مصادر التمويل من أجل الاستثمار في تطوير مشاريع التعاونيات وضعف تشبيك التعاونيات وغياب التغطية الصحية والاجتماعية للتعاونيات.', '2020-05-30', 'postes\\May2020\\actua5.jpg', NULL, 'juridique', '2020-05-19 00:40:14', '2020-05-19 00:40:14', 3, 12),
(142, 'تتويج 14 تعاونية نسوية بالجائزة الوطنية لأحسن فكرة', 'وأشار بالمقابل إلى وجود العديد من الإكراهات التي تعيق تطور التعاونيات النسائية وتنميتها، بما في ذلك ضعف المستوى الدراسي للمتعاونات ومحدودية كفاءاتهن في ميدان تدبير المشاريع، وصعوبة الولوج إلى الأسواق، وعدم التوفر على الشهادات الضرورية، وصعوبة الولوج إلى مصادر التمويل من أجل الاستثمار في تطوير مشاريع التعاونيات وضعف تشبيك التعاونيات وغياب التغطية الصحية والاجتماعية للتعاونيات.', '2020-05-30', 'postes\\May2020\\actua5.jpg', NULL, 'juridique', '2020-05-19 00:40:14', '2020-05-19 00:40:14', 3, 7),
(143, 'تتويج 14 تعاونية نسوية بالجائزة الوطنية لأحسن فكرة', 'وأشار بالمقابل إلى وجود العديد من الإكراهات التي تعيق تطور التعاونيات النسائية وتنميتها، بما في ذلك ضعف المستوى الدراسي للمتعاونات ومحدودية كفاءاتهن في ميدان تدبير المشاريع، وصعوبة الولوج إلى الأسواق، وعدم التوفر على الشهادات الضرورية، وصعوبة الولوج إلى مصادر التمويل من أجل الاستثمار في تطوير مشاريع التعاونيات وضعف تشبيك التعاونيات وغياب التغطية الصحية والاجتماعية للتعاونيات.', '2020-05-30', 'postes\\May2020\\actua5.jpg', NULL, 'juridique', '2020-05-19 00:40:14', '2020-05-19 00:40:14', 5, 13),
(144, 'تتويج 14 تعاونية نسوية بالجائزة الوطنية لأحسن فكرة', 'وأشار بالمقابل إلى وجود العديد من الإكراهات التي تعيق تطور التعاونيات النسائية وتنميتها، بما في ذلك ضعف المستوى الدراسي للمتعاونات ومحدودية كفاءاتهن في ميدان تدبير المشاريع، وصعوبة الولوج إلى الأسواق، وعدم التوفر على الشهادات الضرورية، وصعوبة الولوج إلى مصادر التمويل من أجل الاستثمار في تطوير مشاريع التعاونيات وضعف تشبيك التعاونيات وغياب التغطية الصحية والاجتماعية للتعاونيات.', '2020-05-30', 'postes\\May2020\\actua5.jpg', NULL, 'juridique', '2020-05-19 00:40:14', '2020-05-19 00:40:14', 4, 3),
(145, 'تتويج 14 تعاونية نسوية بالجائزة الوطنية لأحسن فكرة', 'وأشار بالمقابل إلى وجود العديد من الإكراهات التي تعيق تطور التعاونيات النسائية وتنميتها، بما في ذلك ضعف المستوى الدراسي للمتعاونات ومحدودية كفاءاتهن في ميدان تدبير المشاريع، وصعوبة الولوج إلى الأسواق، وعدم التوفر على الشهادات الضرورية، وصعوبة الولوج إلى مصادر التمويل من أجل الاستثمار في تطوير مشاريع التعاونيات وضعف تشبيك التعاونيات وغياب التغطية الصحية والاجتماعية للتعاونيات.', '2020-05-30', 'postes\\May2020\\actua5.jpg', NULL, 'juridique', '2020-05-19 00:40:14', '2020-05-19 00:40:14', 6, 10),
(146, 'مكتب تنمية التعاون يشارك في الملتقى الثاني للمقاطعة الذكية', 'ويعتبر هذا الملتقى خطوة هامة،تضع التكنولوجيا في خدمة المحافظة على البيئة  والتنمية المستدامة، وهو ما أكد عليه السيد يوسف الحسني مدير مكتب تنمية التعاون  في مداخلته التي لامست الجوانب الايجابية للمجال التعاوني ودوره في تنظيم الأنشطة المدرة للدخل وفقا لمتطلبات التنمية المستدامة وتنظيم الساكنة بإشراكها اقتصاديا واجتماعيا في إطار الاستراتيجة الوطنية  للاقتصاد الاجتماعي باعتبارها رافعة لنمو مندمج', '2020-05-30', 'postes\\May2020\\actua3.jpg', NULL, 'juridique', '2020-05-19 00:43:30', '2020-05-19 00:43:30', 1, 12),
(147, 'مكتب تنمية التعاون يشارك في الملتقى الثاني للمقاطعة الذكية', 'ويعتبر هذا الملتقى خطوة هامة،تضع التكنولوجيا في خدمة المحافظة على البيئة  والتنمية المستدامة، وهو ما أكد عليه السيد يوسف الحسني مدير مكتب تنمية التعاون  في مداخلته التي لامست الجوانب الايجابية للمجال التعاوني ودوره في تنظيم الأنشطة المدرة للدخل وفقا لمتطلبات التنمية المستدامة وتنظيم الساكنة بإشراكها اقتصاديا واجتماعيا في إطار الاستراتيجة الوطنية  للاقتصاد الاجتماعي باعتبارها رافعة لنمو مندمج', '2020-05-30', 'postes\\May2020\\actua3.jpg', NULL, 'juridique', '2020-05-19 00:43:30', '2020-05-19 00:43:30', 6, 7),
(148, 'مكتب تنمية التعاون يشارك في الملتقى الثاني للمقاطعة الذكية', 'ويعتبر هذا الملتقى خطوة هامة،تضع التكنولوجيا في خدمة المحافظة على البيئة  والتنمية المستدامة، وهو ما أكد عليه السيد يوسف الحسني مدير مكتب تنمية التعاون  في مداخلته التي لامست الجوانب الايجابية للمجال التعاوني ودوره في تنظيم الأنشطة المدرة للدخل وفقا لمتطلبات التنمية المستدامة وتنظيم الساكنة بإشراكها اقتصاديا واجتماعيا في إطار الاستراتيجة الوطنية  للاقتصاد الاجتماعي باعتبارها رافعة لنمو مندمج', '2020-05-30', 'postes\\May2020\\actua3.jpg', NULL, 'juridique', '2020-05-19 00:43:30', '2020-05-19 00:43:30', 4, 12),
(149, 'مكتب تنمية التعاون يشارك في الملتقى الثاني للمقاطعة الذكية', 'ويعتبر هذا الملتقى خطوة هامة،تضع التكنولوجيا في خدمة المحافظة على البيئة  والتنمية المستدامة، وهو ما أكد عليه السيد يوسف الحسني مدير مكتب تنمية التعاون  في مداخلته التي لامست الجوانب الايجابية للمجال التعاوني ودوره في تنظيم الأنشطة المدرة للدخل وفقا لمتطلبات التنمية المستدامة وتنظيم الساكنة بإشراكها اقتصاديا واجتماعيا في إطار الاستراتيجة الوطنية  للاقتصاد الاجتماعي باعتبارها رافعة لنمو مندمج', '2020-05-30', 'postes\\May2020\\actua3.jpg', NULL, 'juridique', '2020-05-19 00:43:30', '2020-05-19 00:43:30', 3, 9),
(150, 'مكتب تنمية التعاون يشارك في الملتقى الثاني للمقاطعة الذكية', 'ويعتبر هذا الملتقى خطوة هامة،تضع التكنولوجيا في خدمة المحافظة على البيئة  والتنمية المستدامة، وهو ما أكد عليه السيد يوسف الحسني مدير مكتب تنمية التعاون  في مداخلته التي لامست الجوانب الايجابية للمجال التعاوني ودوره في تنظيم الأنشطة المدرة للدخل وفقا لمتطلبات التنمية المستدامة وتنظيم الساكنة بإشراكها اقتصاديا واجتماعيا في إطار الاستراتيجة الوطنية  للاقتصاد الاجتماعي باعتبارها رافعة لنمو مندمج', '2020-05-30', 'postes\\May2020\\actua3.jpg', NULL, 'juridique', '2020-05-19 00:43:30', '2020-05-19 00:43:30', 6, 10),
(152, 'مساعدة التعاونيات في إعداد هوية مرئية للتعريف بها ومواكبتها في تقنيات تسويق منتجاتها', 'شارك السيد يوسف الحسني مدير مكتب تنمية التعاون في أعمال المؤتمر العالمي \"التعاونيات من أجل التنمية\" المنعقد في كيغالي )رواندا( ما بين 14 إلى 17 أكتوبر 2019، وكذا في الجمع العام للاتحاد الدولي للتعاونيات.', NULL, 'pdfdocuments\\May2020\\image4.jpg', NULL, 'economique', '2020-05-20 14:57:25', '2020-05-20 14:57:26', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-05-15 12:34:17', '2020-05-15 12:34:17'),
(2, 'user', 'Normal User', '2020-05-15 12:34:17', '2020-05-15 12:34:17');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomService` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_nomService` (`nomService`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `nomService`, `created_at`, `updated_at`) VALUES
(1, 'all', '2020-05-12 23:05:32', '2020-05-12 23:05:33'),
(2, 'مواد غذائية', '2020-05-16 20:52:47', '2020-05-16 20:52:47'),
(3, 'المواصلات', '2020-05-16 20:53:05', '2020-05-16 20:53:05'),
(7, 'الفنون والحرف اليدوية', '2020-05-18 04:08:27', '2020-05-18 04:08:28'),
(8, 'الزراعة', '2020-05-18 04:13:52', '2020-05-18 04:13:53'),
(9, 'المناجم', '2020-05-19 00:41:39', '2020-05-19 00:41:40'),
(10, 'السياحة', '2020-05-19 00:42:00', '2020-05-19 00:42:01'),
(11, 'معالجة النفايات', '2020-05-19 00:42:18', '2020-05-19 00:42:19'),
(12, 'اتصالات', '2020-05-19 00:42:41', '2020-05-19 00:42:42'),
(13, 'تجارة التجزئة', '2020-05-19 00:43:08', '2020-05-19 00:43:09');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\May2020\\g2qdCuMiq8RyfLXZO9nX.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\May2020\\0pYvmdCIO0ao3dsmFkOA.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '354285604797-5tub037fdkcnle69cebv7gva82jfe0o5.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typecentres`
--

DROP TABLE IF EXISTS `typecentres`;
CREATE TABLE IF NOT EXISTS `typecentres` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typecentres`
--

INSERT INTO `typecentres` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'administration', '2020-05-19 10:54:31', '2020-05-19 10:54:32'),
(2, 'delegation', '2020-05-19 10:54:47', '2020-05-19 10:54:49');

-- --------------------------------------------------------

--
-- Structure de la table `typedocuments`
--

DROP TABLE IF EXISTS `typedocuments`;
CREATE TABLE IF NOT EXISTS `typedocuments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `islot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typedocuments`
--

INSERT INTO `typedocuments` (`id`, `type`, `islot`, `created_at`, `updated_at`) VALUES
(1, 'طلبات العروض', 1, '2020-05-16 14:40:31', '2020-05-16 14:40:32'),
(2, 'فضاء التنزيل', 1, '2020-05-16 14:41:10', '2020-05-16 14:41:11'),
(3, 'إعلان عن مباراة', 0, '2020-05-16 14:41:51', '2020-05-16 14:41:53');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'odco', 'odco@odco.com', 'users\\May2020\\49LH1IJp3ebXSvn1kDL5.png', NULL, '$2y$10$w8FHheUj65FzJ/LjMQLqMOBPbZLNYObb.zmANekHL51v0QKQXe.Qe', NULL, '{\"locale\":\"fr\"}', '2020-05-15 12:35:59', '2020-05-20 22:34:38');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `poste_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `videos_poste_id_foreign` (`poste_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `videos`
--

INSERT INTO `videos` (`id`, `titre`, `path`, `created_at`, `updated_at`, `poste_id`) VALUES
(1, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:58', '2020-05-19 01:12:58', 132),
(2, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 124),
(3, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 140),
(4, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 146),
(5, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 142),
(6, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 137),
(7, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 126),
(8, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 127),
(9, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 146),
(10, 'طريقة التوصل بالمنحة بالنسبة للمسجلين في خدمة راميد', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:12:59', '2020-05-19 01:12:59', 150),
(11, 'تعاونية إنتاج الكسكس والتسويق', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:05', '2020-05-19 01:14:05', 127),
(12, 'تعاونية إنتاج الكسكس والتسويق', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:05', '2020-05-19 01:14:05', 147),
(13, 'تعاونية إنتاج الكسكس والتسويق', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:05', '2020-05-19 01:14:05', 123),
(14, 'تعاونية إنتاج الكسكس والتسويق', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:06', '2020-05-19 01:14:06', 133),
(15, 'تعاونية إنتاج الكسكس والتسويق', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:07', '2020-05-19 01:14:07', 147),
(16, 'الإدارة الداخلية للتعاون', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:58', '2020-05-19 01:14:58', 127),
(17, 'الإدارة الداخلية للتعاون', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:58', '2020-05-19 01:14:58', 147),
(18, 'الإدارة الداخلية للتعاون', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:59', '2020-05-19 01:14:59', 128),
(19, 'الإدارة الداخلية للتعاون', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:59', '2020-05-19 01:14:59', 129),
(20, 'الإدارة الداخلية للتعاون', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:14:59', '2020-05-19 01:14:59', 136),
(21, 'دليل الامتثال', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:15:39', '2020-05-19 01:15:39', 134),
(22, 'دليل الامتثال', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:15:39', '2020-05-19 01:15:39', 130),
(23, 'دليل الامتثال', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:15:39', '2020-05-19 01:15:39', 144),
(24, 'دليل الامتثال', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:15:39', '2020-05-19 01:15:39', 141),
(25, 'دليل الامتثال', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:15:39', '2020-05-19 01:15:39', 142),
(26, 'كيفية انشاء تعاونية', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:16:36', '2020-05-19 01:16:36', 134),
(27, 'كيفية انشاء تعاونية', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:16:36', '2020-05-19 01:16:36', 140),
(28, 'كيفية انشاء تعاونية', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:16:36', '2020-05-19 01:16:36', 122),
(29, 'كيفية انشاء تعاونية', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:16:36', '2020-05-19 01:16:36', 149),
(30, 'كيفية انشاء تعاونية', 'https://www.youtube.com/embed/vHryRKorzdw', '2020-05-19 01:16:36', '2020-05-19 01:16:36', 126);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `centres`
--
ALTER TABLE `centres`
  ADD CONSTRAINT `centres_typecentre_id_foreign` FOREIGN KEY (`typecentre_id`) REFERENCES `typecentres` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_typedocument_id_foreign` FOREIGN KEY (`typedocument_id`) REFERENCES `typedocuments` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pdfdocuments`
--
ALTER TABLE `pdfdocuments`
  ADD CONSTRAINT `pdfdocuments_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pdfposts`
--
ALTER TABLE `pdfposts`
  ADD CONSTRAINT `pdfposts_poste_id_foreign` FOREIGN KEY (`poste_id`) REFERENCES `postes` (`id`);

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `postes`
--
ALTER TABLE `postes`
  ADD CONSTRAINT `postes_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postes_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_poste_id_foreign` FOREIGN KEY (`poste_id`) REFERENCES `postes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
