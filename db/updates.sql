-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2019 at 06:18 AM
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
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `order_histories_ibfk_2` (`order_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD CONSTRAINT `order_histories_ibfk_1` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_histories_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
