-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2025 at 07:16 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vivahmilan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `City_ID` int(12) NOT NULL AUTO_INCREMENT,
  `City_Name` varchar(25) NOT NULL,
  `State_ID` int(4) NOT NULL,
  PRIMARY KEY (`City_ID`),
  UNIQUE KEY `City_Name` (`City_Name`),
  KEY `fk` (`State_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`City_ID`, `City_Name`, `State_ID`) VALUES
(17, 'Jalandhar', 13),
(18, 'Chandigarh', 5),
(19, 'Tirupati', 1),
(21, 'Surat', 11),
(22, 'Vapi', 2),
(23, 'Nalanda', 6),
(24, 'Huddia', 6),
(25, 'vadodra', 2),
(26, 'Ahemdabad', 2),
(27, 'Bhuj', 2),
(28, 'Kim', 15),
(29, 'Ankleshwar', 10),
(30, 'Visakhapatnam', 1),
(31, 'Kadapa', 1),
(32, 'Kakinada', 1),
(33, 'Guntur', 1),
(34, 'Bhopal', 14),
(35, 'Indor', 4),
(36, 'Jabalpur', 14),
(37, 'ujjain', 4),
(38, 'Khandwa', 4),
(39, 'Rewa', 4),
(40, 'Betul', 4),
(41, 'Udhampur', 3),
(42, 'Katuha', 3),
(43, 'Poonch', 3),
(44, 'Pulwama', 3),
(45, 'Kulgam', 3),
(46, 'Kupwara', 3),
(47, 'Panaji', 9),
(48, 'Mapusa', 9),
(49, 'Anjuna', 9),
(50, 'Valpoi', 9),
(51, 'Guwahati', 7),
(52, 'Jorhat', 7),
(53, 'Tezpur', 7),
(54, 'Tinsukia', 7),
(55, 'Tura', 7),
(56, 'Kochi', 12),
(57, 'Kollam', 12),
(58, 'Kannur', 12),
(59, 'Malappuram', 12),
(60, 'Tirur', 12),
(61, 'Nainital', 14),
(62, 'Rishikesh', 14),
(63, 'Almora', 14),
(64, 'Kashipur', 14),
(65, 'Ramnagar', 14),
(66, 'Pune', 1),
(69, 'Nashik', 13),
(70, 'Mumbai', 13),
(71, 'Nagpur', 13),
(72, 'Solapur', 13),
(73, 'Akola', 13),
(74, 'Thane', 13),
(75, 'Ahmadnagar', 13),
(76, 'Kolkata', 15),
(77, 'Durgapur', 15),
(78, 'Howrah', 15),
(79, 'Haldia', 15),
(80, 'Kharagpur', 15),
(81, 'Burdwan', 15),
(82, 'Ludhiana', 5),
(83, 'Amritsar', 5),
(84, 'Patiala', 5),
(85, 'Firozpur', 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`State_ID`) REFERENCES `tbl_state` (`State_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
