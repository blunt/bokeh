-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 18, 2017 at 01:35 AM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bokeh`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 1, 1, 'ARTHMB-HowToHelpYourCatHaveFewerHairballs-20160818.jpeg', 'image', 400, 375, 35387, '2017-08-11 01:11:07', '2017-08-16 02:02:01', '2017-08-16 03:18:37', '03f6be65-58d3-4feb-9ba8-a847d772cbb7'),
(6, 1, 1, 'Common-dog-behaviors-explained.jpg', 'image', 845, 450, 49038, '2017-08-11 01:11:07', '2017-08-16 02:02:02', '2017-08-16 03:18:38', '8cc96d48-d299-4f29-ba64-57c2168d63d6'),
(7, 1, 1, 'download (1).jpeg', 'image', 712, 800, 49014, '2017-08-14 02:06:33', '2017-08-16 02:02:02', '2017-08-16 03:18:38', '4e2e9224-580b-4bd4-af74-bdc662652491'),
(8, 1, 1, 'download (2).jpeg', 'image', 712, 765, 128899, '2017-08-14 02:06:33', '2017-08-16 02:02:02', '2017-08-16 03:18:38', 'b79c0b0b-94f7-499c-8d35-dc2fee91bac5'),
(9, 1, 1, 'download (4).jpeg', 'image', 712, 712, 70808, '2017-08-14 02:06:33', '2017-08-16 02:02:02', '2017-08-16 03:18:38', '59c72407-396c-416a-8177-645475c1fee3'),
(10, 1, 1, 'download.jpeg', 'image', 400, 600, 4488, '2017-08-14 02:06:33', '2017-08-16 02:02:02', '2017-08-16 03:18:38', '01f4bd7f-1cb1-4420-8d39-cb3f427ef325'),
(11, 1, 1, 'example.mp4', 'video', NULL, NULL, 235393, '2017-08-11 01:11:07', '2017-08-16 02:02:02', '2017-08-16 03:18:39', 'c59ed801-c82c-4e3f-9eaf-978c77c3a7f2'),
(12, 1, 1, 'hp.mp4', 'video', NULL, NULL, 36703293, '2017-08-14 02:06:33', '2017-08-16 02:02:02', '2017-08-16 03:18:39', 'eb2c33db-68c6-4959-b525-a46be0c5a010'),
(13, 1, 5, 'arrow-left.svg', 'image', 24, 24, 950, '2017-08-11 03:00:32', '2017-08-16 02:02:02', '2017-08-16 03:18:39', '4010f6ea-be7c-4347-9ca7-2c0df737089f'),
(14, 1, 5, 'arrow-right.svg', 'image', 24, 24, 1256, '2017-08-11 03:00:32', '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'd6352243-b79d-4d2a-82c9-98878d214626'),
(15, 1, 5, 'facebook.svg', 'image', 24, 24, 609, '2017-08-11 03:00:32', '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'ae031930-7409-4e05-8849-811b0422773b'),
(16, 1, 5, 'instagram.svg', 'image', 24, 24, 1106, '2017-08-11 03:00:32', '2017-08-16 02:02:03', '2017-08-16 03:18:39', '7b015068-6112-4ba9-a01d-3f65ff4b381f'),
(17, 1, 5, 'mail.svg', 'image', 24, 24, 597, '2017-08-11 03:00:32', '2017-08-16 02:02:03', '2017-08-16 03:18:39', '0d186e97-2b08-4871-ad77-610350680514'),
(18, 1, 5, 'twitter.svg', 'image', 24, 24, 1584, '2017-08-11 03:00:32', '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'dceab656-c527-400b-bc36-a6ac3b75d8b9'),
(19, 1, 1, 'jazmin-quaynor-35847.jpg', 'image', 2000, 1123, 404390, '2017-08-07 20:22:07', '2017-08-16 02:02:03', '2017-08-16 03:18:39', '48e06c55-3d47-4b9a-b14f-bd04da8442a8'),
(20, 1, 1, 'lukas-robertson-191319.jpg', 'image', 2000, 1502, 262070, '2017-08-07 20:22:07', '2017-08-16 02:02:03', '2017-08-16 03:18:40', 'b7ffb70e-0058-4ad8-bbfa-96fc6d25d03c'),
(21, 1, 1, 'photo-1496389294434-c84a4ebe3a08.jpeg', 'image', 2000, 1335, 374888, '2017-08-07 20:22:07', '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'a804bdfa-1023-4673-acde-687cff5eae09'),
(23, 1, 8, 'slide-1.svg', 'image', 2021, 1180, 862, '2017-08-11 02:25:35', '2017-08-16 02:02:04', '2017-08-16 03:18:40', '7a0f5489-e84d-458e-8f66-99bc9cb5a536'),
(24, 1, 8, 'slide-2.svg', 'image', 1649, 831, 782, '2017-08-11 02:25:35', '2017-08-16 02:02:04', '2017-08-16 03:18:40', '62873e24-9bd1-4d55-9322-895a0b43a346'),
(25, 1, 8, 'slide-intro.svg', 'image', 886, 498, 515, '2017-08-07 20:22:07', '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'fc177f5e-9333-46b5-8819-87c597424b37'),
(27, 1, 1, 'GettyImages-565976431.jpg', 'image', 5100, 3400, 10458535, '2017-08-16 01:49:31', '2017-08-16 02:42:56', '2017-08-16 03:18:38', 'a3f0f3e7-c52d-4143-af89-5a4a2364948c'),
(29, 1, 1, '33877889442_be0e2f82f0_o.jpg', 'image', 5511, 3105, 2070208, '2017-08-16 03:17:45', '2017-08-16 03:18:36', '2017-08-16 03:18:36', '3764ee88-8c37-47ec-8aa1-273f4d490c02'),
(30, 1, 8, 'slide-3.svg', 'image', 1499, 759, 671, '2017-08-11 02:25:35', '2017-08-16 03:18:40', '2017-08-16 03:18:40', '77172db4-6033-4cf8-bd63-33d3612c90b3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2017-08-16 01:48:23', '2017-08-16 01:48:23', 'e2410eab-b474-4f34-bcbd-4dfc1e93abcb'),
(2, 1, 1, 'about', 'about/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', '4378e5b0-4e43-4852-9ade-23120c80ec76'),
(3, 1, 1, 'blog', 'blog/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', 'ac158afa-3fed-401d-9ec7-caae8ef6ea3c'),
(4, 1, 1, 'home', 'home/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', '083af5ca-77c7-455d-9da1-4bccb0655b99'),
(5, 1, 1, 'icons', 'icons/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', '879fbd16-0bc5-4765-ad53-7a7db75cf6d6'),
(6, 1, 1, 'illustrations', 'illustrations/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', '0cae9c7f-a0b4-48bb-91ee-2e37e03f025f'),
(7, 1, 1, 'products', 'products/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', '7a3272f6-ced8-4ede-b62f-81c014e81c1e'),
(8, 1, 1, 'shapes', 'shapes/', '2017-08-16 02:02:01', '2017-08-16 02:02:01', '18133a24-e88f-4300-addd-ef7dc1c8eeb8'),
(9, NULL, NULL, 'Temporary source', NULL, '2017-08-16 02:02:45', '2017-08-16 02:02:45', '73a27062-0ade-4365-9195-448019c41161'),
(10, 9, NULL, 'user_1', 'user_1/', '2017-08-16 02:02:45', '2017-08-16 02:02:45', '5d9f9189-e0ba-4d56-85f6-2b7713f7d9ca'),
(11, 10, NULL, 'field_3', 'user_1/field_3/', '2017-08-16 02:02:45', '2017-08-16 02:02:45', '14f60139-c411-4d94-9d49-3ade1e61f4c1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Images', 'images', 'Local', '{"path":"assets\\/img\\/","publicURLs":"1","url":"assets\\/img\\/"}', 1, 11, '2017-08-16 01:48:23', '2017-08-16 02:01:55', '78d40f3a-81d1-47cb-a68d-3b776e748ea9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_headingParagraph` text COLLATE utf8_unicode_ci,
  `field_introParagraph` text COLLATE utf8_unicode_ci,
  `field_color` char(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_headingParagraph`, `field_introParagraph`, `field_color`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', NULL, NULL, NULL, NULL, NULL, '2017-08-14 03:05:13', '2017-08-14 03:05:13', '36ee235a-5276-4668-adea-6884ee97115a'),
(2, 2, 'en_us', 'Welcome', '<p>A creative partner for brands who move at the speed of inspiration.</p>', NULL, NULL, NULL, '2017-08-14 03:05:16', '2017-08-16 01:27:30', '7d9a5321-af46-4bdd-8a94-14d891da173d'),
(4, 4, 'en_us', 'Airbnb', '<p>bb</p>', '<p>We once smuggled $20,000 worth of equipment into cuba for <a href="{entry:4:url}">Airbnb</a>.</p>', 'Intro paragraph', '#c6483b', '2017-08-14 03:20:48', '2017-08-16 03:04:02', '5e260898-ea81-4c92-9cd7-d106a376c66d'),
(5, 5, 'en_us', 'Arthmb  How To Help Your Cat Have Fewer Hairballs 20160818', NULL, NULL, NULL, NULL, '2017-08-16 02:02:01', '2017-08-16 03:18:37', 'fba951b3-94f2-461f-ae03-07ba3dcb0436'),
(6, 6, 'en_us', 'Common Dog Behaviors Explained', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '1f38d6b2-7449-4fc7-b75c-e6da86be2b52'),
(7, 7, 'en_us', 'Download (1)', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '90b59d17-7581-47da-a7f3-ccdfc6008b9b'),
(8, 8, 'en_us', 'Download (2)', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:38', 'c04d01d7-e75e-43c9-8eec-ee16c21df7da'),
(9, 9, 'en_us', 'Download (4)', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '4923fc75-b198-4cd1-92b8-e57a4d368ec3'),
(10, 10, 'en_us', 'Download', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '71dd6fd2-d32a-415e-84ba-e18bbdfbc621'),
(11, 11, 'en_us', 'Example', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:39', '522feabd-af78-4371-a9da-e564b31b0217'),
(12, 12, 'en_us', 'Hp', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:39', '6890075f-d663-488f-a7e5-f242dc42933d'),
(13, 13, 'en_us', 'Arrow Left', NULL, NULL, NULL, NULL, '2017-08-16 02:02:02', '2017-08-16 03:18:39', 'e935ecd1-3533-4e4b-8887-a4e58e5da99e'),
(14, 14, 'en_us', 'Arrow Right', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '81a8b103-ca90-487b-931b-636e0dc0e1b6'),
(15, 15, 'en_us', 'Facebook', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '6853b1f2-d245-4449-8a34-e6e2b081d271'),
(16, 16, 'en_us', 'Instagram', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '208d754a-9a81-4830-9606-cd4382479934'),
(17, 17, 'en_us', 'Mail', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '21a4fa9b-2c55-4581-b070-9f4cc6fb9d9d'),
(18, 18, 'en_us', 'Twitter', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '0ce5bf0b-9eca-4dc9-ac1a-a270c821f004'),
(19, 19, 'en_us', 'Jazmin Quaynor 35847', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'f75b95b2-1acb-46fa-be4a-99b779e855af'),
(20, 20, 'en_us', 'Lukas Robertson 191319', NULL, NULL, NULL, NULL, '2017-08-16 02:02:03', '2017-08-16 03:18:40', 'd5061290-93d3-464d-aab9-9548294bd92a'),
(21, 21, 'en_us', 'Photo 1496389294434 C84A4Ebe3A08', NULL, NULL, NULL, NULL, '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'f9327051-7380-4eb8-9f45-20f3d2d609bc'),
(23, 23, 'en_us', 'Slide 1', NULL, NULL, NULL, NULL, '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'ddc7d935-841b-46b1-9a61-f76840bc65f9'),
(24, 24, 'en_us', 'Slide 2', NULL, NULL, NULL, NULL, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '381aed04-5932-457b-82e7-18b6b653b64a'),
(25, 25, 'en_us', 'Slide Intro', NULL, NULL, NULL, NULL, '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'ba463929-729b-43e9-ad60-bfe8519e8130'),
(27, 27, 'en_us', 'Getty Images 565976431', NULL, NULL, NULL, NULL, '2017-08-16 02:42:56', '2017-08-16 03:18:38', 'ff4b0914-d83c-47bf-b925-dcea625caabb'),
(28, 28, 'en_us', 'Philz Coffee', '<p>d</p>', '<p>We cold called <a href="{entry:28:url}">Philz Coffee</a> about their logo, and they let us do a rebrand.</p>', '', '#62d5d6', '2017-08-16 03:18:26', '2017-08-16 03:29:46', '9397db1a-4f02-497e-b992-c1b048b81729'),
(29, 29, 'en_us', '33877889442 Be0E2F82F0 O', NULL, NULL, NULL, NULL, '2017-08-16 03:18:36', '2017-08-16 03:18:36', '4876e4f6-b63f-4524-a19b-6b9eb88548d0'),
(30, 30, 'en_us', 'Slide 3', NULL, NULL, NULL, NULL, '2017-08-16 03:18:40', '2017-08-16 03:18:40', 'cc1eade9-a8c1-42b9-9aca-3dd48f114aee');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2017-08-14 03:05:13', '2017-08-14 03:05:13', 'c512cccb-e28a-4274-aab7-9b9fa27c9880'),
(2, 'Entry', 1, 0, '2017-08-14 03:05:16', '2017-08-16 01:27:30', 'faf78b0d-8590-4490-bd66-a6e7ff667f7d'),
(4, 'Entry', 1, 0, '2017-08-14 03:20:48', '2017-08-16 03:04:02', 'c392d396-5649-4606-b7c8-b1ae01582b9e'),
(5, 'Asset', 1, 0, '2017-08-16 02:02:01', '2017-08-16 03:18:37', 'ff4e45b6-f67e-482f-96b9-ea6235405cab'),
(6, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '84eafef1-1fe2-4034-8cd4-028ba6055dbe'),
(7, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '67535491-31e5-49ee-adeb-9f04d1eafde7'),
(8, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:38', 'fc72745b-3edf-4373-ac08-38021e913516'),
(9, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '0564a6c0-7c8c-4310-8823-3e98f5fb9097'),
(10, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '59200109-65ab-4212-b792-9ec1859a1e67'),
(11, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:39', '1c5bb96a-027f-4a05-8527-034ba5ea9ddd'),
(12, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:39', 'ea545e6f-3119-4761-b1f3-eb8ac4c720e3'),
(13, 'Asset', 1, 0, '2017-08-16 02:02:02', '2017-08-16 03:18:39', '000ba456-892c-44e4-96a6-fe533e10ac69'),
(14, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'cf4df709-1fc7-44dd-844b-e1663b7a0a81'),
(15, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '451c7059-266a-4bfa-89d8-8e8e7a790bbd'),
(16, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '16f1695c-d45e-43f3-bc65-c4006a9ceb0f'),
(17, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '4a0a1799-b551-4920-b21e-0e796756a2d1'),
(18, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'b67364c2-b59f-4007-86e2-8c5414594ad9'),
(19, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '9eda9ece-2db8-467b-b2f6-d24b37f172f5'),
(20, 'Asset', 1, 0, '2017-08-16 02:02:03', '2017-08-16 03:18:40', '0aeb5922-6848-4478-93ab-767fc86932d7'),
(21, 'Asset', 1, 0, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '0221c602-d72e-48c4-870e-c9fda72d64b6'),
(23, 'Asset', 1, 0, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '82ae758d-5882-4a79-bc9f-b3374f2dc723'),
(24, 'Asset', 1, 0, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '13c28f08-b8fb-40b1-90f5-14c7f9fa1f72'),
(25, 'Asset', 1, 0, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '90de7e27-4cfa-486d-9e8b-76b8570d0aec'),
(27, 'Asset', 1, 0, '2017-08-16 02:42:56', '2017-08-16 03:18:38', 'd564d878-3cee-453e-9447-a1b11f1a27a9'),
(28, 'Entry', 1, 0, '2017-08-16 03:18:26', '2017-08-16 03:29:46', 'a1a4172f-75b7-4976-8884-4e34e9b01706'),
(29, 'Asset', 1, 0, '2017-08-16 03:18:36', '2017-08-16 03:18:36', 'c45f05c5-a20e-443a-91ab-57aed55a26c2'),
(30, 'Asset', 1, 0, '2017-08-16 03:18:40', '2017-08-16 03:18:40', 'e4fb8421-0a10-495f-b727-93a38aa2ce23');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', '', NULL, 1, '2017-08-14 03:05:13', '2017-08-14 03:05:13', '7e5ff1ce-fec5-4814-b62a-797b510b9ec0'),
(2, 2, 'en_us', 'homepage', '__home__', 1, '2017-08-14 03:05:16', '2017-08-16 01:27:30', '7065d673-6c67-459a-96a3-b4991918cab5'),
(4, 4, 'en_us', 'airbnb', 'projects/airbnb', 1, '2017-08-14 03:20:48', '2017-08-16 03:04:02', '66e8b204-d620-4e64-8f89-6b2a651b398b'),
(5, 5, 'en_us', 'arthmb-how-to-help-your-cat-have-fewer-hairballs-20160818', NULL, 1, '2017-08-16 02:02:01', '2017-08-16 03:18:37', '9b2612b6-be74-4ff6-935d-cc08b562d468'),
(6, 6, 'en_us', 'common-dog-behaviors-explained', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '26e28766-5a92-4a9f-a0fc-98abc9cc59f6'),
(7, 7, 'en_us', 'download-1', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '762ecab2-aabf-4c02-a8d9-6a275e6ce2a7'),
(8, 8, 'en_us', 'download-2', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '25deac9a-f839-43a9-8b49-0610ebf31f59'),
(9, 9, 'en_us', 'download-4', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:38', 'a9e729fd-ad93-4a88-af7e-26d65b6135f7'),
(10, 10, 'en_us', 'download', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:38', '438faf9c-af9a-4123-94e8-58fcd8e740cf'),
(11, 11, 'en_us', 'example', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:39', '635725ed-03fe-480b-a5b0-c3cfa86417c0'),
(12, 12, 'en_us', 'hp', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:39', 'ac24ee5f-4936-497b-a9f5-0ccdd1495ae9'),
(13, 13, 'en_us', 'arrow-left', NULL, 1, '2017-08-16 02:02:02', '2017-08-16 03:18:39', '011142eb-36b1-489b-89f0-0d2587475afd'),
(14, 14, 'en_us', 'arrow-right', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '950c193e-0977-4311-8ad3-4e05e2201c0b'),
(15, 15, 'en_us', 'facebook', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '082b7813-c0b1-4e5d-8488-a4cf7a5d0355'),
(16, 16, 'en_us', 'instagram', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '8b9dde34-bb7f-4e16-8818-725a87ede706'),
(17, 17, 'en_us', 'mail', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:39', '08d89d9b-8a29-4a5f-8124-b74d96ab9048'),
(18, 18, 'en_us', 'twitter', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'a956ffff-32e7-4063-bebf-5ab3d8ed1f37'),
(19, 19, 'en_us', 'jazmin-quaynor-35847', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:39', 'a27eca61-61a0-4a9f-ad0a-c0cc2f5a144d'),
(20, 20, 'en_us', 'lukas-robertson-191319', NULL, 1, '2017-08-16 02:02:03', '2017-08-16 03:18:40', '31bdc049-ea36-42a5-826e-ef49f2a8d837'),
(21, 21, 'en_us', 'photo-1496389294434-c84a4ebe3a08', NULL, 1, '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'ac2687b2-7aa5-4efd-8e97-46fa6f5717c5'),
(23, 23, 'en_us', 'slide-1', NULL, 1, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '2bd6d8e9-7b88-4676-9859-f795968923d9'),
(24, 24, 'en_us', 'slide-2', NULL, 1, '2017-08-16 02:02:04', '2017-08-16 03:18:40', 'f6ba9b24-acd0-4a77-ad6d-a82f3d32e291'),
(25, 25, 'en_us', 'slide-intro', NULL, 1, '2017-08-16 02:02:04', '2017-08-16 03:18:40', '029c8e03-0d4d-4710-b85b-a254a8fe08bf'),
(27, 27, 'en_us', 'getty-images-565976431', NULL, 1, '2017-08-16 02:42:56', '2017-08-16 03:18:38', '62470e0f-a41a-4133-8768-44d34da8ef4b'),
(28, 28, 'en_us', 'philz-coffee', 'projects/philz-coffee', 1, '2017-08-16 03:18:26', '2017-08-16 03:29:46', '695e7dc7-fa9d-43e7-be6c-e88ca7757cc0'),
(29, 29, 'en_us', '33877889442-be0e2f82f0-o', NULL, 1, '2017-08-16 03:18:36', '2017-08-16 03:18:36', '8dc0686c-749d-4b43-80a4-3ba5b788613b'),
(30, 30, 'en_us', 'slide-3', NULL, 1, '2017-08-16 03:18:40', '2017-08-16 03:18:40', 'd9db85e0-c4a8-4519-9065-e1fdae55fbaf');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2017-08-14 03:05:16', NULL, '2017-08-14 03:05:16', '2017-08-16 01:27:30', '57df0a99-80d1-4f1f-b399-76f1978a5d40'),
(4, 2, 2, 1, '2017-08-14 03:20:00', NULL, '2017-08-14 03:20:48', '2017-08-16 03:04:02', '855e5304-8ff3-458c-839f-f22a1ca7a83c'),
(28, 2, 2, 1, '2017-08-13 03:18:00', NULL, '2017-08-16 03:18:27', '2017-08-16 03:29:46', 'e09592b4-4a1f-4a27-a2f5-51fa3bb761a6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 3, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2017-08-14 03:05:16', '2017-08-14 03:05:16', '9a54b0b3-e544-4400-8a58-3935edea8965'),
(2, 2, 13, 'Projects', 'projects', 1, 'Title', NULL, 1, '2017-08-14 03:05:16', '2017-08-16 03:01:13', '93de90ee-d0d8-4772-afd3-457dc31986c0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en_us', 1, NULL, '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1502679916,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2017-08-14 03:05:16', '2017-08-14 03:05:16', '4dbfbede-dd0d-4926-b1c3-3f2c140d7f50'),
(2, 2, 1, 1, 'en_us', 2, NULL, '{"typeId":null,"authorId":null,"title":"Welcome to Localhost!","slug":"homepage","postDate":1502679916,"expiryDate":null,"enabled":"1","parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Localhost will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2017-08-14 03:05:16', '2017-08-14 03:05:16', '993adef3-8e39-45d9-aa0e-36951fad4164'),
(5, 4, 2, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Airbnb","slug":"airbnb","postDate":1502680800,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>bb<\\/p>","2":""}}', '2017-08-14 03:20:48', '2017-08-14 03:20:48', 'f7b45b7f-0a5f-486b-aaa9-8826f89f99cc'),
(6, 2, 1, 1, 'en_us', 3, '', '{"typeId":null,"authorId":null,"title":"Welcome","slug":"homepage","postDate":1502679916,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>A creative partner for brands who move at the speed of inspiration.<\\/p>"}}', '2017-08-16 01:27:30', '2017-08-16 01:27:30', 'a2ad1fb3-f069-4f5c-a276-3f274bd45426'),
(7, 4, 2, 1, 'en_us', 2, '', '{"typeId":"2","authorId":"1","title":"Airbnb","slug":"airbnb","postDate":1502680800,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>bb<\\/p>","4":"<p>We once smuggled $20,000 worth of equipment into cuba for <a href=\\"http:\\/\\/localhost:8888\\/bokeh-craft\\/public\\/index.php\\/projects\\/airbnb#entry:4\\">Airbnb<\\/a>.<\\/p>","3":"","5":"Intro paragraph","2":""}}', '2017-08-16 02:17:57', '2017-08-16 02:17:57', '8a414a70-5b92-47de-939b-1d6338775b52'),
(8, 4, 2, 1, 'en_us', 3, '', '{"typeId":"2","authorId":"1","title":"Airbnb","slug":"airbnb","postDate":1502680800,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>bb<\\/p>","4":"<p>We once smuggled $20,000 worth of equipment into cuba for <a href=\\"http:\\/\\/localhost:8888\\/bokeh-craft\\/public\\/index.php\\/projects\\/airbnb#entry:4:url\\">Airbnb<\\/a>.<\\/p>","3":["27"],"5":"Intro paragraph","2":""}}', '2017-08-16 02:43:35', '2017-08-16 02:43:35', '32a66813-58d6-447b-a1ae-ba954e96f834'),
(9, 4, 2, 1, 'en_us', 4, '', '{"typeId":"2","authorId":"1","title":"Airbnb","slug":"airbnb","postDate":1502680800,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>bb<\\/p>","6":"#c6483b","4":"<p>We once smuggled $20,000 worth of equipment into cuba for <a href=\\"http:\\/\\/localhost:8888\\/bokeh-craft\\/public\\/index.php\\/projects\\/airbnb#entry:4:url\\">Airbnb<\\/a>.<\\/p>","3":["27"],"5":"Intro paragraph","2":""}}', '2017-08-16 03:04:02', '2017-08-16 03:04:02', 'dcb68f5f-6d7b-40f5-8fb1-292d9df707cd'),
(10, 28, 2, 1, 'en_us', 1, '', '{"typeId":null,"authorId":"1","title":"Philz Coffee","slug":"philz-coffee","postDate":1502853480,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>d<\\/p>","6":"#62d5d6","4":"","3":"","5":"","2":""}}', '2017-08-16 03:18:27', '2017-08-16 03:18:27', 'a81d133b-b625-42c7-a7d4-a5a2e3b4ccf8'),
(11, 28, 2, 1, 'en_us', 2, '', '{"typeId":"2","authorId":"1","title":"Philz Coffee","slug":"philz-coffee","postDate":1502853480,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>d<\\/p>","6":"#62d5d6","4":"<p>We cold called <a href=\\"http:\\/\\/localhost:8888\\/bokeh-craft\\/public\\/index.php\\/projects\\/philz-coffee#entry:28\\">Philz Coffee<\\/a> about their logo, and they let us do a rebrand.<\\/p>","3":["29"],"5":"","2":""}}', '2017-08-16 03:20:01', '2017-08-16 03:20:01', '7d4668c4-c1c1-4d77-9297-3f6e80ccb59e'),
(12, 28, 2, 1, 'en_us', 3, '', '{"typeId":"2","authorId":"1","title":"Philz Coffee","slug":"philz-coffee","postDate":1502594280,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>d<\\/p>","6":"#62d5d6","4":"<p>We cold called <a href=\\"http:\\/\\/localhost:8888\\/bokeh-craft\\/public\\/index.php\\/projects\\/philz-coffee#entry:28:url\\">Philz Coffee<\\/a> about their logo, and they let us do a rebrand.<\\/p>","3":["29"],"5":"","2":""}}', '2017-08-16 03:29:46', '2017-08-16 03:29:46', '8be684ad-371c-414a-9591-a392547c373a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2017-08-14 03:05:16', '2017-08-14 03:05:16', 'a573e2ad-0ca6-40ab-9f8f-3db6aa0e9998');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 1, 1, 1, 1, '2017-08-14 03:05:16', '2017-08-14 03:05:16', 'ad96ceb5-0102-4fc6-a805-063e05731c72'),
(12, 13, 5, 6, 0, 1, '2017-08-16 03:01:13', '2017-08-16 03:01:13', 'b1b1cae6-873b-4b16-9eb5-f52038891384'),
(13, 13, 5, 3, 0, 2, '2017-08-16 03:01:13', '2017-08-16 03:01:13', '6d7b5d5a-df49-4892-b6aa-500407fcc7b7'),
(14, 13, 5, 4, 0, 3, '2017-08-16 03:01:13', '2017-08-16 03:01:13', 'da1b3f7d-7e08-4b02-ba78-93b3186b1c8f'),
(15, 13, 5, 5, 0, 4, '2017-08-16 03:01:13', '2017-08-16 03:01:13', '74f580a7-dc73-453e-baa6-6cfd63e2bc45'),
(16, 13, 5, 1, 1, 5, '2017-08-16 03:01:13', '2017-08-16 03:01:13', '7b98d3e2-e27c-428d-b7b5-046129d2e5e5'),
(17, 13, 5, 2, 0, 6, '2017-08-16 03:01:13', '2017-08-16 03:01:13', '1c6763b0-a7f2-4670-8728-f362ebd05f1a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2017-08-14 03:05:16', '2017-08-14 03:05:16', '55665be6-6da3-4c23-8efc-b9912217cf16'),
(3, 'Entry', '2017-08-14 03:05:16', '2017-08-14 03:05:16', 'eb6424ac-4df9-42f6-b250-d9e18465678c'),
(11, 'Asset', '2017-08-16 02:01:55', '2017-08-16 02:01:55', '94224cac-17e1-4428-a028-9a5c31c018b9'),
(13, 'Entry', '2017-08-16 03:01:13', '2017-08-16 03:01:13', '40b1fa17-e0cd-4839-b55b-280ec1c77dbb');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 'Content', 1, '2017-08-14 03:05:16', '2017-08-14 03:05:16', '02198329-3778-4cff-bb9b-ca98ff92745c'),
(5, 13, 'Content', 1, '2017-08-16 03:01:13', '2017-08-16 03:01:13', '1c132877-0455-4b93-b53f-ee322d45a1b5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2017-08-14 03:05:16', '2017-08-14 03:05:16', 'ec53aa44-a158-4811-90a0-bd2db6d24ef9'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2017-08-14 03:05:16', '2017-08-14 03:05:16', '8b4ad8dd-81f1-49c7-9a85-d223321d56c3'),
(3, 1, 'Image', 'image', 'global', '', 0, 'Assets', '{"useSingleFolder":"1","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"list","selectionLabel":"Case Study Image"}', '2017-08-16 01:32:47', '2017-08-16 02:06:55', '613cc3ad-3229-489c-8409-dffdeca208e4'),
(4, 1, 'Heading Paragraph', 'headingParagraph', 'global', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","purifierConfig":"","columnType":"text"}', '2017-08-16 02:13:18', '2017-08-16 02:16:25', 'db8e46fd-7121-4b3f-af74-e0dc2ce9e0d5'),
(5, 1, 'Intro Paragraph', 'introParagraph', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2017-08-16 02:13:39', '2017-08-16 02:15:04', '969e7235-61c1-4e56-8f56-4f275329e660'),
(6, 1, 'Color', 'color', 'global', '', 0, 'Color', NULL, '2017-08-16 03:00:23', '2017-08-16 03:00:23', '673ed479-afc9-4ee3-baa3-6e84a8e5e859');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.2989', '2.6.10', 0, 'Bokeh', 'http://localhost:8888/bokeh-craft/public/', 'UTC', 1, 0, '2017-08-14 03:05:11', '2017-08-16 01:52:32', '8fc3211a-8b00-4362-978a-3ce84550becf');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_us', 1, '2017-08-14 03:05:11', '2017-08-14 03:05:11', '781a4d16-cb72-4320-95ca-b314d03d8dc4');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '761c3cde-5620-4ded-806f-f7da634f20ee'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '161ef7ec-865a-4696-9229-44ca59a76d28'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'a8b22433-cfd2-4b34-a283-9f7da8221531'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'e00d5cd2-81b3-4366-ab5b-8639a7d43d37'),
(5, NULL, 'm140829_000001_single_title_formats', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '1d0a4e78-f65e-4599-876f-7442c4249016'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '3b019fa3-d1fe-4a6c-bdb8-1f65c9155642'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'a6fbc67c-fe43-4b08-844d-d6345189646e'),
(8, NULL, 'm141008_000001_elements_index_tune', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '99005a7f-b9f9-4334-a3ca-1310304db318'),
(9, NULL, 'm141009_000001_assets_source_handle', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'b290ba76-e619-410f-ac45-cae3a8305578'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '8791311d-f116-4b31-945a-b3cbbccd02a7'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'bacf71c8-924d-41c3-b607-d4d06cc9d2c7'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'c47230d1-b6b7-4bcb-b988-185edd090995'),
(13, NULL, 'm141103_000001_tag_titles', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'e2364db7-da55-4fbf-822c-8de43effa5a0'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'afcd521a-305f-4ff3-99d9-ed89299c8bd3'),
(15, NULL, 'm141126_000001_user_week_start_day', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '1ccfa473-ee5b-41a5-bd84-aad1dc1092a4'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'c6d79566-fbcc-4a4b-8798-31f1b2c50bcf'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '1650f074-a5cd-4731-bbcb-1d19755062cf'),
(18, NULL, 'm150827_000000_element_index_settings', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'edf4d1a3-bb65-4bc2-b042-5d4512e3f75b'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '90f29697-ee4d-4762-a12c-1c3e46b03432'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '42c90736-2a7a-4e91-a2a1-bd74337516d9'),
(21, NULL, 'm151109_000000_text_url_formats', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2edeb8c0-d195-4199-80ab-1dfde5761921'),
(22, NULL, 'm151110_000000_move_logo', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'e6a85c6e-19bf-4e38-8ee1-1f8671e3e5ed'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '34f80d1c-8e3c-4330-8b4e-64bb08c149d0'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '9dbecff4-1b71-43a1-8d93-3d44eb8cded2'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'ad0fefaf-b6b2-4c46-95b1-d3bbd9e4dbea'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '0fc75e5e-9048-4804-bb3f-699a85d39553'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '9b84b639-eecc-4d27-8ca5-aa47990d278b'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'db162c40-7b1d-4432-ae55-1fe087d934e5'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '238c3342-b234-4e66-b048-21cba103a68d'),
(30, NULL, 'm160304_000000_client_permissions', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'c2f8aac8-ec3c-48b1-ac29-9e9af23b76d4'),
(31, NULL, 'm160322_000000_asset_filesize', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '1e67fb35-712b-454d-9491-63d032db3a20'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '79092b3a-db11-455a-81b1-ba94479a7fcd'),
(33, NULL, 'm160510_000000_tasksettings', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '044d610a-736b-483b-8480-53676fbfa34e'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '11af7f5c-0108-4fda-9294-f8a0181d2f44'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '49213103-e375-4be1-bd28-e351e0716c9f'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', 'd9a776a0-639e-497d-bcc6-91914c66552b'),
(37, NULL, 'm161108_000000_new_version_format', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '1d0e6d40-f6d2-4802-a668-3e23317ee34d'),
(38, NULL, 'm161109_000000_index_shuffle', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '43e4eb98-c55a-4511-81ef-fef9c5a424fc'),
(39, NULL, 'm170612_000000_route_index_shuffle', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '2017-08-14 03:05:11', '69ae7cfd-2627-45d1-a09c-7333f68bc3a0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 3, 4, NULL, 27, 1, '2017-08-16 03:04:02', '2017-08-16 03:04:02', 'cd0da9a4-ac04-4e9f-b595-755ca3c75158'),
(4, 3, 28, NULL, 29, 1, '2017-08-16 03:29:46', '2017-08-16 03:29:46', '0761340a-56fe-4ee6-b190-7311daab6734');

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(5, 'filename', 0, 'en_us', ' arthmb howtohelpyourcathavefewerhairballs 20160818 jpeg '),
(5, 'extension', 0, 'en_us', ' jpeg '),
(5, 'kind', 0, 'en_us', ' image '),
(5, 'slug', 0, 'en_us', ' arthmb how to help your cat have fewer hairballs 20160818 '),
(5, 'title', 0, 'en_us', ' arthmb how to help your cat have fewer hairballs 20160818 '),
(8, 'filename', 0, 'en_us', ' download 2 jpeg '),
(8, 'extension', 0, 'en_us', ' jpeg '),
(8, 'kind', 0, 'en_us', ' image '),
(8, 'slug', 0, 'en_us', ' download 2 '),
(8, 'title', 0, 'en_us', ' download 2 '),
(6, 'filename', 0, 'en_us', ' common dog behaviors explained jpg '),
(6, 'extension', 0, 'en_us', ' jpg '),
(6, 'kind', 0, 'en_us', ' image '),
(6, 'slug', 0, 'en_us', ' common dog behaviors explained '),
(6, 'title', 0, 'en_us', ' common dog behaviors explained '),
(7, 'filename', 0, 'en_us', ' download 1 jpeg '),
(7, 'extension', 0, 'en_us', ' jpeg '),
(7, 'kind', 0, 'en_us', ' image '),
(7, 'slug', 0, 'en_us', ' download 1 '),
(7, 'title', 0, 'en_us', ' download 1 '),
(9, 'filename', 0, 'en_us', ' download 4 jpeg '),
(9, 'extension', 0, 'en_us', ' jpeg '),
(9, 'kind', 0, 'en_us', ' image '),
(9, 'slug', 0, 'en_us', ' download 4 '),
(9, 'title', 0, 'en_us', ' download 4 '),
(10, 'filename', 0, 'en_us', ' download jpeg '),
(10, 'extension', 0, 'en_us', ' jpeg '),
(10, 'kind', 0, 'en_us', ' image '),
(10, 'slug', 0, 'en_us', ' download '),
(10, 'title', 0, 'en_us', ' download '),
(11, 'filename', 0, 'en_us', ' example mp4 '),
(11, 'extension', 0, 'en_us', ' mp4 '),
(11, 'kind', 0, 'en_us', ' video '),
(11, 'slug', 0, 'en_us', ' example '),
(11, 'title', 0, 'en_us', ' example '),
(12, 'filename', 0, 'en_us', ' hp mp4 '),
(12, 'extension', 0, 'en_us', ' mp4 '),
(12, 'kind', 0, 'en_us', ' video '),
(12, 'slug', 0, 'en_us', ' hp '),
(12, 'title', 0, 'en_us', ' hp '),
(13, 'filename', 0, 'en_us', ' arrow left svg '),
(13, 'extension', 0, 'en_us', ' svg '),
(13, 'kind', 0, 'en_us', ' image '),
(13, 'slug', 0, 'en_us', ' arrow left '),
(13, 'title', 0, 'en_us', ' arrow left '),
(14, 'filename', 0, 'en_us', ' arrow right svg '),
(14, 'extension', 0, 'en_us', ' svg '),
(14, 'kind', 0, 'en_us', ' image '),
(14, 'slug', 0, 'en_us', ' arrow right '),
(14, 'title', 0, 'en_us', ' arrow right '),
(15, 'filename', 0, 'en_us', ' facebook svg '),
(15, 'extension', 0, 'en_us', ' svg '),
(15, 'kind', 0, 'en_us', ' image '),
(15, 'slug', 0, 'en_us', ' facebook '),
(15, 'title', 0, 'en_us', ' facebook '),
(16, 'filename', 0, 'en_us', ' instagram svg '),
(16, 'extension', 0, 'en_us', ' svg '),
(16, 'kind', 0, 'en_us', ' image '),
(16, 'slug', 0, 'en_us', ' instagram '),
(16, 'title', 0, 'en_us', ' instagram '),
(17, 'filename', 0, 'en_us', ' mail svg '),
(17, 'extension', 0, 'en_us', ' svg '),
(17, 'kind', 0, 'en_us', ' image '),
(17, 'slug', 0, 'en_us', ' mail '),
(17, 'title', 0, 'en_us', ' mail '),
(18, 'filename', 0, 'en_us', ' twitter svg '),
(18, 'extension', 0, 'en_us', ' svg '),
(18, 'kind', 0, 'en_us', ' image '),
(18, 'slug', 0, 'en_us', ' twitter '),
(18, 'title', 0, 'en_us', ' twitter '),
(19, 'filename', 0, 'en_us', ' jazmin quaynor 35847 jpg '),
(19, 'extension', 0, 'en_us', ' jpg '),
(19, 'kind', 0, 'en_us', ' image '),
(19, 'slug', 0, 'en_us', ' jazmin quaynor 35847 '),
(19, 'title', 0, 'en_us', ' jazmin quaynor 35847 '),
(20, 'filename', 0, 'en_us', ' lukas robertson 191319 jpg '),
(20, 'extension', 0, 'en_us', ' jpg '),
(20, 'kind', 0, 'en_us', ' image '),
(20, 'slug', 0, 'en_us', ' lukas robertson 191319 '),
(20, 'title', 0, 'en_us', ' lukas robertson 191319 '),
(21, 'filename', 0, 'en_us', ' photo 1496389294434 c84a4ebe3a08 jpeg '),
(21, 'extension', 0, 'en_us', ' jpeg '),
(21, 'kind', 0, 'en_us', ' image '),
(21, 'slug', 0, 'en_us', ' photo 1496389294434 c84a4ebe3a08 '),
(21, 'title', 0, 'en_us', ' photo 1496389294434 c84a4ebe3a08 '),
(23, 'filename', 0, 'en_us', ' slide 1 svg '),
(23, 'extension', 0, 'en_us', ' svg '),
(23, 'kind', 0, 'en_us', ' image '),
(23, 'slug', 0, 'en_us', ' slide 1 '),
(23, 'title', 0, 'en_us', ' slide 1 '),
(24, 'filename', 0, 'en_us', ' slide 2 svg '),
(24, 'extension', 0, 'en_us', ' svg '),
(24, 'kind', 0, 'en_us', ' image '),
(24, 'slug', 0, 'en_us', ' slide 2 '),
(24, 'title', 0, 'en_us', ' slide 2 '),
(25, 'filename', 0, 'en_us', ' slide intro svg '),
(25, 'extension', 0, 'en_us', ' svg '),
(25, 'kind', 0, 'en_us', ' image '),
(25, 'slug', 0, 'en_us', ' slide intro '),
(25, 'title', 0, 'en_us', ' slide intro '),
(27, 'filename', 0, 'en_us', ' gettyimages 565976431 jpg '),
(27, 'extension', 0, 'en_us', ' jpg '),
(27, 'kind', 0, 'en_us', ' image '),
(27, 'slug', 0, 'en_us', ' getty images 565976431 '),
(27, 'title', 0, 'en_us', ' getty images 565976431 '),
(29, 'filename', 0, 'en_us', ' 33877889442_be0e2f82f0_o jpg '),
(29, 'extension', 0, 'en_us', ' jpg '),
(29, 'kind', 0, 'en_us', ' image '),
(29, 'slug', 0, 'en_us', ' 33877889442 be0e2f82f0 o '),
(29, 'title', 0, 'en_us', ' 33877889442 be0e2f82f0 o '),
(30, 'filename', 0, 'en_us', ' slide 3 svg '),
(30, 'extension', 0, 'en_us', ' svg '),
(30, 'kind', 0, 'en_us', ' image '),
(30, 'slug', 0, 'en_us', ' slide 3 '),
(30, 'title', 0, 'en_us', ' slide 3 '),
(2, 'slug', 0, 'en_us', ' homepage '),
(2, 'title', 0, 'en_us', ' welcome '),
(2, 'field', 1, 'en_us', ' a creative partner for brands who move at the speed of inspiration '),
(4, 'slug', 0, 'en_us', ' airbnb '),
(4, 'title', 0, 'en_us', ' airbnb '),
(4, 'field', 6, 'en_us', ' c6483b '),
(4, 'field', 3, 'en_us', ' getty images 565976431 '),
(4, 'field', 4, 'en_us', ' we once smuggled $20 000 worth of equipment into cuba for airbnb '),
(4, 'field', 5, 'en_us', ' intro paragraph '),
(4, 'field', 1, 'en_us', ' bb '),
(4, 'field', 2, 'en_us', ''),
(28, 'slug', 0, 'en_us', ' philz coffee '),
(28, 'title', 0, 'en_us', ' philz coffee '),
(28, 'field', 6, 'en_us', ' 62d5d6 '),
(28, 'field', 3, 'en_us', ' 33877889442 be0e2f82f0 o '),
(28, 'field', 4, 'en_us', ' we cold called philz coffee about their logo and they let us do a rebrand '),
(28, 'field', 5, 'en_us', ''),
(28, 'field', 1, 'en_us', ' d '),
(28, 'field', 2, 'en_us', ''),
(1, 'username', 0, 'en_us', ' blunt '),
(1, 'firstname', 0, 'en_us', ''),
(1, 'lastname', 0, 'en_us', ''),
(1, 'fullname', 0, 'en_us', ''),
(1, 'email', 0, 'en_us', ' maxim is blunt af '),
(1, 'slug', 0, 'en_us', '');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2017-08-14 03:05:16', '2017-08-14 03:05:16', '15f8abbd-79cd-4006-bcc5-c2ccba77a4d3'),
(2, NULL, 'Projects', 'projects', 'channel', 1, 'projects/_entry', 1, '2017-08-14 03:05:16', '2017-08-16 01:37:09', '8147253f-6e22-42b8-b05e-75c6e7a33783');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 1, '__home__', NULL, '2017-08-14 03:05:16', '2017-08-14 03:05:16', '2c3d1859-c0a2-4d4d-acf5-a88a74244322'),
(2, 2, 'en_us', 1, 'projects/{slug}', NULL, '2017-08-14 03:05:16', '2017-08-16 01:37:09', 'd69dc3b7-a72f-4a67-aced-e6b5f3bb395b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '78f679575a928062d3f17fadf0252e08586a6187czozMjoiaFZhTmc1VW5UcmswN3F+STk2WmJObkFDRWUyODYyWVciOw==', '2017-08-14 03:05:16', '2017-08-14 03:05:16', 'c1dbc89d-1b93-4916-8615-e15e845937b1'),
(2, 1, '4287c29e436bd84782b2718ae81bfaab71a09c06czozMjoiSnhxV3dyUjI3SjFJalF4bHlPMGZhZ3NsaDlmQ3N5ZXciOw==', '2017-08-16 00:41:37', '2017-08-16 00:41:37', '049d0395-ff6f-4b62-a954-638760fc8e88');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"maxim.is@blunt.af","senderName":"Bokeh"}', '2017-08-14 03:05:16', '2017-08-14 03:05:16', '84f3612a-c55b-45dc-a0f5-a70707fc57cf');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2017-08-14 03:05:16', '2017-08-14 03:05:16', 'ee0be74f-e933-4511-abaa-cd869091661c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Blunt', NULL, NULL, NULL, 'maxim.is@blunt.af', '$2y$13$sKwfBi8oHnuy09jmco.gweKdqkbLHBzOwEkSZeh9RC8nNwyPaM1fa', NULL, 0, 1, 0, 0, 0, 0, 0, '2017-08-16 00:41:37', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2017-08-14 03:05:13', '2017-08-14 03:05:13', '2017-08-16 00:41:37', 'df6b1317-d3f0-4364-a392-4563dd5bb6c1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2017-08-14 03:05:24', '2017-08-14 03:05:24', '8739e5ae-5638-4101-bb9f-44c80b9fdd60'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2017-08-14 03:05:24', '2017-08-14 03:05:24', 'e5eb8b0a-70b5-40e5-b246-cde9d9cef599'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2017-08-14 03:05:24', '2017-08-14 03:05:24', '66eaf433-b59f-497a-9d94-9438165747dc'),
(4, 1, 'Feed', 4, NULL, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 1, '2017-08-14 03:05:24', '2017-08-14 03:05:24', 'e0ef7123-a184-4c27-8d24-86cddb2b4095');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Indexes for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexes for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Indexes for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Indexes for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_routes_locale_idx` (`locale`),
  ADD KEY `craft_routes_urlPattern_idx` (`urlPattern`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexes for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Indexes for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
