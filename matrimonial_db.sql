-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2025 at 06:40 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `matrimonial_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `admin_id` int(3) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_password` varchar(60) NOT NULL,
  `admin_contact` bigint(10) NOT NULL,
  `admin_city` varchar(8) NOT NULL,
  `admin_profile` text NOT NULL,
  `admin_status` enum('0','1') NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_email` (`admin_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_contact`, `admin_city`, `admin_profile`, `admin_status`) VALUES
(2, 'Mithaiwala Shreya ', 'shreyamithaiwala1205@gmail.com', '123', 7990212140, 'Surat', 'admin3.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE IF NOT EXISTS `chat_message` (
  `chat_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`chat_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 39, 45, 'hello', '2025-03-07 14:15:15', 0),
(2, 39, 45, 'hello', '2025-03-07 14:15:18', 0),
(3, 45, 39, 'hey', '2025-03-07 14:24:23', 0),
(4, 45, 39, 'hiii\n', '2025-03-08 04:39:28', 0),
(5, 45, 39, 'hiii\n', '2025-03-08 04:39:30', 0),
(6, 39, 45, 'hello', '2025-03-08 04:39:56', 0),
(7, 45, 39, 'hey', '2025-03-08 04:50:45', 0),
(8, 45, 39, 'hey', '2025-03-08 04:55:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `city_tbl`
--

CREATE TABLE IF NOT EXISTS `city_tbl` (
  `city_id` int(12) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(25) NOT NULL,
  `state_id` int(4) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_name` (`city_name`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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

CREATE TABLE IF NOT EXISTS `community_tbl` (
  `community_id` int(4) NOT NULL AUTO_INCREMENT,
  `community_name` varchar(15) NOT NULL,
  `community_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`community_id`),
  UNIQUE KEY `community_name` (`community_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

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

CREATE TABLE IF NOT EXISTS `faq_tbl` (
  `faq_id` int(4) NOT NULL AUTO_INCREMENT,
  `faq_que` varchar(45) NOT NULL,
  `faq_ans` text NOT NULL,
  `faq_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `faq_tbl`
--

INSERT INTO `faq_tbl` (`faq_id`, `faq_que`, `faq_ans`, `faq_status`) VALUES
(9, 'How to register on weddingbliss2526@gmail.com', 'Registering on weddingbliss2526@gmail.com is simple & completely free. The profile can be created by the person intended to get married, his/her parents, relatives or friends for him. Any person of legal age who intends to find a life partner can register.\r\n\r\nRegistration can be done using the m4marry website or mobile (Android/iOS). Start by entering basic details of the bride/groom-to-be, following which there will be a mandatory mobile verification. Once the mobile number is successfully verified, fill in the rest of your profile to complete the registration process. A profile ID will be generated automatically.', '1'),
(10, 'What do I enter in the field About Me?', '‘About Me’ is where you can enter a description of yourself. Most members who view your profile get a picture of you based on what you enter here. Mention the kind of person you are, your job profile, interests and so on. All content in this space will be screened for objectionable matter. Please do not enter contact details in this space to avoid the entries being rejected.', '1'),
(11, ' How do I search for my partner?', 'You can search for your partner on m4marry.com using the simple search. You can also use the advanced search to broaden the search criteria.\r\n\r\nThe search results can be further filtered by a number of parameters.', '1'),
(12, 'Can I save my search?', 'As a valued subscriber of wedding bliss, you can use our Advanced Search parameters to filter matching members based on your preferences. These search preferences can be saved to your profile, allowing you to quickly fetch matches without manually reselecting your criteria.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `friend_list_tbl`
--

CREATE TABLE IF NOT EXISTS `friend_list_tbl` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `logged_member_id` int(11) NOT NULL,
  `accepted_member_id` int(11) NOT NULL,
  `accept_date_time` datetime DEFAULT NULL,
  `status` enum('pending','accepted','denied') DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_tbl`
--

CREATE TABLE IF NOT EXISTS `lifestyle_tbl` (
  `lifestyle_id` int(4) NOT NULL AUTO_INCREMENT,
  `member_detail_id` int(4) NOT NULL,
  `bloodgroup` varchar(15) NOT NULL,
  `hobbies_interest` varchar(200) NOT NULL,
  `member_diet` varchar(20) NOT NULL,
  `language_known` varchar(200) NOT NULL,
  `residential_status` text NOT NULL,
  `smoking_habbits` varchar(150) NOT NULL,
  `drinking_habbits` varchar(15) NOT NULL,
  `vehicles_having` varchar(20) NOT NULL,
  PRIMARY KEY (`lifestyle_id`),
  KEY `member_detail_id` (`member_detail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `lifestyle_tbl`
--

INSERT INTO `lifestyle_tbl` (`lifestyle_id`, `member_detail_id`, `bloodgroup`, `hobbies_interest`, `member_diet`, `language_known`, `residential_status`, `smoking_habbits`, `drinking_habbits`, `vehicles_having`) VALUES
(32, 98, 'A+', 'Books Reading,Watching,Movies', 'Veg', 'Gujarati,English,Kannad,Marathi', 'Purple orchids flats, pal', 'Occasionaly', 'Occasionaly', '3'),
(33, 99, 'B-', 'Cooking,Hangout with Family,Modelling', 'Non-Veg', 'English,Kannad', 'Pearl residency', 'NO', 'NO', '2'),
(34, 100, 'B+', 'Books Reading,Cooking,Music', 'Non-Veg', 'English,Hindi,Marathi', 'Sun residency', 'NO', 'Occasionaly', '2'),
(35, 101, 'O-', 'Books Reading,Yoga,Volleyball', 'Veg', 'English,Hindi,Punjabi', 'Krishna flats', 'NO', 'Occasionaly', '1'),
(36, 102, 'B+', 'Cooking,Music', 'Any', 'English,Hindi', 'adjan,pal surat', 'Occasionaly', 'NO', '2'),
(37, 103, 'B+', 'Yoga', 'Non-Veg', 'Kannad', 'New Mumbai', 'Occasionaly', 'Occasionaly', '1'),
(38, 104, 'O-', 'Books Reading,Modelling', 'Any', 'Gujarati,English,Hindi,Marathi', 'Navi Mumbai Near Marin Drive', 'Occasionaly', 'Occasionaly', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE IF NOT EXISTS `login_details` (
  `login_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL,
  PRIMARY KEY (`login_details_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(19, 39, '2025-03-08 06:40:35', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `member_detail_tbl`
--

CREATE TABLE IF NOT EXISTS `member_detail_tbl` (
  `member_detail_id` int(4) NOT NULL AUTO_INCREMENT,
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
  `member_rashi` varchar(25) NOT NULL,
  PRIMARY KEY (`member_detail_id`),
  KEY `member_id` (`member_id`),
  KEY `member_sub_community_id` (`member_sub_community_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `member_detail_tbl`
--

INSERT INTO `member_detail_tbl` (`member_detail_id`, `member_id`, `member_sub_community_id`, `member_religion`, `member_with_family`, `member_childrens`, `member_height`, `member_weight`, `caste_no_bar`, `marital_status`, `member_birthplace`, `member_body_type`, `member_complexion`, `member_rashi`) VALUES
(98, 39, 10, 'Hindu', 'no', '1', 5.8, 55, '1', 'Awaiting', 'Surat', 'Normal', 'Brown', 'Mesh'),
(99, 40, 8, 'Hindu', 'yes', '1', 5.1, 40, '1', 'Divorced', 'Ahemdabad', 'Skinny', 'Normal', 'Vrischika'),
(100, 41, 11, 'Hindu', 'yes', '1', 5.1, 40, '1', 'Awaiting', 'Ahemdabad', 'Skinny', 'Dark', 'Sinha'),
(101, 42, 10, 'Parsi', 'yes', '1', 4.8, 45, '1', 'Separated', 'Pune ', 'Normal', 'Normal', 'Varishabha'),
(102, 43, 9, 'Hindu', 'yes', '1', 5.6, 55, '1', 'Single', 'skinny', 'Brown', 'Surat ', 'Karka'),
(103, 44, 11, 'Jain', 'no', '1', 7.7, 60, '1', 'Divorced', 'Mumbai', 'Normal', 'Normal', 'Mithuna'),
(104, 45, 9, 'Buddhist', 'no', '1', 6.6, 66, '0', 'Single', 'Surat', 'Fat', 'Brown', 'Mesh');

-- --------------------------------------------------------

--
-- Table structure for table `member_qualification_tbl`
--

CREATE TABLE IF NOT EXISTS `member_qualification_tbl` (
  `member_qualification_id` int(4) NOT NULL AUTO_INCREMENT,
  `member_detail_id` int(4) NOT NULL,
  `member_qualification` varchar(50) NOT NULL,
  `member_work_with` varchar(50) NOT NULL,
  `member_occupation` varchar(50) NOT NULL,
  `member_designation` varchar(50) NOT NULL,
  `member_company_name` varchar(150) NOT NULL,
  `member_income` double NOT NULL,
  `member_description` text NOT NULL,
  PRIMARY KEY (`member_qualification_id`),
  KEY `member_detail_id` (`member_detail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `member_qualification_tbl`
--

INSERT INTO `member_qualification_tbl` (`member_qualification_id`, `member_detail_id`, `member_qualification`, `member_work_with`, `member_occupation`, `member_designation`, `member_company_name`, `member_income`, `member_description`) VALUES
(55, 98, 'M.B.B.S.', 'Government', 'Doctor', 'Other', 'MMM', 500000, 'hi hello my name is jay...'),
(56, 99, 'B.B.A', 'Government', 'Librarian', 'Accountant', 'Tata', 300000, 'helloo hiee....'),
(57, 100, 'M.Tech', 'Private', 'Manager', 'Admin', 'TCS', 560000, 'yghvbjnklmvg'),
(58, 101, 'M.com', 'Self Employee', 'Social Worker', 'Clerk', 'MMM', 20000, 'gvhvkmjnk,jbjhcghvkjn,kngchjblknhjvhhhhhhhhhhhhhhh'),
(59, 102, 'B.C.A', 'Government', 'Bussiness', 'Admin', 'TCS', 45000, 'testtt'),
(60, 103, 'M.B.A', 'Self Employee', 'Social Worker', 'Other', 'LNT', 900000, 'Test'),
(61, 104, 'B.com', 'Self Employee', 'Doctor', 'Accountant', 'Kiya', 760000, 'Testt');

-- --------------------------------------------------------

--
-- Table structure for table `member_tbl`
--

CREATE TABLE IF NOT EXISTS `member_tbl` (
  `member_id` int(4) NOT NULL AUTO_INCREMENT,
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
  `member_status` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_email` (`member_email`),
  KEY `member_image` (`member_image`),
  KEY `member_city` (`member_city`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `member_tbl`
--

INSERT INTO `member_tbl` (`member_id`, `member_city`, `member_image`, `member_firstname`, `member_lastname`, `member_adhar_id`, `member_contact`, `member_email`, `member_password`, `member_profile_for`, `member_looking_for`, `member_gender`, `member_dob`, `member_profile_id`, `member_age`, `member_min_age`, `member_max_age`, `registration_date`, `member_status`) VALUES
(39, 6, '20250307060931member9.jpg', 'Jay', 'Rathod', '123456789990', '7990472366', 'jay12@gmail.com', '12345', 'Son', 'Female', 'Male', '1999-02-10', '2025541002', 26, 20, 27, '2025-03-03', '1'),
(40, 8, 'member4.jpg', 'Dency', 'Shetty', '123456789012', '9913673607', 'dency15@gmail.com', '12345', 'Myself', 'Male', 'Female', '2000-02-01', '2025180102', 21, 22, 26, '2025-03-03', '1'),
(41, 8, 'member2.jpg', 'Archi', 'Topiwala', '123456789012', '7990212140', 'archi20@gmail.com', '12345', 'Myself', 'Male', 'Female', '2003-06-20', '2025072006', 21, 24, 27, '2025-03-03', '1'),
(42, 9, 'member9.jpg', 'Meet', 'Mithaiwala', '123456789997', '9913673607', 'meet23@gmail.com', '12345', 'Brother', 'Female', 'Male', '2002-06-28', '2025042806', 22, 21, 26, '2025-03-03', '1'),
(43, 6, 'member8.jpg', 'dhwanit', 'trivedi', '456321478911', '8596748531', 'dhwanit@gmail.com', '12345', 'Myself', 'Female', 'Male', '2004-12-08', '2025220812', 20, 18, 30, '2025-03-04', '1'),
(44, 7, 'member1.jpg', 'Jenny', 'Daruwala', '123455432186', '9090215926', 'jenny0506@gmail.com', '12345', 'Daughter', 'Male', 'Female', '2001-11-05', '2025020511', 23, 25, 29, '2025-03-04', '0'),
(45, 7, '20250307061144member10.jpg', 'veera', 'desai', '123456769997', '9979561316', 'veera@gmail.com', '12345', 'Daughter', 'Male', 'Female', '2000-11-15', '2025201511', 24, 22, 26, '2025-03-06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `otp_status_tbl`
--

CREATE TABLE IF NOT EXISTS `otp_status_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otp` int(11) NOT NULL,
  `otp_status` enum('1','0') NOT NULL,
  `create_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `package_detail_tbl`
--

CREATE TABLE IF NOT EXISTS `package_detail_tbl` (
  `package_detail_id` int(4) NOT NULL AUTO_INCREMENT,
  `package_id` int(4) NOT NULL,
  `member_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `package_exp_date` date NOT NULL,
  `package_detail_status` int(11) NOT NULL,
  PRIMARY KEY (`package_detail_id`),
  KEY `package_id` (`package_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `package_detail_tbl`
--

INSERT INTO `package_detail_tbl` (`package_detail_id`, `package_id`, `member_id`, `payment_id`, `purchase_date`, `package_exp_date`, `package_detail_status`) VALUES
(13, 7, 45, 1, '2025-03-06', '2025-04-06', 1),
(14, 5, 43, 1, '2025-03-06', '2025-03-09', 1),
(15, 6, 40, 2, '2025-03-06', '2025-05-06', 1),
(16, 5, 42, 3, '2025-03-06', '2025-06-06', 1),
(17, 7, 39, 4, '2025-03-06', '2025-04-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_tbl`
--

CREATE TABLE IF NOT EXISTS `package_tbl` (
  `package_id` int(4) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(20) NOT NULL,
  `package_price` int(10) NOT NULL,
  `package_duration` varchar(20) NOT NULL,
  `package_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`package_id`),
  UNIQUE KEY `package_name` (`package_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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

CREATE TABLE IF NOT EXISTS `payment_tbl` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `razorpay_payment_id` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','success','failed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `payment_tbl`
--

INSERT INTO `payment_tbl` (`payment_id`, `razorpay_payment_id`, `total_amount`, `payment_status`, `created_at`) VALUES
(1, 'pay_Q3OrfiPCPRI9Zz', '500.00', 'success', '2025-03-06 06:07:17'),
(2, 'pay_Q3YacPUXl2FDcn', '2000.00', 'success', '2025-03-06 15:38:03'),
(3, 'pay_Q3YkAvRCVTG5iV', '5000.00', 'success', '2025-03-06 15:47:06'),
(4, 'pay_Q3Zw6o3TXMhSVc', '500.00', 'success', '2025-03-06 16:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `send_request_tbl`
--

CREATE TABLE IF NOT EXISTS `send_request_tbl` (
  `request_id` int(4) NOT NULL AUTO_INCREMENT,
  `member_id` int(4) NOT NULL,
  `send_request_id` varchar(60) NOT NULL,
  `request_date` datetime NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `send_request_tbl`
--

INSERT INTO `send_request_tbl` (`request_id`, `member_id`, `send_request_id`, `request_date`) VALUES
(28, 39, '40,41,44', '2025-03-07 07:39:14'),
(29, 41, '42', '2025-03-07 08:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `state_tbl`
--

CREATE TABLE IF NOT EXISTS `state_tbl` (
  `state_id` int(4) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name` (`state_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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

CREATE TABLE IF NOT EXISTS `sub_community_tbl` (
  `sub_community_id` int(4) NOT NULL AUTO_INCREMENT,
  `community_id` int(4) NOT NULL,
  `sub_community_name` varchar(20) NOT NULL,
  `sub_community_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`sub_community_id`),
  KEY `community_id` (`community_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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

CREATE TABLE IF NOT EXISTS `testimonial_tbl` (
  `testimonial_id` int(4) NOT NULL AUTO_INCREMENT,
  `member_id` int(4) NOT NULL,
  `testimonial_date` date NOT NULL,
  `member_contact` bigint(11) NOT NULL,
  `testimonial_description` text NOT NULL,
  `testimonial_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`testimonial_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `testimonial_tbl`
--

INSERT INTO `testimonial_tbl` (`testimonial_id`, `member_id`, `testimonial_date`, `member_contact`, `testimonial_description`, `testimonial_status`) VALUES
(1, 39, '2025-03-18', 7990212140, 'I Love your website', '1'),
(2, 40, '2025-02-10', 9913673607, 'Finally,I find my Patner ', '1'),
(3, 41, '2024-01-25', 9090215926, 'I Like your Theme', '1'),
(4, 42, '2023-11-24', 9825361316, 'I Love this,Finally I''m Married', '1');

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
-- Constraints for table `login_details`
--
ALTER TABLE `login_details`
  ADD CONSTRAINT `login_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `member_tbl` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
