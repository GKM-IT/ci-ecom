-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2019 at 06:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `group_id`, `name`, `image`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'color', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-04 09:39:45'),
(2, 2, 'Surface Finish', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 1, 'red', '', 0, 1, 0, '2019-02-02 02:35:21', 0, '0000-00-00 00:00:00'),
(5, 2, 'd', '', 1, 1, 0, '2019-07-12 07:03:04', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `attributes_view`
-- (See below for the actual view)
--
CREATE TABLE `attributes_view` (
`id` int(11)
,`group_id` int(11)
,`name` varchar(32)
,`image` text
,`sort_order` int(11)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`group_name` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `name`, `image`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Color', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:20'),
(2, 'Finishing', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'dd', '', 0, 1, 0, '2019-07-12 07:04:09', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type_id`, `name`, `reference`, `reference_id`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 2, 'banner', '', 0, 1, 0, '2019-07-01 04:23:33', 0, '2019-07-01 04:23:42');

-- --------------------------------------------------------

--
-- Stand-in structure for view `banners_view`
-- (See below for the actual view)
--
CREATE TABLE `banners_view` (
`id` int(11)
,`type_id` int(11)
,`name` varchar(32)
,`reference` varchar(50)
,`reference_id` int(11)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`type` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `banner_id`, `type`, `type_id`, `name`, `image`, `link`, `sort_order`) VALUES
(15, 1, '', 0, '', 'upload/slider/1.jpg', 'Banner', 1),
(16, 1, '', 0, '', 'upload/slider/2.jpg', 'Banner', 0),
(17, 1, '', 0, '', 'upload/slider/3.jpg', 'Banner', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `banner_images_view`
-- (See below for the actual view)
--
CREATE TABLE `banner_images_view` (
`id` int(11)
,`banner_id` int(11)
,`type` varchar(64)
,`type_id` int(11)
,`name` varchar(32)
,`image` text
,`link` text
,`sort_order` int(11)
,`banner` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_type` enum('FIXED','WEIGHT','LENGTH','HOUR') COLLATE utf8_unicode_ci NOT NULL,
  `option` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `token`, `customer_id`, `product_id`, `price_type`, `option`, `quantity`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(17, 'u5rSUi7E', 4, 10, 'FIXED', '', '2.0000', 1, 0, '2019-07-03 01:06:11', 0, '0000-00-00 00:00:00'),
(18, 'qig6BeRJ', 1, 10, 'FIXED', '', '1.0000', 1, 0, '2019-07-04 07:57:44', 0, '0000-00-00 00:00:00'),
(19, 'qig6BeRJ', 1, 3, 'FIXED', '', '1.0000', 1, 0, '2019-07-04 08:04:16', 0, '0000-00-00 00:00:00'),
(22, 'M8LUzg5O', 1, 3, 'FIXED', '', '1.0000', 1, 0, '2019-07-07 04:46:56', 0, '0000-00-00 00:00:00'),
(23, 'nRxTk5fH', 3, 3, 'FIXED', '', '1.0000', 1, 0, '2019-07-07 05:44:18', 0, '0000-00-00 00:00:00'),
(24, 'Ez7Lyrs6', 4, 3, 'FIXED', '', '1.0000', 1, 0, '2019-07-07 05:53:13', 0, '0000-00-00 00:00:00'),
(26, 'x4QKDEvO', 1, 2, 'FIXED', '', '1.0000', 1, 0, '2019-07-14 08:26:35', 0, '0000-00-00 00:00:00'),
(37, 'zT26fiHl', 1, 3, 'FIXED', '', '1.0000', 1, 0, '2019-07-22 07:13:26', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `carts_view`
-- (See below for the actual view)
--
CREATE TABLE `carts_view` (
`id` int(11)
,`token` varchar(128)
,`customer_id` int(11)
,`product_id` int(11)
,`price_type` enum('FIXED','WEIGHT','LENGTH','HOUR')
,`option` text
,`quantity` decimal(15,4)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`customer` varchar(32)
,`product` varchar(32)
,`product_image` text
,`mrp` decimal(15,8)
,`price` decimal(15,8)
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile_menu` tinyint(1) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `bottom` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type_id`, `parent_id`, `name`, `image`, `mobile_menu`, `top`, `bottom`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, 'Dabur', 'upload/categories/Dabur.jpg', 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-22 07:53:20'),
(2, 2, 2, 'Grocery', 'upload/categories/Grocery.jpg', 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-22 07:53:30'),
(3, 3, 3, 'Health', 'upload/categories/Health.jpg', 1, 1, 1, 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-22 07:53:26'),
(4, 1, 4, 'Nestle', 'upload/categories/Nestle.jpg', 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-26 04:52:08'),
(5, 2, 5, 'Himalaya', 'upload/categories/Himalaya.jpg', 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-26 04:52:08'),
(6, 3, 6, 'Patanjali', 'upload/categories/Patanjali.jpg', 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-26 04:52:08');

-- --------------------------------------------------------

--
-- Stand-in structure for view `categories_view`
-- (See below for the actual view)
--
CREATE TABLE `categories_view` (
`id` int(11)
,`type_id` int(11)
,`parent_id` int(11)
,`name` varchar(32)
,`image` text
,`mobile_menu` tinyint(1)
,`top` tinyint(1)
,`bottom` tinyint(1)
,`sort_order` int(11)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`parent` varchar(32)
,`type` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `zone_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 99, 1501, 'Udaipur', 'UDR', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:19'),
(2, 99, 1501, 'Jaipur', 'JR', 1, 0, '2019-01-30 11:10:41', 0, '2019-06-29 11:05:10');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cities_view`
-- (See below for the actual view)
--
CREATE TABLE `cities_view` (
`id` int(11)
,`country_id` int(11)
,`zone_id` int(11)
,`name` varchar(128)
,`code` varchar(32)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`country` varchar(128)
,`zone` varchar(128)
);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-05-30 01:20:12'),
(2, 'Albania', 'AL', 'ALB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-05-30 02:51:39'),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'Andorra', 'AD', 'AND', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'Angola', 'AO', 'AGO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'Australia', 'AU', 'AUS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 'Austria', 'AT', 'AUT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(38, 'Canada', 'CA', 'CAN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(42, 'Chad', 'TD', 'TCD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(43, 'Chile', 'CL', 'CHL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(44, 'China', 'CN', 'CHN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(47, 'Colombia', 'CO', 'COL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(48, 'Comoros', 'KM', 'COM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(49, 'Congo', 'CG', 'COG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(67, 'Estonia', 'EE', 'EST', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(72, 'Finland', 'FI', 'FIN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(84, 'Greece', 'GR', 'GRC', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(88, 'Guam', 'GU', 'GUM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(95, 'Honduras', 'HN', 'HND', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(99, 'India', 'IN', 'IND', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:19'),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(104, 'Israel', 'IL', 'ISR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(105, 'Italy', 'IT', 'ITA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(107, 'Japan', 'JP', 'JPN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(125, 'Macau', 'MO', 'MAC', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(131, 'Mali', 'ML', 'MLI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(132, 'Malta', 'MT', 'MLT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(155, 'Niger', 'NE', 'NER', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(157, 'Niue', 'NU', 'NIU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(160, 'Norway', 'NO', 'NOR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(161, 'Oman', 'OM', 'OMN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(163, 'Palau', 'PW', 'PLW', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(164, 'Panama', 'PA', 'PAN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(167, 'Peru', 'PE', 'PER', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(170, 'Poland', 'PL', 'POL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(174, 'Reunion', 'RE', 'REU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(175, 'Romania', 'RO', 'ROM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(195, 'Spain', 'ES', 'ESP', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(209, 'Thailand', 'TH', 'THA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(210, 'Togo', 'TG', 'TGO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(212, 'Tonga', 'TO', 'TON', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(244, 'Aaland Islands 1', 'AX', 'ALA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-20 06:07:34'),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `discount` decimal(15,8) NOT NULL,
  `used_limit` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `customer_group_id`, `code`, `start_date`, `end_date`, `name`, `image`, `discount_type`, `discount`, `used_limit`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'TEST12', '2019-07-01 00:00:00', '2019-08-31 00:00:00', 'offer', '', 'P', '10.00000000', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-21 12:05:49'),
(2, 1, 'fsdf ', '2019-07-01 00:00:00', '2019-07-31 00:00:00', 'test', '', 'F', '30.00000000', 10, 1, 0, '2019-07-21 10:50:42', 0, '2019-07-21 12:06:52'),
(3, 1, 'TEST', '2019-07-01 00:00:00', '2019-07-31 00:00:00', 'test', '', 'P', '10.00000000', 2, 1, 0, '2019-07-21 11:44:10', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `coupons_view`
-- (See below for the actual view)
--
CREATE TABLE `coupons_view` (
`id` int(11)
,`customer_group_id` int(11)
,`code` varchar(50)
,`start_date` datetime
,`end_date` datetime
,`name` varchar(32)
,`image` text
,`discount_type` char(1)
,`discount` decimal(15,8)
,`used_limit` int(11)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`customer_group` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_histories`
--

CREATE TABLE `coupon_histories` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `discount` decimal(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon_histories`
--

INSERT INTO `coupon_histories` (`id`, `coupon_id`, `customer_id`, `order_id`, `discount`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 1, 2, 27, '12.00000000', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `decimal_place` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(15,8) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `image`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', '', '2', 1.00000000, '', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:23'),
(2, 'Indian Rupees', 'INR', '', '₹', '2', 71.27000000, '', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `pan_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gst_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `group_id`, `name`, `email`, `contact`, `password`, `image`, `pan_number`, `gst_number`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'nadim', 'nadim.sheikh.07@gmail.com', '7737033665', '202cb962ac59075b964b07152d234b70', '', '22', '11', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-22 07:30:25'),
(2, 2, 'ali', 'ali@gmail.com', '6876764374', 'd41d8cd98f00b204e9800998ecf8427e', '', '111', '122', 1, 0, '2019-02-09 07:46:20', 0, '2019-07-22 07:30:07'),
(3, 1, 'puri', 'purishanker@muskowl.com', '8003757548', '25d55ad283aa400af464c76d713c07ad', '', '', '', 1, 0, '2019-07-02 04:30:36', 0, '0000-00-00 00:00:00'),
(4, 1, 'Rajesh', 'rajesh@gmail.com', '9988776655', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 1, 0, '2019-07-03 01:03:53', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customers_view`
-- (See below for the actual view)
--
CREATE TABLE `customers_view` (
`id` int(11)
,`group_id` int(11)
,`name` varchar(32)
,`email` varchar(96)
,`contact` varchar(15)
,`password` varchar(40)
,`image` text
,`pan_number` varchar(50)
,`gst_number` varchar(50)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`group_name` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer_id`, `name`, `contact`, `country_id`, `zone_id`, `city_id`, `postcode`, `address`, `default`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'nadim', '7737033665', 99, 1501, 1, '313001', 'udaipur', 0, 1, 0, '2019-05-11 11:20:53', 0, '0000-00-00 00:00:00'),
(2, 1, 'nadim', '7737033665', 99, 1501, 1, '313001', 'udaipur', 0, 1, 0, '2019-06-02 10:24:26', 0, '0000-00-00 00:00:00'),
(3, 1, 'nadim', '7737033665', 99, 1501, 1, '313001', 'udaipur', 0, 1, 0, '2019-06-08 08:11:18', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_addresses_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_addresses_view` (
`id` int(11)
,`customer_id` int(11)
,`name` varchar(32)
,`contact` varchar(15)
,`country_id` int(11)
,`zone_id` int(11)
,`city_id` int(11)
,`postcode` varchar(10)
,`address` varchar(128)
,`default` tinyint(1)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`customer` varchar(32)
,`country` varchar(128)
,`zone` varchar(128)
,`city` varchar(128)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'default', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-26 06:15:18'),
(2, 'vendor', '', 1, 0, '2019-02-09 07:34:49', 0, '0000-00-00 00:00:00'),
(3, 'regular', '', 1, 0, '2019-02-09 07:38:50', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_sessions`
--

CREATE TABLE `customer_sessions` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_sessions`
--

INSERT INTO `customer_sessions` (`id`, `customer_id`, `token`, `created_at`, `updated_at`) VALUES
(6, 1, 'x4QKDEvO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'u5rSUi7E', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 3, 'nRxTk5fH', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_sessions_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_sessions_view` (
`id` int(11)
,`customer_id` int(11)
,`token` varchar(255)
,`created_at` datetime
,`updated_at` datetime
,`customer` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer_wishlists`
--

CREATE TABLE `customer_wishlists` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_wishlists`
--

INSERT INTO `customer_wishlists` (`id`, `customer_id`, `product_id`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(22, 1, 2, 1, 0, '2019-07-06 05:53:55', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_wishlists_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_wishlists_view` (
`id` int(11)
,`customer_id` int(11)
,`product_id` int(11)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`customer_name` varchar(32)
,`product_name` varchar(32)
,`price` decimal(15,8)
,`product_image` text
);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `group_id`, `location_id`, `name`, `email`, `contact`, `password`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, 'Ali', 'ali@gmail.com', '1234567890', '123', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-05-23 06:06:04'),
(2, 1, 1, 'Ali Hamed', 'ali@gmail.com', '1234567890', '123', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-05-23 06:06:04');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employees_view`
-- (See below for the actual view)
--
CREATE TABLE `employees_view` (
`id` int(11)
,`group_id` int(11)
,`location_id` int(11)
,`name` varchar(32)
,`email` varchar(96)
,`contact` varchar(15)
,`password` varchar(40)
,`image` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`group_name` varchar(32)
,`location` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `type` enum('IN','OUT') COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `location_id`, `date`, `employee_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, '2019-05-24', 1, 'IN', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, '2019-05-24', 1, 'IN', 1, '2019-05-26 09:45:20', '0000-00-00 00:00:00'),
(5, 1, '2019-05-24', 1, 'OUT', 1, '2019-05-26 09:49:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_attendances_view`
-- (See below for the actual view)
--
CREATE TABLE `employee_attendances_view` (
`id` int(11)
,`location_id` int(11)
,`date` date
,`employee_id` int(11)
,`type` enum('IN','OUT')
,`status` tinyint(1)
,`created_at` datetime
,`updated_at` datetime
,`location` varchar(32)
,`employee` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_groups`
--

CREATE TABLE `employee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_groups`
--

INSERT INTO `employee_groups` (`id`, `name`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Employee A', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:17'),
(2, 'Employee B', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_orders`
--

CREATE TABLE `employee_orders` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `employee_orders`
--
DELIMITER $$
CREATE TRIGGER `employee_order_history_insert` AFTER INSERT ON `employee_orders` FOR EACH ROW INSERT INTO employee_order_histories SET
id=NEW.id,
remark=NEW.remark,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `employee_order_history_update` BEFORE UPDATE ON `employee_orders` FOR EACH ROW INSERT INTO employee_order_histories SET
id=OLD.id,
remark=OLD.remark,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_orders_view`
-- (See below for the actual view)
--
CREATE TABLE `employee_orders_view` (
`id` int(11)
,`employee_id` int(11)
,`order_id` int(11)
,`remark` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`employee` varchar(32)
,`invoice_no` varchar(255)
,`comment` text
,`total` decimal(15,4)
,`total_tax` decimal(15,4)
,`order_type` varchar(32)
,`order_status` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_order_histories`
--

CREATE TABLE `employee_order_histories` (
  `id` int(11) NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sessions`
--

CREATE TABLE `employee_sessions` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_sessions`
--

INSERT INTO `employee_sessions` (`id`, `employee_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_sessions_view`
-- (See below for the actual view)
--
CREATE TABLE `employee_sessions_view` (
`id` int(11)
,`employee_id` int(11)
,`token` varchar(255)
,`created_at` datetime
,`updated_at` datetime
,`employee` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `name`, `description`, `text`, `image`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'about', 'about us', 'about us', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 07:01:05'),
(2, 'privacy & policy', 'privacy & policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-23 01:55:24'),
(3, 'terms & conditions', 'terms & conditions', '<p>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n</p>', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-23 01:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `type_id`, `name`, `email`, `contact`, `text`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'nadim', 'nadim.sheikh.07@gmail.com', '7737033665', 'hi', 1, 0, '2019-03-03 03:07:15', 0, '2019-06-29 10:36:02'),
(2, 1, 'nadim', 'nadim@gmail.com', '748237948723', 'fsdfdsf', 1, 0, '2019-03-03 03:11:54', 0, '0000-00-00 00:00:00'),
(3, 1, 'nadim', 'nadi@dsd..fdsf', '423423f', 'sdfdsf', 1, 0, '2019-03-03 03:14:06', 0, '0000-00-00 00:00:00'),
(4, 1, 'nadim', 'nadim.sheikh.07@gmail.com', '7737033665', 'hi', 1, 0, '2019-03-05 07:30:32', 0, '0000-00-00 00:00:00'),
(7, 2, 'test', 'test@gmail.com', '12345678', 'hi', 1, 0, '2019-06-29 10:38:01', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `inquiries_view`
-- (See below for the actual view)
--
CREATE TABLE `inquiries_view` (
`id` int(11)
,`type_id` int(11)
,`name` varchar(32)
,`email` varchar(128)
,`contact` varchar(15)
,`text` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`type` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_types`
--

CREATE TABLE `inquiry_types` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inquiry_types`
--

INSERT INTO `inquiry_types` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'default', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-13 07:27:04'),
(2, 'test', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 10:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `length_classes`
--

CREATE TABLE `length_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,8) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `length_classes`
--

INSERT INTO `length_classes` (`id`, `name`, `unit`, `value`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Centimeter', 'cm', '1.00000000', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 05:27:16'),
(2, 'Millimeter', 'mm', '10.00000000', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Inch', 'in', '0.39370000', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `contact_person`, `contact`, `email`, `country_id`, `zone_id`, `city_id`, `postcode`, `address`, `latitude`, `longitude`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'nadim', 'nadim', '7737033665', 'nadim@gmail.com', 99, 1501, 1, '313001', 'udaipur', '24.585365', '73.695053', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 11:23:51'),
(2, 'Location B', 'Albania', 'a', 'a', 99, 1501, 1, '1', '1', '24.585400', '73.712500', 1, 1, 0, '2019-01-31 10:24:38', 0, '2019-06-29 03:37:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `locations_view`
-- (See below for the actual view)
--
CREATE TABLE `locations_view` (
`id` int(11)
,`name` varchar(32)
,`contact_person` varchar(100)
,`contact` varchar(15)
,`email` varchar(128)
,`country_id` int(11)
,`zone_id` int(11)
,`city_id` int(11)
,`postcode` varchar(10)
,`address` varchar(128)
,`latitude` decimal(9,6)
,`longitude` decimal(9,6)
,`sort_order` int(11)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`country` varchar(128)
,`zone` varchar(128)
,`city` varchar(128)
);

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile_menu` tinyint(1) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `bottom` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `image`, `mobile_menu`, `top`, `bottom`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Cadbury', 'upload/manufactures/manufacture3.jpg', 1, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-22 07:37:43'),
(2, 'Dabur', 'upload/manufactures/Dabur.jpg', 1, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-22 07:34:30'),
(3, 'Headshoulders', 'upload/manufactures/Headshoulders.jpg', 1, 0, 0, 0, 1, 0, '2019-01-30 01:29:10', 0, '0000-00-00 00:00:00'),
(4, 'Lifebuoy', 'upload/manufactures/Lifebuoy.jpg', 1, 0, 0, 0, 1, 0, '2019-02-26 04:52:18', 0, '0000-00-00 00:00:00'),
(5, 'Pampers', 'upload/manufactures/Pampers.jpg', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-26 04:52:08'),
(6, 'Parachute', 'upload/manufactures/Parachute.jpg', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Ponds', 'upload/manufactures/Ponds.jpg', 1, 0, 0, 0, 1, 0, '2019-01-30 01:29:10', 0, '0000-00-00 00:00:00'),
(8, 'SurfExcel', 'upload/manufactures/SurfExcel.jpg', 1, 0, 0, 0, 1, 0, '2019-02-26 04:52:18', 0, '0000-00-00 00:00:00'),
(9, 'Vaseline', 'upload/manufactures/Vaseline.jpg', 1, 0, 0, 0, 1, 0, '2019-02-26 04:52:18', 0, '0000-00-00 00:00:00'),
(10, 'Whisper', 'upload/manufactures/Whisper.jpg', 1, 0, 0, 0, 1, 0, '2019-02-26 04:52:18', 0, '0000-00-00 00:00:00'),
(11, 'Tide', 'upload/manufactures/Tide.jpg', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-02-26 04:52:08'),
(12, 'dsad', 'upload/manufactures/manufacture4.jpg', 1, 0, 0, 0, 1, 0, '2019-07-12 07:10:28', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_type_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `total_tax` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `order_type_id`, `customer_id`, `address_id`, `person_name`, `person_contact`, `country_id`, `zone_id`, `city_id`, `postcode`, `address`, `total_tax`, `total`, `order_status_id`, `comment`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(27, '', 1, 1, 1, 'nadim', '7737033665', 99, 1501, 1, '313001', 'udaipur', '18.0000', '118.0000', 1, 'test', 1, 0, '2019-07-14 09:46:52', 0, '2019-07-22 07:10:28');

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `order_history_insert` AFTER INSERT ON `orders` FOR EACH ROW INSERT INTO order_histories SET 
id=NEW.id,
order_status_id=NEW.order_status_id,
comment=NEW.comment,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `order_history_update` BEFORE UPDATE ON `orders` FOR EACH ROW INSERT INTO order_histories SET 
id=OLD.id,
order_status_id=OLD.order_status_id,
comment=OLD.comment,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `orders_view`
-- (See below for the actual view)
--
CREATE TABLE `orders_view` (
`id` int(11)
,`invoice_no` varchar(255)
,`order_type_id` int(11)
,`customer_id` int(11)
,`address_id` int(11)
,`person_name` varchar(100)
,`person_contact` varchar(15)
,`country_id` int(11)
,`zone_id` int(11)
,`city_id` int(11)
,`postcode` varchar(10)
,`address` varchar(128)
,`total_tax` decimal(15,4)
,`total` decimal(15,4)
,`order_status_id` int(11)
,`comment` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`order_type` varchar(32)
,`name` varchar(32)
,`email` varchar(96)
,`contact` varchar(15)
,`country` varchar(128)
,`zone` varchar(128)
,`city` varchar(128)
,`order_status` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_histories`
--

INSERT INTO `order_histories` (`id`, `order_status_id`, `comment`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(27, 1, 'test', 1, 0, '2019-07-14 13:16:52', 0, '2019-07-14 13:16:52'),
(27, 1, 'test', 1, 0, '2019-07-14 13:16:52', 0, '2019-07-14 13:16:52'),
(27, 1, 'test', 1, 0, '2019-07-14 13:16:52', 0, '2019-07-14 13:16:52'),
(27, 1, 'test', 1, 0, '2019-07-14 13:17:51', 0, '2019-07-14 13:17:51'),
(27, 1, 'test', 1, 0, '2019-07-14 13:22:19', 0, '2019-07-14 13:22:19'),
(27, 1, 'test', 1, 0, '2019-07-14 13:22:19', 0, '2019-07-14 13:22:19'),
(27, 1, 'test', 1, 0, '2019-07-14 13:22:19', 0, '2019-07-14 13:22:19'),
(27, 1, 'test', 1, 0, '2019-07-14 13:22:36', 0, '2019-07-14 13:22:36'),
(27, 1, 'test', 1, 0, '2019-07-14 13:22:36', 0, '2019-07-14 13:22:36'),
(27, 1, 'test', 1, 0, '2019-07-14 13:22:36', 0, '2019-07-14 13:22:36'),
(27, 1, 'test', 1, 0, '2019-07-14 13:27:33', 0, '2019-07-14 13:27:33'),
(27, 1, 'test', 1, 0, '2019-07-14 13:27:33', 0, '2019-07-14 13:27:33'),
(27, 1, 'test', 1, 0, '2019-07-14 13:27:33', 0, '2019-07-14 13:27:33'),
(27, 1, 'test', 1, 0, '2019-07-15 22:05:16', 0, '2019-07-15 22:05:16'),
(27, 1, 'test', 1, 0, '2019-07-15 22:05:16', 0, '2019-07-15 22:05:16'),
(27, 1, 'test', 1, 0, '2019-07-15 22:05:16', 0, '2019-07-15 22:05:16'),
(27, 1, 'test', 1, 0, '2019-07-22 22:27:22', 0, '2019-07-22 22:27:22'),
(27, 1, 'test', 1, 0, '2019-07-22 22:27:22', 0, '2019-07-22 22:27:22'),
(27, 1, 'test', 1, 0, '2019-07-22 22:30:11', 0, '2019-07-22 22:30:11'),
(27, 1, 'test', 1, 0, '2019-07-22 22:30:11', 0, '2019-07-22 22:30:11'),
(27, 1, 'test', 1, 0, '2019-07-22 22:32:04', 0, '2019-07-22 22:32:04'),
(27, 1, 'test', 1, 0, '2019-07-22 22:32:04', 0, '2019-07-22 22:32:04'),
(27, 1, 'test', 1, 0, '2019-07-22 22:37:36', 0, '2019-07-22 22:37:36'),
(27, 1, 'test', 1, 0, '2019-07-22 22:37:36', 0, '2019-07-22 22:37:36'),
(27, 1, 'test', 1, 0, '2019-07-22 22:40:28', 0, '2019-07-22 22:40:28'),
(27, 1, 'test', 1, 0, '2019-07-22 22:40:28', 0, '2019-07-22 22:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(15,8) NOT NULL,
  `quantity` decimal(15,8) NOT NULL,
  `tax` decimal(15,8) NOT NULL,
  `total` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `price`, `quantity`, `tax`, `total`) VALUES
(27, 3, '330.00000000', '1.00000000', '59.40000000', '389.40000000');

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_products_view`
-- (See below for the actual view)
--
CREATE TABLE `order_products_view` (
`order_id` int(11)
,`product_id` int(11)
,`price` decimal(15,8)
,`quantity` decimal(15,8)
,`tax` decimal(15,8)
,`total` decimal(15,8)
,`product` varchar(32)
,`product_image` text
);

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Pending', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 11:26:41'),
(2, 'processed', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_totals`
--

CREATE TABLE `order_totals` (
  `order_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_totals`
--

INSERT INTO `order_totals` (`order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(27, 'sub_total', 'Sub Total', '100.0000', 0),
(27, 'total', 'Total', '118.0000', 5),
(27, 'total_mrp', 'Total Mrp', '400.0000', 0),
(27, 'total_price', 'Total Price', '330.0000', 0),
(27, 'total_special_price', 'Total Special Price', '100.0000', 0),
(27, 'total_tax', 'Total Tax', '18.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_types`
--

CREATE TABLE `order_types` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_types`
--

INSERT INTO `order_types` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Default', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 11:26:50'),
(2, 'Draft', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Quotation ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `price_type` enum('FIXED','WEIGHT','LENGTH','HOUR') COLLATE utf8_unicode_ci NOT NULL,
  `mrp` decimal(15,8) NOT NULL,
  `price` decimal(15,8) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `length_class_id` int(11) NOT NULL,
  `length` decimal(15,8) NOT NULL,
  `width` decimal(15,8) NOT NULL,
  `height` decimal(15,8) NOT NULL,
  `weight_class_id` int(11) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `viewed` int(11) NOT NULL,
  `minimum` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `inventory` tinyint(1) NOT NULL,
  `stock` decimal(15,8) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type_id`, `manufacture_id`, `code`, `model`, `sku`, `name`, `price_type`, `mrp`, `price`, `image`, `description`, `text`, `tax_class_id`, `length_class_id`, `length`, `width`, `height`, `weight_class_id`, `weight`, `viewed`, `minimum`, `shipping`, `inventory`, `stock`, `featured`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, '123', '123', '123', 'Makeup Primer', 'FIXED', '3000.00000000', '2500.00000000', 'upload/products/beauty/Lakme-Absolute-Blur-Perfect-Makeup-Primer.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'undefined', 1, 1, '10.00000000', '10.00000000', '20.00000000', 4, '30.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-02 11:47:27'),
(2, 1, 1, 'c456', 'c456', 'c456', 'Rose Powder', 'FIXED', '500.00000000', '400.00000000', 'upload/products/beauty/Lakme-Rose-Powder-With-Sunscreen.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', '', 1, 1, '0.00000000', '0.00000000', '0.00000000', 2, '50.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '2019-02-02 01:44:38', 0, '2019-02-08 07:10:05'),
(3, 1, 1, '123', '123', '123', 'CC Cream', 'FIXED', '400.00000000', '330.00000000', 'upload/products/product12.jpg', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFhUXGBsbFxcYGBgeHRkaGBgYGh0aHRoaHSggGxomHhoaIjEhJSkrLi4vGB8zODMuNygtLisBCgoKDg0OGxAQGy8mICUuLS0yLSstLS8wNysyLS0uLS0vLS0tLS0rLTUtLS8tLS8tLS0tNS4tLS0vMC0tLS0rLf/AABEIAHkBnwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYDBAcCAQj/xABJEAACAQMCAwUFBAYGBwkBAAABAgMABBESIQUxQQYTIlFhBzJxgZEUI0KxUnKhwdHwFTNigrLhJDRDRJKiwxYlU1SDhMLT8Rf/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAMhEAAgIBAgMGBAUFAQAAAAAAAAECEQMSIQQxQVFhcYGR8BMiocEFFCMy0UJSseHxM//aAAwDAQACEQMRAD8A5HSlKqailKUApSlAKUpQClKUApSlAKUpQClKUBc+xnZE3NpfTPbyuUgJtWUSYaUFwQunaQggDTvUxY+zZUt7wzyQNILeKSBu+KCIvrJMgJGF2G7DBwcda+ezjhcv9HcSmkJjt5LcqkpOQChk1kIp1ZHlgZq4cYa2UiKZpv8AT4bS0GhF8JGSDqLfiEp6baSd6kqcd7WcAaxuWtncSMqq2pQQDrXPImoqErnxAkehA/MGpbtpB3d/cx948miVlDyNqYgeZ/gBULUEkzb3FgPfguT+rPGP2GI1IwXXBfx2/EPlNCfzUVIcE4JZ2q20nEEeaa6KGG1UkBIncKJpcEE5/CmRnkepW78aS0g4pa8M/o+zlSZR3mm3CMmsuAVYMTsFLHPTkaEFGgfs8feTiK/3oj/hzW2sXZk7Ga+UnzH8ENV/2h8Fis7+a3hOY10kAnJTWgbQSdzjPXfBGfOpKIX/AA/h06S2QSG9Kr3sgGtfCdtOdQyASNQGDk+lASf9HdmT/vt0vxjkP/Rry/Z7s+3u8VmX4xn98Yrn1tA0jqiKWdiFVVGSxJwAB51aP/5nxbKg2TDV17yHA+JEmw+NCTeueyfCf9nxtB+vAx/wkVHTdlrQe7xi0b4pMPyVqrE0ZVmU4ypIOCCMg4OCNiNuYqc4L2Lv7uLvre1eSPJGrVGoJGxxrYFsHbbO4IoDzNwCIZxxGzb4Gf8AdCa0nsIxzuoT+os5/OJazcd7OXNn3f2mLujIGKqWQthSASQpOBvtnnUUqkkAAkk4AG5JPIAdT6UBnuIox7shf4IQPnqI/I1r1YbnsRfxwPcS2zRRIoYtIVU4JAACk6tRJGxAqv0ApSlCRSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgL77PppHseLRamZVtPAmSQC5kzpXoSccuZroFpPE960c+gJEbVLdnYANe26vqROrY16WI5EY5kVxXhvaC5gTRDKUTUH0hU3Zd1ZiVy+DuNWQCBjkMat/fyzsGlcuQAq5xhQN8ADYb5JxzJJOSc0siiQ7X8MuYLuUXahZpGaU4YEN3jMdS4Puk5xnB2qEkGQR6VJ3U0lwVee4DuFCDvGYsFXOAW0+p5kmtS6tmjOGx6Ebg/A9arqTdGjxTUdTWx11eGQ33GeH3cE8ckTosjRBvHD9mQYVl6DXo5431VF9pvaT3d7cva2kCzhmi+1OWdysZKZVTgLnT8PMGqz2V7dTcPTTb29pqOdUrxuZGBbOkusg8I2wB5ConjvGBcspFtbwadWe4Rl1lsElyzMWIxt5ZNWMaNdOKTCcXOovOJBJqYBtTg5BIOx36fSune2yWYQ2ds2uTukElxLgkd6/gQswGFyRLgbc8DlXKYJSjK45qwYZ5ZUgjPpkVZe2Hb274gAspRIxv3cQIVmH4mySWPkCcD9tC1Gl2Jt7p72E2SBp0bWuoeBQNi0h6R4OCee+Bvir5xrjtzcyTcN4a7SyMHkupQ5UNj3ordXY93CMgDBy2eZGWNL7MdtbqwjZLbul1uGd2j1O2AAEJJ9wbkADOWO+9TPFPavezRle7to5GUqZo427zS2xClnOnbrv6YoQyggjGeldX4dxibhvDrd77wlCxs7ZS6SPq1HNywb+pBJITGTgZzyrmnCb4280cypG5jbUqyLqQkcsqCM4O435gVd7f2w8Q0lZktp1PR4iP8ACwBHxHzoHZXO2cV736zX28k8ayqdQI7ts6QoBIUDcaenrnNWLsPaC14dd8XKhpYz3NrkAhHcqplweoLgf3W86qPaHjs15N305XVpCqqLpREXOERd8KMnqeZqa7L+0G6sbZ7aFYmVmLqZFLFGOMkDUAeQIyNjnnyoK2Lf2xF3HwK1t5TNLcTu08+rW7rGh7w6uZVU1Qg9B6VySrj2h9pd/dwC3dkRNIDmMENLtvrYsdjzKjAPXI2qm0JR9pSlCRSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFfUUkgAZJOAB1J2AoqkkAbk7AeprofZbsrFETPLMrldIQxnKq5z+LOGxtzA9OW2WXKsatlJzUVuUOWwlUkGNsg6TsTuMbZG3UfWtqLgM7EgJyGS2dhnoT57chmrZcSBpSjuyZBUMpBGcjGRnG4yOYr6+tVyqHQuSWY4YnddOOu+r6GuP8AOTa2SMHnZRLmEoxUkHHUcj1rHUlxSzYkyr4lPMjHhI6EAk7DG9Rtd0JXFM6Iu0WHs1wu2lAeX7XlZFDd1brJEASMa3LjTnfIxy866Be8C4V9q4pCqHvFgVkiWGP7vEeS1susF36nZdzzrQ9krD7FdAyPGGurVdUbFTlnVQuobhWJCsR0Y1LWt1cRwzz3t9DbyTXMixsFXMTQztFMgYxNrQoDpB38KjIya0ByTia2wK/ZpJZBg6jKiIQdsY0O2fnisMU3hKncc1z0I6fOp/2hXwmujIs0EkZyIhADiNA3hVsouXPvE77k74rVurFGtY3jUAog7xhzZmfcH1GoD+7WOWSVX1ZeOV4/Pb1I5LiHHihOepWRh9AQa2YJLL8cV1/dmi/fD++ouvhNalSyQT8JHvQX5/8AVg/cgrfg4nwNefD7xz11XAH+BhVStrWST+rR3/UVm/IVLQdj7991tZPmUX/EwqrklzZOlvkWePtVwNRtwZm/XkB/aWNfT244UPc4FAf1mT/62qBj7BcQOR3GMc/Ghx130selfX7BXwODGufLWM/Sq/Gh/cvUt8KT6MmpPaBY/h4FZD4hD/0a15O38HTgvDB8YVP/AMRUNc9i75OcB+TL+8io+fglynvQSDHPCk/4c1KyRfJoh42uaJ2Xtxn3eGcKX/2an99ZRc3UsQlFjw9EbOnFpCpYDbK6gds7c6pzDBwdj5Hn9Ktlj2kBj0O+gYGQVLDIx4lABwdvTnjfAqmaeSKWhHVwWHBkk1mlX0+r9sgbriLMSDFAp66YI1x9FrRNS8tqbhnmyI0ZiBkbnAHQHyxnfrWSW9hihEcIJk/HJ5n08gN8fyaPL0St++pxzcVJqO+5CUpStiRSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpSgFKUoBSlKAUpVs7Lez27vY++XRFD0eTV4h5ooBLLnbOw8s4NCG6KnSt3jfCpbWd4JgA6HfG4IIyGB6gg5rVgj1MFyBk8zyH0qA2krPFKtfDexokYBrgLnkwTUp9C2saT8RWfjHs2vYBnuyy9GUgg/QkqfQ/WqqcWrROBrP8A+bsptfKzXVq8baZFKnyIxWKrBprZlv7L8BaPu72TQUUgouvBLjDKTy2HkDz286nJ7pm1tCgSOXOT4cMcFd+oIBOCcmq52UjnmHchvuhkqMAnWceBR0yd98AZzUyLF1tjJ3kezEd3v4h5j55+nOvJ4nW5vc4s16j7xSSZ9ECqrAKoxCrgZYbAnTud8k8t+dR7XbKoiYHLofE2rbQxGlOhO/qdjjnvLdir5lleRmGlAoXJ3G5Jxn8IHWqt2lv1lc7eHLFR5LkkD9tTjhqdGaVsz3MwSELjGpickYzyH7qrs5XPhzj1r3GRjB/ZWFsdK7sMNNnVhjR0j2byRpw67klkEccd3ZyO7BiAscsbnZQSSdOBtzIrB7T+Jo0FrCMh2kuLtlPNEupXeJWHRirZI5jbzFUaDiEqRtEkjLG5VnQHwsUOVJHUggGirNczba5ppW9WZ2P88+gHkK6LNqMVsUDqZASgPiAOCR5Z6fGrFwq1vbxWitICkRbLaPCg2Aw0jHxcuQ39KuvZn2axQr318VdwM90DmNAP0z+M/s6b86nrTijTS9yjrDEAVC4QA7bDcHGTjYcgwrhzcTC6St/Q6sPByypyeyRUOGezONT/AKVcZYAExxAgDPQyEb7+QFTXD+DW8CMwtoEwdMbkNK5Y783PMDB8skCp+yspZNLkOkSBgQVB6Y1AAjY+npU93tukSzeAxg4BVGyCeuMEg+fw3OK87JxGbJyfly8/BeB1qGLD0t+9vFlXs+zUpbVLMWXT92FBVj/ZYMTjmT6dAKlLPgFu+oSRAsRk6nYnO2+RpAHT3a8HijF5CvdooGSzhmyDjSQF23z0Bx13BA24b5dKnBKsdOTgYZRuknII2RzGx1DArkg8sZW6fvw995vknmqrfl69PfgV2azt2nRV7wIwIVF/S/CRvtkEnG2yjlyrMvB4ZSY4WKu3IsoIOkBiuVIzkEeWx51LScMR4lLvo8WwVwRnkygkcuY5chyrLbWUaDUiPG41AMGDNhuowSFGN8dMVrqVKVc9697EviLj8rf+/fMj17JS6B3d1JEu3hGSucb4BbYen7TWjxHhd5qTW7yJsdWQFySBp0DU2ceQK88ldzUlJ2ijUqijvSpHi16WONzuOmxyWwNuVTE/aFAUHdsZNwqHHPkPGuVwfMZ251pialD5uZk3xEGnX0X/AH1ObxtnV3saSxLzEigZGdtLeu+OfwrVu+yfD52Ai7yBiOWliCcA7aQy4+CjNdRuOHZIZ9I0gEvqOrbcgE4C/HnitPvUiUiSaScS7oN3GNt1CLlVH61arJLH1oZMmLN/Rv3e/wCDjPFOwNygLQlbhF28Bww3/QJ/I7+VQ8HZu6YZMLIM4+8BQ7c8K3iIHmB1r9AxGBWQQiNXX8JfTkMdwxBJZhuQN8Hy51r9qLfCiVpQApBxI2BnPn89ts7ddq2XHz0crZzx4fG8qTtJ+v3OV8U9nbQ2ffd6Hm095pTdCgGSAcZLAb/IjHWqJX6A4VMZ45EQqwUahq5HIOwOOWR8Rn1GeL8R7OzxvKFgl7uNmw2k40KTg6uRGnfNdfC5nkTsx4nD8KVERUxwTghmVpGyI054xk8up2A3AqHqUseJhITGfMkeud/zrbM56fk5k8GsLy/rcvuYeJ2SofATj1x9cjmK0azTz6uQxWGrQvTuZZ3BzbgqQpSlXMhSgFbk/CLhJHhaCXvExrQIxZdQBGQoOMgg0Bp0rYmsJkGp4ZUXzaN1H1IxXiztXldY41Lu5CqqjJJPQUBipWynD5jL3AiczFtHd6Tr1eWnnn/9rDPCyMyOpVlJDKRggg4II6EGgPFK8lx5itmKxkaN5VRjHHp7xwNk1nC5PTJoDBSlKAUpSgFKUoCe7D8MS4vI0lwUUF2U/j0cl+BJGR5Bq7vfdpYbdUEitPK+pYrdMZbT55IULyOW8wFBPP8ANaOVIKkgjkQSCPgRyq4+zvtF3Nwyyh3M2PH4nZSgY5PMlcE5O+Bz2FRKTUXSIUNUlZre0P7TJcm4nt3gWRR3alw4VVHuhgBjBydJG2T0qsRxliFUEsSAABkknYAAczXZe0XBn4s0EEMsMegNJIdRO0jAKQi7sxOSc4Hi5mta64Bb8AXv3DXNwQBGxUKgLZBxudPLc5JwdsZqkZtx1UaShplpZB8Tu0sYLaKUOLxY8sqFWQAuzKJAx98gndfyxWwntamj2SMONOMMWAztuTzIG+w058659xK+eeV5pDl3Ysx/cPIAYAHkK1qRxpO+pzywQc9aVe+pv8Z4vJcyF5MbknAzgegySQByArQpSr1RtKTk7bsmezPERA0j69LaMITk8zvsAd8efma3opTNjQzHPvk/2fToAKrFbNpfSRhgjYDDBrny4Nb1LmYzxatyzTWf3HhZSWY78mCjYZ8s8+Z51X7gBRv73IVtcMvgVIdzldxk8x8TzI3+taXFJMsP551lihKM3FmUINSpmqZDjG3yA/dXmlK7aOlKj1FEzMFUFmYhVUcyScAD1JOK7x2R7KRcLt+9lw1zIBrboud+6Q9FHU9SCeQAFB9jnC1lvGmYZFumV9JJMqp+Sh/niugdtLt3ljt1YDC9423PmMD12G/rXFxWZr5UdPD4tclZ54txK41HuncIMZKggF26gZ3XAwAdhk53r7LfwFcyGKNygJIRAXwcALqBGRg+gNRdlDcMQusKq5393PqXOQCeueeM1LQ8IWGCNXm1NI504IIcE6iST5DywNq8fW3bZ7LhihUX9PuZ3siqRPDLrh1ACNz7u2AhVfDsAeWBtU8uqTB1BYx7xx5cwOmK0uE2FsC0aPl9nYA4Bydvd8Jb4ZrXhRFldA4bx8icYUnDAqunvN9skn4Vjkw65qUv29l833nLkknsr27unvqZuMP3fK4QBhlfCzMfjgEBfl86+cFFsMxxynLt4kce8SCccgPXlnas0/CdUgIeTSDq6FdgRpG2pGGRzB25ekPLP3jyJ3M0UiHUZ2MedhkdBlfIDfz3raGKOJ/LFImCjkhpTffyXhtW/luTl7IsQZe+XwjeNDGNWrbQUIJ3BG+cnzrUuppnPdl0RQu6qBq8tLEkjGMZwOuKw8TVpArFEfGkK7xqSDgeLLDPPO/LcedSQIwWHjIA74qFG6gA4zsD13zyxV5Nz2i9jOP6a1SpshDwCDSNU0pYg4GV288ahsv4RvW08iQQowkjQg5QAjJ5bs2PqcAelee0XCnuYzGkmMjwS6CxUZycqBjcDAbO3QZrl8/ALqJmKtK5zgsneEczzyuCOvXGatGMa2ZvGbyJa231o69wvjwfPfSacYCkkKsgkJ0ncbtscY2I3FRfaeYNNEXLGNRjPrqGrI5HKDHzqt8D4ZLJaTzTssCeER6+QK5LPhuQJO2OpOK3Z5RJaXFwHBj1xqMr4fulwzYI8WRgbc+VW+f9r9SILDHJrXhXY+76mW5voT3uAAWcdzhcbZG2kbbge7pPP6aXFSpgVJ2bUh3w2rYnIXbOAACK99mrCCe2keRUTcHW3PQJQdvLxZRd98YGa1Z75VE/3ZOo/dxLgkAZAzn3eecb5Iqk8bOyOaF1Ho+vkiR7L8aJyVYCNF0KuMYJ074wM9TnP5mq57QO1ssTyWqxppeIZc5yRIpBwBt5j5VN8CuFjhRO5ZWYsW2zjpqY774G3xqpe1RAXgkA/C6H+6QQPqXrr4N6cldp5vHpStpED2f4F9ot76UE6raJHUDrl/F9ERvmRUFV/wDYvdKL54HwVuIHTB6lcPj/AIQ9U7jnDTbXE1u3+ydl+Kg+E/NcH51655RpVnsbR5pFijGWc4H8T6Abn4UubN48a1I1DbPqAcehweX+dbnA+K/Zy7AeNlCq22VGcnGeWdvpVJtqLaW5DbrYkOOcJggiOklnL6FZjudO7tpGwHIDntn0quVnvLtpDljy5DyrBVcUZKPzPciCaW5bPZxad5PIdNg+lPcvWIBy2S0YAOWUKcnoG9a69eq44kZEktlRQJnS2LNeXKLGqqsiDYx6jseWAB1Ncv8AZFEguLm4lkEcUNs4dyfdMzKinHXYN+zzrqJtpWumKW8b2zWRRLu3Effu5VV0B9fu8yuRgEDetkSype0fv4uGypNNPOZ7pXUtDKiwoMsI8vt72wAqC9mEPhkZrVGCurRztw+5uTqA3VXhI0acK3nl6n+1vA5IuDzoFvjiaOVjeSQswVdjpMcjDTy8PMk7CoD2dRXTQlYrCadDIfvRezW8a7LkEIQpI5kjff0oOh1HvSE+2BFFyzd20v8ARl53hj0g6e6Dd6BsPGTp2xjNcq9p8QAiK2yIrMxeZbC4tSXIOEZpie8yNTbfo1fW47YH/u8S/fjx/wCu3IiMxyph+16tZx5EYz0zsKF7SIrlY41msZLde82ka9luFc6W2UOxAOMnOM7Y60BauwSBrGxgEMTd/b8QZiyKWLxT6U8R5e+foPKt7hnCpxZXSngtrGzGLTAJVKTYbJLsHwNA3G9VvsP2ntu4srPSvfhLuNppZDGkKzyFz0KyFlAwNt1xkZqX4L2ls4LC8jt4e9srUwRtqHiuO/cpNIeWcg+EHHujkCMAcz7aWMsNyRLax2hZFYQxsGULuuQQTzKttUHU12s4TBbzAWtwk8Ei64yD4kVicJIOjj67bgVC1BIpSlCRW3wnhslzMkEQ1SOcAcviSegA3rUq7di+0sMHcppWNtZJlxnGVYDVtnGT9PhUBGHjfs8ubcDLLI5GQqAnVvghT1b0IB8s71cvZ1Z23D4+9nkC3Ux0A81iGM93qGyvghm1EdAM43z9uePrJbxxho2l16gY3U4GDk7E6c5A3O+/lXPbMXrDuhbGQK+okK506guwZWCgEAHHX1qql89I6snDpcMsrTTfdt4tvlfRdzP0Pwexs9LTW6RNqJOpQhAYKEOnTyJAGQPM+dfnz2l8WuZb+4jnldlilYRxk+FF/DhRtnSR4uZzzrt3Zy7jgt1CxsiE6gCADl99xk79Pl0rnPtX4bBNcR3CK6M40yHw4YrgKfPVp2+CjyrWUaVnnSzKPzSZyyldA4R2FgmtJ5tc3eRasDPgOF1DOIT682FUa8gCnbl8c1nqV0dGKPxcPxo/tujBSlKsQKUpQClKUB7ghZzpUEnyH87Css9jIgyy7ehB/I1L9mLjuwzKcPqGG22xgjIPMHxfOnHZyzF2fLtgnYDoNsLtXO8zU9NHqYeBxSw6pSepptdmzrs+68OpbvYlMNV2nUrGw+Xeg/mPrV57RcN7wsUbRKAGRtzsAQykdRgD+efJfZjxNYOIIG2SZWhOeQLkFP8AmVR/erud/FgBl2I3B/YR8xXFxaccmo5cL2orPZa4OpO8woA7tlfowXw6hjB1HGCfOvfGLXunz3Y7o4YKACvLxEYIDMGyck5OoeZrFx647gm5iUMhwsqkA46gkHmBsPpWlxftN3sIWERk7AruoxjcaORONsVzOCcfM78WT9RS7qJKD/SAO71aV5nQsSL6nzO3PJ5cqnWtIFWBHlAC51DOe8bwH3jvjO/rmqpwyBlOsERlkKqrsZUySN9KHO4884JPPpvf0vJG8a3KxOoOr7tk188axG5yQNvL+GairqrLZlKW8HSVvpf+/Imr7iuHY96sYGnWvMrn10lc8vxdc5230HvJCe9hnjeJUBZZGjIz4iVOhfeHI+LnkDlWS+4iLgAG2fY4B33B65XntvzxWtbm0RyuhIcYVAXUZJH6C8j+tvUSyTbdb/QrDGopNx8tmSaQlSGZWjiI+8CPkI230X+B5Ut2ijWTS5EWpuRwSTuQG54DE7Dr6bV9W+fWHUqDIcHZiMjOfEExj9bTVTbiQWV4HULp3VCmd2J5b4GMDcjPQVg46r0Wn27V/HfyLY8Ly8/f3vvLdFHq+6w6qVGlvERgY8J6YOAOeTzrFxKAqqhI0EmfCzhirEdfBjJ+PKoy148SRHOVaPOC2SMbEghlwTuMY3zUteSCSIiN9mDAHWox01YZTnrzB/bUuCSqyk8c8Ukq/j1+xg4jw6K9jEciyqQxG2Qqtt4txupGQCMgZ6Voca7PF4Y7ckRxhxpjJwH0KdK6lzpBOWJOWPxrUguREyrFdoVjy0xUAswQcsL4fPOkZ57Vh4l2qdwqwh8sx5EKWUAEt10DJ+W9bw1bdwWGbdR5d/Qhu0E/caYIzqdTqfwgKrYwrY5bLgIvJBv7zZGjweJi4G/i5Z+J5/MGpLiUAGZriVSxGQqjkP0dX48egx61u8AmhkCumcKwGfMZbO3zx8q1nKTW5fTGGydmOGz0Nj9Jwdv0cZ/fVe9qkelYR5sx+igH+fWrzxiFUZZD1226kf5Zrl3tG4p31yqDlEunb9JsFvoAo+INacJFyyp9hzcTNfD8SD4DxQ2tzDcLuYnDY815MPmpI+ddZ7U9kxccSF2mGia3WUDGdcikKpK82QIVcgbkJp/FXGK6JwzjjtwkS944lsG7uMqOk2FTJxjCjIwcjwJ8/ZR5bIrtwwjxF+NiSc7kIGOST1LSA79e7Zh/WGqhW3xbiUlxK80py74z5bAAADoAAK144WYEqpIXGogE41HAz5ZOwoSjxSss1rIgy8bqPNlYfmKxopKswGVXGphuFycDJ5DJ23oSA5AIBIB2IBO4BBwfMZAO/UCkblfdJX4Ej8qyW1rJJnu43fHPQrNjPLOkHFHtXGrKMNBAfKkaS2dIbI2JwcZ54oQeXncjBdiPIsSP2mvSXUgQxiRxGxyyB2CscYyVBwTjbcVki4dM2yQyt4Q3hjdvC3utsOR3weuK15VKkhgVIOCGGCD5EHkaA846VkedyqqXYqvuqWJC5xnSCcLyHLyrzKhU6WBDYBwdjhgGBx5EEH4Gva27nGFbdWYbHdU1amHmq6Wyemk+VAYqyJO4VkDsFbGpQxCtjcalBwcHlnlXhBq5b/Df8q9GJuek/Q0JPNKyrayEAiNyDyIVt/htWOVCvvAr+sCPzoD5SvsiFdOoY1DUufxAkjI8xkEfKvlAKzWSqZEDe6XUN8Cwz+ysNSnZrgkt5cJDFjUSNzyA86hlZOkdWmsg/AnIUD7Pcalx0GQD8sSE/Kqvwe8ZBlV1YOkry2OWBHqMPt11AVdO092OH2bWGVlaUNrOCukuM5G5zjC/H0rnnDZSGx1PL9YEMv1IA+DGuWUtE01zR9L+CcHln+EvDlXPl6L7o6VFxDVw2OfOAoDHmRgMUPLcjGTVW4zcG5g1KrsAco3hUZGxOGIY7ZHI1K8D4fL9naFAzRzISq+8ul+RwDqBBJXn+Hc+VGMsiDuWypjJUr5EEgg+uc1txMpVF3tXTtOH8L/DMHFyyY59H17P5NrhPbRrPvVWFZNWBh9tJGd9gGwc42PQVTLq7L8wBjkPL61J8XiGNf4ht8Qah5GyaY6kkzm4rhXwE5cLB/Ls/Hqru/8Ap5pSlanGKUpQClKUB7ilK8q+O5PM15qX7LW8Ek+idSysp0gMV8YIPMf2dVUm1FOTXIt8WUY1exEA/L4V2nsl20+024Dkd+gxKp/GMY71fjgZ8j6YrmPaTgwgbKZ0E7Z/z3+tRFtcNGwdGKsvIjp/PlWUlHPC0RiyVujvwjjm1aG3IwynnyOQR1FVDivY2VTriI5kcuQO/wC7nVe4b2tVsCbwMPxjOD6+amrjY9ppAPeWVPX9zDf65rzpYp43sejHIpLYrkdzdW3hOdI5HTqH1G4+lbidqy6DWqyDlpIBx8fKp+XjdvICHjKE8yMEevLf9lR8vBLKdsK6ZPLfB+hwao5J/uXoaruZqTcftm2ePQc7mMld/MjOlj8QazQtYk6o53U431aTvjAOdsY8h9awX/s/YDMcrDY+Z5b1FDsVc4OJeWOnn8qL4TXOi6y5Y8mXiXiMbJhb1Y2xuQsZBIHvEBQcnbk1VniEOuZA95Gw8QMo7zIGxwV5keQ1Y3+sQex93/4v8/Svn/Yi5zhphtz9Ou229XjHGv6v8kY82XG7iv8ABY55uHxkFpGdlGFYny9FxjeoduP22WLI75GMM22B8VyOXnWqnYYn3pmPwz8+v85rPb9lbeNlMjjGRksQNuvOmjCt7ZPxsz5sx3Pa2HOIrcP562ZgfTQmlMfWg4xezALGiQr5IgUfQc/jmph5eHwnwkOR+guf28v21qSdphnEMQAzsXPX4D+NWTv9sfUo3f7pH217PO57yZix6lt/8uvM5qatOIwwApHhyQQccuZ3J6nYcqp/E+Nuf62TI/RG3/KPzNQV5xtyCE8AxueuPj0q0eGnk5mc80IbFp7R9qiMgNqkAwPJB5/H0+tUNmySTuTuT5k86uFjwyOPSmA0uMykjOk4yQPLA+pBz0qP4lbq4OwVsZXA5jfqBg8sV0YskIPTFeZXLwuSUdbe/Z76kAqkkAAkk4AAySTsAAOZJ2xXXeD8KWB14K+NdxZyvOfKeXBQZ/sCIAfDPWqL7POJ29tfRzXI8ChtLdI5CMK5HkNx6agelSt72jU8dS6VwyCWMalOQVwFO45jLGu08xlHdCpKsMMpIYeRBwR9auPYcj7PdagNIIZgUjy+IZ8JHK6nEocpIFzsIyRvnPn2scH+z8SlIGEm+9XyyxIf/nBP94VTyxxpycZzjpnzxyzsN/ShPMuPaW+Tu7KIG6GFWXE0ikZaaVSz+EMZMIADnAXYDc5s/EOOMpkkDG4iXXqkt5Je8eQ3V40UGpfwrGQckaVByNWpAeV3Fw8japHZ2/Sdix+rEmvVtdyR57uR0zz0Oy5+OkjNBRe+xdtN9ru45g7SsMOwE7YIDSEFo9skhVOrBI1KOZB89rZNVpPhSpBiDLiRdLNc3j6fGNQ8LKQDuAVqhd62CNTYY5YZPiPmfM89z516Nw+gR637sHITU2gE9QucA+uOtBR1lWhlGhULr3VoNfdQhP6m5KOwMf3aMRp8QwmteQyKqZnI4ldMJkhQyFnEgjVnGciJBcKNLE7aiFCjc9Aai87ldJdiuFGksSMJnSMZxhcnHlk4rzI5Y5YknzJydhgbn0AHyoKL77QL55EP3tvGdEWuBWt21gxxMHQplgQzYKkjKqGUsNWJrgHEYlWKOKZ4i1vEVjZGbCosxZ9QBUM5yzbDdRjOcVyh3JOWJJ23JydgABk9AAB8AKypeSDIEjjK6Dh2GU/QODun9nlQUWG9v43vpp0vZUiPiLx96sjjb7qIZ36AFyqgDONsVudreLibI+0XMRNvAyQmR3idHgjbuiRhteSx1vqDZOSp50uvckhbGok4AAyScBRgDfoAAAOgFBRZuyfG5US61yTvGlqMRieVMYubVRoIJ0EAnGBjoQRkV44RcFr9ZEkuZ9A1Kzle8CgZZZGeTSsYDMrNqUb5GM1XEkIzgkahhsEjIyDg+YyAcHqAeleKCjqXae6R7VkhnmnzAGIVgSsavL4tLsC8ROzOAxAjGdOd+XV9dicZJOBgZOcDfYZ5Dc7epr5QCrb7Pu0P2KR5ViEkmDjUcKBjGdtzzO23PnVSre4Tzb9X94qKsrNJrcv9nM3E77VcuELjB7vwgaI9satX6NV7tTam2lZCdgxCt5qDsTjr/nUj2O/1qP8AW/ca8e1T+tT5/wCN6rLFF70d+H8T4rElCM9uVM1+G9v7mFDFC+jUd20qSCeZUkZXJ5jzJIxWLhl8puA8+ZMnLZx4ieZOeZ+PpVSFSZqVBGM+LzOTkpU32betVfmSHbiWIz4hxo57DAzgZwDuBnOMgVXKyXHvVjqxghSlKEilKUApSlAK9RSFSGU4IOQfIivNKgE3xLjnfxaWGGHlyO4JOedQlKVSGOMFUSsYqPIV7hmZTlWKn0JH5V4pVyxL2/aGVdmw49dj9R/CtoceRveUj6Gq9Ssnhg+hrHNNdSyrxwD3JWX4Fh+VZ7XtHKv+8v8AOQ/vNVOlV/LQL/mJF1/7US/+Zbbl4h8axT9ppSP9ab/j/hVPpVVwsB+ZkTUnFiecrn4sxrWN8o5A1HUrVYooo88jfk4kei/WteS8c9cfDb/OsFKsoRXQq8knzYr4RX2lXKFot+JB1dvCGKgEb5Ugb435N158/OtG+ukUHSckjAGc46ZPl54qDavornXDxTs65cbOUdNb9ooa+0roOQ6H7Qu0FtfWNpKJF+1R4WSPrunjP6upVIrnlfK+0ISoUpShIpSlAKUpQClKUApSlAKUpQClKUB//9k=\" style=\"width: 415px;\">hii</p>', 1, 1, '0.00000000', '0.00000000', '0.00000000', 4, '50.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '2019-02-02 01:56:25', 0, '2019-07-19 06:29:27'),
(4, 1, 1, '123', '123', '123', 'Matte Compac', 'FIXED', '600.00000000', '520.00000000', 'upload/products/beauty/Lakme-Women-Compact.jpg', 'It was popularised in the 1960s with the release of Letraset sheets containing', '', 1, 1, '1.00000000', '1.00000000', '1.00000000', 2, '80.00000000', 0, 1, 1, 1, '0.00000000', 0, 1, 0, '2019-02-26 04:48:21', 0, '0000-00-00 00:00:00'),
(5, 1, 1, '123', '123', '123', 'Matte Compact', 'FIXED', '300.00000000', '250.00000000', 'upload/products/beauty/Lakme-Women-Compact-2.jpg', 'Desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, '10.00000000', '10.00000000', '20.00000000', 2, '30.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-03-02 12:45:20'),
(6, 2, 1, 'c456', 'c456', 'c456', 'Kajal', 'FIXED', '500.00000000', '400.00000000', 'upload/products/beauty/Lakme-Women-Kajal.jpg', 'Standard dummy text ever since the 1500s,  when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p>dsd</p>', 1, 1, '0.00000000', '0.00000000', '0.00000000', 2, '250.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '2019-02-02 01:44:38', 0, '2019-07-13 10:02:53'),
(7, 3, 1, '123', '123', '123', 'Lip Crayon', 'FIXED', '1300.00000000', '1200.00000000', 'upload/products/beauty/Lakme-Cinnamon-Brown-Enrich-Lip-Crayon.jpg', 't was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \r\nand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, '0.00000000', '0.00000000', '0.00000000', 2, '100.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '2019-02-02 01:56:25', 0, '2019-02-23 01:46:51'),
(8, 3, 1, '123', '123', '123', 'Lipstick', 'FIXED', '700.00000000', '600.00000000', 'upload/products/beauty/Lakme-Women-Lipstick.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 1, 1, '1.00000000', '1.00000000', '1.00000000', 2, '150.00000000', 0, 1, 1, 1, '0.00000000', 0, 1, 0, '2019-02-26 04:48:21', 0, '0000-00-00 00:00:00'),
(9, 1, 1, '123', '123', '123', 'Makeup Primer', 'FIXED', '6000.00000000', '5000.00000000', 'upload/products/beauty/Lakme-Absolute-Blur-Perfect-Makeup-Primer.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'undefined', 1, 1, '10.00000000', '10.00000000', '20.00000000', 2, '60.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '2019-06-23 12:27:40', 0, '0000-00-00 00:00:00'),
(10, 1, 1, '123', '123', '123', 'Makeup Primer', 'FIXED', '11000.00000000', '10000.00000000', 'upload/products/beauty/Lakme-Absolute-Blur-Perfect-Makeup-Primer.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'undefined', 1, 1, '10.00000000', '10.00000000', '20.00000000', 2, '120.00000000', 0, 2, 0, 0, '0.00000000', 0, 1, 0, '2019-06-23 12:27:51', 0, '2019-06-23 12:28:38');

-- --------------------------------------------------------

--
-- Stand-in structure for view `productsales`
-- (See below for the actual view)
--
CREATE TABLE `productsales` (
`productName` varchar(32)
,`productImage` text
,`totalPrice` decimal(37,8)
,`totalQty` decimal(37,8)
,`totalTax` decimal(37,8)
,`total` decimal(37,8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `products_view`
-- (See below for the actual view)
--
CREATE TABLE `products_view` (
`id` int(11)
,`type_id` int(11)
,`manufacture_id` int(11)
,`code` varchar(64)
,`model` varchar(64)
,`sku` varchar(64)
,`name` varchar(32)
,`price_type` enum('FIXED','WEIGHT','LENGTH','HOUR')
,`mrp` decimal(15,8)
,`price` decimal(15,8)
,`image` text
,`description` varchar(255)
,`text` text
,`tax_class_id` int(11)
,`length_class_id` int(11)
,`length` decimal(15,8)
,`width` decimal(15,8)
,`height` decimal(15,8)
,`weight_class_id` int(11)
,`weight` decimal(15,8)
,`viewed` int(11)
,`minimum` int(11)
,`shipping` tinyint(1)
,`inventory` tinyint(1)
,`stock` decimal(15,8)
,`featured` tinyint(1)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`type` varchar(32)
,`manufacture` varchar(32)
,`tax_class` varchar(32)
,`length_class` varchar(32)
,`length_unit` varchar(4)
,`weight_class` varchar(32)
,`weight_unit` varchar(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`product_id`, `attribute_id`, `text`) VALUES
(1, 1, 'red'),
(1, 2, 'nil'),
(3, 1, 'red'),
(3, 2, '12');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_attributes_view`
-- (See below for the actual view)
--
CREATE TABLE `product_attributes_view` (
`product_id` int(11)
,`attribute_id` int(11)
,`text` text
,`product` varchar(32)
,`attribute` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`category_id`, `product_id`) VALUES
(1, 3),
(1, 6),
(2, 3),
(2, 6),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `product_id`, `customer_group_id`, `price`, `start`, `end`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(18, 1, 1, '100.0000', '2019-07-13', '2019-07-31', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 1, 2, '200.0000', '2019-05-01', '2019-07-31', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(40, 2, 1, '123.0000', '2019-07-13', '2019-07-31', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(52, 6, 1, '1222.0000', '2019-07-12', '2019-07-30', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(62, 3, 1, '100.0000', '2019-07-13', '2019-07-31', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(63, 3, 2, '200.0000', '2019-07-20', '2019-08-31', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_prices_view`
-- (See below for the actual view)
--
CREATE TABLE `product_prices_view` (
`id` int(11)
,`product_id` int(11)
,`customer_group_id` int(11)
,`price` decimal(15,4)
,`start` date
,`end` date
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`product` varchar(32)
,`customer_group` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `customer_id`, `rating_id`, `text`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, 2, 'nice product', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 04:16:36'),
(2, 1, 1, 5, 'excellent', 1, 0, '2019-02-09 09:09:42', 0, '0000-00-00 00:00:00'),
(3, 2, 2, 5, '123', 1, 0, '2019-06-29 04:11:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_reviews_view`
-- (See below for the actual view)
--
CREATE TABLE `product_reviews_view` (
`id` int(11)
,`product_id` int(11)
,`customer_id` int(11)
,`rating_id` int(11)
,`text` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`product` varchar(32)
,`customer` varchar(32)
,`rating` varchar(32)
,`rate` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `purchase_type_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `total_tax` decimal(15,4) NOT NULL,
  `purchase_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_type_id`, `vendor_id`, `total`, `total_tax`, `purchase_status_id`, `comment`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, '9770.0000', '2.0000', 1, 'dasd', 1, 0, '2019-06-08 08:11:23', 0, '2019-07-20 06:07:50'),
(2, 1, 2, '114.0000', '22.0000', 1, 'v', 1, 0, '2019-07-20 06:08:06', 0, '0000-00-00 00:00:00');

--
-- Triggers `purchases`
--
DELIMITER $$
CREATE TRIGGER `puchase_history_insert` AFTER INSERT ON `purchases` FOR EACH ROW INSERT INTO purchase_histories SET 
id=NEW.id,
purchase_status_id=NEW.purchase_status_id,
comment=NEW.comment,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `puchase_history_update` BEFORE UPDATE ON `purchases` FOR EACH ROW INSERT INTO purchase_histories SET 
id=OLD.id,
purchase_status_id=OLD.purchase_status_id,
comment=OLD.comment,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `purchases_view`
-- (See below for the actual view)
--
CREATE TABLE `purchases_view` (
`id` int(11)
,`purchase_type_id` int(11)
,`vendor_id` int(11)
,`total` decimal(15,4)
,`total_tax` decimal(15,4)
,`purchase_status_id` int(11)
,`comment` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`purchase_type` varchar(32)
,`name` varchar(32)
,`email` varchar(96)
,`contact` varchar(15)
,`purchase_status` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_carts`
--

CREATE TABLE `purchase_carts` (
  `id` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(15,8) NOT NULL,
  `option` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax` decimal(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `purchase_carts_view`
-- (See below for the actual view)
--
CREATE TABLE `purchase_carts_view` (
`id` int(11)
,`token` varchar(128)
,`user_id` int(11)
,`product_id` int(11)
,`price` decimal(15,8)
,`option` text
,`quantity` decimal(15,4)
,`tax` decimal(15,8)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`user` varchar(32)
,`product` varchar(32)
,`product_image` text
);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_histories`
--

CREATE TABLE `purchase_histories` (
  `id` int(11) NOT NULL,
  `purchase_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_histories`
--

INSERT INTO `purchase_histories` (`id`, `purchase_status_id`, `comment`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, '', 1, 0, '2019-06-08 11:41:23', 0, '2019-06-08 11:41:23'),
(1, 1, '', 1, 0, '2019-07-17 15:35:07', 0, '2019-07-17 15:35:07'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:37:35', 0, '2019-07-17 15:37:35'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:53:35', 0, '2019-07-17 15:53:35'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:53:35', 0, '2019-07-17 15:53:35'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:53:35', 0, '2019-07-17 15:53:35'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:54:06', 0, '2019-07-17 15:54:06'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:54:07', 0, '2019-07-17 15:54:07'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:54:07', 0, '2019-07-17 15:54:07'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:55:28', 0, '2019-07-17 15:55:28'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:55:28', 0, '2019-07-17 15:55:28'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:55:28', 0, '2019-07-17 15:55:28'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:56:08', 0, '2019-07-17 15:56:08'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:56:08', 0, '2019-07-17 15:56:08'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:56:08', 0, '2019-07-17 15:56:08'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:56:34', 0, '2019-07-17 15:56:34'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:56:34', 0, '2019-07-17 15:56:34'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:56:34', 0, '2019-07-17 15:56:34'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:57:02', 0, '2019-07-17 15:57:02'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:57:02', 0, '2019-07-17 15:57:02'),
(1, 1, 'dasd', 1, 0, '2019-07-17 15:57:02', 0, '2019-07-17 15:57:02'),
(1, 1, 'dasd', 1, 0, '2019-07-17 22:38:18', 0, '2019-07-17 22:38:18'),
(1, 1, 'dasd', 1, 0, '2019-07-17 22:38:18', 0, '2019-07-17 22:38:18'),
(1, 1, 'dasd', 1, 0, '2019-07-17 22:38:18', 0, '2019-07-17 22:38:18'),
(1, 1, 'dasd', 1, 0, '2019-07-20 21:37:50', 0, '2019-07-20 21:37:50'),
(1, 1, 'dasd', 1, 0, '2019-07-20 21:37:50', 0, '2019-07-20 21:37:50'),
(1, 1, 'dasd', 1, 0, '2019-07-20 21:37:50', 0, '2019-07-20 21:37:50'),
(2, 1, 'v', 1, 0, '2019-07-20 21:38:06', 0, '2019-07-20 21:38:06'),
(2, 1, 'v', 1, 0, '2019-07-20 21:38:06', 0, '2019-07-20 21:38:06'),
(2, 1, 'v', 1, 0, '2019-07-20 21:38:06', 0, '2019-07-20 21:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(15,8) NOT NULL,
  `quantity` decimal(15,8) NOT NULL,
  `tax` decimal(15,8) NOT NULL,
  `total` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`purchase_id`, `product_id`, `price`, `quantity`, `tax`, `total`) VALUES
(1, 3, '222.00000000', '22.00000000', '2.00000000', '4884.00000000'),
(2, 3, '23.00000000', '2.00000000', '22.00000000', '46.00000000');

-- --------------------------------------------------------

--
-- Stand-in structure for view `purchase_products_view`
-- (See below for the actual view)
--
CREATE TABLE `purchase_products_view` (
`purchase_id` int(11)
,`product_id` int(11)
,`price` decimal(15,8)
,`quantity` decimal(15,8)
,`tax` decimal(15,8)
,`total` decimal(15,8)
,`product` varchar(32)
,`product_image` text
);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_statuses`
--

CREATE TABLE `purchase_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_statuses`
--

INSERT INTO `purchase_statuses` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Pending', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-17 10:55:54'),
(2, 'processed', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-17 10:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_totals`
--

CREATE TABLE `purchase_totals` (
  `purchase_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_totals`
--

INSERT INTO `purchase_totals` (`purchase_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 'total_tax', 'Total Tax', '2.0000', 0),
(1, 'total', 'Total', '9770.0000', 0),
(2, 'total_tax', 'Total Tax', '22.0000', 0),
(2, 'total', 'Total', '114.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_types`
--

CREATE TABLE `purchase_types` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_types`
--

INSERT INTO `purchase_types` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Default', 1, 0, '2019-05-01 05:50:14', 0, '2019-07-17 10:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `name`, `image`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Terrible', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-19 01:23:38'),
(2, 'Bad', '', 2, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-19 01:29:56'),
(3, 'Average', '', 3, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-24 06:17:27'),
(4, 'Very Good', '', 4, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-19 01:30:06'),
(5, 'Excellent', '', 5, 1, 0, '0000-00-00 00:00:00', 0, '2019-07-10 06:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `related_products`
--

INSERT INTO `related_products` (`product_id`, `related_id`) VALUES
(1, 9),
(1, 10),
(4, 5),
(9, 10),
(10, 9),
(5, 4),
(6, 3),
(6, 10),
(3, 3),
(3, 6),
(3, 10),
(3, 5),
(3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `code` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`code`, `key`, `value`, `serialized`) VALUES
('config', 'default_address', 'udaipur, rajasthan (IND)', 0),
('config', 'default_city', '1', 0),
('config', 'default_country', '99', 0),
('config', 'default_customer_group', '1', 0),
('config', 'default_date_format', 'Y-d-m', 0),
('config', 'default_date_time_format', 'Y-d-m h:i A', 0),
('config', 'default_decimal_place', '2', 0),
('config', 'default_email', 'ecom@gmail.com', 0),
('config', 'default_employee_group', '1', 0),
('config', 'default_length_class', '1', 0),
('config', 'default_location', '1', 0),
('config', 'default_name', 'ecom', 0),
('config', 'default_order_type', '1', 0),
('config', 'default_purchase_type', '1', 0),
('config', 'default_user_group', '1', 0),
('config', 'default_weight_class', '1', 0),
('config', 'default_zone', '1501', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `price` decimal(15,8) NOT NULL,
  `quantity` decimal(15,8) NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `reference` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `location_id`, `price`, `quantity`, `type`, `reference`, `reference_id`, `text`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 1, '100.00000000', '12.00000000', 'i', '', 0, '', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-19 07:46:15'),
(2, 1, 2, '0.00000000', '10.00000000', 'o', '', 0, '', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-19 07:46:24'),
(3, 1, 1, '100.00000000', '12.00000000', 'i', '', 0, '', 1, 0, '2019-07-19 06:42:09', 0, '0000-00-00 00:00:00'),
(4, 3, 2, '200.00000000', '10.00000000', 'i', '', 0, '', 1, 0, '2019-07-19 07:46:54', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `stocks_view`
-- (See below for the actual view)
--
CREATE TABLE `stocks_view` (
`id` int(11)
,`product_id` int(11)
,`location_id` int(11)
,`price` decimal(15,8)
,`quantity` decimal(15,8)
,`type` char(1)
,`reference` char(1)
,`reference_id` int(11)
,`text` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`product` varchar(32)
,`productImage` text
,`location` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `stock_statuses`
--

CREATE TABLE `stock_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_statuses`
--

INSERT INTO `stock_statuses` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'In Stock', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-19 07:20:00'),
(2, 'Out of Stock', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-19 07:19:57'),
(3, 'test', 1, 0, '2019-07-19 06:53:32', 0, '2019-07-19 07:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_classes`
--

INSERT INTO `tax_classes` (`id`, `name`, `description`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Taxable Goods', 'Taxable Goods', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 04:36:59'),
(2, 'Downloadable Products', 'Downloadable Products', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 04:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(15,4) NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `tax_class_id`, `name`, `rate`, `type`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'SGST', '10.0000', 'p', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:21'),
(2, 1, 'CGST', '8.0000', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tax_rates_view`
-- (See below for the actual view)
--
CREATE TABLE `tax_rates_view` (
`id` int(11)
,`tax_class_id` int(11)
,`name` varchar(32)
,`rate` decimal(15,4)
,`type` char(1)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`tax_class` varchar(32)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalsalesdate`
-- (See below for the actual view)
--
CREATE TABLE `totalsalesdate` (
`totalPrice` decimal(37,8)
,`totalQty` decimal(37,8)
,`totalTax` decimal(37,8)
,`total` decimal(37,8)
,`date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalsalesday`
-- (See below for the actual view)
--
CREATE TABLE `totalsalesday` (
`totalPrice` decimal(37,8)
,`totalQty` decimal(37,8)
,`totalTax` decimal(37,8)
,`total` decimal(37,8)
,`day` varchar(9)
,`month` varchar(9)
,`year` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalsalesmonth`
-- (See below for the actual view)
--
CREATE TABLE `totalsalesmonth` (
`totalPrice` decimal(37,8)
,`totalQty` decimal(37,8)
,`totalTax` decimal(37,8)
,`total` decimal(37,8)
,`month` varchar(9)
,`year` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalsalesyear`
-- (See below for the actual view)
--
CREATE TABLE `totalsalesyear` (
`totalPrice` decimal(37,8)
,`totalQty` decimal(37,8)
,`totalTax` decimal(37,8)
,`total` decimal(37,8)
,`year` int(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `image`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Men', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:24'),
(2, 'Women', '', 2, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-19 01:47:06'),
(3, 'Children', '', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-24 06:17:34'),
(4, 'Infant', '', 3, 1, 0, '2019-06-19 01:48:29', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `group_id`, `name`, `email`, `contact`, `password`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'nadim', 'nadim.sheikh.07@gmail.com', '7737033665', '202cb962ac59075b964b07152d234b70', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-01-28 10:09:13'),
(2, 3, 'ali', 'ali@gmail.com', '123456', 'd41d8cd98f00b204e9800998ecf8427e', '', 1, 0, '2019-01-28 09:49:43', 0, '2019-07-17 07:39:21'),
(3, 2, 'sahil', 'sahil@gmail.co', '123456456', '123', '', 1, 0, '2019-01-30 11:21:59', 0, '0000-00-00 00:00:00'),
(4, 1, 'nadim', 'admin@gmail.com', '123456123', '21232f297a57a5a743894a0e4a801fc3', '', 1, 0, '2019-02-02 11:20:14', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `users_view`
-- (See below for the actual view)
--
CREATE TABLE `users_view` (
`id` int(11)
,`group_id` int(11)
,`name` varchar(32)
,`email` varchar(96)
,`contact` varchar(15)
,`password` varchar(40)
,`image` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`group_name` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'admin', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-21 05:27:52'),
(2, 'user', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-01-28 10:30:25'),
(3, 'demo', '', 1, 0, '2019-06-21 05:29:39', 0, '2019-06-21 05:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(24, 4, '69CPE5Rk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 'zT26fiHl', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_sessions_view`
-- (See below for the actual view)
--
CREATE TABLE `user_sessions_view` (
`id` int(11)
,`user_id` int(11)
,`token` varchar(255)
,`created_at` datetime
,`updated_at` datetime
,`user` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `group_id`, `name`, `email`, `contact`, `password`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 2, 'Ali', 'ali@gmail.com', '1234567890', '', '', 1, 0, '0000-00-00 00:00:00', 0, '2019-07-17 11:43:38'),
(2, 2, 'aa', 'aa@gmail.com', '1234466666', '', '', 1, 0, '2019-07-17 07:14:18', 0, '2019-07-17 07:23:17');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vendors_view`
-- (See below for the actual view)
--
CREATE TABLE `vendors_view` (
`id` int(11)
,`group_id` int(11)
,`name` varchar(32)
,`email` varchar(96)
,`contact` varchar(15)
,`password` varchar(40)
,`image` text
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`group_name` varchar(32)
);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_groups`
--

CREATE TABLE `vendor_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vendor_groups`
--

INSERT INTO `vendor_groups` (`id`, `name`, `image`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Employee A', '', 0, 0, '0000-00-00 00:00:00', 0, '2019-07-17 11:39:43'),
(2, 'B', '', 1, 0, '2019-07-17 11:41:27', 0, '2019-07-17 01:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `weight_classes`
--

CREATE TABLE `weight_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,8) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `weight_classes`
--

INSERT INTO `weight_classes` (`id`, `name`, `unit`, `value`, `sort_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Kilogram', 'kg', '1.00000000', 1, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-08 08:11:24'),
(2, 'Gram', 'g', '1000.00000000', 0, 1, 0, '0000-00-00 00:00:00', 0, '2019-06-29 04:44:03'),
(3, 'Pound', 'lb', '2.20460000', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'Ounce', 'oz', '35.27400000', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 1, 'Badghis', 'BDG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 1, 'Baghlan', 'BGL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 1, 'Balkh', 'BAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 1, 'Bamian', 'BAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 1, 'Farah', 'FRA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 1, 'Faryab', 'FYB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 1, 'Ghazni', 'GHA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 1, 'Ghowr', 'GHO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 1, 'Helmand', 'HEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 1, 'Herat', 'HER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 1, 'Jowzjan', 'JOW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 1, 'Kabul', 'KAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 1, 'Kandahar', 'KAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 1, 'Kapisa', 'KAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 1, 'Khost', 'KHO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 1, 'Konar', 'KNR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 1, 'Kondoz', 'KDZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 1, 'Laghman', 'LAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(20, 1, 'Lowgar', 'LOW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(21, 1, 'Nangrahar', 'NAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(22, 1, 'Nimruz', 'NIM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(23, 1, 'Nurestan', 'NUR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(24, 1, 'Oruzgan', 'ORU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(25, 1, 'Paktia', 'PIA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(26, 1, 'Paktika', 'PKA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(27, 1, 'Parwan', 'PAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(28, 1, 'Samangan', 'SAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(29, 1, 'Sar-e Pol', 'SAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(30, 1, 'Takhar', 'TAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(31, 1, 'Wardak', 'WAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(32, 1, 'Zabol', 'ZAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(33, 2, 'Berat', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(34, 2, 'Bulqize', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(35, 2, 'Delvine', 'DL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(36, 2, 'Devoll', 'DV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(37, 2, 'Diber', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(38, 2, 'Durres', 'DR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(39, 2, 'Elbasan', 'EL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(40, 2, 'Kolonje', 'ER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(41, 2, 'Fier', 'FR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(42, 2, 'Gjirokaster', 'GJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(43, 2, 'Gramsh', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(44, 2, 'Has', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(45, 2, 'Kavaje', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(46, 2, 'Kurbin', 'KB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(47, 2, 'Kucove', 'KC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(48, 2, 'Korce', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(49, 2, 'Kruje', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(50, 2, 'Kukes', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(51, 2, 'Librazhd', 'LB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(52, 2, 'Lezhe', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(53, 2, 'Lushnje', 'LU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(54, 2, 'Malesi e Madhe', 'MM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(55, 2, 'Mallakaster', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(56, 2, 'Mat', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(57, 2, 'Mirdite', 'MR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(58, 2, 'Peqin', 'PQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(59, 2, 'Permet', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(60, 2, 'Pogradec', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(61, 2, 'Puke', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(62, 2, 'Shkoder', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(63, 2, 'Skrapar', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(64, 2, 'Sarande', 'SR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(65, 2, 'Tepelene', 'TE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(66, 2, 'Tropoje', 'TP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(67, 2, 'Tirane', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(68, 2, 'Vlore', 'VL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(69, 3, 'Adrar', 'ADR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(70, 3, 'Ain Defla', 'ADE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(71, 3, 'Ain Temouchent', 'ATE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(72, 3, 'Alger', 'ALG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(73, 3, 'Annaba', 'ANN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(74, 3, 'Batna', 'BAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(75, 3, 'Bechar', 'BEC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(76, 3, 'Bejaia', 'BEJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(77, 3, 'Biskra', 'BIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(78, 3, 'Blida', 'BLI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(80, 3, 'Bouira', 'BOA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(81, 3, 'Boumerdes', 'BMD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(82, 3, 'Chlef', 'CHL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(83, 3, 'Constantine', 'CON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(84, 3, 'Djelfa', 'DJE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(85, 3, 'El Bayadh', 'EBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(86, 3, 'El Oued', 'EOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(87, 3, 'El Tarf', 'ETA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(88, 3, 'Ghardaia', 'GHA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(89, 3, 'Guelma', 'GUE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(90, 3, 'Illizi', 'ILL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(91, 3, 'Jijel', 'JIJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(92, 3, 'Khenchela', 'KHE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(93, 3, 'Laghouat', 'LAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(94, 3, 'Muaskar', 'MUA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(95, 3, 'Medea', 'MED', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(96, 3, 'Mila', 'MIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(97, 3, 'Mostaganem', 'MOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(98, 3, 'M\'Sila', 'MSI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(99, 3, 'Naama', 'NAA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(100, 3, 'Oran', 'ORA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(101, 3, 'Ouargla', 'OUA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(103, 3, 'Relizane', 'REL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(104, 3, 'Saida', 'SAI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(105, 3, 'Setif', 'SET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(107, 3, 'Skikda', 'SKI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(108, 3, 'Souk Ahras', 'SAH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(109, 3, 'Tamanghasset', 'TAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(110, 3, 'Tebessa', 'TEB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(111, 3, 'Tiaret', 'TIA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(112, 3, 'Tindouf', 'TIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(113, 3, 'Tipaza', 'TIP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(114, 3, 'Tissemsilt', 'TIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(115, 3, 'Tizi Ouzou', 'TOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(116, 3, 'Tlemcen', 'TLE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(117, 4, 'Eastern', 'E', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(118, 4, 'Manu\'a', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(119, 4, 'Rose Island', 'R', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(120, 4, 'Swains Island', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(121, 4, 'Western', 'W', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(122, 5, 'Andorra la Vella', 'ALV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(123, 5, 'Canillo', 'CAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(124, 5, 'Encamp', 'ENC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(125, 5, 'Escaldes-Engordany', 'ESE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(126, 5, 'La Massana', 'LMA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(127, 5, 'Ordino', 'ORD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(128, 5, 'Sant Julia de Loria', 'SJL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(129, 6, 'Bengo', 'BGO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(130, 6, 'Benguela', 'BGU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(131, 6, 'Bie', 'BIE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(132, 6, 'Cabinda', 'CAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(133, 6, 'Cuando-Cubango', 'CCU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(134, 6, 'Cuanza Norte', 'CNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(135, 6, 'Cuanza Sul', 'CUS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(136, 6, 'Cunene', 'CNN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(137, 6, 'Huambo', 'HUA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(138, 6, 'Huila', 'HUI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(139, 6, 'Luanda', 'LUA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(140, 6, 'Lunda Norte', 'LNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(141, 6, 'Lunda Sul', 'LSU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(142, 6, 'Malange', 'MAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(143, 6, 'Moxico', 'MOX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(144, 6, 'Namibe', 'NAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(145, 6, 'Uige', 'UIG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(146, 6, 'Zaire', 'ZAI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(147, 9, 'Saint George', 'ASG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(148, 9, 'Saint John', 'ASJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(149, 9, 'Saint Mary', 'ASM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(150, 9, 'Saint Paul', 'ASL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(151, 9, 'Saint Peter', 'ASR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(152, 9, 'Saint Philip', 'ASH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(153, 9, 'Barbuda', 'BAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(154, 9, 'Redonda', 'RED', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(156, 10, 'Buenos Aires', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(157, 10, 'Catamarca', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(158, 10, 'Chaco', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(159, 10, 'Chubut', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(160, 10, 'Cordoba', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(161, 10, 'Corrientes', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(162, 10, 'Distrito Federal', 'DF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(163, 10, 'Entre Rios', 'ER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(164, 10, 'Formosa', 'FO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(165, 10, 'Jujuy', 'JU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(166, 10, 'La Pampa', 'LP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(167, 10, 'La Rioja', 'LR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(168, 10, 'Mendoza', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(169, 10, 'Misiones', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(170, 10, 'Neuquen', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(171, 10, 'Rio Negro', 'RN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(172, 10, 'Salta', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(173, 10, 'San Juan', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(174, 10, 'San Luis', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(175, 10, 'Santa Cruz', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(176, 10, 'Santa Fe', 'SF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(177, 10, 'Santiago del Estero', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(178, 10, 'Tierra del Fuego', 'TF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(179, 10, 'Tucuman', 'TU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(180, 11, 'Aragatsotn', 'AGT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(181, 11, 'Ararat', 'ARR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(182, 11, 'Armavir', 'ARM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(183, 11, 'Geghark\'unik\'', 'GEG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(184, 11, 'Kotayk\'', 'KOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(185, 11, 'Lorri', 'LOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(186, 11, 'Shirak', 'SHI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(187, 11, 'Syunik\'', 'SYU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(188, 11, 'Tavush', 'TAV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(189, 11, 'Vayots\' Dzor', 'VAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(190, 11, 'Yerevan', 'YER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(191, 13, 'Australian Capital Territory', 'ACT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(192, 13, 'New South Wales', 'NSW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(193, 13, 'Northern Territory', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(194, 13, 'Queensland', 'QLD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(195, 13, 'South Australia', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(196, 13, 'Tasmania', 'TAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(197, 13, 'Victoria', 'VIC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(198, 13, 'Western Australia', 'WA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(199, 14, 'Burgenland', 'BUR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(200, 14, 'Kärnten', 'KAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(201, 14, 'Niederösterreich', 'NOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(202, 14, 'Oberösterreich', 'OOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(203, 14, 'Salzburg', 'SAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(204, 14, 'Steiermark', 'STE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(205, 14, 'Tirol', 'TIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(206, 14, 'Vorarlberg', 'VOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(207, 14, 'Wien', 'WIE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(208, 15, 'Ali Bayramli', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(209, 15, 'Abseron', 'ABS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(210, 15, 'AgcabAdi', 'AGC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(211, 15, 'Agdam', 'AGM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(212, 15, 'Agdas', 'AGS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(213, 15, 'Agstafa', 'AGA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(214, 15, 'Agsu', 'AGU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(215, 15, 'Astara', 'AST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(216, 15, 'Baki', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(217, 15, 'BabAk', 'BAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(218, 15, 'BalakAn', 'BAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(219, 15, 'BArdA', 'BAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(220, 15, 'Beylaqan', 'BEY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(221, 15, 'Bilasuvar', 'BIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(222, 15, 'Cabrayil', 'CAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(223, 15, 'Calilabab', 'CAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(224, 15, 'Culfa', 'CUL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(225, 15, 'Daskasan', 'DAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(226, 15, 'Davaci', 'DAV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(227, 15, 'Fuzuli', 'FUZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(228, 15, 'Ganca', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(229, 15, 'Gadabay', 'GAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(230, 15, 'Goranboy', 'GOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(231, 15, 'Goycay', 'GOY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(232, 15, 'Haciqabul', 'HAC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(233, 15, 'Imisli', 'IMI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(234, 15, 'Ismayilli', 'ISM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(235, 15, 'Kalbacar', 'KAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(236, 15, 'Kurdamir', 'KUR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(237, 15, 'Lankaran', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(238, 15, 'Lacin', 'LAC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(239, 15, 'Lankaran', 'LAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(240, 15, 'Lerik', 'LER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(241, 15, 'Masalli', 'MAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(242, 15, 'Mingacevir', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(243, 15, 'Naftalan', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(244, 15, 'Neftcala', 'NEF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(245, 15, 'Oguz', 'OGU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(246, 15, 'Ordubad', 'ORD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(247, 15, 'Qabala', 'QAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(248, 15, 'Qax', 'QAX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(249, 15, 'Qazax', 'QAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(250, 15, 'Qobustan', 'QOB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(251, 15, 'Quba', 'QBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(252, 15, 'Qubadli', 'QBI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(253, 15, 'Qusar', 'QUS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(254, 15, 'Saki', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(255, 15, 'Saatli', 'SAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(256, 15, 'Sabirabad', 'SAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(257, 15, 'Sadarak', 'SAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(258, 15, 'Sahbuz', 'SAH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(259, 15, 'Saki', 'SAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(260, 15, 'Salyan', 'SAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(261, 15, 'Sumqayit', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(262, 15, 'Samaxi', 'SMI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(263, 15, 'Samkir', 'SKR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(264, 15, 'Samux', 'SMX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(265, 15, 'Sarur', 'SAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(266, 15, 'Siyazan', 'SIY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(267, 15, 'Susa', 'SS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(268, 15, 'Susa', 'SUS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(269, 15, 'Tartar', 'TAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(270, 15, 'Tovuz', 'TOV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(271, 15, 'Ucar', 'UCA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(272, 15, 'Xankandi', 'XA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(273, 15, 'Xacmaz', 'XAC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(274, 15, 'Xanlar', 'XAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(275, 15, 'Xizi', 'XIZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(276, 15, 'Xocali', 'XCI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(277, 15, 'Xocavand', 'XVD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(278, 15, 'Yardimli', 'YAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(279, 15, 'Yevlax', 'YEV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(280, 15, 'Zangilan', 'ZAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(281, 15, 'Zaqatala', 'ZAQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(282, 15, 'Zardab', 'ZAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(283, 15, 'Naxcivan', 'NX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(284, 16, 'Acklins', 'ACK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(285, 16, 'Berry Islands', 'BER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(286, 16, 'Bimini', 'BIM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(287, 16, 'Black Point', 'BLK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(288, 16, 'Cat Island', 'CAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(289, 16, 'Central Abaco', 'CAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(290, 16, 'Central Andros', 'CAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(291, 16, 'Central Eleuthera', 'CEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(292, 16, 'City of Freeport', 'FRE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(293, 16, 'Crooked Island', 'CRO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(294, 16, 'East Grand Bahama', 'EGB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(295, 16, 'Exuma', 'EXU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(296, 16, 'Grand Cay', 'GRD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(297, 16, 'Harbour Island', 'HAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(298, 16, 'Hope Town', 'HOP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(299, 16, 'Inagua', 'INA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(300, 16, 'Long Island', 'LNG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(301, 16, 'Mangrove Cay', 'MAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(302, 16, 'Mayaguana', 'MAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(303, 16, 'Moore\'s Island', 'MOO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(304, 16, 'North Abaco', 'NAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(305, 16, 'North Andros', 'NAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(306, 16, 'North Eleuthera', 'NEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(307, 16, 'Ragged Island', 'RAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(308, 16, 'Rum Cay', 'RUM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(309, 16, 'San Salvador', 'SAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(310, 16, 'South Abaco', 'SAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(311, 16, 'South Andros', 'SAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(312, 16, 'South Eleuthera', 'SEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(313, 16, 'Spanish Wells', 'SWE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(314, 16, 'West Grand Bahama', 'WGB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(315, 17, 'Capital', 'CAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(316, 17, 'Central', 'CEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(317, 17, 'Muharraq', 'MUH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(318, 17, 'Northern', 'NOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(319, 17, 'Southern', 'SOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(320, 18, 'Barisal', 'BAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(321, 18, 'Chittagong', 'CHI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(322, 18, 'Dhaka', 'DHA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(323, 18, 'Khulna', 'KHU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(324, 18, 'Rajshahi', 'RAJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(325, 18, 'Sylhet', 'SYL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(326, 19, 'Christ Church', 'CC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(327, 19, 'Saint Andrew', 'AND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(328, 19, 'Saint George', 'GEO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(329, 19, 'Saint James', 'JAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(330, 19, 'Saint John', 'JOH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(331, 19, 'Saint Joseph', 'JOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(332, 19, 'Saint Lucy', 'LUC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(333, 19, 'Saint Michael', 'MIC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(334, 19, 'Saint Peter', 'PET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(335, 19, 'Saint Philip', 'PHI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(336, 19, 'Saint Thomas', 'THO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(337, 20, 'Brestskaya (Brest)', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(339, 20, 'Horad Minsk', 'HM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(342, 20, 'Minskaya', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(344, 21, 'Antwerpen', 'VAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(345, 21, 'Brabant Wallon', 'WBR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(346, 21, 'Hainaut', 'WHT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(347, 21, 'Liège', 'WLG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(348, 21, 'Limburg', 'VLI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(349, 21, 'Luxembourg', 'WLX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(350, 21, 'Namur', 'WNA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(352, 21, 'Vlaams Brabant', 'VBR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(353, 21, 'West-Vlaanderen', 'VWV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(354, 22, 'Belize', 'BZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(355, 22, 'Cayo', 'CY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(356, 22, 'Corozal', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(357, 22, 'Orange Walk', 'OW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(358, 22, 'Stann Creek', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(359, 22, 'Toledo', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(360, 23, 'Alibori', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(361, 23, 'Atakora', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(362, 23, 'Atlantique', 'AQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(363, 23, 'Borgou', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(364, 23, 'Collines', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(365, 23, 'Donga', 'DO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(366, 23, 'Kouffo', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(367, 23, 'Littoral', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(368, 23, 'Mono', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(369, 23, 'Oueme', 'OU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(370, 23, 'Plateau', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(371, 23, 'Zou', 'ZO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(372, 24, 'Devonshire', 'DS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(373, 24, 'Hamilton City', 'HC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(374, 24, 'Hamilton', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(375, 24, 'Paget', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(376, 24, 'Pembroke', 'PB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(377, 24, 'Saint George City', 'GC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(378, 24, 'Saint George\'s', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(379, 24, 'Sandys', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(380, 24, 'Smith\'s', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(381, 24, 'Southampton', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(382, 24, 'Warwick', 'WA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(383, 25, 'Bumthang', 'BUM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(384, 25, 'Chukha', 'CHU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(385, 25, 'Dagana', 'DAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(386, 25, 'Gasa', 'GAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(387, 25, 'Haa', 'HAA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(388, 25, 'Lhuntse', 'LHU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(389, 25, 'Mongar', 'MON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(390, 25, 'Paro', 'PAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(391, 25, 'Pemagatshel', 'PEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(392, 25, 'Punakha', 'PUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(394, 25, 'Samtse', 'SAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(395, 25, 'Sarpang', 'SAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(396, 25, 'Thimphu', 'THI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(397, 25, 'Trashigang', 'TRG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(398, 25, 'Trashiyangste', 'TRY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(399, 25, 'Trongsa', 'TRO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(400, 25, 'Tsirang', 'TSI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(401, 25, 'Wangdue Phodrang', 'WPH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(402, 25, 'Zhemgang', 'ZHE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(403, 26, 'Beni', 'BEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(404, 26, 'Chuquisaca', 'CHU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(405, 26, 'Cochabamba', 'COC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(406, 26, 'La Paz', 'LPZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(407, 26, 'Oruro', 'ORU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(408, 26, 'Pando', 'PAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(409, 26, 'Potosi', 'POT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(410, 26, 'Santa Cruz', 'SCZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(411, 26, 'Tarija', 'TAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(412, 27, 'Brcko district', 'BRO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(414, 27, 'Posavski Kanton', 'FPO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(421, 27, 'Kanton Sarajevo', 'FSA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(422, 27, 'Zapadnobosanska', 'FZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(423, 27, 'Banja Luka', 'SBL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(424, 27, 'Doboj', 'SDO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(425, 27, 'Bijeljina', 'SBI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(426, 27, 'Vlasenica', 'SVL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(428, 27, 'Foca', 'SFO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(429, 27, 'Trebinje', 'STR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(430, 28, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(431, 28, 'Ghanzi', 'GH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(432, 28, 'Kgalagadi', 'KD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(433, 28, 'Kgatleng', 'KT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(434, 28, 'Kweneng', 'KW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(435, 28, 'Ngamiland', 'NG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(436, 28, 'North East', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(437, 28, 'North West', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(438, 28, 'South East', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(439, 28, 'Southern', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(440, 30, 'Acre', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(441, 30, 'Alagoas', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(442, 30, 'Amapá', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(443, 30, 'Amazonas', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(444, 30, 'Bahia', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(445, 30, 'Ceará', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(446, 30, 'Distrito Federal', 'DF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(447, 30, 'Espírito Santo', 'ES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(448, 30, 'Goiás', 'GO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(449, 30, 'Maranhão', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(450, 30, 'Mato Grosso', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(451, 30, 'Mato Grosso do Sul', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(452, 30, 'Minas Gerais', 'MG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(453, 30, 'Pará', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(454, 30, 'Paraíba', 'PB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(455, 30, 'Paraná', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(456, 30, 'Pernambuco', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(457, 30, 'Piauí', 'PI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(458, 30, 'Rio de Janeiro', 'RJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(459, 30, 'Rio Grande do Norte', 'RN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(460, 30, 'Rio Grande do Sul', 'RS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(461, 30, 'Rondônia', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(462, 30, 'Roraima', 'RR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(463, 30, 'Santa Catarina', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(464, 30, 'São Paulo', 'SP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(465, 30, 'Sergipe', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(466, 30, 'Tocantins', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(467, 31, 'Peros Banhos', 'PB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(468, 31, 'Salomon Islands', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(469, 31, 'Nelsons Island', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(470, 31, 'Three Brothers', 'TB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(471, 31, 'Eagle Islands', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(472, 31, 'Danger Island', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(473, 31, 'Egmont Islands', 'EG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(474, 31, 'Diego Garcia', 'DG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(475, 32, 'Belait', 'BEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(476, 32, 'Brunei and Muara', 'BRM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(477, 32, 'Temburong', 'TEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(478, 32, 'Tutong', 'TUT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(479, 33, 'Blagoevgrad', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(480, 33, 'Burgas', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(481, 33, 'Dobrich', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(482, 33, 'Gabrovo', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(483, 33, 'Haskovo', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(484, 33, 'Kardjali', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(485, 33, 'Kyustendil', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(486, 33, 'Lovech', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(487, 33, 'Montana', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(488, 33, 'Pazardjik', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(489, 33, 'Pernik', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(490, 33, 'Pleven', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(491, 33, 'Plovdiv', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(492, 33, 'Razgrad', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(493, 33, 'Shumen', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(494, 33, 'Silistra', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(495, 33, 'Sliven', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(496, 33, 'Smolyan', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(497, 33, 'Sofia', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(498, 33, 'Sofia - town', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(499, 33, 'Stara Zagora', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(500, 33, 'Targovishte', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(501, 33, 'Varna', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(502, 33, 'Veliko Tarnovo', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(503, 33, 'Vidin', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(504, 33, 'Vratza', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(505, 33, 'Yambol', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(506, 34, 'Bale', 'BAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(507, 34, 'Bam', 'BAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(508, 34, 'Banwa', 'BAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(509, 34, 'Bazega', 'BAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(510, 34, 'Bougouriba', 'BOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(511, 34, 'Boulgou', 'BLG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(512, 34, 'Boulkiemde', 'BOK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(513, 34, 'Comoe', 'COM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(514, 34, 'Ganzourgou', 'GAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(515, 34, 'Gnagna', 'GNA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(516, 34, 'Gourma', 'GOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(517, 34, 'Houet', 'HOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(518, 34, 'Ioba', 'IOA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(519, 34, 'Kadiogo', 'KAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(520, 34, 'Kenedougou', 'KEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(521, 34, 'Komondjari', 'KOD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(522, 34, 'Kompienga', 'KOP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(523, 34, 'Kossi', 'KOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(524, 34, 'Koulpelogo', 'KOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(525, 34, 'Kouritenga', 'KOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(526, 34, 'Kourweogo', 'KOW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(527, 34, 'Leraba', 'LER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(528, 34, 'Loroum', 'LOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(529, 34, 'Mouhoun', 'MOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(530, 34, 'Nahouri', 'NAH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(531, 34, 'Namentenga', 'NAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(532, 34, 'Nayala', 'NAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(533, 34, 'Noumbiel', 'NOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(534, 34, 'Oubritenga', 'OUB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(535, 34, 'Oudalan', 'OUD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(536, 34, 'Passore', 'PAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(537, 34, 'Poni', 'PON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(538, 34, 'Sanguie', 'SAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(539, 34, 'Sanmatenga', 'SAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(540, 34, 'Seno', 'SEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(541, 34, 'Sissili', 'SIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(542, 34, 'Soum', 'SOM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(543, 34, 'Sourou', 'SOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(544, 34, 'Tapoa', 'TAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(545, 34, 'Tuy', 'TUY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(546, 34, 'Yagha', 'YAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(547, 34, 'Yatenga', 'YAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(548, 34, 'Ziro', 'ZIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(549, 34, 'Zondoma', 'ZOD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(550, 34, 'Zoundweogo', 'ZOW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(551, 35, 'Bubanza', 'BB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(552, 35, 'Bujumbura', 'BJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(553, 35, 'Bururi', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(554, 35, 'Cankuzo', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(555, 35, 'Cibitoke', 'CI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(556, 35, 'Gitega', 'GI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(557, 35, 'Karuzi', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(558, 35, 'Kayanza', 'KY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(559, 35, 'Kirundo', 'KI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(560, 35, 'Makamba', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(561, 35, 'Muramvya', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(562, 35, 'Muyinga', 'MY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(563, 35, 'Mwaro', 'MW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(564, 35, 'Ngozi', 'NG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(565, 35, 'Rutana', 'RT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(566, 35, 'Ruyigi', 'RY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(567, 36, 'Phnom Penh', 'PP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(569, 36, 'Pailin', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(570, 36, 'Keb', 'KB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(571, 36, 'Banteay Meanchey', 'BM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(572, 36, 'Battambang', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(573, 36, 'Kampong Cham', 'KM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(574, 36, 'Kampong Chhnang', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(575, 36, 'Kampong Speu', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(576, 36, 'Kampong Som', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(577, 36, 'Kampong Thom', 'KT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(578, 36, 'Kampot', 'KP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(579, 36, 'Kandal', 'KL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(580, 36, 'Kaoh Kong', 'KK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(581, 36, 'Kratie', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(582, 36, 'Mondul Kiri', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(583, 36, 'Oddar Meancheay', 'OM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(584, 36, 'Pursat', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(585, 36, 'Preah Vihear', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(586, 36, 'Prey Veng', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(587, 36, 'Ratanak Kiri', 'RK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(588, 36, 'Siemreap', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(589, 36, 'Stung Treng', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(590, 36, 'Svay Rieng', 'SR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(591, 36, 'Takeo', 'TK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(593, 37, 'Centre', 'CEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(594, 37, 'East (Est)', 'EST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(596, 37, 'Littoral', 'LIT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(597, 37, 'North (Nord)', 'NOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(599, 37, 'West (Ouest)', 'OUE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(600, 37, 'South (Sud)', 'SUD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(602, 38, 'Alberta', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(603, 38, 'British Columbia', 'BC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(604, 38, 'Manitoba', 'MB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(605, 38, 'New Brunswick', 'NB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(606, 38, 'Newfoundland and Labrador', 'NL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(607, 38, 'Northwest Territories', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(608, 38, 'Nova Scotia', 'NS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(609, 38, 'Nunavut', 'NU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(610, 38, 'Ontario', 'ON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(611, 38, 'Prince Edward Island', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(612, 38, 'Qu&eacute;bec', 'QC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(613, 38, 'Saskatchewan', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(614, 38, 'Yukon Territory', 'YT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(615, 39, 'Boa Vista', 'BV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(616, 39, 'Brava', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(618, 39, 'Maio', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(619, 39, 'Mosteiros', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(620, 39, 'Paul', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(621, 39, 'Porto Novo', 'PN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(622, 39, 'Praia', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(623, 39, 'Ribeira Grande', 'RG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(624, 39, 'Sal', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(625, 39, 'Santa Catarina', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(626, 39, 'Santa Cruz', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(627, 39, 'Sao Domingos', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(628, 39, 'Sao Filipe', 'SF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(629, 39, 'Sao Nicolau', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(630, 39, 'Sao Vicente', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(631, 39, 'Tarrafal', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(632, 40, 'Creek', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(633, 40, 'Eastern', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(634, 40, 'Midland', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(635, 40, 'South Town', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(636, 40, 'Spot Bay', 'SP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(637, 40, 'Stake Bay', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(638, 40, 'West End', 'WD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(639, 40, 'Western', 'WN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(641, 41, 'Basse-Kotto', 'BKO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(642, 41, 'Haute-Kotto', 'HKO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(643, 41, 'Haut-Mbomou', 'HMB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(644, 41, 'Kemo', 'KEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(645, 41, 'Lobaye', 'LOB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(647, 41, 'Mbomou', 'MBO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(648, 41, 'Nana-Mambere', 'NMM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(650, 41, 'Ouaka', 'OUK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(651, 41, 'Ouham', 'OUH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(652, 41, 'Ouham-Pende', 'OPE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(653, 41, 'Vakaga', 'VAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(654, 41, 'Nana-Grebizi', 'NGR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(655, 41, 'Sangha-Mbaere', 'SMB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(656, 41, 'Bangui', 'BAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(657, 42, 'Batha', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(658, 42, 'Biltine', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(660, 42, 'Chari-Baguirmi', 'CB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(661, 42, 'Guera', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(662, 42, 'Kanem', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(663, 42, 'Lac', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(664, 42, 'Logone Occidental', 'LC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(665, 42, 'Logone Oriental', 'LR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(666, 42, 'Mayo-Kebbi', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(667, 42, 'Moyen-Chari', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(668, 42, 'Ouaddai', 'OU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(669, 42, 'Salamat', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(670, 42, 'Tandjile', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(672, 43, 'Antofagasta', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(673, 43, 'Araucania', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(674, 43, 'Atacama', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(675, 43, 'Bio-Bio', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(676, 43, 'Coquimbo', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(678, 43, 'Los Lagos', 'LL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(680, 43, 'Maule', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(681, 43, 'Region Metropolitana', 'RM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(682, 43, 'Tarapaca', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(683, 43, 'Valparaiso', 'VS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(684, 44, 'Anhui', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(685, 44, 'Beijing', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(686, 44, 'Chongqing', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(687, 44, 'Fujian', 'FU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(688, 44, 'Gansu', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(689, 44, 'Guangdong', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(690, 44, 'Guangxi', 'GX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(691, 44, 'Guizhou', 'GZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(692, 44, 'Hainan', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(693, 44, 'Hebei', 'HB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(694, 44, 'Heilongjiang', 'HL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(695, 44, 'Henan', 'HE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(696, 44, 'Hong Kong', 'HK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(697, 44, 'Hubei', 'HU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(698, 44, 'Hunan', 'HN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(699, 44, 'Inner Mongolia', 'IM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(700, 44, 'Jiangsu', 'JI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(701, 44, 'Jiangxi', 'JX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(702, 44, 'Jilin', 'JL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(703, 44, 'Liaoning', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(704, 44, 'Macau', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(705, 44, 'Ningxia', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(706, 44, 'Shaanxi', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(707, 44, 'Shandong', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(708, 44, 'Shanghai', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(709, 44, 'Shanxi', 'SX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(710, 44, 'Sichuan', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(711, 44, 'Tianjin', 'TI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(712, 44, 'Xinjiang', 'XI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(713, 44, 'Yunnan', 'YU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(714, 44, 'Zhejiang', 'ZH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(715, 46, 'Direction Island', 'D', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(716, 46, 'Home Island', 'H', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(717, 46, 'Horsburgh Island', 'O', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(718, 46, 'South Island', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(719, 46, 'West Island', 'W', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(720, 47, 'Amazonas', 'AMZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(721, 47, 'Antioquia', 'ANT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(722, 47, 'Arauca', 'ARA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(723, 47, 'Atlantico', 'ATL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(724, 47, 'Bogota D.C.', 'BDC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(725, 47, 'Bolivar', 'BOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(726, 47, 'Boyaca', 'BOY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(727, 47, 'Caldas', 'CAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(728, 47, 'Caqueta', 'CAQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(729, 47, 'Casanare', 'CAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(730, 47, 'Cauca', 'CAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(731, 47, 'Cesar', 'CES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(732, 47, 'Choco', 'CHO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(733, 47, 'Cordoba', 'COR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(734, 47, 'Cundinamarca', 'CAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(735, 47, 'Guainia', 'GNA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(736, 47, 'Guajira', 'GJR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(737, 47, 'Guaviare', 'GVR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(738, 47, 'Huila', 'HUI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(739, 47, 'Magdalena', 'MAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(740, 47, 'Meta', 'MET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(741, 47, 'Narino', 'NAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(742, 47, 'Norte de Santander', 'NDS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(743, 47, 'Putumayo', 'PUT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(744, 47, 'Quindio', 'QUI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(745, 47, 'Risaralda', 'RIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(746, 47, 'San Andres y Providencia', 'SAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(747, 47, 'Santander', 'SAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(748, 47, 'Sucre', 'SUC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(749, 47, 'Tolima', 'TOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(750, 47, 'Valle del Cauca', 'VDC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(751, 47, 'Vaupes', 'VAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(752, 47, 'Vichada', 'VIC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(753, 48, 'Grande Comore', 'G', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(754, 48, 'Anjouan', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(755, 48, 'Moheli', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(756, 49, 'Bouenza', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(757, 49, 'Brazzaville', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(758, 49, 'Cuvette', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(759, 49, 'Cuvette-Ouest', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(760, 49, 'Kouilou', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(761, 49, 'Lekoumou', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(762, 49, 'Likouala', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(763, 49, 'Niari', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(764, 49, 'Plateaux', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(765, 49, 'Pool', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(766, 49, 'Sangha', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(767, 50, 'Pukapuka', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(768, 50, 'Rakahanga', 'RK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(769, 50, 'Manihiki', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(770, 50, 'Penrhyn', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(771, 50, 'Nassau Island', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(772, 50, 'Surwarrow', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(773, 50, 'Palmerston', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(774, 50, 'Aitutaki', 'AI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(775, 50, 'Manuae', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(776, 50, 'Takutea', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(777, 50, 'Mitiaro', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(778, 50, 'Atiu', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(779, 50, 'Mauke', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(780, 50, 'Rarotonga', 'RR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(781, 50, 'Mangaia', 'MG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(782, 51, 'Alajuela', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(783, 51, 'Cartago', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(784, 51, 'Guanacaste', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(785, 51, 'Heredia', 'HE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(786, 51, 'Limon', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(787, 51, 'Puntarenas', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(788, 51, 'San Jose', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(789, 52, 'Abengourou', 'ABE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(790, 52, 'Abidjan', 'ABI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(791, 52, 'Aboisso', 'ABO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(792, 52, 'Adiake', 'ADI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(793, 52, 'Adzope', 'ADZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(794, 52, 'Agboville', 'AGB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(795, 52, 'Agnibilekrou', 'AGN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(796, 52, 'Alepe', 'ALE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(797, 52, 'Bocanda', 'BOC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(798, 52, 'Bangolo', 'BAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(799, 52, 'Beoumi', 'BEO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(800, 52, 'Biankouma', 'BIA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(801, 52, 'Bondoukou', 'BDK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(802, 52, 'Bongouanou', 'BGN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(803, 52, 'Bouafle', 'BFL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(804, 52, 'Bouake', 'BKE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(805, 52, 'Bouna', 'BNA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(806, 52, 'Boundiali', 'BDL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(807, 52, 'Dabakala', 'DKL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(808, 52, 'Dabou', 'DBU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(809, 52, 'Daloa', 'DAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(810, 52, 'Danane', 'DAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(811, 52, 'Daoukro', 'DAO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(812, 52, 'Dimbokro', 'DIM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(813, 52, 'Divo', 'DIV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(814, 52, 'Duekoue', 'DUE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(815, 52, 'Ferkessedougou', 'FER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(816, 52, 'Gagnoa', 'GAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(817, 52, 'Grand-Bassam', 'GBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(818, 52, 'Grand-Lahou', 'GLA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(819, 52, 'Guiglo', 'GUI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(820, 52, 'Issia', 'ISS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(821, 52, 'Jacqueville', 'JAC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(822, 52, 'Katiola', 'KAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(823, 52, 'Korhogo', 'KOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(824, 52, 'Lakota', 'LAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(825, 52, 'Man', 'MAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(826, 52, 'Mankono', 'MKN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(827, 52, 'Mbahiakro', 'MBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(828, 52, 'Odienne', 'ODI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(829, 52, 'Oume', 'OUM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(830, 52, 'Sakassou', 'SAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(831, 52, 'San-Pedro', 'SPE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(832, 52, 'Sassandra', 'SAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(833, 52, 'Seguela', 'SEG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(834, 52, 'Sinfra', 'SIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(835, 52, 'Soubre', 'SOU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(836, 52, 'Tabou', 'TAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(837, 52, 'Tanda', 'TAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(838, 52, 'Tiebissou', 'TIE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(839, 52, 'Tingrela', 'TIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(840, 52, 'Tiassale', 'TIA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(841, 52, 'Touba', 'TBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(842, 52, 'Toulepleu', 'TLP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(843, 52, 'Toumodi', 'TMD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(844, 52, 'Vavoua', 'VAV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(845, 52, 'Yamoussoukro', 'YAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(846, 52, 'Zuenoula', 'ZUE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(848, 53, 'Grad Zagreb', 'GZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(850, 53, 'Istarska', 'IS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(851, 53, 'Karlovačka', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(852, 53, 'Koprivničko-križevačka', 'KK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(854, 53, 'Ličko-senjska', 'LS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(855, 53, 'Međimurska', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(856, 53, 'Osječko-baranjska', 'OB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(857, 53, 'Požeško-slavonska', 'PS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(858, 53, 'Primorsko-goranska', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(859, 53, 'Šibensko-kninska', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(860, 53, 'Sisačko-moslavačka', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(861, 53, 'Brodsko-posavska', 'BP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(863, 53, 'Varaždinska', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(864, 53, 'Virovitičko-podravska', 'VP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(866, 53, 'Zadarska', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(867, 53, 'Zagrebačka', 'ZG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(868, 54, 'Camaguey', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(869, 54, 'Ciego de Avila', 'CD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(870, 54, 'Cienfuegos', 'CI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(871, 54, 'Ciudad de La Habana', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(872, 54, 'Granma', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(873, 54, 'Guantanamo', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(874, 54, 'Holguin', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(875, 54, 'Isla de la Juventud', 'IJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(876, 54, 'La Habana', 'LH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(877, 54, 'Las Tunas', 'LT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(878, 54, 'Matanzas', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(879, 54, 'Pinar del Rio', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(880, 54, 'Sancti Spiritus', 'SS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(881, 54, 'Santiago de Cuba', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(882, 54, 'Villa Clara', 'VC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(883, 55, 'Famagusta', 'F', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(884, 55, 'Kyrenia', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(885, 55, 'Larnaca', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(886, 55, 'Limassol', 'I', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(887, 55, 'Nicosia', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(888, 55, 'Paphos', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(889, 56, 'Ústecký', 'U', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(890, 56, 'Jihočeský', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(891, 56, 'Jihomoravský', 'B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(892, 56, 'Karlovarský', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(893, 56, 'Královehradecký', 'H', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(894, 56, 'Liberecký', 'L', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(895, 56, 'Moravskoslezský', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(896, 56, 'Olomoucký', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(897, 56, 'Pardubický', 'E', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(898, 56, 'Plzeňský', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(899, 56, 'Praha', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(900, 56, 'Středočeský', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(901, 56, 'Vysočina', 'J', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(902, 56, 'Zlínský', 'Z', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(903, 57, 'Arhus', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(904, 57, 'Bornholm', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(905, 57, 'Copenhagen', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(906, 57, 'Faroe Islands', 'FO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(907, 57, 'Frederiksborg', 'FR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(908, 57, 'Fyn', 'FY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(909, 57, 'Kobenhavn', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(910, 57, 'Nordjylland', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(911, 57, 'Ribe', 'RI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(912, 57, 'Ringkobing', 'RK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(913, 57, 'Roskilde', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(914, 57, 'Sonderjylland', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(915, 57, 'Storstrom', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(916, 57, 'Vejle', 'VK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(918, 57, 'Viborg', 'VB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(919, 58, '\'Ali Sabih', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(920, 58, 'Dikhil', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(921, 58, 'Djibouti', 'J', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(922, 58, 'Obock', 'O', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(923, 58, 'Tadjoura', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(924, 59, 'Saint Andrew Parish', 'AND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(925, 59, 'Saint David Parish', 'DAV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(926, 59, 'Saint George Parish', 'GEO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(927, 59, 'Saint John Parish', 'JOH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(928, 59, 'Saint Joseph Parish', 'JOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(929, 59, 'Saint Luke Parish', 'LUK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(930, 59, 'Saint Mark Parish', 'MAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(931, 59, 'Saint Patrick Parish', 'PAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(932, 59, 'Saint Paul Parish', 'PAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(933, 59, 'Saint Peter Parish', 'PET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(934, 60, 'Distrito Nacional', 'DN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(935, 60, 'Azua', 'AZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(936, 60, 'Baoruco', 'BC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(937, 60, 'Barahona', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(938, 60, 'Dajabon', 'DJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(939, 60, 'Duarte', 'DU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(940, 60, 'Elias Pina', 'EL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(941, 60, 'El Seybo', 'SY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(942, 60, 'Espaillat', 'ET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(943, 60, 'Hato Mayor', 'HM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(944, 60, 'Independencia', 'IN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(945, 60, 'La Altagracia', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(946, 60, 'La Romana', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(947, 60, 'La Vega', 'VE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(949, 60, 'Monsenor Nouel', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(950, 60, 'Monte Cristi', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(951, 60, 'Monte Plata', 'MP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(952, 60, 'Pedernales', 'PD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(953, 60, 'Peravia (Bani)', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(954, 60, 'Puerto Plata', 'PP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(955, 60, 'Salcedo', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(956, 60, 'Samana', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(957, 60, 'Sanchez Ramirez', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(958, 60, 'San Cristobal', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(959, 60, 'San Jose de Ocoa', 'JO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(960, 60, 'San Juan', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(961, 60, 'San Pedro de Macoris', 'PM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(962, 60, 'Santiago', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(963, 60, 'Santiago Rodriguez', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(964, 60, 'Santo Domingo', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(965, 60, 'Valverde', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(966, 61, 'Aileu', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(967, 61, 'Ainaro', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(968, 61, 'Baucau', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(969, 61, 'Bobonaro', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(970, 61, 'Cova Lima', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(971, 61, 'Dili', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(972, 61, 'Ermera', 'ER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(973, 61, 'Lautem', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(974, 61, 'Liquica', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(975, 61, 'Manatuto', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(976, 61, 'Manufahi', 'MF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(977, 61, 'Oecussi', 'OE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(978, 61, 'Viqueque', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(979, 62, 'Azuay', 'AZU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(980, 62, 'Bolivar', 'BOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(982, 62, 'Carchi', 'CAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(983, 62, 'Chimborazo', 'CHI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(984, 62, 'Cotopaxi', 'COT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(985, 62, 'El Oro', 'EOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(986, 62, 'Esmeraldas', 'ESM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(988, 62, 'Guayas', 'GUA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(989, 62, 'Imbabura', 'IMB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(990, 62, 'Loja', 'LOJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(991, 62, 'Los Rios', 'LRO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(992, 62, 'Manab&iacute;', 'MAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(993, 62, 'Morona Santiago', 'MSA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(994, 62, 'Napo', 'NAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(995, 62, 'Orellana', 'ORE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(996, 62, 'Pastaza', 'PAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(997, 62, 'Pichincha', 'PIC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(999, 62, 'Tungurahua', 'TUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1003, 63, 'Al Buhayrah', 'BHY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1004, 63, 'Al Fayyum', 'FYM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1005, 63, 'Al Gharbiyah', 'GBY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1006, 63, 'Al Iskandariyah', 'IDR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1008, 63, 'Al Jizah', 'JZH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1009, 63, 'Al Minufiyah', 'MFY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1010, 63, 'Al Minya', 'MNY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1011, 63, 'Al Qahirah', 'QHR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1015, 63, 'As Suways', 'SWY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1016, 63, 'Aswan', 'ASW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1017, 63, 'Asyut', 'ASY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1018, 63, 'Bani Suwayf', 'BSW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1019, 63, 'Bur Sa\'id', 'BSD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1020, 63, 'Dumyat', 'DMY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1021, 63, 'Janub Sina\'', 'JNS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1023, 63, 'Matruh', 'MAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1024, 63, 'Qina', 'QIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1025, 63, 'Shamal Sina\'', 'SHS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1026, 63, 'Suhaj', 'SUH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1027, 64, 'Ahuachapan', 'AH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1028, 64, 'Cabanas', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1029, 64, 'Chalatenango', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1030, 64, 'Cuscatlan', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1031, 64, 'La Libertad', 'LB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1032, 64, 'La Paz', 'PZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1033, 64, 'La Union', 'UN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1034, 64, 'Morazan', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1035, 64, 'San Miguel', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1036, 64, 'San Salvador', 'SS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1037, 64, 'San Vicente', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1038, 64, 'Santa Ana', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1039, 64, 'Sonsonate', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1040, 64, 'Usulutan', 'US', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1041, 65, 'Provincia Annobon', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1044, 65, 'Provincia Centro Sur', 'CS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1046, 65, 'Provincia Litoral', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1048, 66, 'Central (Maekel)', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1049, 66, 'Anseba (Keren)', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1052, 66, 'Southern (Debub)', 'DE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1069, 68, 'Afar', 'AF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1070, 68, 'Amhara', 'AH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1072, 68, 'Gambela', 'GB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1073, 68, 'Hariai', 'HR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1074, 68, 'Oromia', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1075, 68, 'Somali', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1077, 68, 'Tigray', 'TG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1078, 68, 'Addis Ababa', 'AA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1079, 68, 'Dire Dawa', 'DD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1080, 71, 'Central Division', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1081, 71, 'Northern Division', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1082, 71, 'Eastern Division', 'E', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1083, 71, 'Western Division', 'W', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1084, 71, 'Rotuma', 'R', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1089, 72, 'Lapin lääni', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1090, 72, 'Oulun lääni', 'OU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1114, 74, 'Ain', '01', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1115, 74, 'Aisne', '02', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1116, 74, 'Allier', '03', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1117, 74, 'Alpes de Haute Provence', '04', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1118, 74, 'Hautes-Alpes', '05', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1119, 74, 'Alpes Maritimes', '06', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1120, 74, 'Ard&egrave;che', '07', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1121, 74, 'Ardennes', '08', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1122, 74, 'Ari&egrave;ge', '09', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1123, 74, 'Aube', '10', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1124, 74, 'Aude', '11', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1125, 74, 'Aveyron', '12', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1127, 74, 'Calvados', '14', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1128, 74, 'Cantal', '15', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1129, 74, 'Charente', '16', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1130, 74, 'Charente Maritime', '17', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1131, 74, 'Cher', '18', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1132, 74, 'Corr&egrave;ze', '19', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1133, 74, 'Corse du Sud', '2A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1134, 74, 'Haute Corse', '2B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1137, 74, 'Creuse', '23', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1138, 74, 'Dordogne', '24', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1139, 74, 'Doubs', '25', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1140, 74, 'Dr&ocirc;me', '26', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1141, 74, 'Eure', '27', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1142, 74, 'Eure et Loir', '28', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1143, 74, 'Finist&egrave;re', '29', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1144, 74, 'Gard', '30', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1145, 74, 'Haute Garonne', '31', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1146, 74, 'Gers', '32', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1147, 74, 'Gironde', '33', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1148, 74, 'H&eacute;rault', '34', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1149, 74, 'Ille et Vilaine', '35', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1150, 74, 'Indre', '36', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1151, 74, 'Indre et Loire', '37', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1152, 74, 'Is&eacute;re', '38', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1153, 74, 'Jura', '39', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1154, 74, 'Landes', '40', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1155, 74, 'Loir et Cher', '41', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1156, 74, 'Loire', '42', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1157, 74, 'Haute Loire', '43', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1158, 74, 'Loire Atlantique', '44', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1159, 74, 'Loiret', '45', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1160, 74, 'Lot', '46', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1161, 74, 'Lot et Garonne', '47', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1162, 74, 'Loz&egrave;re', '48', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1163, 74, 'Maine et Loire', '49', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1164, 74, 'Manche', '50', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1165, 74, 'Marne', '51', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1166, 74, 'Haute Marne', '52', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1167, 74, 'Mayenne', '53', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1168, 74, 'Meurthe et Moselle', '54', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1169, 74, 'Meuse', '55', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1170, 74, 'Morbihan', '56', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1171, 74, 'Moselle', '57', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1172, 74, 'Ni&egrave;vre', '58', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1173, 74, 'Nord', '59', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1174, 74, 'Oise', '60', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1175, 74, 'Orne', '61', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1176, 74, 'Pas de Calais', '62', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1177, 74, 'Puy de D&ocirc;me', '63', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1181, 74, 'Bas Rhin', '67', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1182, 74, 'Haut Rhin', '68', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1183, 74, 'Rh&ocirc;ne', '69', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1186, 74, 'Sarthe', '72', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1187, 74, 'Savoie', '73', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1188, 74, 'Haute Savoie', '74', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1189, 74, 'Paris', '75', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1190, 74, 'Seine Maritime', '76', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1191, 74, 'Seine et Marne', '77', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1192, 74, 'Yvelines', '78', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1193, 74, 'Deux S&egrave;vres', '79', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1194, 74, 'Somme', '80', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1195, 74, 'Tarn', '81', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1196, 74, 'Tarn et Garonne', '82', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1197, 74, 'Var', '83', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1198, 74, 'Vaucluse', '84', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1199, 74, 'Vend&eacute;e', '85', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1200, 74, 'Vienne', '86', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1201, 74, 'Haute Vienne', '87', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1202, 74, 'Vosges', '88', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1203, 74, 'Yonne', '89', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1204, 74, 'Territoire de Belfort', '90', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1205, 74, 'Essonne', '91', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1206, 74, 'Hauts de Seine', '92', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1207, 74, 'Seine St-Denis', '93', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1208, 74, 'Val de Marne', '94', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1209, 74, 'Val d\'Oise', '95', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1210, 76, 'Archipel des Marquises', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1211, 76, 'Archipel des Tuamotu', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1212, 76, 'Archipel des Tubuai', 'I', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1213, 76, 'Iles du Vent', 'V', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1215, 77, 'Iles Crozet', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1216, 77, 'Iles Kerguelen', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1217, 77, 'Ile Amsterdam', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1218, 77, 'Ile Saint-Paul', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1219, 77, 'Adelie Land', 'D', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1220, 78, 'Estuaire', 'ES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1221, 78, 'Haut-Ogooue', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1222, 78, 'Moyen-Ogooue', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1223, 78, 'Ngounie', 'NG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1224, 78, 'Nyanga', 'NY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1226, 78, 'Ogooue-Lolo', 'OL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1227, 78, 'Ogooue-Maritime', 'OM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1228, 78, 'Woleu-Ntem', 'WN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1229, 79, 'Banjul', 'BJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1230, 79, 'Basse', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1231, 79, 'Brikama', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1232, 79, 'Janjangbure', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1233, 79, 'Kanifeng', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1234, 79, 'Kerewan', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1235, 79, 'Kuntaur', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1236, 79, 'Mansakonko', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1237, 79, 'Lower River', 'LR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1238, 79, 'Central River', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1239, 79, 'North Bank', 'NB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1240, 79, 'Upper River', 'UR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1241, 79, 'Western', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1242, 80, 'Abkhazia', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1243, 80, 'Ajaria', 'AJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1244, 80, 'Tbilisi', 'TB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1245, 80, 'Guria', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1246, 80, 'Imereti', 'IM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1247, 80, 'Kakheti', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1248, 80, 'Kvemo Kartli', 'KK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1253, 80, 'Shida Kartli', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1254, 81, 'Baden-Württemberg', 'BAW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1255, 81, 'Bayern', 'BAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1256, 81, 'Berlin', 'BER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1257, 81, 'Brandenburg', 'BRG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1258, 81, 'Bremen', 'BRE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1259, 81, 'Hamburg', 'HAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1260, 81, 'Hessen', 'HES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1262, 81, 'Niedersachsen', 'NDS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1265, 81, 'Saarland', 'SAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1266, 81, 'Sachsen', 'SAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1269, 81, 'Thüringen', 'THE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1270, 82, 'Ashanti Region', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1272, 82, 'Central Region', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1273, 82, 'Eastern Region', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1274, 82, 'Greater Accra Region', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1275, 82, 'Northern Region', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1276, 82, 'Upper East Region', 'UE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1277, 82, 'Upper West Region', 'UW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1278, 82, 'Volta Region', 'VO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1279, 82, 'Western Region', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1280, 84, 'Attica', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1281, 84, 'Central Greece', 'CN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1282, 84, 'Central Macedonia', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1283, 84, 'Crete', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1285, 84, 'Epirus', 'EP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1286, 84, 'Ionian Islands', 'II', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1287, 84, 'North Aegean', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1288, 84, 'Peloponnesos', 'PP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1289, 84, 'South Aegean', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1290, 84, 'Thessaly', 'TH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1291, 84, 'West Greece', 'WG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1292, 84, 'West Macedonia', 'WM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1293, 85, 'Avannaa', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1294, 85, 'Tunu', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1295, 85, 'Kitaa', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1296, 86, 'Saint Andrew', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1297, 86, 'Saint David', 'D', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1298, 86, 'Saint George', 'G', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1299, 86, 'Saint John', 'J', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1300, 86, 'Saint Mark', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1301, 86, 'Saint Patrick', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1302, 86, 'Carriacou', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1303, 86, 'Petit Martinique', 'Q', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1304, 89, 'Alta Verapaz', 'AV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1305, 89, 'Baja Verapaz', 'BV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1306, 89, 'Chimaltenango', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1307, 89, 'Chiquimula', 'CQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1308, 89, 'El Peten', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1309, 89, 'El Progreso', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1310, 89, 'El Quiche', 'QC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1311, 89, 'Escuintla', 'ES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1312, 89, 'Guatemala', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1313, 89, 'Huehuetenango', 'HU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1314, 89, 'Izabal', 'IZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1315, 89, 'Jalapa', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1316, 89, 'Jutiapa', 'JU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1317, 89, 'Quetzaltenango', 'QZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1318, 89, 'Retalhuleu', 'RE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1319, 89, 'Sacatepequez', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1320, 89, 'San Marcos', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1321, 89, 'Santa Rosa', 'SR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1322, 89, 'Solola', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1323, 89, 'Suchitepequez', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1324, 89, 'Totonicapan', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1325, 89, 'Zacapa', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1326, 90, 'Conakry', 'CNK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1327, 90, 'Beyla', 'BYL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1328, 90, 'Boffa', 'BFA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1329, 90, 'Boke', 'BOK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1330, 90, 'Coyah', 'COY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1331, 90, 'Dabola', 'DBL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1332, 90, 'Dalaba', 'DLB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1333, 90, 'Dinguiraye', 'DGR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1334, 90, 'Dubreka', 'DBR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1335, 90, 'Faranah', 'FRN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1336, 90, 'Forecariah', 'FRC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1337, 90, 'Fria', 'FRI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1338, 90, 'Gaoual', 'GAO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1339, 90, 'Gueckedou', 'GCD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1340, 90, 'Kankan', 'KNK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1341, 90, 'Kerouane', 'KRN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1342, 90, 'Kindia', 'KND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1343, 90, 'Kissidougou', 'KSD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1344, 90, 'Koubia', 'KBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1345, 90, 'Koundara', 'KDA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1346, 90, 'Kouroussa', 'KRA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1347, 90, 'Labe', 'LAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1348, 90, 'Lelouma', 'LLM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1349, 90, 'Lola', 'LOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1350, 90, 'Macenta', 'MCT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1351, 90, 'Mali', 'MAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1352, 90, 'Mamou', 'MAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1353, 90, 'Mandiana', 'MAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1354, 90, 'Nzerekore', 'NZR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1355, 90, 'Pita', 'PIT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1356, 90, 'Siguiri', 'SIG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1357, 90, 'Telimele', 'TLM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1358, 90, 'Tougue', 'TOG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1359, 90, 'Yomou', 'YOM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1360, 91, 'Bafata Region', 'BF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1361, 91, 'Biombo Region', 'BB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1362, 91, 'Bissau Region', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1363, 91, 'Bolama Region', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1364, 91, 'Cacheu Region', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1365, 91, 'Gabu Region', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1366, 91, 'Oio Region', 'OI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1367, 91, 'Quinara Region', 'QU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1368, 91, 'Tombali Region', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1369, 92, 'Barima-Waini', 'BW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1371, 92, 'Demerara-Mahaica', 'DM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1374, 92, 'Mahaica-Berbice', 'MB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1376, 92, 'Potaro-Siparuni', 'PI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1379, 93, 'Artibonite', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1380, 93, 'Centre', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1381, 93, 'Grand\'Anse', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1382, 93, 'Nord', 'ND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1383, 93, 'Nord-Est', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1384, 93, 'Nord-Ouest', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1385, 93, 'Ouest', 'OU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1386, 93, 'Sud', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1387, 93, 'Sud-Est', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1388, 94, 'Flat Island', 'F', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1389, 94, 'McDonald Island', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1390, 94, 'Shag Island', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1391, 94, 'Heard Island', 'H', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1392, 95, 'Atlantida', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1393, 95, 'Choluteca', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1394, 95, 'Colon', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1395, 95, 'Comayagua', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1396, 95, 'Copan', 'CP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1397, 95, 'Cortes', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1398, 95, 'El Paraiso', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1399, 95, 'Francisco Morazan', 'FM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1400, 95, 'Gracias a Dios', 'GD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1401, 95, 'Intibuca', 'IN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1403, 95, 'La Paz', 'PZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1404, 95, 'Lempira', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1405, 95, 'Ocotepeque', 'OC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1406, 95, 'Olancho', 'OL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1407, 95, 'Santa Barbara', 'SB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1408, 95, 'Valle', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1409, 95, 'Yoro', 'YO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1419, 96, 'Islands New Territories', 'NIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1421, 96, 'North New Territories', 'NNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1423, 96, 'Sha Tin New Territories', 'NST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1424, 96, 'Tai Po New Territories', 'NTP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1467, 98, 'Austurland', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1469, 98, 'Norourland eystra', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1470, 98, 'Norourland vestra', 'NV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1471, 98, 'Suourland', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1472, 98, 'Suournes', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1473, 98, 'Vestfiroir', 'VF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1474, 98, 'Vesturland', 'VL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1476, 99, 'Andhra Pradesh', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1477, 99, 'Arunachal Pradesh', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1478, 99, 'Assam', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1479, 99, 'Bihar', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1480, 99, 'Chandigarh', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1482, 99, 'Daman and Diu', 'DM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1483, 99, 'Delhi', 'DE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1484, 99, 'Goa', 'GO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1485, 99, 'Gujarat', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1486, 99, 'Haryana', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1487, 99, 'Himachal Pradesh', 'HP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1488, 99, 'Jammu and Kashmir', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1489, 99, 'Karnataka', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1490, 99, 'Kerala', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1491, 99, 'Lakshadweep Islands', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1492, 99, 'Madhya Pradesh', 'MP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1493, 99, 'Maharashtra', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1494, 99, 'Manipur', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1495, 99, 'Meghalaya', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1496, 99, 'Mizoram', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1497, 99, 'Nagaland', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1498, 99, 'Orissa', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1499, 99, 'Puducherry', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1500, 99, 'Punjab', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1501, 99, 'Rajasthan', 'RA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1502, 99, 'Sikkim', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1503, 99, 'Tamil Nadu', 'TN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1504, 99, 'Tripura', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1505, 99, 'Uttar Pradesh', 'UP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1506, 99, 'West Bengal', 'WB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1507, 100, 'Aceh', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1508, 100, 'Bali', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1509, 100, 'Banten', 'BT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1510, 100, 'Bengkulu', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1511, 100, 'Kalimantan Utara', 'BD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1512, 100, 'Gorontalo', 'GO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1513, 100, 'Jakarta', 'JK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1514, 100, 'Jambi', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1515, 100, 'Jawa Barat', 'JB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1516, 100, 'Jawa Tengah', 'JT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1517, 100, 'Jawa Timur', 'JI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1518, 100, 'Kalimantan Barat', 'KB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1519, 100, 'Kalimantan Selatan', 'KS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1520, 100, 'Kalimantan Tengah', 'KT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1521, 100, 'Kalimantan Timur', 'KI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1523, 100, 'Lampung', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1524, 100, 'Maluku', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1525, 100, 'Maluku Utara', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1528, 100, 'Papua', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1529, 100, 'Riau', 'RI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1530, 100, 'Sulawesi Selatan', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1531, 100, 'Sulawesi Tengah', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1533, 100, 'Sulawesi Utara', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1534, 100, 'Sumatera Barat', 'SB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1535, 100, 'Sumatera Selatan', 'SS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1536, 100, 'Sumatera Utara', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1537, 100, 'Yogyakarta', 'YO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1538, 101, 'Tehran', 'TEH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1539, 101, 'Qom', 'QOM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1540, 101, 'Markazi', 'MKZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1541, 101, 'Qazvin', 'QAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1542, 101, 'Gilan', 'GIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1543, 101, 'Ardabil', 'ARD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1544, 101, 'Zanjan', 'ZAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1545, 101, 'East Azarbaijan', 'EAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1546, 101, 'West Azarbaijan', 'WEZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1547, 101, 'Kurdistan', 'KRD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1548, 101, 'Hamadan', 'HMD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1549, 101, 'Kermanshah', 'KRM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1550, 101, 'Ilam', 'ILM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1551, 101, 'Lorestan', 'LRS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1552, 101, 'Khuzestan', 'KZT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1555, 101, 'Bushehr', 'BSH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1556, 101, 'Fars', 'FAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1557, 101, 'Hormozgan', 'HRM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1559, 101, 'Kerman', 'KRB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1560, 101, 'Yazd', 'YZD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1561, 101, 'Esfahan', 'EFH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1562, 101, 'Semnan', 'SMN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1563, 101, 'Mazandaran', 'MZD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1564, 101, 'Golestan', 'GLS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1565, 101, 'North Khorasan', 'NKH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1566, 101, 'Razavi Khorasan', 'RKH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1567, 101, 'South Khorasan', 'SKH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1568, 102, 'Baghdad', 'BD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1569, 102, 'Salah ad Din', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1570, 102, 'Diyala', 'DY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1571, 102, 'Wasit', 'WS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1572, 102, 'Maysan', 'MY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1573, 102, 'Al Basrah', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1574, 102, 'Dhi Qar', 'DQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1575, 102, 'Al Muthanna', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1576, 102, 'Al Qadisyah', 'QA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1577, 102, 'Babil', 'BB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1578, 102, 'Al Karbala', 'KB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1579, 102, 'An Najaf', 'NJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1580, 102, 'Al Anbar', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1581, 102, 'Ninawa', 'NN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1582, 102, 'Dahuk', 'DH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1583, 102, 'Arbil', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1584, 102, 'At Ta\'mim', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1585, 102, 'As Sulaymaniyah', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1586, 103, 'Carlow', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1587, 103, 'Cavan', 'CV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1588, 103, 'Clare', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1589, 103, 'Cork', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1590, 103, 'Donegal', 'DO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1591, 103, 'Dublin', 'DU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1592, 103, 'Galway', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1593, 103, 'Kerry', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1594, 103, 'Kildare', 'KI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1595, 103, 'Kilkenny', 'KL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1596, 103, 'Laois', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1597, 103, 'Leitrim', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1598, 103, 'Limerick', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1599, 103, 'Longford', 'LO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1600, 103, 'Louth', 'LU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1601, 103, 'Mayo', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1602, 103, 'Meath', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1603, 103, 'Monaghan', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1604, 103, 'Offaly', 'OF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1605, 103, 'Roscommon', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1606, 103, 'Sligo', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1607, 103, 'Tipperary', 'TI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1608, 103, 'Waterford', 'WA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1609, 103, 'Westmeath', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1610, 103, 'Wexford', 'WX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1611, 103, 'Wicklow', 'WI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1612, 104, 'Be\'er Sheva', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1614, 104, 'Eilat and Arava', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1615, 104, 'Galil', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1616, 104, 'Haifa', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1617, 104, 'Jehuda Mountains', 'JM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1618, 104, 'Jerusalem', 'JE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1619, 104, 'Negev', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1620, 104, 'Semaria', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1621, 104, 'Sharon', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1643, 106, 'Clarendon Parish', 'CLA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1644, 106, 'Hanover Parish', 'HAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1645, 106, 'Kingston Parish', 'KIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1646, 106, 'Manchester Parish', 'MAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1647, 106, 'Portland Parish', 'POR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1648, 106, 'Saint Andrew Parish', 'AND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1649, 106, 'Saint Ann Parish', 'ANN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1652, 106, 'Saint James Parish', 'JAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1653, 106, 'Saint Mary Parish', 'MAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1654, 106, 'Saint Thomas Parish', 'THO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1655, 106, 'Trelawny Parish', 'TRL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1656, 106, 'Westmoreland Parish', 'WML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1657, 107, 'Aichi', 'AI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1658, 107, 'Akita', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1659, 107, 'Aomori', 'AO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1660, 107, 'Chiba', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1661, 107, 'Ehime', 'EH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1662, 107, 'Fukui', 'FK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1663, 107, 'Fukuoka', 'FU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1664, 107, 'Fukushima', 'FS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1665, 107, 'Gifu', 'GI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1666, 107, 'Gumma', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1667, 107, 'Hiroshima', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1668, 107, 'Hokkaido', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1669, 107, 'Hyogo', 'HY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1670, 107, 'Ibaraki', 'IB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1671, 107, 'Ishikawa', 'IS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1672, 107, 'Iwate', 'IW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1673, 107, 'Kagawa', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1674, 107, 'Kagoshima', 'KG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1675, 107, 'Kanagawa', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1676, 107, 'Kochi', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1677, 107, 'Kumamoto', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1678, 107, 'Kyoto', 'KY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1679, 107, 'Mie', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1680, 107, 'Miyagi', 'MY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1681, 107, 'Miyazaki', 'MZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1682, 107, 'Nagano', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1683, 107, 'Nagasaki', 'NG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1684, 107, 'Nara', 'NR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1685, 107, 'Niigata', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1686, 107, 'Oita', 'OI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1687, 107, 'Okayama', 'OK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1688, 107, 'Okinawa', 'ON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1689, 107, 'Osaka', 'OS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1690, 107, 'Saga', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1691, 107, 'Saitama', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1692, 107, 'Shiga', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1693, 107, 'Shimane', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1694, 107, 'Shizuoka', 'SZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1695, 107, 'Tochigi', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1696, 107, 'Tokushima', 'TS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1697, 107, 'Tokyo', 'TK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1698, 107, 'Tottori', 'TT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1699, 107, 'Toyama', 'TY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1700, 107, 'Wakayama', 'WA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1701, 107, 'Yamagata', 'YA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1702, 107, 'Yamaguchi', 'YM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1703, 107, 'Yamanashi', 'YN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1704, 108, '\'Amman', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1705, 108, 'Ajlun', 'AJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1706, 108, 'Al \'Aqabah', 'AA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1707, 108, 'Al Balqa\'', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1708, 108, 'Al Karak', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1709, 108, 'Al Mafraq', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1710, 108, 'At Tafilah', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1711, 108, 'Az Zarqa\'', 'AZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1712, 108, 'Irbid', 'IR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1713, 108, 'Jarash', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1714, 108, 'Ma\'an', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1715, 108, 'Madaba', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1716, 109, 'Almaty', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1717, 109, 'Almaty City', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1718, 109, 'Aqmola', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1719, 109, 'Aqtobe', 'AQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1720, 109, 'Astana City', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1721, 109, 'Atyrau', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1722, 109, 'Batys Qazaqstan', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1723, 109, 'Bayqongyr City', 'BY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1724, 109, 'Mangghystau', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1726, 109, 'Pavlodar', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1727, 109, 'Qaraghandy', 'QA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1728, 109, 'Qostanay', 'QO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1729, 109, 'Qyzylorda', 'QY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1732, 109, 'Zhambyl', 'ZH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1733, 110, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1734, 110, 'Coast', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1735, 110, 'Eastern', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1736, 110, 'Nairobi Area', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1737, 110, 'North Eastern', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1738, 110, 'Nyanza', 'NY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1739, 110, 'Rift Valley', 'RV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1740, 110, 'Western', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1741, 111, 'Abaiang', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1742, 111, 'Abemama', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1743, 111, 'Aranuka', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1744, 111, 'Arorae', 'AO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1745, 111, 'Banaba', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1746, 111, 'Beru', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1747, 111, 'Butaritari', 'bT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1748, 111, 'Kanton', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1749, 111, 'Kiritimati', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1750, 111, 'Kuria', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1751, 111, 'Maiana', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1752, 111, 'Makin', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1753, 111, 'Marakei', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1754, 111, 'Nikunau', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1755, 111, 'Nonouti', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1756, 111, 'Onotoa', 'ON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1757, 111, 'Tabiteuea', 'TT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1758, 111, 'Tabuaeran', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1759, 111, 'Tamana', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1760, 111, 'Tarawa', 'TW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1761, 111, 'Teraina', 'TE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1762, 112, 'Chagang-do', 'CHA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1767, 112, 'Kangwon-do', 'KAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1775, 113, 'Cheju-do', 'CD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1776, 113, 'Cholla-bukto', 'CB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1777, 113, 'Cholla-namdo', 'CN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1779, 113, 'Kangwon-do', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1781, 113, 'Kyonggi-do', 'KD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1782, 113, 'Kyongsang-bukto', 'KB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1783, 113, 'Kyongsang-namdo', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1788, 114, 'Al \'Asimah', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1789, 114, 'Al Ahmadi', 'AA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1790, 114, 'Al Farwaniyah', 'AF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1791, 114, 'Al Jahra\'', 'AJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1792, 114, 'Hawalli', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1793, 115, 'Bishkek', 'GB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1794, 115, 'Batken', 'B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1795, 115, 'Chu', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1796, 115, 'Jalal-Abad', 'J', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1797, 115, 'Naryn', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1798, 115, 'Osh', 'O', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1799, 115, 'Talas', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1800, 115, 'Ysyk-Kol', 'Y', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1801, 116, 'Vientiane', 'VT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1802, 116, 'Attapu', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1803, 116, 'Bokeo', 'BK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1804, 116, 'Bolikhamxai', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1805, 116, 'Champasak', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1806, 116, 'Houaphan', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1807, 116, 'Khammouan', 'KH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1808, 116, 'Louang Namtha', 'LM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1809, 116, 'Louangphabang', 'LP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1810, 116, 'Oudomxai', 'OU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1811, 116, 'Phongsali', 'PH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1812, 116, 'Salavan', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1813, 116, 'Savannakhet', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1814, 116, 'Vientiane', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1815, 116, 'Xaignabouli', 'XA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1816, 116, 'Xekong', 'XE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1817, 116, 'Xiangkhoang', 'XI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1818, 116, 'Xaisomboun', 'XN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1852, 119, 'Berea', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1853, 119, 'Butha-Buthe', 'BB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1854, 119, 'Leribe', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1855, 119, 'Mafeteng', 'MF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1856, 119, 'Maseru', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1858, 119, 'Mokhotlong', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1859, 119, 'Qacha\'s Nek', 'QN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1860, 119, 'Quthing', 'QT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1861, 119, 'Thaba-Tseka', 'TT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1862, 120, 'Bomi', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1863, 120, 'Bong', 'BG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1864, 120, 'Grand Bassa', 'GB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1865, 120, 'Grand Cape Mount', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1866, 120, 'Grand Gedeh', 'GG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1867, 120, 'Grand Kru', 'GK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1868, 120, 'Lofa', 'LO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1869, 120, 'Margibi', 'MG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1870, 120, 'Maryland', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1871, 120, 'Montserrado', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1872, 120, 'Nimba', 'NB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1873, 120, 'River Cess', 'RC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1874, 120, 'Sinoe', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1875, 121, 'Ajdabiya', 'AJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1877, 121, 'Al Fatih', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1879, 121, 'Al Jufrah', 'JU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1880, 121, 'Al Khums', 'KH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1881, 121, 'Al Kufrah', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1882, 121, 'An Nuqat al Khams', 'NK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1883, 121, 'Ash Shati\'', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1884, 121, 'Awbari', 'AW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1885, 121, 'Az Zawiyah', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1886, 121, 'Banghazi', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1887, 121, 'Darnah', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1888, 121, 'Ghadamis', 'GD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1889, 121, 'Gharyan', 'GY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1890, 121, 'Misratah', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1891, 121, 'Murzuq', 'MZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1892, 121, 'Sabha', 'SB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1893, 121, 'Sawfajjin', 'SW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1894, 121, 'Surt', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1896, 121, 'Tarhunah', 'TH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1897, 121, 'Tubruq', 'TU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1898, 121, 'Yafran', 'YA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1899, 121, 'Zlitan', 'ZL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1900, 122, 'Vaduz', 'V', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1901, 122, 'Schaan', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1902, 122, 'Balzers', 'B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1903, 122, 'Triesen', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1904, 122, 'Eschen', 'E', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1905, 122, 'Mauren', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1906, 122, 'Triesenberg', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1907, 122, 'Ruggell', 'R', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1908, 122, 'Gamprin', 'G', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1909, 122, 'Schellenberg', 'L', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1910, 122, 'Planken', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1911, 123, 'Alytus', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1912, 123, 'Kaunas', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1913, 123, 'Klaipeda', 'KL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1914, 123, 'Marijampole', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1915, 123, 'Panevezys', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1916, 123, 'Siauliai', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1917, 123, 'Taurage', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1918, 123, 'Telsiai', 'TE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1919, 123, 'Utena', 'UT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1920, 123, 'Vilnius', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1921, 124, 'Diekirch', 'DD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1922, 124, 'Clervaux', 'DC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1923, 124, 'Redange', 'DR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1924, 124, 'Vianden', 'DV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1925, 124, 'Wiltz', 'DW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1926, 124, 'Grevenmacher', 'GG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1927, 124, 'Echternach', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1928, 124, 'Remich', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1929, 124, 'Luxembourg', 'LL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1930, 124, 'Capellen', 'LC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1932, 124, 'Mersch', 'LM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1934, 125, 'St. Anthony Parish', 'ANT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1936, 125, 'Cathedral Parish', 'CAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1938, 127, 'Antananarivo', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1939, 127, 'Antsiranana', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1940, 127, 'Fianarantsoa', 'FN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1941, 127, 'Mahajanga', 'MJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1942, 127, 'Toamasina', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1943, 127, 'Toliara', 'TL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1944, 128, 'Balaka', 'BLK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1945, 128, 'Blantyre', 'BLT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1946, 128, 'Chikwawa', 'CKW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1947, 128, 'Chiradzulu', 'CRD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1948, 128, 'Chitipa', 'CTP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1949, 128, 'Dedza', 'DDZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1950, 128, 'Dowa', 'DWA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1951, 128, 'Karonga', 'KRG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1952, 128, 'Kasungu', 'KSG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1953, 128, 'Likoma', 'LKM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1954, 128, 'Lilongwe', 'LLG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1955, 128, 'Machinga', 'MCG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1956, 128, 'Mangochi', 'MGC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1957, 128, 'Mchinji', 'MCH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1958, 128, 'Mulanje', 'MLJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1959, 128, 'Mwanza', 'MWZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1960, 128, 'Mzimba', 'MZM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1961, 128, 'Ntcheu', 'NTU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1962, 128, 'Nkhata Bay', 'NKB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1963, 128, 'Nkhotakota', 'NKH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1964, 128, 'Nsanje', 'NSJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1965, 128, 'Ntchisi', 'NTI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1966, 128, 'Phalombe', 'PHL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1967, 128, 'Rumphi', 'RMP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1968, 128, 'Salima', 'SLM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1969, 128, 'Thyolo', 'THY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1970, 128, 'Zomba', 'ZBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1971, 129, 'Johor', 'MY-01', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1972, 129, 'Kedah', 'MY-02', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1973, 129, 'Kelantan', 'MY-03', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1974, 129, 'Labuan', 'MY-15', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1975, 129, 'Melaka', 'MY-04', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1977, 129, 'Pahang', 'MY-06', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1978, 129, 'Perak', 'MY-08', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1979, 129, 'Perlis', 'MY-09', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1980, 129, 'Pulau Pinang', 'MY-07', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1981, 129, 'Sabah', 'MY-12', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1982, 129, 'Sarawak', 'MY-13', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1983, 129, 'Selangor', 'MY-10', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1984, 129, 'Terengganu', 'MY-11', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1992, 130, 'Faadhippolhu', 'FAA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1993, 130, 'Male Atoll', 'MAA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1996, 130, 'Felidhe Atoll', 'FEA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1997, 130, 'Mulaku Atoll', 'MUA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2000, 130, 'Kolhumadulu', 'KLH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2004, 130, 'Fua Mulaku', 'FMU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2005, 130, 'Addu', 'ADD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2006, 131, 'Gao', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2007, 131, 'Kayes', 'KY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2008, 131, 'Kidal', 'KD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2009, 131, 'Koulikoro', 'KL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2010, 131, 'Mopti', 'MP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2011, 131, 'Segou', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2012, 131, 'Sikasso', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2013, 131, 'Tombouctou', 'TB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2014, 131, 'Bamako Capital District', 'CD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2015, 132, 'Attard', 'ATT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2016, 132, 'Balzan', 'BAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2017, 132, 'Birgu', 'BGU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2018, 132, 'Birkirkara', 'BKK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2019, 132, 'Birzebbuga', 'BRZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2020, 132, 'Bormla', 'BOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2021, 132, 'Dingli', 'DIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2022, 132, 'Fgura', 'FGU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2023, 132, 'Floriana', 'FLO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2024, 132, 'Gudja', 'GDJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2025, 132, 'Gzira', 'GZR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2026, 132, 'Gargur', 'GRG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2027, 132, 'Gaxaq', 'GXQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2028, 132, 'Hamrun', 'HMR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2029, 132, 'Iklin', 'IKL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2030, 132, 'Isla', 'ISL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2031, 132, 'Kalkara', 'KLK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2032, 132, 'Kirkop', 'KRK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2033, 132, 'Lija', 'LIJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2034, 132, 'Luqa', 'LUQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2035, 132, 'Marsa', 'MRS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2036, 132, 'Marsaskala', 'MKL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2037, 132, 'Marsaxlokk', 'MXL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2038, 132, 'Mdina', 'MDN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2039, 132, 'Melliea', 'MEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2040, 132, 'Mgarr', 'MGR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2041, 132, 'Mosta', 'MST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2042, 132, 'Mqabba', 'MQA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2043, 132, 'Msida', 'MSI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2044, 132, 'Mtarfa', 'MTF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2045, 132, 'Naxxar', 'NAX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2046, 132, 'Paola', 'PAO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2047, 132, 'Pembroke', 'PEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2048, 132, 'Pieta', 'PIE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2049, 132, 'Qormi', 'QOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2050, 132, 'Qrendi', 'QRE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2051, 132, 'Rabat', 'RAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2052, 132, 'Safi', 'SAF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2053, 132, 'San Giljan', 'SGI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2054, 132, 'Santa Lucija', 'SLU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2056, 132, 'San Gwann', 'SGW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2057, 132, 'Santa Venera', 'SVE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2058, 132, 'Siggiewi', 'SIG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2059, 132, 'Sliema', 'SLM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2060, 132, 'Swieqi', 'SWQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2061, 132, 'Ta Xbiex', 'TXB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2062, 132, 'Tarxien', 'TRX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2063, 132, 'Valletta', 'VLT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2064, 132, 'Xgajra', 'XGJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2065, 132, 'Zabbar', 'ZBR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2066, 132, 'Zebbug', 'ZBG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2067, 132, 'Zejtun', 'ZJT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2068, 132, 'Zurrieq', 'ZRQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2069, 132, 'Fontana', 'FNT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2070, 132, 'Ghajnsielem', 'GHJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2071, 132, 'Gharb', 'GHR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2072, 132, 'Ghasri', 'GHS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2073, 132, 'Kercem', 'KRC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2074, 132, 'Munxar', 'MUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2075, 132, 'Nadur', 'NAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2076, 132, 'Qala', 'QAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2077, 132, 'Victoria', 'VIC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2078, 132, 'San Lawrenz', 'SLA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2079, 132, 'Sannat', 'SNT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2080, 132, 'Xagra', 'ZAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2081, 132, 'Xewkija', 'XEW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2082, 132, 'Zebbug', 'ZEB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2083, 133, 'Ailinginae', 'ALG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2084, 133, 'Ailinglaplap', 'ALL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2085, 133, 'Ailuk', 'ALK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2086, 133, 'Arno', 'ARN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2087, 133, 'Aur', 'AUR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2088, 133, 'Bikar', 'BKR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2089, 133, 'Bikini', 'BKN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2090, 133, 'Bokak', 'BKK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2091, 133, 'Ebon', 'EBN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2092, 133, 'Enewetak', 'ENT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2093, 133, 'Erikub', 'EKB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2094, 133, 'Jabat', 'JBT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2095, 133, 'Jaluit', 'JLT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2096, 133, 'Jemo', 'JEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2097, 133, 'Kili', 'KIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2098, 133, 'Kwajalein', 'KWJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2099, 133, 'Lae', 'LAE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2100, 133, 'Lib', 'LIB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2101, 133, 'Likiep', 'LKP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2102, 133, 'Majuro', 'MJR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2103, 133, 'Maloelap', 'MLP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2104, 133, 'Mejit', 'MJT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2105, 133, 'Mili', 'MIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2106, 133, 'Namorik', 'NMK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2107, 133, 'Namu', 'NAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2108, 133, 'Rongelap', 'RGL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2109, 133, 'Rongrik', 'RGK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2110, 133, 'Toke', 'TOK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2111, 133, 'Ujae', 'UJA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2112, 133, 'Ujelang', 'UJL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2113, 133, 'Utirik', 'UTK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2114, 133, 'Wotho', 'WTH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2115, 133, 'Wotje', 'WTJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2116, 135, 'Adrar', 'AD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2117, 135, 'Assaba', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2118, 135, 'Brakna', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2120, 135, 'Gorgol', 'GO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2121, 135, 'Guidimaka', 'GM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2123, 135, 'Hodh El Gharbi', 'HG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2124, 135, 'Inchiri', 'IN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2125, 135, 'Tagant', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2126, 135, 'Tiris Zemmour', 'TZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2127, 135, 'Trarza', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2128, 135, 'Nouakchott', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2130, 136, 'Curepipe', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2131, 136, 'Port Louis', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2132, 136, 'Quatre Bornes', 'QB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2134, 136, 'Agalega Islands', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2136, 136, 'Rodrigues', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2137, 136, 'Black River', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2138, 136, 'Flacq', 'FL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2139, 136, 'Grand Port', 'GP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2140, 136, 'Moka', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2141, 136, 'Pamplemousses', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2142, 136, 'Plaines Wilhems', 'PW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2143, 136, 'Port Louis', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2144, 136, 'Riviere du Rempart', 'RR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2145, 136, 'Savanne', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2146, 138, 'Baja California Norte', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2147, 138, 'Baja California Sur', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2148, 138, 'Campeche', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2149, 138, 'Chiapas', 'CI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2150, 138, 'Chihuahua', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2152, 138, 'Colima', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2153, 138, 'Distrito Federal', 'DF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2154, 138, 'Durango', 'DU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2155, 138, 'Guanajuato', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2156, 138, 'Guerrero', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2157, 138, 'Hidalgo', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2158, 138, 'Jalisco', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2159, 138, 'Mexico', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2161, 138, 'Morelos', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2162, 138, 'Nayarit', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2163, 138, 'Nuevo Leon', 'NL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2164, 138, 'Oaxaca', 'OA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2165, 138, 'Puebla', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2167, 138, 'Quintana Roo', 'QR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2168, 138, 'San Luis Potosi', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2169, 138, 'Sinaloa', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2170, 138, 'Sonora', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2171, 138, 'Tabasco', 'TB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2172, 138, 'Tamaulipas', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2173, 138, 'Tlaxcala', 'TL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2174, 138, 'Veracruz-Llave', 'VE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2175, 138, 'Yucatan', 'YU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2176, 138, 'Zacatecas', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2177, 139, 'Chuuk', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2178, 139, 'Kosrae', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2179, 139, 'Pohnpei', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2180, 139, 'Yap', 'Y', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2181, 140, 'Gagauzia', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2182, 140, 'Chisinau', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2183, 140, 'Balti', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2184, 140, 'Cahul', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2185, 140, 'Edinet', 'ED', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2186, 140, 'Lapusna', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2187, 140, 'Orhei', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2188, 140, 'Soroca', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2189, 140, 'Tighina', 'TI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2190, 140, 'Ungheni', 'UN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2191, 140, 'St‚nga Nistrului', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2192, 141, 'Fontvieille', 'FV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2193, 141, 'La Condamine', 'LC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2194, 141, 'Monaco-Ville', 'MV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2195, 141, 'Monte-Carlo', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2196, 142, 'Ulanbaatar', '1', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2197, 142, 'Orhon', '035', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2198, 142, 'Darhan uul', '037', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2199, 142, 'Hentiy', '039', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2200, 142, 'Hovsgol', '041', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2201, 142, 'Hovd', '043', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2202, 142, 'Uvs', '046', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2203, 142, 'Tov', '047', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2204, 142, 'Selenge', '049', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2205, 142, 'Suhbaatar', '051', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2206, 142, 'Omnogovi', '053', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2207, 142, 'Ovorhangay', '055', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2208, 142, 'Dzavhan', '057', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2209, 142, 'DundgovL', '059', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2210, 142, 'Dornod', '061', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2211, 142, 'Dornogov', '063', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2212, 142, 'Govi-Sumber', '064', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2213, 142, 'Govi-Altay', '065', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2214, 142, 'Bulgan', '067', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2215, 142, 'Bayanhongor', '069', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2216, 142, 'Bayan-Olgiy', '071', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2217, 142, 'Arhangay', '073', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2218, 143, 'Saint Anthony', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2219, 143, 'Saint Georges', 'G', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2220, 143, 'Saint Peter', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2221, 144, 'Agadir', 'AGD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2222, 144, 'Al Hoceima', 'HOC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2223, 144, 'Azilal', 'AZI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2224, 144, 'Beni Mellal', 'BME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2225, 144, 'Ben Slimane', 'BSL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2226, 144, 'Boulemane', 'BLM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2227, 144, 'Casablanca', 'CBL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2228, 144, 'Chaouen', 'CHA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2229, 144, 'El Jadida', 'EJA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2231, 144, 'Er Rachidia', 'ERA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2232, 144, 'Essaouira', 'ESS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2233, 144, 'Fes', 'FES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2234, 144, 'Figuig', 'FIG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2235, 144, 'Guelmim', 'GLM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2236, 144, 'Ifrane', 'IFR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2237, 144, 'Kenitra', 'KEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2238, 144, 'Khemisset', 'KHM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2239, 144, 'Khenifra', 'KHN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2240, 144, 'Khouribga', 'KHO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2241, 144, 'Laayoune', 'LYN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2242, 144, 'Larache', 'LAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2243, 144, 'Marrakech', 'MRK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2244, 144, 'Meknes', 'MKN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2245, 144, 'Nador', 'NAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2246, 144, 'Ouarzazate', 'ORZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2247, 144, 'Oujda', 'OUJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2248, 144, 'Rabat-Sale', 'RSA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2249, 144, 'Safi', 'SAF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2250, 144, 'Settat', 'SET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2251, 144, 'Sidi Kacem', 'SKA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2252, 144, 'Tangier', 'TGR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2253, 144, 'Tan-Tan', 'TAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2254, 144, 'Taounate', 'TAO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2255, 144, 'Taroudannt', 'TRD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2256, 144, 'Tata', 'TAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2257, 144, 'Taza', 'TAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2258, 144, 'Tetouan', 'TET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2259, 144, 'Tiznit', 'TIZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2260, 144, 'Ad Dakhla', 'ADK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2261, 144, 'Boujdour', 'BJD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2262, 144, 'Es Smara', 'ESM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2263, 145, 'Cabo Delgado', 'CD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2264, 145, 'Gaza', 'GZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2265, 145, 'Inhambane', 'IN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2266, 145, 'Manica', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2267, 145, 'Maputo (city)', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2268, 145, 'Maputo', 'MP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2269, 145, 'Nampula', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2270, 145, 'Niassa', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2271, 145, 'Sofala', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2272, 145, 'Tete', 'TE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2273, 145, 'Zambezia', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2274, 146, 'Ayeyarwady', 'AY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2275, 146, 'Bago', 'BG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2276, 146, 'Magway', 'MG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2277, 146, 'Mandalay', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2278, 146, 'Sagaing', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2279, 146, 'Tanintharyi', 'TN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2280, 146, 'Yangon', 'YG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2281, 146, 'Chin State', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2282, 146, 'Kachin State', 'KC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2283, 146, 'Kayah State', 'KH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2284, 146, 'Kayin State', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2285, 146, 'Mon State', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2286, 146, 'Rakhine State', 'RK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2287, 146, 'Shan State', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2288, 147, 'Caprivi', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2289, 147, 'Erongo', 'ER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2290, 147, 'Hardap', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2291, 147, 'Karas', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2292, 147, 'Kavango', 'KV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2293, 147, 'Khomas', 'KH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2294, 147, 'Kunene', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2295, 147, 'Ohangwena', 'OW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2296, 147, 'Omaheke', 'OK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2297, 147, 'Omusati', 'OT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2298, 147, 'Oshana', 'ON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2299, 147, 'Oshikoto', 'OO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2300, 147, 'Otjozondjupa', 'OJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2301, 148, 'Aiwo', 'AO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2302, 148, 'Anabar', 'AA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2303, 148, 'Anetan', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2304, 148, 'Anibare', 'AI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2305, 148, 'Baiti', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2306, 148, 'Boe', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2307, 148, 'Buada', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2308, 148, 'Denigomodu', 'DE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2309, 148, 'Ewa', 'EW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2310, 148, 'Ijuw', 'IJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2311, 148, 'Meneng', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2312, 148, 'Nibok', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2313, 148, 'Uaboe', 'UA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2314, 148, 'Yaren', 'YA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2315, 149, 'Bagmati', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2316, 149, 'Bheri', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2317, 149, 'Dhawalagiri', 'DH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2318, 149, 'Gandaki', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2319, 149, 'Janakpur', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2320, 149, 'Karnali', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2321, 149, 'Kosi', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2322, 149, 'Lumbini', 'LU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2323, 149, 'Mahakali', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2324, 149, 'Mechi', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2325, 149, 'Narayani', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2326, 149, 'Rapti', 'RA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2327, 149, 'Sagarmatha', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2328, 149, 'Seti', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2329, 150, 'Drenthe', 'DR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2330, 150, 'Flevoland', 'FL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2331, 150, 'Friesland', 'FR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2332, 150, 'Gelderland', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2333, 150, 'Groningen', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2334, 150, 'Limburg', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2335, 150, 'Noord-Brabant', 'NB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2336, 150, 'Noord-Holland', 'NH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2337, 150, 'Overijssel', 'OV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2338, 150, 'Utrecht', 'UT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2339, 150, 'Zeeland', 'ZE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2340, 150, 'Zuid-Holland', 'ZH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2341, 152, 'Iles Loyaute', 'L', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2342, 152, 'Nord', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2343, 152, 'Sud', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2344, 153, 'Auckland', 'AUK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2345, 153, 'Bay of Plenty', 'BOP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2346, 153, 'Canterbury', 'CAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2347, 153, 'Coromandel', 'COR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2348, 153, 'Gisborne', 'GIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2349, 153, 'Fiordland', 'FIO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2351, 153, 'Marlborough', 'MBH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2354, 153, 'Nelson', 'NSN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2355, 153, 'Northland', 'NTL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2356, 153, 'Otago', 'OTA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2357, 153, 'Southland', 'STL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2358, 153, 'Taranaki', 'TKI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2359, 153, 'Wellington', 'WGN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2360, 153, 'Waikato', 'WKO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2361, 153, 'Wairarapa', 'WAI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2362, 153, 'West Coast', 'WTC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2363, 154, 'Atlantico Norte', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2364, 154, 'Atlantico Sur', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2365, 154, 'Boaco', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2366, 154, 'Carazo', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2367, 154, 'Chinandega', 'CI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2368, 154, 'Chontales', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2369, 154, 'Esteli', 'ES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2370, 154, 'Granada', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2371, 154, 'Jinotega', 'JI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2372, 154, 'Leon', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2373, 154, 'Madriz', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2374, 154, 'Managua', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2375, 154, 'Masaya', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2376, 154, 'Matagalpa', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2377, 154, 'Nuevo Segovia', 'NS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2378, 154, 'Rio San Juan', 'RS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2379, 154, 'Rivas', 'RI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2380, 155, 'Agadez', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2381, 155, 'Diffa', 'DF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2382, 155, 'Dosso', 'DS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2383, 155, 'Maradi', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2384, 155, 'Niamey', 'NM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2385, 155, 'Tahoua', 'TH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2386, 155, 'Tillaberi', 'TL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2387, 155, 'Zinder', 'ZD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2388, 156, 'Abia', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2390, 156, 'Adamawa', 'AD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2391, 156, 'Akwa Ibom', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2392, 156, 'Anambra', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2393, 156, 'Bauchi', 'BC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2394, 156, 'Bayelsa', 'BY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2395, 156, 'Benue', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2396, 156, 'Borno', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2397, 156, 'Cross River', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2398, 156, 'Delta', 'DE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2399, 156, 'Ebonyi', 'EB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2400, 156, 'Edo', 'ED', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2401, 156, 'Ekiti', 'EK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2402, 156, 'Enugu', 'EN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2403, 156, 'Gombe', 'GO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2404, 156, 'Imo', 'IM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2405, 156, 'Jigawa', 'JI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2406, 156, 'Kaduna', 'KD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2407, 156, 'Kano', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2408, 156, 'Katsina', 'KT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2409, 156, 'Kebbi', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2410, 156, 'Kogi', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2411, 156, 'Kwara', 'KW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2412, 156, 'Lagos', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2413, 156, 'Nassarawa', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2414, 156, 'Niger', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2415, 156, 'Ogun', 'OG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2416, 156, 'Ondo', 'ONG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2417, 156, 'Osun', 'OS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2418, 156, 'Oyo', 'OY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2419, 156, 'Plateau', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2420, 156, 'Rivers', 'RI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2421, 156, 'Sokoto', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2422, 156, 'Taraba', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2423, 156, 'Yobe', 'YO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2424, 156, 'Zamfara', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2425, 159, 'Northern Islands', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2426, 159, 'Rota', 'R', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2427, 159, 'Saipan', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2428, 159, 'Tinian', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2429, 160, 'Akershus', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2430, 160, 'Aust-Agder', 'AA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2431, 160, 'Buskerud', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2432, 160, 'Finnmark', 'FM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2433, 160, 'Hedmark', 'HM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2434, 160, 'Hordaland', 'HL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2435, 160, 'More og Romdal', 'MR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2436, 160, 'Nord-Trondelag', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2437, 160, 'Nordland', 'NL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2438, 160, 'Ostfold', 'OF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2439, 160, 'Oppland', 'OP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2440, 160, 'Oslo', 'OL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2441, 160, 'Rogaland', 'RL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2442, 160, 'Sor-Trondelag', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2444, 160, 'Svalbard', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2445, 160, 'Telemark', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2446, 160, 'Troms', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2447, 160, 'Vest-Agder', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2448, 160, 'Vestfold', 'VF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2450, 161, 'Al Batinah', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2451, 161, 'Al Wusta', 'WU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2452, 161, 'Ash Sharqiyah', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2453, 161, 'Az Zahirah', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2454, 161, 'Masqat', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2455, 161, 'Musandam', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2456, 161, 'Zufar', 'ZU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2457, 162, 'Balochistan', 'B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2459, 162, 'Islamabad Capital Territory', 'I', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2460, 162, 'North-West Frontier', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2461, 162, 'Punjab', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2462, 162, 'Sindh', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2463, 163, 'Aimeliik', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2464, 163, 'Airai', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2465, 163, 'Angaur', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2466, 163, 'Hatohobei', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2467, 163, 'Kayangel', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2468, 163, 'Koror', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2469, 163, 'Melekeok', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2470, 163, 'Ngaraard', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2471, 163, 'Ngarchelong', 'NG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2472, 163, 'Ngardmau', 'ND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2473, 163, 'Ngatpang', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2474, 163, 'Ngchesar', 'NC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2475, 163, 'Ngeremlengui', 'NR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2476, 163, 'Ngiwal', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2477, 163, 'Peleliu', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2478, 163, 'Sonsorol', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2479, 164, 'Bocas del Toro', 'BT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2480, 164, 'Chiriqui', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2481, 164, 'Cocle', 'CC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2482, 164, 'Colon', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2483, 164, 'Darien', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2484, 164, 'Herrera', 'HE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2485, 164, 'Los Santos', 'LS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2486, 164, 'Panama', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2487, 164, 'San Blas', 'SB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2488, 164, 'Veraguas', 'VG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2489, 165, 'Bougainville', 'BV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2490, 165, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2491, 165, 'Chimbu', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2492, 165, 'Eastern Highlands', 'EH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2493, 165, 'East New Britain', 'EB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2494, 165, 'East Sepik', 'ES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2495, 165, 'Enga', 'EN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2496, 165, 'Gulf', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2497, 165, 'Madang', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2498, 165, 'Manus', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2499, 165, 'Milne Bay', 'MB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2500, 165, 'Morobe', 'MR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2501, 165, 'National Capital', 'NC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2502, 165, 'New Ireland', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2503, 165, 'Northern', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2504, 165, 'Sandaun', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2505, 165, 'Southern Highlands', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2506, 165, 'Western', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2507, 165, 'Western Highlands', 'WH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2508, 165, 'West New Britain', 'WB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2509, 166, 'Alto Paraguay', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2510, 166, 'Alto Parana', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2511, 166, 'Amambay', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2512, 166, 'Asuncion', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2513, 166, 'Boqueron', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2514, 166, 'Caaguazu', 'CG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2515, 166, 'Caazapa', 'CZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2516, 166, 'Canindeyu', 'CN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2517, 166, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2518, 166, 'Concepcion', 'CC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2519, 166, 'Cordillera', 'CD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2520, 166, 'Guaira', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2521, 166, 'Itapua', 'IT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2522, 166, 'Misiones', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2523, 166, 'Neembucu', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2524, 166, 'Paraguari', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2525, 166, 'Presidente Hayes', 'PH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2526, 166, 'San Pedro', 'SP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2527, 167, 'Amazonas', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2528, 167, 'Ancash', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2529, 167, 'Apurimac', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2530, 167, 'Arequipa', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2531, 167, 'Ayacucho', 'AY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2532, 167, 'Cajamarca', 'CJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2533, 167, 'Callao', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2534, 167, 'Cusco', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2535, 167, 'Huancavelica', 'HV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2536, 167, 'Huanuco', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2537, 167, 'Ica', 'IC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2538, 167, 'Junin', 'JU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2539, 167, 'La Libertad', 'LD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2540, 167, 'Lambayeque', 'LY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2541, 167, 'Lima', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2542, 167, 'Loreto', 'LO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2543, 167, 'Madre de Dios', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2544, 167, 'Moquegua', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2545, 167, 'Pasco', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2546, 167, 'Piura', 'PI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2547, 167, 'Puno', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2548, 167, 'San Martin', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2549, 167, 'Tacna', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2550, 167, 'Tumbes', 'TU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2551, 167, 'Ucayali', 'UC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2552, 168, 'Abra', 'ABR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2553, 168, 'Agusan del Norte', 'ANO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2554, 168, 'Agusan del Sur', 'ASU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2555, 168, 'Aklan', 'AKL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2556, 168, 'Albay', 'ALB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2557, 168, 'Antique', 'ANT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2558, 168, 'Apayao', 'APY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2559, 168, 'Aurora', 'AUR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2560, 168, 'Basilan', 'BAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2561, 168, 'Bataan', 'BTA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2562, 168, 'Batanes', 'BTE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2563, 168, 'Batangas', 'BTG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2564, 168, 'Biliran', 'BLR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2565, 168, 'Benguet', 'BEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2566, 168, 'Bohol', 'BOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2567, 168, 'Bukidnon', 'BUK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2568, 168, 'Bulacan', 'BUL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2569, 168, 'Cagayan', 'CAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2570, 168, 'Camarines Norte', 'CNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2571, 168, 'Camarines Sur', 'CSU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2572, 168, 'Camiguin', 'CAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2573, 168, 'Capiz', 'CAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2574, 168, 'Catanduanes', 'CAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2575, 168, 'Cavite', 'CAV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2576, 168, 'Cebu', 'CEB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2577, 168, 'Compostela', 'CMP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2578, 168, 'Davao del Norte', 'DNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2579, 168, 'Davao del Sur', 'DSU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2580, 168, 'Davao Oriental', 'DOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2581, 168, 'Eastern Samar', 'ESA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2582, 168, 'Guimaras', 'GUI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2583, 168, 'Ifugao', 'IFU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2584, 168, 'Ilocos Norte', 'INO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2585, 168, 'Ilocos Sur', 'ISU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2586, 168, 'Iloilo', 'ILO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2587, 168, 'Isabela', 'ISA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2588, 168, 'Kalinga', 'KAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2589, 168, 'Laguna', 'LAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2590, 168, 'Lanao del Norte', 'LNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2591, 168, 'Lanao del Sur', 'LSU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2592, 168, 'La Union', 'UNI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2593, 168, 'Leyte', 'LEY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2594, 168, 'Maguindanao', 'MAG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2595, 168, 'Marinduque', 'MRN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2596, 168, 'Masbate', 'MSB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2597, 168, 'Mindoro Occidental', 'MIC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2598, 168, 'Mindoro Oriental', 'MIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2599, 168, 'Misamis Occidental', 'MSC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2600, 168, 'Misamis Oriental', 'MOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2601, 168, 'Mountain', 'MOP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2602, 168, 'Negros Occidental', 'NOC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2603, 168, 'Negros Oriental', 'NOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2604, 168, 'North Cotabato', 'NCT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2605, 168, 'Northern Samar', 'NSM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2606, 168, 'Nueva Ecija', 'NEC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2608, 168, 'Palawan', 'PLW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2609, 168, 'Pampanga', 'PMP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2610, 168, 'Pangasinan', 'PNG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2611, 168, 'Quezon', 'QZN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2612, 168, 'Quirino', 'QRN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2613, 168, 'Rizal', 'RIZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2614, 168, 'Romblon', 'ROM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2615, 168, 'Samar', 'SMR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2616, 168, 'Sarangani', 'SRG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2617, 168, 'Siquijor', 'SQJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2618, 168, 'Sorsogon', 'SRS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2619, 168, 'South Cotabato', 'SCO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2620, 168, 'Southern Leyte', 'SLE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2621, 168, 'Sultan Kudarat', 'SKU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2622, 168, 'Sulu', 'SLU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2623, 168, 'Surigao del Norte', 'SNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2624, 168, 'Surigao del Sur', 'SSU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2625, 168, 'Tarlac', 'TAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2626, 168, 'Tawi-Tawi', 'TAW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2627, 168, 'Zambales', 'ZBL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2631, 170, 'Dolnoslaskie', 'DO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2633, 170, 'Lodzkie', 'LO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2634, 170, 'Lubelskie', 'LL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2635, 170, 'Lubuskie', 'LU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2636, 170, 'Malopolskie', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2637, 170, 'Mazowieckie', 'MZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2638, 170, 'Opolskie', 'OP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2639, 170, 'Podkarpackie', 'PP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2640, 170, 'Podlaskie', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2641, 170, 'Pomorskie', 'PM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2642, 170, 'Slaskie', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2643, 170, 'Swietokrzyskie', 'SW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2645, 170, 'Wielkopolskie', 'WP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2647, 198, 'Saint Pierre', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2648, 198, 'Miquelon', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2649, 171, 'A&ccedil;ores', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2650, 171, 'Aveiro', 'AV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2651, 171, 'Beja', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2652, 171, 'Braga', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2654, 171, 'Castelo Branco', 'CB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2655, 171, 'Coimbra', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2656, 244, 'Eacute vora', 'EV', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-23 06:30:29'),
(2657, 171, 'Faro', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2658, 171, 'Guarda', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2659, 171, 'Leiria', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2660, 171, 'Lisboa', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2661, 171, 'Madeira', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2662, 171, 'Portalegre', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2663, 171, 'Porto', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2664, 171, 'Santar&eacute;m', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2665, 171, 'Set&uacute;bal', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2666, 171, 'Viana do Castelo', 'VC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2667, 171, 'Vila Real', 'VR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2668, 171, 'Viseu', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2669, 173, 'Ad Dawhah', 'DW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2671, 173, 'Al Jumayliyah', 'JM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2672, 173, 'Al Khawr', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2673, 173, 'Al Wakrah', 'WK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2674, 173, 'Ar Rayyan', 'RN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2675, 173, 'Jarayan al Batinah', 'JB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2676, 173, 'Madinat ash Shamal', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2677, 173, 'Umm Sa\'id', 'UD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2678, 173, 'Umm Salal', 'UL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2679, 175, 'Alba', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2680, 175, 'Arad', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2681, 175, 'Arges', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2682, 175, 'Bacau', 'BC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2683, 175, 'Bihor', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2685, 175, 'Botosani', 'BT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2686, 175, 'Brasov', 'BV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2687, 175, 'Braila', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2688, 175, 'Bucuresti', 'B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2689, 175, 'Buzau', 'BZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2690, 175, 'Caras-Severin', 'CS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2691, 175, 'Calarasi', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2692, 175, 'Cluj', 'CJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2693, 175, 'Constanta', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2694, 175, 'Covasna', 'CV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2695, 175, 'Dimbovita', 'DB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2696, 175, 'Dolj', 'DJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2697, 175, 'Galati', 'GL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2698, 175, 'Giurgiu', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2699, 175, 'Gorj', 'GJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2700, 175, 'Harghita', 'HR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2701, 175, 'Hunedoara', 'HD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2702, 175, 'Ialomita', 'IL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2703, 175, 'Iasi', 'IS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2704, 175, 'Ilfov', 'IF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2705, 175, 'Maramures', 'MM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2706, 175, 'Mehedinti', 'MH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2707, 175, 'Mures', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2708, 175, 'Neamt', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2709, 175, 'Olt', 'OT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2710, 175, 'Prahova', 'PH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2711, 175, 'Satu-Mare', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2712, 175, 'Salaj', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2713, 175, 'Sibiu', 'SB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2714, 175, 'Suceava', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2715, 175, 'Teleorman', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2716, 175, 'Timis', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2717, 175, 'Tulcea', 'TL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2718, 175, 'Vaslui', 'VS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2719, 175, 'Valcea', 'VL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2720, 175, 'Vrancea', 'VN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2721, 176, 'Abakan', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2722, 176, 'Aginskoye', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2723, 176, 'Anadyr', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2724, 176, 'Arkahangelsk', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2725, 176, 'Astrakhan', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2726, 176, 'Barnaul', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2727, 176, 'Belgorod', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2728, 176, 'Birobidzhan', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2729, 176, 'Blagoveshchensk', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2730, 176, 'Bryansk', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2731, 176, 'Cheboksary', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2732, 176, 'Chelyabinsk', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2733, 176, 'Cherkessk', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2734, 176, 'Chita', 'CI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2735, 176, 'Dudinka', 'DU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2736, 176, 'Elista', 'EL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2738, 176, 'Gorno-Altaysk', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2739, 176, 'Groznyy', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2740, 176, 'Irkutsk', 'IR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2741, 176, 'Ivanovo', 'IV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2742, 176, 'Izhevsk', 'IZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2743, 176, 'Kalinigrad', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2744, 176, 'Kaluga', 'KL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2745, 176, 'Kasnodar', 'KS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2746, 176, 'Kazan', 'KZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2747, 176, 'Kemerovo', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2748, 176, 'Khabarovsk', 'KH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2750, 176, 'Kostroma', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2751, 176, 'Krasnodar', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2752, 176, 'Krasnoyarsk', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2753, 176, 'Kudymkar', 'KU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2754, 176, 'Kurgan', 'KG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2755, 176, 'Kursk', 'KK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2756, 176, 'Kyzyl', 'KY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2757, 176, 'Lipetsk', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2758, 176, 'Magadan', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2759, 176, 'Makhachkala', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2760, 176, 'Maykop', 'MY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2761, 176, 'Moscow', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2762, 176, 'Murmansk', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2763, 176, 'Nalchik', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2764, 176, 'Naryan Mar', 'NR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2765, 176, 'Nazran', 'NZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2767, 176, 'Novgorod', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2768, 176, 'Novosibirsk', 'NV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2769, 176, 'Omsk', 'OM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2770, 176, 'Orel', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2771, 176, 'Orenburg', 'OE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2772, 176, 'Palana', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2773, 176, 'Penza', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2774, 176, 'Perm', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2776, 176, 'Petrozavodsk', 'PT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2777, 176, 'Pskov', 'PS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2778, 176, 'Rostov-na-Donu', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2779, 176, 'Ryazan', 'RY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2780, 176, 'Salekhard', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2781, 176, 'Samara', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2782, 176, 'Saransk', 'SR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2783, 176, 'Saratov', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2784, 176, 'Smolensk', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2785, 176, 'St. Petersburg', 'SP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2786, 176, 'Stavropol', 'ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2787, 176, 'Syktyvkar', 'SY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2788, 176, 'Tambov', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2789, 176, 'Tomsk', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2790, 176, 'Tula', 'TU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2791, 176, 'Tura', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2792, 176, 'Tver', 'TV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2793, 176, 'Tyumen', 'TY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2794, 176, 'Ufa', 'UF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2795, 176, 'Ul\'yanovsk', 'UL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2796, 176, 'Ulan-Ude', 'UU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2798, 176, 'Vladikavkaz', 'VL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2799, 176, 'Vladimir', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2800, 176, 'Vladivostok', 'VV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2801, 176, 'Volgograd', 'VG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2802, 176, 'Vologda', 'VD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2803, 176, 'Voronezh', 'VO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2804, 176, 'Vyatka', 'VY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2805, 176, 'Yakutsk', 'YA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2806, 176, 'Yaroslavl', 'YR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2807, 176, 'Yekaterinburg', 'YE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2808, 176, 'Yoshkar-Ola', 'YO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2809, 177, 'Butare', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2810, 177, 'Byumba', 'BY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2811, 177, 'Cyangugu', 'CY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2812, 177, 'Gikongoro', 'GK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2813, 177, 'Gisenyi', 'GS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2814, 177, 'Gitarama', 'GT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2815, 177, 'Kibungo', 'KG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2816, 177, 'Kibuye', 'KY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2817, 177, 'Kigali Rurale', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2818, 177, 'Kigali-ville', 'KV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2819, 177, 'Ruhengeri', 'RU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2820, 177, 'Umutara', 'UM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2823, 178, 'Saint George Basseterre', 'SGB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2824, 178, 'Saint George Gingerland', 'SGG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2825, 178, 'Saint James Windward', 'SJW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2826, 178, 'Saint John Capesterre', 'SJC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2827, 178, 'Saint John Figtree', 'SJF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2835, 179, 'Anse-la-Raye', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2836, 179, 'Castries', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2837, 179, 'Choiseul', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2838, 179, 'Dauphin', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2839, 179, 'Dennery', 'DE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2840, 179, 'Gros-Islet', 'GI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2841, 179, 'Laborie', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2842, 179, 'Micoud', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2843, 179, 'Praslin', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2844, 179, 'Soufriere', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2845, 179, 'Vieux-Fort', 'VF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2846, 180, 'Charlotte', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2847, 180, 'Grenadines', 'R', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2848, 180, 'Saint Andrew', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2849, 180, 'Saint David', 'D', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2850, 180, 'Saint George', 'G', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2851, 180, 'Saint Patrick', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2852, 181, 'A\'ana', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2854, 181, 'Atua', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2856, 181, 'Gaga\'emauga', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2857, 181, 'Gagaifomauga', 'GF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2858, 181, 'Palauli', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2859, 181, 'Satupa\'itea', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2860, 181, 'Tuamasaga', 'TU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2862, 181, 'Vaisigano', 'VS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2863, 182, 'Acquaviva', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2864, 182, 'Borgo Maggiore', 'BM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2865, 182, 'Chiesanuova', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2866, 182, 'Domagnano', 'DO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2867, 182, 'Faetano', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2868, 182, 'Fiorentino', 'FI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2869, 182, 'Montegiardino', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2870, 182, 'Citta di San Marino', 'SM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2871, 182, 'Serravalle', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2872, 183, 'Sao Tome', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2873, 183, 'Principe', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2874, 184, 'Al Bahah', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2876, 184, 'Al Jawf', 'JF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2877, 184, 'Al Madinah', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2878, 184, 'Al Qasim', 'QS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2879, 184, 'Ar Riyad', 'RD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2881, 184, '\'Asir', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2882, 184, 'Ha\'il', 'HL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2883, 184, 'Jizan', 'JZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2884, 184, 'Makkah', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2885, 184, 'Najran', 'NR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2886, 184, 'Tabuk', 'TB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2887, 185, 'Dakar', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2888, 185, 'Diourbel', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2889, 185, 'Fatick', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2890, 185, 'Kaolack', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2891, 185, 'Kolda', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2892, 185, 'Louga', 'LO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2893, 185, 'Matam', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2894, 185, 'Saint-Louis', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2895, 185, 'Tambacounda', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2896, 185, 'Thies', 'TH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2897, 185, 'Ziguinchor', 'ZI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2898, 186, 'Anse aux Pins', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2899, 186, 'Anse Boileau', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2900, 186, 'Anse Etoile', 'AE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2901, 186, 'Anse Louis', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2902, 186, 'Anse Royale', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2903, 186, 'Baie Lazare', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2904, 186, 'Baie Sainte Anne', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2905, 186, 'Beau Vallon', 'BV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2906, 186, 'Bel Air', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2907, 186, 'Bel Ombre', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2908, 186, 'Cascade', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2909, 186, 'Glacis', 'GL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2912, 186, 'La Digue', 'DG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2913, 186, 'La Riviere Anglaise', 'RA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2914, 186, 'Mont Buxton', 'MB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2915, 186, 'Mont Fleuri', 'MF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2916, 186, 'Plaisance', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2917, 186, 'Pointe La Rue', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2918, 186, 'Port Glaud', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2919, 186, 'Saint Louis', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2920, 186, 'Takamaka', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2921, 187, 'Eastern', 'E', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2922, 187, 'Northern', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2923, 187, 'Southern', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2924, 187, 'Western', 'W', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2925, 189, 'Banskobystrický', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2926, 189, 'Bratislavský', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2927, 189, 'Košický', 'KO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2928, 189, 'Nitriansky', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2929, 189, 'Prešovský', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2930, 189, 'Trenčiansky', 'TC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2931, 189, 'Trnavský', 'TV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2932, 189, 'Žilinský', 'ZI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2933, 191, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2934, 191, 'Choiseul', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2935, 191, 'Guadalcanal', 'GC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2936, 191, 'Honiara', 'HO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2937, 191, 'Isabel', 'IS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2938, 191, 'Makira', 'MK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2939, 191, 'Malaita', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2940, 191, 'Rennell and Bellona', 'RB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2941, 191, 'Temotu', 'TM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2942, 191, 'Western', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2943, 192, 'Awdal', 'AW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2944, 192, 'Bakool', 'BK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2945, 192, 'Banaadir', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2946, 192, 'Bari', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2947, 192, 'Bay', 'BY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2948, 192, 'Galguduud', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2949, 192, 'Gedo', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2950, 192, 'Hiiraan', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2951, 192, 'Jubbada Dhexe', 'JD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2952, 192, 'Jubbada Hoose', 'JH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2953, 192, 'Mudug', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2954, 192, 'Nugaal', 'NU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2955, 192, 'Sanaag', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2958, 192, 'Sool', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2959, 192, 'Togdheer', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2961, 193, 'Eastern Cape', 'EC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2962, 193, 'Free State', 'FS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2963, 193, 'Gauteng', 'GT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2964, 193, 'KwaZulu-Natal', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2965, 193, 'Limpopo', 'LP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2966, 193, 'Mpumalanga', 'MP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2967, 193, 'North West', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2968, 193, 'Northern Cape', 'NC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2969, 193, 'Western Cape', 'WC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2971, 195, 'Aacute lava', 'AL', 0, 0, '0000-00-00 00:00:00', 0, '2019-06-16 07:14:35'),
(2972, 195, 'Albacete', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2973, 195, 'Alicante', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2974, 195, 'Almeria', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2975, 195, 'Asturias', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2976, 195, 'Aacute vila', 'AV', 0, 0, '0000-00-00 00:00:00', 0, '2019-06-16 07:14:43'),
(2977, 195, 'Badajoz', 'BJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2978, 195, 'Baleares', 'IB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2979, 195, 'Barcelona', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2980, 195, 'Burgos', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2981, 195, 'C&aacute;ceres', 'CC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2982, 195, 'C&aacute;diz', 'CZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2983, 195, 'Cantabria', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2984, 195, 'Castell&oacute;n', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2985, 195, 'Ceuta', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2986, 195, 'Ciudad Real', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2987, 195, 'C&oacute;rdoba', 'CD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2988, 195, 'Cuenca', 'CU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2989, 195, 'Girona', 'GI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2990, 195, 'Granada', 'GD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2991, 195, 'Guadalajara', 'GJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2993, 195, 'Huelva', 'HL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2994, 195, 'Huesca', 'HS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2995, 195, 'Ja&eacute;n', 'JN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2996, 195, 'La Rioja', 'RJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2997, 195, 'Las Palmas', 'PM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2998, 195, 'Leon', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2999, 195, 'Lleida', 'LL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3000, 195, 'Lugo', 'LG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3001, 195, 'Madrid', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3002, 195, 'Malaga', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3003, 195, 'Melilla', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3004, 195, 'Murcia', 'MU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3005, 195, 'Navarra', 'NV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3006, 195, 'Ourense', 'OU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3007, 195, 'Palencia', 'PL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3008, 195, 'Pontevedra', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3009, 195, 'Salamanca', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3011, 195, 'Segovia', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3012, 195, 'Sevilla', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3013, 195, 'Soria', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3014, 195, 'Tarragona', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3015, 195, 'Teruel', 'TE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3016, 195, 'Toledo', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3017, 195, 'Valencia', 'VC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3018, 195, 'Valladolid', 'VD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3019, 195, 'Vizcaya', 'VZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3020, 195, 'Zamora', 'ZM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3021, 195, 'Zaragoza', 'ZR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3022, 196, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3023, 196, 'Eastern', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3024, 196, 'North Central', 'NC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3025, 196, 'Northern', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3026, 196, 'North Western', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3027, 196, 'Sabaragamuwa', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3028, 196, 'Southern', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3029, 196, 'Uva', 'UV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3030, 196, 'Western', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3032, 197, 'Saint Helena', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3034, 199, 'A\'ali an Nil', 'ANL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3036, 199, 'Al Buhayrat', 'BRT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3037, 199, 'Al Jazirah', 'JZR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3038, 199, 'Al Khartum', 'KRT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3039, 199, 'Al Qadarif', 'QDR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3040, 199, 'Al Wahdah', 'WDH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3041, 199, 'An Nil al Abyad', 'ANB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3044, 199, 'Bahr al Jabal', 'BJA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3047, 199, 'Gharb Darfur', 'GDA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3049, 199, 'Janub Darfur', 'JDA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3050, 199, 'Janub Kurdufan', 'JKU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3051, 199, 'Junqali', 'JQL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3052, 199, 'Kassala', 'KSL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3053, 199, 'Nahr an Nil', 'NNL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3055, 199, 'Shamal Darfur', 'SDA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3058, 199, 'Sinnar', 'SNR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3059, 199, 'Warab', 'WRB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3060, 200, 'Brokopondo', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3061, 200, 'Commewijne', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3062, 200, 'Coronie', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3063, 200, 'Marowijne', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3064, 200, 'Nickerie', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3065, 200, 'Para', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3066, 200, 'Paramaribo', 'PM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3067, 200, 'Saramacca', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3068, 200, 'Sipaliwini', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3069, 200, 'Wanica', 'WA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3070, 202, 'Hhohho', 'H', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3071, 202, 'Lubombo', 'L', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3072, 202, 'Manzini', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3073, 202, 'Shishelweni', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3074, 203, 'Blekinge', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3075, 203, 'Dalarna', 'W', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3076, 203, 'Gävleborg', 'X', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3077, 203, 'Gotland', 'I', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3078, 203, 'Halland', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3079, 203, 'Jämtland', 'Z', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3080, 203, 'Jönköping', 'F', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3081, 203, 'Kalmar', 'H', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3082, 203, 'Kronoberg', 'G', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3083, 203, 'Norrbotten', 'BD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3084, 203, 'Örebro', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3085, 203, 'Östergötland', 'E', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3086, 203, 'Sk&aring;ne', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3087, 203, 'Södermanland', 'D', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3088, 203, 'Stockholm', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3089, 203, 'Uppsala', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3090, 203, 'Värmland', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3091, 203, 'Västerbotten', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3092, 203, 'Västernorrland', 'Y', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3093, 203, 'Västmanland', 'U', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3094, 203, 'Västra Götaland', 'O', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3095, 204, 'Aargau', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3098, 204, 'Basel-Stadt', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3099, 204, 'Basel-Landschaft', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3100, 204, 'Bern', 'BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3101, 204, 'Fribourg', 'FR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3102, 204, 'Gen&egrave;ve', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3103, 204, 'Glarus', 'GL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3104, 204, 'Graubünden', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3105, 204, 'Jura', 'JU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3106, 204, 'Luzern', 'LU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3108, 204, 'Nidwald', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3109, 204, 'Obwald', 'OW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3110, 204, 'St. Gallen', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3111, 204, 'Schaffhausen', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3112, 204, 'Schwyz', 'SZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3113, 204, 'Solothurn', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3114, 204, 'Thurgau', 'TG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3115, 204, 'Ticino', 'TI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3116, 204, 'Uri', 'UR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3117, 204, 'Valais', 'VS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3118, 204, 'Vaud', 'VD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3119, 204, 'Zug', 'ZG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3120, 204, 'Zürich', 'ZH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3121, 205, 'Al Hasakah', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3123, 205, 'Al Qunaytirah', 'QU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3124, 205, 'Ar Raqqah', 'RQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3125, 205, 'As Suwayda', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3126, 205, 'Dara', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3127, 205, 'Dayr az Zawr', 'DZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3128, 205, 'Dimashq', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3129, 205, 'Halab', 'HL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3130, 205, 'Hamah', 'HM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3131, 205, 'Hims', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3132, 205, 'Idlib', 'ID', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3133, 205, 'Rif Dimashq', 'RD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3134, 205, 'Tartus', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3135, 206, 'Chang-hua', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3136, 206, 'Chia-i', 'CI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3137, 206, 'Hsin-chu', 'HS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3138, 206, 'Hua-lien', 'HL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3139, 206, 'I-lan', 'IL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3140, 206, 'Kao-hsiung county', 'KH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3141, 206, 'Kin-men', 'KM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3142, 206, 'Lien-chiang', 'LC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3143, 206, 'Miao-li', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3144, 206, 'Nan-t\'ou', 'NT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3145, 206, 'P\'eng-hu', 'PH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3146, 206, 'P\'ing-tung', 'PT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3147, 206, 'T\'ai-chung', 'TG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3148, 206, 'T\'ai-nan', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3149, 206, 'T\'ai-pei county', 'TP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3150, 206, 'T\'ai-tung', 'TT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3151, 206, 'T\'ao-yuan', 'TY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3152, 206, 'Yun-lin', 'YL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3153, 206, 'Chia-i city', 'CC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3154, 206, 'Chi-lung', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3155, 206, 'Hsin-chu', 'HC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3156, 206, 'T\'ai-chung', 'TH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3157, 206, 'T\'ai-nan', 'TN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3158, 206, 'Kao-hsiung city', 'KC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3159, 206, 'T\'ai-pei city', 'TC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3161, 207, 'Khatlon', 'KT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3162, 207, 'Sughd', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3163, 208, 'Arusha', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3164, 208, 'Dar es Salaam', 'DS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3165, 208, 'Dodoma', 'DO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3166, 208, 'Iringa', 'IR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3167, 208, 'Kagera', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3168, 208, 'Kigoma', 'KI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3169, 208, 'Kilimanjaro', 'KJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3170, 208, 'Lindi', 'LN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3171, 208, 'Manyara', 'MY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3172, 208, 'Mara', 'MR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3173, 208, 'Mbeya', 'MB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3174, 208, 'Morogoro', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3175, 208, 'Mtwara', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3176, 208, 'Mwanza', 'MW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3177, 208, 'Pemba North', 'PN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3178, 208, 'Pemba South', 'PS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3179, 208, 'Pwani', 'PW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3180, 208, 'Rukwa', 'RK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3181, 208, 'Ruvuma', 'RV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3182, 208, 'Shinyanga', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3183, 208, 'Singida', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3184, 208, 'Tabora', 'TB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3185, 208, 'Tanga', 'TN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3187, 208, 'Zanzibar North', 'ZN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3190, 209, 'Ang Thong', 'Ang Thong', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3192, 209, 'Bangkok', 'Bangkok', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3193, 209, 'Buriram', 'Buriram', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3195, 209, 'Chai Nat', 'Chai Nat', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3200, 209, 'Chon Buri', 'Chon Buri', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3201, 209, 'Chumphon', 'Chumphon', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3202, 209, 'Kalasin', 'Kalasin', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3206, 209, 'Krabi', 'Krabi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3207, 209, 'Lampang', 'Lampang', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3208, 209, 'Lamphun', 'Lamphun', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3209, 209, 'Loei', 'Loei', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3210, 209, 'Lop Buri', 'Lop Buri', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3213, 209, 'Mukdahan', 'Mukdahan', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3220, 209, 'Nan', 'Nan', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3221, 209, 'Narathiwat', 'Narathiwat', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3223, 209, 'Nong Khai', 'Nong Khai', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3226, 209, 'Pattani', 'Pattani', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3227, 209, 'Phangnga', 'Phangnga', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3228, 209, 'Phatthalung', 'Phatthalung', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3229, 209, 'Phayao', 'Phayao', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3230, 209, 'Phetchabun', 'Phetchabun', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3232, 209, 'Phichit', 'Phichit', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3234, 209, 'Phrae', 'Phrae', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3235, 209, 'Phuket', 'Phuket', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3238, 209, 'Ranong', 'Ranong', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3240, 209, 'Rayong', 'Rayong', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3241, 209, 'Roi Et', 'Roi Et', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3247, 209, 'Sara Buri', 'Sara Buri', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3248, 209, 'Satun', 'Satun', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3249, 209, 'Sing Buri', 'Sing Buri', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3250, 209, 'Sisaket', 'Sisaket', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3251, 209, 'Songkhla', 'Songkhla', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3252, 209, 'Sukhothai', 'Sukhothai', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3254, 209, 'Surat Thani', 'Surat Thani', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3255, 209, 'Surin', 'Surin', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3256, 209, 'Tak', 'Tak', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3257, 209, 'Trang', 'Trang', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3258, 209, 'Trat', 'Trat', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3260, 209, 'Udon Thani', 'Udon Thani', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3262, 209, 'Uttaradit', 'Uttaradit', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3263, 209, 'Yala', 'Yala', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3264, 209, 'Yasothon', 'Yasothon', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3265, 210, 'Kara', 'K', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3266, 210, 'Plateaux', 'P', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3267, 210, 'Savanes', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3268, 210, 'Centrale', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3269, 210, 'Maritime', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3270, 211, 'Atafu', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3271, 211, 'Fakaofo', 'F', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3272, 211, 'Nukunonu', 'N', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3273, 212, 'Ha\'apai', 'H', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3274, 212, 'Tongatapu', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3275, 212, 'Vava\'u', 'V', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3277, 213, 'Diego Martin', 'DM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3279, 213, 'Penal/Debe', 'PD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3280, 213, 'Princes Town', 'PT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3281, 213, 'Sangre Grande', 'SG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3282, 213, 'San Juan/Laventille', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3283, 213, 'Siparia', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3285, 213, 'Port of Spain', 'PS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3286, 213, 'San Fernando', 'SF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3287, 213, 'Arima', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3288, 213, 'Point Fortin', 'PF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3289, 213, 'Chaguanas', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3290, 213, 'Tobago', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3291, 214, 'Ariana', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3292, 214, 'Beja', 'BJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3293, 214, 'Ben Arous', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3294, 214, 'Bizerte', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3295, 214, 'Gabes', 'GB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3296, 214, 'Gafsa', 'GF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3297, 214, 'Jendouba', 'JE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3298, 214, 'Kairouan', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3299, 214, 'Kasserine', 'KS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3300, 214, 'Kebili', 'KB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3301, 214, 'Kef', 'KF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3302, 214, 'Mahdia', 'MH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3303, 214, 'Manouba', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3304, 214, 'Medenine', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3305, 214, 'Monastir', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3306, 214, 'Nabeul', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3307, 214, 'Sfax', 'SF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3308, 214, 'Sidi', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3309, 214, 'Siliana', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3310, 214, 'Sousse', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3311, 214, 'Tataouine', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3312, 214, 'Tozeur', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3313, 214, 'Tunis', 'TU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3314, 214, 'Zaghouan', 'ZA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3315, 215, 'Adana', 'ADA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3316, 215, 'Adıyaman', 'ADI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3317, 215, 'Afyonkarahisar', 'AFY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3318, 215, 'Ağrı', 'AGR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3319, 215, 'Aksaray', 'AKS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3320, 215, 'Amasya', 'AMA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3321, 215, 'Ankara', 'ANK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3322, 215, 'Antalya', 'ANT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3323, 215, 'Ardahan', 'ARD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3324, 215, 'Artvin', 'ART', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3325, 215, 'Aydın', 'AYI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3326, 215, 'Balıkesir', 'BAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3327, 215, 'Bartın', 'BAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3328, 215, 'Batman', 'BAT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3329, 215, 'Bayburt', 'BAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3330, 215, 'Bilecik', 'BIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3331, 215, 'Bingöl', 'BIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3332, 215, 'Bitlis', 'BIT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3333, 215, 'Bolu', 'BOL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3334, 215, 'Burdur', 'BRD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3335, 215, 'Bursa', 'BRS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3336, 215, 'Çanakkale', 'CKL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3337, 215, 'Çankırı', 'CKR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3338, 215, 'Çorum', 'COR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3339, 215, 'Denizli', 'DEN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3340, 215, 'Diyarbakır', 'DIY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3341, 215, 'Düzce', 'DUZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3342, 215, 'Edirne', 'EDI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3343, 215, 'Elazığ', 'ELA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3344, 215, 'Erzincan', 'EZC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3345, 215, 'Erzurum', 'EZR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3346, 215, 'Eskişehir', 'ESK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3347, 215, 'Gaziantep', 'GAZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3348, 215, 'Giresun', 'GIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3349, 215, 'Gümüşhane', 'GMS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3350, 215, 'Hakkari', 'HKR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3351, 215, 'Hatay', 'HTY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3352, 215, 'Iğdır', 'IGD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3353, 215, 'Isparta', 'ISP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3354, 215, 'İstanbul', 'IST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3355, 215, 'İzmir', 'IZM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3356, 215, 'Kahramanmaraş', 'KAH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3357, 215, 'Karabük', 'KRB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3358, 215, 'Karaman', 'KRM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3359, 215, 'Kars', 'KRS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3360, 215, 'Kastamonu', 'KAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3361, 215, 'Kayseri', 'KAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3362, 215, 'Kilis', 'KLS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3363, 215, 'Kırıkkale', 'KRK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3364, 215, 'Kırklareli', 'KLR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3365, 215, 'Kırşehir', 'KRH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3366, 215, 'Kocaeli', 'KOC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3367, 215, 'Konya', 'KON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3368, 215, 'Kütahya', 'KUT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3369, 215, 'Malatya', 'MAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3370, 215, 'Manisa', 'MAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3371, 215, 'Mardin', 'MAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3372, 215, 'Mersin', 'MER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3373, 215, 'Muğla', 'MUG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3374, 215, 'Muş', 'MUS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3375, 215, 'Nevşehir', 'NEV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3376, 215, 'Niğde', 'NIG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3377, 215, 'Ordu', 'ORD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3378, 215, 'Osmaniye', 'OSM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3379, 215, 'Rize', 'RIZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3380, 215, 'Sakarya', 'SAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3381, 215, 'Samsun', 'SAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3382, 215, 'Şanlıurfa', 'SAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3383, 215, 'Siirt', 'SII', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3384, 215, 'Sinop', 'SIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3385, 215, 'Şırnak', 'SIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3386, 215, 'Sivas', 'SIV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3387, 215, 'Tekirdağ', 'TEL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3388, 215, 'Tokat', 'TOK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3389, 215, 'Trabzon', 'TRA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3390, 215, 'Tunceli', 'TUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3391, 215, 'Uşak', 'USK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3392, 215, 'Van', 'VAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3393, 215, 'Yalova', 'YAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3394, 215, 'Yozgat', 'YOZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3395, 215, 'Zonguldak', 'ZON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3396, 216, 'Ahal Welayaty', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3397, 216, 'Balkan Welayaty', 'B', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3399, 216, 'Lebap Welayaty', 'L', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3400, 216, 'Mary Welayaty', 'M', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3401, 217, 'Ambergris Cays', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3402, 217, 'Dellis Cay', 'DC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3403, 217, 'French Cay', 'FC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3404, 217, 'Little Water Cay', 'LW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3405, 217, 'Parrot Cay', 'RC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3406, 217, 'Pine Cay', 'PN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3407, 217, 'Salt Cay', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3408, 217, 'Grand Turk', 'GT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3409, 217, 'South Caicos', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3410, 217, 'East Caicos', 'EC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3411, 217, 'Middle Caicos', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3412, 217, 'North Caicos', 'NC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3413, 217, 'Providenciales', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3414, 217, 'West Caicos', 'WC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3415, 218, 'Nanumanga', 'NMG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3416, 218, 'Niulakita', 'NLK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3417, 218, 'Niutao', 'NTO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3418, 218, 'Funafuti', 'FUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3419, 218, 'Nanumea', 'NME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3420, 218, 'Nui', 'NUI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3421, 218, 'Nukufetau', 'NFT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3422, 218, 'Nukulaelae', 'NLL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3423, 218, 'Vaitupu', 'VAI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3424, 219, 'Kalangala', 'KAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3425, 219, 'Kampala', 'KMP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3426, 219, 'Kayunga', 'KAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3427, 219, 'Kiboga', 'KIB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3428, 219, 'Luwero', 'LUW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3429, 219, 'Masaka', 'MAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3430, 219, 'Mpigi', 'MPI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3431, 219, 'Mubende', 'MUB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3432, 219, 'Mukono', 'MUK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3433, 219, 'Nakasongola', 'NKS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3434, 219, 'Rakai', 'RAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3435, 219, 'Sembabule', 'SEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3436, 219, 'Wakiso', 'WAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3437, 219, 'Bugiri', 'BUG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3438, 219, 'Busia', 'BUS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3439, 219, 'Iganga', 'IGA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3440, 219, 'Jinja', 'JIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3441, 219, 'Kaberamaido', 'KAB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3442, 219, 'Kamuli', 'KML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3443, 219, 'Kapchorwa', 'KPC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3444, 219, 'Katakwi', 'KTK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3445, 219, 'Kumi', 'KUM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3446, 219, 'Mayuge', 'MAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3447, 219, 'Mbale', 'MBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3448, 219, 'Pallisa', 'PAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3449, 219, 'Sironko', 'SIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3450, 219, 'Soroti', 'SOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3451, 219, 'Tororo', 'TOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3452, 219, 'Adjumani', 'ADJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3453, 219, 'Apac', 'APC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3454, 219, 'Arua', 'ARU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3455, 219, 'Gulu', 'GUL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3456, 219, 'Kitgum', 'KIT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3457, 219, 'Kotido', 'KOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3458, 219, 'Lira', 'LIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3459, 219, 'Moroto', 'MRT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3460, 219, 'Moyo', 'MOY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3461, 219, 'Nakapiripirit', 'NAK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3462, 219, 'Nebbi', 'NEB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3463, 219, 'Pader', 'PAD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3464, 219, 'Yumbe', 'YUM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3465, 219, 'Bundibugyo', 'BUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3466, 219, 'Bushenyi', 'BSH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3467, 219, 'Hoima', 'HOI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3468, 219, 'Kabale', 'KBL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3469, 219, 'Kabarole', 'KAR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3470, 219, 'Kamwenge', 'KAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3471, 219, 'Kanungu', 'KAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3472, 219, 'Kasese', 'KAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3473, 219, 'Kibaale', 'KBA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3474, 219, 'Kisoro', 'KIS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3475, 219, 'Kyenjojo', 'KYE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3476, 219, 'Masindi', 'MSN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3477, 219, 'Mbarara', 'MBR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3478, 219, 'Ntungamo', 'NTU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3479, 219, 'Rukungiri', 'RUK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3483, 220, 'Crimea', '43', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3490, 220, 'Kyiv', '30', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3498, 220, 'Sevastopol\'', '40', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3506, 221, 'Abu Dhabi', 'ADH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3507, 221, '\'Ajman', 'AJ', 1, 0, '0000-00-00 00:00:00', 0, '2019-06-24 06:03:01'),
(3508, 221, 'Al Fujayrah', 'FU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3509, 221, 'Ash Shariqah', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3510, 221, 'Dubai', 'DU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3511, 221, 'R\'as al Khaymah', 'RK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3513, 222, 'Aberdeen', 'ABN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3514, 222, 'Aberdeenshire', 'ABNS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3515, 222, 'Anglesey', 'ANG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3516, 222, 'Angus', 'AGS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3517, 222, 'Argyll and Bute', 'ARY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3518, 222, 'Bedfordshire', 'BEDS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3519, 222, 'Berkshire', 'BERKS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3520, 222, 'Blaenau Gwent', 'BLA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3521, 222, 'Bridgend', 'BRI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3522, 222, 'Bristol', 'BSTL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3524, 222, 'Caerphilly', 'CAE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3526, 222, 'Cardiff', 'CDF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3527, 222, 'Carmarthenshire', 'CARM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3528, 222, 'Ceredigion', 'CDGN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3529, 222, 'Cheshire', 'CHES', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3530, 222, 'Clackmannanshire', 'CLACK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3531, 222, 'Conwy', 'CON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3532, 222, 'Cornwall', 'CORN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3533, 222, 'Denbighshire', 'DNBG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3534, 222, 'Derbyshire', 'DERBY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3535, 222, 'Devon', 'DVN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3536, 222, 'Dorset', 'DOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3538, 222, 'Dundee', 'DUND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3539, 222, 'Durham', 'DHM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3540, 222, 'East Ayrshire', 'ARYE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3542, 222, 'East Lothian', 'LOTE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3543, 222, 'East Renfrewshire', 'RENE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3545, 222, 'East Sussex', 'SXE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3546, 222, 'Edinburgh', 'EDIN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3547, 222, 'Essex', 'ESX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3548, 222, 'Falkirk', 'FALK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3549, 222, 'Fife', 'FFE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3550, 222, 'Flintshire', 'FLINT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3551, 222, 'Glasgow', 'GLAS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3552, 222, 'Gloucestershire', 'GLOS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3553, 222, 'Greater London', 'LDN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3554, 222, 'Greater Manchester', 'MCH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3555, 222, 'Gwynedd', 'GDD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3556, 222, 'Hampshire', 'HANTS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3557, 222, 'Herefordshire', 'HWR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3558, 222, 'Hertfordshire', 'HERTS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3559, 222, 'Highlands', 'HLD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3560, 222, 'Inverclyde', 'IVER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3561, 222, 'Isle of Wight', 'IOW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3562, 222, 'Kent', 'KNT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3563, 222, 'Lancashire', 'LANCS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3564, 222, 'Leicestershire', 'LEICS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3565, 222, 'Lincolnshire', 'LINCS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3566, 222, 'Merseyside', 'MSY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3568, 222, 'Midlothian', 'MLOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3570, 222, 'Moray', 'MORAY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3572, 222, 'Newport', 'NEWPT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3573, 222, 'Norfolk', 'NOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3574, 222, 'North Ayrshire', 'ARYN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3575, 222, 'North Lanarkshire', 'LANN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3576, 222, 'North Yorkshire', 'YSN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3577, 222, 'Northamptonshire', 'NHM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3578, 222, 'Northumberland', 'NLD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3579, 222, 'Nottinghamshire', 'NOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3580, 222, 'Orkney Islands', 'ORK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3581, 222, 'Oxfordshire', 'OFE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3582, 222, 'Pembrokeshire', 'PEM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3583, 222, 'Perth and Kinross', 'PERTH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3584, 222, 'Powys', 'PWS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3585, 222, 'Renfrewshire', 'REN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3587, 222, 'Rutland', 'RUT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3588, 222, 'Scottish Borders', 'BOR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3589, 222, 'Shetland Islands', 'SHET', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3590, 222, 'Shropshire', 'SPE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3591, 222, 'Somerset', 'SOM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3592, 222, 'South Ayrshire', 'ARYS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3593, 222, 'South Lanarkshire', 'LANS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3594, 222, 'South Yorkshire', 'YSS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3595, 222, 'Staffordshire', 'SFD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3596, 222, 'Stirling', 'STIR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3597, 222, 'Suffolk', 'SFK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3598, 222, 'Surrey', 'SRY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3599, 222, 'Swansea', 'SWAN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3600, 222, 'Torfaen', 'TORF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3601, 222, 'Tyne and Wear', 'TWR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3603, 222, 'Warwickshire', 'WARKS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3605, 222, 'West Lothian', 'WLOT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3606, 222, 'West Midlands', 'WMD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3607, 222, 'West Sussex', 'SXW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3608, 222, 'West Yorkshire', 'YSW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3609, 222, 'Western Isles', 'WIL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3610, 222, 'Wiltshire', 'WLT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3611, 222, 'Worcestershire', 'WORCS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3612, 222, 'Wrexham', 'WRX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3613, 223, 'Alabama', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3614, 223, 'Alaska', 'AK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3615, 223, 'American Samoa', 'AS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3616, 223, 'Arizona', 'AZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3617, 223, 'Arkansas', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3618, 223, 'Armed Forces Africa', 'AF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3619, 223, 'Armed Forces Americas', 'AA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3620, 223, 'Armed Forces Canada', 'AC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3621, 223, 'Armed Forces Europe', 'AE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3622, 223, 'Armed Forces Middle East', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3623, 223, 'Armed Forces Pacific', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3624, 223, 'California', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3625, 223, 'Colorado', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3626, 223, 'Connecticut', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3627, 223, 'Delaware', 'DE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3628, 223, 'District of Columbia', 'DC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3630, 223, 'Florida', 'FL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3631, 223, 'Georgia', 'GA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3632, 223, 'Guam', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3633, 223, 'Hawaii', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3634, 223, 'Idaho', 'ID', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3635, 223, 'Illinois', 'IL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3636, 223, 'Indiana', 'IN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3637, 223, 'Iowa', 'IA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3638, 223, 'Kansas', 'KS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3639, 223, 'Kentucky', 'KY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3640, 223, 'Louisiana', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3641, 223, 'Maine', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3642, 223, 'Marshall Islands', 'MH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3643, 223, 'Maryland', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3644, 223, 'Massachusetts', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3645, 223, 'Michigan', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3646, 223, 'Minnesota', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3647, 223, 'Mississippi', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3648, 223, 'Missouri', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3649, 223, 'Montana', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3650, 223, 'Nebraska', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3651, 223, 'Nevada', 'NV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3652, 223, 'New Hampshire', 'NH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3653, 223, 'New Jersey', 'NJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3654, 223, 'New Mexico', 'NM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3655, 223, 'New York', 'NY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3656, 223, 'North Carolina', 'NC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3657, 223, 'North Dakota', 'ND', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3658, 223, 'Northern Mariana Islands', 'MP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3659, 223, 'Ohio', 'OH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3660, 223, 'Oklahoma', 'OK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3661, 223, 'Oregon', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3662, 223, 'Palau', 'PW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3663, 223, 'Pennsylvania', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3664, 223, 'Puerto Rico', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3665, 223, 'Rhode Island', 'RI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3666, 223, 'South Carolina', 'SC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3667, 223, 'South Dakota', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3668, 223, 'Tennessee', 'TN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3669, 223, 'Texas', 'TX', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3670, 223, 'Utah', 'UT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3671, 223, 'Vermont', 'VT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3672, 223, 'Virgin Islands', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3673, 223, 'Virginia', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3674, 223, 'Washington', 'WA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3675, 223, 'West Virginia', 'WV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3676, 223, 'Wisconsin', 'WI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3677, 223, 'Wyoming', 'WY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3678, 224, 'Baker Island', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3679, 224, 'Howland Island', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3680, 224, 'Jarvis Island', 'JI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3681, 224, 'Johnston Atoll', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3682, 224, 'Kingman Reef', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3683, 224, 'Midway Atoll', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3684, 224, 'Navassa Island', 'NI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3685, 224, 'Palmyra Atoll', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3686, 224, 'Wake Island', 'WI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3687, 225, 'Artigas', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3688, 225, 'Canelones', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3689, 225, 'Cerro Largo', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3690, 225, 'Colonia', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3691, 225, 'Durazno', 'DU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3692, 225, 'Flores', 'FS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3693, 225, 'Florida', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3694, 225, 'Lavalleja', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3695, 225, 'Maldonado', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3696, 225, 'Montevideo', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3697, 225, 'Paysandu', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3698, 225, 'Rio Negro', 'RN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3699, 225, 'Rivera', 'RV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3700, 225, 'Rocha', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3701, 225, 'Salto', 'SL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3702, 225, 'San Jose', 'SJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3703, 225, 'Soriano', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3704, 225, 'Tacuarembo', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3705, 225, 'Treinta y Tres', 'TT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3706, 226, 'Andijon', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3707, 226, 'Buxoro', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3708, 226, 'Farg\'ona', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3709, 226, 'Jizzax', 'JI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3710, 226, 'Namangan', 'NG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3711, 226, 'Navoiy', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3712, 226, 'Qashqadaryo', 'QA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3714, 226, 'Samarqand', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3715, 226, 'Sirdaryo', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3716, 226, 'Surxondaryo', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3717, 226, 'Toshkent City', 'TK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3718, 226, 'Toshkent Region', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3719, 226, 'Xorazm', 'XO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3720, 227, 'Malampa', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3721, 227, 'Penama', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3722, 227, 'Sanma', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3723, 227, 'Shefa', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3724, 227, 'Tafea', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3725, 227, 'Torba', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3726, 229, 'Amazonas', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3727, 229, 'Anzoategui', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3728, 229, 'Apure', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3729, 229, 'Aragua', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3730, 229, 'Barinas', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3731, 229, 'Bolivar', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3732, 229, 'Carabobo', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3733, 229, 'Cojedes', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3734, 229, 'Delta Amacuro', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3735, 229, 'Dependencias Federales', 'DF', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3736, 229, 'Distrito Federal', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3737, 229, 'Falcon', 'FA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3738, 229, 'Guarico', 'GU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3739, 229, 'Lara', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3740, 229, 'Merida', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3741, 229, 'Miranda', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3742, 229, 'Monagas', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3743, 229, 'Nueva Esparta', 'NE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3744, 229, 'Portuguesa', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3745, 229, 'Sucre', 'SU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3746, 229, 'Tachira', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3747, 229, 'Trujillo', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3748, 229, 'Vargas', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3749, 229, 'Yaracuy', 'YA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3750, 229, 'Zulia', 'ZU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3751, 230, 'An Giang', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3752, 230, 'Bac Giang', 'BG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3753, 230, 'Bac Kan', 'BK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3754, 230, 'Bac Lieu', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3755, 230, 'Bac Ninh', 'BC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3757, 230, 'Ben Tre', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3758, 230, 'Binh Dinh', 'BH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3759, 230, 'Binh Duong', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3760, 230, 'Binh Phuoc', 'BP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3761, 230, 'Binh Thuan', 'BT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3762, 230, 'Ca Mau', 'CM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3763, 230, 'Can Tho', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3764, 230, 'Cao Bang', 'CB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3765, 230, 'Dak Lak', 'DL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3766, 230, 'Dak Nong', 'DG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3767, 230, 'Da Nang', 'DN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3768, 230, 'Dien Bien', 'DB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3769, 230, 'Dong Nai', 'DI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3770, 230, 'Dong Thap', 'DT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3771, 230, 'Gia Lai', 'GL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3772, 230, 'Ha Giang', 'HG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3773, 230, 'Hai Duong', 'HD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3774, 230, 'Hai Phong', 'HP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3775, 230, 'Ha Nam', 'HM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3776, 230, 'Ha Noi', 'HI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3777, 230, 'Ha Tay', 'HT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3778, 230, 'Ha Tinh', 'HH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3779, 230, 'Hoa Binh', 'HB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3780, 230, 'Ho Chi Minh City', 'HC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3781, 230, 'Hau Giang', 'HU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3782, 230, 'Hung Yen', 'HY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3783, 232, 'Saint Croix', 'C', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3784, 232, 'Saint John', 'J', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3785, 232, 'Saint Thomas', 'T', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3786, 233, 'Alo', 'A', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3787, 233, 'Sigave', 'S', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3788, 233, 'Wallis', 'W', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3789, 235, 'Abyan', 'AB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3790, 235, 'Adan', 'AD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3791, 235, 'Amran', 'AM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3792, 235, 'Al Bayda', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3793, 235, 'Ad Dali', 'DA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3794, 235, 'Dhamar', 'DH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3795, 235, 'Hadramawt', 'HD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3796, 235, 'Hajjah', 'HJ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3797, 235, 'Al Hudaydah', 'HU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3798, 235, 'Ibb', 'IB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3799, 235, 'Al Jawf', 'JA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3800, 235, 'Lahij', 'LA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3801, 235, 'Ma\'rib', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3802, 235, 'Al Mahrah', 'MR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3803, 235, 'Al Mahwit', 'MW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3804, 235, 'Sa\'dah', 'SD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3805, 235, 'San\'a', 'SN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3806, 235, 'Shabwah', 'SH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3807, 235, 'Ta\'izz', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3812, 237, 'Bas-Congo', 'BC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3813, 237, 'Bandundu', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3814, 237, 'Equateur', 'EQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3815, 237, 'Katanga', 'KA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3816, 237, 'Kasai-Oriental', 'KE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3817, 237, 'Kinshasa', 'KN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3818, 237, 'Kasai-Occidental', 'KW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3819, 237, 'Maniema', 'MA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3820, 237, 'Nord-Kivu', 'NK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3821, 237, 'Orientale', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3822, 237, 'Sud-Kivu', 'SK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3823, 238, 'Central', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3824, 238, 'Copperbelt', 'CB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3825, 238, 'Eastern', 'EA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3826, 238, 'Luapula', 'LP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3827, 238, 'Lusaka', 'LK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3828, 238, 'Northern', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3829, 238, 'North-Western', 'NW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3830, 238, 'Southern', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3831, 238, 'Western', 'WE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3832, 239, 'Bulawayo', 'BU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3833, 239, 'Harare', 'HA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3834, 239, 'Manicaland', 'ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3835, 239, 'Mashonaland Central', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3836, 239, 'Mashonaland East', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3837, 239, 'Mashonaland West', 'MW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3838, 239, 'Masvingo', 'MV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3839, 239, 'Matabeleland North', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3840, 239, 'Matabeleland South', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3841, 239, 'Midlands', 'MD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3842, 105, 'Agrigento', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3843, 105, 'Alessandria', 'AL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3844, 105, 'Ancona', 'AN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3845, 105, 'Aosta', 'AO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3846, 105, 'Arezzo', 'AR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3847, 105, 'Ascoli Piceno', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3848, 105, 'Asti', 'AT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3849, 105, 'Avellino', 'AV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3850, 105, 'Bari', 'BA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3851, 105, 'Belluno', 'BL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3852, 105, 'Benevento', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3853, 105, 'Bergamo', 'BG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3854, 105, 'Biella', 'BI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3855, 105, 'Bologna', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3856, 105, 'Bolzano', 'BZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3857, 105, 'Brescia', 'BS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3858, 105, 'Brindisi', 'BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3859, 105, 'Cagliari', 'CA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3860, 105, 'Caltanissetta', 'CL', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3861, 105, 'Campobasso', 'CB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3863, 105, 'Caserta', 'CE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3864, 105, 'Catania', 'CT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3865, 105, 'Catanzaro', 'CZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3866, 105, 'Chieti', 'CH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3867, 105, 'Como', 'CO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3868, 105, 'Cosenza', 'CS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3869, 105, 'Cremona', 'CR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3870, 105, 'Crotone', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3871, 105, 'Cuneo', 'CN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3872, 105, 'Enna', 'EN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3873, 105, 'Ferrara', 'FE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3874, 105, 'Firenze', 'FI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3875, 105, 'Foggia', 'FG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3876, 105, 'Forli-Cesena', 'FC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3877, 105, 'Frosinone', 'FR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3878, 105, 'Genova', 'GE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3879, 105, 'Gorizia', 'GO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3880, 105, 'Grosseto', 'GR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3881, 105, 'Imperia', 'IM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3882, 105, 'Isernia', 'IS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3883, 105, 'L&#39;Aquila', 'AQ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3884, 105, 'La Spezia', 'SP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3885, 105, 'Latina', 'LT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3886, 105, 'Lecce', 'LE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3887, 105, 'Lecco', 'LC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3888, 105, 'Livorno', 'LI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3889, 105, 'Lodi', 'LO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3890, 105, 'Lucca', 'LU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3891, 105, 'Macerata', 'MC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3892, 105, 'Mantova', 'MN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3893, 105, 'Massa-Carrara', 'MS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3894, 105, 'Matera', 'MT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3896, 105, 'Messina', 'ME', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3897, 105, 'Milano', 'MI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3898, 105, 'Modena', 'MO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3899, 105, 'Napoli', 'NA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3900, 105, 'Novara', 'NO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3901, 105, 'Nuoro', 'NU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3904, 105, 'Oristano', 'OR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3905, 105, 'Padova', 'PD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3906, 105, 'Palermo', 'PA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3907, 105, 'Parma', 'PR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3908, 105, 'Pavia', 'PV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3909, 105, 'Perugia', 'PG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3910, 105, 'Pesaro e Urbino', 'PU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3911, 105, 'Pescara', 'PE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3912, 105, 'Piacenza', 'PC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3913, 105, 'Pisa', 'PI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3914, 105, 'Pistoia', 'PT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3915, 105, 'Pordenone', 'PN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3916, 105, 'Potenza', 'PZ', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3917, 105, 'Prato', 'PO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3918, 105, 'Ragusa', 'RG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3919, 105, 'Ravenna', 'RA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3920, 105, 'Reggio Calabria', 'RC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3921, 105, 'Reggio Emilia', 'RE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3922, 105, 'Rieti', 'RI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3923, 105, 'Rimini', 'RN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3924, 105, 'Roma', 'RM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3925, 105, 'Rovigo', 'RO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3926, 105, 'Salerno', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3927, 105, 'Sassari', 'SS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3928, 105, 'Savona', 'SV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3929, 105, 'Siena', 'SI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3930, 105, 'Siracusa', 'SR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3931, 105, 'Sondrio', 'SO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3932, 105, 'Taranto', 'TA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3933, 105, 'Teramo', 'TE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3934, 105, 'Terni', 'TR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3935, 105, 'Torino', 'TO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3936, 105, 'Trapani', 'TP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3937, 105, 'Trento', 'TN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3938, 105, 'Treviso', 'TV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3939, 105, 'Trieste', 'TS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3940, 105, 'Udine', 'UD', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3941, 105, 'Varese', 'VA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3942, 105, 'Venezia', 'VE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3944, 105, 'Vercelli', 'VC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3945, 105, 'Verona', 'VR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3946, 105, 'Vibo Valentia', 'VV', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3947, 105, 'Vicenza', 'VI', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3948, 105, 'Viterbo', 'VT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3949, 222, 'County Antrim', 'ANT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3950, 222, 'County Armagh', 'ARM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3951, 222, 'County Down', 'DOW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3952, 222, 'County Fermanagh', 'FER', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3953, 222, 'County Londonderry', 'LDY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3954, 222, 'County Tyrone', 'TYR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3955, 222, 'Cumbria', 'CMA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3956, 190, 'Pomurska', '1', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3957, 190, 'Podravska', '2', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3958, 190, 'Koroška', '3', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3959, 190, 'Savinjska', '4', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3960, 190, 'Zasavska', '5', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3961, 190, 'Spodnjeposavska', '6', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3963, 190, 'Osrednjeslovenska', '8', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3964, 190, 'Gorenjska', '9', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3965, 190, 'Notranjsko-kraška', '10', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3966, 190, 'Goriška', '11', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3967, 190, 'Obalno-kraška', '12', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3968, 33, 'Ruse', '', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3969, 101, 'Alborz', 'ALB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3971, 138, 'Aguascalientes', 'AG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3973, 242, 'Andrijevica', '01', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3974, 242, 'Bar', '02', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3975, 242, 'Berane', '03', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3976, 242, 'Bijelo Polje', '04', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3977, 242, 'Budva', '05', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3978, 242, 'Cetinje', '06', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3979, 242, 'Danilovgrad', '07', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3980, 242, 'Herceg-Novi', '08', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3981, 242, 'Kolašin', '09', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3982, 242, 'Kotor', '10', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3983, 242, 'Mojkovac', '11', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3984, 242, 'Nikšić', '12', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3985, 242, 'Plav', '13', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3986, 242, 'Pljevlja', '14', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3987, 242, 'Plužine', '15', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3988, 242, 'Podgorica', '16', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3989, 242, 'Rožaje', '17', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3990, 242, 'Šavnik', '18', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3991, 242, 'Tivat', '19', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3992, 242, 'Ulcinj', '20', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3993, 242, 'Žabljak', '21', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3994, 243, 'Belgrade', '00', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3995, 243, 'North Bačka', '01', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3996, 243, 'Central Banat', '02', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3997, 243, 'North Banat', '03', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3998, 243, 'South Banat', '04', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3999, 243, 'West Bačka', '05', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4000, 243, 'South Bačka', '06', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4001, 243, 'Srem', '07', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4002, 243, 'Mačva', '08', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4003, 243, 'Kolubara', '09', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4004, 243, 'Podunavlje', '10', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4005, 243, 'Braničevo', '11', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4006, 243, 'Šumadija', '12', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4007, 243, 'Pomoravlje', '13', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4008, 243, 'Bor', '14', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4009, 243, 'Zaječar', '15', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4010, 243, 'Zlatibor', '16', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4011, 243, 'Moravica', '17', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4012, 243, 'Raška', '18', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4013, 243, 'Rasina', '19', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4014, 243, 'Nišava', '20', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4015, 243, 'Toplica', '21', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4016, 243, 'Pirot', '22', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4017, 243, 'Jablanica', '23', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4018, 243, 'Pčinja', '24', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4020, 245, 'Bonaire', 'BO', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4021, 245, 'Saba', 'SA', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4022, 245, 'Sint Eustatius', 'SE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4023, 248, 'Central Equatoria', 'EC', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4024, 248, 'Eastern Equatoria', 'EE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4025, 248, 'Jonglei', 'JG', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4026, 248, 'Lakes', 'LK', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4028, 248, 'Unity', 'UY', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4029, 248, 'Upper Nile', 'NU', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4030, 248, 'Warrap', 'WR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4032, 248, 'Western Equatoria', 'EW', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4035, 129, 'Putrajaya', 'MY-16', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4038, 117, 'Aizkraukles novads', '0320200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4040, 117, 'Aizputes novads', '0640600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4042, 117, 'Aknīstes novads', '0560800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4044, 117, 'Alojas novads', '0661000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4045, 117, 'Alsungas novads', '0624200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4047, 117, 'Alūksnes novads', '0360200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4048, 117, 'Amatas novads', '0424701', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4049, 117, 'Ape, Apes novads', '0360805', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4050, 117, 'Apes novads', '0360800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4051, 117, 'Auce, Auces novads', '0460805', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4052, 117, 'Auces novads', '0460800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4053, 117, 'Ādažu novads', '0804400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4054, 117, 'Babītes novads', '0804900', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4056, 117, 'Baldones novads', '0800600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4058, 117, 'Baltinavas novads', '0384400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4060, 117, 'Balvu novads', '0380200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4062, 117, 'Bauskas novads', '0400200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4063, 117, 'Beverīnas novads', '0964700', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4065, 117, 'Brocēnu novads', '0840601', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4066, 117, 'Burtnieku novads', '0967101', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4067, 117, 'Carnikavas novads', '0805200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4069, 117, 'Cesvaines novads', '0700800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4071, 117, 'Cēsu novads', '0420200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4072, 117, 'Ciblas novads', '0684901', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4074, 117, 'Dagdas novads', '0601000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4075, 117, 'Daugavpils', '0050000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4076, 117, 'Daugavpils novads', '0440200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4078, 117, 'Dobeles novads', '0460200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4079, 117, 'Dundagas novads', '0885100', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4081, 117, 'Durbes novads', '0640801', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4082, 117, 'Engures novads', '0905100', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4083, 117, 'Ērgļu novads', '0705500', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4084, 117, 'Garkalnes novads', '0806000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4086, 117, 'Grobiņas novads', '0641000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4088, 117, 'Gulbenes novads', '0500200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4089, 117, 'Iecavas novads', '0406400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4091, 117, 'Ikšķiles novads', '0740600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4093, 117, 'Ilūkstes novads', '0440801', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4094, 117, 'Inčukalna novads', '0801800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4098, 117, 'Jaunpils novads', '0905700', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4099, 117, 'Jelgava', '0090000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4100, 117, 'Jelgavas novads', '0540200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4101, 117, 'Jēkabpils', '0110000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4102, 117, 'Jēkabpils novads', '0560200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4103, 117, 'Jūrmala', '0130000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4106, 117, 'Kandavas novads', '0901201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4108, 117, 'Kārsavas novads', '0681000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4110, 117, 'Kokneses novads', '0326100', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4112, 117, 'Krāslavas novads', '0600202', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4113, 117, 'Krimuldas novads', '0806900', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4114, 117, 'Krustpils novads', '0566900', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4116, 117, 'Kuldīgas novads', '0620200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4117, 117, 'Ķeguma novads', '0741001', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4119, 117, 'Ķekavas novads', '0800800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4121, 117, 'Lielvārdes novads', '0741401', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4122, 117, 'Liepāja', '0170000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4124, 117, 'Limbažu novads', '0660200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4126, 117, 'Līgatnes novads', '0421200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4128, 117, 'Līvānu novads', '0761201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4130, 117, 'Lubānas novads', '0701400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4132, 117, 'Ludzas novads', '0680200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4133, 117, 'Madona, Madonas novads', '0700201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4134, 117, 'Madonas novads', '0700200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4136, 117, 'Mazsalacas novads', '0961000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4137, 117, 'Mālpils novads', '0807400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4138, 117, 'Mārupes novads', '0807600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4139, 117, 'Mērsraga novads', '0887600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4140, 117, 'Naukšēnu novads', '0967300', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4141, 117, 'Neretas novads', '0327100', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4142, 117, 'Nīcas novads', '0647900', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4144, 117, 'Ogres novads', '0740202', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4146, 117, 'Olaines novads', '0801000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4147, 117, 'Ozolnieku novads', '0546701', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4148, 117, 'Pārgaujas novads', '0427500', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4150, 117, 'Pāvilostas novads', '0641401', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4153, 117, 'Pļaviņu novads', '0321400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4155, 117, 'Preiļu novads', '0760202', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4157, 117, 'Priekules novads', '0641600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4158, 117, 'Priekuļu novads', '0427300', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4159, 117, 'Raunas novads', '0427700', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4160, 117, 'Rēzekne', '0210000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4161, 117, 'Rēzeknes novads', '0780200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4162, 117, 'Riebiņu novads', '0766300', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4163, 117, 'Rīga', '0010000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4164, 117, 'Rojas novads', '0888300', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4165, 117, 'Ropažu novads', '0808400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4166, 117, 'Rucavas novads', '0648500', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4167, 117, 'Rugāju novads', '0387500', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4168, 117, 'Rundāles novads', '0407700', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4170, 117, 'Rūjienas novads', '0961600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4173, 117, 'Salacgrīvas novads', '0661400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4174, 117, 'Salas novads', '0568700', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4175, 117, 'Salaspils novads', '0801200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4177, 117, 'Saldus novads', '0840200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4180, 117, 'Saulkrastu novads', '0801400', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4181, 117, 'Seda, Strenču novads', '0941813', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4182, 117, 'Sējas novads', '0809200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4184, 117, 'Siguldas novads', '0801601', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4185, 117, 'Skrīveru novads', '0328200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4187, 117, 'Skrundas novads', '0621200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4189, 117, 'Smiltenes novads', '0941600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4191, 117, 'Stende, Talsu novads', '0880215', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4192, 117, 'Stopiņu novads', '0809600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4194, 117, 'Strenču novads', '0941800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4197, 117, 'Talsu novads', '0880200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4198, 117, 'Tērvetes novads', '0468900', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4199, 117, 'Tukuma novads', '0900200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4201, 117, 'Vaiņodes novads', '0649300', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `zones` (`id`, `country_id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4203, 117, 'Valka, Valkas novads', '0940201', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4204, 117, 'Valkas novads', '0940200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4205, 117, 'Valmiera', '0250000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4208, 117, 'Varakļānu novads', '0701800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4209, 117, 'Vārkavas novads', '0769101', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4211, 117, 'Vecumnieku novads', '0409500', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4212, 117, 'Ventspils', '0270000', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4213, 117, 'Ventspils novads', '0980200', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4215, 117, 'Viesītes novads', '0561800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4217, 117, 'Viļakas novads', '0381600', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4219, 117, 'Viļānu novads', '0781800', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4221, 117, 'Zilupes novads', '0681801', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4222, 43, 'Arica y Parinacota', 'AP', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4223, 43, 'Los Rios', 'LR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4225, 118, 'Beirut', 'LB-BR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4226, 118, 'Bekaa', 'LB-BE', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4228, 118, 'Nabatieh', 'LB-NB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4229, 118, 'North', 'LB-NR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4230, 118, 'South', 'LB-ST', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4231, 99, 'Telangana', 'TS', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4232, 44, 'Qinghai', 'QH', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4233, 100, 'Papua Barat', 'PB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4234, 100, 'Sulawesi Barat', 'SR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4235, 100, 'Kepulauan Riau', 'KR', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4237, 105, 'Fermo', 'FM', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4238, 105, 'Monza Brianza', 'MB', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4240, 99, 'test', 'test', 1, 0, '2019-06-23 06:43:59', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `zones_view`
-- (See below for the actual view)
--
CREATE TABLE `zones_view` (
`id` int(11)
,`country_id` int(11)
,`name` varchar(128)
,`code` varchar(32)
,`status` tinyint(1)
,`created_by` int(11)
,`created_at` datetime
,`updated_by` int(11)
,`updated_at` datetime
,`country` varchar(128)
);

-- --------------------------------------------------------

--
-- Structure for view `attributes_view`
--
DROP TABLE IF EXISTS `attributes_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `attributes_view`  AS  select `a`.`id` AS `id`,`a`.`group_id` AS `group_id`,`a`.`name` AS `name`,`a`.`image` AS `image`,`a`.`sort_order` AS `sort_order`,`a`.`status` AS `status`,`a`.`created_by` AS `created_by`,`a`.`created_at` AS `created_at`,`a`.`updated_by` AS `updated_by`,`a`.`updated_at` AS `updated_at`,`ag`.`name` AS `group_name` from (`attributes` `a` left join `attribute_groups` `ag` on((`ag`.`id` = `a`.`group_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `banners_view`
--
DROP TABLE IF EXISTS `banners_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `banners_view`  AS  select `b`.`id` AS `id`,`b`.`type_id` AS `type_id`,`b`.`name` AS `name`,`b`.`reference` AS `reference`,`b`.`reference_id` AS `reference_id`,`b`.`status` AS `status`,`b`.`created_by` AS `created_by`,`b`.`created_at` AS `created_at`,`b`.`updated_by` AS `updated_by`,`b`.`updated_at` AS `updated_at`,`t`.`name` AS `type` from (`banners` `b` left join `types` `t` on((`t`.`id` = `b`.`type_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `banner_images_view`
--
DROP TABLE IF EXISTS `banner_images_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `banner_images_view`  AS  select `bi`.`id` AS `id`,`bi`.`banner_id` AS `banner_id`,`bi`.`type` AS `type`,`bi`.`type_id` AS `type_id`,`bi`.`name` AS `name`,`bi`.`image` AS `image`,`bi`.`link` AS `link`,`bi`.`sort_order` AS `sort_order`,`b`.`name` AS `banner` from (`banner_images` `bi` left join `banners` `b` on((`b`.`id` = `bi`.`banner_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `carts_view`
--
DROP TABLE IF EXISTS `carts_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carts_view`  AS  select `ct`.`id` AS `id`,`ct`.`token` AS `token`,`ct`.`customer_id` AS `customer_id`,`ct`.`product_id` AS `product_id`,`ct`.`price_type` AS `price_type`,`ct`.`option` AS `option`,`ct`.`quantity` AS `quantity`,`ct`.`status` AS `status`,`ct`.`created_by` AS `created_by`,`ct`.`created_at` AS `created_at`,`ct`.`updated_by` AS `updated_by`,`ct`.`updated_at` AS `updated_at`,`c`.`name` AS `customer`,`p`.`name` AS `product`,`p`.`image` AS `product_image`,`p`.`mrp` AS `mrp`,`p`.`price` AS `price` from ((`carts` `ct` left join `customers` `c` on((`c`.`id` = `ct`.`customer_id`))) left join `products` `p` on((`p`.`id` = `ct`.`product_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `categories_view`
--
DROP TABLE IF EXISTS `categories_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `categories_view`  AS  select `c`.`id` AS `id`,`c`.`type_id` AS `type_id`,`c`.`parent_id` AS `parent_id`,`c`.`name` AS `name`,`c`.`image` AS `image`,`c`.`mobile_menu` AS `mobile_menu`,`c`.`top` AS `top`,`c`.`bottom` AS `bottom`,`c`.`sort_order` AS `sort_order`,`c`.`status` AS `status`,`c`.`created_by` AS `created_by`,`c`.`created_at` AS `created_at`,`c`.`updated_by` AS `updated_by`,`c`.`updated_at` AS `updated_at`,`p`.`name` AS `parent`,`t`.`name` AS `type` from ((`categories` `c` left join `types` `t` on((`t`.`id` = `c`.`type_id`))) left join `categories` `p` on((`p`.`id` = `c`.`parent_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `cities_view`
--
DROP TABLE IF EXISTS `cities_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cities_view`  AS  select `c`.`id` AS `id`,`c`.`country_id` AS `country_id`,`c`.`zone_id` AS `zone_id`,`c`.`name` AS `name`,`c`.`code` AS `code`,`c`.`status` AS `status`,`c`.`created_by` AS `created_by`,`c`.`created_at` AS `created_at`,`c`.`updated_by` AS `updated_by`,`c`.`updated_at` AS `updated_at`,`ct`.`name` AS `country`,`z`.`name` AS `zone` from ((`cities` `c` left join `countries` `ct` on((`ct`.`id` = `c`.`country_id`))) left join `zones` `z` on((`z`.`id` = `c`.`zone_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `coupons_view`
--
DROP TABLE IF EXISTS `coupons_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `coupons_view`  AS  select `c`.`id` AS `id`,`c`.`customer_group_id` AS `customer_group_id`,`c`.`code` AS `code`,`c`.`start_date` AS `start_date`,`c`.`end_date` AS `end_date`,`c`.`name` AS `name`,`c`.`image` AS `image`,`c`.`discount_type` AS `discount_type`,`c`.`discount` AS `discount`,`c`.`used_limit` AS `used_limit`,`c`.`status` AS `status`,`c`.`created_by` AS `created_by`,`c`.`created_at` AS `created_at`,`c`.`updated_by` AS `updated_by`,`c`.`updated_at` AS `updated_at`,`cg`.`name` AS `customer_group` from (`coupons` `c` left join `customer_groups` `cg` on((`cg`.`id` = `c`.`customer_group_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `customers_view`
--
DROP TABLE IF EXISTS `customers_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customers_view`  AS  select `c`.`id` AS `id`,`c`.`group_id` AS `group_id`,`c`.`name` AS `name`,`c`.`email` AS `email`,`c`.`contact` AS `contact`,`c`.`password` AS `password`,`c`.`image` AS `image`,`c`.`pan_number` AS `pan_number`,`c`.`gst_number` AS `gst_number`,`c`.`status` AS `status`,`c`.`created_by` AS `created_by`,`c`.`created_at` AS `created_at`,`c`.`updated_by` AS `updated_by`,`c`.`updated_at` AS `updated_at`,`cg`.`name` AS `group_name` from (`customers` `c` left join `customer_groups` `cg` on((`cg`.`id` = `c`.`group_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_addresses_view`
--
DROP TABLE IF EXISTS `customer_addresses_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_addresses_view`  AS  select `ca`.`id` AS `id`,`ca`.`customer_id` AS `customer_id`,`ca`.`name` AS `name`,`ca`.`contact` AS `contact`,`ca`.`country_id` AS `country_id`,`ca`.`zone_id` AS `zone_id`,`ca`.`city_id` AS `city_id`,`ca`.`postcode` AS `postcode`,`ca`.`address` AS `address`,`ca`.`default` AS `default`,`ca`.`status` AS `status`,`ca`.`created_by` AS `created_by`,`ca`.`created_at` AS `created_at`,`ca`.`updated_by` AS `updated_by`,`ca`.`updated_at` AS `updated_at`,`c`.`name` AS `customer`,`ct`.`name` AS `country`,`z`.`name` AS `zone`,`cs`.`name` AS `city` from ((((`customer_addresses` `ca` left join `customers` `c` on((`c`.`id` = `ca`.`customer_id`))) left join `countries` `ct` on((`ct`.`id` = `ca`.`country_id`))) left join `zones` `z` on((`z`.`id` = `ca`.`zone_id`))) left join `cities` `cs` on((`cs`.`id` = `ca`.`city_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_sessions_view`
--
DROP TABLE IF EXISTS `customer_sessions_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_sessions_view`  AS  select `cs`.`id` AS `id`,`cs`.`customer_id` AS `customer_id`,`cs`.`token` AS `token`,`cs`.`created_at` AS `created_at`,`cs`.`updated_at` AS `updated_at`,`c`.`name` AS `customer` from (`customer_sessions` `cs` left join `customers` `c` on((`c`.`id` = `cs`.`customer_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `customer_wishlists_view`
--
DROP TABLE IF EXISTS `customer_wishlists_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_wishlists_view`  AS  select `cw`.`id` AS `id`,`cw`.`customer_id` AS `customer_id`,`cw`.`product_id` AS `product_id`,`cw`.`status` AS `status`,`cw`.`created_by` AS `created_by`,`cw`.`created_at` AS `created_at`,`cw`.`updated_by` AS `updated_by`,`cw`.`updated_at` AS `updated_at`,`c`.`name` AS `customer_name`,`p`.`name` AS `product_name`,`p`.`price` AS `price`,`p`.`image` AS `product_image` from ((`customer_wishlists` `cw` left join `customers` `c` on((`c`.`id` = `cw`.`customer_id`))) left join `products` `p` on((`p`.`id` = `cw`.`product_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `employees_view`
--
DROP TABLE IF EXISTS `employees_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employees_view`  AS  select `e`.`id` AS `id`,`e`.`group_id` AS `group_id`,`e`.`location_id` AS `location_id`,`e`.`name` AS `name`,`e`.`email` AS `email`,`e`.`contact` AS `contact`,`e`.`password` AS `password`,`e`.`image` AS `image`,`e`.`status` AS `status`,`e`.`created_by` AS `created_by`,`e`.`created_at` AS `created_at`,`e`.`updated_by` AS `updated_by`,`e`.`updated_at` AS `updated_at`,`eg`.`name` AS `group_name`,`l`.`name` AS `location` from ((`employees` `e` left join `employee_groups` `eg` on((`eg`.`id` = `e`.`group_id`))) left join `locations` `l` on((`l`.`id` = `e`.`location_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_attendances_view`
--
DROP TABLE IF EXISTS `employee_attendances_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_attendances_view`  AS  select `et`.`id` AS `id`,`et`.`location_id` AS `location_id`,`et`.`date` AS `date`,`et`.`employee_id` AS `employee_id`,`et`.`type` AS `type`,`et`.`status` AS `status`,`et`.`created_at` AS `created_at`,`et`.`updated_at` AS `updated_at`,`l`.`name` AS `location`,`e`.`name` AS `employee` from ((`employee_attendances` `et` left join `locations` `l` on((`l`.`id` = `et`.`location_id`))) left join `employees` `e` on((`e`.`id` = `et`.`employee_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_orders_view`
--
DROP TABLE IF EXISTS `employee_orders_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_orders_view`  AS  select `eo`.`id` AS `id`,`eo`.`employee_id` AS `employee_id`,`eo`.`order_id` AS `order_id`,`eo`.`remark` AS `remark`,`eo`.`status` AS `status`,`eo`.`created_by` AS `created_by`,`eo`.`created_at` AS `created_at`,`eo`.`updated_by` AS `updated_by`,`eo`.`updated_at` AS `updated_at`,`e`.`name` AS `employee`,`o`.`invoice_no` AS `invoice_no`,`o`.`comment` AS `comment`,`o`.`total` AS `total`,`o`.`total_tax` AS `total_tax`,`ot`.`name` AS `order_type`,`os`.`name` AS `order_status` from ((((`employee_orders` `eo` left join `employees` `e` on((`e`.`id` = `eo`.`employee_id`))) left join `orders` `o` on((`o`.`id` = `eo`.`order_id`))) left join `order_types` `ot` on((`ot`.`id` = `o`.`order_type_id`))) left join `order_statuses` `os` on((`os`.`id` = `o`.`order_status_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `employee_sessions_view`
--
DROP TABLE IF EXISTS `employee_sessions_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_sessions_view`  AS  select `es`.`id` AS `id`,`es`.`employee_id` AS `employee_id`,`es`.`token` AS `token`,`es`.`created_at` AS `created_at`,`es`.`updated_at` AS `updated_at`,`e`.`name` AS `employee` from (`employee_sessions` `es` left join `employees` `e` on((`e`.`id` = `es`.`employee_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `inquiries_view`
--
DROP TABLE IF EXISTS `inquiries_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inquiries_view`  AS  select `i`.`id` AS `id`,`i`.`type_id` AS `type_id`,`i`.`name` AS `name`,`i`.`email` AS `email`,`i`.`contact` AS `contact`,`i`.`text` AS `text`,`i`.`status` AS `status`,`i`.`created_by` AS `created_by`,`i`.`created_at` AS `created_at`,`i`.`updated_by` AS `updated_by`,`i`.`updated_at` AS `updated_at`,`it`.`name` AS `type` from (`inquiries` `i` left join `inquiry_types` `it` on((`it`.`id` = `i`.`type_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `locations_view`
--
DROP TABLE IF EXISTS `locations_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `locations_view`  AS  select `l`.`id` AS `id`,`l`.`name` AS `name`,`l`.`contact_person` AS `contact_person`,`l`.`contact` AS `contact`,`l`.`email` AS `email`,`l`.`country_id` AS `country_id`,`l`.`zone_id` AS `zone_id`,`l`.`city_id` AS `city_id`,`l`.`postcode` AS `postcode`,`l`.`address` AS `address`,`l`.`latitude` AS `latitude`,`l`.`longitude` AS `longitude`,`l`.`sort_order` AS `sort_order`,`l`.`status` AS `status`,`l`.`created_by` AS `created_by`,`l`.`created_at` AS `created_at`,`l`.`updated_by` AS `updated_by`,`l`.`updated_at` AS `updated_at`,`c`.`name` AS `country`,`z`.`name` AS `zone`,`ct`.`name` AS `city` from (((`locations` `l` left join `countries` `c` on((`c`.`id` = `l`.`country_id`))) left join `zones` `z` on((`z`.`id` = `l`.`zone_id`))) left join `cities` `ct` on((`ct`.`id` = `l`.`city_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `orders_view`
--
DROP TABLE IF EXISTS `orders_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_view`  AS  select `o`.`id` AS `id`,`o`.`invoice_no` AS `invoice_no`,`o`.`order_type_id` AS `order_type_id`,`o`.`customer_id` AS `customer_id`,`o`.`address_id` AS `address_id`,`o`.`person_name` AS `person_name`,`o`.`person_contact` AS `person_contact`,`o`.`country_id` AS `country_id`,`o`.`zone_id` AS `zone_id`,`o`.`city_id` AS `city_id`,`o`.`postcode` AS `postcode`,`o`.`address` AS `address`,`o`.`total_tax` AS `total_tax`,`o`.`total` AS `total`,`o`.`order_status_id` AS `order_status_id`,`o`.`comment` AS `comment`,`o`.`status` AS `status`,`o`.`created_by` AS `created_by`,`o`.`created_at` AS `created_at`,`o`.`updated_by` AS `updated_by`,`o`.`updated_at` AS `updated_at`,`ot`.`name` AS `order_type`,`cr`.`name` AS `name`,`cr`.`email` AS `email`,`cr`.`contact` AS `contact`,`cot`.`name` AS `country`,`z`.`name` AS `zone`,`cit`.`name` AS `city`,`os`.`name` AS `order_status` from ((((((`orders` `o` left join `order_types` `ot` on((`ot`.`id` = `o`.`order_type_id`))) left join `customers` `cr` on((`cr`.`id` = `o`.`customer_id`))) left join `order_statuses` `os` on((`os`.`id` = `o`.`order_status_id`))) left join `countries` `cot` on((`cot`.`id` = `o`.`country_id`))) left join `zones` `z` on((`z`.`id` = `o`.`zone_id`))) left join `cities` `cit` on((`cit`.`id` = `o`.`city_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `order_products_view`
--
DROP TABLE IF EXISTS `order_products_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_products_view`  AS  select `op`.`order_id` AS `order_id`,`op`.`product_id` AS `product_id`,`op`.`price` AS `price`,`op`.`quantity` AS `quantity`,`op`.`tax` AS `tax`,`op`.`total` AS `total`,`p`.`name` AS `product`,`p`.`image` AS `product_image` from (`order_products` `op` left join `products` `p` on((`p`.`id` = `op`.`product_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `productsales`
--
DROP TABLE IF EXISTS `productsales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productsales`  AS  select `p`.`name` AS `productName`,`p`.`image` AS `productImage`,sum(`op`.`price`) AS `totalPrice`,sum(`op`.`quantity`) AS `totalQty`,sum(`op`.`tax`) AS `totalTax`,sum(`op`.`total`) AS `total` from ((`order_products` `op` left join `products` `p` on((`p`.`id` = `op`.`product_id`))) left join `orders` `o` on((`o`.`id` = `op`.`order_id`))) group by `op`.`product_id` ;

-- --------------------------------------------------------

--
-- Structure for view `products_view`
--
DROP TABLE IF EXISTS `products_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products_view`  AS  select `p`.`id` AS `id`,`p`.`type_id` AS `type_id`,`p`.`manufacture_id` AS `manufacture_id`,`p`.`code` AS `code`,`p`.`model` AS `model`,`p`.`sku` AS `sku`,`p`.`name` AS `name`,`p`.`price_type` AS `price_type`,`p`.`mrp` AS `mrp`,`p`.`price` AS `price`,`p`.`image` AS `image`,`p`.`description` AS `description`,`p`.`text` AS `text`,`p`.`tax_class_id` AS `tax_class_id`,`p`.`length_class_id` AS `length_class_id`,`p`.`length` AS `length`,`p`.`width` AS `width`,`p`.`height` AS `height`,`p`.`weight_class_id` AS `weight_class_id`,`p`.`weight` AS `weight`,`p`.`viewed` AS `viewed`,`p`.`minimum` AS `minimum`,`p`.`shipping` AS `shipping`,`p`.`inventory` AS `inventory`,`p`.`stock` AS `stock`,`p`.`featured` AS `featured`,`p`.`status` AS `status`,`p`.`created_by` AS `created_by`,`p`.`created_at` AS `created_at`,`p`.`updated_by` AS `updated_by`,`p`.`updated_at` AS `updated_at`,`t`.`name` AS `type`,`m`.`name` AS `manufacture`,`tc`.`name` AS `tax_class`,`lc`.`name` AS `length_class`,`lc`.`unit` AS `length_unit`,`wc`.`name` AS `weight_class`,`wc`.`unit` AS `weight_unit` from (((((`products` `p` left join `types` `t` on((`t`.`id` = `p`.`type_id`))) left join `manufactures` `m` on((`m`.`id` = `p`.`manufacture_id`))) left join `tax_classes` `tc` on((`tc`.`id` = `p`.`tax_class_id`))) left join `length_classes` `lc` on((`lc`.`id` = `p`.`length_class_id`))) left join `weight_classes` `wc` on((`wc`.`id` = `p`.`weight_class_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `product_attributes_view`
--
DROP TABLE IF EXISTS `product_attributes_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_attributes_view`  AS  select `pa`.`product_id` AS `product_id`,`pa`.`attribute_id` AS `attribute_id`,`pa`.`text` AS `text`,`p`.`name` AS `product`,`a`.`name` AS `attribute` from ((`product_attributes` `pa` left join `products` `p` on((`p`.`id` = `pa`.`product_id`))) left join `attributes` `a` on((`a`.`id` = `pa`.`attribute_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `product_prices_view`
--
DROP TABLE IF EXISTS `product_prices_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_prices_view`  AS  select `pp`.`id` AS `id`,`pp`.`product_id` AS `product_id`,`pp`.`customer_group_id` AS `customer_group_id`,`pp`.`price` AS `price`,`pp`.`start` AS `start`,`pp`.`end` AS `end`,`pp`.`status` AS `status`,`pp`.`created_by` AS `created_by`,`pp`.`created_at` AS `created_at`,`pp`.`updated_by` AS `updated_by`,`pp`.`updated_at` AS `updated_at`,`p`.`name` AS `product`,`cg`.`name` AS `customer_group` from ((`product_prices` `pp` left join `products` `p` on((`p`.`id` = `pp`.`product_id`))) left join `customer_groups` `cg` on((`cg`.`id` = `pp`.`customer_group_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `product_reviews_view`
--
DROP TABLE IF EXISTS `product_reviews_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_reviews_view`  AS  select `pr`.`id` AS `id`,`pr`.`product_id` AS `product_id`,`pr`.`customer_id` AS `customer_id`,`pr`.`rating_id` AS `rating_id`,`pr`.`text` AS `text`,`pr`.`status` AS `status`,`pr`.`created_by` AS `created_by`,`pr`.`created_at` AS `created_at`,`pr`.`updated_by` AS `updated_by`,`pr`.`updated_at` AS `updated_at`,`p`.`name` AS `product`,`c`.`name` AS `customer`,`r`.`name` AS `rating`,`r`.`sort_order` AS `rate` from (((`product_reviews` `pr` left join `products` `p` on((`p`.`id` = `pr`.`product_id`))) left join `customers` `c` on((`c`.`id` = `pr`.`customer_id`))) left join `ratings` `r` on((`r`.`id` = `pr`.`rating_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `purchases_view`
--
DROP TABLE IF EXISTS `purchases_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `purchases_view`  AS  select `p`.`id` AS `id`,`p`.`purchase_type_id` AS `purchase_type_id`,`p`.`vendor_id` AS `vendor_id`,`p`.`total` AS `total`,`p`.`total_tax` AS `total_tax`,`p`.`purchase_status_id` AS `purchase_status_id`,`p`.`comment` AS `comment`,`p`.`status` AS `status`,`p`.`created_by` AS `created_by`,`p`.`created_at` AS `created_at`,`p`.`updated_by` AS `updated_by`,`p`.`updated_at` AS `updated_at`,`pt`.`name` AS `purchase_type`,`v`.`name` AS `name`,`v`.`email` AS `email`,`v`.`contact` AS `contact`,`ps`.`name` AS `purchase_status` from (((`purchases` `p` left join `purchase_types` `pt` on((`pt`.`id` = `p`.`purchase_type_id`))) left join `vendors` `v` on((`v`.`id` = `p`.`vendor_id`))) left join `purchase_statuses` `ps` on((`ps`.`id` = `p`.`purchase_status_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `purchase_carts_view`
--
DROP TABLE IF EXISTS `purchase_carts_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `purchase_carts_view`  AS  select `pc`.`id` AS `id`,`pc`.`token` AS `token`,`pc`.`user_id` AS `user_id`,`pc`.`product_id` AS `product_id`,`pc`.`price` AS `price`,`pc`.`option` AS `option`,`pc`.`quantity` AS `quantity`,`pc`.`tax` AS `tax`,`pc`.`status` AS `status`,`pc`.`created_by` AS `created_by`,`pc`.`created_at` AS `created_at`,`pc`.`updated_by` AS `updated_by`,`pc`.`updated_at` AS `updated_at`,`u`.`name` AS `user`,`p`.`name` AS `product`,`p`.`image` AS `product_image` from ((`purchase_carts` `pc` left join `users` `u` on((`u`.`id` = `pc`.`user_id`))) left join `products` `p` on((`p`.`id` = `pc`.`product_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `purchase_products_view`
--
DROP TABLE IF EXISTS `purchase_products_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `purchase_products_view`  AS  select `pp`.`purchase_id` AS `purchase_id`,`pp`.`product_id` AS `product_id`,`pp`.`price` AS `price`,`pp`.`quantity` AS `quantity`,`pp`.`tax` AS `tax`,`pp`.`total` AS `total`,`p`.`name` AS `product`,`p`.`image` AS `product_image` from (`purchase_products` `pp` left join `products` `p` on((`p`.`id` = `pp`.`product_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `stocks_view`
--
DROP TABLE IF EXISTS `stocks_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stocks_view`  AS  select `s`.`id` AS `id`,`s`.`product_id` AS `product_id`,`s`.`location_id` AS `location_id`,`s`.`price` AS `price`,`s`.`quantity` AS `quantity`,`s`.`type` AS `type`,`s`.`reference` AS `reference`,`s`.`reference_id` AS `reference_id`,`s`.`text` AS `text`,`s`.`status` AS `status`,`s`.`created_by` AS `created_by`,`s`.`created_at` AS `created_at`,`s`.`updated_by` AS `updated_by`,`s`.`updated_at` AS `updated_at`,`p`.`name` AS `product`,`p`.`image` AS `productImage`,`l`.`name` AS `location` from ((`stocks` `s` left join `products` `p` on((`p`.`id` = `s`.`product_id`))) left join `locations` `l` on((`l`.`id` = `s`.`location_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `tax_rates_view`
--
DROP TABLE IF EXISTS `tax_rates_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tax_rates_view`  AS  select `tr`.`id` AS `id`,`tr`.`tax_class_id` AS `tax_class_id`,`tr`.`name` AS `name`,`tr`.`rate` AS `rate`,`tr`.`type` AS `type`,`tr`.`status` AS `status`,`tr`.`created_by` AS `created_by`,`tr`.`created_at` AS `created_at`,`tr`.`updated_by` AS `updated_by`,`tr`.`updated_at` AS `updated_at`,`tc`.`name` AS `tax_class` from (`tax_rates` `tr` left join `tax_classes` `tc` on((`tc`.`id` = `tr`.`tax_class_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `totalsalesdate`
--
DROP TABLE IF EXISTS `totalsalesdate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalsalesdate`  AS  select sum(`op`.`price`) AS `totalPrice`,sum(`op`.`quantity`) AS `totalQty`,sum(`op`.`tax`) AS `totalTax`,sum(`op`.`total`) AS `total`,cast(`o`.`created_at` as date) AS `date` from (`order_products` `op` left join `orders` `o` on((`o`.`id` = `op`.`order_id`))) group by cast(`o`.`created_at` as date) ;

-- --------------------------------------------------------

--
-- Structure for view `totalsalesday`
--
DROP TABLE IF EXISTS `totalsalesday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalsalesday`  AS  select sum(`op`.`price`) AS `totalPrice`,sum(`op`.`quantity`) AS `totalQty`,sum(`op`.`tax`) AS `totalTax`,sum(`op`.`total`) AS `total`,dayname(`o`.`created_at`) AS `day`,monthname(`o`.`created_at`) AS `month`,year(`o`.`created_at`) AS `year` from (`order_products` `op` left join `orders` `o` on((`o`.`id` = `op`.`order_id`))) group by dayname(`o`.`created_at`),monthname(`o`.`created_at`),year(`o`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `totalsalesmonth`
--
DROP TABLE IF EXISTS `totalsalesmonth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalsalesmonth`  AS  select sum(`op`.`price`) AS `totalPrice`,sum(`op`.`quantity`) AS `totalQty`,sum(`op`.`tax`) AS `totalTax`,sum(`op`.`total`) AS `total`,monthname(`o`.`created_at`) AS `month`,year(`o`.`created_at`) AS `year` from (`order_products` `op` left join `orders` `o` on((`o`.`id` = `op`.`order_id`))) group by monthname(`o`.`created_at`),year(`o`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `totalsalesyear`
--
DROP TABLE IF EXISTS `totalsalesyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalsalesyear`  AS  select sum(`op`.`price`) AS `totalPrice`,sum(`op`.`quantity`) AS `totalQty`,sum(`op`.`tax`) AS `totalTax`,sum(`op`.`total`) AS `total`,year(`o`.`created_at`) AS `year` from (`order_products` `op` left join `orders` `o` on((`o`.`id` = `op`.`order_id`))) group by year(`o`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `users_view`
--
DROP TABLE IF EXISTS `users_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users_view`  AS  select `u`.`id` AS `id`,`u`.`group_id` AS `group_id`,`u`.`name` AS `name`,`u`.`email` AS `email`,`u`.`contact` AS `contact`,`u`.`password` AS `password`,`u`.`image` AS `image`,`u`.`status` AS `status`,`u`.`created_by` AS `created_by`,`u`.`created_at` AS `created_at`,`u`.`updated_by` AS `updated_by`,`u`.`updated_at` AS `updated_at`,`ug`.`name` AS `group_name` from (`users` `u` left join `user_groups` `ug` on((`ug`.`id` = `u`.`group_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `user_sessions_view`
--
DROP TABLE IF EXISTS `user_sessions_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_sessions_view`  AS  select `us`.`id` AS `id`,`us`.`user_id` AS `user_id`,`us`.`token` AS `token`,`us`.`created_at` AS `created_at`,`us`.`updated_at` AS `updated_at`,`u`.`name` AS `user` from (`user_sessions` `us` left join `users` `u` on((`u`.`id` = `us`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vendors_view`
--
DROP TABLE IF EXISTS `vendors_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vendors_view`  AS  select `v`.`id` AS `id`,`v`.`group_id` AS `group_id`,`v`.`name` AS `name`,`v`.`email` AS `email`,`v`.`contact` AS `contact`,`v`.`password` AS `password`,`v`.`image` AS `image`,`v`.`status` AS `status`,`v`.`created_by` AS `created_by`,`v`.`created_at` AS `created_at`,`v`.`updated_by` AS `updated_by`,`v`.`updated_at` AS `updated_at`,`vg`.`name` AS `group_name` from (`vendors` `v` left join `vendor_groups` `vg` on((`vg`.`id` = `v`.`group_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `zones_view`
--
DROP TABLE IF EXISTS `zones_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zones_view`  AS  select `z`.`id` AS `id`,`z`.`country_id` AS `country_id`,`z`.`name` AS `name`,`z`.`code` AS `code`,`z`.`status` AS `status`,`z`.`created_by` AS `created_by`,`z`.`created_at` AS `created_at`,`z`.`updated_by` AS `updated_by`,`z`.`updated_at` AS `updated_at`,`c`.`name` AS `country` from (`zones` `z` left join `countries` `c` on((`c`.`id` = `z`.`country_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_id` (`banner_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `group_id` (`customer_group_id`);

--
-- Indexes for table `coupon_histories`
--
ALTER TABLE `coupon_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_histories_ibfk_1` (`customer_id`),
  ADD KEY `coupon_histories_ibfk_2` (`coupon_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`customer_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_sessions`
--
ALTER TABLE `customer_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_wishlists`
--
ALTER TABLE `customer_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`employee_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `employee_groups`
--
ALTER TABLE `employee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_orders`
--
ALTER TABLE `employee_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`employee_id`),
  ADD KEY `employee_orders_ibfk_2` (`order_id`);

--
-- Indexes for table `employee_order_histories`
--
ALTER TABLE `employee_order_histories`
  ADD KEY `employee_order_id` (`id`);

--
-- Indexes for table `employee_sessions`
--
ALTER TABLE `employee_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`employee_id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `inquiry_types`
--
ALTER TABLE `inquiry_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `length_classes`
--
ALTER TABLE `length_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_type_id` (`order_type_id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `order_histories_ibfk_2` (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD UNIQUE KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_totals`
--
ALTER TABLE `order_totals`
  ADD UNIQUE KEY `order_id` (`order_id`,`code`);

--
-- Indexes for table `order_types`
--
ALTER TABLE `order_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `length_class_id` (`length_class_id`),
  ADD KEY `weight_class_id` (`weight_class_id`),
  ADD KEY `tax_class_id` (`tax_class_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD UNIQUE KEY `product_id` (`product_id`,`attribute_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD UNIQUE KEY `category_id` (`category_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_id` (`product_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_group_id` (`customer_group_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `rating_id` (`rating_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_type_id` (`purchase_type_id`),
  ADD KEY `purchase_status_id` (`purchase_status_id`);

--
-- Indexes for table `purchase_carts`
--
ALTER TABLE `purchase_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_histories`
--
ALTER TABLE `purchase_histories`
  ADD KEY `purchase_status_id` (`purchase_status_id`),
  ADD KEY `purchase_id` (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD UNIQUE KEY `order_id` (`purchase_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_statuses`
--
ALTER TABLE `purchase_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_totals`
--
ALTER TABLE `purchase_totals`
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `purchase_types`
--
ALTER TABLE `purchase_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `related_id` (`related_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `code` (`code`,`key`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `stock_statuses`
--
ALTER TABLE `stock_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_class_id` (`tax_class_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`user_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `vendor_groups`
--
ALTER TABLE `vendor_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weight_classes`
--
ALTER TABLE `weight_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_histories`
--
ALTER TABLE `coupon_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_sessions`
--
ALTER TABLE `customer_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer_wishlists`
--
ALTER TABLE `customer_wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_groups`
--
ALTER TABLE `employee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_orders`
--
ALTER TABLE `employee_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_sessions`
--
ALTER TABLE `employee_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inquiry_types`
--
ALTER TABLE `inquiry_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `length_classes`
--
ALTER TABLE `length_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_types`
--
ALTER TABLE `order_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_carts`
--
ALTER TABLE `purchase_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_statuses`
--
ALTER TABLE `purchase_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_types`
--
ALTER TABLE `purchase_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock_statuses`
--
ALTER TABLE `stock_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_groups`
--
ALTER TABLE `vendor_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `weight_classes`
--
ALTER TABLE `weight_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4241;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `attribute_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD CONSTRAINT `banner_images_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cities_ibfk_2` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_ibfk_1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `coupon_histories`
--
ALTER TABLE `coupon_histories`
  ADD CONSTRAINT `coupon_histories_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_histories_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_histories_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `customer_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_addresses_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_addresses_ibfk_3` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_addresses_ibfk_4` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customer_sessions`
--
ALTER TABLE `customer_sessions`
  ADD CONSTRAINT `customer_sessions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customer_wishlists`
--
ALTER TABLE `customer_wishlists`
  ADD CONSTRAINT `customer_wishlists_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `employee_groups` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `employee_attendances_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_attendances_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employee_orders`
--
ALTER TABLE `employee_orders`
  ADD CONSTRAINT `employee_orders_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_orders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_order_histories`
--
ALTER TABLE `employee_order_histories`
  ADD CONSTRAINT `employee_order_histories_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_sessions`
--
ALTER TABLE `employee_sessions`
  ADD CONSTRAINT `employee_sessions_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `inquiries_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `inquiry_types` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_3` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_4` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`order_type_id`) REFERENCES `order_types` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD CONSTRAINT `order_histories_ibfk_1` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_histories_ibfk_2` FOREIGN KEY (`id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_totals`
--
ALTER TABLE `order_totals`
  ADD CONSTRAINT `order_totals_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`length_class_id`) REFERENCES `length_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`weight_class_id`) REFERENCES `weight_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_attributes_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_categories_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD CONSTRAINT `product_prices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_prices_ibfk_2` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`purchase_type_id`) REFERENCES `purchase_types` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_ibfk_5` FOREIGN KEY (`purchase_status_id`) REFERENCES `purchase_statuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_carts`
--
ALTER TABLE `purchase_carts`
  ADD CONSTRAINT `purchase_carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_histories`
--
ALTER TABLE `purchase_histories`
  ADD CONSTRAINT `purchase_histories_ibfk_1` FOREIGN KEY (`id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_histories_ibfk_2` FOREIGN KEY (`purchase_status_id`) REFERENCES `purchase_statuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD CONSTRAINT `purchase_products_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_totals`
--
ALTER TABLE `purchase_totals`
  ADD CONSTRAINT `purchase_totals_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `related_products_ibfk_2` FOREIGN KEY (`related_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `stocks_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_ibfk_1` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD CONSTRAINT `user_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `vendor_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
