-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.10.3:3306
-- Generation Time: May 05, 2020 at 03:19 AM
-- Server version: 10.3.22-MariaDB
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
-- Database: `productionreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_deffect_rate`
--

CREATE TABLE `dt_deffect_rate` (
  `id_deffect` int(50) NOT NULL,
  `id_line` int(10) NOT NULL,
  `deffect` int(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_deffect_rate`
--

INSERT INTO `dt_deffect_rate` (`id_deffect`, `id_line`, `deffect`, `created_date`, `created_by`) VALUES
(1, 5, 1212, '2020-05-05 01:17:25', 'admin'),
(2, 28, 12, '2020-05-05 01:17:30', 'admin'),
(3, 15, 1212, '2020-05-05 01:19:10', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dt_deffect_rate`
--
ALTER TABLE `dt_deffect_rate`
  ADD PRIMARY KEY (`id_deffect`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_deffect_rate`
--
ALTER TABLE `dt_deffect_rate`
  MODIFY `id_deffect` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
