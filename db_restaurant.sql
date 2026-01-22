-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 22, 2026 lúc 03:41 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `restaurant_name` varchar(150) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `full_name`, `email`, `restaurant_name`, `phone`, `dob`, `avatar_url`, `role`) VALUES
(1, 'admin', 'admin123', 'Quản trị viên', 'superadmin@test.com', 'VietVH\r\n', '0328 911 406', '0000-00-00', 'a6ac38a35d183134d179adbf7c4c6381.jpeg', 'admin'),
(2, 'trietle31', '060531triet', 'Lê Minh Triết', 'trietle3105@gmail.com', 'VietVH', '0328 911 406', '2006-05-31', 'f29ecdabd098b1b728158a9fae9867ca.jpg', 'staff'),
(3, 'nhanvien#3', 'vietvh12356789', 'Lê Tấn Tiến', 'raumaphaduongtau@gmail.com', 'VietVH', '0328481787', '2006-05-02', '85b724d89900cd63bd7b236c8dbaf027.jpg', 'staff'),
(4, 'nhatrauma', '123456789', 'nhật vua 36', 'raumaphaduongray@gmail.com', 'VietVH', '03636363636', '2006-08-17', '10243db18c03c6d638162bb71dfef123.jpg', 'staff'),
(5, 'biladen', '987654321', 'Nguyễn Tuấn Anh', 'tuananhdennhudantoc@gmail.com', 'VietVH', '0127419846', '2006-12-25', 'c5fd2dcbc36f3ce27376ba2dd122b830.jpg', 'staff'),
(6, 'khanglun', '00102030405lun', 'khang lùn lắm mồm', 'lunmasungnhat@gmail.com', 'VietVH', '0128479816', '2006-11-11', 'c3bd4e5ce624c7b6332bbb613bbb0036.jpg', 'staff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chats`
--

INSERT INTO `chats` (`id`, `product_id`, `sender_id`, `message`, `created_at`) VALUES
(1, 3, 1, 'chào anh', '2026-01-09 16:04:17'),
(2, 4, 1, 'anh còn sản phẩm này không ạ', '2026-01-09 16:23:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(1, 1, 3, '2026-01-08 05:53:17'),
(2, 1, 3, '2026-01-08 05:53:19'),
(3, 1, 3, '2026-01-08 05:53:20'),
(4, 1, 3, '2026-01-08 05:54:16'),
(5, 1, 3, '2026-01-08 05:54:17'),
(6, 1, 3, '2026-01-08 05:54:18'),
(7, 1, 3, '2026-01-08 05:54:19'),
(8, 1, 3, '2026-01-08 05:54:20'),
(9, 1, 3, '2026-01-08 05:54:21'),
(10, 1, 3, '2026-01-08 05:54:22'),
(11, 1, 5, '2026-01-08 06:00:05'),
(12, 1, 4, '2026-01-08 06:01:47'),
(13, 1, 4, '2026-01-08 06:01:50'),
(14, 1, 4, '2026-01-08 06:01:52'),
(15, 1, 5, '2026-01-08 06:17:20'),
(16, 1, 3, '2026-01-08 06:55:15'),
(17, 1, 3, '2026-01-09 12:48:14'),
(18, 1, 3, '2026-01-09 16:05:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `name`) VALUES
(1, 'Khai vị'),
(2, 'Món chính'),
(3, 'Tráng miệng'),
(4, 'Đồ uống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image_url`) VALUES
(1, 1, 'Gỏi cuốn tôm thịt', 'Gỏi cuốn với những nguyên liệu cực tươi ngon như tôm, thịt, bún và rau sống được chọn lọc kĩ để tạo nên hương vị đúng chất nhất cho 1 món khai vị cực tinh tế này.', 60000, 'goi-cuon.jpg'),
(2, 2, 'Phở bò Đặc biệt', 'Phở bò Hà Nội chính hiệu với thịt bò tái mềm và các topping cực tươi ngon.', 75000, 'pho-bo.jpg'),
(3, 2, 'Bún chả Hà Nội', 'Bún chả đậm đà hương vị truyền thống với thịt ba rọi và chả được nêm nếm rất vừa vị ăn cùng với nước chấm đặc biệt tạo nên hương vị khó cưỡng.', 70000, 'bun-cha.jpg'),
(4, 3, 'Chè khúc bạch', 'Món tráng miệng thanh mát giải nhiệt với nhiều loại topping tốt cho sức khỏe như hạt đác và các trái cây tươi giúp giải ngán sau bữa ăn.', 35000, 'che-khuc-bach.jpg'),
(5, 4, 'Nước ép thơm', 'Làm từ những trái thơm tươi nhất giúp chúng ta reset vị giác sau mỗi món ăn và còn giải khát rất tốt.', 20000, '00d0ef9e18fe8baefa2a7c8ad7dd4857.jpg'),
(7, 1, 'Gỏi hải sản chua cay', 'Sự kết giữa các loại hải sản tươi ngon như tôm, mực, nghêu, sứa và các rau cà rốt, dưa leo, xoài xanh, rau thơm hòa quyện với vị chua, cay, mặn, ngọt từ nước trộn gỏi tạo nên hương vị tinh tế, độc đáo và mang đậm bản sắc dân tộc.', 75000, '3455939519d1bb89e2bfd05839a696eb.jpg'),
(8, 1, 'Súp hải sản thập cẩm', 'Với các nguyên tươi ngon như tôm, cua, mực, ức gà, trứng cút, và các loại rau tạo nên một món khai vị vừa đơn giản vừa thanh tao.', 50000, '836362b649f7e7a3ef80ed69a4eeef6b.jpg'),
(9, 1, 'Chả giò hải sản', 'Với các nguyên liệu căn bản như Râu mực 100 gr, Tôm sú, Thanh cua, Xoài chín, Hành tây, Phô mai cheddar, Trứng gà, Nước cam vàng, Húng lủi tạo nên 1 sự kết hợp hòa quyện giữa các nguyên liệu ko thể thiếu đó là sốt mayo và tương ót sau đó tất được cuốn trong bánh tráng pía chiên giòn ăn kèm cùng 1 chút rau tươi đúng là 1 món ăn cực tinh', 45000, 'f1fa22a262a81571d987ba11ab5772ef.jpg'),
(10, 1, 'Cá bống trứng chiên giòn', 'Một món ăn cực kỳ đơn giản với cá bống được tẩm qua bột sau đó đem chiên ăn kèm với lá lốt và 1 chút gừng cắt lát nhưng lại món ăn này lại rất được ưa chuộng.', 55000, 'bc8587ef0c4cb2c04309e6c96bfee554.jpg'),
(11, 1, 'Salad cá cơm chiên giòn', 'Cá cơm được áo qua 1 lớp bột sau đó đem chiên giòn ăn kèm với các loại rau tươi và chấm cúng sốt mè', 50000, 'f3b87d40e2d92d93a5d072e476c582d7.jpg'),
(12, 2, 'Bánh cuốn', 'Bánh cuốn được làm bằng cách tráng bột gạo mỏng thành vỏ bánh, khi vỏ bánh bắt đầu kết dính lại thì đổ nhân gồm thịt băm, mộc nhĩ, nấm hương, hành khô. Sau đó cuộn bánh lại, tạo thành chiếc bánh cuốn thơm ngon, đẹp mắt. Khi tráng xong, bánh cuốn sẽ được bày ra đĩa, rắc hành khô, ăn cùng rau sống, chả lợn và chấm nước mắm. Nước mắm chấm bánh cuốn thường được pha nhạt hơn và pha thêm dưa góp, tỏi, ớt, tiêu...', 100000, '1d61bfceee245a50035b38d65117cf2c.jpg'),
(13, 2, 'Bánh khọt', 'Nguyên liệu làm bánh khọt là bột gạo, nhưng cách pha chế phải khéo léo. Bột nhiều hơn nước bánh sẽ khô và không có độ dai, còn nước nhiều hơn bột bánh lại bị nhão, không giòn. Trên nền màu trắng của bánh nổi bật màu đỏ của mấy con tôm lột sạch vỏ, màu xanh của hành lá xắt nhuyễn, đôi khi lại có bột tôm xay rải lên mặt bánh Nước chấm dùng cho bánh khọt là nước mắm pha chua ngọt, vừa miệng thực khách. Bánh ăn kèm với đu đủ, cà rốt xắt sợi ngâm giấm đường, cùng các loại rau xà lách, húng quế, ngò gai, tía tô... làm cho món ăn thêm đậm đà hương vị.', 83000, '502282ce776a44b3a585c534e8b4d059.jpg'),
(14, 2, 'Bánh xèo', 'Bánh xèo là món ăn vặt phổ biến ở khu vực Trung bộ, từ Nghệ An vào đến Huế. Đây là món bánh bột, cuộn bọc nhân gồm có tôm, thịt, giá đỗ... và nướng chín trong chảo ngập dầu. Vỏ bánh xèo là bột mì trộn với nghệ để tạo màu vàng bắt mắt, cùng đó là nước cốt dừa để tạo hương vị cho món ăn.', 91000, 'a3ecc6fffeba044704ae8a471228b9f0.jpg'),
(15, 3, 'Xôi xoài', 'Món ăn này kết hợp giữa nếp, nước cốt dừa, đường, muối và các loại trái cây nhiệt đới như xoài, sầu riêng, mít.', 35000, '7cafe06570721696689e3425f186a839.jpg'),
(16, 3, 'Bingsu trái cây', 'Bingsu là món tráng miệng nổi tiếng của Hàn Quốc, với đá bào, kem, hoa quả tươi và siro trái cây, mang lại cảm giác mát lạnh, sảng khoái, đặc biệt vào mùa hè.', 45000, '41d2019689642ffb87dad0ecb1ce3460.jpg'),
(17, 3, 'Chè trôi nước', 'Chè trôi nước được nấu vào ngày tết Hàn thực, những ngày rằm cúng đồ ăn chay ở chùa chiền. Chè trôi nước cho ta gợi nhớ đến câu thơ Hồ Xuân Hương năm nào: \"thân em vừa trắng lại vừa tròn, bảy nổi ba chìm với nước non\". Ngày nay chè trôi nước được biến tấu nguyên liệu vừa thơm ngon lại mang màu sắc rất đẹp, ví dụ chè trôi lá dứa, chè trôi khoai lang tím...Nhưng phổ biến nhất và vẫn được người ăn yêu thích nhất là chè trôi truyền thống, không cầu kỳ, nhiều công đoạn Khéo léo bọc viên nhân vào trong vỏ bánh và vo tròn, đun sôi nước và thả vào, chè trôi thường ăn trong nước đường có gừng, ăn vừa thơm, vừa ngậy.', 49000, 'bb15b9f0933c543487b5d7b3a5e87184.jpg'),
(18, 4, 'Nước suối', 'Nước khoáng thiên nhiên giải nhiệt và healthy.', 10000, 'de5b0d95bcca4495bcb4844ce1dc2a41.jpg'),
(19, 4, 'Nước ngọt đóng chai', 'Có rất nhiều loại như:7up, coca, sting, sprite, sting, ...', 15000, '13c083472b6d9c43d5dd17723d40f218.jpg'),
(20, 4, 'Trà sữa trân châu', 'Trà sữa đậm vì trà uống kèm trân châu giòn dai sực sực là món uống ngọt ngào được các chị em và các bạn trẻ ưa thích', 25000, 'f70465f841b69dcd61ddb409f60a9150.jpg'),
(21, 4, 'Soda việt quất', 'Thức uống có ga hương việt quất được ép từ những trái việt quất tươi ngon', 23000, '3c351e18c680524c8417d3b88a64f21d.jpg'),
(22, 4, 'Trà Atiso táo đỏ', 'Trà atiso táo đỏ là một loại đồ uống thảo dược được làm từ sự kết hợp giữa bông atiso và quả táo đỏ, mang lại nhiều lợi ích cho sức khỏe. Đây là một trong những loại trà phổ biến tại Việt Nam, không chỉ được sử dụng để thanh nhiệt mà còn giúp hỗ trợ tiêu hóa, cải thiện chức năng gan và giảm căng thẳng.', 29000, 'a0c43e0f0d9b6c19e197e6e672e48000.jpg'),
(23, 4, 'Sinh tố bơ', 'vị beo béo đăng đắng của bơ cùng 1 chút sữa đặc tạo nên hương vị tinh tế của món thức uống huyền thoại này', 20000, '753cb8dc50c44ac9272f56bd3849fe70.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `province` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `price`, `description`, `province`, `image`, `created_at`) VALUES
(3, 67, 'loptop cũ', 2400000, '', 'hồ chí minh', '', '2026-01-07 15:23:31'),
(4, 66, 'bàn học ', 120000, 'làm từ bằng nhựa', 'hồ chí minh', '1767852026_view (2).htm', '2026-01-08 06:00:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `table_id` int(11) NOT NULL,
  `reservation_time` datetime NOT NULL,
  `num_guests` int(11) NOT NULL,
  `status` enum('pending','confirmed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reservations`
--

INSERT INTO `reservations` (`id`, `customer_name`, `customer_email`, `customer_phone`, `table_id`, `reservation_time`, `num_guests`, `status`, `created_at`, `notes`) VALUES
(24, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 1, '2025-11-26 20:45:38', 3, 'confirmed', '2025-11-26 13:31:24', NULL),
(25, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 1, '2025-11-26 20:48:51', 3, 'confirmed', '2025-11-26 13:41:12', ''),
(40, 'lê minh triết', 'raumaphaduongtau@nguvailonlon.com', '03636363636', 2, '2025-11-27 20:44:00', 2, 'confirmed', '2025-11-26 16:43:27', 'ko'),
(41, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 1, '2025-11-28 20:00:00', 2, 'confirmed', '2025-11-26 16:44:10', 'tôi đau bụng'),
(42, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 7, '2025-11-27 20:15:00', 2, 'confirmed', '2025-11-26 16:46:43', 'tôi bị dị ứng với rau má'),
(43, 'lê văn luyện', 'trietle3105@gmail.com', '0181867414', 3, '2025-11-30 20:50:00', 3, 'confirmed', '2025-11-26 17:51:02', 'tôi dị ứng với gừng'),
(44, 'adad', 'raumaphaduongtau@nguvailonlon.com', '03636363636', 7, '2025-11-29 18:51:00', 8, 'cancelled', '2025-11-26 17:51:46', 'tôi ko ăn rau má được'),
(45, 'adad', 'raumaphaduongtau@nguvailonlon.com', '03636363636', 7, '2025-11-29 18:51:00', 8, 'confirmed', '2025-11-26 18:08:56', 'tôi ko ăn rau má được'),
(46, 'lê minh triết', 'trietle3105@gmail.com', '03636363636', 4, '2025-11-27 11:00:00', 4, 'confirmed', '2025-11-26 18:09:41', 'tôi đau họng'),
(47, 'lê minh triết', 'trietle3105@gmail.com', '03636363636', 1, '2025-11-29 15:30:00', 4, 'confirmed', '2025-11-28 03:27:18', 'ko ăn được hành'),
(48, 'lê minh triết gfdh', 'trietle3105@gmail.com', '435646756', 2, '2025-11-28 13:00:00', 2, 'confirmed', '2025-11-28 05:33:11', 'cgfhjgyfj'),
(49, 'lon', 'trietle3105@gmail.com', '123456', 1, '2025-11-29 17:00:00', 5, 'confirmed', '2025-11-28 08:10:10', 'đau bụng'),
(50, '214', 'trietle3105@gmail.com', '414141', 3, '2025-11-28 09:10:00', 2, 'confirmed', '2025-11-28 08:12:43', '3333'),
(51, '1', 'trietle3105@gmail.com', '36', 3, '2025-11-28 09:12:00', 2, 'confirmed', '2025-11-28 08:15:29', ''),
(52, 't', 'trietle3105@gmail.com', '98768998754', 3, '2025-11-28 09:15:00', 2, 'confirmed', '2025-11-28 08:17:24', 'gyu'),
(53, '2352', 'trietle3105@gmail.com', '5252', 2, '2025-11-28 09:17:00', 3, 'cancelled', '2025-11-28 08:19:18', ''),
(54, '2352', 'trietle3105@gmail.com', '5252', 2, '2025-11-28 09:17:00', 3, 'confirmed', '2025-11-28 08:20:27', ''),
(55, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 2, '2025-11-28 09:20:00', 2, 'confirmed', '2025-11-30 13:29:03', 'ewqeqw'),
(56, 'lê minh triết', 'trietle3105@gmail.com', '03636363636', 2, '2025-11-30 14:29:00', 3, 'confirmed', '2025-11-30 13:30:21', 'ưar'),
(57, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 4, '2025-11-30 14:30:00', 23, 'confirmed', '2025-11-30 13:32:49', '2'),
(58, 'lê minh triết', 'trietle3105@gmail.com', '0328911406', 4, '2025-11-30 14:30:00', 23, 'cancelled', '2025-11-30 13:33:24', '2'),
(59, 'huỳnh mình nhật', 'trietle3105@gmail.com', '0328911406', 7, '2025-11-30 14:33:00', 2, 'confirmed', '2025-11-30 13:33:45', '2'),
(60, 'lê minh triết', 'trietle3105@gmail.com', 'âêâăê', 4, '2025-11-30 14:33:00', 2, 'confirmed', '2025-11-30 13:36:41', '234123'),
(67, '214', 'trietle3105@gmail.com', '0328911406', 5, '2025-12-01 19:27:00', 2, 'confirmed', '2025-11-30 15:24:47', '2'),
(78, 'adad', 'trietle3105@gmail.com', '0328911406', 7, '2025-12-07 15:30:00', 5, 'confirmed', '2025-12-01 13:44:47', 'ĂN CỨT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservation_items`
--

CREATE TABLE `reservation_items` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_at_reservation` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reservation_items`
--

INSERT INTO `reservation_items` (`id`, `reservation_id`, `menu_item_id`, `quantity`, `price_at_reservation`) VALUES
(82, 24, 3, 1, 70000),
(83, 24, 4, 1, 35000),
(84, 24, 1, 1, 60000),
(85, 24, 5, 1, 15000),
(86, 24, 2, 1, 75000),
(87, 25, 3, 1, 70000),
(88, 25, 4, 1, 35000),
(89, 25, 1, 1, 60000),
(90, 25, 5, 1, 15000),
(91, 25, 2, 1, 75000),
(114, 40, 3, 1, 70000),
(115, 41, 3, 1, 70000),
(116, 42, 3, 1, 70000),
(117, 42, 1, 2, 60000),
(118, 42, 5, 3, 15000),
(119, 43, 12, 2, 100000),
(120, 43, 13, 2, 83000),
(121, 43, 14, 2, 91000),
(122, 43, 16, 2, 45000),
(123, 43, 9, 2, 45000),
(124, 43, 19, 1, 15000),
(125, 43, 18, 1, 10000),
(126, 43, 23, 1, 20000),
(127, 44, 12, 1, 100000),
(128, 44, 13, 1, 83000),
(129, 44, 14, 1, 91000),
(130, 44, 16, 1, 45000),
(131, 44, 3, 2, 70000),
(132, 44, 10, 1, 55000),
(133, 44, 9, 1, 45000),
(134, 44, 5, 1, 20000),
(135, 44, 18, 1, 10000),
(136, 44, 23, 1, 20000),
(137, 45, 12, 1, 100000),
(138, 45, 13, 1, 83000),
(139, 45, 14, 1, 91000),
(140, 45, 16, 1, 45000),
(141, 45, 3, 2, 70000),
(142, 45, 10, 1, 55000),
(143, 45, 9, 1, 45000),
(144, 45, 5, 1, 20000),
(145, 45, 18, 1, 10000),
(146, 45, 23, 1, 20000),
(147, 46, 12, 2, 100000),
(148, 47, 12, 1, 100000),
(149, 47, 13, 1, 83000),
(150, 47, 3, 1, 70000),
(151, 47, 9, 1, 45000),
(152, 47, 17, 2, 49000),
(153, 47, 5, 1, 20000),
(154, 47, 19, 2, 15000),
(155, 47, 18, 1, 10000),
(156, 47, 2, 1, 75000),
(157, 47, 15, 1, 35000),
(158, 48, 12, 1, 100000),
(159, 48, 16, 1, 45000),
(160, 49, 12, 1, 100000),
(161, 50, 14, 21, 91000),
(162, 51, 12, 20, 100000),
(163, 52, 3, 4, 70000),
(164, 53, 12, 32, 100000),
(165, 54, 12, 32, 100000),
(166, 55, 12, 1, 100000),
(167, 56, 12, 1, 100000),
(168, 57, 12, 1, 100000),
(169, 58, 12, 1, 100000),
(170, 59, 14, 2, 91000),
(171, 60, 12, 12, 100000),
(178, 67, 12, 12, 100000),
(193, 78, 14, 1, 91000),
(194, 78, 16, 2, 45000),
(195, 78, 10, 3, 55000),
(196, 78, 17, 4, 49000),
(197, 78, 18, 5, 10000),
(198, 78, 23, 2, 20000),
(199, 78, 20, 6, 25000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`id`, `name`, `capacity`, `location`) VALUES
(1, 'Bàn 1 (Cửa sổ)', 4, 'Tầng 1'),
(2, 'Bàn 2', 2, 'Tầng 1'),
(3, 'Bàn 3', 8, 'Tầng 2'),
(4, 'Bàn 4', 4, 'Tầng 2'),
(5, 'Bàn 5', 4, 'Ngoài trời'),
(6, 'Bàn 6', 4, 'Ngoài trời'),
(7, 'Bàn 7(VIP)', 8, 'Tầng 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'anh tuấn ', 'anhtuanle434@gmail.com', 'qưerty'),
(66, 'tấn tiến ', 'tantienle323@gamil.com', '123456'),
(67, 'Tấn Tiến', 'tantienle323@gmail.com', '123456'),
(68, 'Anh Tuấn', 'anhtuanle434@gmail.com', 'qwerty');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_id` (`table_id`);

--
-- Chỉ mục cho bảng `reservation_items`
--
ALTER TABLE `reservation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `menu_item_id` (`menu_item_id`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `reservation_items`
--
ALTER TABLE `reservation_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`id`);

--
-- Các ràng buộc cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Các ràng buộc cho bảng `reservation_items`
--
ALTER TABLE `reservation_items`
  ADD CONSTRAINT `reservation_items_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservation_items_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
