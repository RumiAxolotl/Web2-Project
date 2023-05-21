-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2023 lúc 01:28 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_account`
--

CREATE TABLE `tbl_account` (
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL,
  `authority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_account`
--

INSERT INTO `tbl_account` (`username`, `password`, `status`, `authority`) VALUES
('admin', 'admin', 1, 1),
('rumi', 'rumi', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id_loai`, `ten_loai`) VALUES
(1, 'socola'),
(2, 'vani'),
(3, 'tiramisu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `id_color` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`id_color`, `name`) VALUES
(1, 'White'),
(2, 'Brown'),
(3, 'Red'),
(4, 'Green'),
(5, 'Yellow');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cutomer`
--

CREATE TABLE `tbl_cutomer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cutomer`
--

INSERT INTO `tbl_cutomer` (`id_customer`, `name`, `address`, `phone`, `username`) VALUES
(14, 'PHAM THANH THIEN', 'hochiminh', '0353184164', 'rumi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_order`, `id_product`, `size`, `color`, `quantity`, `price`, `total_money`) VALUES
(28, 1, 'Lớn', 'Brown', 1, 300000, 300000),
(28, 2, 'Lớn', 'White', 1, 250000, 250000),
(29, 2, 'Lớn', 'Brown', 1, 250000, 250000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `ten_kh` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_staff` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_customer`, `ten_kh`, `id_staff`, `ngay_dat`, `address`, `phone`, `status`, `notes`, `total_money`) VALUES
(28, 14, 'PHAM THANH THIEN', 0, '0000-00-00', 'hochiminh', '0353184164', 0, '', 550000),
(29, 14, 'PHAM THANH THIEN', 0, '0000-00-00', 'hochiminh', '0353184164', 0, '', 250000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id_product` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(2000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image4` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id_product`, `name`, `price`, `details`, `status`, `image`, `image2`, `image3`, `image4`, `id_loai`) VALUES
(1, 'Bánh kem socola', 300000, 'Bánh kem socola với nhânn bánh bông lan socola cùngng lớp kem socola phủ nhiều màu sắc', 1, 'chocolatecake.jpeg', '', '', '', 1),
(2, 'Bánh kem vani', 250000, 'Bánh kem vani với nhânn Bánh bông lan cùngng lớp kem vani nguyên bản có nhiều màu sắc', 1, 'vanillacake.jpeg', '', '', '', 2),
(3, 'Bánh kem socola trắng', 300000, 'Bánh kem socola với nhânn bánh bông lan socola cùngng lớp kem socola trắng phủ nhiều màu sắc', 1, 'whitechocolatecake.jpg', '', '', '', 1),
(4, 'Bánh tiramisu chanh dây', 350000, 'Bánh tiramisu nổi tiếng với hương vị chanh dây mang lại vị ngọt và thanh cực ngon', 1, 'tiramisuchanhday.jpg', '', '', '', 3),
(5, 'Bánh crepe socola chuối', 120000, 'Vỏ bánh crepe ngàn lớp, quyện cùng ít chuối socola khiến vị giác kích thích, món yêu thích của giới trẻ', 1, 'chocobananacrepe.jpg', '', '', '', 1),
(6, 'Bánh Choco pudding', 200000, 'Bánh mềm mượt, kết cấu thanh dịu, vị nọt nhẹ và đắng nhẹ của socola khiến đây là món tráng miệng tuyệt vời', 1, 'chocopudding.jpg', '', '', '', 1),
(7, 'Bánh Choco Lava tan chảy', 300000, 'Vỏ ngoài giòn rụm, nhân socola nóng chảy, món ăn tuyệt hảo cho mùa đông giá lạnh', 1, 'chocolava.jpg', '', '', '', 1),
(8, 'Bánh Choco tart', 100000, 'Đế bánh cứng vừa phải, nhân socola chảy vừa có thể ăn lạnh', 1, 'chocotart.jpg', '', '', '', 1),
(9, 'Bánh tart trái cây nhiệt đới', 100000, 'Đế bánh mềm, nhân trái cây tươi kèm vị vani nhẹ, tốt cho sức khỏe', 1, 'freshtart.jpg', '', '', '', 2),
(10, 'Bánh tart trứng vani', 100000, 'Đế bánh mềm, vỏ vani kèm nhân trứng béo ngậy rắc một ít phô mai mặn, rất ngon khi tráng miệng', 1, 'eggtart.jpg', '', '', '', 2),
(11, 'Bánh crepe xoài', 200000, 'Bánh xoài ngàn lớp, ngọt kèm vị chua nhẹ, vỏ vị sữa chua cho một ngày sảng khoái', 1, 'mangocrepe.jpg', '', '', '', 2),
(12, 'Bánh pudding xoài', 100000, 'Kết cấu mềm mịn, vị ngọt thanh dịu, kèm bột sữa vani phủ phía trên, hợp cho mùa thu', 1, 'mangopudding.jpg', '', '', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_size_color`
--

CREATE TABLE `tbl_product_size_color` (
  `id_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_size_color`
--

INSERT INTO `tbl_product_size_color` (`id_product`, `id_size`, `id_color`, `quantity`) VALUES
(1, 1, 1, 20),
(1, 2, 1, 20),
(1, 3, 1, 20),
(1, 1, 2, 20),
(1, 2, 2, 20),
(1, 3, 2, 19),
(1, 1, 3, 20),
(1, 2, 3, 20),
(1, 3, 3, 20),
(1, 1, 4, 20),
(1, 2, 4, 20),
(1, 3, 4, 20),
(1, 1, 5, 20),
(1, 2, 5, 20),
(1, 3, 5, 20),
(2, 1, 1, 20),
(2, 2, 1, 20),
(2, 3, 1, 19),
(2, 1, 2, 20),
(2, 2, 2, 20),
(2, 3, 2, 19),
(2, 1, 3, 20),
(2, 2, 3, 20),
(2, 3, 3, 20),
(2, 1, 4, 20),
(2, 2, 4, 20),
(2, 3, 4, 20),
(2, 1, 5, 20),
(2, 2, 5, 20),
(2, 3, 5, 20),
(3, 1, 1, 20),
(3, 2, 1, 20),
(3, 3, 1, 20),
(3, 1, 2, 20),
(3, 2, 2, 20),
(3, 3, 2, 20),
(3, 1, 3, 19),
(3, 2, 3, 20),
(3, 3, 3, 20),
(3, 1, 4, 20),
(3, 2, 4, 20),
(3, 3, 4, 20),
(3, 1, 5, 20),
(3, 2, 5, 20),
(3, 3, 5, 20),
(4, 1, 1, 20),
(4, 2, 1, 20),
(4, 3, 1, 20),
(4, 1, 2, 20),
(4, 2, 2, 20),
(4, 3, 2, 20),
(4, 1, 3, 20),
(4, 2, 3, 20),
(4, 3, 3, 20),
(4, 1, 4, 20),
(4, 2, 4, 20),
(4, 3, 4, 20),
(4, 1, 5, 20),
(4, 2, 5, 20),
(4, 3, 5, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id_size` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id_size`, `name`) VALUES
(1, 'Nhỏ'),
(2, 'Vừa'),
(3, 'Lớn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id_staff` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_staff`
--

INSERT INTO `tbl_staff` (`id_staff`, `name`, `address`, `phone`, `username`) VALUES
(1, 'admin', 'Đại học sài gòn', '0123456789', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id_loai`);

--
-- Chỉ mục cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`id_color`);

--
-- Chỉ mục cho bảng `tbl_cutomer`
--
ALTER TABLE `tbl_cutomer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_product`,`id_order`,`size`,`color`) USING BTREE;

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `tbl_product_size_color`
--
ALTER TABLE `tbl_product_size_color`
  ADD PRIMARY KEY (`id_product`,`id_color`,`id_size`) USING BTREE;

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id_size`);

--
-- Chỉ mục cho bảng `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cutomer`
--
ALTER TABLE `tbl_cutomer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
