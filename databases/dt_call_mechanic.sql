-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2020 at 03:09 AM
-- Server version: 8.0.19
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_call_mechanic`
--

CREATE TABLE `dt_call_mechanic` (
  `id_call_mechanic` int NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `floor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_call_mechanic`
--

INSERT INTO `dt_call_mechanic` (`id_call_mechanic`, `url`, `floor`) VALUES
(1, 'http://demos.lightstreamer.com/GWT_StockListDemo_Basic/', 3),
(2, 'http://demos.lightstreamer.com/GWT_StockListDemo_Basic/', 2),
(3, 'http://demos.lightstreamer.com/GWT_StockListDemo_Basic/', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dt_call_mechanic`
--
ALTER TABLE `dt_call_mechanic`
  ADD PRIMARY KEY (`id_call_mechanic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_call_mechanic`
--
ALTER TABLE `dt_call_mechanic`
  MODIFY `id_call_mechanic` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
