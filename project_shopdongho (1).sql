-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 04:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_shopdongho`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `n_id_user` bigint(20) DEFAULT NULL,
  `n_id_product` bigint(20) DEFAULT NULL,
  `n_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `cart_id`, `n_id_user`, `n_id_product`, `n_count`) VALUES
(1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` bigint(20) NOT NULL,
  `n_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_id_parent` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `n_name`, `n_id_parent`) VALUES
(1, 'Loai 1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` bigint(20) NOT NULL,
  `n_id_user` bigint(20) DEFAULT NULL,
  `n_id_product` bigint(20) DEFAULT NULL,
  `n_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `n_id_user` int(11) DEFAULT NULL,
  `n_id_cate` int(11) DEFAULT NULL,
  `n_count` int(11) DEFAULT NULL,
  `n_price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_discount` int(11) DEFAULT NULL,
  `n_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_is_pay` int(11) DEFAULT NULL,
  `n_is_ship` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `n_id_user`, `n_id_cate`, `n_count`, `n_price`, `n_discount`, `n_date`, `n_is_pay`, `n_is_ship`) VALUES
(1, NULL, 1, NULL, '42', NULL, NULL, NULL, NULL),
(2, NULL, 2, NULL, '30', NULL, NULL, NULL, NULL),
(3, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(4, NULL, 1, NULL, '30', NULL, NULL, NULL, NULL),
(5, NULL, 1, NULL, '30', NULL, NULL, NULL, NULL),
(6, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(7, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(8, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(9, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(10, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(11, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(12, NULL, 1, NULL, '21', NULL, NULL, NULL, NULL),
(13, NULL, 1, NULL, '21', NULL, NULL, NULL, NULL),
(14, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(15, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL),
(16, NULL, 1, NULL, '21', NULL, NULL, NULL, NULL),
(17, NULL, 1, NULL, '22', NULL, NULL, NULL, NULL),
(18, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL),
(19, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL),
(20, NULL, 1, NULL, '10', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` bigint(100) NOT NULL,
  `n_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `n_id_categories` bigint(11) NOT NULL,
  `n_price` bigint(20) NOT NULL,
  `n_discount` int(11) NOT NULL,
  `n_discribe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `n_detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `n_bought` bigint(11) NOT NULL,
  `n_total` bigint(11) NOT NULL,
  `n_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `n_image` varchar(5000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `n_name`, `n_id_categories`, `n_price`, `n_discount`, `n_discribe`, `n_detail`, `n_bought`, `n_total`, `n_date`, `n_image`) VALUES
(1, 'Apple new mac book 2015 March :P\r\n', 1, 10, 0, '', '', 0, 0, '', '/img/product-1.jpg'),
(2, 'Apple new mac book 2015 March :P\r\n', 1, 11, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(3, 'Apple new mac book 2015 March :P\r\n', 1, 12, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(4, 'Apple new mac book 2015 March :P\r\n', 1, 13, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(5, 'Apple new mac book 2015 March :P\r\n', 1, 14, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(6, 'Apple new mac book 2015 March :P\r\n', 1, 15, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(7, 'Apple new mac book 2015 March :P\r\n', 1, 16, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(8, 'Apple new mac book 2015 March :P\r\n', 1, 17, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(9, 'Apple new mac book 2015 March :P\r\n', 1, 18, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(11, 'Apple new mac book 2015 March :P\r\n', 1, 19, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(12, 'Apple new mac book 2015 March :P\r\n', 1, 20, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(13, 'Apple new mac book 2015 March :P\r\n', 1, 21, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg'),
(14, 'Apple new mac book 2015 March :P\r\n', 1, 22, 1, '1', '1', 1, 1, '1', '/img/product-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_system`
--

CREATE TABLE `tbl_system` (
  `id` bigint(20) NOT NULL,
  `n_count_access` bigint(20) DEFAULT NULL,
  `n_created_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `n_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_level` int(11) DEFAULT NULL,
  `n_birth` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_sex` int(11) DEFAULT NULL,
  `n_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n_lasttime` bigint(20) DEFAULT NULL,
  `n_realname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_system`
--
ALTER TABLE `tbl_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
