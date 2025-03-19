-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 05:36 AM
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
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `admin_id` int(3) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(60) NOT NULL,
  `admin_contact` bigint(10) NOT NULL,
  `admin_city` varchar(8) NOT NULL,
  `admin_profile` text NOT NULL,
  `admin_status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_contact`, `admin_city`, `admin_profile`, `admin_status`) VALUES
(1, 'Keval bhavsar', 'kevalbhavsar2712@gmail.com', '111', 7069683976, 'Select C', '6.jpg', '1');

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
(9, 46, 39, 'Hello ', '2025-03-11 15:11:21', 0),
(10, 46, 39, 'How are you?\n\n', '2025-03-11 15:11:30', 0),
(11, 39, 46, 'Hiee \n\n', '2025-03-11 15:11:58', 0),
(12, 39, 46, 'Yess of couse', '2025-03-11 15:12:12', 0),
(13, 46, 39, 'ðŸ˜‡', '2025-03-11 15:12:31', 0),
(14, 44, 39, 'hii love', '2025-03-13 05:19:23', 0),
(15, 44, 39, 'how are you ?????????', '2025-03-13 05:19:50', 0),
(16, 39, 44, 'i am fine wbu?', '2025-03-13 05:21:22', 0),
(17, 44, 39, '??', '2025-03-13 05:22:35', 0),
(18, 39, 44, 'hii rishi?', '2025-03-13 06:32:43', 0),
(19, 39, 44, '????', '2025-03-13 06:33:09', 0),
(20, 44, 39, 'byyyyyyy', '2025-03-18 04:35:34', 1),
(21, 44, 39, 'mane tari sathe koi vaat nathi karvi', '2025-03-18 04:35:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city_tbl`
--

CREATE TABLE `city_tbl` (
  `city_id` int(12) NOT NULL,
  `city_name` varchar(25) NOT NULL,
  `state_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city_tbl`
--

INSERT INTO `city_tbl` (`city_id`, `city_name`, `state_id`) VALUES
(6, 'Surat', 7),
(7, 'Mumbai', 8),
(8, 'Ahemdabad', 7),
(9, 'Pune', 8);

-- --------------------------------------------------------

--
-- Table structure for table `community_tbl`
--

CREATE TABLE `community_tbl` (
  `community_id` int(4) NOT NULL,
  `community_name` varchar(15) NOT NULL,
  `community_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `community_tbl`
--

INSERT INTO `community_tbl` (`community_id`, `community_name`, `community_status`) VALUES
(18, 'Marwadi', '1'),
(19, 'Gachi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `faq_tbl`
--

CREATE TABLE `faq_tbl` (
  `faq_id` int(4) NOT NULL,
  `faq_que` varchar(45) NOT NULL,
  `faq_ans` text NOT NULL,
  `faq_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faq_tbl`
--

INSERT INTO `faq_tbl` (`faq_id`, `faq_que`, `faq_ans`, `faq_status`) VALUES
(9, 'How to register on vivaahmilan123@gmail.com', 'Registering on vivaahmilan123@gmail.com is simple & completely free. The profile can be created by the person intended to get married, his/her parents, relatives or friends for him. Any person of legal age who intends to find a life partner can register.\r\n\r\nRegistration can be done using the m4marry website or mobile (Android/iOS). Start by entering basic details of the bride/groom-to-be, following which there will be a mandatory mobile verification. Once the mobile number is successfully verified, fill in the rest of your profile to complete the registration process. A profile ID will be generated automatically.', '1'),
(10, 'What do I enter in the field About Me?', '‘About Me’ is where you can enter a description of yourself. Most members who view your profile get a picture of you based on what you enter here. Mention the kind of person you are, your job profile, interests and so on. All content in this space will be screened for objectionable matter. Please do not enter contact details in this space to avoid the entries being rejected.', '1'),
(11, ' How do I search for my partner?', 'You can search for your partner on m4marry.com using the simple search. You can also use the advanced search to broaden the search criteria.\r\n\r\nThe search results can be further filtered by a number of parameters.', '1'),
(12, 'Can I save my search?', 'As a valued subscriber of wedding bliss, you can use our Advanced Search parameters to filter matching members based on your preferences. These search preferences can be saved to your profile, allowing you to quickly fetch matches without manually reselecting your criteria.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_tbl`
--

CREATE TABLE `lifestyle_tbl` (
  `lifestyle_id` int(4) NOT NULL,
  `member_detail_id` int(4) NOT NULL,
  `bloodgroup` varchar(15) NOT NULL,
  `hobbies_interest` varchar(200) NOT NULL,
  `member_diet` varchar(20) NOT NULL,
  `language_known` varchar(200) NOT NULL,
  `residential_status` text NOT NULL,
  `smoking_habbits` varchar(150) NOT NULL,
  `drinking_habbits` varchar(15) NOT NULL,
  `vehicles_having` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lifestyle_tbl`
--

INSERT INTO `lifestyle_tbl` (`lifestyle_id`, `member_detail_id`, `bloodgroup`, `hobbies_interest`, `member_diet`, `language_known`, `residential_status`, `smoking_habbits`, `drinking_habbits`, `vehicles_having`) VALUES
(32, 98, 'A+', 'Books Reading,Watching,Movies', 'Veg', 'Gujarati,English,Kannad,Marathi', 'Purple orchids flats, pal', 'Occasionaly', 'Occasionaly', '3'),
(33, 99, 'B-', 'Cooking,Hangout with Family,Modelling', 'Non-Veg', 'English,Kannad', 'Pearl residency', 'NO', 'NO', '2'),
(35, 101, 'O-', 'Books Reading,Yoga,Volleyball', 'Veg', 'English,Hindi,Punjabi', 'Krishna flats', 'NO', 'Occasionaly', '1'),
(37, 103, 'B+', 'Yoga', 'Non-Veg', 'Kannad', 'New Mumbai', 'Occasionaly', 'Occasionaly', '1'),
(38, 104, 'O-', 'Books Reading,Modelling', 'Any', 'Gujarati,English,Hindi,Marathi', 'Navi Mumbai Near Marin Drive', 'Occasionaly', 'Occasionaly', '1'),
(39, 105, 'O-', 'Adventure Travel,Books Reading,Volleyball', 'Non-Veg', 'Gujarati,English,Hindi', 'Jangirpura,Umra', 'Occasionally', 'Occasionally', '1'),
(40, 106, 'A+', 'Modelling', 'Any', 'Hindi', 'keval', 'Occasionally', 'Occasionally', '1');

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
(20, 42, '2025-03-09 13:52:39', 'no'),
(21, 42, '2025-03-09 14:22:40', 'no'),
(22, 39, '2025-03-09 15:01:31', 'no'),
(23, 39, '2025-03-10 04:06:43', 'no'),
(24, 39, '2025-03-10 04:26:58', 'no'),
(25, 39, '2025-03-10 05:34:49', 'no'),
(26, 39, '2025-03-10 07:13:50', 'no'),
(27, 40, '2025-03-10 07:15:10', 'no'),
(28, 39, '2025-03-10 16:46:56', 'no'),
(29, 45, '2025-03-11 04:35:18', 'no'),
(30, 44, '2025-03-11 04:44:23', 'no'),
(31, 44, '2025-03-11 05:00:29', 'no'),
(32, 44, '2025-03-11 06:59:29', 'no'),
(33, 44, '2025-03-11 07:09:58', 'no'),
(34, 44, '2025-03-11 07:10:33', 'no'),
(35, 44, '2025-03-11 14:46:35', 'no'),
(36, 39, '2025-03-11 15:04:45', 'no'),
(37, 46, '2025-03-12 04:17:37', 'no'),
(38, 42, '2025-03-11 15:06:40', 'no'),
(39, 39, '2025-03-12 04:23:56', 'no'),
(40, 39, '2025-03-12 05:52:09', 'no'),
(41, 39, '2025-03-12 06:06:54', 'no'),
(42, 39, '2025-03-13 04:59:28', 'no'),
(43, 39, '2025-03-13 05:03:18', 'no'),
(44, 39, '2025-03-13 05:20:38', 'no'),
(45, 44, '2025-03-13 05:21:52', 'no'),
(46, 39, '2025-03-13 05:26:22', 'no'),
(47, 39, '2025-03-13 06:30:37', 'no'),
(48, 44, '2025-03-13 06:37:08', 'no'),
(49, 39, '2025-03-13 07:08:50', 'no'),
(50, 39, '2025-03-18 04:30:39', 'no'),
(51, 39, '2025-03-18 04:34:14', 'no'),
(52, 39, '2025-03-18 05:13:44', 'no'),
(53, 47, '2025-03-19 04:29:13', 'no'),
(54, 47, '2025-03-19 04:36:03', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `member_detail_tbl`
--

CREATE TABLE `member_detail_tbl` (
  `member_detail_id` int(4) NOT NULL,
  `member_id` int(4) NOT NULL,
  `member_sub_community_id` int(4) NOT NULL,
  `member_religion` varchar(25) NOT NULL,
  `member_with_family` varchar(15) NOT NULL,
  `member_childrens` varchar(20) NOT NULL,
  `member_height` float NOT NULL,
  `member_weight` tinyint(3) NOT NULL,
  `caste_no_bar` enum('1','0') NOT NULL,
  `marital_status` varchar(25) NOT NULL,
  `member_birthplace` varchar(25) NOT NULL,
  `member_body_type` varchar(15) NOT NULL,
  `member_complexion` varchar(15) NOT NULL,
  `member_rashi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member_detail_tbl`
--

INSERT INTO `member_detail_tbl` (`member_detail_id`, `member_id`, `member_sub_community_id`, `member_religion`, `member_with_family`, `member_childrens`, `member_height`, `member_weight`, `caste_no_bar`, `marital_status`, `member_birthplace`, `member_body_type`, `member_complexion`, `member_rashi`) VALUES
(98, 39, 10, 'Hindu', 'no', '1', 5.8, 55, '1', 'Awaiting', 'Surat', 'Normal', 'Brown', 'Mesh'),
(99, 40, 8, 'Hindu', 'yes', '1', 5.1, 40, '1', 'Divorced', 'Ahemdabad', 'Skinny', 'Normal', 'Vrischika'),
(101, 42, 10, 'Parsi', 'yes', '1', 4.8, 45, '1', 'Separated', 'Pune ', 'Normal', 'Normal', 'Varishabha'),
(103, 44, 11, 'Jain', 'no', '1', 7.7, 60, '1', 'Divorced', 'Mumbai', 'Normal', 'Normal', 'Mithuna'),
(104, 45, 9, 'Buddhist', 'no', '1', 6.6, 66, '0', 'Single', 'Surat', 'Fat', 'Brown', 'Mesh'),
(105, 46, 11, 'Parsi', 'no', '1', 6.7, 39, '0', 'Separated', 'Tinsukia', 'Skinny', 'Normal', 'Karka'),
(106, 47, 9, 'Christian', 'yes', '1', 6.1, 70, '1', 'Single', 'Surat', 'Skinny', 'Brown', 'Mithuna');

-- --------------------------------------------------------

--
-- Table structure for table `member_qualification_tbl`
--

CREATE TABLE `member_qualification_tbl` (
  `member_qualification_id` int(4) NOT NULL,
  `member_detail_id` int(4) NOT NULL,
  `member_qualification` varchar(50) NOT NULL,
  `member_work_with` varchar(50) NOT NULL,
  `member_occupation` varchar(50) NOT NULL,
  `member_designation` varchar(50) NOT NULL,
  `member_company_name` varchar(150) NOT NULL,
  `member_income` double NOT NULL,
  `member_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member_qualification_tbl`
--

INSERT INTO `member_qualification_tbl` (`member_qualification_id`, `member_detail_id`, `member_qualification`, `member_work_with`, `member_occupation`, `member_designation`, `member_company_name`, `member_income`, `member_description`) VALUES
(55, 98, 'M.B.B.S.', 'Government', 'Doctor', 'Other', 'MMM', 500000, 'hi hello my name is jay...'),
(56, 99, 'B.B.A', 'Government', 'Librarian', 'Accountant', 'Tata', 300000, 'helloo hiee....'),
(58, 101, 'M.com', 'Self Employee', 'Social Worker', 'Clerk', 'MMM', 20000, 'gvhvkmjnk,jbjhcghvkjn,kngchjblknhjvhhhhhhhhhhhhhhh'),
(60, 103, 'M.B.A', 'Self Employee', 'Social Worker', 'Other', 'LNT', 900000, 'Test'),
(61, 104, 'B.com', 'Self Employee', 'Doctor', 'Accountant', 'Kiya', 760000, 'Testt'),
(62, 105, 'L.L.B.', 'Government', 'Other', 'Other', 'Court', 890000, 'TESTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT'),
(63, 106, 'B.C.A', 'Private', 'Doctor', '', 'ni kev', 200000, 'sjbdjbwljbcqebjlqbjlbjlb');

-- --------------------------------------------------------

--
-- Table structure for table `member_tbl`
--

CREATE TABLE `member_tbl` (
  `member_id` int(4) NOT NULL,
  `member_city` int(4) DEFAULT NULL,
  `member_image` varchar(50) DEFAULT NULL,
  `member_firstname` varchar(30) DEFAULT NULL,
  `member_lastname` varchar(30) DEFAULT NULL,
  `member_adhar_id` varchar(30) DEFAULT NULL,
  `member_contact` varchar(16) DEFAULT NULL,
  `member_email` varchar(100) NOT NULL,
  `member_password` varchar(30) DEFAULT NULL,
  `member_profile_for` varchar(15) DEFAULT NULL,
  `member_looking_for` varchar(20) DEFAULT NULL,
  `member_gender` varchar(6) DEFAULT NULL,
  `member_dob` date DEFAULT NULL,
  `member_profile_id` varchar(50) DEFAULT NULL,
  `member_age` int(3) DEFAULT NULL,
  `member_min_age` int(5) DEFAULT NULL,
  `member_max_age` int(5) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `member_status` enum('1','0') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member_tbl`
--

INSERT INTO `member_tbl` (`member_id`, `member_city`, `member_image`, `member_firstname`, `member_lastname`, `member_adhar_id`, `member_contact`, `member_email`, `member_password`, `member_profile_for`, `member_looking_for`, `member_gender`, `member_dob`, `member_profile_id`, `member_age`, `member_min_age`, `member_max_age`, `registration_date`, `member_status`) VALUES
(39, 6, '202503180531496.jpg', 'Jay', 'Rathod', '123456789990', '7990472366', 'jay12@gmail.com', '12345', 'Son', 'Female', 'Male', '1999-02-10', '2025541002', 26, 20, 27, '2025-03-03', '1'),
(40, 8, 'member4.jpg', 'Dency', 'Shetty', '123456789012', '9913673607', 'dency15@gmail.com', '12345', 'Myself', 'Male', 'Female', '2000-02-01', '2025180102', 21, 22, 26, '2025-03-03', '1'),
(42, 9, 'member9.jpg', 'Meet', 'Mithaiwala', '123456789997', '9913673607', 'meet23@gmail.com', '12345', 'Brother', 'Female', 'Male', '2002-06-28', '2025042806', 22, 21, 26, '2025-03-03', '1'),
(44, 7, 'member3.jpg', 'Jenny', 'Daruwala', '123455432186', '9090215926', 'jenny0506@gmail.com', '12345', 'Daughter', 'Male', 'Female', '2001-11-05', '2025020511', 23, 25, 29, '2025-03-04', '0'),
(45, 7, 'member5.jpg', 'Veera', 'Desai', '123456769997', '9979561316', 'veera@gmail.com', '12345', 'Daughter', 'Male', 'Female', '2000-11-15', '2025201511', 24, 22, 26, '2025-03-06', '1'),
(46, 6, 'member6.jpg', 'Pooja', 'Tripathi', '683921640867', '8686412248', 'poojatripathi@gmail.com', '12345', 'Daughter', 'Male', 'Female', '1994-05-31', '2025353105', 30, 31, 35, '2025-03-11', '1'),
(47, 8, '202503190529146.jpg', 'keval', 'bhav', '123456789090', '2233445566', 'kevalbhavsar2712@gmail.com', '12345', 'Son', 'Female', 'Male', '2004-12-16', '2025291612', 20, 25, 30, '2025-03-12', '1');

-- --------------------------------------------------------

--
-- Table structure for table `otp_status_tbl`
--

CREATE TABLE `otp_status_tbl` (
  `id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `otp_status` enum('1','0') NOT NULL,
  `create_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `otp_status_tbl`
--

INSERT INTO `otp_status_tbl` (`id`, `otp`, `otp_status`, `create_at`) VALUES
(1, 412838, '1', '1741760966'),
(2, 335664, '1', '1741761335'),
(3, 276327, '1', '1741761349'),
(4, 173084, '1', '1741761735'),
(5, 958538, '1', '1741761796'),
(6, 486143, '1', '1741761848'),
(7, 785167, '1', '1741762097');

-- --------------------------------------------------------

--
-- Table structure for table `package_detail_tbl`
--

CREATE TABLE `package_detail_tbl` (
  `package_detail_id` int(4) NOT NULL,
  `package_id` int(4) NOT NULL,
  `member_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `package_exp_date` date NOT NULL,
  `package_detail_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `package_detail_tbl`
--

INSERT INTO `package_detail_tbl` (`package_detail_id`, `package_id`, `member_id`, `payment_id`, `purchase_date`, `package_exp_date`, `package_detail_status`) VALUES
(13, 7, 45, 1, '2025-03-06', '2025-04-06', 1),
(15, 6, 40, 2, '2025-03-06', '2025-05-06', 1),
(16, 5, 42, 3, '2025-03-06', '2025-06-06', 1),
(18, 7, 45, 5, '2025-03-11', '2025-04-11', 1),
(21, 7, 44, 8, '2025-03-11', '2025-04-11', 1),
(22, 6, 46, 9, '2025-03-11', '2025-05-11', 1),
(23, 5, 47, 10, '2025-03-12', '2025-06-12', 1),
(24, 5, 39, 11, '2025-03-18', '2025-06-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_tbl`
--

CREATE TABLE `package_tbl` (
  `package_id` int(4) NOT NULL,
  `package_name` varchar(20) NOT NULL,
  `package_price` int(10) NOT NULL,
  `package_duration` varchar(20) NOT NULL,
  `package_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `package_tbl`
--

INSERT INTO `package_tbl` (`package_id`, `package_name`, `package_price`, `package_duration`, `package_status`) VALUES
(5, 'Gold', 5000, '3', '1'),
(6, 'Silver', 2000, '2', '1'),
(7, 'Platinum', 500, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment_tbl`
--

CREATE TABLE `payment_tbl` (
  `payment_id` int(11) NOT NULL,
  `razorpay_payment_id` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','success','failed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_tbl`
--

INSERT INTO `payment_tbl` (`payment_id`, `razorpay_payment_id`, `total_amount`, `payment_status`, `created_at`) VALUES
(1, 'pay_Q3OrfiPCPRI9Zz', 500.00, 'success', '2025-03-06 06:07:17'),
(2, 'pay_Q3YacPUXl2FDcn', 2000.00, 'success', '2025-03-06 15:38:03'),
(3, 'pay_Q3YkAvRCVTG5iV', 5000.00, 'success', '2025-03-06 15:47:06'),
(4, 'pay_Q3Zw6o3TXMhSVc', 500.00, 'success', '2025-03-06 16:57:04'),
(5, 'pay_Q5Lz7s9jZTbTe0', 500.00, 'success', '2025-03-11 04:36:14'),
(8, 'pay_Q5MS7uTDsYXPSV', 500.00, 'success', '2025-03-11 05:04:14'),
(9, 'pay_Q5WbnamaO59sVQ', 2000.00, 'success', '2025-03-11 14:59:50'),
(10, 'pay_Q5lynefvAu1ysy', 5000.00, 'success', '2025-03-12 06:02:15'),
(11, 'pay_Q87dWPvXasfRlD', 5000.00, 'success', '2025-03-18 04:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `send_request_tbl`
--

CREATE TABLE `send_request_tbl` (
  `request_id` int(4) NOT NULL,
  `member_id` int(4) NOT NULL,
  `send_request_id` text NOT NULL,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `send_request_tbl`
--

INSERT INTO `send_request_tbl` (`request_id`, `member_id`, `send_request_id`, `request_date`) VALUES
(30, 46, '{\"39\":\"accepted\",\"42\":\"accepted\"}', '2025-03-11 14:56:52'),
(31, 47, '{\"40\":\"pending\",\"44\":\"pending\",\"45\":\"pending\"}', '2025-03-12 07:01:38'),
(32, 44, '{\"39\":\"accepted\"}', '2025-03-13 07:31:04'),
(33, 39, '{\"40\":\"pending\"}', '2025-03-18 05:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `state_tbl`
--

CREATE TABLE `state_tbl` (
  `state_id` int(4) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state_tbl`
--

INSERT INTO `state_tbl` (`state_id`, `state_name`) VALUES
(7, 'Gujarat'),
(8, 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `sub_community_tbl`
--

CREATE TABLE `sub_community_tbl` (
  `sub_community_id` int(4) NOT NULL,
  `community_id` int(4) NOT NULL,
  `sub_community_name` varchar(20) NOT NULL,
  `sub_community_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_community_tbl`
--

INSERT INTO `sub_community_tbl` (`sub_community_id`, `community_id`, `sub_community_name`, `sub_community_status`) VALUES
(8, 18, 'Patil', '1'),
(9, 19, 'Surti Gachi', '1'),
(10, 18, 'Rathod', '1'),
(11, 19, 'Ahemdabai Gachi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_tbl`
--

CREATE TABLE `testimonial_tbl` (
  `testimonial_id` int(4) NOT NULL,
  `member_id` int(4) NOT NULL,
  `testimonial_date` date NOT NULL,
  `member_contact` bigint(11) NOT NULL,
  `testimonial_description` text NOT NULL,
  `testimonial_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testimonial_tbl`
--

INSERT INTO `testimonial_tbl` (`testimonial_id`, `member_id`, `testimonial_date`, `member_contact`, `testimonial_description`, `testimonial_status`) VALUES
(1, 39, '2025-03-18', 7990212140, 'I Love your website', '1'),
(2, 40, '2025-02-10', 9913673607, 'Finally,I find my Patner ', '1'),
(4, 42, '2023-11-24', 9825361316, 'I Love this,Finally I\'m Married', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `city_tbl`
--
ALTER TABLE `city_tbl`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_name` (`city_name`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `community_tbl`
--
ALTER TABLE `community_tbl`
  ADD PRIMARY KEY (`community_id`),
  ADD UNIQUE KEY `community_name` (`community_name`);

--
-- Indexes for table `faq_tbl`
--
ALTER TABLE `faq_tbl`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `lifestyle_tbl`
--
ALTER TABLE `lifestyle_tbl`
  ADD PRIMARY KEY (`lifestyle_id`),
  ADD KEY `member_detail_id` (`member_detail_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `member_detail_tbl`
--
ALTER TABLE `member_detail_tbl`
  ADD PRIMARY KEY (`member_detail_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `member_sub_community_id` (`member_sub_community_id`);

--
-- Indexes for table `member_qualification_tbl`
--
ALTER TABLE `member_qualification_tbl`
  ADD PRIMARY KEY (`member_qualification_id`),
  ADD KEY `member_detail_id` (`member_detail_id`);

--
-- Indexes for table `member_tbl`
--
ALTER TABLE `member_tbl`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_email` (`member_email`),
  ADD KEY `member_image` (`member_image`),
  ADD KEY `member_city` (`member_city`);

--
-- Indexes for table `otp_status_tbl`
--
ALTER TABLE `otp_status_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_detail_tbl`
--
ALTER TABLE `package_detail_tbl`
  ADD PRIMARY KEY (`package_detail_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `package_tbl`
--
ALTER TABLE `package_tbl`
  ADD PRIMARY KEY (`package_id`),
  ADD UNIQUE KEY `package_name` (`package_name`);

--
-- Indexes for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `send_request_tbl`
--
ALTER TABLE `send_request_tbl`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `state_tbl`
--
ALTER TABLE `state_tbl`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`);

--
-- Indexes for table `sub_community_tbl`
--
ALTER TABLE `sub_community_tbl`
  ADD PRIMARY KEY (`sub_community_id`),
  ADD KEY `community_id` (`community_id`);

--
-- Indexes for table `testimonial_tbl`
--
ALTER TABLE `testimonial_tbl`
  ADD PRIMARY KEY (`testimonial_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `city_tbl`
--
ALTER TABLE `city_tbl`
  MODIFY `city_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `community_tbl`
--
ALTER TABLE `community_tbl`
  MODIFY `community_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `faq_tbl`
--
ALTER TABLE `faq_tbl`
  MODIFY `faq_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lifestyle_tbl`
--
ALTER TABLE `lifestyle_tbl`
  MODIFY `lifestyle_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `member_detail_tbl`
--
ALTER TABLE `member_detail_tbl`
  MODIFY `member_detail_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `member_qualification_tbl`
--
ALTER TABLE `member_qualification_tbl`
  MODIFY `member_qualification_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `member_tbl`
--
ALTER TABLE `member_tbl`
  MODIFY `member_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `otp_status_tbl`
--
ALTER TABLE `otp_status_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package_detail_tbl`
--
ALTER TABLE `package_detail_tbl`
  MODIFY `package_detail_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `package_tbl`
--
ALTER TABLE `package_tbl`
  MODIFY `package_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `send_request_tbl`
--
ALTER TABLE `send_request_tbl`
  MODIFY `request_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `state_tbl`
--
ALTER TABLE `state_tbl`
  MODIFY `state_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_community_tbl`
--
ALTER TABLE `sub_community_tbl`
  MODIFY `sub_community_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonial_tbl`
--
ALTER TABLE `testimonial_tbl`
  MODIFY `testimonial_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city_tbl`
--
ALTER TABLE `city_tbl`
  ADD CONSTRAINT `city_tbl_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_tbl` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lifestyle_tbl`
--
ALTER TABLE `lifestyle_tbl`
  ADD CONSTRAINT `lifestyle_tbl_ibfk_1` FOREIGN KEY (`member_detail_id`) REFERENCES `member_detail_tbl` (`member_detail_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_detail_tbl`
--
ALTER TABLE `member_detail_tbl`
  ADD CONSTRAINT `member_detail_tbl_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_tbl` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_detail_tbl_ibfk_2` FOREIGN KEY (`member_sub_community_id`) REFERENCES `sub_community_tbl` (`sub_community_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_qualification_tbl`
--
ALTER TABLE `member_qualification_tbl`
  ADD CONSTRAINT `member_qualification_tbl_ibfk_1` FOREIGN KEY (`member_detail_id`) REFERENCES `member_detail_tbl` (`member_detail_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_tbl`
--
ALTER TABLE `member_tbl`
  ADD CONSTRAINT `member_tbl_ibfk_1` FOREIGN KEY (`member_city`) REFERENCES `city_tbl` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_detail_tbl`
--
ALTER TABLE `package_detail_tbl`
  ADD CONSTRAINT `package_detail_tbl_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `package_tbl` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `package_detail_tbl_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member_tbl` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `send_request_tbl`
--
ALTER TABLE `send_request_tbl`
  ADD CONSTRAINT `send_request_tbl_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_tbl` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_community_tbl`
--
ALTER TABLE `sub_community_tbl`
  ADD CONSTRAINT `sub_community_tbl_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `community_tbl` (`community_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonial_tbl`
--
ALTER TABLE `testimonial_tbl`
  ADD CONSTRAINT `testimonial_tbl_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member_tbl` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
