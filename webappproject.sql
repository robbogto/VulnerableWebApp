-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 10:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webappproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
('1', 'Avant PC case', 'Full size ATX with glass side panel                                              \r\n\r\n\r\n    ', 129.99, 'pc-case.png'),
('1679091c5a880faf6fb5e6087eb1b2dc', 'Phillips Blender', 'High power motor makes crushing and blending easy.', 161.99, 'blender.jpg'),
('2', 'NVIDIA RTX 2080 Ti Graphics Card', 'With integrated 11GB GDDR6 352-bit memory interface', 329.99, 'graphics-card.png'),
('3', 'Logitech G903 Wireless Mouse', 'LIGHTSPEED Wireless Gaming Mouse with HERO Sensor', 139.99, 'mouse.jpg'),
('3b49f3d0672ac9dca089fa8b58a047c5e3a03bb7f2e7183e7c3426c33ad30092', 'Logitech MX Keys Wireless Keyboard', 'Full size wireless keyboard with number pad.', 99.99, 'keyboard.jpg'),
('9e91b4a881325e93dc005bb17a27d6c42339cf50bb8a083f56e6804a5e9b3c4c\r\n', 'Samsung S21 Ultra 5G', '120 Hz 6.8 Inch Dynamic AMOLED display with the Exynos 2100 5nm processor', 699, 's21.jpg'),
('a02420dfa4e16993165dd92eb564b09eb8f9e29d5de07c6444fec315aa01cc22\r\n', 'Lenovo Legion 5i Gaming Laptop', 'With a 12th Gen Intel® Core™ processor and an NVIDIA® GeForce RTX™ 3070 Ti GPU.', 1299.99, 'laptop.jpg'),
('a87ff679a2f3e71d9181a67b7542122c', 'Nintendo Switch', 'Designed to play at home or on-the-go', 259.99, 'switch.jpg'),
('c4ca4238a0b923820dcc509a6f75849b', 'DeWalt 18v Cordless Drill', 'Comes with a Lithium ion battery and a set of drill bits', 79.99, 'drill.jpg'),
('c81e728d9d4c2f636f067f89cc14862c', 'iPhone 14 Pro', 'A16 Bionic chip and 6.1\" Super Retina XDR display', 1099, 'iphone.jpg'),
('e4da3b7fbbce2345d7772b0674a318d5', 'Samsung 2TB SSD', 'With 2TB of storage never run out of space again', 149.99, 'ssd.jpg'),
('eccbc87e4b5ce2fe28308fd9f2a7baf3', 'JBL Wireless Headphones', 'Features ANC and a 30 hour battery life', 78.95, 'headphones.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewID` int(3) NOT NULL,
  `name` varchar(70) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewID`, `name`, `productName`, `rating`, `comment`) VALUES
(331, 'John S', 'iPhone 14 Pro', 5, 'This phone is amazing! The camera is so good and the battery life lasts all day'),
(332, 'Fernando S', 'Lenovo Legion 5', 4, 'This laptop runs great! It handles most games on high settings at a smooth framerate. The battery life could last longer but it is still a great laptop for the price.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(20) NOT NULL,
  `userUID` varchar(100) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userPWD` varchar(30) NOT NULL,
  `role` varchar(8) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `postcode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userUID`, `userName`, `userPWD`, `role`, `firstName`, `lastName`, `email`, `postcode`) VALUES
(833, '07239', 'administrator', 'root', 'YWRtaW4=', 'admin', 'admin', 'admin@PVWA.com', 'LS16 7BQ'),
(834, '01908', 'bob123', 'hello123', 'dXNlcg==', 'Bob', 'Adams', 'bigbobby123@gmail.com', 'LS3 7QR'),
(1774, '38209', 'catlover8', 'thisismysecurepassword', 'dXNlcg==', 'Holly', 'Norton', 'Holly1993@gmail.co.uk', 'LS6 4BP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `userName_2` (`userName`),
  ADD KEY `userUID` (`userUID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1775;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
