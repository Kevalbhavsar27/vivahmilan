-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 11:08 AM
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
-- Database: `vivahmilan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(8, 162, 168, 'hello devðŸ˜‡ðŸ˜Š', '2021-06-23 06:46:04', 0),
(9, 162, 168, 'how are you', '2021-06-23 06:46:13', 0),
(10, 168, 162, 'hello Vats,M fine', '2021-06-23 06:48:00', 0),
(11, 162, 165, 'hello dev what are you doing??ðŸ˜ƒðŸ˜€ðŸ˜„', '2021-06-23 06:50:08', 0),
(17, 103, 169, 'kesi ho ðŸ˜†ðŸ˜†ðŸ˜†ðŸ˜†ðŸ˜†ðŸ˜†', '2021-06-23 08:29:47', 0),
(18, 169, 103, 'i am fine \nðŸ¤‘ðŸ¤‘ðŸ¤‘\n', '2021-06-23 08:30:30', 0),
(19, 103, 169, 'kaisi ho divya ðŸ˜›ðŸ˜›ðŸ˜›ðŸ˜›ðŸ˜›', '2021-06-23 08:31:30', 0),
(20, 103, 162, 'hi', '2021-06-23 13:52:47', 0),
(21, 162, 103, 'bol ', '2021-06-23 13:52:59', 0),
(22, 103, 162, 'kaini', '2021-06-23 13:53:05', 0),
(23, 162, 103, 'ok bye', '2021-06-23 13:53:13', 0),
(24, 168, 172, 'hello gm ðŸ˜ƒðŸ˜€', '2021-06-24 05:46:06', 0),
(25, 168, 172, 'hello', '2021-06-24 05:47:00', 0),
(26, 103, 168, 'hello divyaðŸ˜„ ', '2021-06-24 05:54:53', 0),
(27, 168, 103, 'hii vats ðŸ™‚', '2021-06-24 05:55:17', 0),
(28, 103, 168, 'good morning,how are you ðŸ˜Š', '2021-06-24 05:55:52', 0),
(29, 168, 103, 'good morning..\nnothing much M working  on my final year project..ðŸ˜…ðŸ˜…', '2021-06-24 05:56:50', 0),
(30, 103, 168, 'ok how going on you study...ðŸ˜£ðŸ˜œðŸ™ƒðŸ™ƒ', '2021-06-24 05:57:23', 0),
(31, 103, 168, 'Nothing much..ðŸ˜•', '2021-06-25 10:13:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(10, 162, '2021-06-23 08:12:43', 'no'),
(11, 168, '2021-06-23 08:14:05', 'no'),
(12, 165, '2021-06-23 06:52:03', 'no'),
(13, 103, '2021-06-23 08:15:51', 'no'),
(14, 168, '2021-06-23 08:15:48', 'no'),
(15, 103, '2021-06-23 08:18:13', 'no'),
(16, 169, '2021-06-23 08:49:59', 'no'),
(17, 103, '2021-06-23 08:49:59', 'no'),
(18, 162, '2021-06-23 14:43:27', 'no'),
(19, 103, '2021-06-23 13:51:43', 'no'),
(20, 168, '2021-06-23 13:52:08', 'no'),
(21, 103, '2021-06-23 14:43:33', 'no'),
(22, 162, '2021-06-23 18:34:51', 'no'),
(23, 168, '2021-06-23 17:59:41', 'no'),
(24, 103, '2021-06-23 19:45:38', 'no'),
(25, 162, '2021-06-23 19:52:14', 'no'),
(26, 162, '2021-06-23 19:55:47', 'no'),
(27, 162, '2021-06-23 19:56:45', 'no'),
(28, 103, '2021-06-24 04:52:04', 'no'),
(29, 103, '2021-06-24 05:03:16', 'no'),
(30, 103, '2021-06-24 05:38:08', 'no'),
(31, 103, '2021-06-24 05:38:19', 'no'),
(32, 172, '2021-06-24 05:52:12', 'no'),
(33, 168, '2021-06-24 08:31:22', 'no'),
(34, 103, '2021-06-24 08:31:20', 'no'),
(35, 103, '2021-06-24 08:31:19', 'no'),
(36, 162, '2021-06-24 18:38:49', 'no'),
(37, 168, '2021-06-24 18:39:32', 'no'),
(38, 103, '2021-06-24 18:39:47', 'no'),
(39, 103, '2021-06-24 18:42:30', 'no'),
(40, 169, '2021-06-24 18:42:48', 'no'),
(41, 161, '2021-06-24 18:42:59', 'no'),
(42, 103, '2021-06-24 19:20:49', 'no'),
(43, 169, '2021-06-25 09:31:50', 'no'),
(44, 168, '2021-06-25 09:47:00', 'no'),
(45, 187, '2021-06-25 09:48:23', 'no'),
(46, 180, '2021-06-25 09:50:13', 'no'),
(47, 162, '2021-06-25 09:52:52', 'no'),
(48, 168, '2021-06-25 09:54:14', 'no'),
(49, 168, '2021-06-25 10:37:32', 'no'),
(50, 103, '2021-06-25 09:54:30', 'no'),
(51, 103, '2021-06-25 10:13:27', 'no'),
(52, 103, '2021-06-25 10:38:44', 'no'),
(53, 103, '2021-06-25 10:41:41', 'no'),
(54, 103, '2021-06-25 10:43:59', 'no'),
(55, 103, '2021-06-25 10:44:09', 'no'),
(56, 103, '2021-06-25 11:50:54', 'no'),
(57, 103, '2021-06-25 13:30:32', 'no'),
(58, 103, '2021-06-25 14:44:00', 'no'),
(59, 103, '2021-06-25 17:20:53', 'no'),
(60, 103, '2021-06-25 17:21:02', 'no'),
(61, 103, '2021-06-25 17:22:06', 'no'),
(62, 103, '2021-06-25 17:22:14', 'no'),
(63, 162, '2021-06-25 17:25:29', 'no'),
(64, 103, '2021-06-25 17:25:56', 'no'),
(65, 103, '2021-06-25 17:34:14', 'no'),
(66, 103, '2021-06-25 17:35:56', 'no'),
(67, 103, '2021-06-25 17:36:01', 'no'),
(68, 103, '2021-06-25 17:50:01', 'no'),
(69, 168, '2021-06-25 17:49:08', 'no'),
(70, 162, '2021-06-25 17:50:44', 'no'),
(71, 170, '2021-06-25 17:56:58', 'no'),
(72, 162, '2021-06-25 18:02:35', 'no'),
(73, 188, '2021-06-25 18:03:25', 'no'),
(74, 164, '2021-06-25 18:03:51', 'no'),
(75, 162, '2021-06-25 18:04:43', 'no'),
(76, 172, '2021-06-25 18:05:17', 'no'),
(77, 194, '2021-06-25 18:05:59', 'no'),
(78, 162, '2021-06-25 18:06:28', 'no'),
(79, 195, '2021-06-25 18:09:29', 'no'),
(80, 193, '2021-06-25 18:09:56', 'no'),
(81, 173, '2021-06-25 18:10:50', 'no'),
(82, 103, '2021-06-25 18:12:23', 'no'),
(83, 168, '2021-06-25 18:14:45', 'no'),
(84, 103, '2021-06-25 19:10:29', 'no'),
(85, 196, '2021-06-25 19:37:29', 'no'),
(86, 196, '2021-06-25 19:38:40', 'no'),
(87, 162, '2021-06-25 19:39:51', 'no'),
(88, 196, '2021-06-25 19:40:27', 'no'),
(89, 196, '2021-06-25 19:41:16', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `otp_status`
--

CREATE TABLE `otp_status` (
  `id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `create_at` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `otp_status`
