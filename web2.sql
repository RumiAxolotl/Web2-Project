-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 04:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `authority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`username`, `password`, `status`, `authority`) VALUES
('admin', 'admin', 1, 1),
('rumi', 'rumi', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id_loai`, `ten_loai`) VALUES
(1, 'socola');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `id_color` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`id_color`, `name`) VALUES
(1, 'Red'),
(2, 'Yellow'),
(3, 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cutomer`
--

CREATE TABLE `tbl_cutomer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_cutomer`
--

INSERT INTO `tbl_cutomer` (`id_customer`, `name`, `address`, `phone`, `username`) VALUES
(14, 'PHAM THANH THIEN', 'hochiminh', '0353184164', 'rumi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `ten_kh` varchar(50) NOT NULL,
  `id_staff` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id_product` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `id_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id_product`, `name`, `price`, `details`, `status`, `image`, `image2`, `image3`, `image4`, `id_loai`) VALUES
(1, 'Bï¿½nh kem socola', 300000, 'Bï¿½nh kem socola v?i nhï¿½n bï¿½nh bï¿½ng lan socola cï¿½ng l?p kem ph? nhi?u mï¿½u s?c cï¿½ th? l?a ch?n', 1, 'banhsocola.jpeg', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size_color`
--

CREATE TABLE `tbl_product_size_color` (
  `id_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_product_size_color`
--

INSERT INTO `tbl_product_size_color` (`id_product`, `id_size`, `id_color`, `quantity`) VALUES
(1, 1, 2, 20),
(3, 9, 1, 11),
(3, 1, 2, 20),
(3, 2, 2, 19),
(3, 3, 2, 13),
(3, 4, 2, 31),
(3, 5, 2, 24),
(3, 6, 2, 54),
(3, 7, 2, 41),
(3, 8, 2, 9),
(3, 10, 2, 23),
(3, 3, 3, 31),
(3, 5, 3, 25),
(3, 6, 3, 12),
(3, 8, 3, 10),
(3, 9, 3, 16),
(3, 10, 3, 10),
(3, 3, 4, 12),
(3, 4, 4, 20),
(3, 5, 4, 6),
(3, 7, 4, 51),
(3, 8, 4, 12),
(3, 6, 5, 21),
(3, 7, 5, 21),
(3, 9, 5, 19),
(3, 10, 5, 19),
(4, 1, 1, 20),
(4, 2, 1, 20),
(4, 3, 1, 23),
(4, 4, 1, 17),
(4, 5, 1, 6),
(4, 6, 1, 21),
(4, 7, 1, 31),
(4, 8, 1, 17),
(4, 9, 1, 11),
(4, 1, 2, 20),
(4, 2, 2, 20),
(4, 3, 2, 13),
(4, 4, 2, 31),
(4, 5, 2, 23),
(4, 6, 2, 54),
(4, 7, 2, 41),
(4, 8, 2, 9),
(4, 10, 2, 23),
(4, 3, 3, 31),
(4, 5, 3, 25),
(4, 6, 3, 12),
(4, 8, 3, 10),
(4, 9, 3, 16),
(4, 10, 3, 10),
(4, 3, 4, 12),
(4, 4, 4, 21),
(4, 5, 4, 6),
(4, 7, 4, 51),
(4, 8, 4, 12),
(4, 6, 5, 21),
(4, 7, 5, 21),
(4, 9, 5, 19),
(4, 10, 5, 19),
(5, 1, 1, 20),
(5, 2, 1, 20),
(5, 3, 1, 23),
(5, 4, 1, 17),
(5, 5, 1, 6),
(5, 6, 1, 21),
(5, 7, 1, 31),
(5, 8, 1, 17),
(5, 9, 1, 11),
(5, 1, 2, 20),
(5, 2, 2, 20),
(5, 3, 2, 13),
(5, 4, 2, 31),
(5, 5, 2, 24),
(5, 6, 2, 54),
(5, 7, 2, 41),
(5, 8, 2, 9),
(5, 10, 2, 23),
(5, 3, 3, 31),
(5, 5, 3, 25),
(5, 6, 3, 12),
(5, 8, 3, 10),
(5, 9, 3, 16),
(5, 10, 3, 10),
(5, 3, 4, 12),
(5, 4, 4, 21),
(5, 5, 4, 6),
(5, 7, 4, 51),
(5, 8, 4, 12),
(5, 6, 5, 21),
(5, 7, 5, 21),
(5, 9, 5, 19),
(5, 10, 5, 19),
(6, 1, 1, 20),
(6, 2, 1, 20),
(6, 3, 1, 23),
(6, 4, 1, 17),
(6, 5, 1, 6),
(6, 6, 1, 21),
(6, 7, 1, 31),
(6, 8, 1, 17),
(6, 9, 1, 11),
(6, 1, 2, 20),
(6, 2, 2, 20),
(6, 3, 2, 13),
(6, 4, 2, 31),
(6, 5, 2, 24),
(6, 6, 2, 54),
(6, 7, 2, 41),
(6, 8, 2, 9),
(6, 10, 2, 23),
(6, 3, 3, 31),
(6, 5, 3, 25),
(6, 6, 3, 12),
(6, 8, 3, 10),
(6, 9, 3, 16),
(6, 10, 3, 10),
(6, 3, 4, 12),
(6, 4, 4, 21),
(6, 5, 4, 6),
(6, 7, 4, 51),
(6, 8, 4, 12),
(6, 6, 5, 21),
(6, 7, 5, 21),
(6, 9, 5, 19),
(6, 10, 5, 19),
(7, 1, 1, 20),
(7, 2, 1, 20),
(7, 3, 1, 23),
(7, 4, 1, 17),
(7, 5, 1, 6),
(7, 6, 1, 21),
(7, 7, 1, 31),
(7, 8, 1, 17),
(7, 9, 1, 11),
(7, 1, 2, 20),
(7, 2, 2, 20),
(7, 3, 2, 13),
(7, 4, 2, 31),
(7, 5, 2, 24),
(7, 6, 2, 54),
(7, 7, 2, 41),
(7, 8, 2, 9),
(7, 10, 2, 23),
(7, 3, 3, 31),
(7, 5, 3, 25),
(7, 6, 3, 12),
(7, 8, 3, 10),
(7, 9, 3, 16),
(7, 10, 3, 10),
(7, 3, 4, 12),
(7, 4, 4, 21),
(7, 5, 4, 6),
(7, 7, 4, 51),
(7, 8, 4, 12),
(7, 6, 5, 21),
(7, 7, 5, 21),
(7, 9, 5, 19),
(7, 10, 5, 19),
(8, 1, 1, 20),
(8, 2, 1, 20),
(8, 3, 1, 23),
(8, 4, 1, 17),
(8, 5, 1, 6),
(8, 6, 1, 21),
(8, 7, 1, 31),
(8, 8, 1, 17),
(8, 9, 1, 11),
(8, 1, 2, 20),
(8, 2, 2, 20),
(8, 3, 2, 13),
(8, 4, 2, 31),
(8, 5, 2, 24),
(8, 6, 2, 54),
(8, 7, 2, 41),
(8, 8, 2, 9),
(8, 10, 2, 23),
(8, 3, 3, 31),
(8, 5, 3, 25),
(8, 6, 3, 11),
(8, 8, 3, 10),
(8, 9, 3, 16),
(8, 10, 3, 10),
(8, 3, 4, 12),
(8, 4, 4, 21),
(8, 5, 4, 6),
(8, 7, 4, 51),
(8, 8, 4, 12),
(8, 6, 5, 21),
(8, 7, 5, 21),
(8, 9, 5, 19),
(8, 10, 5, 19),
(9, 5, 1, 6),
(9, 6, 1, 21),
(9, 7, 1, 31),
(9, 8, 1, 17),
(9, 9, 1, 11),
(9, 3, 2, 20),
(9, 5, 2, 24),
(9, 6, 2, 54),
(9, 7, 2, 41),
(9, 8, 2, 9),
(9, 10, 2, 23),
(9, 5, 3, 25),
(9, 6, 3, 12),
(9, 8, 3, 10),
(9, 9, 3, 16),
(9, 10, 3, 10),
(9, 5, 4, 6),
(9, 7, 4, 51),
(9, 8, 4, 12),
(9, 6, 5, 21),
(9, 7, 5, 21),
(9, 9, 5, 19),
(9, 10, 5, 19),
(10, 5, 1, 6),
(10, 6, 1, 21),
(10, 7, 1, 31),
(10, 8, 1, 17),
(10, 9, 1, 11),
(10, 4, 2, 20),
(10, 5, 2, 24),
(10, 6, 2, 54),
(10, 7, 2, 41),
(10, 8, 2, 8),
(10, 10, 2, 23),
(10, 5, 3, 25),
(10, 6, 3, 12),
(10, 8, 3, 10),
(10, 9, 3, 16),
(10, 10, 3, 10),
(10, 5, 4, 6),
(10, 7, 4, 51),
(10, 8, 4, 12),
(10, 6, 5, 21),
(10, 7, 5, 21),
(10, 9, 5, 19),
(10, 10, 5, 19),
(11, 1, 1, 20),
(11, 3, 1, 23),
(11, 4, 1, 17),
(11, 5, 1, 6),
(11, 6, 1, 21),
(11, 7, 1, 31),
(11, 8, 1, 17),
(11, 9, 1, 11),
(11, 3, 2, 13),
(11, 4, 2, 31),
(11, 5, 2, 24),
(11, 6, 2, 54),
(11, 7, 2, 41),
(11, 8, 2, 9),
(11, 10, 2, 23),
(11, 3, 3, 31),
(11, 5, 3, 25),
(11, 6, 3, 12),
(11, 8, 3, 10),
(11, 9, 3, 16),
(11, 10, 3, 10),
(11, 3, 4, 12),
(11, 4, 4, 21),
(11, 5, 4, 6),
(11, 7, 4, 51),
(11, 8, 4, 12),
(11, 6, 5, 21),
(11, 7, 5, 21),
(11, 9, 5, 19),
(11, 10, 5, 19),
(12, 3, 1, 23),
(12, 4, 1, 17),
(12, 5, 1, 6),
(12, 6, 1, 21),
(12, 7, 1, 31),
(12, 8, 1, 17),
(12, 9, 1, 11),
(12, 3, 2, 13),
(12, 4, 2, 31),
(12, 5, 2, 24),
(12, 6, 2, 54),
(12, 7, 2, 41),
(12, 8, 2, 9),
(12, 10, 2, 23),
(12, 3, 3, 31),
(12, 5, 3, 25),
(12, 6, 3, 12),
(12, 8, 3, 10),
(12, 9, 3, 16),
(12, 10, 3, 10),
(12, 3, 4, 12),
(12, 4, 4, 21),
(12, 5, 4, 6),
(12, 7, 4, 51),
(12, 8, 4, 12),
(12, 1, 5, 20),
(12, 6, 5, 21),
(12, 7, 5, 21),
(12, 9, 5, 19),
(12, 10, 5, 19),
(13, 3, 1, 23),
(13, 4, 1, 17),
(13, 5, 1, 6),
(13, 6, 1, 21),
(13, 7, 1, 31),
(13, 8, 1, 17),
(13, 9, 1, 11),
(13, 3, 2, 13),
(13, 4, 2, 31),
(13, 5, 2, 24),
(13, 6, 2, 54),
(13, 7, 2, 41),
(13, 8, 2, 9),
(13, 10, 2, 23),
(13, 3, 3, 31),
(13, 5, 3, 25),
(13, 6, 3, 12),
(13, 8, 3, 10),
(13, 9, 3, 16),
(13, 10, 3, 10),
(13, 1, 4, 20),
(13, 3, 4, 12),
(13, 4, 4, 21),
(13, 5, 4, 6),
(13, 7, 4, 51),
(13, 8, 4, 12),
(13, 6, 5, 21),
(13, 7, 5, 21),
(13, 9, 5, 19),
(13, 10, 5, 19),
(14, 4, 1, 20),
(14, 5, 1, 6),
(14, 6, 1, 21),
(14, 7, 1, 31),
(14, 8, 1, 17),
(14, 9, 1, 11),
(14, 5, 2, 24),
(14, 6, 2, 54),
(14, 7, 2, 41),
(14, 8, 2, 9),
(14, 10, 2, 23),
(14, 5, 3, 25),
(14, 6, 3, 12),
(14, 8, 3, 10),
(14, 9, 3, 16),
(14, 10, 3, 10),
(14, 5, 4, 6),
(14, 7, 4, 51),
(14, 8, 4, 12),
(14, 6, 5, 21),
(14, 7, 5, 21),
(14, 9, 5, 19),
(14, 10, 5, 19),
(15, 4, 1, 17),
(15, 5, 1, 6),
(15, 6, 1, 21),
(15, 7, 1, 31),
(15, 8, 1, 17),
(15, 9, 1, 11),
(15, 3, 2, 13),
(15, 4, 2, 31),
(15, 5, 2, 24),
(15, 6, 2, 54),
(15, 7, 2, 41),
(15, 8, 2, 9),
(15, 10, 2, 23),
(15, 3, 3, 31),
(15, 5, 3, 25),
(15, 6, 3, 12),
(15, 8, 3, 10),
(15, 9, 3, 16),
(15, 10, 3, 10),
(15, 3, 4, 12),
(15, 4, 4, 21),
(15, 5, 4, 6),
(15, 7, 4, 51),
(15, 8, 4, 12),
(15, 2, 5, 20),
(15, 4, 5, 23),
(15, 6, 5, 21),
(15, 7, 5, 21),
(15, 9, 5, 19),
(15, 10, 5, 19),
(16, 4, 1, 17),
(16, 5, 1, 6),
(16, 6, 1, 21),
(16, 7, 1, 31),
(16, 8, 1, 17),
(16, 9, 1, 11),
(16, 1, 2, 20),
(16, 3, 2, 13),
(16, 4, 2, 31),
(16, 5, 2, 24),
(16, 6, 2, 54),
(16, 7, 2, 41),
(16, 8, 2, 9),
(16, 10, 2, 23),
(16, 3, 3, 31),
(16, 5, 3, 25),
(16, 6, 3, 12),
(16, 8, 3, 10),
(16, 9, 3, 16),
(16, 10, 3, 10),
(16, 3, 4, 12),
(16, 4, 4, 21),
(16, 5, 4, 6),
(16, 7, 4, 51),
(16, 8, 4, 12),
(16, 4, 5, 23),
(16, 6, 5, 21),
(16, 7, 5, 21),
(16, 9, 5, 19),
(16, 10, 5, 19),
(17, 4, 1, 17),
(17, 5, 1, 6),
(17, 6, 1, 21),
(17, 7, 1, 31),
(17, 8, 1, 17),
(17, 9, 1, 11),
(17, 4, 2, 31),
(17, 5, 2, 24),
(17, 6, 2, 54),
(17, 7, 2, 41),
(17, 8, 2, 9),
(17, 10, 2, 23),
(17, 5, 3, 25),
(17, 6, 3, 12),
(17, 8, 3, 10),
(17, 9, 3, 16),
(17, 10, 3, 10),
(17, 3, 4, 20),
(17, 4, 4, 21),
(17, 5, 4, 6),
(17, 7, 4, 51),
(17, 8, 4, 12),
(17, 4, 5, 23),
(17, 6, 5, 21),
(17, 7, 5, 21),
(17, 9, 5, 19),
(17, 10, 5, 19),
(18, 4, 1, 17),
(18, 5, 1, 6),
(18, 6, 1, 21),
(18, 7, 1, 31),
(18, 8, 1, 17),
(18, 9, 1, 11),
(18, 3, 2, 20),
(18, 4, 2, 31),
(18, 5, 2, 24),
(18, 6, 2, 54),
(18, 7, 2, 41),
(18, 8, 2, 9),
(18, 10, 2, 23),
(18, 5, 3, 25),
(18, 6, 3, 12),
(18, 8, 3, 10),
(18, 9, 3, 16),
(18, 10, 3, 10),
(18, 4, 4, 21),
(18, 5, 4, 6),
(18, 7, 4, 51),
(18, 8, 4, 12),
(18, 4, 5, 23),
(18, 6, 5, 21),
(18, 7, 5, 21),
(18, 9, 5, 19),
(18, 10, 5, 19),
(19, 4, 1, 17),
(19, 5, 1, 6),
(19, 6, 1, 21),
(19, 7, 1, 31),
(19, 8, 1, 17),
(19, 9, 1, 11),
(19, 4, 2, 31),
(19, 5, 2, 24),
(19, 6, 2, 54),
(19, 7, 2, 41),
(19, 8, 2, 9),
(19, 10, 2, 23),
(19, 3, 3, 20),
(19, 5, 3, 25),
(19, 6, 3, 12),
(19, 8, 3, 10),
(19, 9, 3, 16),
(19, 10, 3, 10),
(19, 4, 4, 21),
(19, 5, 4, 6),
(19, 7, 4, 51),
(19, 8, 4, 12),
(19, 4, 5, 23),
(19, 6, 5, 21),
(19, 7, 5, 21),
(19, 9, 5, 19),
(19, 10, 5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id_size` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`id_size`, `name`) VALUES
(1, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id_staff` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`id_staff`, `name`, `address`, `phone`, `username`) VALUES
(1, 'admin', 'Đại học sài gòn', '0123456789', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `tbl_cutomer`
--
ALTER TABLE `tbl_cutomer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_product`,`id_order`,`size`,`color`) USING BTREE;

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tbl_product_size_color`
--
ALTER TABLE `tbl_product_size_color`
  ADD PRIMARY KEY (`id_product`,`id_color`,`id_size`) USING BTREE;

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id_size`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cutomer`
--
ALTER TABLE `tbl_cutomer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
