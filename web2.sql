-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2023 lúc 06:02 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cnc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_account`
--

CREATE TABLE `tbl_account` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `authority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_account`
--

INSERT INTO `tbl_account` (`username`, `password`, `status`, `authority`) VALUES
('admin', 'admin', 1, 1),
('khuong', 'pham', 1, 1),
('qwer', '122', 1, 0),
('thanhgiang.user@gmail.com', '123123', 1, 0),
('thanhgiangdz', '123123', 1, 0),
('thanhgianguser@gmail.com', '123123', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id_loai` int(11) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id_loai`, `ten_loai`) VALUES
(1, 'ADIDAS'),
(2, 'NIKE'),
(3, 'PUMA'),
(4, 'GUCCI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `id_color` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`id_color`, `name`) VALUES
(1, 'Red'),
(2, 'Yellow'),
(3, 'Black'),
(4, 'White'),
(5, 'Blue');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cutomer`
--

CREATE TABLE `tbl_cutomer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cutomer`
--

INSERT INTO `tbl_cutomer` (`id_customer`, `name`, `address`, `phone`, `username`) VALUES
(8, 'Giang', 'ĐHSG', '0342601307', 'thanhgiangdz'),
(13, 'Nguyễn Thanh Giang', 'Đại học sài gòn', '0342601307', 'thanhgiang.user@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_order`
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

--
-- Đang đổ dữ liệu cho bảng `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_order`, `id_product`, `size`, `color`, `quantity`, `price`, `total_money`) VALUES
(2, 2, 'S', 'Red', 36, 475000, 17100000),
(3, 2, 'M', 'Red', 1, 475000, 475000),
(4, 3, 'S', 'Red', 5, 375000, 1875000),
(5, 3, '36', 'Red', 1, 375000, 375000),
(6, 3, '36', 'Yellow', 1, 375000, 375000),
(7, 3, '38', 'White', 1, 2100000, 2100000),
(7, 4, '39', 'Yellow', 1, 2600000, 2600000),
(8, 8, '40', 'Black', 1, 4900000, 4900000),
(8, 10, '42', 'Yellow', 1, 4000000, 4000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
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

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_customer`, `ten_kh`, `id_staff`, `ngay_dat`, `address`, `phone`, `status`, `notes`, `total_money`) VALUES
(5, 7, 'Nguyễn Thanh Giang', 0, '0000-00-00', 'Đại Học Sài Gòn', '0342601307', 1, 'NULL', 375000),
(6, 8, 'Giang', 0, '0000-00-00', 'ĐHSG', '0342601307', 0, 'NULL', 375000),
(7, 13, 'Nguyễn Thanh Giang', 0, '0000-00-00', 'Đại học sài gòn', '0342601307', 0, 'NULL', 4700000),
(8, 13, 'Nguyễn Thanh Giang', 0, '0000-00-00', 'Đại học sài gòn', '0342601307', 0, 'NULL', 8900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
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
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id_product`, `name`, `price`, `details`, `status`, `image`, `image2`, `image3`, `image4`, `id_loai`) VALUES
(1, 'Adidas Alpha BOUNCE', 3900000, 'Có thể nói, adidas AlphaBOUNCE là một trong những đôi giày mới bắt mắt nhất trong phân khúc giày chạy bộ, thiết kế độc đáo hỗ trợ mọi chuyển động khó trong thể thao, mỗi bước đi đều có đệm Bounce mềm mại và dẻo dai. Alpha Bounce sẽ giúp bạn đi đường dài cực kỳ êm ái và thoải mái. Phần trên thông qua các nếp gấp mang tính biểu tượng của AP để vừa vặn với bàn chân của bạn và vừa vặn một cách thoải mái, cho phép bàn chân của bạn di chuyển trong trạng thái “thực”. Đây cũng là một đặc điểm nổi bật, vừa mang tính thời trang, vừa góp phần tạo nên hiệu quả vượt trội cho loại giày này. Đế được làm bằng cao su mềm với họa tiết nút tròn giúp hỗ trợ lực đè lên bàn chân.', 1, 'adidas1.png', 'adidas1-2.jpg', 'adidas1-3.jpg', 'adidas1-4.jpg', 1),
(2, 'Adidas EQT Boost', 2600000, 'Nếu bạn vẫn đang “loanh quanh” với hàng tá nhãn hiệu giày mà chưa biết mua gì. Tôi sẽ cho bạn biết, nếu bạn muốn mua giày mới ngay bây giờ, tại sao không bỏ qua adidas EQT. Dòng giày lâu đời tích hợp công nghệ hiện đại của Adidas, chẳng hạn như đế Torsion, cho phép bàn chân trước và bàn chân sau của người mang EQT hoạt động riêng biệt. Phần hỗ trợ giữa bàn chân và sọc “ba” là dấu hiệu duy nhất cho phép cả hai thực tế và thiết thực, thời trang. Một Mau giày mang tính thể thao và chất lượng cao mà bạn không bao giờ nên bỏ qua trong năm nay.', 1, 'adidas2.png', 'adidas2-2.jpg', 'adidas2-3.jpg', 'adidas2-4.jpg', 1),
(3, 'Adidas EQT Gazelle', 2100000, 'Giày Adidas EQT Gazelle là giày Swift, qua nhiều thập kỷ, nhiều thiết kế giày chạy bộ mang tính biểu tượng của Adidas đã đạt đến đỉnh cao. Giày đan siêu nhẹ này được thiết kế đặc biệt để sử dụng hàng ngày, có kiểu dáng thời trang và mang lại cảm giác nâng đỡ và linh hoạt. Giày thể thao Adidas EQT luôn là sự lựa chọn hàng đầu bởi vẻ đẹp tràn đầy sức sống, trẻ trung, tiện dụng, dễ phối với nhiều loại trang phục, phù hợp với nhiều dịp khác nhau.', 1, 'adidas3.png', 'adidas3-2.jpg', 'adidas3-3.jpg', 'adidas3-4.jpg', 1),
(4, 'Adidas NMD', 2600000, 'Được ra mắt vào tháng 12 năm 2015, nhưng nó vẫn là một đôi giày được săn đón và tiếp tục mở rộng tầm ảnh hưởng của mình trong giới yêu giày sneaker và ngành công nghiệp thời trang. Adidas NMD (Nomad) áp dụng thiết kế tối giản, đế và vải Primeknit, sẵn sàng chinh phục tất cả mọi người với phong cách đường phố. Càng hot và càng được yêu thích hơn khi nhiều phối màu thú vị cùng chất lượng siêu độc đáo được giới thiệu.', 1, 'adidas4.png', 'adidas4-2.jpg', 'adidas4-3.jpg', 'adidas4-4.jpg', 1),
(5, 'Adidas super star', 2500000, 'Với Adidas SuperStar, Adidas muốn khẳng định rằng đẳng cấp luôn trường tồn cùng thời gian. Hằng năm Mau giày này luôn cho ra mắt một phiên bản mới, thu hút được sự quan tâm của nhiều bạn trẻ.Thêm một điểm cộng to oành của bé này chính là khả năng ăn rơ tuyệt vời với bất cứ trang phục nào. Điều khiến những đôi giày adidas superstar đặc biệt chính là phần mũi vỏ sò (shelltoe).  Phần thân giày có ba sọc cổ điển của adidas, và thường được làm bằng chất liệu da.', 1, 'adidas5.png', 'adidas5-2.jpg', 'adidas5-3.jpg', 'adidas5-4.jpg', 1),
(6, 'Nike Zoom Pegasus', 3500000, 'Lấy cảm hứng từ những chú ngựa thần trong văn hóa Hy Lạp, Nike Zoom Pegasus được ra đời với mong muốn đưa đến cho mọi người sản phẩm giày chạy tốt nhất với giá cả phải chăng. Đây cũng là một trong những Mau giày Nike nam chạy bộ có tuổi đời cao nhất thế giới, khoảng gần 30 năm. Nike Zoom Pegasus được đánh giá là một trong những Mau giày chạy hoàn hảo nhất hiện nay. Phần thân giày được dệt từ vải lưới giúp thoáng khí và thoát mồ hôi rất tốt. Đế giày có sử dụng công nghệ Air để tạo độ êm chân tối đa cho người sử dụng, đặc biệt là khi chạy bộ.', 1, 'nike1.png', 'nike1-2.jpg', 'nike1-3.jpg', 'nike1-4.jpg', 2),
(7, 'Nike Zoom Shift', 2500000, 'Nike Zoom Shift được cho ra đời để phục vụ môn bóng rổ. Tuy vậy, trong những năm trở lại đây, đôi giày này đã trở nên rất hot và cháy hàng khắp mọi nơi. Với nhiều cải tiến và nhiều phiên bản khác nhau, được kết hợp cùng các cầu thủ bóng rổ, thật không khó để hiểu tại sau Mau giày Nike nam này lại thu hút đến vậy.', 1, 'nike2.png', 'nike2-2.jpg', 'nike2-3.jpg', 'nike2-4.jpg', 2),
(8, 'Nike Dunk High LX', 4900000, 'Mau giày huyền thoại này được đặt tên dựa theo siêu sao bóng rổ Michael Jordan. Mặc dù ngày nay đã có nhiều Mau giày bóng rổ hiện đại hơn, êm chân hơn của Nike và các hãng giày khác, nhưng Nike Air Jordan vẫn là một tượng đài lớn, trở thành một item must – have trong tủ đồ của giới mộ điệu. Đôi giày này đã vượt qua khuôn khổ của đồ thể thao, trở thành một biểu tượng văn hóa của môn bóng rổ nói riêng và văn hóa nước Mỹ nói chung.', 1, 'nike3.png', 'nike3-2.jpg', 'nike3-3.jpg', 'nike3-4.jpg', 2),
(9, 'Nike Air Force 1 \'07 PRM', 4200000, 'Đây cũng là một trong những thiết kế đi cùng năm tháng của Nike. Ban đầu, vào năm 1982 Mau giày Nike nam này được rất nhiều cầu thủ bóng rổ nhà nghề Mỹ NBA diện trong các trận thi đấu, sau đó nó trở nên nổi tiếng trên toàn thế giới. Nike Air Force 1 cũng là một trong những thiết kế giày được ảnh hưởng nhiều nhất của Nike với hàng chục phiên bản khác nhau, mỗi phiên bản lại thể hiện một câu chuyện riêng.', 1, 'nike4.png', 'nike4-2.jpg', 'nike4-3.jpg', 'nike4-4.jpg', 2),
(10, 'Jordan Series .03 \'Dear \'90s\'', 4000000, 'Giày Nike Air Jordan Low 1 có thiết kế thông minh với các rãnh sâu làm tăng lực ma sát và hạn chế trơn trượt. Phần lót trong chế tạo từ chất liệu da cao cấp mang lại cảm giác tự nhiên và êm ái. Bên cạnh đó, cấu tạo đế không khí giúp người dùng thoải mái dù mang giày trong suốt ngày dài. Giày nữ Air Nike Jordan Low được thiết kế theo phong cách skating. Chính vì vậy, màu sắc của Mau giày này vô cùng độc đáo và bắt mắt. Bạn có thể kết hợp giày với nhiều phong cách thời trang khác nhau. Từ đó sáng tạo ra những outfit thật thời thượng và cá tính.', 1, 'nike5.png', 'nike5-2.jpg', 'nike5-3.jpg', 'nike5-4.jpg', 2),
(11, 'Puma Ember Trail', 2200000, 'Là một phần của xu hướng sneaker năm 2020, Puma Ember Trail là một trong những sản phẩm chunky phổ biến của gia đình Puma. Đôi giày được thiết kế với thiết kế chắc chắn và khả năng tạo ra màu sắc nổi bật. Phần trên được làm bằng vải dệt kết hợp với lớp lưới mang lại cảm giác mịn màng tối đa. Lớp lót Misole EVA kết hợp công nghệ hỗ trợ gót chân Formstrip để bảo vệ bàn chân. Đế giày được làm bằng cao su với các rãnh chống trượt để tăng tính linh hoạt khi di chuyển.', 1, 'puma1.png', 'puma1-2.jpg', 'puma1-3.jpg', 'puma1-4.jpg', 3),
(12, 'Puma Cell Alien OG', 4000000, 'Ứng dụng công nghệ PUMA CELL xuất hiện lần đầu tiên vào năm 1998 kết hợp với thiết kế cá tính và màu sắc tươi mới và đệm nhẹ cho thoải mái, giày Puma Cell Alien OG là một trong những đôi giày sneaker sành điệu mới nhất được nhiều tín đồ thời trang của thương hiệu Puma yêu thích. Giày có thiết kế đường phố cổ điển của thập niên 90 với phần trên được làm bằng vải dệt cao cấp mềm mại kết hợp với đệm Misole Eva siêu nhẹ cho cảm giác thoải mái. Lớp lót tiên tiến với công nghệ hỗ trợ và cố định gót chân giúp bảo vệ đôi chân của bạn. Đế được làm bằng cao su chất lượng cao với hoa văn đặc biệt để tạo độ bền và nổi bật cho đôi giày.', 1, 'puma2.png', 'puma2-2.jpg', 'puma2-3.jpg', 'puma2-4.jpg', 3),
(13, 'PUMA x TYAKASHA RS-X', 4200000, 'Sở hữu thiết kế siêu thời trang và hiện đại với thiết kế hợp lý, giày PUMA x TYAKASHA RS-X là đôi giày Puma mới nhất đặc biệt phổ biến trong giới sneaker. Đôi giày sở hữu thiết kế street style cổ điển kết hợp với phô mai thể thao phóng đại để tạo điểm nhấn độc đáo. Phần trên được làm bằng da lộn cao cấp để tạo cảm giác chân mềm mại. Đệm siêu nhẹ Misole PU kết hợp với đế cao su chống trượt giúp bảo vệ chân và tăng khả năng vận động khi di chuyển. Sở hữu kiểu dáng cổ điển thập niên 80 với thiết kế độc đáo với các miếng TPU được sắp xếp nổi bật, PUMA x TYAKASHA RS-X chắc chắn sẽ là một lựa chọn tuyệt vời cho phong cách thời trang nổi bật của bạn.', 1, 'puma3.png', 'puma3-2.jpg', 'puma3-3.jpg', 'puma3-4.jpg', 3),
(14, 'Puma RS-X Trophy', 2500000, 'Puma RS-X Trophy là một đôi sneaker chunky với hình dáng siêu gọn gàng khiến nó trở thành một trong những Mau sneaker tiếp theo được yêu thích bởi tín đồ thời trang. Sở hữu thiết kế theo phong cách cổ điển với phần trên được làm từ vải dệt cao cấp kết hợp với đệm Misole Eva siêu nhẹ tạo cảm giác vô cùng thoải mái. Lớp lót xốp chống sốc với công nghệ cố định gót chân và đế cao su chống trượt cho chuyển động linh hoạt bảo vệ đôi chân của bạn. Puma RS-X Trophy chắc chắn sẽ tạo ra một trải nghiệm tuyệt vời trong phong cách thời trang của bạn.', 1, 'puma4.png', 'puma4-2.jpg', 'puma4-3.jpg', 'puma4-4.jpg', 3),
(15, 'Puma Suede', 2000000, 'Nhắc tới Puma ta không thể nào không nhớ tới cái tên kinh điển Puma Suede. Với hướng đi ban đầu là một đôi giày thể thao dành cho bộ môn bóng rổ, nhưng Puma lại muốn có một điều gì đó đột phá và sáng tạo, hơn nữa là sự chú ý từ các khán giả và vận động viên. Thế là ý tưởng về một đôi giày da lộn huyền thoại, hợp thời trang được ra đời.', 1, 'puma5.png', 'puma5-2.jpg', 'puma5-3.jpg', 'puma5-4.jpg', 3),
(16, 'Gucci Disney Rhyton', 2400000, 'Disney Rhyton là một item sáng giá có tên trong danh sách bộ sưu tập giày cho những ai là fans Disney. Với thiết kế form giày “kệch cỡm” và “to xác” trông rất hầm hố nhưng lại có chút đáng yêu khi được trang trí bằng hình ảnh em chuột Mickey. Dù là đi chơi, đi học hay đi làm thì em này hoàn toàn phù hợp với những outfit trên. Ngoài ra, với những ai thuộc team “nấm lùn” thì nên cân nhắc em này nhé bởi phần đế được nâng lên đến 5cm giúp bạn ăn gian, cải thiện được chiều cao của mình. Cùng chung một lò sản xuất với những dòng giày trước đây, nên em này cũng được sở hữu chất liệu cao cấp, mang lại cho người dùng cảm giác thoải mái, êm ái khi sử dụng.', 1, 'gucci1.png', 'gucci1-2.jpg', 'gucci1-3.jpg', 'gucci1-4.jpg', 4),
(17, 'Gucci Ace Leather', 6600000, 'Gucci Men’s Ace Leather mang trong mình thiết kế đậm nét hiện đại có thể mix and match được với nhiều set đồ khác nhau. Với hai tone màu trắng, đen chủ đạo quen thuộc em này trở thành item sáng giá được các tín đồ sneaker điên cuồng săn lùng. Dòng sản phẩm giày Gucci Men’s Ace Leather được làm bằng chất liệu da cao cấp có độ bền cao, giúp mang lại cảm giác thoải mái êm ái cho đôi chân trong quá trình di chuyển.', 1, 'gucci2.png', 'gucci2-2.jpg', 'gucci2-3.jpg', 'gucci2-4.jpg', 4),
(18, 'Gucci ace Signature', 5500000, 'Một dòng sản phẩm được tung ra thị trường, nhằm mở rộng và phát triển và khẳng định chủ quyền thương hiệu không ai khác chính là Mau giày Ace Gucci Signature Sneaker. Đây là Mau giày được làm bằng chất liệu da cao cấp, được in nổi hoa văn logo GG trên nền da đen. Với phần đế được làm bằng chất liệu cao su sản xuất tại Italia.', 1, 'gucci3.png', 'gucci3-2.jpg', 'gucci3-3.jpg', 'gucci3-4.jpg', 4),
(19, 'Gucci stripe leather', 2600000, 'Giày Gucci Slip On Sneaker With Bees nổi bật với những con ong và ngôi sao độc đáo của nhà thiết kế Alessandro Michele, được may tinh xảo trên chất liệu da đen thời thượng, màu vàng – đen thời thượng. Với kiểu dáng mỏng, trơn phù hợp với mọi người bởi sự tiện lợi, nhỏ gọn, thể hiện cá tính của chủ nhân, đây là Mau giày không thể thiếu cho các tín đồ thời trang nam.', 1, 'gucci4.png', 'gucci4-2.jpg', 'gucci4-3.jpg', 'gucci4-4.jpg', 4),
(21, 'Adidas NMD', 3600000, 'Nói đơn giản thế thôi bạn đã đủ biết sức hút mạnh mẽ của nó rồi đúng không? Mang âm hưởng khám phá và trải nghiệm cuộc sống. Adidas NMD chính là đứa con hoàn hảo nhất dành cho những cô nàng đam mê sự mới lạ. Giày thể thao adidas NMD được ra đời dựa trên cảm hứng từ nguồn cội Adidas Originals. NMD ra đời đại diện cho  một thế hệ mới, thế hệ của sự trẻ trung năng động.', 1, 'adidas6.jpg', 'adidas6-2.jpg', 'adidas6-3.jpg', 'adidas6-4.jpg', 1);

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
(1, 1, 1, 19),
(1, 2, 1, 20),
(1, 3, 1, 31),
(1, 4, 1, 31),
(1, 5, 1, 31),
(1, 8, 1, 31),
(1, 10, 1, 31),
(1, 1, 2, 20),
(1, 2, 2, 20),
(1, 3, 2, 31),
(1, 4, 2, 31),
(1, 5, 2, 31),
(1, 8, 2, 31),
(1, 10, 2, 31),
(1, 3, 3, 31),
(1, 5, 3, 31),
(1, 8, 3, 31),
(1, 10, 3, 31),
(2, 1, 1, -16),
(2, 2, 1, 19),
(2, 5, 1, 13),
(2, 6, 1, 12),
(2, 7, 1, 14),
(2, 8, 1, 13),
(2, 9, 1, 9),
(2, 10, 1, 13),
(2, 1, 2, 20),
(2, 2, 2, 20),
(2, 5, 2, 23),
(2, 6, 2, 24),
(2, 7, 2, 15),
(2, 8, 2, 12),
(2, 9, 2, 13),
(2, 5, 3, 41),
(2, 6, 3, 13),
(2, 7, 3, 16),
(2, 8, 3, 11),
(2, 9, 3, 13),
(2, 5, 4, 13),
(2, 7, 4, 17),
(2, 9, 4, 13),
(3, 1, 1, 15),
(3, 2, 1, 19),
(3, 3, 1, 23),
(3, 4, 1, 17),
(3, 5, 1, 6),
(3, 6, 1, 21),
(3, 7, 1, 31),
(3, 8, 1, 17),
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
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id_size` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id_size`, `name`) VALUES
(1, '35'),
(2, '36'),
(3, '37'),
(4, '38'),
(5, '39'),
(6, '40'),
(7, '41'),
(8, '42'),
(9, '43'),
(10, '44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id_staff` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_staff`
--

INSERT INTO `tbl_staff` (`id_staff`, `name`, `address`, `phone`, `username`) VALUES
(1, 'Phạm Duy Khương', 'Hà Nội', '0356657937', 'khuong'),
(2, 'admin', 'Đại học sài gòn', '0123456789', 'admin');

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
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
