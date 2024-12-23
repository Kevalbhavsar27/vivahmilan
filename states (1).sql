-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2024 at 03:45 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `states`
--

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `status` enum('1','0') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`) VALUES
(1, 'ANDHRA PRADESH', '1'),
(2, 'ASSAM', '1'),
(3, 'ARUNACHAL PRADESH', '1'),
(4, 'BIHAR', '1'),
(5, 'GUJRAT', '1'),
(6, 'HARYANA', '1'),
(7, 'HIMACHAL PRADESH', '1'),
(8, 'JAMMU & KASHMIR', '1'),
(9, 'KARNATAKA', '1'),
(10, 'KERALA', '1'),
(11, 'MADHYA PRADESH', '1'),
(12, 'MAHARASHTRA', '1'),
(13, 'MANIPUR', '1'),
(14, 'MEGHALAYA', '1'),
(15, 'MIZORAM', '1'),
(16, 'NAGALAND', '1'),
(17, 'ORISSA', '1'),
(18, 'PUNJAB', '1'),
(19, 'RAJASTHAN', '1'),
(20, 'SIKKIM', '1'),
(21, 'TAMIL NADU', '1'),
(22, 'TRIPURA', '1'),
(23, 'UTTAR PRADESH', '1'),
(24, 'WEST BENGAL', '1'),
(25, 'DELHI', '1'),
(26, 'GOA', '1'),
(27, 'PONDICHERY', ''),
(28, 'LAKSHDWEEP', '1'),
(29, 'DAMAN & DIU', '1'),
(30, 'DADRA & NAGAR', '1'),
(31, 'CHANDIGARH', '1'),
(32, 'ANDAMAN & NICOBAR', '1'),
(33, 'UTTARANCHAL', '1'),
(34, 'JHARKHAND', '1'),
(35, 'CHATTISGARH', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