--

INSERT INTO `otp_status` (`id`, `otp`, `status`, `create_at`) VALUES
(1, 4353, '0', '09:04:15'),
(2, 2625, '0', '09:07:02'),
(3, 2919, '1', '09:08:49'),
(4, 2598, '1', '14:43:34'),
(5, 1108, '1', '14:51:29'),
(6, 7186, '1', '14:54:57'),
(7, 1181, '1', '12:48:40'),
(8, 2473, '1', '12:51:44'),
(9, 1304, '1', '12:55:29'),
(10, 6991, '1', '12:58:37'),
(11, 7820, '1', '13:01:56'),
(12, 2887, '1', '13:08:41'),
(13, 6158, '1', '13:10:34'),
(14, 6946, '0', '23:09:08'),
(15, 8957, '1', '15:49:28'),
(16, 4979, '0', '16:23:02'),
(17, 6615, '1', '23:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `Admin_ID` int(3) NOT NULL,
  `Admin_Name` varchar(20) NOT NULL,
  `Admin_Email` varchar(30) NOT NULL,
  `Admin_Password` varchar(60) NOT NULL,
  `Admin_Contact` bigint(10) NOT NULL,
  `Admin_City` varchar(8) NOT NULL,
  `Admin_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`Admin_ID`, `Admin_Name`, `Admin_Email`, `Admin_Password`, `Admin_Contact`, `Admin_City`, `Admin_Status`) VALUES
(4, 'Vats', 'vatschauhan05@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 9925122124, 'surat', '1'),
(5, 'sonu', 'sahanisonu226@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 13268458, 'Surat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `City_ID` int(12) NOT NULL,
  `City_Name` varchar(25) NOT NULL,
  `State_ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_community`
--

CREATE TABLE `tbl_community` (
  `Community_ID` int(4) NOT NULL,
  `Community_Name` varchar(15) NOT NULL,
  `Community_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_community`
--

INSERT INTO `tbl_community` (`Community_ID`, `Community_Name`, `Community_Status`) VALUES
(81, 'Marathi', '1'),
(82, 'Rajasthani', '1'),
(85, 'Gujarati', '1'),
(90, 'Bihari', '1'),
(91, 'Kannad', '1'),
(92, 'Bangali', '1'),
(93, 'Punjabi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `Faq_ID` int(4) NOT NULL,
  `Faq_Que` varchar(45) NOT NULL,
  `Faq_Ans` text NOT NULL,
  `Faq_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`Faq_ID`, `Faq_Que`, `Faq_Ans`, `Faq_Status`) VALUES
