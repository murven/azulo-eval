-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2021 a las 22:49:12
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `airportdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `airport`
--

CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `priority_order` int(11) NOT NULL,
  `airport_operator_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `airport`
--

INSERT INTO `airport` (`id`, `name`, `priority_order`, `airport_operator_id`, `location_id`) VALUES
(1, 'Murphy', 33, 1, 1),
(2, 'Maggio', 30, 2, 2),
(3, 'Baumbach', 15, 3, 3),
(4, 'Stehr', 92, 4, 4),
(5, 'Abshire', 35, 5, 5),
(6, 'Fay', 84, 6, 6),
(7, 'Howell', 12, 7, 7),
(8, 'Casper', 98, 8, 8),
(9, 'Collier', 9, 9, 9),
(10, 'Pagac', 67, 10, 10),
(11, 'Bruen', 49, 11, 11),
(12, 'Prosacco', 89, 12, 12),
(13, 'Kerluke', 23, 13, 13),
(14, 'Schiller', 95, 14, 14),
(15, 'Baumbach', 97, 15, 15),
(16, 'Legros', 85, 16, 16),
(17, 'Lynch', 2, 17, 17),
(18, 'Roob', 27, 18, 18),
(19, 'Borer', 69, 19, 19),
(20, 'Quitzon', 45, 20, 20),
(21, 'O\'Connell', 14, 21, 21),
(22, 'Brakus', 1, 22, 22),
(23, 'Boehm', 54, 23, 23),
(24, 'Ward', 75, 24, 24),
(25, 'Orn', 53, 25, 25),
(26, 'Will', 24, 26, 26),
(27, 'Larson', 3, 27, 27),
(28, 'Hackett', 34, 28, 28),
(29, 'McLaughlin', 76, 29, 29),
(30, 'Wehner', 8, 30, 30),
(31, 'Wintheiser', 59, 31, 31),
(32, 'Leffler', 32, 32, 32),
(33, 'Breitenberg', 81, 33, 33),
(34, 'Legros', 37, 34, 34),
(35, 'Schuster', 39, 35, 35),
(36, 'Boyle', 79, 36, 36),
(37, 'Oberbrunner', 5, 37, 37),
(38, 'Brakus', 73, 38, 38),
(39, 'McCullough', 22, 39, 39),
(40, 'Crist', 36, 40, 40),
(41, 'Torphy', 44, 41, 41),
(42, 'Dibbert', 42, 42, 42),
(43, 'Satterfield', 52, 43, 43),
(44, 'Schuppe', 26, 44, 44),
(45, 'Morar', 71, 45, 45),
(46, 'Konopelski', 63, 46, 46),
(47, 'Volkman', 19, 47, 47),
(48, 'Gislason', 18, 48, 48),
(49, 'Steuber', 29, 49, 49),
(50, 'Fahey', 43, 50, 50),
(51, 'Ebert', 58, 1, 1),
(52, 'Kulas', 65, 2, 2),
(53, 'West', 41, 3, 3),
(54, 'Casper', 61, 4, 4),
(55, 'Feil', 74, 5, 5),
(56, 'Leffler', 83, 6, 6),
(57, 'Reynolds', 16, 7, 7),
(58, 'Dietrich', 94, 8, 8),
(59, 'Emard', 66, 9, 9),
(60, 'Klocko', 4, 10, 10),
(61, 'Yost', 78, 11, 11),
(62, 'Baumbach', 50, 12, 12),
(63, 'Sanford', 31, 13, 13),
(64, 'Bechtelar', 6, 14, 14),
(65, 'Reichel', 47, 15, 15),
(66, 'Kuhic', 17, 16, 16),
(67, 'Koepp', 48, 17, 17),
(68, 'Leuschke', 80, 18, 18),
(69, 'Grant', 90, 19, 19),
(70, 'Hoppe', 60, 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `airport_operator`
--

CREATE TABLE `airport_operator` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `airport_operator`
--

INSERT INTO `airport_operator` (`id`, `name`) VALUES
(1, 'Laurie'),
(2, 'Makenna'),
(3, 'Charity'),
(4, 'Ayana'),
(5, 'Carroll'),
(6, 'Jailyn'),
(7, 'Declan'),
(8, 'Kylie'),
(9, 'Arianna'),
(10, 'Ola'),
(11, 'Kira'),
(12, 'Henriette'),
(13, 'Aurore'),
(14, 'Reece'),
(15, 'Janae'),
(16, 'Lacy'),
(17, 'Dorothea'),
(18, 'Jaquelin'),
(19, 'Macie'),
(20, 'Salma'),
(21, 'Piper'),
(22, 'Annetta'),
(23, 'Eleonore'),
(24, 'Maryse'),
(25, 'Genesis'),
(26, 'River'),
(27, 'Loren'),
(28, 'Ara'),
(29, 'Kyleigh'),
(30, 'Raymundo'),
(31, 'Pamela'),
(32, 'Dovie'),
(33, 'Maymie'),
(34, 'Glenna'),
(35, 'Emilio'),
(36, 'Sheila'),
(37, 'Roberto'),
(38, 'Robbie'),
(39, 'Dorthy'),
(40, 'Asha'),
(41, 'Leta'),
(42, 'Alysson'),
(43, 'Rebeca'),
(44, 'Bridget'),
(45, 'Kory'),
(46, 'Giovanna'),
(47, 'Luis'),
(48, 'Vincent'),
(49, 'Buck'),
(50, 'Amely');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'authenticate', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:28:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'directus_users', 'b5eb330f-719c-4a73-8eee-add9892f6b13', NULL),
(2, 'create', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:31:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'directus_files', '0686998e-eb23-4c1c-9ffc-bd80d90e35d7', NULL),
(3, 'create', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:31:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'directus_settings', '1', NULL),
(4, 'create', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:34:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'directus_files', '9d108564-dc69-49b2-9c1f-8d866fba230d', NULL),
(5, 'update', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:34:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'directus_settings', '1', NULL),
(6, 'authenticate', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:35:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'directus_users', 'b5eb330f-719c-4a73-8eee-add9892f6b13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 0,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT 1,
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `display` varchar(64) DEFAULT NULL,
  `display_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`display_options`)),
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `group` int(10) UNSIGNED DEFAULT NULL,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `charset` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, `height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('0686998e-eb23-4c1c-9ffc-bd80d90e35d7', 'local', '0686998e-eb23-4c1c-9ffc-bd80d90e35d7.svg', 'web-design.svg', 'Web Design', 'image/svg+xml', NULL, 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:31:03', NULL, '2021-05-04 17:31:03', NULL, 2141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('9d108564-dc69-49b2-9c1f-8d866fba230d', 'local', '9d108564-dc69-49b2-9c1f-8d866fba230d.svg', 'web-design.svg', 'Web Design', 'image/svg+xml', NULL, 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-04 17:34:00', NULL, '2021-05-04 17:34:00', NULL, 2226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2021-05-04 17:19:56'),
('20201029A', 'Remove System Relations', '2021-05-04 17:19:56'),
('20201029B', 'Remove System Collections', '2021-05-04 17:19:56'),
('20201029C', 'Remove System Fields', '2021-05-04 17:19:56'),
('20201105A', 'Add Cascade System Relations', '2021-05-04 17:19:57'),
('20201105B', 'Change Webhook URL Type', '2021-05-04 17:19:57'),
('20210225A', 'Add Relations Sort Field', '2021-05-04 17:19:57'),
('20210304A', 'Remove Locked Fields', '2021-05-04 17:19:57'),
('20210312A', 'Webhooks Collections Text', '2021-05-04 17:19:57'),
('20210331A', 'Add Refresh Interval', '2021-05-04 17:19:57'),
('20210415A', 'Make Filesize Nullable', '2021-05-04 17:19:57'),
('20210416A', 'Add Collections Accountability', '2021-05-04 17:19:57'),
('20210422A', 'Remove Files Interface', '2021-05-04 17:19:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presets`)),
  `fields` text DEFAULT NULL,
  `limit` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `filters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filters`)),
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_query`)),
  `layout_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_options`)),
  `refresh_interval` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `many_primary` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_primary` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `delta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`delta`)),
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text DEFAULT NULL,
  `ip_access` text DEFAULT NULL,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `module_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`module_list`)),
  `collection_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`collection_list`)),
  `admin_access` tinyint(1) NOT NULL DEFAULT 0,
  `app_access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `module_list`, `collection_list`, `admin_access`, `app_access`) VALUES
