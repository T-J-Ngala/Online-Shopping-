-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2023 at 07:32 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `picture`, `created_at`, `updated_at`) VALUES
(5, 'I phone 14', 'I phone 14', 'Apple_iphone13_hero_09142021_inline.jpg.large.jpg', '2023-06-06', '2023-06-06'),
(6, 'Samsung', 'Samsung Galaxy', 'Gallery-Galaxy_A14_5G_Black_Front-dCopy.jpg', '2023-06-06', '2023-06-06'),
(7, 'Computer Charger', 'simple computer charger Xp Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever ', 'Hdf6ae05151944213a5e7d8b9c785e3dbI.jpg', '2023-06-06', '2023-06-06'),
(8, 'Televisions', 'Modern TVs', '81wfAUntItL._AC_UF894,1000_QL80_.jpg', '2023-06-06', '2023-06-06'),
(9, 'Drones', 'New Drones', '61Y1P6uIRFL.jpg', '2023-06-07', '2023-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int NOT NULL,
  `pre_order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `pre_order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 0, '2023-06-14', '2023-06-14'),
(2, 5, 2, 0, '2023-06-14', '2023-06-14'),
(3, 6, 1, 0, '2023-06-14', '2023-06-14'),
(4, 7, 1, 0, '2023-06-14', '2023-06-14'),
(5, 8, 1, 0, '2023-06-14', '2023-06-14'),
(6, 9, 1, 0, '2023-06-14', '2023-06-14'),
(7, 9, 2, 0, '2023-06-14', '2023-06-14'),
(8, 10, 2, 0, '2023-06-14', '2023-06-14'),
(9, 11, 2, 0, '2023-06-14', '2023-06-14'),
(10, 12, 2, 0, '2023-06-14', '2023-06-14'),
(11, 13, 3, 0, '2023-06-14', '2023-06-14'),
(12, 14, 2, 0, '2023-06-14', '2023-06-14'),
(13, 15, 3, 0, '2023-06-14', '2023-06-14'),
(14, 16, 1, 0, '2023-06-14', '2023-06-14'),
(15, 17, 1, 0, '2023-06-14', '2023-06-14'),
(16, 18, 2, 0, '2023-06-15', '2023-06-15'),
(17, 19, 2, 0, '2023-06-15', '2023-06-15'),
(18, 20, 1, 0, '2023-06-15', '2023-06-15'),
(19, 21, 1, 0, '2023-06-15', '2023-06-15'),
(20, 22, 1, 0, '2023-06-15', '2023-06-15'),
(21, 22, 2, 0, '2023-06-15', '2023-06-15'),
(22, 22, 3, 0, '2023-06-15', '2023-06-15'),
(23, 23, 4, 0, '2023-06-15', '2023-06-15'),
(24, 23, 1, 0, '2023-06-15', '2023-06-15'),
(25, 23, 2, 0, '2023-06-15', '2023-06-15'),
(26, 28, 6, 0, '2023-06-15', '2023-06-15'),
(27, 28, 5, 0, '2023-06-15', '2023-06-15'),
(28, 28, 1, 0, '2023-06-15', '2023-06-15'),
(29, 29, 1, 5, '2023-06-15', '2023-06-15'),
(30, 29, 3, 3, '2023-06-15', '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `pre_order_id` int NOT NULL,
  `card_holder` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration_date` date NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `pre_order_id`, `card_holder`, `expiration_date`, `created_at`, `updated_at`) VALUES
(1, 2, 23, 'uierhgeuihge', '2023-06-15', '2023-06-15', '2023-06-15'),
(2, 2, 28, 'Benoit Kekwandi', '2023-06-15', '2023-06-15', '2023-06-15'),
(3, 2, 29, 'rfrfref', '2023-06-23', '2023-06-15', '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `description`) VALUES
(1, 'pending'),
(2, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `pre_order`
--

CREATE TABLE `pre_order` (
  `id` int NOT NULL,
  `order_time` date DEFAULT NULL,
  `order_status_id` int NOT NULL,
  `amount` double DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pre_order`
--

INSERT INTO `pre_order` (`id`, `order_time`, `order_status_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, '2023-06-14', 0, 0, '2023-06-14 22:10:50', '2023-06-14 22:10:50'),
(2, '2023-06-14', 0, 0, '2023-06-14 22:12:32', '2023-06-14 22:12:32'),
(3, '2023-06-14', 0, 0, '2023-06-14 22:13:27', '2023-06-14 22:13:27'),
(4, '2023-06-14', 1, 0, '2023-06-14 22:22:14', '2023-06-14 22:22:14'),
(5, '2023-06-14', 1, 0, '2023-06-14 22:29:46', '2023-06-14 22:29:46'),
(6, '2023-06-14', 1, 0, '2023-06-14 23:36:12', '2023-06-14 23:36:12'),
(7, '2023-06-14', 1, 0, '2023-06-14 23:43:47', '2023-06-14 23:43:47'),
(8, '2023-06-14', 1, 0, '2023-06-14 23:44:37', '2023-06-14 23:44:37'),
(9, '2023-06-14', 1, 0, '2023-06-14 23:44:49', '2023-06-14 23:44:49'),
(10, '2023-06-14', 1, 0, '2023-06-14 23:45:34', '2023-06-14 23:45:34'),
(11, '2023-06-14', 1, 0, '2023-06-14 23:49:38', '2023-06-14 23:49:38'),
(12, '2023-06-14', 1, 0, '2023-06-14 23:52:00', '2023-06-14 23:52:00'),
(13, '2023-06-14', 1, 0, '2023-06-14 23:53:02', '2023-06-14 23:53:02'),
(14, '2023-06-14', 1, 0, '2023-06-14 23:54:45', '2023-06-14 23:54:45'),
(15, '2023-06-14', 1, 0, '2023-06-14 23:55:06', '2023-06-14 23:55:06'),
(16, '2023-06-14', 1, 0, '2023-06-14 23:58:11', '2023-06-14 23:58:11'),
(17, '2023-06-14', 1, 0, '2023-06-14 23:59:11', '2023-06-14 23:59:11'),
(18, '2023-06-15', 1, 0, '2023-06-15 00:00:57', '2023-06-15 00:00:57'),
(19, '2023-06-15', 1, 0, '2023-06-15 00:02:02', '2023-06-15 00:02:02'),
(20, '2023-06-15', 1, 0, '2023-06-15 00:02:26', '2023-06-15 00:02:26'),
(21, '2023-06-15', 1, 0, '2023-06-15 00:04:50', '2023-06-15 00:04:50'),
(22, '2023-06-15', 1, 0, '2023-06-15 02:13:25', '2023-06-15 02:13:25'),
(23, '2023-06-15', 1, 0, '2023-06-15 02:33:13', '2023-06-15 02:33:13'),
(24, '2023-06-15', 1, 0, '2023-06-15 03:34:57', '2023-06-15 03:34:57'),
(25, '2023-06-15', 1, 0, '2023-06-15 03:34:59', '2023-06-15 03:34:59'),
(26, '2023-06-15', 1, 0, '2023-06-15 03:35:03', '2023-06-15 03:35:03'),
(27, '2023-06-15', 1, 0, '2023-06-15 03:35:15', '2023-06-15 03:35:15'),
(28, '2023-06-15', 1, 0, '2023-06-15 03:36:17', '2023-06-15 03:36:17'),
(29, '2023-06-15', 1, 0, '2023-06-15 03:39:40', '2023-06-15 03:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `picture` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `quantity` int DEFAULT '0',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `picture`, `description`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 'Iphone14', 'iphone-14-pro_overview__3dn6st99cpea_og.png', 'I phone Pro Max', 25.8, 0, '2023-06-06', '2023-06-06'),
(2, 5, 'samsung', 'Apple-iPhone-11-Pro-Max-vs.-Samsung-Galaxy-Note-20-Ultra.jpg', 'Samsung Pro Max', 48.5, 0, '2023-06-06', '2023-06-06'),
(3, 6, 'Headphones', 'download.png', 'Samsung Headphone', 0, 0, '2023-06-06', '2023-06-06'),
(4, 6, 'Mouse', '61lCLrCtuhL._AC_UF894,1000_QL80_.jpg', 'Samsung Mouse', 0, 0, '2023-06-06', '2023-06-06'),
(5, 9, 'Drone 456 RX6', 'bdb8604_657361800-kargu2.jpg', 'Drone 456 RX6', 0, 0, '2023-06-07', '2023-06-07'),
(6, 9, 'Drone Mavic 2', '61j4acmknmL._AC_UF894,1000_QL80_.jpg', 'Drone Mavic 2', 0, 0, '2023-06-07', '2023-06-07'),
(7, 6, 'xbox', 'xbox.jpg', 'xbox Console', 0, 0, '2023-06-15', '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_type_id` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cell` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(2500) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type_id`, `name`, `surname`, `email`, `cell`, `address`, `password`, `created_at`, `updated_at`) VALUES
(2, 2, 'Ali', 'Muhammad', 'ali.muhammad@gmail.com', '009085612330', 'Girne North Cyprus', 'S0OTh3YTeO/ve1j8LZx/7Q==', '2023-06-07', '2023-06-07'),
(3, 1, 'Alino', 'Kongolo', 'alino.kongolo@gmail.com', '009085612330', 'Kinshasa Ngaba', 'QGJW0v43RktuhH4S3MGGag==', '2023-06-07', '2023-06-07'),
(4, 2, 'Jonathan', 'Tata', 'jonathan.tata@gmail.com', '059695923025', 'Girne Ekmar Market', 'S0OTh3YTeO/ve1j8LZx/7Q==', '2023-06-07', '2023-06-07'),
(5, 1, 'Tata ', 'Joe', 'jonathan.tata@final.edu.tr', '05337787697', 'Kibris', 'ebUaQcUux2FbGqSzVy44AA==', '2023-06-08', '2023-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `description`) VALUES
(1, 'normal'),
(2, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`user_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_order`
--
ALTER TABLE `pre_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pre_order`
--
ALTER TABLE `pre_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
