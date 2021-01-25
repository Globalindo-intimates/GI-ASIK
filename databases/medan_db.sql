-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2020 at 09:35 AM
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
-- Table structure for table `dt_departmen`
--

CREATE TABLE `dt_departmen` (
  `id_departmen` int NOT NULL,
  `departmen_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_departmen`
--

INSERT INTO `dt_departmen` (`id_departmen`, `departmen_name`) VALUES
(1, 'Sewing'),
(2, 'Cutting'),
(3, 'Molding');

-- --------------------------------------------------------

--
-- Table structure for table `dt_screen`
--

CREATE TABLE `dt_screen` (
  `id_screen` int NOT NULL,
  `id_departmen` int NOT NULL,
  `id_line` int DEFAULT '0',
  `floor_name` varchar(20) NOT NULL,
  `screen_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_screen`
--

INSERT INTO `dt_screen` (`id_screen`, `id_departmen`, `id_line`, `floor_name`, `screen_name`) VALUES
(1, 1, 1, '1', 'A'),
(2, 1, 2, '1', 'A'),
(3, 2, 0, '1', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `g_area`
--

CREATE TABLE `g_area` (
  `id_area` int NOT NULL,
  `floor_name` int NOT NULL,
  `id_departmen` int NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_area`
--

INSERT INTO `g_area` (`id_area`, `floor_name`, `id_departmen`, `created_by`, `created_date`, `modified_date`) VALUES
(1, 1, 1, 'admin', '2020-01-24', '2020-01-24'),
(2, 1, 2, 'admin', '2020-01-24', '2020-01-24'),
(3, 1, 3, 'admin', '2020-01-24', '2020-01-24'),
(4, 2, 1, 'admin', '2020-03-17', '2020-03-17'),
(5, 3, 1, 'admin', '2020-03-17', '2020-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `g_screen`
--

CREATE TABLE `g_screen` (
  `id_screen` int NOT NULL,
  `screen_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_screen`
--

INSERT INTO `g_screen` (`id_screen`, `screen_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `g_users`
--

CREATE TABLE `g_users` (
  `U_ID` int NOT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_users`
--

INSERT INTO `g_users` (`U_ID`, `GROUP_ID`, `USERNAME`, `PASSWORD`, `CREATED_BY`, `CREATED_DATE`, `MODIFIED_DATE`) VALUES
(1, 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'heriipurnama', '2017-08-10 00:00:00', '2017-08-10 00:00:00'),
(21, 0, '125410101', '0610a910e9cd7ec9f78b7e3f4d959e6f', 'admin', '2020-01-24 08:46:18', '2020-01-24 08:46:18'),
(23, 1, 'junita', '0610a910e9cd7ec9f78b7e3f4d959e6f', '125410101', '2020-01-24 09:20:45', '2020-01-24 09:20:45'),
(24, 0, 'heriipurnama', '0610a910e9cd7ec9f78b7e3f4d959e6f', '125410101', '2020-01-24 15:16:59', '2020-01-24 15:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `id_line` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `shift` smallint DEFAULT NULL,
  `operators` int DEFAULT NULL,
  `head` varchar(50) DEFAULT NULL,
  `id_spv` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`id_line`, `name`, `description`, `shift`, `operators`, `head`, `id_spv`) VALUES
(0, '-', NULL, NULL, NULL, NULL, NULL),
(1, 'BROMO', NULL, 1, 35, '', 1),
(2, 'WAKATOBI', NULL, 1, 35, '-', 2),
(3, 'BUNAKEN', NULL, 1, 34, '', 3),
(4, 'PRAMBANAN', NULL, 1, 40, '', 4),
(5, 'BEDUGUL', NULL, 1, 30, '', 5),
(6, 'KARIMUN', NULL, 1, 37, '', 6),
(7, 'KAWAH PUTIH', NULL, 1, 34, '', 7),
(8, 'PULAU SAMOSIR', NULL, 1, 32, '', 8),
(9, 'UMBUL PONGGOK', NULL, 1, 34, '', 1),
(10, 'LABOAN BAJO', NULL, 1, 0, '', 14),
(11, 'PULAU SERIBU', NULL, 1, 35, '', 11),
(12, 'NUSA DUA', NULL, 1, 27, '', 12),
(13, 'BESAKIH', NULL, 1, 30, '', 13),
(14, 'RAJA AMPAT', NULL, 1, 0, NULL, 14),
(15, 'DIENG', NULL, 1, 0, NULL, 15),
(16, 'MERBABU', NULL, 1, 28, '', 16),
(17, 'GILI TRAWANGAN', NULL, 1, 31, '', 17),
(18, 'TANAH TORAJA', NULL, 1, 27, '', 18),
(19, 'TANAH LOT', NULL, 1, 39, '', 19),
(20, 'UBUD', NULL, 1, 41, '', 1),
(21, 'PULAU KOMODO', NULL, 1, 25, '', 10),
(22, 'KINTAMANI', NULL, 2, 0, '', 22),
(23, 'JIMBARAN', NULL, 2, 0, '', 23),
(24, 'SANUR', NULL, 2, 0, '', 24),
(25, 'RINJANI', NULL, 2, 0, '', 25),
(26, 'BOROBUDUR', NULL, 2, 0, '', 26),
(27, 'UMBUL MANTEN', NULL, 2, 0, '', 27),
(28, 'DANAU TOBA', NULL, 2, 0, '', 28),
(29, 'TAMAN AYUN', NULL, 2, 0, '', 29),
(30, 'ULU WATU', NULL, 2, 0, '', 30),
(31, 'PARANGTRITIS', NULL, 2, 32, '', 31),
(32, 'TAMPAK SIRING', NULL, 2, 0, '', 32),
(33, 'RAJA AMPAT,DIENG,SANUR,RINJANI', NULL, 1, 112, '-', 1),
(34, 'LABOAN BAJO,NUSA DUA', NULL, 1, 113, '-', 3),
(35, 'BUNAKEN,KINTAMANI', NULL, 1, 73, '-', 12),
(36, 'PULAU KOMODO,TAMAN AYUN', NULL, 1, 0, '-', 19),
(37, 'KAWAH PUTIH,TAMAN AYUN', NULL, 1, 0, '-', 16),
(38, 'TANAH TORAJA,UMBUL MANTEN', NULL, 1, 55, '-', 27),
(39, 'KAWAH PUTIH,TAMAN AYUN', NULL, 1, 69, '-', 5),
(40, 'MERBABU,JIMBARAN', NULL, 1, 55, '-', 16),
(41, 'BESAKIH, BOROBUDUR', NULL, 1, 67, '-', 26),
(42, 'NUSA DUA', NULL, 1, 0, '-', 12),
(43, 'GEDUNG SONGO', NULL, 1, 0, '-', NULL),
(44, 'TANGKUPAN PERAHU', NULL, 2, 0, '-', NULL),
(45, 'MALIOBORO', NULL, 1, 0, '-', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spv`
--

CREATE TABLE `spv` (
  `id_spv` int NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spv`
--

INSERT INTO `spv` (`id_spv`, `name`) VALUES
(1, 'WURI'),
(2, 'TATIK'),
(3, 'ASRI'),
(4, 'AYUK'),
(5, 'MURNI'),
(6, 'AYU'),
(7, 'TRI. R'),
(8, 'YATI'),
(9, 'ERNA'),
(10, 'YULI'),
(11, 'INDI'),
(12, 'MULYATI'),
(13, 'FERRY'),
(14, 'ETIK'),
(15, 'NURUL'),
(16, 'DWI K'),
(17, 'ENI K'),
(18, 'WARINI'),
(19, 'SRI P'),
(20, 'NANIK'),
(21, 'SRI S'),
(22, 'ZURIA 1'),
(23, 'ZURIA 2'),
(24, 'TRIKA 1'),
(25, 'TRIKA 2'),
(26, 'JUNITA'),
(27, 'ITA SARI'),
(28, 'TIMUR'),
(29, 'DESI'),
(30, 'LILIS'),
(31, 'EGI'),
(32, 'WAHYU'),
(33, 'WAHINI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dt_departmen`
--
ALTER TABLE `dt_departmen`
  ADD PRIMARY KEY (`id_departmen`);

--
-- Indexes for table `dt_screen`
--
ALTER TABLE `dt_screen`
  ADD PRIMARY KEY (`id_screen`);

--
-- Indexes for table `g_area`
--
ALTER TABLE `g_area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `g_screen`
--
ALTER TABLE `g_screen`
  ADD PRIMARY KEY (`id_screen`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id_line`),
  ADD KEY `fk_spv` (`id_spv`);

--
-- Indexes for table `spv`
--
ALTER TABLE `spv`
  ADD PRIMARY KEY (`id_spv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_departmen`
--
ALTER TABLE `dt_departmen`
  MODIFY `id_departmen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dt_screen`
--
ALTER TABLE `dt_screen`
  MODIFY `id_screen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g_area`
--
ALTER TABLE `g_area`
  MODIFY `id_area` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `g_screen`
--
ALTER TABLE `g_screen`
  MODIFY `id_screen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `id_line` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `spv`
--
ALTER TABLE `spv`
  MODIFY `id_spv` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `line`
--
ALTER TABLE `line`
  ADD CONSTRAINT `line_ibfk_1` FOREIGN KEY (`id_spv`) REFERENCES `spv` (`id_spv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