('4fe16366-1ff4-4a24-a6c9-ea3a41f44574', 'Administrator', 'verified', 'Initial administrative role with unrestricted App/API access', NULL, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`) VALUES
('hb3nCHcsu18LofcxOfMajMNG7hIyNv26SIllHuf87ISUvx9o6YLsLGNVocrtm3R8', 'b5eb330f-719c-4a73-8eee-add9892f6b13', '2021-05-11 18:34:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(10) DEFAULT '#00C897',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text DEFAULT NULL,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT 25,
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`storage_asset_presets`)),
  `custom_css` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `project_name`, `project_url`, `project_color`, `project_logo`, `public_foreground`, `public_background`, `public_note`, `auth_login_attempts`, `auth_password_policy`, `storage_asset_transform`, `storage_asset_presets`, `custom_css`) VALUES
(1, 'Airport', 'https://airport.io', '#00C897', '9d108564-dc69-49b2-9c1f-8d866fba230d', NULL, NULL, 'Is my first app on directus', 25, NULL, 'all', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en-US',
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`) VALUES
('b5eb330f-719c-4a73-8eee-add9892f6b13', 'Admin', 'User', 'gabriel@directus.com', '$argon2i$v=19$m=4096,t=3,p=1$evfsL94ocBJ08eOfRsIl4g$jmAFRi/4bcsczY+Ojd/rdVcICQoNx8dXuWyRTduz0RY', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', '4fe16366-1ff4-4a24-a6c9-ea3a41f44574', NULL, '2021-05-04 18:34:25', '/users/b5eb330f-719c-4a73-8eee-add9892f6b13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` text DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT 1,
  `actions` varchar(100) NOT NULL,
  `collections` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flyway_schema_history`
--

CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `flyway_schema_history`
--

INSERT INTO `flyway_schema_history` (`installed_rank`, `version`, `description`, `type`, `script`, `checksum`, `installed_by`, `installed_on`, `execution_time`, `success`) VALUES
(1, '1', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'root', '2021-05-04 18:59:33', 0, 1),
(2, '1.1', 'Create location table', 'SQL', 'V1_1__Create_location_table.sql', -726539485, 'root', '2021-05-04 19:22:01', 80, 1),
(3, '1.2', 'Create airport operator table', 'SQL', 'V1_2__Create_airport_operator_table.sql', 900644898, 'root', '2021-05-04 19:36:28', 76, 1),
(4, '1.3', 'Create airport table', 'SQL', 'V1_3__Create_airport_table.sql', 111982612, 'root', '2021-05-04 19:47:48', 36, 1),
(5, '1.4', 'Insert data to tables', 'SQL', 'V1_4__Insert_data_to_tables.sql', 970643887, 'root', '2021-05-04 20:44:32', 566, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `country` varchar(200) NOT NULL,
  `province_or_state` varchar(200) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`id`, `country`, `province_or_state`, `latitude`, `longitude`) VALUES
(1, 'New Edward', 'Tennessee', '-59.3225243', '-58.24247799'),
(2, 'South Dulcestad', 'Wyoming', '-60.8', '-57.62'),
(3, 'Conorton', 'Maryland', '-49.77191', '-51.408923'),
(4, 'Lake Cristianside', 'Tennessee', '-44.582153785', '-22'),
(5, 'New Kenneth', 'Florida', '-53.8833274', '-45.2'),
(6, 'New Patriciaville', 'Idaho', '-46.0701686', '-26.304723'),
(7, 'Marcohaven', 'NorthDakota', '-26.1', '-63'),
(8, 'Kassandraton', 'Idaho', '-44.9', '-50.337'),
(9, 'West Cristobal', 'Louisiana', '-48.966588', '-42.3545'),
(10, 'South Amaya', 'Montana', '-59.0912', '-44.8304'),
(11, 'New Karley', 'Alaska', '-36', '-39.6688118'),
(12, 'West Vivien', 'Georgia', '-29.98115', '-16.9031655'),
(13, 'East Robin', 'Nevada', '-46.5', '-62.70055059'),
(14, 'North Jessycaville', 'Ohio', '-62.69741', '-34.463403518'),
(15, 'Lake Keely', 'NorthDakota', '-50.226', '-27.334822638'),
(16, 'Hicklehaven', 'Alaska', '-30', '-18.97'),
(17, 'Jacobiburgh', 'California', '-31.1', '-49.664284934'),
(18, 'Kemmerton', 'Missouri', '-57', '-45.4'),
(19, 'West Harmonyside', 'Delaware', '-45.709216', '-49.2'),
(20, 'East Madelineburgh', 'Arizona', '-26.426', '-58.7629464'),
(21, 'Helenburgh', 'Iowa', '-28.9915', '-50'),
(22, 'Shanahanmouth', 'RhodeIsland', '-27.9959', '-16.87370585'),
(23, 'North Mazieburgh', 'Washington', '-35.26', '-46.40565685'),
(24, 'East Mozellborough', 'Iowa', '-60.80910447', '-48.161'),
(25, 'Lake Lauriane', 'SouthCarolina', '-26.039', '-38.46'),
(26, 'Lloydchester', 'Pennsylvania', '-41', '-55.859548'),
(27, 'Port Elsieborough', 'Wyoming', '-22.052734422', '-37.486463'),
(28, 'Flavieton', 'Kentucky', '-46.64', '-43.1'),
(29, 'North Michelle', 'Florida', '-24.34', '-57.562'),
(30, 'Nicolasmouth', 'WestVirginia', '-59.1399', '-45.546'),
(31, 'Spencerstad', 'Wyoming', '-29.41', '-34'),
(32, 'North Afton', 'Illinois', '-30', '-29.14728294'),
(33, 'Erikberg', 'Virginia', '-28.66', '-53.343'),
(34, 'Sinceremouth', 'SouthDakota', '-46.377203417', '-61.310777'),
(35, 'Port Miracle', 'NewJersey', '-57.49318294', '-26.00535384'),
(36, 'Dachmouth', 'Arizona', '-53.59', '-54.2129034'),
(37, 'Everardoland', 'Indiana', '-27', '-22.5828'),
(38, 'East Aditya', 'Nebraska', '-58', '-25.2'),
(39, 'Wilkinsonborough', 'Nevada', '-27.96878868', '-43.149769494'),
(40, 'East Brandoton', 'Oregon', '-28.607', '-45.3688135'),
(41, 'Daishaborough', 'Michigan', '-35', '-37.371'),
(42, 'Botsfordborough', 'Iowa', '-20.9', '-38.604'),
(43, 'North Mallie', 'Mississippi', '-48.29841194', '-46.68409665'),
(44, 'Sengermouth', 'Kansas', '-20.544', '-26.15914451'),
(45, 'Powlowskiburgh', 'Oklahoma', '-47.9299883', '-25.71111'),
(46, 'Karianneton', 'Montana', '-53.46', '-34'),
(47, 'Kreigerstad', 'Nebraska', '-60', '-19.29381699'),
(48, 'Brodyville', 'Arizona', '-62.11', '-43'),
(49, 'Haleyborough', 'Wyoming', '-32.1', '-40.244008'),
(50, 'Kingmouth', 'Florida', '-59.83707228', '-48.062');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airport_operator_id` (`airport_operator_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indices de la tabla `airport_operator`
--
ALTER TABLE `airport_operator`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Indices de la tabla `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`);

