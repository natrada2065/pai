-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2017 at 08:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lolitaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(10,0) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `cost`, `description`, `pic`) VALUES
(1, 'MQ24-1A', '690', 'เดรชกระโปรงแขนยาว สีครีมแต่ระบายลูกไม้ ประดับโบว์หน้าอก ครบไซต์', 'รูปร้าน/ชุด3.jpg'),
(2, 'MQ24-1B', '690', 'เดรชแขนยาวสีขาว แต่งระบายลูกไม้ กรอบเอวสีเทาลายดอก ครบไซต์', 'รูปร้าน/ชุด12.jpg'),
(3, 'MQ24-1C', '490', 'เดรชสั้นสีชมพูแขนสั้น แต่งระบายด้วยโบว์สีชมพูขนาดเล็ก ครบไซต์', 'รูปร้าน/ชุด10.jpg'),
(4, 'MQ24-1E', '590', 'เดรชสั้นแขนตุ๊กตา สีแดงเลือดหมู แต่งประดับด้วยโบง์หน้าอก + ถุงน่องยาวเข่าสีขาว ข้อมือสีขาว ครบไซต์', 'รูปร้าน/ชุด15.jpg'),
(5, 'MQ24-1F', '580', 'เดรชสั้นแขนตุ๊กตา สีฟ้าพาสเทลสุดน่ารัก แต่งระบายด้วยโบว์ + ถุงน่องยาวเข่าสีขาว ครบไซต์', 'รูปร้าน/ชุด16.jpg'),
(6, 'MQ24-1G', '580', 'เดรชสั้นแขนจีบ สีน้ำตาลปนขาว แต่งลวดลายสุดน่ารัก พร้อม ถุงน่องยาวเข่า แต่งโบว์ประดับอก ครบไซต์', 'รูปร้าน/18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `type`) VALUES
(1, 'John', 'Doe', 1),
(2, 'jirattikarn jumpadaeng', 'jirattikarn.2145@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`type`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
