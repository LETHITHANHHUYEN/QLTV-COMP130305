-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 04:18 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlthuvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngsinh` date NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(15) NOT NULL,
  `type` int(15) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`username`, `password`, `hoten`, `ngsinh`, `email`, `phone`, `type`) VALUES
('admin', '123456', 'admin', '2001-01-01', 'admin123456@gmail.com', 969680680, 0),
('anh', 'anh123', 'Nguyễn Anh', '1999-01-01', 'anh123456@gmail.com', 293428395, 1),
('dong', 'dong123', 'nguyễn đông', '2001-01-01', 'dong123456@gmail.com', 842674217, 1),
('hao', 'hao123', 'lê hảo', '2001-09-01', 'hao123456@gmail.com', 985537124, 1),
('hoa', 'hoa123', 'bùi hoa', '2002-01-01', 'hoa123456@gmail.com', 923568454, 1),
('huyen', 'huyen123', 'lê huyền', '2001-11-03', 'huyen123456@gmail.com', 983672531, 1),
('man', 'man123', 'tăng mẫn', '2001-12-03', 'man123456@gmail.com', 329484289, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