--
-- Indices de la tabla `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`),
  ADD KEY `directus_fields_group_foreign` (`group`);

--
-- Indices de la tabla `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_folder_foreign` (`folder`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`);

--
-- Indices de la tabla `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Indices de la tabla `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Indices de la tabla `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Indices de la tabla `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Indices de la tabla `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`);

--
-- Indices de la tabla `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`);

--
-- Indices de la tabla `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`);

--
-- Indices de la tabla `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Indices de la tabla `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flyway_schema_history`
--
ALTER TABLE `flyway_schema_history`
  ADD PRIMARY KEY (`installed_rank`),
  ADD KEY `flyway_schema_history_s_idx` (`success`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `airport_operator`
--
ALTER TABLE `airport_operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`airport_operator_id`) REFERENCES `airport_operator` (`id`),
  ADD CONSTRAINT `airport_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Filtros para la tabla `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD CONSTRAINT `directus_fields_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_fields` (`id`);

--
-- Filtros para la tabla `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`),
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Filtros para la tabla `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Filtros para la tabla `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`);

--
-- Filtros para la tabla `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`),
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`);

--
-- Filtros para la tabla `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`),
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Filtros para la tabla `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`);

--
-- Filtros para la tabla `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`);

--
-- Filtros para la tabla `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
