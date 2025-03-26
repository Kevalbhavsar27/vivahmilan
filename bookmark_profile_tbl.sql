-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 05:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivahmilan`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_profile_tbl`
--

CREATE TABLE `bookmark_profile_tbl` (
  `bookmark_id` int(11) NOT NULL,
  `member_profile_id` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookmark_profile_tbl`
--

INSERT INTO `bookmark_profile_tbl` (`bookmark_id`, `member_profile_id`, `member_id`) VALUES
(6, '2025111812', 48),
(7, '2025303101', 48),
(8, '2025083107', 48),
(10, '2025181402', 48),
(11, '2025591302', 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmark_profile_tbl`
--
ALTER TABLE `bookmark_profile_tbl`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmark_profile_tbl`
--
ALTER TABLE `bookmark_profile_tbl`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmark_profile_tbl`
--
ALTER TABLE `bookmark_profile_tbl`
  ADD CONSTRAINT `bookmark_profile_tbl_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_tbl` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
