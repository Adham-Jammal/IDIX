-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 01:41 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idix2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-05-24 08:52:16', '2022-05-24 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'voyager::seeders.data_rows.email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'voyager::seeders.data_rows.password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'voyager::seeders.data_rows.remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'voyager::seeders.data_rows.avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'voyager::seeders.data_rows.role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'voyager::seeders.data_rows.display_name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'voyager::seeders.data_rows.role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'voyager::seeders.data_rows.parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'voyager::seeders.data_rows.order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'voyager::seeders.data_rows.name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'voyager::seeders.data_rows.slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'voyager::seeders.data_rows.author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'voyager::seeders.data_rows.category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'voyager::seeders.data_rows.title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'voyager::seeders.data_rows.excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'voyager::seeders.data_rows.body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'voyager::seeders.data_rows.post_image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'voyager::seeders.data_rows.slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'voyager::seeders.data_rows.meta_description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'voyager::seeders.data_rows.meta_keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'voyager::seeders.data_rows.status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'voyager::seeders.data_rows.seo_title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'voyager::seeders.data_rows.featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'voyager::seeders.data_rows.id', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'voyager::seeders.data_rows.author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'voyager::seeders.data_rows.title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'voyager::seeders.data_rows.excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'voyager::seeders.data_rows.body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'voyager::seeders.data_rows.slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'voyager::seeders.data_rows.meta_description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'voyager::seeders.data_rows.meta_keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'voyager::seeders.data_rows.status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'voyager::seeders.data_rows.created_at', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'voyager::seeders.data_rows.updated_at', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'voyager::seeders.data_rows.page_image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'اسم الشريك', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 2),
(58, 7, 'image', 'image', 'الصورة', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(64, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(65, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 9, 'name', 'text', 'الاسم الكامل', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 2),
(67, 9, 'email', 'text', 'الإيميل', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 3),
(68, 9, 'phone', 'text', 'رقم الهاتف', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 4),
(69, 9, 'service', 'text', 'الخدمة', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(70, 9, 'message', 'text', 'نص الرسالة', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(79, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"}}', 1),
(80, 19, 'logo', 'image', 'اللوغو', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 2),
(81, 19, 'main_word_header_Ar', 'text', 'الكلمة الرئيسية للهيدر AR', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 3),
(82, 19, 'main_word_header_En', 'text', 'الكلمة الرئيسية للهيدر EN', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 4),
(83, 19, 'title_header_Ar', 'text', 'عنوان الهيدر AR', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(84, 19, 'title_header_En', 'text', 'عنوان الهيدر EN', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(85, 19, 'desc_header_Ar', 'text_area', 'وصف الهيدر AR', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(86, 19, 'desc_header_En', 'text_area', 'وصف الهيدر EN', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(87, 19, 'royaa_desc_Ar', 'text_area', 'وصف الرؤية AR', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(88, 19, 'royaa_desc_En', 'text_area', 'وصف الرؤية EN', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 10),
(89, 19, 'message_des_Ar', 'text_area', 'وصف \"رسالتنا\" AR', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 11),
(90, 19, 'message_des_En', 'text_area', 'وصف \"رسالتنا\" EN', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 12),
(91, 19, 'service_des_Ar', 'text_area', 'وصف الخدمات AR', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(92, 19, 'service_des_En', 'text_area', 'وصف الخدمات EN', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 14),
(93, 19, 'mail_1', 'text', 'الإيميل الأول', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 15),
(94, 19, 'mail_2', 'text', 'الإيميل الثاني', 0, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 16),
(95, 19, 'phone_1', 'text', 'رقم الهاتف 1', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 17),
(96, 19, 'phone_2', 'text', 'رقم الهاتف 2', 0, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 18),
(97, 19, 'location_Ar', 'text_area', 'العنوان AR', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 19),
(98, 19, 'image_royaa_message', 'image', 'الصورة عند الرؤية والرسالة', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 21),
(99, 19, 'goals_image', 'image', 'الصورة عند  الأهداف', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 22),
(100, 19, 'form_image', 'image', 'الصورة عند فورم التواصل', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 23),
(101, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{\"display\":{\"width\":\"6\"}}', 24),
(102, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"}}', 25),
(103, 19, 'location_En', 'text_area', 'العنوان EN', 1, 0, 0, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 20),
(104, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"}}', 1),
(105, 23, 'title_Ar', 'text', 'عنوان الخدمة AR', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 2),
(106, 23, 'description_Ar', 'rich_text_box', 'وصف الخدمة AR', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 4),
(107, 23, 'image', 'image', 'صورة الخدمة', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(108, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"}}', 7),
(109, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(110, 23, 'description_En', 'rich_text_box', 'وصف الخدمة En', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(111, 23, 'title_En', 'text', 'عنوان الخدمة EN', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 3),
(112, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"}}', 1),
(113, 24, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 2),
(114, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 3),
(115, 24, 'image', 'image', 'صورة الشريحة', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 4),
(116, 8, 'goal_Ar', 'text', 'الهدف AR', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 2),
(117, 8, 'goal_En', 'text', 'الهدف EN', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'voyager::seeders.data_types.user.singular', 'voyager::seeders.data_types.user.plural', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(2, 'menus', 'menus', 'voyager::seeders.data_types.menu.singular', 'voyager::seeders.data_types.menu.plural', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(3, 'roles', 'roles', 'voyager::seeders.data_types.role.singular', 'voyager::seeders.data_types.role.plural', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(4, 'categories', 'categories', 'voyager::seeders.data_types.category.singular', 'voyager::seeders.data_types.category.plural', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(5, 'posts', 'posts', 'voyager::seeders.data_types.post.singular', 'voyager::seeders.data_types.post.plural', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(6, 'pages', 'pages', 'voyager::seeders.data_types.page.singular', 'voyager::seeders.data_types.page.plural', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(7, 'friendes', 'friendes', 'شريك', 'شركاء النجاح', 'voyager-group', 'App\\Friende', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-05-26 10:31:23', '2022-05-26 10:31:23'),
(8, 'goals', 'goals', 'هدف', 'الأهداف', 'voyager-rocket', 'App\\Goal', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 10:32:34', '2022-05-27 06:19:15'),
(9, 'messages', 'messages', 'رسالة', 'رسائل التواصل', 'voyager-bubble-hear', 'App\\Message', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-26 10:35:04', '2022-05-26 10:35:40'),
(19, 'settinggs', 'urls', 'العناصر', 'عناصر الموقع', 'voyager-params', 'App\\Settinggs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-27 04:34:04', '2022-05-27 05:12:57'),
(23, 'services', 'services', 'خدمة', 'الخدمات', 'voyager-tools', 'App\\Service', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-27 05:29:24', '2022-05-27 05:33:04'),
(24, 'sliders', 'sliders', 'شريحة', 'الشرائح', 'voyager-photos', 'App\\Slider', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-05-27 05:51:48', '2022-05-27 05:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friendes`
--

CREATE TABLE `friendes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_Ar` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_En` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` int(10) UNSIGNED NOT NULL,
  `goal_Ar` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `goal_En` varchar(750) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `goal_Ar`, `created_at`, `updated_at`, `goal_En`) VALUES
(2, 'إيجاد إجراءات الصيانـــــــــــــــــة الفعــــــــــالة وأفضل طــــــــــرق التشخيص ووسائل الحمايــــــــــة', '2022-05-27 19:40:53', '2022-05-27 19:40:53', 'Finding effective maintenance procedures and the best methods in diagnosing faults and means of protection'),
(3, 'تقليل الآثار السلبيـــــــــــــــــــــة لعملياتنا من خلال تجنـــــــــــــب النفايات وتقليلهــــــــــــــــــــــــا', '2022-05-27 19:41:18', '2022-05-27 19:41:18', 'Reduce the negative impacts of our operations by avoiding and reducing waste'),
(4, 'استخدام أحدث النظــــــــــــــــــم في تقديم الخدمات ومواكبـــــــــة التطورات العالميـــــــــــــــــــــــة', '2022-05-27 19:41:58', '2022-05-27 19:41:58', 'Using the latest systems in providing services and keeping abreast of global developments'),
(5, 'وضع خطط لإتمـــــــــــــــــــــــام عملية الصيانة والتشغيـــــــــــــل بصورة اقتصاديـــــــــــــــــــــــــة', '2022-05-27 19:42:18', '2022-05-27 19:42:18', 'Develop plans to complete the maintenance and operation process economically'),
(6, 'الحفاظ على صحة عملائنـــــــــــــا باستعمالنا لمبيدات عديمة الرائحة وغير ضارة بالإنسان والبيئـــــــــــة', '2022-05-27 19:42:52', '2022-05-27 19:42:52', 'Maintain the health of our customers by using pesticides without odors and not harmful to humans and the environment'),
(7, 'صيانة تكييف الهــــــــــــــــــــواء  (مركزي – سبليـــــــــــــــــــــت)', '2022-05-27 19:43:37', '2022-05-27 19:43:37', 'Air conditioning maintenance  (central - split)');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-05-24 08:52:15', '2022-05-24 08:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(6, 1, 'voyager::seeders.menu_items.menu_builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-05-24 08:52:15', '2022-05-27 05:20:21', 'voyager.menus.index', NULL),
(7, 1, 'voyager::seeders.menu_items.database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-05-24 08:52:15', '2022-05-27 05:20:21', 'voyager.database.index', NULL),
(8, 1, 'voyager::seeders.menu_items.compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-05-24 08:52:15', '2022-05-27 05:20:21', 'voyager.compass.index', NULL),
(9, 1, 'voyager::seeders.menu_items.bread', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-05-24 08:52:15', '2022-05-27 05:20:21', 'voyager.bread.index', NULL),
(14, 1, 'شركاء النجاح', '', '_self', 'voyager-group', NULL, NULL, 2, '2022-05-26 10:31:23', '2022-05-27 05:20:43', 'voyager.friendes.index', NULL),
(15, 1, 'الأهداف', '', '_self', 'voyager-rocket', NULL, NULL, 3, '2022-05-26 10:32:34', '2022-05-27 05:20:43', 'voyager.goals.index', NULL),
(16, 1, 'رسائل التواصل', '', '_self', 'voyager-bubble-hear', NULL, NULL, 4, '2022-05-26 10:35:04', '2022-05-27 05:20:43', 'voyager.messages.index', NULL),
(17, 1, 'عناصر الموقع', '', '_self', 'voyager-params', '#000000', NULL, 1, '2022-05-27 04:34:04', '2022-05-27 05:22:17', 'voyager.urls.index', 'null'),
(18, 1, 'الخدمات', '', '_self', 'voyager-tools', NULL, NULL, 5, '2022-05-27 05:29:24', '2022-05-27 05:29:24', 'voyager.services.index', NULL),
(19, 1, 'السلايدر', '', '_self', 'voyager-photos', '#000000', NULL, 6, '2022-05-27 05:51:48', '2022-05-27 05:52:59', 'voyager.sliders.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `service`, `message`, `created_at`, `updated_at`) VALUES
(1, 'name', 'email', 'phone', 'service', 'message', '2022-05-27 08:05:03', '2022-05-27 08:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-05-24 08:52:16', '2022-05-24 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(2, 'browse_bread', NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(3, 'browse_database', NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(4, 'browse_media', NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(5, 'browse_compass', NULL, '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(6, 'browse_menus', 'menus', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(7, 'read_menus', 'menus', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(8, 'edit_menus', 'menus', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(9, 'add_menus', 'menus', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(10, 'delete_menus', 'menus', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(11, 'browse_roles', 'roles', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(12, 'read_roles', 'roles', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(13, 'edit_roles', 'roles', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(14, 'add_roles', 'roles', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(15, 'delete_roles', 'roles', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(16, 'browse_users', 'users', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(17, 'read_users', 'users', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(18, 'edit_users', 'users', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(19, 'add_users', 'users', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(20, 'delete_users', 'users', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(21, 'browse_settings', 'settings', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(22, 'read_settings', 'settings', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(23, 'edit_settings', 'settings', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(24, 'add_settings', 'settings', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(25, 'delete_settings', 'settings', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(26, 'browse_categories', 'categories', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(27, 'read_categories', 'categories', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(28, 'edit_categories', 'categories', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(29, 'add_categories', 'categories', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(30, 'delete_categories', 'categories', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(31, 'browse_posts', 'posts', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(32, 'read_posts', 'posts', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(33, 'edit_posts', 'posts', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(34, 'add_posts', 'posts', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(35, 'delete_posts', 'posts', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(36, 'browse_pages', 'pages', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(37, 'read_pages', 'pages', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(38, 'edit_pages', 'pages', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(39, 'add_pages', 'pages', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(40, 'delete_pages', 'pages', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(41, 'browse_friendes', 'friendes', '2022-05-26 10:31:23', '2022-05-26 10:31:23'),
(42, 'read_friendes', 'friendes', '2022-05-26 10:31:23', '2022-05-26 10:31:23'),
(43, 'edit_friendes', 'friendes', '2022-05-26 10:31:23', '2022-05-26 10:31:23'),
(44, 'add_friendes', 'friendes', '2022-05-26 10:31:23', '2022-05-26 10:31:23'),
(45, 'delete_friendes', 'friendes', '2022-05-26 10:31:23', '2022-05-26 10:31:23'),
(46, 'browse_goals', 'goals', '2022-05-26 10:32:34', '2022-05-26 10:32:34'),
(47, 'read_goals', 'goals', '2022-05-26 10:32:34', '2022-05-26 10:32:34'),
(48, 'edit_goals', 'goals', '2022-05-26 10:32:34', '2022-05-26 10:32:34'),
(49, 'add_goals', 'goals', '2022-05-26 10:32:34', '2022-05-26 10:32:34'),
(50, 'delete_goals', 'goals', '2022-05-26 10:32:34', '2022-05-26 10:32:34'),
(51, 'browse_messages', 'messages', '2022-05-26 10:35:04', '2022-05-26 10:35:04'),
(52, 'read_messages', 'messages', '2022-05-26 10:35:04', '2022-05-26 10:35:04'),
(53, 'edit_messages', 'messages', '2022-05-26 10:35:04', '2022-05-26 10:35:04'),
(54, 'add_messages', 'messages', '2022-05-26 10:35:04', '2022-05-26 10:35:04'),
(55, 'delete_messages', 'messages', '2022-05-26 10:35:04', '2022-05-26 10:35:04'),
(56, 'browse_settinggs', 'settinggs', '2022-05-27 04:34:04', '2022-05-27 04:34:04'),
(57, 'read_settinggs', 'settinggs', '2022-05-27 04:34:04', '2022-05-27 04:34:04'),
(58, 'edit_settinggs', 'settinggs', '2022-05-27 04:34:04', '2022-05-27 04:34:04'),
(59, 'add_settinggs', 'settinggs', '2022-05-27 04:34:04', '2022-05-27 04:34:04'),
(60, 'delete_settinggs', 'settinggs', '2022-05-27 04:34:04', '2022-05-27 04:34:04'),
(61, 'browse_services', 'services', '2022-05-27 05:29:24', '2022-05-27 05:29:24'),
(62, 'read_services', 'services', '2022-05-27 05:29:24', '2022-05-27 05:29:24'),
(63, 'edit_services', 'services', '2022-05-27 05:29:24', '2022-05-27 05:29:24'),
(64, 'add_services', 'services', '2022-05-27 05:29:24', '2022-05-27 05:29:24'),
(65, 'delete_services', 'services', '2022-05-27 05:29:24', '2022-05-27 05:29:24'),
(66, 'browse_sliders', 'sliders', '2022-05-27 05:51:48', '2022-05-27 05:51:48'),
(67, 'read_sliders', 'sliders', '2022-05-27 05:51:48', '2022-05-27 05:51:48'),
(68, 'edit_sliders', 'sliders', '2022-05-27 05:51:48', '2022-05-27 05:51:48'),
(69, 'add_sliders', 'sliders', '2022-05-27 05:51:48', '2022-05-27 05:51:48'),
(70, 'delete_sliders', 'sliders', '2022-05-27 05:51:48', '2022-05-27 05:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(58, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-05-24 08:52:16', '2022-05-24 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'voyager::seeders.roles.admin', '2022-05-24 08:52:15', '2022-05-24 08:52:15'),
(2, 'user', 'voyager::seeders.roles.user', '2022-05-24 08:52:15', '2022-05-24 08:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_Ar` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_Ar` varchar(7586) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description_En` varchar(7555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_En` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_Ar`, `description_Ar`, `image`, `created_at`, `updated_at`, `description_En`, `title_En`) VALUES
(3, 'أعمال الكهرباء', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none; border: none; text-transform: capitalize; transition: all 0.2s linear 0s; scroll-behavior: smooth; direction: rtl; font-family: Arabic-font, sans-serif; list-style: none; color: #000000; font-size: 10px;\">\r\n<li style=\"box-sizing: border-box; margin: -10px 0px 0px; padding: 0px; outline: none; border: none; transition: all 0.2s linear 0s; scroll-behavior: smooth; direction: rtl; color: var(--white); font-size: 1.6rem; text-align: right;\">استكشاف الأعطال الكهربائية</li>\r\n<li style=\"box-sizing: border-box; margin: -10px 0px 0px; padding: 0px; outline: none; border: none; transition: all 0.2s linear 0s; scroll-behavior: smooth; direction: rtl; color: var(--white); font-size: 1.6rem; text-align: right;\">إصلاح ماس كهربائي</li>\r\n<li style=\"box-sizing: border-box; margin: -10px 0px 0px; padding: 0px; outline: none; border: none; transition: all 0.2s linear 0s; scroll-behavior: smooth; direction: rtl; color: var(--white); font-size: 1.6rem; text-align: right;\">استبدال قاطع الدارة</li>\r\n<li style=\"box-sizing: border-box; margin: -10px 0px 0px; padding: 0px; outline: none; border: none; transition: all 0.2s linear 0s; scroll-behavior: smooth; direction: rtl; color: var(--white); font-size: 1.6rem; text-align: right;\">ترقية الأسلاك / تجديد الأسلاك</li>\r\n<li style=\"box-sizing: border-box; margin: -10px 0px 0px; padding: 0px; outline: none; border: none; transition: all 0.2s linear 0s; scroll-behavior: smooth; direction: rtl; color: var(--white); font-size: 1.6rem; text-align: right;\">التمديدات الكهربائية</li>\r\n</ul>', 'services\\May2022\\HKqnXbFCEb44iwbpWLhi.jpg', '2022-05-27 13:38:02', '2022-05-27 20:04:56', '<p class=\"MsoNormal\"><span style=\"mso-ansi-language: EN-US;\">Troubleshooting electricity </span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-ansi-language: EN-US;\">Electrical seam repair</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-ansi-language: EN-US;\">Replacing circuit breakers</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-ansi-language: EN-US;\">Upgrade, renew and organize power cords</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-ansi-language: EN-US;\">Power cord extension and regulation</span></p>', 'Electrical works'),
(4, 'أعمال سباكة', '<p>أعمال سباكة</p>', 'services\\May2022\\aymKqTld93wYDtAK5eP4.jpg', '2022-05-27 20:03:36', '2022-05-27 20:03:36', '<p>Plumbing works</p>', 'Plumbing works'),
(5, 'أعمال الطلاء', '<p>أعمال الطلاء</p>', 'services\\May2022\\7yqER2YU79nLdvt0SD6w.jpg', '2022-05-27 20:09:51', '2022-05-27 20:09:51', '<p>painting work</p>', 'painting work'),
(6, 'أعمال صيانة تكييف الهواء', '<p>أعمال صيانة تكييف الهواء</p>', 'services\\May2022\\dzXrf6BZOkolCj4bCtD9.jpg', '2022-05-27 20:10:12', '2022-05-27 20:10:12', '<p>Air conditioning maintenance work</p>', 'Air conditioning maintenance work'),
(7, 'خدمات مكافحة الحشرات', '<p>خدمات مكافحة الحشرات</p>', 'services\\May2022\\p7E6Hna6SiN7gYeaGiPa.jpg', '2022-05-27 20:10:43', '2022-05-27 20:10:43', '<p>pest control services</p>', 'pest control services');

-- --------------------------------------------------------

--
-- Table structure for table `settinggs`
--

CREATE TABLE `settinggs` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_word_header_Ar` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_word_header_En` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_header_Ar` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_header_En` varchar(550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_header_Ar` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_header_En` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `royaa_desc_Ar` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `royaa_desc_En` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_des_Ar` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_des_En` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_des_Ar` varchar(756) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_des_En` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_Ar` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_royaa_message` varchar(152) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goals_image` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_image` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_En` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settinggs`
--

INSERT INTO `settinggs` (`id`, `logo`, `main_word_header_Ar`, `main_word_header_En`, `title_header_Ar`, `title_header_En`, `desc_header_Ar`, `desc_header_En`, `royaa_desc_Ar`, `royaa_desc_En`, `message_des_Ar`, `message_des_En`, `service_des_Ar`, `service_des_En`, `mail_1`, `mail_2`, `phone_1`, `phone_2`, `location_Ar`, `image_royaa_message`, `goals_image`, `form_image`, `created_at`, `updated_at`, `location_En`) VALUES
(1, 'urls\\May2022\\H8ZRAs24I1cdgCNQExYm.png', 'الحل الأمثل', 'The Perfect Solution', 'لجميع مشاكل السباكـــــــــــــة والكهرباء والطلاء وتكييف الهواء', 'for all plumbing, electrical and air conditioning paint problems', 'شركة TDIX مقرها الرئيسي الرياض تأسست عام 2011 كشركة تابعة لمجموعة أوج المحدودة ، يعمل فريقها على الإبتكار للنهوض بمجال التعقيم ومكافحة الحشرات والصيانة والتشغيل في المملكـــــة العربيــــــــة السعوديـــــــــــــــــــــــــة وذلك من خلال إهتمامـــــــــــــــــــــــــــه بأدق التفاصيـــــــــــــــــل في المشـــــــروع', 'TDIX company with its headquarters in the kingdom of Saudi Arabia and its capital Riyadh , was established in 2011 as a subsidiary of awj Group Ltd. its team works on innovation and creativity to advance in the field of maintenance, operation, sterilization and pest control in the kingdom', 'نتطلع ان تصبح TDIX الخيار الأمثل لعملائنــــــا للحصول على خدمات أعمــال الصيانة والتشغيل ومكافحـــــــة الحشرات والتعقيــــــــــم، لنصنع عمــــــــلاً يفوق توقعاتكم بتوفير اعلى مستويـــــــــــــات الجودة والامـــــــــــــــــــــان.', 'We look forward to becoming the best choice for customers for maintenance, operation, pest control and sterilization services and we do work beyond expectations by providing the highest levels of quality and safety', 'أن نوفر خدمات استثنائية في السوق المحلي تلبي احتياجات عملائنـــــــا.\r\nوتقديم خدمات الصيانة ومكافحة حشرات وتعقيم بشكل متميز واحترافي.', 'To provide exceptional services in the local market that meet all customer needs and provide the best maintenance and operation services in the region', 'تتعدد خدماتنا وتتخذ عدة أنشطة نستلهم في تنفيذها أكثر الطرق تميزاً، تغطي إدارة الصيانة والتشغيل الخدمات التالية', 'Our services and activities are numerous in serving our customers and we are inspired to implement more and better distinctive ways, the maintenance and operation department covers the following services', 'www.awj.com.sa', 'info@awj.com.sa', '+963 912345678', '+963 912345678', 'لمملكة العربية السعودية – حي المحمدية ص.ب 230409 الرياض 11321', 'urls\\May2022\\obI6VHlJc5jwiO2713LV.png', 'urls\\May2022\\vQ9BjxLfJNERFTSklcKh.png', 'urls\\May2022\\AoCSk4dUYSbsgnpeeSGO.png', '2022-05-27 05:19:15', '2022-05-27 13:46:55', 'لمملكة العربية السعودية – حي المحمدية ص.ب 230409 الرياض 11321');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'voyager::seeders.settings.site.title', 'voyager::seeders.settings.site.title', '', 'text', 1, 'Site'),
(2, 'site.description', 'voyager::seeders.settings.site.description', 'voyager::seeders.settings.site.description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'voyager::seeders.settings.site.logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'voyager::seeders.settings.site.google_analytics_tracking_id', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'voyager::seeders.settings.admin.background_image', 'settings\\May2022\\GryNEiIggKvzTdHKzmNw.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'voyager::seeders.settings.admin.title', 'شركة TDIX', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'voyager::seeders.settings.admin.description', 'الحل الأمثل لجميع مشاكل السباكـــــــــــــة', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'voyager::seeders.settings.admin.loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'voyager::seeders.settings.admin.icon_image', 'settings\\May2022\\ud7Z5iOPI3CWFBMLAoyz.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'voyager::seeders.settings.admin.google_analytics_client_id', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `image`) VALUES
(9, '2022-05-27 17:36:09', '2022-05-27 17:36:09', 'sliders\\May2022\\vZHDUpefS8HrJ3UsYNiT.png'),
(10, '2022-05-27 17:54:07', '2022-05-27 17:54:07', 'sliders\\May2022\\tLFRAeXeE66fWvAlIKx0.png');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-05-24 08:52:16', '2022-05-24 08:52:16'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-05-24 08:52:16', '2022-05-24 08:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2022\\ofl8vIjjKxlxNq23nKkg.png', NULL, '$2y$10$d3jhd.v1E1DnMXXfrVuyLetuAC.iTsWeVMcPQVaUzP3/F3Trk3fHC', 'JKnALMyLIX2qKuZEzWGsqZ2kZjJLG44Ux9LDXbpvjrcOVvG1SiPCxDnq1Ade', '{\"locale\":\"ar\"}', '2022-05-24 08:52:16', '2022-05-27 01:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `friendes`
--
ALTER TABLE `friendes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settinggs`
--
ALTER TABLE `settinggs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendes`
--
ALTER TABLE `friendes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settinggs`
--
ALTER TABLE `settinggs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
