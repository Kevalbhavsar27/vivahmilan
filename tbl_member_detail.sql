-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2025 at 07:35 AM
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
-- Table structure for table `tbl_member_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_member_detail` (
  `Member_Detail_ID` int(4) NOT NULL AUTO_INCREMENT,
  `Member_ID` int(4) DEFAULT NULL,
  `Member_Sub_Community_ID` int(4) DEFAULT NULL,
  `Member_Religion` varchar(25) DEFAULT NULL,
  `Language_ID` int(4) DEFAULT NULL,
  `Member_With_Family` varchar(15) DEFAULT NULL,
  `Member_Childrens` varchar(20) DEFAULT NULL,
  `Member_Height` float DEFAULT NULL,
  `Member_Weight` tinyint(3) DEFAULT NULL,
  `Caste_No_Bar` enum('1','0') DEFAULT NULL,
  `Marital_Status` varchar(25) DEFAULT NULL,
  `Member_Birthplace` varchar(25) DEFAULT NULL,
  `Member_Body_Type` varchar(15) DEFAULT NULL,
  `Member_Complexion` varchar(15) DEFAULT NULL,
  `Member_Rashi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Member_Detail_ID`),
  KEY `Member_ID` (`Member_ID`),
  KEY `Member_ID_2` (`Member_ID`),
  KEY `sub_Community` (`Member_Sub_Community_ID`),
  KEY `Language_ID` (`Language_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=574 ;

--
-- Dumping data for table `tbl_member_detail`
--

INSERT INTO `tbl_member_detail` (`Member_Detail_ID`, `Member_ID`, `Member_Sub_Community_ID`, `Member_Religion`, `Language_ID`, `Member_With_Family`, `Member_Childrens`, `Member_Height`, `Member_Weight`, `Caste_No_Bar`, `Marital_Status`, `Member_Birthplace`, `Member_Body_Type`, `Member_Complexion`, `Member_Rashi`) VALUES
(9, 103, 20, 'Hindu', 2, 'no', '0', 5.7, 65, '1', 'single', 'Bhuj', 'Slim', 'Brown', 'Meethun'),
(539, 161, 19, 'Hindu', NULL, 'yes', '1', 5.3, 45, '1', 'Single', 'Gorakhpur', 'skinny', 'brown', 'Vrishabha'),
(540, 162, 20, 'Hindu', 36, 'Yes', '0', 5.1, 60, '1', 'Single', 'Surat', 'Slim', 'Brown', 'Kumbha'),
(541, 164, 19, 'Sikh', 2, 'yes', '0', 4.9, 63, '1', 'Single', 'Jonpur', 'slim', 'Fair', 'Dhan'),
(542, 165, 19, 'Muslim', 2, 'Yes', '0', 5.2, 55, '1', 'Single', 'Janakpur', 'Fat', 'fair', 'Tula'),
(545, 168, 19, 'Hindu', NULL, 'yes', '1', 5.4, 55, '0', 'Single', 'Mubmai', 'skinny', 'brown', 'Varishabha'),
(546, 169, 19, 'Hindu', NULL, 'yes', '1', 5.7, 55, '0', 'Single', 'Ahemdabad', 'skinny', 'dark', 'Tula'),
(548, 170, 19, 'Christian', NULL, 'yes', '1', 5.2, 55, '1', 'Single', 'Vadodra', 'skinny', 'brown', 'Makara'),
(550, 172, 20, 'Hindu', NULL, 'yes', '1', 5.1, 55, '1', 'Single', 'DIu', 'skinny', 'brown', 'Mesh'),
(551, 173, 20, 'Jain', NULL, 'yes', '1', 5.3, 65, '0', 'Single', 'Mehsana', 'fat', 'dark', 'Makara'),
(552, 174, 20, 'Sikh', NULL, 'yes', '1', 5.3, 65, '0', 'Single', 'Mau', 'fat', 'dark', 'Dhanur'),
(557, 180, 19, 'Jain', NULL, 'yes', '1', 5.1, 45, '1', 'Single', 'Amroli', 'skinny', 'brown', ' Makara'),
(559, 182, 24, 'Muslim', NULL, 'yes', '2', 5.1, 60, '0', 'Awaiting', 'surat', 'fat', 'dark', 'Makara'),
(564, 188, 23, 'Christian', NULL, 'yes', '1', 5.2, 60, '0', 'Separated', 'Mumbai', 'skinny', 'brown', 'Kanya'),
(565, 189, 23, 'Hindu', NULL, 'yes', '1', 5.2, 50, '0', 'Single', 'maunath', 'skinny', 'dark', 'Kanya'),
(570, 193, 38, 'Parsi', NULL, 'yes', '2', 5.3, 85, NULL, 'Divorced', 'Ghorkhpur', 'fat', 'brown', 'Dhanur'),
(571, 194, 36, 'Buddhist', NULL, 'yes', '2', 5.6, 70, NULL, 'Divorced', 'jainpur', 'fat', 'brown', 'Tula'),
(572, 195, 35, 'Muslim', NULL, 'yes', '2', 5.7, 65, NULL, 'Divorced', 'Kolapur', 'skinny', 'brown', 'Dhanur'),
(573, 196, 47, 'Sikh', NULL, 'yes', '2', 5.4, 70, NULL, 'Divorced', 'Ghati', 'fat', 'dark', '  ');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_member_detail`
--
ALTER TABLE `tbl_member_detail`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Member_Sub_Community_ID`) REFERENCES `tbl_sub_community` (`Sub_Community_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_member_detail_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `tbl_member` (`Member_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_member_detail_ibfk_2` FOREIGN KEY (`Language_ID`) REFERENCES `tbl_language` (`Language_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
