-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2021 at 03:54 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dresstoimpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `main_category` text NOT NULL,
  `created_at` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:Active 0:Inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `main_category`, `created_at`, `status`) VALUES
(4, 'TV', 'Electronic', '2021-01-11 17:56:20', '1'),
(5, 'Laptop', 'Electronic', '2021-01-11 17:56:43', '1'),
(6, 'Man', 'Cloth', '2021-01-11 17:57:04', '1'),
(7, 'Women', 'Cloth', '2021-01-11 17:57:39', '1'),
(8, 'Kids', 'Cloth', '2021-01-11 17:58:10', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_log`
--

DROP TABLE IF EXISTS `tbl_login_log`;
CREATE TABLE IF NOT EXISTS `tbl_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` text NOT NULL,
  `user_name` text NOT NULL,
  `user_email` text NOT NULL,
  `login_status` text NOT NULL,
  `user_ip` text NOT NULL,
  `created_at` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:Active 0:Inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login_log`
--

INSERT INTO `tbl_login_log` (`id`, `user_id`, `user_name`, `user_email`, `login_status`, `user_ip`, `created_at`, `status`) VALUES
(1, 'Unknown', 'Unknown', 'sagar@gmail.com', 'Fail', '::1', '2020-12-27 17:23:56', '1'),
(2, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:28:24', '1'),
(3, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:31:56', '1'),
(4, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:34:04', '1'),
(5, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:35:05', '1'),
(6, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:36:49', '1'),
(7, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:37:48', '1'),
(8, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:41:12', '1'),
(9, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-27 17:44:26', '1'),
(10, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2020-12-27 17:48:15', '1'),
(11, '5', 'sagar k', 'sagar@gmail.com', 'Success', '::1', '2020-12-28 05:03:17', '1'),
(12, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2020-12-28 05:03:38', '1'),
(13, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2020-12-28 16:16:43', '1'),
(14, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2020-12-28 16:17:21', '1'),
(15, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2020-12-29 02:54:05', '1'),
(16, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2021-01-07 13:05:31', '1'),
(17, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2021-01-07 15:28:56', '1'),
(18, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2021-01-08 04:27:28', '1'),
(19, 'Unknown', 'Unknown', 'admin@sboba.com', 'Fail', '::1', '2021-01-11 17:15:15', '1'),
(20, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2021-01-11 17:15:38', '1'),
(21, '1', 'Admin', 'admin@admin.com', 'Success', '::1', '2021-01-17 08:42:16', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_main_category`
--

DROP TABLE IF EXISTS `tbl_main_category`;
CREATE TABLE IF NOT EXISTS `tbl_main_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_main_category`
--

INSERT INTO `tbl_main_category` (`id`, `name`) VALUES
(1, 'Electronic'),
(2, 'Cloth'),
(3, 'Kitchen'),
(4, 'Beauty products\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

DROP TABLE IF EXISTS `tbl_offers`;
CREATE TABLE IF NOT EXISTS `tbl_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `coupon_code` text NOT NULL,
  `created_at` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:Active 0:Inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `name`, `image`, `coupon_code`, `created_at`, `status`) VALUES
(2, 'Diwali Offer', '1610887499.jpg', 'Diwali_2021', '2021-01-17 12:44:59', '1'),
(3, 'Daily Sale', '1610887536.jpg', 'Sale_2021', '2021-01-17 12:45:36', '1'),
(4, 'Festival Offer', '1610887569.jpg', 'Festival_2021', '2021-01-17 12:46:09', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `price` varchar(32) NOT NULL,
  `rating` varchar(32) NOT NULL,
  `category_id` text NOT NULL,
  `image` text NOT NULL,
  `created_at` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:Active, 0:Suspend',
  `size` text,
  `color` text,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `name`, `price`, `rating`, `category_id`, `image`, `created_at`, `status`, `size`, `color`, `info`) VALUES
(3, 'BPL', '5000', '3', '4', '1610880809.jpg', '2021-01-17 10:53:29', '1', '17 inch, 21 inch', 'Black, Silver, Blue', 'Product Description The 4k Ultra HD TV is the newest television on the market and is also one of the most technologically advanced. Samsung has been an advanced technology company for over seventy years and is most notably known for their electronics division. '),
(4, 'Onida', '10000', '4', '4', '1610886860.jpg', '2021-01-17 12:34:20', '1', '14 inch, 17 inch, 21 inch', 'White, Black', 'Product Description The 4k Ultra HD TV is the newest television on the market and is also one of the most technologically advanced. Samsung has been an advanced technology company for over seventy years and is most notably known for their electronics division. '),
(5, 'Samsung', '15000', '5', '4', '1610886941.jpg', '2021-01-17 12:35:41', '1', '21 inch, 52 inch, 82 inch', 'Black, Blue, Silver', 'Product Description The 4k Ultra HD TV is the newest television on the market and is also one of the most technologically advanced. Samsung has been an advanced technology company for over seventy years and is most notably known for their electronics division. '),
(6, 'LG', '12000', '4', '4', '1610887014.jpg', '2021-01-17 12:36:54', '1', '21 inch, 32 inch, 48 inch', 'Black, Silver', 'Product Description The 4k Ultra HD TV is the newest television on the market and is also one of the most technologically advanced. Samsung has been an advanced technology company for over seventy years and is most notably known for their electronics division. '),
(7, 'Videocon', '18000', '4', '4', '1610887071.jpg', '2021-01-17 12:37:51', '1', '17 inch, 21 inch', 'Black, White', 'Product Description The 4k Ultra HD TV is the newest television on the market and is also one of the most technologically advanced. Samsung has been an advanced technology company for over seventy years and is most notably known for their electronics division. '),
(8, 'TCL', '15000', '5', '4', '1610887129.jpg', '2021-01-17 12:38:49', '1', '21 inch, 32 inch, 52 inch', 'Black, White, Blue, Silver', 'Product Description The 4k Ultra HD TV is the newest television on the market and is also one of the most technologically advanced. Samsung has been an advanced technology company for over seventy years and is most notably known for their electronics division. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `created_at` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:Active, 0:Suspend',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `image`, `name`, `created_at`, `status`) VALUES
(1, '1609211266.jpg', 'Slider 1', '2020-12-29 03:07:46', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `password` text NOT NULL,
  `login_token` varchar(60) DEFAULT '0',
  `created_at` text NOT NULL,
  `email_verification_token` varchar(10) NOT NULL DEFAULT '0',
  `role` varchar(1) NOT NULL DEFAULT '2' COMMENT '1:Admin 2:User',
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:Active 2:Inactive',
  `forgot_code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `mobile`, `password`, `login_token`, `created_at`, `email_verification_token`, `role`, `status`, `forgot_code`) VALUES
(1, 'Admin', 'admin@admin.com', '8800880088', '$2y$10$dWhm8Y6fUAcD.wQSuc4v7OPDEeLVQEGB.lVQTv/57blr9v9HoaTrO', '$2y$10$wOFaVJsbzCS5DjM3.BbdLO7TaAatCFzPFyEFSVVZP4X7AL1YBPf6u', '2020-12-26 11:46:44', '1608983204', '1', '1', NULL),
(5, 'sagar k', 'sagar@gmail.com', '8800000001', '$2y$10$AyBh4ig31EcnV9rInLH5QuB4XF6GAYKmIJGb.5tKjpbRheZP/hlSK', '$2y$10$RUVeWtRRuaFFMPIvAAiDWejQVBNelfn6nQv4Kr.g0YtiUPQGscvtC', '2020-12-26 12:06:53', '1608984413', '2', '1', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