(17, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1'),
(18, 'Where can I get some?', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', '1'),
(19, 'Where does it come from?', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '1'),
(20, 'hello', 'qljbclqfc', '0'),
(21, 'kanevn', 'piheavdlkn', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `Language_ID` int(4) NOT NULL,
  `Language` varchar(25) NOT NULL,
  `Language_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`Language_ID`, `Language`, `Language_Status`) VALUES
(2, 'Hindi', '1'),
(6, 'Marathi', '1'),
(35, 'Bhojpuri', '1'),
(36, 'Gujarati', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lifestyle`
--

CREATE TABLE `tbl_lifestyle` (
  `Lifestyle_ID` int(4) NOT NULL,
  `Member_Detail_ID` int(4) NOT NULL,
  `BloodGroup` varchar(15) DEFAULT NULL,
  `Hobbies_Intrest` varchar(200) DEFAULT NULL,
  `Member_Diet` varchar(20) DEFAULT NULL,
  `Languages_Known` varchar(200) DEFAULT NULL,
  `Residential_Status` varchar(25) DEFAULT NULL,
  `Smoking_Habbits` varchar(150) DEFAULT NULL,
  `Drinking_Habbits` varchar(15) DEFAULT NULL,
  `Vehicles_Having` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_lifestyle`
--

INSERT INTO `tbl_lifestyle` (`Lifestyle_ID`, `Member_Detail_ID`, `BloodGroup`, `Hobbies_Intrest`, `Member_Diet`, `Languages_Known`, `Residential_Status`, `Smoking_Habbits`, `Drinking_Habbits`, `Vehicles_Having`) VALUES
(6, 9, 'A+', 'reading', 'veg', 'Hindi,Gujarati', 'Permenent Reside', 'no', 'no', '2'),
(34, 539, 'A+', 'Music,Sport', 'Non-Veg', 'Hindi,Gujarati', NULL, 'Occasionaly', 'NO', '2'),
(35, 540, 'A+', 'Sport,Dance', 'veg', 'Hindi,Gujarati', 'Permenent Reside', 'NO', 'NO', '1'),
(36, 541, 'B-', 'Gaming,Traveling', 'non-veg', 'Marathi,Gujarati', 'Rental', 'NO', 'NO', '2'),
(37, 542, 'A+', 'Sport', 'veg', 'Hindi', 'Permenent Reside', 'NO', 'NO', '3'),
(38, 545, 'B+', 'Music,Sport', 'Any', 'Hindi,Gujarati,Marathi', NULL, 'NO', 'NO', '3'),
(39, 546, 'B-', 'Sport,Dance', 'Any', 'Hindi,Gujarati,Urdu', NULL, 'NO', 'NO', '1'),
(41, 548, 'A+', 'Music,Reading,Writing', 'Veg', 'Hindi,Gujarati', NULL, 'NO', 'NO', '1'),
(42, 550, 'B+', 'Music,Reading,Writing', 'Non-Veg', 'Hindi,Gujarati', NULL, 'NO', 'NO', '2'),
(43, 551, 'A-', 'Music,Sport', 'Any', 'Hindi,Punjabi', NULL, 'NO', 'NO', '2'),
(44, 552, 'B-', 'Writing', 'Any', 'Telugu,Urdu', NULL, 'NO', 'NO', '1'),
(50, 557, 'B+', 'Music,Reading', 'Any', 'Hindi,Gujarati,Marathi', NULL, 'NO', 'NO', '2'),
(51, 559, 'A+', 'Music,Sport', 'Non-Veg', 'Hindi,Gujarati', NULL, 'Occasionaly', 'Occasionaly', '2'),
(54, 564, 'O+', 'Sport,Reading', 'Any', 'Hindi,Gujarati,Marathi', NULL, 'Occasionaly', 'NO', '2'),
(55, 565, 'A+', 'Music,Sport,Dance', 'Veg', 'Hindi,Gujarati', NULL, 'NO', 'NO', '2'),
(58, 570, 'O+', 'Music,Sport,Writing', 'Any', 'Hindi,Urdu,Punjabi', NULL, 'Occasionaly', 'Occasionaly', '2'),
(59, 571, 'O+', 'Music,Sport,Reading', 'Any', 'Hindi,Gujarati,Punjabi', NULL, 'Occasionaly', 'Occasionaly', '2'),
(60, 572, 'O-', 'Music,Sport,Reading', 'Non-Veg', 'Hindi,Gujarati', NULL, 'Occasionaly', 'Occasionaly', '2'),
(61, 573, 'O+', 'Music,Dance,Reading', 'Any', 'Hindi,Gujarati,Punjabi', NULL, 'Occasionaly', 'NO', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `Member_ID` int(4) NOT NULL,
  `Member_City` int(4) DEFAULT NULL,
  `Member_Image` varchar(50) DEFAULT NULL,
  `Member_Firstname` varchar(30) DEFAULT NULL,
  `Member_Lastname` varchar(30) DEFAULT NULL,
  `Member_Adhar_ID` varchar(30) DEFAULT NULL,
  `Member_Contact` varchar(16) DEFAULT NULL,
  `Member_Email` varchar(100) NOT NULL,
  `Member_Password` varchar(30) DEFAULT NULL,
  `Member_Profile_For` varchar(15) DEFAULT NULL,
  `Member_Looking_For` varchar(20) DEFAULT NULL,
  `Member_Gender` varchar(6) DEFAULT NULL,
  `Member_DOB` date DEFAULT NULL,
  `Member_Profile_ID` varchar(50) DEFAULT NULL,
  `Member_Age` int(3) DEFAULT NULL,
  `Member_Min_Age` int(5) DEFAULT NULL,
  `Member_Max_Age` int(5) DEFAULT NULL,
  `Registration_Date` date DEFAULT NULL,
  `Member_Status` enum('1','0') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`Member_ID`, `Member_City`, `Member_Image`, `Member_Firstname`, `Member_Lastname`, `Member_Adhar_ID`, `Member_Contact`, `Member_Email`, `Member_Password`, `Member_Profile_For`, `Member_Looking_For`, `Member_Gender`, `Member_DOB`, `Member_Profile_ID`, `Member_Age`, `Member_Min_Age`, `Member_Max_Age`, `Registration_Date`, `Member_Status`) VALUES
(103, 17, '202106230206396.jpg', 'Divya', 'Sharma', '212545454', '987754', 'rahul@gmail.com', '1234', 'Sister', 'Man', 'Female', '2021-02-02', '1542019', 20, 0, 0, '2021-02-10', '1'),
(161, 21, '20210607112909men6.jpg', 'Sonu', 'Sahani', '983465983465', '93847', 'veer05@gmail.com', '1234', 'Brother', 'Woman', 'Male', '2012-05-10', '2021571005', 21, 22, 25, NULL, '1'),
(162, 18, '202106101203095.jpg', 'Dev', 'Vegda', '235345345', '859846523', 'dev123@gmail.com', '1234', 'self', 'Woman', 'male', '2020-07-01', '202111105', 23, 20, 23, '2021-06-03', '1'),
(164, 23, '20210625113356a6.jpg', 'Riya', 'Sharma', '4564564564', '353453', 'Riya123@gmail.com', '1234', 'self', 'Man', 'Female', '2020-01-16', '202155110', 21, 22, 25, '2021-06-02', '1'),
(165, 19, '20210608124830woman4.jpg', 'Neha', 'Rathi', NULL, NULL, 'raj0123@gmail.com', '1234', 'Sister', 'Man', 'Female', '2019-07-10', '202105115', 19, 20, 23, '2021-05-12', '1'),
(168, 21, '20210617014034men5.jpg', 'Vats', 'Chauhan', NULL, '9874563210', 'vatschauhan05@gmail.com', '1234', 'Myself', 'Woman', 'Male', '2000-03-12', '2021330312', 21, 19, 21, NULL, '1'),
(169, 21, '20210608125111Men(1).jpg', 'Mihir', 'solanki', NULL, NULL, 'jeffy123@gmail.com', '1234', 'Brother', 'Woman', 'Male', '2019-04-25', '2021552504', 20, 18, 25, '2021-06-06', '1'),
(170, 25, '20210625112512a1.jpg', 'Mahima', 'Shah', NULL, NULL, 'neel123@gmail.com', '1234', 'Sister', 'Man', 'Female', '2018-08-15', '2021561508', 19, 20, 23, '2021-06-06', '1'),
(172, 25, '20210625113512p2.jpg', 'Jeel', 'Maali', NULL, NULL, 'jeel123@gmail.com', '1234', 'Myself', 'Man', 'Female', '1998-12-23', '2021422312', 22, 21, 24, '2021-06-06', '1'),
(173, 18, '20210625114045a5.jpg', 'Max', 'kartel', NULL, NULL, 'max123@gmail.com', '1234', 'Son', 'Woman', 'Male', '1999-06-10', '2021271006', 22, 21, 24, '2021-06-06', '1'),
(174, 19, '1.jpg', 'Sonu', 'Mehta', NULL, NULL, 'sonu123@gmail.com', '1234', 'Daughter', 'Man', 'Male', '1997-02-15', '2021401502', 22, 18, 22, '2021-06-07', '1'),
(180, 23, '202106081130254.jpg', 'Jeenal', 'Parmar', NULL, '9852864521', 'jeenal123@gmail.com', '1234', 'Myself', 'Man', 'Female', '1998-04-13', '2021291304', 22, 20, 22, '2021-06-08', '1'),
(182, 21, '202106090755323.jpg', 'aasish', 'kumar', '8767867979779787', '863485686', 'bhavik@gmail.com', '123', 'Brother', 'Woman', 'Male', '2000-10-24', '2021392410', 26, 21, 26, '2021-06-09', '1'),
(184, 21, '202106110147073.jpg', 'vats', 'chauhan', '2642844751134554', '789654123', 'vatschauhan122@gmail.com', '1234', 'Brother', 'Woman', 'Male', '2000-01-11', '2021531101', 24, 20, 23, '2021-06-11', '1'),
(188, 26, '20210625113320a8.jpg', 'Nirali', 'Shah', '', '9874563242', 'mega123@gmail.com', '1234', 'Daughter', 'Man', 'Female', '1999-11-10', '2021001011', 23, 22, 25, '2021-06-19', '1'),
(189, 22, 'image_placeholder.jpg', 'satyam', 'sahani', '4458830152581234', '9427139966', 'sahanisatyam123@gmail.com', 'satyam123', 'Brother', 'Woman', 'Male', '1999-07-07', '2021010707', 21, 21, 22, '2021-06-23', '1'),
(193, 71, '20210625114001a2.jpg', 'Ajay', 'Nagar', '', '', 'mohit123@gmail.com', '1234', 'Son', 'Woman', 'Male', '1998-06-11', '2021431106', 22, 20, 25, '2021-06-25', '1'),
(194, 37, '20210625113554p4.jpg', 'Janvi', 'Barod', '', '', 'meera123@gmail.com', '1234', 'Sister', 'Man', 'Female', '1998-08-03', '2021510308', 26, 22, 26, '2021-06-25', '1'),
(195, 38, '20210625113658p14.jpg', 'Roochi', 'Roy', '', '', 'roochi123@gmail.com', '1234', 'Myself', 'Man', 'Female', '1998-07-10', '2021411007', 21, 20, 24, '2021-06-25', '1'),
(196, 82, '202106260105001.jpg', 'Pinkal', 'Makwana', '123456789122', '1234567892', 'pinkal123@gmail.com', '1234', 'Myself', 'Woman', 'Male', '1998-08-04', '2021030408', 22, 20, 23, '2021-06-26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_detail`
--

CREATE TABLE `tbl_member_detail` (
  `Member_Detail_ID` int(4) NOT NULL,
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
  `Member_Rashi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_qualification`
--

CREATE TABLE `tbl_member_qualification` (
  `Member_Qualification_ID` int(4) NOT NULL,
  `Member_Detail_ID` int(4) NOT NULL,
  `Member_Qualification` varchar(14) DEFAULT NULL,
  `Member_Work_With` varchar(14) DEFAULT NULL,
  `Member_Occupation` varchar(25) DEFAULT NULL,
  `Member_Designation` varchar(16) DEFAULT NULL,
  `Member_Company_Name` varchar(150) DEFAULT NULL,
  `Member_Income` int(11) DEFAULT NULL,
  `Member_Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_member_qualification`
--

INSERT INTO `tbl_member_qualification` (`Member_Qualification_ID`, `Member_Detail_ID`, `Member_Qualification`, `Member_Work_With`, `Member_Occupation`, `Member_Designation`, `Member_Company_Name`, `Member_Income`, `Member_Description`) VALUES
(7, 9, 'BCA', 'government', 'Doctor', 'Job', 'abc', 50000, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(14, 539, 'M.B.A', 'Private', 'Bussiness', 'Accountant', 'Dream HIgh', 50000, 'hello this is sonu'),
(16, 540, 'BBA', 'Government', 'Clerk', 'Job', 'iuadv iaspib', 75000, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(17, 541, 'M.com', 'government', 'Businessman', 'Accountant', NULL, 40000, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(18, 542, 'B.ed', 'Government', 'Librarian', 'Clerk', 'Veer narmad co.pvt', 15200, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(21, 545, 'B.C.A', 'Private', 'Bussiness', 'Clerk', 'Stark info.co.pvt', 250000, 'I have 2.5 years of Exp. in my career.'),
(22, 546, 'ACCA', 'Private', 'Librarian', 'Admin', 'M & Sons', 25000, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(24, 548, 'B.com', 'Government', 'Teacher', 'Job', 'test', 20000, 'testing'),
(25, 550, 'M.com', 'Private', 'Teacher', 'Job', 'Company', 180000, 'About Me...........'),
(26, 551, 'B.B.A', 'Private', 'Doctor', 'Clerk', 'opqe;lvmoj', 250000, 'I am a boy..............'),
(27, 552, 'M.com', 'Government', 'Mamager', 'Clerk', 'up state', 180000, 'i am sonu mehta'),
(31, 557, 'Other', 'Private', 'Other', 'Other', 'Bharat Forge', 300000, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(33, 559, 'B.C.A', 'Government', 'Teacher', 'Admin', 'xyz', 200000, 'I am outgoing, dedicated, and open-minded. I get across to people and adjust to changes with ease.'),
(35, 564, 'B.B.A', 'Government', 'Bussiness', 'Admin', 'abcd', 1234567, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised'),
(37, 565, 'B.com', 'Private', 'Teacher', 'HR', 'google', 20000, 'i will try to my best '),
(40, 570, 'B.A', 'Self Employee', 'Social Worker', 'Other', '', 123456, 'ybswvlwrpv wvkwnhepc;mc;wevewcnwelkcnwe'),
(41, 571, 'B.com', 'Government', 'Librarian', 'Other', 'abcdhhh co. ltd.', 6547989, 'I have 2.5 years of Exp. in my career.'),
(42, 572, 'B.A', 'Private', 'Bussiness', 'Financer', 'abcdefg co.Ltd', 123321, 'I have 5 years of Exp. in my career.'),
(43, 573, 'M.B.A', 'Private', 'Doctor', 'Admin', 'Aadhri hospital', 300000, 'I am a doctor. I have 10 years of experience. I had completed my MBA.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `Package_ID` int(4) NOT NULL,
  `Package_Name` varchar(20) NOT NULL,
  `Package_Price` int(10) NOT NULL,
  `Package_Duration` varchar(20) NOT NULL,
  `Package_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`Package_ID`, `Package_Name`, `Package_Price`, `Package_Duration`, `Package_Status`) VALUES
(1, 'Silver', 899, '2', '1'),
(2, 'Gold', 1599, '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_detail`
--

CREATE TABLE `tbl_package_detail` (
  `Package_Detail_ID` int(4) NOT NULL,
  `Package_ID` int(4) NOT NULL,
  `Member_ID` int(11) NOT NULL,
  `Purchase_Date` date NOT NULL,
  `Package_Exp_Date` date NOT NULL,
  `Package_Detail_Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_package_detail`
--

INSERT INTO `tbl_package_detail` (`Package_Detail_ID`, `Package_ID`, `Member_ID`, `Purchase_Date`, `Package_Exp_Date`, `Package_Detail_Status`) VALUES
(6, 1, 174, '2021-06-06', '2021-12-06', 1),
(7, 1, 170, '2021-06-06', '2021-12-06', 1),
(8, 1, 168, '2021-06-09', '2021-12-09', 1),
(9, 2, 184, '2021-06-11', '2021-10-11', 1),
(10, 1, 103, '2021-06-25', '2021-08-25', 1),
(11, 1, 195, '2021-06-25', '2021-08-25', 1),
(12, 1, 196, '2021-06-26', '2021-08-26', 1),
(13, 1, 196, '2021-06-26', '2021-08-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_send_request`
--

CREATE TABLE `tbl_send_request` (
  `Request_ID` int(4) NOT NULL,
  `Member_ID` int(4) NOT NULL,
  `Send_Request_ID` varchar(60) NOT NULL,
  `Request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_send_request`
--

INSERT INTO `tbl_send_request` (`Request_ID`, `Member_ID`, `Send_Request_ID`, `Request_date`) VALUES
(7, 103, '161', '2021-06-04'),
(8, 103, '162,168', '2021-06-04'),
(9, 162, '161,162', '2021-06-04'),
(10, 162, '161,162,166,168', '2021-06-04'),
(11, 169, '167', '2021-06-06'),
(14, 170, '168,169', '2021-06-06'),
(15, 172, '161,162,166,168,169', '2021-06-06'),
(16, 172, '161,162,166,168,169,173', '2021-06-07'),
(17, 172, '161,162,166,168,169,173', '2021-06-07'),
(23, 180, '162,169', '2021-06-08'),
(24, 182, '103,164,165,167,170,172,174,180', '2021-06-09'),
(25, 184, '165,170,172,174,180', '2021-06-11'),
(26, 174, '162,166,169,173,184', '2021-06-15'),
(28, 188, '161,162,166,168,169,173,178,182', '2021-06-19'),
(30, 193, '103,164,165,167,170,172,174,180,188', '2021-06-25'),
(31, 194, '161,162,166,168,169,173,178,182,189,193', '2021-06-25'),
(32, 195, '161,162,166,168,169,173,178,182,189,193', '2021-06-25'),
(33, 196, '103,164,165,170,172,174,180,188,194,195', '2021-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `State_ID` int(4) NOT NULL,
  `State_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`State_ID`, `State_Name`) VALUES
(1, 'Andhra Pradesh'),
(7, 'Assam'),
(8, 'Bihar'),
(9, 'Goa'),
(2, 'Gujarat'),
(10, 'Haryana'),
(3, 'Jammu and Kashmir'),
(11, 'Jharkhand'),
(12, 'Kerala'),
(4, 'Madhya Pradesh'),
(13, 'Maharashtra'),
(5, 'Punjab'),
(6, 'Tamil Nadu'),
(14, 'Uttarakhand'),
(15, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_community`
--

CREATE TABLE `tbl_sub_community` (
  `Sub_Community_ID` int(4) NOT NULL,
  `Community_ID` int(4) NOT NULL,
  `Sub_Community_Name` varchar(20) NOT NULL,
  `Sub_Community_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sub_community`
--

INSERT INTO `tbl_sub_community` (`Sub_Community_ID`, `Community_ID`, `Sub_Community_Name`, `Sub_Community_Status`) VALUES
(19, 85, 'Patel', '1'),
(20, 82, 'Rajput', '1'),
(23, 85, 'Chauhan', '1'),
(24, 85, 'Rathod', '1'),
(25, 85, 'Rajput', '1'),
(26, 85, 'Solanki', '1'),
(27, 85, 'Parmar', '1'),
(28, 85, 'Desai', '1'),
(29, 82, 'Bhati', '1'),
(30, 82, 'Baurai', '1'),
(31, 82, 'Bartwal', '1'),
(32, 82, 'Bansal', '1'),
(35, 81, 'Ambekar', '1'),
(36, 81, 'Ankalikar', '1'),
(37, 81, 'Arondekar', '1'),
(38, 81, 'Apte', '1'),
(39, 85, 'Chowdhury', '1'),
(40, 85, 'Barot', '1'),
(41, 85, 'Ambani', '1'),
(42, 85, 'Ambekar', '1'),
(43, 90, 'Goswami', '1'),
(44, 90, 'Vishwakarma', '1'),
(45, 93, 'Anand', '1'),
(46, 93, 'Aneja', '1'),
(47, 93, 'Arora', '1'),
(48, 93, 'Atwal', '1'),
(49, 93, 'Bindra', '1'),
(50, 93, 'Chawla', '1'),
(51, 91, 'Adiga', '1'),
(52, 91, 'Aithal', '1'),
(53, 91, 'Akkur', '1'),
(54, 91, 'Anna', '1'),
(55, 91, 'Dasar', '1'),
(56, 91, 'Dixit', '1'),
(57, 91, 'Dundur', '1'),
(58, 92, 'Adhikari', '1'),
(59, 92, 'Bagchi', '1'),
(60, 92, 'Barman', '1'),
(61, 92, 'Bhaduri', '1'),
(62, 92, 'Biswas', '1'),
(63, 92, 'Das', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `Testimonial_ID` int(4) NOT NULL,
  `Member_ID` int(4) NOT NULL,
  `Testmonial_Date` date NOT NULL,
  `Member_Contact` bigint(11) NOT NULL,
  `Testimonial_Description` text NOT NULL,
  `Testimonial_Status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`Testimonial_ID`, `Member_ID`, `Testmonial_Date`, `Member_Contact`, `Testimonial_Description`, `Testimonial_Status`) VALUES
(2, 103, '2021-01-01', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1'),
(4, 169, '2021-06-30', 0, 'The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps.', '1'),
(5, 161, '2021-05-03', 0, 'The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps', '1'),
(6, 164, '2021-05-18', 0, 'The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox ', '1'),
(7, 103, '2021-06-12', 987754, 'hello', '1'),
(8, 168, '2021-06-12', 9874563210, 'hello, this site is amazing and i got my perfect partner over this site so I belive this is an perfect site for perfect life partner. peace out.', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `otp_status`
--
ALTER TABLE `otp_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD UNIQUE KEY `Admin_Email` (`Admin_Email`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`City_ID`),
  ADD UNIQUE KEY `City_Name` (`City_Name`),
  ADD KEY `fk` (`State_ID`);

--
-- Indexes for table `tbl_community`
--
ALTER TABLE `tbl_community`
  ADD PRIMARY KEY (`Community_ID`),
  ADD UNIQUE KEY `Community_Name` (`Community_Name`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`Faq_ID`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`Language_ID`),
  ADD UNIQUE KEY `Language` (`Language`);

--
-- Indexes for table `tbl_lifestyle`
--
ALTER TABLE `tbl_lifestyle`
  ADD PRIMARY KEY (`Lifestyle_ID`),
  ADD KEY `Member_Detail_ID` (`Member_Detail_ID`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`Member_ID`),
  ADD UNIQUE KEY `Member_Email` (`Member_Email`),
  ADD KEY `fk_city` (`Member_City`);

--
-- Indexes for table `tbl_member_detail`
--
ALTER TABLE `tbl_member_detail`
  ADD PRIMARY KEY (`Member_Detail_ID`),
  ADD KEY `Member_ID` (`Member_ID`),
  ADD KEY `Member_ID_2` (`Member_ID`),
  ADD KEY `sub_Community` (`Member_Sub_Community_ID`),
  ADD KEY `Language_ID` (`Language_ID`);

--
-- Indexes for table `tbl_member_qualification`
--
ALTER TABLE `tbl_member_qualification`
  ADD PRIMARY KEY (`Member_Qualification_ID`),
  ADD KEY `Member_Detail_ID` (`Member_Detail_ID`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`Package_ID`),
  ADD UNIQUE KEY `Package_Name` (`Package_Name`);

--
-- Indexes for table `tbl_package_detail`
--
ALTER TABLE `tbl_package_detail`
  ADD PRIMARY KEY (`Package_Detail_ID`),
  ADD KEY `Package_ID` (`Package_ID`);

--
-- Indexes for table `tbl_send_request`
--
ALTER TABLE `tbl_send_request`
  ADD PRIMARY KEY (`Request_ID`),
  ADD KEY `Member_ID` (`Member_ID`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`State_ID`),
  ADD UNIQUE KEY `State_Name` (`State_Name`);

--
-- Indexes for table `tbl_sub_community`
--
ALTER TABLE `tbl_sub_community`
  ADD PRIMARY KEY (`Sub_Community_ID`),
  ADD KEY `Community_ID` (`Community_ID`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`Testimonial_ID`),
  ADD KEY `Member_ID` (`Member_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `otp_status`
--
ALTER TABLE `otp_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `Admin_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `City_ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_community`
--
ALTER TABLE `tbl_community`
  MODIFY `Community_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `Faq_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `Language_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_lifestyle`
--
ALTER TABLE `tbl_lifestyle`
  MODIFY `Lifestyle_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `Member_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `tbl_member_detail`
--
ALTER TABLE `tbl_member_detail`
  MODIFY `Member_Detail_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `tbl_member_qualification`
--
ALTER TABLE `tbl_member_qualification`
  MODIFY `Member_Qualification_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `Package_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_package_detail`
--
ALTER TABLE `tbl_package_detail`
  MODIFY `Package_Detail_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_send_request`
--
ALTER TABLE `tbl_send_request`
  MODIFY `Request_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `State_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_sub_community`
--
ALTER TABLE `tbl_sub_community`
  MODIFY `Sub_Community_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `Testimonial_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`State_ID`) REFERENCES `tbl_state` (`State_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_lifestyle`
--
ALTER TABLE `tbl_lifestyle`
  ADD CONSTRAINT `tbl_lifestyle_ibfk_1` FOREIGN KEY (`Member_Detail_ID`) REFERENCES `tbl_member_detail` (`Member_Detail_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD CONSTRAINT `tbl_member_ibfk_1` FOREIGN KEY (`Member_City`) REFERENCES `tbl_city` (`City_ID`);

--
-- Constraints for table `tbl_member_detail`
--
ALTER TABLE `tbl_member_detail`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Member_Sub_Community_ID`) REFERENCES `tbl_sub_community` (`Sub_Community_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_member_detail_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `tbl_member` (`Member_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_member_detail_ibfk_2` FOREIGN KEY (`Language_ID`) REFERENCES `tbl_language` (`Language_ID`);

--
-- Constraints for table `tbl_member_qualification`
--
ALTER TABLE `tbl_member_qualification`
  ADD CONSTRAINT `tbl_member_qualification_ibfk_1` FOREIGN KEY (`Member_Detail_ID`) REFERENCES `tbl_member_detail` (`Member_Detail_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_package_detail`
--
ALTER TABLE `tbl_package_detail`
  ADD CONSTRAINT `tbl_package_detail_ibfk_1` FOREIGN KEY (`Package_ID`) REFERENCES `tbl_package` (`Package_ID`);

--
-- Constraints for table `tbl_send_request`
--
ALTER TABLE `tbl_send_request`
  ADD CONSTRAINT `tbl_send_request_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `tbl_member` (`Member_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_sub_community`
--
ALTER TABLE `tbl_sub_community`
  ADD CONSTRAINT `tbl_sub_community_ibfk_1` FOREIGN KEY (`Community_ID`) REFERENCES `tbl_community` (`Community_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD CONSTRAINT `tbl_testimonial_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `tbl_member` (`Member_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
