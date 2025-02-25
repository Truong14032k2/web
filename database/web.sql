-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 25, 2025 lúc 01:04 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(2) NOT NULL DEFAULT 1,
  `fullname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lever` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `phone`, `gender`, `fullname`, `lever`, `status`, `created_at`, `updated_at`) VALUES
(1, 'truong', '6d0644a6cd8f74abf811baa3aee673e3', 'truong201@gmail.com', '0987654321', 1, 'Nguyễn Trung Trường', 1, 1, '2025-02-25 12:14:27', '2025-02-25 12:15:51'),
(2, 'quang', 'ef9b473862cd9ea3b48be240c02bf736', 'quang211@gmail.com', '0987654322', 1, 'Võ Nhật Quang', 0, 1, '2025-02-25 12:15:14', '2025-02-25 12:15:14'),
(3, 'tuan', 'f579ea1dd926ed517231ef7371483271', 'tuan201@gmail.com', '0987654323', 1, 'Nguyễn Đức Tuấn', 0, 1, '2025-02-25 12:15:38', '2025-02-25 12:15:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advertise`
--

CREATE TABLE `advertise` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `advertise`
--

INSERT INTO `advertise` (`id`, `manufacturer_id`, `product_id`, `photo`, `rules`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 1, 0, '1740468511.png', 1, '2025-02-25 14:28:31', NULL, '2025-02-25 14:28:31'),
(2, 2, 0, '1740468524.jpg', 1, '2025-02-25 14:28:44', NULL, '2025-02-25 14:28:44'),
(3, 3, 0, '1740468539.jpg', 1, '2025-02-25 14:28:59', NULL, '2025-02-25 14:28:59'),
(4, 4, 0, '1740468548.jpg', 1, '2025-02-25 14:29:08', NULL, '2025-02-25 14:29:08'),
(5, 5, 0, '1740468557.jpg', 1, '2025-02-25 14:29:17', NULL, '2025-02-25 14:29:17'),
(6, 10, 0, '1740468570.jpg', 2, '2025-02-25 14:29:30', NULL, '2025-02-25 14:29:30'),
(7, 9, 0, '1740468604.jpg', 2, '2025-02-25 14:30:04', NULL, '2025-02-25 14:30:04'),
(8, 7, 0, '1740468623.jpg', 2, '2025-02-25 14:30:23', NULL, '2025-02-25 14:30:23'),
(9, 6, 0, '1740468642.jpg', 2, '2025-02-25 14:30:42', NULL, '2025-02-25 14:30:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_lap_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `gender` tinyint(2) NOT NULL DEFAULT 1,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `status`, `gender`, `address`, `token`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Trường', 'truong12@gmail.com', 'cec57ccabc050dd440afc94b6f75492f', '0987654321', 1, 1, 'sài gòn', NULL, '2025-02-25 12:20:00', NULL, '2025-02-25 12:20:00'),
(2, 'Quang', 'quang12@gmail.com', '251c9bdfe078f3e3288aba1b9ee5b835', '0987654322', 1, 1, 'sàigòn', NULL, '2025-02-25 12:20:55', NULL, '2025-02-25 12:20:55'),
(3, 'Tuấn', 'tuan12@gmail.com', '5c3cbc832637117e50425a2c3f5af718', '0987654323', 1, 1, 'sg', NULL, '2025-02-25 12:21:59', NULL, '2025-02-25 12:21:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forgot_password`
--

CREATE TABLE `forgot_password` (
  `customer_id` int(11) NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` tinyint(3) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`id`, `name`, `address`, `phone`, `photo`, `rules`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'iPhone', 'Mỹ', '09010901', 'https://cdnv2.tgdd.vn/mwg-static/common/Category/92/e5/92e5003382a0bada9a770618b6c6099b.png', 1, '2025-02-25 12:39:11', NULL, '2025-02-25 12:39:11'),
(2, 'Samsung', 'Hàn Quóc', '09020902', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_60.png			', 1, '2025-02-25 12:39:53', NULL, '2025-02-25 12:39:53'),
(3, 'Xiaomi', 'Trung Quốc', '09030903', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_61.png		', 1, '2025-02-25 12:40:27', NULL, '2025-02-25 12:40:27'),
(4, 'Oppo', 'Trung Quốc', '09040904', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_62.png		', 1, '2025-02-25 12:40:48', NULL, '2025-02-25 12:40:48'),
(5, 'Realme', 'Trung Quốc', '09050905', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_63.png			', 1, '2025-02-25 12:41:08', NULL, '2025-02-25 12:41:08'),
(6, 'Nokia', 'Phần Lan', '09060906', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_37_1.png		', 1, '2025-02-25 12:41:26', NULL, '2025-02-25 12:41:26'),
(7, 'OnePlus', 'Trung Quốc', '09070907', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_65.png			', 1, '2025-02-25 12:41:43', NULL, '2025-02-25 12:41:43'),
(8, 'Infinix', 'Hồng Kông', '09080908', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/i/n/infinixlogo.png		', 1, '2025-02-25 12:42:11', NULL, '2025-02-25 12:42:11'),
(9, 'Asus', 'Đài Loan', '09090909', 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:50/q:30/plain/https://cellphones.com.vn/media/tmp/catalog/product/f/r/frame_67.png			', 1, '2025-02-25 12:42:31', NULL, '2025-02-25 12:42:31'),
(10, 'Vivo', 'Trung Quốc', '09100910', 'https://cdn.tgdd.vn/Brand/1/vivo-logo-220-220x48-3.png	', 1, '2025-02-25 12:43:13', NULL, '2025-02-25 12:43:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name_receiver` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_receiver` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_receiver` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `total_price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_lp_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `price`, `descriptions`, `slug`, `manufacturer_id`, `created_at`, `deleted_at`, `updated_at`) VALUES
(10, 'iPhone 16 Plus 128GB', '1740471000.jpg', 24690000, 'iPhone 16 Plus thu hút được sự chú ý của người dùng nhờ thiết kế hiện đại, sang trọng. Cùng với đó là cấu hình vượt trội từ con chip A18 cực kỳ mạnh mẽ. Chiếc điện thoại iPhone 16 bản Plus này sở hữu màn hình Super Retina XDR 6.7 inch hiện đại kết hợp cùng vỏ nhôm chuẩn hàng không vũ trụ tạo nên thiết kế nổi bật. Cụm camera kép cảm biến chất lượng với camera Fusion độ phân giải 48MP, camera Ultra Wide 12MP đem tới cho người dùng chất lượng sử dụng tốt hơn.', 'Hệ điều hành:\r\niOS 18\r\nChip xử lý (CPU):\r\nApple A18 6 nhân\r\nTốc độ CPU:\r\nHãng không công bố\r\nChip đồ họa (GPU):\r\nApple GPU 5 nhân\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:10:00', NULL, '2025-02-25 15:10:00'),
(11, 'iPhone 15 Plus 128GB', '1740470962.jpg', 22590000, 'iPhone 15 Plus được đánh giá cao bởi màn hình Dynamic Island 6.7 inch với mặt kính lưng pha màu ấn tượng, chip A16 Bionic mạnh mẽ cùng cổng sạc USB-C cho khả năng sạc đầy nhanh chóng. Ngoài ra, phiên bản Plus thuộc series iPhone 15 còn sở hữu 5 phiên bản màu pastel thanh lịch phù hợp với nhiều đối tượng khách hàng: hồng, vàng, xanh lá, xanh dương, đen.', 'Hệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\nApple A16 Bionic\r\nTốc độ CPU:\r\n3.46 GHz\r\nChip đồ họa (GPU):\r\nApple GPU 5 nhân\r\nRAM:\r\n6 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:09:22', NULL, '2025-02-25 15:09:22'),
(12, 'iPhone 14 Pro Max 128GB', '1740470926.jpg', 25590000, 'iPhone 14 Pro Max sở hữu thiết kế màn hình Dynamic Island ấn tượng cùng màn hình OLED 6,7 inch hỗ trợ always-on display và hiệu năng vượt trội với chip A16 Bionic. Bên cạnh đó máy còn sở hữu nhiều nâng cấp về camera với cụm camera sau 48MP, camera trước 12MP dùng bộ nhớ RAM 6GB đa nhiệm vượt trội.', 'Hệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\nApple A16 Bionic\r\nTốc độ CPU:\r\n3.46 GHz\r\nChip đồ họa (GPU):\r\nApple GPU 5 nhân\r\nRAM:\r\n6 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:08:46', NULL, '2025-02-25 15:08:46'),
(13, 'iPhone 15 128GB', '1740470874.jpg', 18690000, 'iPhone 15 128GB được trang bị màn hình Dynamic Island kích thước 6.1 inch với công nghệ hiển thị Super Retina XDR màn lại trải nghiệm hình ảnh vượt trội. Điện thoại với mặt lưng kính nhám chống bám mồ hôi cùng 5 phiên bản màu sắc lựa chọn: Hồng, Vàng, Xanh lá, Xanh dương và đen. Camera trên iPhone 15 series cũng được nâng cấp lên cảm biến 48MP cùng tính năng chụp zoom quang học tới 2x. Cùng với thiết kế cổng sạc thay đổi từ lightning sang USB-C vô cùng ấn tượng.', 'Hệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\nApple A16 Bionic\r\nTốc độ CPU:\r\n3.46 GHz\r\nChip đồ họa (GPU):\r\nApple GPU 5 nhân\r\nRAM:\r\n6 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:07:54', NULL, '2025-02-25 15:07:54'),
(14, 'iPhone 13 128GB', '1740470831.jpg', 12750000, 'iPhone 13 thường được trang bị chip A15 Bionic mạnh mẽ với 6 nhân CPU và 4 nhân GPU, cung cấp mức hiệu năng vượt trội, giúp xử lý nhanh chóng các tác vụ nặng. Màn hình Super Retina XDR 6.1 inch trên máy cũng được đánh giá cao khi mang tới hình ảnh sắc nét với độ sáng cao, tối ưu hóa trải nghiệm xem nội dung dưới mọi điều kiện ánh sáng. Chưa hết, iPhone13 còn sở hữu hệ thống camera kép 12MP với công nghệ ổn định hình ảnh quang học (OIS) cải thiện khả năng quay film, chụp hình, ngay cả khi đang ở trong môi trường ánh sáng yếu.', 'Hệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\nApple A15 Bionic\r\nTốc độ CPU:\r\n3.22 GHz\r\nChip đồ họa (GPU):\r\nApple GPU 4 nhân\r\nRAM:\r\n4 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:07:11', NULL, '2025-02-25 15:07:11'),
(15, 'iPhone 16 128GB', '1740470780.jpg', 21190000, 'Điện thoại iPhone 16 bản thường 128GB sở hữu thiết kế khung nhôm, mặt lưng kính pha màu cùng với 5 màu sắc bắt mắt để lựa chọn. Máy với trọng lượng 170g cùng kích thước màn hình 6.1 inch Super Retina XDR, dải màu P3. Với cấu hình từ chip A18 Bionic mới, điện thoại iPhone mới này mang lại hiệu năng ổn định, đáp ứng nhiều nhu cầu dùng.', 'Hệ điều hành:\r\niOS 18\r\nChip xử lý (CPU):\r\nApple A18 6 nhân\r\nTốc độ CPU:\r\nHãng không công bố\r\nChip đồ họa (GPU):\r\nApple GPU 5 nhân\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:06:20', NULL, '2025-02-25 15:06:20'),
(16, 'iPhone 15 Pro Max 256GB', '1740470631.jpg', 28490000, 'iPhone 15 Pro Max sở hữu màn hình Super Retina XDR OLED 6.7 inch tần số quét cao 120Hz sắc nét và mượt mà. Với chipset A17 Pro sản xuất trên tiến trình 3nm, thế hệ iPhone 15 bản Pro Max đảm bảo hiệu năng mạnh mẽ và khả năng tiết kiệm pin tối ưu. Đặc biệt, máy còn sở hữu camera chính 48MP cùng khả năng zoom quang học 5x, giúp iP 15 Pro Max trở thành lựa chọn tuyệt vời cho người đam mê nhiếp ảnh và quay phim chuyên nghiệp.', 'Hệ điều hành:\r\niOS 17\r\nChip xử lý (CPU):\r\nApple A17 Pro 6 nhân\r\nTốc độ CPU:\r\n3.78 GHz\r\nChip đồ họa (GPU):\r\nApple GPU 6 nhân\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n241 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:03:51', NULL, '2025-02-25 15:03:51'),
(17, 'iPhone 16 Pro Max 256GB', '1740470545.jpg', 32690000, 'iPhone 16 Pro Max sở hữu màn hình Super Retina XDR OLED 6.9 inch với công nghệ ProMotion, mang lại trải nghiệm hiển thị mượt mà và sắc nét, lý tưởng cho giải trí và làm việc. Với chipset A18 Pro mạnh mẽ, mẫu iPhone đời mới này cung cấp hiệu suất vượt trội, giúp xử lý mượt mà các tác vụ nặng như chơi game hay edit video. Chiếc điện thoại iPhone 16 mới này còn sở hữu hệ thống camera Ultra Wide 48MP cho khả năng chụp ảnh cực kỳ chi tiết, mang đến chất lượng hình ảnh ấn tượng trong mọi tình huống.', 'Hệ điều hành:\r\niOS 18\r\nChip xử lý (CPU):\r\nApple A18 Pro 6 nhân\r\nTốc độ CPU:\r\nHãng không công bố\r\nChip đồ họa (GPU):\r\nApple GPU 6 nhân\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n241 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 15:02:25', NULL, '2025-02-25 15:02:25'),
(18, 'iPhone 16 Pro 128GB', '1740470244.jpg', 27390000, 'iPhone 16 Pro chính là thế hệ điện thoại tiếp theo được Apple cho ra mắt vào tháng 9/2024. Với những thay đổi đầy vượt bậc như: camera của chiếc iPhone 16 bản Pro có độ phân giải 48MP, camera Ultra Wide 48MP, camera Telephoto 5x 12MP, dung lượng bộ nhớ trong 128GB và chipset A18 Pro mạnh mẽ. Tất cả những điều trên biến chiếc điện thoại iPhone 16 trở thành một siêu phẩm công nghệ mới.', 'Hệ điều hành:\r\niOS 18\r\nChip xử lý (CPU):\r\nApple A18 Pro 6 nhân\r\nTốc độ CPU:\r\nHãng không công bố\r\nChip đồ họa (GPU):\r\nApple GPU 6 nhân\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 1, '2025-02-25 14:57:24', NULL, '2025-02-25 14:57:24'),
(20, 'Samsung Galaxy Z Flip6 12GB 256GB', '1740474472.jpg', 19350000, 'Samsung Z Flip 6 sở hữu nhiều nâng cấp ấn tượng nhờ được trang bị chip Snapdragon 8 Gen 3 for Galaxy, RAM 12GB, mang lại hiệu năng mạnh mẽ cho đa nhiệm và chơi game. Camera chính 50MP của máy giúp cải thiện khả năng quay chụp, đặc biệt trong môi trường thiếu sáng. Cùng với đó là pin 4.000mAh, hỗ trợ sạc nhanh 25W, giúp kéo dài thời gian sử dụng của người dùng.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nSnapdragon 8 Gen 3 for Galaxy\r\nTốc độ CPU:\r\n3.39 GHz\r\nChip đồ họa (GPU):\r\nAdreno 750\r\nRAM:\r\n12 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n216.6 GB\r\nDanh bạ:\r\nKhông giới hạn', 2, '2025-02-25 16:05:37', NULL, '2025-02-25 16:05:37'),
(21, 'Samsung Galaxy S25 256GB', '1740474264.jpg', 19990000, 'Samsung S25 thường 256GB trang bị vi xử lý Qualcomm Snapdragon 8 Elite for Galaxy , RAM 12GB, bộ nhớ trong 256GB cùng viên pin Li-ion 4000mAh. Máy sử dụng màn hình AMOLED 120Hz kích thước 6.2 inch với độ phân giải FHD+. Samsung S25 được trang bị 3 ống kính 50MP+10MP+12MP phía sau và camera selfie 12MP phía trước.', 'Màn hình:	Dynamic AMOLED 2X 6.2\" Full HD+\r\nHệ điều hành:	Android 15\r\nCamera sau:	Chính 50 MP & Phụ 12 MP, 10 MP\r\nCamera trước:	12 MP\r\nChip:	Qualcomm Snapdragon 8 Elite For Galaxy 8 nhân\r\nRAM:	12 GB\r\nDung lượng lưu trữ:	256 GB\r\nSIM:	2 Nano SIM hoặc 2 eSIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G\r\nPin, Sạc:	4000 mAh25 W', 2, '2025-02-25 16:04:24', NULL, '2025-02-25 16:04:24'),
(22, 'Samsung Galaxy S24 FE 5G 8GB 128GB', '1740474170.jpg', 13990000, 'Samsung Galaxy S24 FE trang bị chip Exynos 2400e, dung lượng RAM lên đến 8GB và ROM 128GB, pin 4.700 mAh kèm sạc nhanh đi kèm. Trang bị camera chính 50MP, cùng với camera góc siêu rộng 12MP rõ nét, camera zoom quang rõ nét 3X 8MP. Bên cạnh đó, kết hợp màn hình AMOLED 2X 6.7 inches Full HD+ khi sử dụng.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nExynos 2400e 8 nhân\r\nTốc độ CPU:\r\n3.1 GHz\r\nChip đồ họa (GPU):\r\nXclipse 940\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nDanh bạ:\r\nKhông giới hạn', 2, '2025-02-25 16:02:50', NULL, '2025-02-25 16:02:50'),
(30, 'Xiaomi Redmi Note 14 Pro Plus 5G 8GB 256GB', '1740474755.jpg', 10790000, 'Điện thoại Xiaomi Redmi Note 14 Pro Plus 5G chính hãng ra mắt Việt Nam vào ngày 10/01/2025. Sử dụng chip Snapdragon 7s Gen 3 mạnh mẽ cùng dung lượng RAM 12GB và bộ nhớ trong đến 256GB. Mặt lưng của smartphone nhà Xiaomi sở hữu hệ thống 3 ống kính gồm 200MP, 8MP và 2MP. Điện thoại cũng có màn hình CrystalRes AMOLED 1.5K, kích thước 6.67 inch và viên pin 5110 mAh.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nSnapdragon 7s Gen 3 5G 8 nhân\r\nTốc độ CPU:\r\n1 nhân 2.5 GHz, 3 nhân 2.4 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU):\r\nĐang cập nhật\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n228 GB\r\nDanh bạ:\r\nKhông giới hạn', 3, '2025-02-25 16:12:35', NULL, '2025-02-25 16:12:35'),
(31, 'Xiaomi 14T 12GB 512GB', '1740474703.jpg', 12990000, 'Xiaomi 14T 5G là phiên bản điện thoại cận cao cấp được Xiaomi trang bị con chip Dimensity 8300 Ultra cùng 12GB RAM để mang tới hiệu suất ấn tượng. Mẫu điện thoại này còn được Xiaomi trang bị bộ 3 ống kính Leica thế hệ mới để nâng cao trải nghiệm nhiếp ảnh. Với màn hình Super AMOLED 6.67 inch sở hữu phần viền siêu mỏng cùng độ nét 1.5K, điện thoại 14T của Xiaomi sẽ luôn mang tới chất lượng hình ảnh sắc nét, sống động.', 'Hệ điều hành:\r\nXiaomi HyperOS (Android 14)\r\nChip xử lý (CPU):\r\nMediaTek Dimensity 8300 Ultra 8 nhân\r\nTốc độ CPU:\r\n1 nhân 3.35 GHz, 3 nhân 3.2 GHz & 4 nhân 2.2 GHz\r\nChip đồ họa (GPU):\r\nMali-G615\r\nRAM:\r\n12 GB\r\nDung lượng lưu trữ:\r\n512 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n499 GB\r\nDanh bạ:\r\nKhông giới hạn', 3, '2025-02-25 16:11:43', NULL, '2025-02-25 16:11:43'),
(32, 'Xiaomi Redmi Note 14 6GB 128GB', '1740474643.jpg', 4790000, 'Redmi note 14 chính hãng ra mắt vào ngày 10/01/2025 tại Việt Nam sở hữu AI mới nhất kèm chip MediaTek Helio G99-Ultra mạnh mẽ đi cùng camera 108MP.', 'Hệ điều hành:\r\nXiaomi HyperOS (Android 14)\r\nChip xử lý (CPU):\r\nMediaTek Helio G99-Ultra 8 nhân\r\nTốc độ CPU:\r\n2 nhân 2.2 GHz & 6 nhân 2.0 GHz\r\nChip đồ họa (GPU):\r\nMali-G57 MC2\r\nRAM:\r\n6 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n104 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 3, '2025-02-25 16:10:43', NULL, '2025-02-25 16:10:43'),
(40, 'OPPO Find X8', '1740475140.jpg', 22990000, 'Sau bao chờ đợi, OPPO đã thật sự trình làng người dùng với bộ đôi Flagship điện thoại OPPO Find X8 ra mắt tại thị trường Việt Nam vào tháng 11 hứa hẹn sẽ mang đến những cải tiến mới nhất, giá bán có phần dễ tiếp cận hơn so với các mẫu tiền nhiệm trước đây. Cùng với đó, trên dòng điện thoại mới còn được nâng cấp tác vụ AI mới nhất.', 'Hệ điều hành:\r\nAndroid 15\r\nChip xử lý (CPU):\r\nMediaTek Dimensity 9400 8 nhân\r\nTốc độ CPU:\r\n1 nhân 3.6 GHz, 3 nhân 3.3 GHz & 4 nhân 2.4 GHz\r\nChip đồ họa (GPU):\r\nARM Immortalis G925 MC12\r\nRAM:\r\n16 GB\r\nDung lượng lưu trữ:\r\n512 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n475 GB\r\nDanh bạ:\r\nKhông giới hạn', 4, '2025-02-25 16:19:00', NULL, '2025-02-25 16:19:00'),
(41, 'OPPO Reno12 5G 12GB 256GB', '1740475079.jpg', 9790000, 'OPPO Reno12 5G với sự hỗ trợ của chip xử lý Chip MediaTek 7300-Energy kết hợp với 12GB RAM cung cấp hiệu năng mượt mà và xử lý đa nhiệm hiệu quả. Sở hữu màn hình 6.7 inches AMOLED 120Hz đã giúp Reno 12 có sức hút hơn khi lướt web kèm pin trâu 50000mAh, cho phép duy trì xử lý công việc xuyên suốt ngày dài.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nMediaTek Dimensity 7300-Energy 5G 8 nhân\r\nTốc độ CPU:\r\n4 nhân 2.5 GHz & 4 nhân 2 GHz\r\nChip đồ họa (GPU):\r\nMali-G615\r\nRAM:\r\n12 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n210 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 4, '2025-02-25 16:17:59', NULL, '2025-02-25 16:17:59'),
(42, 'OPPO Reno13 F 8GB 256GB', '1740475030.jpg', 8990000, 'Điện thoại OPPO Reno13 F sở hữu màn hình AMOLED 6.67 inch với độ phân giải 1080x2400 px, mang lại trải nghiệm hình ảnh sống động cùng tần số quét 120Hz. Kèm theo đó là chipset MediaTek Helio G100 cung cấp hiệu năng mạnh mẽ, hỗ trợ tốt cho các nhu cầu đa nhiệm và chơi game. Camera 50MP trên máy còn cho phép chụp ảnh sắc nét và quay video 4K, đáp ứng mọi yêu cầu về chất lượng hình ảnh và video.', 'Hệ điều hành:\r\nAndroid 15\r\nChip xử lý (CPU):\r\nMediaTek Helio G100 8 nhân\r\nTốc độ CPU:\r\n2 nhân 2.2 GHz & 6 nhân 2.0 GHz\r\nChip đồ họa (GPU):\r\nMali-G57 MC2\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n224 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 4, '2025-02-25 16:17:10', NULL, '2025-02-25 16:17:10'),
(50, 'realme C60 4GB 64GB', '1740478622.jpg', 2390000, 'Điện thoại realme C60 sở hữu chip xử lý Unisoc T612 với sức mạnh khủng, cùng dung lượng RAM 4 GB và bộ nhớ 64 GB mang lại trải nghiệm mượt. Màn hình hiển thị IPS LCD 6.74 inches tiêu chuẩn cho những khung hình đầy sắc nét, sinh động. Nổi bật thêm bằng hệ thống camera có độ phân giải lên đến 13MP đi kèm pin 5000 mAh kéo dài mọi cuộc vui.', 'Hệ điều hành:\r\nAndroid 13\r\nChip xử lý (CPU):\r\nUnisoc Tiger T612\r\nTốc độ CPU:\r\n1.82 GHz\r\nChip đồ họa (GPU):\r\nMali-G57\r\nRAM:\r\n4 GB\r\nDung lượng lưu trữ:\r\n64 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n46 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 2 TB\r\nDanh bạ:\r\nKhông giới hạn', 5, '2025-02-25 17:17:02', NULL, '2025-02-25 17:17:02'),
(51, 'realme C67 8GB 128GB', '1740478581.jpg', 4290000, 'Điện thoại realme C67 có cấu hình mạnh mẽ với chipset Snapdragon 685 6nm, dung lượng RAM 8GB, bộ nhớ trong 128 GB cùng viên pin Li-po 5000 mAh. Mặt trước có màn hình kích thước 6.72 inch, camera trước 8 MP và mặt sau có camera 108 MP + 2 MP. Mẫu điện thoại realme này được hoàn thiện từ khung viền và mặt sau bằng nhựa, cho cảm giác cầm nhẹ nhàng, thoải mái.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nSnapdragon 685 8 nhân\r\nTốc độ CPU:\r\n2.8 GHz\r\nChip đồ họa (GPU):\r\nAdreno 610\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n103 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 2 TB\r\nDanh bạ:\r\nKhông giới hạn', 5, '2025-02-25 17:16:13', NULL, '2025-02-25 17:16:13'),
(52, 'realme 13+ 5G 8GB 256GB', '1740478520.jpg', 7690000, 'realme 13+ 5G chính hãng là sản phẩm ra mắt tiếp theo được người dùng săn đón rất nhiều hiện nay với đầy đủ các điểm mạnh vượt trội hơn so với đối thủ như chips xử lý vượt bậc, sạc nhanh lên đến 80W và có khả năng kháng nước tốt hơn so với thế hệ tiền nhiệm.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nMediaTek Dimensity 7300 Energy 5G 8 nhân\r\nTốc độ CPU:\r\n2.5 GHz\r\nChip đồ họa (GPU):\r\nMali-G615\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n227 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 2 TB\r\nDanh bạ:\r\nKhông giới hạn', 5, '2025-02-25 17:15:20', NULL, '2025-02-25 17:15:20'),
(60, 'Nokia 3210 4G', '1740480622.jpg', 1550000, 'Nokia 3210 4G được trang bị màn hình 2.4 inch QVGA, hỗ trợ kết nối 4G LTE kết hợp pin dung lượng 1450mAh cho thời gian thoại tới vài ngày. Bộ nhớ trong của máy là 128MB. Điện thoại có camera sau 2MP và chạy trên nền tảng hệ điều hành S30+.', 'Hệ điều hành:\r\nS30+\r\nChip xử lý (CPU):\r\nUnisoc T107 8 nhân\r\nTốc độ CPU:\r\n1.0 GHz\r\nRAM:\r\n64 MB\r\nDung lượng lưu trữ:\r\n128 MB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nDanh bạ:\r\nĐang cập nhật', 6, '2025-02-25 17:50:22', NULL, '2025-02-25 17:50:22'),
(61, 'Nokia 220 4G', '1740480583.jpg', 950000, 'Nokia 220 4G sở hữu cấu hình đơn giản nhưng hiệu quả, thời gian sử dụng bền bỉ với dung lượng 1450mAh cho thời gian sử dụng nhiều ngày. Bên cạnh đó, dòng máy điện thoại Nokia phổ thông này còn nổi bật với màn hình 2,8 inch QVGA không cảm ứng giúp hiển thị thông tin rõ ràng. Đồng thời, kết nối Bluetooth 5.0 và cổng USB Type-C của máy cũng khá ấn tượng, đảm bảo cung cấp nhiều tiện ích vượt trội trong khi sử dụng.', 'Hệ điều hành:\r\nS30+\r\nChip xử lý (CPU):\r\nUnisoc T107 8 nhân\r\nTốc độ CPU:\r\n1.0 GHz\r\nRAM:\r\n64 MB\r\nDung lượng lưu trữ:\r\n128 MB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nDanh bạ:\r\nKhông giới hạn', 6, '2025-02-25 17:49:43', NULL, '2025-02-25 17:49:43'),
(62, 'Nokia HMD 105 4G', '1740480538.jpg', 650000, 'Nokia HMD 105 4G là mẫu điện thoại phổ thông, sở hữu màn hình 2.4 inch QVGA, sử dụng chipset Unisoc T127 với sức mạnh cơ bản và bộ nhớ trong 128MB. Sản phẩm điện thoại phổ thông này trang bị pin 1450mAh, thiết kế siêu bền bỉ và sử dụng cổng sạc USB Type-C tiện lợi. Máy hỗ trợ mạng 4G, tích hợp jack tai nghe 3.5mm.', 'Dung lượng lưu trữ:\r\n128 MB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nDanh bạ:\r\nHãng không công bố', 6, '2025-02-25 17:48:58', NULL, '2025-02-25 17:48:58'),
(70, 'OnePlus 13 5G', '1740481928.jpg', 16450000, 'Điện thoại OnePlus 13 được trang bị màn hình 6.82 inch OLED với độ phân giải Qua-HD+, tần số quét thích ứng 1-1205Hz, đi cùng công nghệ hiển thị LTPO. Dòng điện thoại OnePlus này được trang bị chip Snapdragon 8 Elite, RAM lên tới 24GB, và bộ nhớ trong đạt đến 1TB, lượng pin 6000mAh. Điện thoại có camera sau 50MP + 50MP + 50MP và nhiều tính năng AI.', 'Màn hình: Kích thước 6.82 inch, tấm nền BOE AMOLED X2 8T LTPO, độ phân giải QHD+ (3.168 x 1.440 pixels), tần số quét 1 - 120 Hz, độ sáng màn hình tối đa 4.500 nit.\r\nCPU: Qualcomm Snapdragon 8 Elite.\r\nRAM: 12 GB/16 GB/24 GB.\r\nBộ nhớ trong: 256 GB/512 GB/1 TB.\r\nCamera sau: 50 MP + 50 MP + 50 MP.\r\nCamera trước: 32 MP.\r\nPin: 6.000 mAh, sạc nhanh có dây 100 W, sạc nhanh không dây 50 W.\r\nHệ điều hành: ColorOS 15.', 7, '2025-02-25 18:12:08', NULL, '2025-02-25 18:12:08'),
(71, 'OnePlus 11 5G 16GB 256GB', '1740481801.jpg', 18990000, 'OnePlus 11 có thiết kế sang trọng, hiệu năng mạnh mẽ từ chip Snapdragon 8 Gen 2 và OxygenOS 13, màn hình Super Fluid AMOLED 120Hz 2K cùng sạc nhanh Super VOOC 100W. OnePlus 11 sẽ là lựa chọn hoàn hảo, hỗ trợ người dùng xử lý công việc một cách hiệu quả và đáp ứng nhiều nhu cầu khác nhau của người dùng.', 'Hệ điều hành:\r\nĐang cập nhật\r\nChip xử lý (CPU):\r\nĐang cập nhật\r\nTốc độ CPU:\r\nĐang cập nhật\r\nChip đồ họa (GPU):\r\nĐang cập nhật\r\nRAM:\r\n16 GB\r\nDung lượng lưu trữ:\r\n512 GB\r\nThẻ nhớ:\r\nĐang cập nhật\r\nDanh bạ:\r\nKhông giới hạn', 7, '2025-02-25 18:10:01', NULL, '2025-02-25 18:10:01'),
(72, 'OnePlus 11 5G 8GB 128GB', '1740481721.jpg', 15990000, 'OnePlus 11 cải tiến mạnh mẽ về công nghệ cùng thiết kế sang trọng cùng hiệu năng cực kỳ mạnh mẽ tới từ con chip Snapdragon 8 Gen 2. OnePlus 11 sẽ là lựa chọn hoàn hảo, hỗ trợ người dùng xử lý công việc một cách hiệu quả và đáp ứng nhiều nhu cầu khác nhau của người dùng.', 'Hệ điều hành:\r\nĐang cập nhật\r\nChip xử lý (CPU):\r\nĐang cập nhật\r\nTốc độ CPU:\r\nĐang cập nhật\r\nChip đồ họa (GPU):\r\nĐang cập nhật\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nThẻ nhớ:\r\nĐang cập nhật\r\nDanh bạ:\r\nKhông giới hạn', 7, '2025-02-25 18:08:41', NULL, '2025-02-25 18:08:41'),
(80, 'Infinix Hot 50 8GB 256GB', '1740482394.jpg', 3890000, 'Infinix Hot 50 sở hữu màn hình LCD 6.78 inch, mang đến trải nghiệm xem sống động, chân thực với độ sáng tối đa ấn tượng 800 nits. Máy sở hữu hai camera, camera sau 50MP cho khả năng chụp ảnh sắc nét và trước 8MP đáp ứng nhu cầu chụp ảnh chân dung, selfie. Hiệu năng của Hot 50 4G được đảm bảo bởi chip MediaTek Helio G100, RAM 8GB và bộ nhớ trong 256GB, có thể mở rộng thông qua thẻ nhớ microSD.', 'Kích thước màn hình\r\n\r\n6.78 inches\r\nCamera sau\r\n\r\n50MP + 2MP\r\nCamera trước\r\n\r\n8MP\r\nChipset\r\n\r\nMediaTek Helio G100\r\nCông nghệ NFC\r\n\r\nCó\r\nDung lượng RAM\r\n\r\n8 GB\r\nBộ nhớ trong\r\n\r\n256 GB\r\nPin\r\n\r\n5,000 mAh\r\nThẻ SIM\r\n\r\n2 SIM (Nano-SIM)\r\nHệ điều hành\r\n\r\nAndroid 14', 8, '2025-02-25 18:19:54', NULL, '2025-02-25 18:19:54'),
(81, 'Infinix Note 40 Pro 8GB 256GB', '1740482301.jpg', 5790000, 'Điện thoại Infinix Note 40 Pro được trang bị vi xử lý Helio G99 Ultimate, RAM 8GB và bộ nhớ trong 256GB, mang đến hiệu năng vượt trội đáp ứng mọi nhu cầu sử dụng. Thời lượng pin ấn tượng 5000mAh đủ để người dùng yên tâm sử dụng mà không lo bị gián đoạn. Điểm đặc biệt ở Infinix Note 40 Pro là 3 camera sau và 1 camera trước đã được cải tiến bắt trọn mọi khoảnh khắc chân thật nhất.', 'Kích thước màn hình\r\n\r\n6.78 inches\r\nCông nghệ màn hình\r\n\r\nAMOLED\r\nCamera sau\r\n\r\n108MP, f/1.75, 1/1.67\"OIS\r\n2MP, f/2.4\r\n2MP, f/2.4\r\nCamera trước\r\n\r\n32MP, f/2.2, FF\r\nChipset\r\n\r\nMediaTek Helio G99 Ultimate\r\nCông nghệ NFC\r\n\r\nCó\r\nDung lượng RAM\r\n\r\n8 GB\r\nBộ nhớ trong\r\n\r\n256 GB\r\nPin\r\n\r\n5000 mAh\r\nThẻ SIM\r\n\r\n2 SIM (Nano-SIM)\r\nHệ điều hành\r\n\r\nXOS 14', 8, '2025-02-25 18:18:21', NULL, '2025-02-25 18:18:21'),
(82, 'Infinix Hot 50 Pro Plus 8GB 256GB', '1740482258.jpg', 4890000, 'Điện thoại Infinix Hot 50 Pro Plus tích hợp chipset xử lý Media Tek Helio G100 kèm GPU đồ họa Mail-G57 kết hợp RAM 8GB và bộ nhớ trong lên đến 256GB. Hơn thế nữa, chiếc smartphone này còn nổi bật qua thiết kế cong 3D độc đáo với màn hình AMOLED 120Hz. Ngoài ra, dung lượng pin của điện thoại 5000mAh cộng thêm sạc nhanh 33W cho cả ngày dài sử dụng.', 'Kích thước màn hình\r\n\r\n6.78 inches\r\nCông nghệ màn hình\r\n\r\nAMOLED\r\nCamera sau\r\n\r\n50MP + 2MP\r\nCamera trước\r\n\r\n13MP\r\nChipset\r\n\r\nMediaTek Helio G100\r\nCông nghệ NFC\r\n\r\nCó\r\nDung lượng RAM\r\n\r\n8 GB\r\nBộ nhớ trong\r\n\r\n256 GB\r\nPin\r\n\r\n5,000 mAh\r\nThẻ SIM\r\n\r\n2 SIM (Nano-SIM)\r\nHệ điều hành\r\n\r\nAndroid 14', 8, '2025-02-25 18:17:38', NULL, '2025-02-25 18:17:38'),
(90, 'ASUS ZenFone Max Pro M2 3GB', '1740483627.jpg', 5290000, 'Với thiết kế sang trọng, cấu hình mạnh, camera “chất” và đặc biệt là viên pin dung lượng “khủng”, điện thoại ASUS ZenFone Max Pro M2 3GB RAM là ứng cử viên “nặng ký” khi người dùng cần mua một chiếc smartphone tầm trung.', 'Công nghệ màn hình\r\n\r\nIPS FHD+\r\nKích thước màn hình\r\n\r\n6.3 inches\r\nCamera sau\r\n\r\n12 MP, f/1.8, 1/2.9\", 1.25μm, PDAF\r\n5 MP, f/2.4, 1.12µm, depth sensor\r\nCamera trước\r\n\r\n13MP, f/2.0, 1.12µm\r\nChipset\r\n\r\nSnapdragon 660 AIE 14nm\r\nBộ nhớ trong\r\n\r\n32 GB\r\nPin\r\n\r\n5000mAh\r\nThẻ SIM\r\n\r\n2 SIM (Nano-SIM)\r\nHệ điều hành\r\n\r\nAndroid 8.1 (Oreo)', 9, '2025-02-25 18:40:27', NULL, '2025-02-25 18:40:27'),
(91, 'ASUS ROG Phone 6 Mediatek', '1740483268.jpg', 8950000, 'Asus Rog Phone 6 Mediatek được trang bị chip xử lý MediaTek Dimensity 7000 mạnh mẽ kết hợp cùng dung lượng RAM 12GB và bộ nhớ trong lên đến 256GB. Bên cạnh đó, chiếc smartphone cũng sở hữu màn hình 6.78 inch Full HD+ với tần số quét đạt 165Hz. Bạn có thể sử dụng điện thoại trong thời gian dài với viên pin 6000mAh và công suất sạc 65W.', 'Kích thước màn hình\r\n\r\n6.78 inches\r\nCông nghệ màn hình\r\n\r\nAMOLED\r\nCamera sau\r\n\r\nCamera chính: 50 MP, f/1.9\r\nCamera góc siêu rộng: 13 MP\r\nCamera macro: 5 MP\r\nCamera trước\r\n\r\n12 MP\r\nChipset\r\n\r\nMediaTek Dimensity 7000 Series\r\nCông nghệ NFC\r\n\r\nCó\r\nDung lượng RAM\r\n\r\n12 GB\r\nBộ nhớ trong\r\n\r\n256 GB\r\nPin\r\n\r\n6000 mAh\r\nThẻ SIM\r\n\r\n2 SIM (Nano-SIM)\r\nHệ điều hành\r\n\r\nAndroid 12', 9, '2025-02-25 18:34:28', NULL, '2025-02-25 18:34:28'),
(92, 'ASUS ROG Phone 6 12GB 256GB', '1740482976.jpg', 14490000, 'Hãng điện thoại Asus tiếp tục cho ra mắt siêu phẩm mới Asus ROG Phone 6 128GB, sau thành công vang dội của thế hệ tiền nhiệm. Có thể nói, ROG Phone 6 128GB là một trong những chiếc smartphone gaming đầu tiên trên thế giới sử dụng con chip Snapdragon 8+ Gen 1. Cùng với đó là sự cải tiến về giao diện bên ngoài mang đậm tinh thần Esport, màn hình siêu lớn và một số tính năng nổi bật khác.', 'Kích thước màn hình\r\n\r\n6.78 inches\r\nCông nghệ màn hình\r\n\r\nAMOLED\r\nCamera sau\r\n\r\nCamera chính: 50 MP, f/1.9\r\nCamera góc siêu rộng: 13 MP\r\nCamera macro: 5 MP\r\nCamera trước\r\n\r\n12 MP\r\nChipset\r\n\r\nQualcomm ® Snapdragon ® 8+ thế hệ 1\r\nCông nghệ NFC\r\n\r\nCó\r\nDung lượng RAM\r\n\r\n12 GB\r\nBộ nhớ trong\r\n\r\n256 GB\r\nPin\r\n\r\n6000 mAh\r\nThẻ SIM\r\n\r\n2 SIM (Nano-SIM)\r\nHệ điều hành\r\n\r\nAndroid 12', 9, '2025-02-25 18:29:36', NULL, '2025-02-25 18:29:36'),
(100, 'vivo Y19S 8GB 128GB', '1740484038.jpg', 4590000, 'Điện thoại vivo Y19S mạnh mẽ với vi xử lý T612, con chip với 2 lõi 1,8GHz và 6 lõi 1,8GHz tối ưu hiệu năng sử dụng. Máy sở hữu một vẻ ngoài bắt mắt cùng ba màu sang trọng Đen bóng, Xanh băng hà và Bạc ngọc trai. Thời lượng sử dụng điện thoại vivo này cũng ấn tượng với dung lượng 5500 mAh cùng với sạc nhanh công suất 15W ấn tượng.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nUnisoc Tiger T612\r\nTốc độ CPU:\r\n1.8 GHz\r\nChip đồ họa (GPU):\r\nMali-G57\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n128 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n113 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 10, '2025-02-25 18:47:18', NULL, '2025-02-25 18:47:18'),
(101, 'vivo V30E 12GB 256GB', '1740483980.jpg', 8990000, 'Điện thoại vivo V30E mạnh mẽ với chipset Snapdragon 6 Gen 1, kết hợp với 12GB RAM và 256GB bộ nhớ trong, đảm bảo hiệu suất ấn tượng cho mọi tác vụ. Màn hình AMOLED 6.68 inch của máy cung cấp trải nghiệm hình ảnh sắc nét đi kèm cụm camera kép ở mặt sau với camera chính lên đến 50MP. Vivo V30E còn sở hữu pin dung lượng 5.500 mAh, hỗ trợ sạc nhanh 44W, tối ưu hóa trải nghiệm sử dụng hàng ngày.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nSnapdragon 6 Gen 1 8 nhân\r\nTốc độ CPU:\r\n4 nhân 2.2 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU):\r\nAdreno 710\r\nRAM:\r\n12 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n229 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 10, '2025-02-25 18:46:20', NULL, '2025-02-25 18:46:20'),
(102, 'Vivo Y100', '1740483942.jpg', 6490000, 'Vivo Y100 mang đến một trải nghiệm thị giác và âm thanh tuyệt vời. Với màn hình AMOLED 6.67 inch rộng rãi, hình ảnh hiển thị trở nên sống động và sắc nét hơn bao giờ hết, cho phép bạn đắm chìm vào từng khung hình. Công nghệ âm thanh Hi-Res Audio sẽ đưa bạn đến một thế giới âm thanh sống động, chân thực.', 'Hệ điều hành:\r\nAndroid 14\r\nChip xử lý (CPU):\r\nSnapdragon 685 8 nhân\r\nTốc độ CPU:\r\n2.8 GHz\r\nChip đồ họa (GPU):\r\nAdreno 610\r\nRAM:\r\n8 GB\r\nDung lượng lưu trữ:\r\n256 GB\r\nDung lượng còn lại (khả dụng) khoảng:\r\n235 GB\r\nThẻ nhớ:\r\nMicroSD, hỗ trợ tối đa 1 TB\r\nDanh bạ:\r\nKhông giới hạn', 10, '2025-02-25 18:45:42', NULL, '2025-02-25 18:45:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_laptop`
--

CREATE TABLE `product_laptop` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_lap_id` (`product_lap_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`customer_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`product_id`,`order_id`,`product_lp_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `products_ibfk_1` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `product_laptop`
--
ALTER TABLE `product_laptop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_laptop_ibfk_1` (`manufacturer_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1439;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
