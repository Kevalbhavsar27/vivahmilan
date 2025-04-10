-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
(1, 'Shubham', 'mali1212s12@gmail.com', '111', 7383700242, 'Surat', 'admin.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_profile_tbl`
--

CREATE TABLE `bookmark_profile_tbl` (
  `bookmark_id` int(11) NOT NULL,
  `member_profile_id` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(1, 15, 35, 'hii', '2025-03-19 10:53:49', 0),
(2, 1, 2, '??????\n', '2025-03-20 07:03:12', 0),
(3, 1, 2, 'hiiiiiiiiiii', '2025-03-25 05:18:13', 0),
(4, 2, 1, '', '2025-03-25 05:18:21', 0),
(5, 2, 1, 'hello\n\n', '2025-03-25 05:18:30', 0);

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
(1, 'Anantapur', 1),
(6, 'Krishna', 1),
(7, 'Kurnool', 1),
(8, 'Nellore', 1),
(10, 'Visakhapatnam', 1),
(12, 'Tawang', 2),
(21, 'Upper Siang', 2),
(22, 'Dibang Valley', 2),
(24, 'Lohit', 2),
(25, 'Anjaw', 2),
(28, 'Longding', 2),
(30, 'Baksa', 3),
(32, 'Biswanath', 3),
(62, 'Udalguri', 3),
(63, 'West Karbi Anglong', 3),
(68, 'Begusarai', 4),
(69, 'Bhagalpur', 4),
(70, 'Bhojpur', 4),
(74, 'Gaya', 4),
(75, 'Gopalganj', 4),
(78, 'Kaimur', 4),
(86, 'Muzaffarpur', 4),
(87, 'Nalanda', 4),
(89, 'Patna', 4),
(97, 'Sitamarhi', 4),
(98, 'Supaul', 4),
(99, 'Siwan', 4),
(100, 'Vaishali', 4),
(102, 'Balod', 5),
(104, 'Balrampur', 5),
(108, 'Bilaspur', 5),
(109, 'Dantewada', 5),
(110, 'Dhamtari', 5),
(127, 'Raigarh', 5),
(128, 'Raipur', 5),
(135, 'North Goa', 6),
(136, 'South Goa', 6),
(137, 'Ahmedabad', 7),
(138, 'Amreli', 7),
(139, 'Anand', 7),
(140, 'Aravalli', 7),
(141, 'Banaskantha', 7),
(142, 'Bharuch', 7),
(143, 'Bhavnagar', 7),
(144, 'Botad', 7),
(145, 'Chhota Udepur', 7),
(146, 'Dahod', 7),
(147, 'Dangs', 7),
(148, 'Devbhumi Dwarka', 7),
(149, 'Gandhinagar', 7),
(150, 'Gir Somnath', 7),
(151, 'Jamnagar', 7),
(152, 'Junagadh', 7),
(153, 'Kachchh', 7),
(154, 'Kheda', 7),
(155, 'Mahesana', 7),
(156, 'Mahisagar', 7),
(157, 'Morbi', 7),
(158, 'Narmada', 7),
(159, 'Navsari', 7),
(160, 'Panchmahals', 7),
(161, 'Patan', 7),
(162, 'Porbandar', 7),
(163, 'Rajkot', 7),
(164, 'Sabarkantha', 7),
(165, 'Surat', 7),
(166, 'Surendranagar', 7),
(167, 'Tapi', 7),
(168, 'Vadodara', 7),
(169, 'Valsad', 7),
(170, 'Ambala', 8),
(173, 'Faridabad', 8),
(175, 'Gurugram', 8),
(181, 'Kurukshetra', 8),
(188, 'Rohtak', 8),
(190, 'Sonipat', 8),
(195, 'Kinnaur', 9),
(199, 'Shimla', 9),
(222, 'Ranchi', 10),
(223, 'Sahibganj', 10),
(224, 'Saraikela-Kharsawan', 10),
(225, 'Simdega', 10),
(228, 'Bengaluru', 11),
(231, 'Ballari', 11),
(232, 'Bidar', 11),
(249, 'Mysuru', 11),
(258, 'Alappuzha', 12),
(260, 'Idukki', 12),
(267, 'Palakkad', 12),
(269, 'Thiruvananthapuram', 12),
(271, 'Wayanad', 12),
(272, 'Bhopal', 13),
(283, 'Datia', 13),
(287, 'Burhanpur', 13),
(288, 'Indore', 13),
(295, 'Jabalpur', 13),
(305, 'Rewa', 13),
(324, 'Ratlam', 13),
(326, 'Ujjain', 13),
(329, 'Amravati', 14),
(330, 'Beed', 14),
(331, 'Bhandara', 14),
(332, 'Buldhana', 14),
(339, 'Jalna', 14),
(340, 'Kolhapur', 14),
(341, 'Latur', 14),
(342, 'Mumbai', 14),
(347, 'Nashik', 14),
(349, 'Palghar', 14),
(351, 'Pune', 14),
(352, 'Raigad', 14),
(353, 'Ratnagiri', 14),
(358, 'Thane', 14),
(361, 'Yavatmal', 14),
(362, 'Bishnupur', 15),
(363, 'Chandel', 15),
(364, 'Churachandpur', 15),
(365, 'Imphal East', 15),
(366, 'Imphal West', 15),
(378, 'North Garo Hills', 16),
(379, 'East Garo Hills	', 16),
(380, 'South Garo Hills', 16),
(381, 'West Garo Hills', 16),
(382, 'South West Garo Hills', 16),
(394, 'Lawngtlai', 17),
(395, 'Lunglei', 17),
(397, 'Saiha', 17),
(401, 'Dimapur', 18),
(402, 'Kiphire', 18),
(403, 'Kohima', 18),
(422, 'Boudh', 19),
(423, 'Cuttack', 19),
(447, 'Amritsar', 20),
(448, 'Barnala', 20),
(449, 'Bathinda', 20),
(450, 'Faridkot', 20),
(458, 'Ludhiana', 20),
(463, 'Pathankot', 20),
(464, 'Patiala', 20),
(470, 'Ajmer', 21),
(478, 'Bhilwara', 21),
(481, 'Chittorgarh', 21),
(489, 'Jaipur', 21),
(490, 'Jaisalmer', 21),
(494, 'Jodhpur', 21),
(507, 'Sirohi', 21),
(510, 'Udaipur', 21),
(511, 'Gangtok', 22),
(519, 'Chennai', 23),
(520, 'Coimbatore', 23),
(521, 'Cuddalore', 23),
(522, 'Dharmapuri', 23),
(523, 'Dindigul', 23),
(524, 'Erode', 23),
(525, 'Kallakurichi', 23),
(526, 'Kancheepuram', 23),
(527, 'Kanyakumari', 23),
(530, 'Madurai', 23),
(559, 'Nizamabad', 24),
(580, 'Hyderabad', 24),
(590, 'Khowai', 25),
(593, 'North Tripura', 25),
(594, 'South Tripura', 25),
(595, 'West Tripura', 25),
(600, 'Dehradun', 26),
(601, 'Haridwar', 26),
(602, 'Nainital', 26),
(608, 'Uttarkashi', 26),
(609, 'Agra', 27),
(610, 'Aligarh', 27),
(611, 'Ambedkar Nagar', 27),
(612, 'Ayodhya', 27),
(636, 'Ghaziabad', 27),
(637, 'Ghazipur', 27),
(639, 'Gorakhpur', 27),
(645, 'Jhansi', 27),
(648, 'Kanpur Nagar', 27),
(654, 'Lucknow', 27),
(658, 'Mathura', 27),
(660, 'Meerut', 27),
(661, 'Mirzapur', 27),
(663, 'Muzaffarnagar', 27),
(665, 'Prayagraj', 27),
(667, 'Rampur', 27),
(668, 'Saharanpur', 27),
(671, 'Sambhal', 27),
(680, 'Varanasi', 27),
(686, 'Cooch Behar', 28),
(687, 'Darjeeling', 28),
(693, 'Kolkata', 28),
(698, 'Murshidabad', 28),
(699, 'Nadia', 28),
(700, 'North 24 Parganas', 28),
(701, 'South 24 Parganas', 28);

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
(1, 'Brahmin', '1'),
(2, 'Rajput', '1'),
(3, 'Sunni Muslim', '1'),
(4, 'Catholic', '1'),
(5, 'Jain', '1'),
(6, 'Sikh', '1'),
(7, 'Parsi', '1'),
(8, 'Buddhist', '1'),
(9, 'Hindu SC', '1'),
(10, 'Hindu ST', '1'),
(11, 'Hindu OBC', '1'),
(12, 'Memon', '1'),
(13, 'Shia Muslim', '1'),
(14, 'Agnostic', '1'),
(15, 'Jewish', '1'),
(16, 'maratha', '1'),
(17, 'Sindhi', '1'),
(18, 'Kshatriya', '1'),
(19, 'Kayastha', '1'),
(20, 'Iyengar', '1'),
(21, 'Iyer', '1'),
(22, 'Baniya', '1'),
(23, 'Ezhava', '1'),
(24, 'Nair', '1'),
(25, 'Reddy', '1'),
(26, 'Kapu', '1'),
(27, 'Goud', '1'),
(28, 'Chettiar', '1'),
(29, 'Lingayat', '1'),
(30, 'Yadav', '1'),
(31, 'Kumhar', '1'),
(32, 'Jat', '1'),
(33, 'Gurjar', '1'),
(34, 'Lohana', '1'),
(35, 'Kutchi', '1'),
(36, 'Modh', '1'),
(37, 'Vaishnav', '1'),
(38, 'Maheshwari', '1'),
(39, 'Mangalorean', '1'),
(40, 'Malankara', '1'),
(41, 'Deobandi', '1'),
(42, 'Bohra Muslim', '1'),
(43, 'Ahmadiyya', '1'),
(44, 'Ismail', '1'),
(45, 'Zoroastrian', '1'),
(46, 'Arya Samaj', '1'),
(47, 'Others', '0');

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
(1, 'How to register on vivaahmilan123@gmail.com', 'Registering on vivaahmilan123@gmail.com is simple ...\r\n', '1'),
(2, 'What do I enter in the field About Me?', '‘About Me’ is where you can enter a description of...\r\n', '1'),
(3, 'How do I search for my partner?', 'You can search for your partner on m4marry.com usi...\r\n', '1'),
(4, 'Can I save my search?', 'As a valued subscriber of wedding bliss, you can u...\r\n', '1');

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
(1, 1, 'O+', 'Books Reading,Hangout with Family,Movies', 'Veg', 'Gujarati,English,Hindi', '51, Garden City, Valia Road ,Bharuch', 'NO', 'NO', '1'),
(2, 2, 'B+', 'Cooking,Hangout with Family', 'Any', 'English,Hindi,Tamil', 'Kanyakumari Holiday Home, Kovalam Road, Kanyakumari.', 'NO', 'NO', '1'),
(3, 3, 'A-', 'Books Reading,Hangout with Family,Volleyball', 'Any', 'English,Hindi,Punjabi', 'AK Green Villa, Jhande, Ludhiana, Punjab', 'Occasionally', 'Occasionally', '3'),
(5, 5, 'B-', 'Books Reading,Hangout with Family,Modelling', 'Veg', 'English,Hindi,Bodo', 'Shiv Villa , near lp road ,southgoa', 'NO', 'NO', '2'),
(6, 6, 'B-', 'Adventure Travel,Books Reading,Music', 'Any', 'Gujarati,English,Hindi,Oriya', 'bhakati krupa residency , kurukshetra,Haryana', 'Occasionally', 'Occasionally', '3'),
(7, 7, 'B-', 'Cooking,Hangout with Family', 'Veg', 'English,Hindi', '45,golden residency ,udaipur.', 'NO', 'NO', '3'),
(8, 8, 'B+', 'Adventure Travel,Yoga', 'Veg', 'English,Hindi,Tamil', '32,shreenathji homes ,Coimbatore, Tamil nadu', 'Occasionally', 'NO', '3'),
(9, 9, 'A+', 'Volleyball', 'Any', 'Gujarati,English,Hindi', 'krishna apartment , devbhumi dwarka, gujrat', 'Occasionally', 'Occasionally', '2'),
(11, 11, 'B-', 'Yoga', 'Any', 'Gujarati,English,Hindi', 'kapoor homes,  kolhapur, maharashtra', 'NO', 'NO', '1'),
(16, 16, 'A-', 'Hangout with Family,Modelling', 'Any', 'Gujarati,English,Hindi', 'vishnukrupa residency, bishnupur , manipur', 'NULL', 'NULL', '1'),
(18, 18, 'O+', 'Books Reading,Cooking,Modelling', 'Any', 'Gujarati,English,Marathi', '102,shivshakati home  , dhamtari, chhattisgarh', 'NO', 'NO', '3'),
(21, 21, 'B-', 'Modelling,Music', 'Any', 'English,Hindi', 'o-502,stuti icon, ballari,karnataka', 'NO', 'NO', '3'),
(22, 22, 'B-', 'Hangout with Family,Modelling', 'Any', 'English,Hindi,Marathi', '45 Green Park, Lane 3, punjab - 110016', 'Occasionally', 'NO', '1'),
(23, 23, 'B+', 'Cooking,Hangout with Family', 'Any', 'Gujarati,English', '89 Jubilee Hills, Road 7,mahesana,gujrat', 'NO', 'NO', '2'),
(24, 24, 'O-', 'Cooking,Music', 'Veg', 'Gujarati,English,Hindi', '56 Marine Drive, Apartment 12A, Mumbai, Maharashtra', 'Occasionally', 'Occasionally', '2'),
(25, 25, 'B+', 'Books Reading,Modelling,Yoga', 'Veg', 'English,Hindi', '22 MG Marg, Sector 9,varanasi, Uttar Pradesh', 'NO', 'Occasionally', '1'),
(26, 26, 'O+', 'Cooking,Volleyball', 'Veg', 'Gujarati,English', '21 Connaught Place, Surat,Gujarat', 'Occasionally', 'NO', '3'),
(27, 27, 'A-', 'Cooking,Hangout with Family', 'Any', 'Gujarati,English,Hindi', ' 67 BBD Bagh, erode, tamil nadu', 'Occasionally', 'Occasionally', '1'),
(28, 28, 'B-', 'Hangout with Family,Modelling', 'Veg', 'Gujarati,English,Hindi,Kannad', '89 Banjara Hills, chhattisgarh,dantewada', 'NO', 'NO', '1'),
(29, 29, 'B+', 'Books Reading,Cooking', 'Any', 'Gujarati,English,Hindi', '77 South Extension, Part I,ambala,haryana', 'NO', 'NO', '1'),
(30, 30, 'B-', 'Books Reading,Hangout with Family', 'Veg', 'English,Hindi', '77 Salt Lake Sector 3, Karnataka,bidar', 'Occasionally', 'Occasionally', '2'),
(31, 31, 'B-', 'Books Reading,Modelling', 'Any', 'Gujarati,English,Hindi', '19 Park Street, jalna,maharashtra', 'NO', 'NO', '3'),
(32, 32, 'A+', 'Hangout with Family', 'Any', 'Hindi', 'datio', 'NO', 'NO', '1'),
(33, 33, '', 'Cooking,Music', 'Veg', 'Gujarati,English,Hindi', '34 South City,bhojpur,bihar', 'NULL', 'NULL', '2'),
(34, 34, 'A-', 'Cooking,Hangout with Family', 'Any', 'English', '67 CG Road, Maharashtra , Buldhana ', 'NO', 'NO', '1'),
(35, 35, 'B+', 'Books Reading', 'Any', 'Hindi', ' 56 Edapally Junction,botad,gujrat', 'NO', 'NO', '2'),
(36, 36, 'A-', 'Cooking,Hangout with Family', 'Any', 'Gujarati,English,Hindi', 'Churchgate Street, Kerala , ldukki', 'NO', 'NO', '2'),
(37, 37, 'B-', 'Books Reading,Cooking', 'Any', 'Gujarati,English,Kannad', '12 JP Nagar, Himachal Pradesh , Kinnaur', 'NO', 'NO', '2'),
(39, 39, 'A+', 'Hangout with Family,Playing', 'Any', 'English,Hindi,Punjabi', '123 Golden Temple Road,\r\nBlock A,\r\nAmritsar, Punjab,\r\n', 'NO', 'NO', '2'),
(40, 40, 'A-', 'Adventure Travel,Books Reading', 'Non-Veg', 'Hindi,Punjabi', '456 Industrial Area,\r\nSector 3,\r\nBarnala, Punjab,', 'NO', 'Occasionally', '3'),
(41, 41, 'O+', 'Cooking,Music,Playing', 'Any', 'English,Hindi,Punjabi', '789 Patel Nagar,\r\nSector 5,\r\nBathinda, Punjab,', 'Occasionally', 'Occasionally', '3'),
(42, 42, '', 'Adventure Travel,Yoga', '', 'English,Punjabi', '123 Market Street,\r\nSector 2,\r\nFaridkot, Punjab,', 'NO', 'NO', '1'),
(43, 43, 'O-', 'Cooking,Yoga', 'Any', 'English,Punjabi', '567 Railway Road,\r\nBlock C,\r\nPathankot, Punjab,', 'NO', 'Occasionally', '1'),
(44, 44, 'A+', 'Modelling,Playing', 'Any', 'English', '234 Beachside Lane,\r\nCalangute,\r\nNorth Goa, Goa,', 'NO', 'NO', '1'),
(45, 45, 'A+', 'Adventure Travel,Music', 'Any', 'English,Hindi', 'John Doe\r\n123 Marine View Road\r\nWest End, Alappuzha\r\nAlappuzha District, Kerala ', 'NO', 'Occasionally', '1'),
(46, 46, 'A-', 'Cooking,Modelling', 'Any', 'English', '456 Anna Salai\r\nTeynampet, Chennai\r\nChennai District, Tamil Nadu', 'Occasionally', 'Occasionally', '2'),
(47, 47, 'B+', 'Movies,Yoga', 'Any', 'English', '789 Bhakta Ramadasu Road\r\nOld Bus Stand Area, Nizamabad\r\nNizamabad District, Telangana', 'Occasionally', 'NO', '3'),
(48, 48, 'O+', 'Adventure Travel,Volleyball', 'Any', 'English,Hindi', '101 Nagaland Road\r\nCircular Market Area, Dimapur\r\nDimapur District, Nagaland', 'NO', 'NO', '1'),
(49, 49, 'A+', 'Adventure Travel,Yoga', 'Veg', 'Hindi,Manipuri', '123 Ridge View Lane\r\nMG Marg, Gangtok\r\nEast Sikkim District, Sikkim', 'NO', 'NO', '1'),
(50, 50, 'A-', 'Watching,Volleyball', 'Veg', 'Nepali', '78 Sunshine Avenue\r\nKhowai Town, Khowai District\r\nTripura', 'NO', 'NO', '2'),
(51, 51, 'O+', 'Cooking,Playing', 'Veg', 'Hindi,Maithili', '56 River View Road\r\nTezu, Lohit District\r\nArunachal Pradesh', 'NO', 'NO', '2'),
(52, 52, 'A-', 'Books Reading,Music', 'Veg', 'Oriya', '34 Happy Lane\r\nPorompat, Imphal East\r\nManipur', 'NO', 'NO', '1'),
(53, 53, 'B-', 'Adventure Travel,Playing', 'Veg', 'Bodo', '123 Silver Street, Barabati Area,\r\nCuttack, Odisha ', 'NO', 'NO', '1'),
(54, 54, 'A+', 'Adventure Travel,Cooking', 'Veg', 'Gujarati,English,Hindi', '123 Heritage Lane, Shreenathji Nagar,\r\nPatan, Gujarat ', 'NO', 'NO', '1'),
(55, 55, 'A+', 'Cooking,Hangout with Family', 'Veg', 'English,Hindi', '123, MG Road, Sector 45, Gurugram, Haryana', 'Occasionally', 'NO', '2'),
(56, 56, 'A-', 'Modelling,Music', 'Veg', 'English,Hindi', '456, FC Road, Shivaji Nagar, Pune, Maharashtra', 'NO', 'Occasionally', '1'),
(57, 57, 'O+', 'Playing,Yoga', 'Veg', 'English,Hindi', '789, Park Street, Ballygunge, Kolkata, West Bengal,', 'Occasionally', 'Occasionally', '1'),
(58, 58, 'O+', 'Playing,Volleyball', 'Veg', 'Gujarati,English,Hindi', '101, GIDC Road, Tithal, Valsad, Gujarat', 'NO', 'Occasionally', '2'),
(59, 59, 'A+', 'Adventure Travel,Cooking', 'Any', 'English,Hindi', '202, CG Road, Navrangpura, Ahmedabad, Gujarat,', 'NO', 'NO', '1'),
(60, 60, 'B+', 'Cooking,Hangout with Family', 'Any', 'English,Hindi', '305, Delhi Road, Model Town, Rohtak, Haryana', 'Occasionally', 'Occasionally', '1'),
(61, 61, 'O-', 'Adventure Travel,Modelling', 'Any', 'English,Hindi', '112, Wardha Road, Shahupuri, Amravati, Maharashtra', 'Occasionally', 'NO', '2'),
(62, 62, 'A+', 'Yoga,Volleyball', 'Any', 'English,Hindi', '789, Ring Road, Adajan, Surat, Gujarat', 'NO', 'NO', '1'),
(63, 63, 'A+', 'Cooking,Modelling', 'Any', 'English,Hindi', '123, Ram Katha Marg, Civil Lines, Ayodhya, Uttar Pradesh', 'Occasionally', 'Occasionally', '3'),
(64, 64, 'A+', 'Adventure Travel,Cooking', 'Any', 'Hindi,Punjabi', '78, College Road, Near Sheesh Mahal, Patiala, Punjab', 'NO', 'NO', '1'),
(65, 65, 'A+', 'Books Reading,Hangout with Family', 'Any', 'English,Hindi,Punjabi', '123 Sunshine Park, Sector 5, Raigarh, Chhattisgarh', 'NO', 'NO', '2'),
(66, 66, 'B+', 'Modelling,Music', 'Any', 'English,Hindi,Punjabi', '56, Nehru Ground, Sector 15, Faridabad, Haryana', 'NO', 'NO', '2'),
(67, 67, 'O+', 'Watching,Playing', 'Any', 'Punjabi', '456, Kanke Road, Near Helipad\r\nRanchi, Jharkhand', 'NO', 'Occasionally', '3'),
(68, 68, 'O+', 'Yoga,Volleyball', 'Any', 'Hindi,Punjabi', '789, Haridwar Road, Near Har Ki Pauri\r\nHaridwar, Uttarakhand', 'NO', 'NO', '1'),
(69, 69, 'A+', 'Adventure Travel,Cooking', 'Any', 'English,Hindi', '123, Beachside Lane, Near Baga Beach\r\nCalangute, North Goa, Goa', 'NO', 'NO', '1'),
(70, 70, 'B+', 'Cooking,Hangout with Family', 'Any', 'English', '45, MG Road, Near Tashi View Point\r\nGangtok, Sikkim', 'Occasionally', 'Occasionally', '2'),
(71, 71, 'B+', 'Yoga,Volleyball', 'Any', 'English,Hindi', '78, Saraswati Nagar, Near Golden Bridge\r\nBharuch, Gujarat', 'NO', 'NO', '3'),
(72, 72, 'A+', 'Movies,Playing', 'Any', 'English', '56, MG Road, Near Palakkad Junction\r\nPalakkad, Kerala', 'NO', 'NO', '1'),
(73, 73, 'O+', 'Adventure Travel,Cooking', 'Any', 'English,Hindi', '102, Race Course Road, Near Brookefields Mall\r\nCoimbatore, Tamil Nadu', 'Occasionally', 'Occasionally', '1'),
(74, 74, 'A+', 'Adventure Travel,Books Reading', 'Veg', 'Hindi,Bodo', '123 Example Lane\r\nBiswanath Chariali\r\nBiswanath, Assam', 'NO', 'NO', '1'),
(75, 75, 'A-', 'Cooking,Hangout with Family', 'Veg', 'Hindi,Oriya', '456 Hilltop Road\r\nLakkar Bazaar\r\nShimla, Himachal Pradesh', 'NO', 'NO', '2'),
(76, 76, 'O+', 'Modelling,Music', 'Veg', 'English,Hindi', '789 Market Street\r\nBishnupur\r\nManipu', 'NO', 'NO', '3'),
(77, 77, 'O-', 'Playing,Yoga', 'Veg', 'English,Hindi,Oriya', '123 Sunshine Avenue\r\nWard No. 5\r\nAmravati, Maharashtra', 'Occasionally', 'Occasionally', '3'),
(78, 78, 'A-', 'Yoga,Volleyball', 'Veg', 'English,Hindi', '456 Bamboo Street\r\nKohima Ward No. 7\r\nKohima, Nagaland', 'NO', 'NO', '1'),
(79, 79, 'A+', 'Adventure Travel,Cooking', 'Veg', 'Gujarati,English,Hindi', '789 River View Apartments\r\nCG Road, Ellisbridge\r\nAhmedabad, Gujarat', 'NO', 'NO', '1'),
(80, 80, 'A-', 'Cooking,Hangout with Family', 'Veg', 'English,Hindi', '234 Green Park Colony\r\nZone II, Near City Mall\r\nBhopal, Madhya Pradesh', 'NO', 'NO', '2'),
(81, 81, 'B-', 'Music,Watching', 'Veg', 'English,Hindi', '567 Heritage Lane\r\nNear Dargah Sharif\r\nAjmer, Rajasthan', 'NO', 'NO', '2'),
(82, 82, 'B+', 'Adventure Travel,Volleyball', 'Veg', 'English,Hindi', '890 Pink City Residency\r\nMI Road, Near Central Park\r\nJaipur, Rajasthan', 'NO', 'NO', '1'),
(83, 83, 'O+', 'Hangout with Family,Playing', 'Veg', 'English,Hindi', '123 Desert View Apartments\r\nSam Road, Near Jaisalmer Fort\r\nJaisalmer, Rajasthan', 'Occasionally', 'Occasionally', '2'),
(84, 84, 'A+', 'Adventure Travel,Books Reading', 'Any', 'English,Hindi', '456 Blue City Residency\r\nSojati Gate, Near Clock Tower\r\nJodhpur, Rajasthan', 'NO', 'NO', '1'),
(85, 85, 'A-', 'Books Reading,Cooking', 'Any', 'English,Hindi', '789 Lakeview Apartments\r\nCity Palace Road, Near Lake Pichola\r\nUdaipur, Rajasthan', 'NO', 'NO', '2'),
(87, 87, 'B-', 'Hangout with Family,Playing', 'Non-Veg', 'English,Hindi', '123 Fort View Residency\r\nRana Sanga Marg, Near Chittorgarh Fort\r\nChittorgarh, Rajasthan', 'Occasionally', 'Occasionally', '3'),
(88, 88, 'A+', 'Cooking,Music', 'Veg', 'English,Hindi', '456 Golden Avenue\r\nNear Golden Temple\r\nAmritsar, Punjab', 'NO', 'NO', '1'),
(89, 89, 'O-', 'Adventure Travel,Books Reading', 'Any', 'Gujarati,English,Hindi', '789 Diamond Residency\r\nRing Road, Near Surat Textile Market\r\nSurat, Gujarat', 'Occasionally', 'NO', '1'),
(91, 91, 'A+', 'Adventure Travel,Astronomy', 'Any', 'Gujarati,English,Hindi,Urdu', '456 Golden Arcade, Vesu, Surat, Gujarat', 'NO', 'NO', '0'),
(92, 92, 'B+', 'Blogging,Books Reading', 'Any', 'English,Hindi', '789 Ocean View, Bandra West, Mumbai, Maharashtra', 'Occasionally', 'Occasionally', '1'),
(95, 95, 'A-', 'Books Reading,Cooking', 'Any', 'English,Hindi', '112, Silicon Valley Apartments, Whitefield, Bengaluru, Karnataka', 'Occasionally', 'NO', '1'),
(96, 96, 'B-', 'Adventure Travel,Books Reading', 'Any', 'Gujarati,English,Hindi,Urdu', '234, Diamond Residency, Ghod Dod Road, Surat, Gujarat', 'NO', 'NO', '1'),
(97, 97, 'A+', 'Cycling,Dancing', 'Any', 'English,Hindi,Urdu', '12, Kerala Heights, Kowdiar, Thiruvananthapuram, Kerala', 'Occasionally', 'Occasionally', '1'),
(98, 98, 'A+', 'Chess,Cooking', 'Veg', 'Gujarati,English,Hindi', '78, Royal Residency, Alkapuri, Vadodara, Gujarat', 'Occasionally', 'Occasionally', '3');

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
(1, 1, '2025-03-19 04:29:48', 'no'),
(2, 2, '2025-03-19 04:33:10', 'no'),
(3, 2, '2025-03-19 04:34:01', 'no'),
(4, 3, '2025-03-19 04:34:23', 'no'),
(5, 4, '2025-03-19 04:35:02', 'no'),
(6, 5, '2025-03-19 04:35:35', 'no'),
(7, 6, '2025-03-19 04:36:07', 'no'),
(8, 7, '2025-03-19 04:36:55', 'no'),
(9, 8, '2025-03-19 04:37:21', 'no'),
(10, 9, '2025-03-19 04:37:32', 'no'),
(11, 10, '2025-03-19 04:38:09', 'no'),
(12, 11, '2025-03-19 04:38:54', 'no'),
(13, 14, '2025-03-19 04:39:36', 'no'),
(14, 15, '2025-03-19 04:40:01', 'no'),
(15, 17, '2025-03-19 04:40:40', 'no'),
(16, 18, '2025-03-19 04:41:39', 'no'),
(17, 19, '2025-03-19 04:47:06', 'no'),
(18, 21, '2025-03-19 04:48:04', 'no'),
(19, 22, '2025-03-19 04:49:41', 'no'),
(20, 22, '2025-03-19 04:50:27', 'no'),
(21, 1, '2025-03-19 04:51:08', 'no'),
(22, 15, '2025-03-19 05:09:25', 'no'),
(23, 25, '2025-03-19 06:07:44', 'no'),
(24, 26, '2025-03-19 06:08:29', 'no'),
(25, 27, '2025-03-19 06:09:00', 'no'),
(26, 28, '2025-03-19 06:10:03', 'no'),
(27, 29, '2025-03-19 06:10:41', 'no'),
(28, 30, '2025-03-19 06:10:57', 'no'),
(29, 24, '2025-03-19 07:22:26', 'no'),
(30, 1, '2025-03-19 07:23:50', 'no'),
(31, 1, '2025-03-19 07:35:07', 'no'),
(32, 14, '2025-03-19 08:03:07', 'no'),
(33, 19, '2025-03-19 08:49:38', 'no'),
(34, 17, '2025-03-19 08:07:10', 'no'),
(35, 17, '2025-03-19 08:32:08', 'no'),
(36, 24, '2025-03-19 08:43:06', 'no'),
(37, 24, '2025-03-19 08:45:50', 'no'),
(38, 27, '2025-03-19 08:55:34', 'no'),
(39, 4, '2025-03-19 08:55:35', 'no'),
(40, 36, '2025-03-19 10:20:08', 'no'),
(41, 35, '2025-03-19 10:58:11', 'no'),
(42, 15, '2025-03-19 10:54:26', 'no'),
(43, 35, '2025-03-19 11:10:54', 'no'),
(44, 2, '2025-03-19 11:11:55', 'no'),
(45, 15, '2025-03-19 11:12:28', 'no'),
(46, 17, '2025-03-19 11:13:16', 'no'),
(47, 18, '2025-03-19 11:13:46', 'no'),
(48, 19, '2025-03-19 11:14:28', 'no'),
(49, 1, '2025-03-19 11:24:58', 'no'),
(50, 35, '2025-03-19 11:38:43', 'no'),
(51, 36, '2025-03-19 11:42:24', 'no'),
(52, 9, '2025-03-19 11:50:30', 'no'),
(53, 39, '2025-03-19 11:58:08', 'no'),
(54, 21, '2025-03-19 12:01:10', 'no'),
(55, 22, '2025-03-19 12:03:36', 'no'),
(56, 25, '2025-03-19 12:04:35', 'no'),
(57, 5, '2025-03-19 12:14:36', 'no'),
(58, 31, '2025-03-19 12:16:58', 'no'),
(59, 32, '2025-03-19 12:18:14', 'no'),
(60, 33, '2025-03-19 12:20:41', 'no'),
(61, 36, '2025-03-19 12:21:59', 'no'),
(62, 38, '2025-03-19 12:23:29', 'no'),
(63, 39, '2025-03-19 12:24:13', 'no'),
(64, 36, '2025-03-19 12:25:34', 'no'),
(65, 2, '2025-03-19 12:38:28', 'no'),
(66, 7, '2025-03-19 12:27:52', 'no'),
(67, 8, '2025-03-19 12:28:15', 'no'),
(68, 4, '2025-03-19 12:28:55', 'no'),
(69, 1, '2025-03-19 12:30:55', 'no'),
(70, 35, '2025-03-19 12:31:37', 'no'),
(71, 34, '2025-03-19 12:31:59', 'no'),
(72, 37, '2025-03-19 12:32:42', 'no'),
(73, 40, '2025-03-19 12:33:46', 'no'),
(74, 24, '2025-03-19 12:40:34', 'no'),
(75, 17, '2025-03-19 12:42:53', 'no'),
(76, 1, '2025-03-19 15:29:36', 'no'),
(77, 27, '2025-03-19 15:32:11', 'no'),
(78, 40, '2025-03-20 04:26:25', 'no'),
(79, 2, '2025-03-20 04:35:34', 'no'),
(80, 1, '2025-03-20 04:49:32', 'no'),
(81, 40, '2025-03-20 04:51:50', 'no'),
(82, 2, '2025-03-20 05:40:59', 'no'),
(83, 41, '2025-03-20 05:15:39', 'no'),
(84, 2, '2025-03-20 05:17:09', 'no'),
(85, 42, '2025-03-20 05:44:36', 'no'),
(86, 39, '2025-03-20 05:42:45', 'no'),
(87, 39, '2025-03-20 05:44:14', 'no'),
(88, 42, '2025-03-20 05:47:27', 'no'),
(89, 43, '2025-03-20 06:07:07', 'no'),
(90, 44, '2025-03-20 06:18:42', 'no'),
(91, 44, '2025-03-20 06:20:20', 'no'),
(92, 44, '2025-03-20 06:21:02', 'no'),
(93, 45, '2025-03-20 06:35:19', 'no'),
(94, 45, '2025-03-20 06:36:59', 'no'),
(95, 2, '2025-03-20 06:38:12', 'no'),
(96, 2, '2025-03-20 06:39:48', 'no'),
(97, 2, '2025-03-20 07:01:00', 'no'),
(98, 2, '2025-03-20 07:04:12', 'no'),
(99, 1, '2025-03-20 07:03:26', 'no'),
(100, 46, '2025-03-20 07:09:38', 'no'),
(101, 47, '2025-03-22 04:34:18', 'no'),
(102, 48, '2025-03-22 04:44:08', 'no'),
(103, 49, '2025-03-22 04:51:48', 'no'),
(104, 50, '2025-03-22 05:01:31', 'no'),
(105, 2, '2025-03-22 05:05:47', 'no'),
(106, 51, '2025-03-22 05:24:58', 'no'),
(107, 52, '2025-03-22 05:33:12', 'no'),
(108, 53, '2025-03-22 05:41:31', 'no'),
(109, 54, '2025-03-22 05:49:34', 'no'),
(110, 55, '2025-03-24 02:40:20', 'no'),
(111, 2, '2025-03-24 02:41:34', 'no'),
(112, 56, '2025-03-24 02:58:19', 'no'),
(113, 57, '2025-03-24 03:43:11', 'no'),
(114, 58, '2025-03-24 03:56:11', 'no'),
(115, 59, '2025-03-24 04:03:45', 'no'),
(116, 60, '2025-03-24 04:11:45', 'no'),
(117, 2, '2025-03-24 04:13:44', 'no'),
(118, 2, '2025-03-24 04:16:02', 'no'),
(119, 61, '2025-03-24 04:44:52', 'no'),
(120, 62, '2025-03-24 05:18:26', 'no'),
(121, 63, '2025-03-24 05:30:09', 'no'),
(122, 64, '2025-03-24 06:38:38', 'no'),
(123, 65, '2025-03-24 06:45:36', 'no'),
(124, 2, '2025-03-24 06:48:37', 'no'),
(125, 17, '2025-03-24 06:51:06', 'no'),
(126, 17, '2025-03-24 06:59:12', 'no'),
(127, 1, '2025-03-24 07:00:32', 'no'),
(128, 2, '2025-03-24 07:01:08', 'no'),
(129, 1, '2025-03-24 10:35:07', 'no'),
(130, 1, '2025-03-24 10:35:22', 'no'),
(131, 1, '2025-03-24 10:35:34', 'no'),
(132, 1, '2025-03-24 10:39:37', 'no'),
(133, 66, '2025-03-24 10:49:07', 'no'),
(134, 1, '2025-03-24 10:50:44', 'no'),
(135, 66, '2025-03-24 10:56:08', 'no'),
(136, 67, '2025-03-24 11:31:33', 'no'),
(137, 68, '2025-03-24 11:42:43', 'no'),
(138, 69, '2025-03-24 11:51:45', 'no'),
(139, 70, '2025-03-24 12:01:54', 'no'),
(140, 1, '2025-03-24 12:03:37', 'no'),
(141, 1, '2025-03-24 12:14:28', 'no'),
(142, 71, '2025-03-24 12:20:18', 'no'),
(143, 72, '2025-03-24 12:28:22', 'no'),
(144, 73, '2025-03-24 12:38:18', 'no'),
(145, 74, '2025-03-24 12:47:05', 'no'),
(146, 75, '2025-03-24 12:55:32', 'no'),
(147, 1, '2025-03-24 13:14:17', 'no'),
(148, 1, '2025-03-24 19:21:50', 'no'),
(149, 76, '2025-03-24 19:28:41', 'no'),
(150, 77, '2025-03-24 19:36:11', 'no'),
(151, 78, '2025-03-24 19:40:58', 'no'),
(152, 79, '2025-03-24 19:47:07', 'no'),
(153, 80, '2025-03-24 19:51:48', 'no'),
(154, 1, '2025-03-24 20:05:50', 'no'),
(155, 81, '2025-03-24 20:18:18', 'no'),
(156, 82, '2025-03-24 20:23:10', 'no'),
(157, 83, '2025-03-24 20:28:23', 'no'),
(158, 86, '2025-03-24 20:37:18', 'no'),
(159, 87, '2025-03-24 20:42:40', 'no'),
(160, 1, '2025-03-24 20:45:56', 'no'),
(161, 88, '2025-03-24 20:52:24', 'no'),
(162, 89, '2025-03-24 20:58:00', 'no'),
(163, 90, '2025-03-24 21:06:06', 'no'),
(164, 91, '2025-03-24 21:12:06', 'no'),
(165, 1, '2025-03-24 21:12:43', 'no'),
(166, 90, '2025-03-24 21:13:35', 'no'),
(167, 92, '2025-03-24 21:20:59', 'no'),
(168, 1, '2025-03-24 21:23:30', 'no'),
(169, 92, '2025-03-24 21:25:20', 'no'),
(170, 71, '2025-03-24 21:31:35', 'no'),
(171, 72, '2025-03-24 21:32:08', 'no'),
(172, 73, '2025-03-24 21:32:35', 'no'),
(173, 74, '2025-03-24 21:33:34', 'no'),
(174, 75, '2025-03-24 21:34:06', 'no'),
(175, 1, '2025-03-24 21:34:46', 'no'),
(176, 1, '2025-03-25 04:11:32', 'no'),
(177, 2, '2025-03-25 04:26:01', 'no'),
(178, 1, '2025-03-25 04:25:06', 'no'),
(179, 2, '2025-03-25 04:43:30', 'no'),
(180, 1, '2025-03-25 04:26:42', 'no'),
(181, 7, '2025-03-25 04:28:23', 'no'),
(182, 8, '2025-03-25 04:31:35', 'no'),
(183, 35, '2025-03-25 04:33:28', 'no'),
(184, 37, '2025-03-25 04:34:07', 'no'),
(185, 6, '2025-03-25 04:39:16', 'no'),
(186, 11, '2025-03-25 04:41:27', 'no'),
(187, 1, '2025-03-25 05:16:01', 'no'),
(188, 21, '2025-03-25 04:59:59', 'no'),
(189, 22, '2025-03-25 05:00:33', 'no'),
(190, 29, '2025-03-25 05:01:24', 'no'),
(191, 30, '2025-03-25 05:03:48', 'no'),
(192, 31, '2025-03-25 05:06:19', 'no'),
(193, 17, '2025-03-25 05:07:02', 'no'),
(194, 2, '2025-03-25 05:07:52', 'no'),
(195, 19, '2025-03-25 05:11:44', 'no'),
(196, 24, '2025-03-25 05:13:53', 'no'),
(197, 1, '2025-03-25 05:19:00', 'no'),
(198, 2, '2025-03-25 05:18:47', 'no'),
(199, 8, '2025-03-25 09:18:25', 'no'),
(200, 1, '2025-03-25 11:26:59', 'no'),
(201, 1, '2025-03-26 04:05:09', 'no'),
(202, 2, '2025-03-26 06:50:55', 'no'),
(203, 1, '2025-03-26 06:51:36', 'no'),
(204, 2, '2025-03-26 07:07:38', 'no'),
(205, 51, '2025-03-26 19:00:28', 'no'),
(206, 2, '2025-03-26 19:57:24', 'no'),
(207, 52, '2025-03-26 19:01:46', 'no'),
(208, 53, '2025-03-26 19:03:22', 'no'),
(209, 54, '2025-03-26 19:05:54', 'no'),
(210, 55, '2025-03-26 19:08:17', 'no'),
(211, 41, '2025-03-26 19:12:03', 'no'),
(212, 42, '2025-03-26 19:26:35', 'no'),
(213, 43, '2025-03-26 19:28:07', 'no'),
(214, 44, '2025-03-26 19:29:17', 'no'),
(215, 45, '2025-03-26 19:30:23', 'no'),
(216, 34, '2025-03-26 19:42:30', 'no'),
(217, 47, '2025-03-26 19:43:42', 'no'),
(218, 48, '2025-03-26 19:44:40', 'no'),
(219, 49, '2025-03-26 19:45:18', 'no'),
(220, 50, '2025-03-26 19:48:06', 'no'),
(221, 65, '2025-03-26 19:55:53', 'no'),
(222, 3, '2025-03-26 19:59:23', 'no'),
(223, 1, '2025-03-26 20:41:09', 'no'),
(224, 27, '2025-03-26 20:02:10', 'no'),
(225, 72, '2025-03-26 20:08:59', 'no'),
(226, 73, '2025-03-26 20:09:48', 'no'),
(227, 74, '2025-03-26 20:11:56', 'no'),
(228, 76, '2025-03-26 20:19:47', 'no'),
(229, 81, '2025-03-26 20:21:21', 'no'),
(230, 83, '2025-03-26 20:24:15', 'no'),
(231, 88, '2025-03-26 20:41:05', 'no'),
(232, 2, '2025-03-27 04:21:23', 'no'),
(233, 6, '2025-03-27 04:27:36', 'no'),
(234, 2, '2025-03-27 04:30:27', 'no'),
(235, 54, '2025-03-27 05:02:33', 'no'),
(236, 2, '2025-03-27 04:41:30', 'no'),
(237, 17, '2025-03-27 04:44:12', 'no'),
(238, 19, '2025-03-27 04:46:08', 'no'),
(239, 70, '2025-03-27 04:50:47', 'no'),
(240, 71, '2025-03-27 05:02:24', 'no'),
(241, 2, '2025-03-27 06:41:35', 'no'),
(242, 1, '2025-03-31 03:16:30', 'no'),
(243, 1, '2025-03-31 04:28:01', 'no'),
(244, 1, '2025-03-31 04:36:33', 'no'),
(245, 1, '2025-04-01 06:04:43', 'no'),
(246, 1, '2025-04-02 08:18:10', 'no'),
(247, 1, '2025-04-02 08:52:20', 'no'),
(248, 94, '2025-04-02 09:19:02', 'no'),
(249, 1, '2025-04-02 10:12:10', 'no'),
(250, 95, '2025-04-02 09:42:27', 'no'),
(251, 96, '2025-04-02 09:56:47', 'no'),
(252, 96, '2025-04-02 09:58:02', 'no'),
(253, 100, '2025-04-02 10:22:18', 'no'),
(254, 46, '2025-04-02 10:25:23', 'no'),
(255, 2, '2025-04-02 10:48:49', 'no'),
(256, 1, '2025-04-02 10:49:08', 'no'),
(257, 1, '2025-04-04 05:44:51', 'no'),
(258, 2, '2025-04-04 05:46:01', 'no'),
(259, 24, '2025-04-04 05:53:47', 'no'),
(260, 1, '2025-04-04 05:55:57', 'no'),
(261, 2, '2025-04-04 05:56:22', 'no'),
(262, 24, '2025-04-04 05:57:58', 'no'),
(263, 1, '2025-04-04 05:59:51', 'no'),
(264, 91, '2025-04-04 05:59:56', 'no'),
(265, 2, '2025-04-04 06:09:11', 'no'),
(266, 42, '2025-04-04 06:07:51', 'no'),
(267, 53, '2025-04-04 06:09:16', 'no');

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
(1, 1, 1, 'Hindu', 'yes', '3', 6.9, 70, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Mesh'),
(2, 2, 55, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Chennai', 'Skinny', 'Normal', 'Tula'),
(3, 3, 27, 'Hindu', 'yes', '1', 6.7, 82, '1', 'Divorced', 'Amritsar', 'Skinny', 'Dark', 'Tula'),
(5, 5, 6, 'Hindu', 'yes', '2', 6.7, 70, '1', 'Divorced', 'Hampi', 'Fat', 'Dark', 'Makara'),
(6, 6, 4, 'Hindu', 'yes', '1', 6.7, 78, '1', 'Single', 'Satara', 'Skinny', 'Dark', 'Mesh'),
(7, 7, 80, 'Hindu', 'yes', '1', 6.9, 82, '1', 'Single', 'Rajkot', 'Skinny', 'Dark', 'Mesh'),
(8, 8, 47, 'Hindu', 'yes', '1', 6.7, 71, '1', 'Divorced', 'Chennai', 'Skinny', 'Dark', 'Varishabha'),
(9, 9, 25, 'Hindu', 'yes', '1', 5.6, 82, '1', 'Separated', 'Surat', 'Fat', 'Dark', 'Kumbha'),
(11, 11, 66, 'Hindu', 'yes', '1', 6.3, 82, '1', 'Single', 'Bhavnagar', 'Fat', 'Dark', 'Kumbha'),
(16, 17, 2, 'Hindu', 'yes', '1', 5.6, 55, '1', 'Divorced', 'Jamnagar', 'Skinny', 'Dark', 'Tula'),
(18, 19, 16, 'Sikh', 'yes', '1', 5.8, 58, '1', 'Divorced', 'Jalgaon', 'Fat', 'Dark', 'Dhanur'),
(21, 22, 4, 'Hindu', 'yes', '1', 5.4, 57, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Kumbha'),
(22, 24, 37, 'Hindu', 'yes', '', 5.6, 58, '1', 'Divorced', 'Amritsar', 'Skinny', 'Dark', 'Kumbha'),
(23, 25, 2, 'Hindu', 'yes', '1', 5.2, 50, '1', 'Single', 'Chennai', 'Skinny', 'Dark', 'Kumbha'),
(24, 26, 13, 'Hindu', 'yes', '1', 5.3, 55, '0', 'Single', 'Darbhanga', 'Skinny', 'Dark', 'Vrischika'),
(25, 27, 38, 'Hindu', 'yes', '1', 5.2, 70, '1', 'Single', 'Noida', 'Normal', 'Normal', 'Tula'),
(26, 28, 3, 'Hindu', 'yes', '1', 5.6, 70, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Kumbha'),
(27, 29, 5, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Prayagraj', 'Skinny', 'Dark', 'Mesh'),
(28, 30, 11, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Salem', 'Normal', 'Brown', 'Mesh'),
(29, 31, 5, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Lucknow', 'Skinny', 'Dark', 'Tula'),
(30, 32, 4, 'Hindu', 'no', '1', 5.2, 52, '1', 'Single', 'Jalgaon', 'Normal', 'Dark', 'Mithuna'),
(31, 33, 36, 'Hindu', 'yes', '1', 5.1, 50, '0', 'Single', 'Lucknow', 'Skinny', 'Dark', 'Varishabha'),
(32, 34, 11, 'Sikh', 'yes', '1', 5.2, 60, '1', 'Awaiting', 'Suratgarh', 'Fat', 'Brown', 'Karka'),
(33, 35, 5, 'Hindu', 'no', '1', 5.2, 66, '1', 'Divorced', 'Aizawl', 'Skinny', 'Dark', 'Makara'),
(34, 36, 13, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Makara'),
(35, 37, 5, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Bhusawal', 'Skinny', 'Dark', 'Kanya'),
(36, 38, 1, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Widowed', 'Jamkhandi', 'Skinny', 'Dark', 'Varishabha'),
(37, 39, 13, 'Jain', 'yes', '1', 5.2, 60, '1', 'Single', 'Jamshedpur', 'Fat', 'Dark', 'Sinha'),
(39, 41, 15, 'Sikh', 'yes', '1', 6.6, 95, '1', 'Single', 'Amritsar', 'Normal', 'Normal', 'Makara'),
(40, 42, 16, 'Sikh', 'no', '1', 6.9, 95, '1', 'Single', 'Barn?la', 'Skinny', 'Dark', 'Mesh'),
(41, 43, 17, 'Sikh', 'yes', '1', 6.5, 90, '1', 'Divorced', 'Amritsar', 'Fat', 'Dark', 'Mithuna'),
(42, 44, 15, 'Sikh', 'yes', '2', 5.6, 60, '1', 'Awaiting', 'Faridabad', 'Normal', 'Normal', 'Kumbha'),
(43, 45, 16, 'Sikh', 'no', '1', 6.5, 90, '1', 'Single', 'Pathankot', 'Normal', 'Normal', 'Sinha'),
(44, 46, 10, 'Christian', 'yes', '1', 5.6, 82, '1', 'Single', 'Balotra', 'Normal', 'Normal', 'Makara'),
(45, 47, 32, 'Christian', 'yes', '1', 5.5, 70, '1', 'Divorced', 'Alappuzha', 'Normal', 'Normal', 'Sinha'),
(46, 48, 34, 'Christian', 'yes', '1', 5.6, 70, '1', 'Single', 'Chennai', 'Fat', 'Normal', 'Meena'),
(47, 49, 50, 'Christian', 'yes', '1', 6.5, 90, '1', 'Single', 'Niz?m?b?d', 'Normal', 'Normal', 'Makara'),
(48, 50, 11, 'Christian', 'no', '2', 6.5, 70, '1', 'Awaiting', 'Dim?pur', 'Normal', 'Normal', 'Mithuna'),
(49, 51, 20, 'Buddhist', 'yes', '1', 5.6, 90, '1', 'Single', 'Gangtok', 'Skinny', 'Brown', 'Kumbha'),
(50, 52, 20, 'Buddhist', 'yes', '2', 5.2, 90, '1', 'Awaiting', 'Khopoli', 'Normal', 'Normal', 'Mesh'),
(51, 53, 20, 'Buddhist', 'no', '1', 6.1, 59, '0', 'Single', 'Shillong', 'Normal', 'Normal', 'Sinha'),
(52, 54, 21, 'Buddhist', 'yes', '1', 5.9, 95, '1', 'Single', 'Imphal', 'Fat', 'Dark', 'Vrischika'),
(53, 55, 21, 'Buddhist', 'no', '1', 5.6, 60, '1', 'Single', 'Cuttack', 'Skinny', 'Brown', 'Karka'),
(54, 56, 13, 'Jain', 'yes', '1', 5.2, 70, '1', 'Single', 'Surat', 'Skinny', 'Brown', 'Karka'),
(55, 57, 14, 'Jain', 'yes', '1', 5.6, 78, '1', 'Single', 'Gurugram', 'Normal', 'Normal', 'Kumbha'),
(56, 58, 13, 'Jain', 'yes', '1', 5.9, 75, '1', 'Single', 'Mumbai', 'Skinny', 'Normal', 'Varishabha'),
(57, 59, 14, 'Jain', 'no', '1', 5.6, 60, '1', 'Divorced', 'Kolkata', 'Normal', 'Normal', 'Makara'),
(58, 60, 13, 'Jain', 'yes', '2', 6, 90, '1', 'Divorced', 'Surat', 'Normal', 'Brown', 'Mesh'),
(59, 61, 18, 'Parsi', 'yes', '1', 5.6, 110, '1', 'Single', 'Surat', 'Fat', 'Brown', 'Tula'),
(60, 62, 19, 'Parsi', 'yes', '1', 5.2, 65, '1', 'Single', 'Rohtak', 'Skinny', 'Dark', 'Makara'),
(61, 63, 18, 'Parsi', 'yes', '1', 6.5, 98, '1', 'Single', 'Amravati', 'Normal', 'Normal', 'Meena'),
(62, 64, 19, 'Parsi', 'yes', '1', 5.6, 88, '1', 'Single', 'Surat', 'Normal', 'Normal', 'Tula'),
(63, 65, 19, 'Parsi', 'yes', '3', 5.6, 85, '1', 'Divorced', 'Ayodhya', 'Normal', 'Normal', 'Mesh'),
(64, 66, 15, 'Sikh', 'yes', '1', 5.1, 60, '1', 'Single', 'Pati?la', 'Normal', 'Normal', 'Mithuna'),
(65, 67, 16, 'Sikh', 'yes', '1', 5.3, 66, '1', 'Single', 'Raigarh', 'Normal', 'Normal', 'Makara'),
(66, 68, 17, 'Sikh', 'yes', '1', 5.7, 70, '1', 'Single', 'Faridabad', 'Normal', 'Normal', 'Mithuna'),
(67, 69, 16, 'Sikh', 'yes', '1', 5.6, 70, '1', 'Single', 'Amritsar', 'Normal', 'Normal', 'Mithuna'),
(68, 70, 17, 'Sikh', 'yes', '2', 6, 79, '1', 'Awaiting', 'Haridwar', 'Skinny', 'Normal', 'Kanya'),
(69, 71, 32, 'Christian', 'yes', '1', 5.2, 55, '1', 'Single', 'Thiruvananthapuram', 'Normal', 'Normal', 'Tula'),
(70, 72, 10, 'Christian', 'yes', '1', 5.6, 60, '1', 'Single', 'Gangtok', 'Skinny', 'Brown', 'Makara'),
(71, 73, 34, 'Christian', 'yes', '1', 6.1, 88, '1', 'Single', 'Mumbai', 'Normal', 'Normal', 'Kumbha'),
(72, 74, 50, 'Christian', 'yes', '1', 5.2, 70, '1', 'Single', 'Palakkad', 'Normal', 'Normal', 'Vrischika'),
(73, 75, 11, 'Christian', 'yes', '2', 5.2, 60, '1', 'Divorced', 'Coimbatore', 'Normal', 'Normal', 'Varishabha'),
(74, 76, 20, 'Buddhist', 'yes', '1', 4.4, 55, '1', 'Single', 'Bikaner', 'Normal', 'Normal', 'Kumbha'),
(75, 77, 21, 'Buddhist', 'yes', '1', 5.6, 70, '1', 'Single', 'Shimla', 'Fat', 'Brown', 'Sinha'),
(76, 78, 20, 'Buddhist', 'no', '1', 5.2, 60, '1', 'Single', 'Bishnupur', 'Skinny', 'Dark', 'Sinha'),
(77, 79, 21, 'Buddhist', 'yes', '2', 5.6, 80, '1', 'Divorced', 'Cuttack', 'Normal', 'Normal', 'Mesh'),
(78, 80, 20, 'Buddhist', 'yes', '1', 5.2, 79, '1', 'Divorced', 'Kohima', 'Normal', 'Normal', 'Vrischika'),
(79, 81, 13, 'Jain', 'yes', '1', 4.9, 60, '1', 'Single', 'Bhopal', 'Normal', 'Normal', 'Kanya'),
(80, 82, 14, 'Jain', 'yes', '1', 5.6, 70, '1', 'Single', 'Bhopal', 'Skinny', 'Normal', 'Mithuna'),
(81, 83, 13, 'Jain', 'yes', '1', 5.6, 60, '1', 'Single', 'Ajmer', 'Normal', 'Normal', 'Tula'),
(82, 86, 14, 'Jain', 'yes', '3', 6.1, 99, '0', 'Divorced', 'Jaipur', 'Normal', 'Normal', 'Varishabha'),
(83, 87, 14, 'Jain', 'yes', '2', 5.6, 60, '1', 'Awaiting', 'Jaisalmer', 'Normal', 'Normal', 'Mesh'),
(84, 88, 18, 'Parsi', 'yes', '1', 5.1, 70, '1', 'Single', 'Jodhpur', 'Normal', 'Normal', 'Meen'),
(85, 89, 19, 'Parsi', 'yes', '1', 5.6, 70, '1', 'Single', 'Udaipur', 'Skinny', 'Brown', 'Dhanur'),
(87, 90, 18, 'Parsi', 'yes', '1', 5.2, 70, '1', 'Single', 'Chittorgarh', 'Normal', 'Normal', 'Tula'),
(88, 91, 19, 'Parsi', 'yes', '1', 5.6, 88, '1', 'Single', 'Amritsar', 'Normal', 'Normal', 'Sinha'),
(89, 92, 18, 'Parsi', 'yes', '2', 5.7, 89, '1', 'Divorced', 'Surat', 'Normal', 'Normal', 'Vrischika'),
(91, 94, 7, 'Muslim', 'yes', '1', 5.6, 88, '1', 'Single', 'surat', 'Normal', 'Normal', 'Mesh'),
(92, 95, 30, 'Muslim', 'yes', '1', 5.2, 85, '1', 'Single', 'mumbai', 'Normal', 'Normal', 'Meena'),
(95, 100, 8, 'Muslim', 'yes', '2', 5.2, 70, '1', 'Divorced', 'bengaluru', 'Normal', 'Normal', 'Kumbha'),
(96, 101, 30, 'Muslim', 'yes', '1', 5.6, 70, '1', 'Single', 'surat', 'Normal', 'Normal', 'Dhanur'),
(97, 102, 7, 'Muslim', 'yes', '1', 6.1, 90, '1', 'Single', 'thiruvananthapuram', 'Normal', 'Normal', 'Varishabha'),
(98, 103, 88, 'Muslim', 'yes', '3', 5.6, 88, '1', 'Divorced', 'vadodara', 'Normal', 'Normal', 'Kumbha');

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
(1, 1, 'M.B.B.S.', 'Private', 'Doctor', 'Other', '  Alberto Hospital', 1000000, 'hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is watching movies and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(2, 2, 'B.B.A', 'Government', 'Bussiness', 'HR', 'L&T ', 1000000, 'hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is watching movies and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(3, 3, 'B.C.A', 'Government', 'Manager', 'HR', 'Pulse Digital company', 700000, 'hello!,I am 29 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is volley ball,Hangout with family and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(5, 5, 'B.com', 'Self Employee', 'Manager', 'Admin', 'Blue Horizon Enterprises', 600000, 'hello!,I am 30 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling,hangout with family and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(6, 6, 'B.B.A', 'Private', 'Bussiness', 'HR', 'BrightEdge Global', 800000, 'hello!,I am 29 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is travel , music and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(7, 7, 'M.B.B.S.', 'Government', 'Doctor', 'Other', 'Mahavir Hospital', 2000000, 'hello!,I am 27 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and cooking . I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(8, 8, 'M.B.A', 'Private', 'Bussiness', 'Accountant', 'SolarSync Technologies', 500000, 'hello!,I am 30 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is travel  and yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(9, 9, 'B.C.A', 'Government', 'Manager', 'Other', 'L&T ', 900000, 'hello!,I am 31 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is vollyball believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(11, 11, 'B.B.A', 'Government', 'Bussiness', 'Accountant', 'StellarPulse Tech', 500000, 'hello!,I am 27 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(16, 16, 'B.B.A', 'Private', '', 'Accountant', 'Ignite Studios', 500000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(18, 18, 'B.B.A', 'Private', 'Librarian', 'Other', 'peace library', 200000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling,cooking and book reading . I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(21, 21, 'B.B.A', 'Private', 'Bussiness', 'Accountant', 'L&T ', 1000000, 'hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling and music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(22, 22, 'M.B.A', 'Government', 'Bussiness', 'Accountant', 'Visionary Works', 500000, 'hello!,I am 29 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(23, 23, 'B.Ed.', 'Private', 'Teacher', 'Other', 'SPB school', 440000, 'hello!,I am 23 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(24, 24, 'B.Tech', 'Private', 'Manager', 'Admin', 'Sanskriti Solutions', 500000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(25, 25, 'B.Ed.', 'Private', 'Social Worker', 'Other', 'BharatTech Innovations', 600000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(26, 26, 'M.C.A', 'Self Employee', 'Other', 'Other', 'Ujjwal Enterprises', 700000, 'hello!,I am 23 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is volleyball and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(27, 27, 'B.B.A', 'Private', 'Bussiness', 'Accountant', 'Ujjwal Enterprises', 600000, 'hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family ang cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(28, 28, 'B.C.A', 'Private', 'Manager', 'Admin', 'Vedic Ventures', 700000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(29, 29, 'B.C.A', 'Private', 'Manager', 'Admin', 'IndusEdge Consulting', 900000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and book reading. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(30, 30, 'B.B.A', 'Private', 'Bussiness', 'Accountant', 'Jeevan Innovations', 800000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and book reading. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(31, 31, 'B.Tech', 'Private', 'Teacher', 'Other', 'Triveni Consulting', 500000, 'hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is book reading and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(32, 32, 'B.C.A', 'Self Employee', 'Doctor', 'Accountant', 'L&T ', 100000, 'goodiokd'),
(33, 33, 'B.B.A', 'Private', '', 'HR', '', 800000, 'hello!,I am 32 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(34, 34, 'B.B.A', 'Government', 'Bussiness', 'Admin', '', 800000, 'hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(35, 35, 'B.C.A', 'Private', 'Manager', 'Admin', 'Tata', 800000, 'hello!,I am 30 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is  reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(36, 36, 'M.B.A', 'Private', 'Bussiness', 'Admin', 'SaffronSky Ventures', 500000, 'hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is watching movies and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(37, 37, 'B.com', 'Private', 'Manager', 'Admin', 'Vastra Creations', 900000, 'hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax'),
(39, 39, 'B.A', 'Government', 'Bussiness', 'Other', 'Zenith Solutions Pvt. Ltd.', 800000, 'Hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(40, 40, 'B.com', 'Self Employee', 'Manager', 'Accountant', 'BlueWave Technologies', 780000, 'Hello!, I am 25 years old, who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel, Books Reading with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(41, 41, 'M.B.B.S.', 'Government', 'Doctor', 'Admin', 'Apex Hospital', 1000000, 'Hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Cooking,playing and Music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(42, 42, 'B.B.A', 'Private', 'Bussiness', 'Other', 'BrightLeaf Consulting', 800000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Yoga and Adventure Travel. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(43, 43, 'B.C.A', 'Government', 'Other', 'HR', 'Nimbus Technologies', 900000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Cooking and yoga with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(44, 44, 'M.B.A', 'Government', 'Bussiness', 'Other', 'NovaCore Systems', 7500000, 'Hello!,I am 28 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(45, 45, 'M.B.A', 'Private', 'Manager', 'Financer', 'Infinity Solutions', 7800000, 'Hello!,I am 28 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(46, 46, 'B.com', 'Private', 'Other', 'HR', 'SkyHigh Tech', 6000000, 'Hello!,I am 27 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Cooking and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(47, 47, 'M.Tech', 'Government', 'Other', 'Other', 'BrightPath Analytics', 7500000, 'Hello!,I am 23 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is yoga and movies. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(48, 48, 'L.L.B.', 'Self Employee', 'Other', 'Other', 'ClearPath Advisors', 10000000, 'Hello!,I am 35 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and volleyball. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(49, 49, 'Other', 'Government', 'Other', 'Other', 'OpenSky Energy', 5500000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(50, 50, 'M.com', 'Private', 'Bussiness', 'Accountant', 'SmartGrid Solutions', 7800000, 'Hello!,I am 27 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is watching and volleyball. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(51, 51, 'M.B.A', 'Private', 'Bussiness', 'Other', 'CoreFusion Technologies', 9900000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(52, 52, 'B.Ed.', 'Government', 'Teacher', 'Other', 'UrbanEdge Development', 4500000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Books Reading and Music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(53, 53, 'M.Tech', 'Government', 'Other', 'Other', 'GreenTech Innovations', 800000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and Adventure Travel. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(54, 54, 'B.com', 'Private', 'Bussiness', 'Admin', 'Nexus Marketing Solutions', 700000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(55, 55, 'B.B.A', 'Private', 'Bussiness', 'Financer', 'TrueNorth Consulting', 7800000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(56, 56, 'M.B.A', 'Private', 'Manager', 'Other', 'AlphaWave Technologies', 1300000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling and music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(57, 57, 'B.Ed.', 'Private', 'Manager', 'Admin', 'SilverStream Solutions', 8900000, 'Hello!,I am 31 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(58, 58, 'M.com', 'Private', 'Social Worker', 'HR', 'BrightStar Consulting', 1500000, 'Hello!,I am 30 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and volleyball. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(59, 59, 'M.B.B.S.', 'Private', 'Doctor', 'Other', 'PeakHealth Medical', 1600000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(60, 60, 'M.C.A', 'Private', 'Manager', 'Other', 'SmartSolutions IT', 950000, 'Hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(61, 61, 'B.Tech', 'Private', 'Social Worker', 'HR', 'ClearBridge Financial', 850000, 'Hello!,I am 27 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling and Adventure Travel. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(62, 62, 'B.C.A', 'Private', 'Other', 'Other', 'TrueWave Technologies', 785000, 'Hello!,I am 23 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is yogaand volleyball. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(63, 63, 'M.C.A', 'Private', 'Social Worker', 'Financer', 'Summit Edge Group', 855000, 'Hello!,I am 31 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and modelling with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(64, 64, 'B.com', 'Government', 'Bussiness', 'Admin', 'RapidGrowth Partners', 400000, 'Hello!,I am 22 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is adventure travel and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(65, 65, 'M.Tech', 'Private', 'Manager', 'Accountant', 'PrimeTech Solutions', 650000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Books Reading and Hangout with Family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(66, 66, 'M.C.A', 'Government', 'Social Worker', 'HR', 'ClearQuest Consulting', 780000, 'Hello!,I am 22 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Modelling and Music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(67, 67, 'M.B.B.S.', 'Private', 'Doctor', 'Other', 'Green Valley Hospital', 955000, 'Hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and Watching. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(68, 68, 'L.L.B.', 'Self Employee', 'Other', 'HR', 'TruePath Advisors', 500000, 'Hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Volleyball and Yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(69, 69, 'B.com', 'Government', 'Bussiness', 'Admin', 'FusionEdge Solutions', 450000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(70, 70, 'M.B.B.S.', 'Private', 'Doctor', 'Other', 'Global Care Hospital', 950000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Cookingand hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(71, 71, 'M.B.A', 'Government', 'Manager', 'Financer', 'Skyline Technologies', 1000000, 'Hello!,I am 22 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Volleyball and Yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(72, 72, 'B.A', 'Private', 'Social Worker', 'Other', 'ClearView Financial', 890000, 'Hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and Movies. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(73, 73, 'B.B.A', 'Government', 'Bussiness', 'HR', 'NextPhase Technologies', 785000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(74, 74, 'B.com', 'Government', 'Bussiness', 'Admin', 'BlueSky Legal Advisors', 600000, 'Hello!,I am 20 years old ,who enjoys spending qual...'),
(75, 75, 'B.B.A', 'Private', 'Manager', 'Clerk', 'RapidEdge Solutions', 800000, 'Hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(76, 76, 'B.C.A', 'Private', 'Social Worker', 'Financer', 'FusionWorks Technologies', 9900000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Modelling and Music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(77, 77, 'B.A', 'Government', 'Teacher', 'Other', 'BrightSpark Education', 1200000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(78, 78, 'B.Tech', 'Private', 'Other', 'HR', 'SmartSolutions IT', 1350000, 'Hello!,I am 23 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Volleyball and Yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(79, 79, 'M.B.B.S.', 'Private', 'Doctor', 'Admin', 'BrightStar Health', 900000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Cooking I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(80, 80, 'M.Tech', 'Private', 'Social Worker', 'Accountant', 'ClearBridge Financial', 1300000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(81, 81, 'B.C.A', 'Government', 'Manager', 'Financer', 'TrueWave Technologies', 455000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Watching and Movies. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(82, 82, 'B.B.A', 'Private', 'Manager', 'Financer', 'PrimeTech Solutions', 800000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and volleyball. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(83, 83, 'M.com', 'Private', 'Bussiness', 'Financer', 'TrueVision Marketing', 955000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(84, 84, 'B.com', 'Government', 'Bussiness', 'Admin', 'RapidCore Solutions', 250000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(85, 85, 'B.B.A', 'Private', 'Manager', 'Financer', 'SkyHigh Consulting', 600000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Books Reading and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(87, 87, 'B.A', 'Government', 'Manager', 'HR', 'TrueEdge Logistics', 255000, 'Hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is playing and hungout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(88, 88, 'M.C.A', 'Private', 'Social Worker', 'Admin', 'AlphaCore IT Solutions', 1050000, 'Hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is cooking and music. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(89, 89, 'M.C.A', 'Government', 'Social Worker', 'HR', 'UrbanEdge IT Solutions', 1400000, 'Hello!,I am 24 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Books Reading. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(91, 91, 'B.Com', 'Private', 'Accountant', 'Accountant', 'HDFC Bank', 500000, 'Hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is \r\nAdventure Travel and astronomy. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(92, 92, 'B.Arch', 'Private', 'Architect', 'HR Manager', 'Zoho Corporation', 700000, 'Hello!,I am 21 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Blogging and Books Reading. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(93, 95, 'M.B.A', 'Private', 'Manager', 'Branch Manager', 'Bharti Airtel', 1000000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is books reading and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(94, 96, 'B.Tech', 'Private', 'Graphic Designer', 'Customer Support Executive', 'Mindtree', 800000, 'Hello!,I am 26 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Adventure Travel and Books Reading. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(95, 97, 'L.L.B.', 'Private', 'Lawyer', 'Department Head', 'Pioneer Legal Advisors', 500000, 'Hello!,I am 25 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is dancing and cycling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n'),
(96, 98, 'M.Sc', 'Government', 'Fashion Designer', 'General Manager', 'Noble Noir Designs', 1100000, 'Hello!,I am 35 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is chess and cooking. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.\r\n');

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
(1, 142, '20250325052637hinduman1.jpg', 'Aarav', 'Sharma', '998877665544', '9988776655', 'aarav123@gmail.com', 'Aarav@123', 'Brother', 'Female', 'Male', '1998-12-28', '2025392812', 26, 22, 27, '2025-03-18', '1'),
(2, 527, '20250327054115hinduwoman11.jpg', 'Ruhi', 'Reddy', '998877665533', '9988776644', 'ruhi123@gmail.com', 'Ruhi@123', 'Myself', 'Male', 'Female', '1999-02-02', '2025110202', 26, 27, 30, '2025-03-18', '1'),
(3, 458, '20250326085622hindu6.jpg', 'Roshan', 'Patel', '998877665548', '9988776677', 'roshan123@gmail.com', 'Roshan@123', 'Son', 'Female', 'Male', '1996-01-30', '2025033001', 29, 23, 26, '2025-03-18', '1'),
(5, 136, '20250319121431girl50.jpg', 'Jaismin', 'Jaiswal', '998877665577', '7990212140', 'jaismin123@gmail.com', 'Jaismin@123', 'Myself', 'Male', 'Female', '1994-06-07', '2025510706', 30, 33, 35, '2025-03-18', '1'),
(6, 181, '20250327052200hinduman11.jpg', 'Aniket', 'Chauhan', '998877678965', '9988776423', 'aniket123@gmail.com', 'Aniket@123', 'Myself', 'Female', 'Male', '1996-02-06', '2025530602', 29, 22, 27, '2025-03-18', '1'),
(7, 510, '20250325052826hinduman2.jpg', 'Abhimanyu', 'Birla', '998877665777', '8477335995', 'abhimanyu123@gmail.com', 'Abhimanyu@123', 'Brother', 'Female', 'Male', '1997-10-15', '2025291510', 27, 23, 26, '2025-03-18', '1'),
(8, 520, '20250325101820vikram.jpg', 'Vikram', 'Iyer', '123343221284', '7990212147', 'vikram123@gmail.com', 'Vikram@123', 'Brother', 'Female', 'Male', '1995-01-31', '2025123101', 30, 25, 30, '2025-03-18', '1'),
(9, 148, '20250319043740men7.jpg', 'Sameer', 'Tiwari', '123521362378', '1234567899', 'sameer123@gmail.com', 'sameer@123', 'Son', 'Female', 'Male', '1994-03-17', '2025271703', 31, 22, 27, '2025-03-18', '1'),
(11, 340, '20250325054112hinduman7.jpg', 'Siddharth', ' Kapoor', '675849364545', '1274567600', 'siddharth123@gmail.com', 'Siddharth@123', 'Son', 'Female', 'Male', '1998-02-03', '2025350302', 27, 26, 29, '2025-03-18', '1'),
(17, 362, '20250327054316hinduwoman12.jpg', 'riya', 'mehta', '325641789362', '1245896375', 'riya123@gmail.com', 'Riya@123', 'Sister', 'Male', 'Female', '2004-12-10', '2025301012', 20, 25, 30, '2025-03-18', '1'),
(19, 110, '20250327054452hinduwoman13.jpg', 'Dharmi', 'Bajaj', '789951753122', '8529637890', 'dharmi123@gmail.com', 'Dharmi@123', 'Daughter', 'Male', 'Female', '2004-12-09', '2025160912', 20, 24, 34, '2025-03-18', '1'),
(22, 231, '20250325060038hinduwoman2.jpg', 'sanvi', 'patel', '785496123055', '7854961230', 'sanvi123@gmail.com', 'Sanvi@123', 'Daughter', 'Male', 'Female', '2003-10-06', '2025300610', 21, 28, 32, '2025-03-19', '1'),
(24, 458, '20250404075648hindu34.jpg', 'Shalini', 'Rao', '784521968888', '7845219688', 'shalini123@gmail.com', 'Shalini@123', 'Sister', 'Male', 'Female', '1995-06-06', '2025040606', 29, 30, 35, '2025-03-19', '1'),
(25, 155, '20250319120439girl38.jpg', 'Sneha', 'Desai', '785694128877', '7856941288', 'sneha123@gmail.com', 'Sneha@123', 'Sister', 'Male', 'Female', '2002-02-12', '2025101202', 23, 22, 30, '2025-03-19', '1'),
(26, 342, '20250319060830girl18.jpg', 'Neha', 'Joshi', '785496586689', '7854965866', 'neha123@gmail.com', 'Neha@123', 'Myself', 'Male', 'Female', '2004-12-10', '2025031012', 20, 26, 30, '2025-03-19', '1'),
(27, 680, '20250326085955hinduwoman11.jpg', 'Richa', 'Sinha', '888888555555', '8877556699', 'richa123@gmail.com', 'Richa@123', 'Sister', 'Male', 'Female', '2000-06-08', '2025240806', 24, 28, 30, '2025-03-19', '1'),
(28, 165, '20250319060958girl20.jpg', 'Shweta', 'Mishra', '675849364578', '7878999999', 'shweta123@gmail.com', 'Shweta@123', 'Daughter', 'Male', 'Female', '2002-02-14', '2025191402', 23, 23, 30, '2025-03-19', '1'),
(29, 524, '20250325060128hinduwoman3.jpg', 'Ananya ', 'Nair', '888888888888', '8888888888', 'ananya123@gmail.com', 'Ananya@123', 'Sister', 'Male', 'Female', '2001-02-06', '2025100602', 24, 26, 30, '2025-03-19', '1'),
(30, 109, '20250325060352hinduwoman4.jpg', 'Aarti ', 'Choudhary ', '777777777777', '7777777777', 'aarti123@gmail.com', 'Aarti@123', 'Daughter', 'Male', 'Female', '2004-12-09', '2025020912', 20, 25, 34, '2025-03-19', '1'),
(31, 170, '20250325060619hinduwoman5.jpg', 'Ritu', 'Sharma', '665689744789', '6656897447', 'ritu123@gmail.com', 'Ritu@123', 'Daughter', 'Male', 'Female', '2004-12-08', '2025140812', 20, 26, 30, '2025-03-19', '1'),
(32, 232, '20250319121809girl52.jpg', 'Kajal', 'Das', '852582558222', '8525825582', 'kajal123@gmail.com', 'Kajal@123', 'Daughter', 'Male', 'Female', '2004-12-03', '2025140312', 20, 26, 32, '2025-03-19', '1'),
(33, 339, '20250319122036girl46.jpg', 'Vidhi', ' Joshi', '858254789888', '8582547898', 'vidhi123@gmail.com', 'Vidhi@123', 'Son', 'male', 'Female', '1999-06-08', '', 25, 26, 33, '2025-03-19', '1'),
(34, 283, '20250326083045sikhman6.jpg', 'heet', 'patel', '111111111112', '1111111110', 'heet123@gmail.com', 'Heet@123', 'Son', 'Female', 'Male', '1995-01-31', '2025413101', 30, 29, 31, '2025-03-19', '1'),
(35, 70, '20250325053332hinduman4.jpg', 'Jay', 'Modi', '789456987555', '7894569875', 'jay123@gmail.com', 'Jay@123', 'Son', 'Female', 'Male', '1991-05-06', '2025230605', 33, 25, 30, '2025-03-19', '1'),
(36, 332, '20250319122203girl53.jpg', 'Janavi', 'Patel', '858585858585', '8585858585', 'janavi123@gmail.com', 'Janavi@123', 'Myself', 'Male', 'Female', '2000-06-06', '2025570606', 24, 23, 28, '2025-03-19', '1'),
(37, 144, '20250325053411hinduman5.jpg', 'Prince', 'Sanepara', '451278936955', '4512789369', 'prince123@gmail.com', 'Prince@123', 'Son', 'Female', 'Male', '1995-01-02', '2025130201', 30, 24, 28, '2025-03-19', '1'),
(38, 260, '20250319122331girl55.jpg', 'Urvi', 'Shah', '787845458588', '7878454585', 'urvi123@gmail.com', 'Urvi@123', 'Myself', 'Male', 'Female', '2000-06-06', '2025020606', 24, 27, 30, '2025-03-19', '1'),
(39, 195, '20250319122414girl56.jpg', 'Mitali', 'Roy', '784521963789', '7874521464', 'mitali123@gmail.com', 'Mitali@123', 'Sister', 'Male', 'Female', '2000-02-01', '2025030102', 25, 28, 30, '2025-03-19', '1'),
(41, 447, '20250320061524sikhmen1.jpg', 'Jaspreet Singh', 'Dhillon', '778899556622', '8888999999', 'jaspreet123@gmail.com', 'Jaspreet@123', 'Myself', 'Female', 'Male', '1999-03-05', '2025030503', 26, 20, 26, '2025-03-20', '1'),
(42, 448, '20250404080618sikhmen13.jpg', 'Amarjit Singh', 'Sandhu', '888888556321', '9988774455', 'amarjit123@gmail.com', 'Amarjit@123', 'Son', 'Female', 'Male', '1999-11-02', '2025000211', 25, 20, 23, '2025-03-20', '1'),
(43, 449, '20250326082726sikhman3.jpg', 'Harpreet Singh', 'Kaur', '789562345698', '8877456988', 'harpreet123@gmail.com', 'Harpreet@123', 'Brother', 'Female', 'Male', '1998-06-10', '2025021006', 26, 20, 27, '2025-03-20', '1'),
(44, 450, '20250326082842sikhman4.jpg', 'Gurpreet Singh', 'Bedi', '789456889956', '8899995869', 'gurpreet123@gmail.com', 'Gurpreet@123', 'Myself', 'Female', 'Male', '2000-06-13', '2025011306', 24, 21, 24, '2025-03-20', '1'),
(45, 463, '20250326082948sikhman5.jpg', 'Manjit Singh', 'Gill', '789456778856', '9988665533', 'manjit123@gmail.com', 'Manjit@123', 'Myself', 'Female', 'Male', '2001-01-09', '2025380901', 24, 20, 23, '2025-03-20', '1'),
(46, 135, '20250402122315cris3.jpg', 'James', 'Carter', '896577445566', '9999999999', 'james123@gmail.com', 'James@123', 'Myself', 'Female', 'Male', '1996-11-14', '2025171411', 28, 22, 28, '2025-03-20', '1'),
(47, 258, '20250326084311christianman2.jpg', 'Michael', 'Walker', '896577445566', '9999999999', 'michael123@gmail.com', 'Michael@123', 'Myself', 'Female', 'Male', '1996-07-19', '2025521907', 28, 25, 30, '2025-03-22', '1'),
(48, 519, '20250326084410christianman3.jpg', 'David', 'Harris', '998877445566', '9988665533', 'david123@gmail.com', 'David@123', 'Son', 'Female', 'Male', '1998-02-02', '2025350202', 27, 20, 25, '2025-03-22', '1'),
(49, 559, '20250326084503christianman4.jpg', 'John', 'Parker', '789589889966', '9988665533', 'john123@gmail.com', 'John@123', 'Brother', 'Female', 'Male', '2001-08-10', '2025431008', 23, 20, 23, '2025-03-22', '1'),
(50, 401, '20250326084616christianman5.jpg', 'Christopher', 'Brooks', '896577445566', '9999999999', 'christopher123@gmail.com', 'chris@123', 'Myself', 'Female', 'Male', '1990-01-10', '2025071001', 35, 20, 33, '2025-03-22', '1'),
(51, 511, '20250326075928budhman1.jpg', 'Siddhartha', 'Gautama', '998877445566', '9999999999', 'siddhartha@gmail.com', 'Siddhartha@1', 'Myself', 'Female', 'Male', '2001-03-08', '2025190803', 24, 20, 23, '2025-03-22', '1'),
(52, 590, '20250326080121budhman2.jpg', 'Ananda', 'Thera', '998877445566', '9999999999', 'ananda123@gmail.com', 'Ananda@123', 'Son', 'Female', 'Male', '1998-03-12', '2025221203', 27, 20, 26, '2025-03-22', '1'),
(53, 24, '20250404080855bud2.jpg', 'Mahakasyapa', 'Thera', '789589889966', '9999999999', 'mahakasyapa123@gmail.com', 'kasyapa@123', 'Brother', 'Female', 'Male', '1999-06-09', '2025590906', 25, 20, 25, '2025-03-22', '1'),
(54, 365, '20250327052930budhman8.jpg', 'Nagarjuna', 'Acharya', '896577445566', '9988665533', 'nagarjuna123@gmail.com', 'Nagarjuna@12', 'Myself', 'Female', 'Male', '1999-06-08', '2025560806', 25, 20, 25, '2025-03-22', '1'),
(55, 422, '20250326080626budhman5.jpg', 'Dogen', 'Zenji', '998877445566', '9988665533', 'dogen123@gmail.com', 'Dogen@123', 'Myself', 'Female', 'Male', '2000-11-09', '2025120911', 24, 20, 24, '2025-03-24', '1'),
(56, 161, '20250324035813jainmen1.jpg', 'Hemchandra', 'Acharya', '998877445566', '9999999999', 'hemchandra123@gmail.com', 'Hemchandra@1', 'Myself', 'Female', 'Male', '2001-01-09', '2025390901', 24, 20, 23, '2025-03-24', '1'),
(57, 175, '20250324044121jainmen2.jpg', 'Shreyans', 'Jain', '998877445566', '9999999999', 'shreyans123@gmail.com', 'Shreyans@123', 'Son', 'Female', 'Male', '1999-07-02', '2025400207', 25, 20, 25, '2025-03-24', '1'),
(58, 351, '20250324045606jainmen3.jpg', 'Vijay', 'Shah', '998877445566', '9988665533', 'vijay123@gmail.com', 'Vijay@123', 'Brother', 'Female', 'Male', '2000-05-12', '2025001205', 24, 20, 24, '2025-03-24', '1'),
(59, 693, '20250324050349jainman4.jpg', 'Ganesh', 'Mehta', '789589889966', '9988665533', 'ganesh123@gmail.com', 'Ganesh@123', 'Myself', 'Female', 'Male', '1994-02-08', '2025400802', 31, 22, 31, '2025-03-24', '1'),
(60, 169, '20250324051109jainman5jpg.jpg', 'Anil', 'Shah', '896577445566', '9999999999', 'anil123@gmail.com', 'Anil@123', 'Brother', 'Female', 'Male', '1994-07-08', '2025400807', 30, 23, 30, '2025-03-24', '1'),
(61, 137, '20250324054447parsi1.jpg', 'Rustom', 'Irani', '998877445566', '9999999999', 'rustom123@gmail.com', 'Rustom@123', 'Myself', 'Female', 'Male', '2001-07-06', '2025510607', 23, 20, 25, '2025-03-24', '1'),
(62, 188, '20250324061827parsi2.jpg', 'Jamshed', 'Sethna', '787896333345', '9999999999', 'jamshed123@gmail.com', 'Jamshed@123', 'Myself', 'Female', 'Male', '2000-01-26', '2025532601', 25, 20, 25, '2025-03-24', '1'),
(63, 329, '20250324063011parsi3.jpg', 'Zubin', 'Billimoria', '778897878888', '8879885633', 'zubin123@gmail.com', 'Zubin@123', 'Myself', 'Female', 'Male', '1997-06-30', '2025053006', 27, 22, 27, '2025-03-24', '1'),
(64, 165, '20250324073822parsi4.jpg', 'Ravji', 'Wadia', '889966556655', '9999999999', 'ravji123@gmail.com', 'Ravji@123', 'Son', 'Female', 'Male', '2001-08-10', '2025531008', 23, 20, 24, '2025-03-24', '1'),
(65, 611, '20250326085218parsi6.jpg', 'Adar', 'Dastur', '789658888888', '7878456596', 'adar123@gmail.com', 'Adar@123', 'Brother', 'Female', 'Male', '1993-08-21', '2025502108', 31, 22, 31, '2025-03-24', '1'),
(66, 464, '20250324115247sikhwoman2.jpg', 'Harleen', 'Kaur', '789632557896', '7878787878', 'harleen123@gmail.com', 'Harleen@123', 'Myself', 'Male', 'Female', '2003-01-01', '2025120101', 22, 20, 25, '2025-03-24', '1'),
(67, 127, '20250324123123sikhwoman3.jpg', 'Jasleen', 'Kaur', '998877445566', '9999999999', 'jasleen123@gmail.com', 'Jasleen@123', 'Myself', 'Male', 'Female', '2004-11-18', '2025581811', 20, 20, 23, '2025-03-24', '1'),
(68, 173, '20250324124233sikhwoman4.jpg', 'Kiran', 'Bedi', '889966556655', '9988665533', 'kiran123@gmail.com', 'Kiran@123', 'Sister', 'Male', 'Female', '2002-12-06', '2025370612', 22, 22, 28, '2025-03-24', '1'),
(69, 222, '20250324125150sikhwoman5.jpg', 'Komal', 'Dhillon', '785411112323', '7894568888', 'komal123@gmail.com', 'Komal@123', 'Myself', 'Male', 'Female', '2003-08-08', '2025020808', 21, 23, 30, '2025-03-24', '1'),
(70, 601, '20250327054639hinduwoman14.jpg', 'Pavneet', 'Sran', '789589889966', '9988665533', 'pavneet123@gmail.com', 'Pavneet@123', 'Myself', 'Male', 'Female', '1999-03-02', '2025390203', 26, 25, 35, '2025-03-24', '1'),
(71, 135, '20250327055222christianwoman21.jpg', 'Rebecca', 'Taylor', '998877445566', '9988665533', 'rebecca123@gmail.com', 'Rebecca@123', 'Myself', 'Male', 'Female', '2004-12-02', '2025060212', 20, 20, 25, '2025-03-24', '1'),
(72, 511, '20250326090824christianwoman11.jpg', 'Julia', 'Harris', '789658998856', '7069683976', 'julia123@gmail.com', 'Julia@123', 'Sister', 'Male', 'Female', '2004-12-22', '2025172212', 20, 20, 28, '2025-03-24', '1'),
(73, 142, '20250326090928christianwoman12jpg.jpg', 'Sophia', 'Clark', '789589889966', '9988665533', 'sophia123@gmail.com', 'Sophia@123', 'Daughter', 'Male', 'Female', '2003-02-19', '2025581902', 22, 20, 30, '2025-03-24', '1'),
(74, 267, '20250326091031christianwoman14.jpg', 'Natalie', 'Lewis', '998877445566', '7069683976', 'natalie123@gmail.com', 'Natalie@123', 'Myself', 'Male', 'Female', '2003-07-10', '2025021007', 21, 20, 25, '2025-03-24', '1'),
(75, 520, '20250324103411chriswoman10.jpg', 'Olivia', 'Walker', '896577445585', '7069683976', 'olivia123@gmail.com', 'Olivia@123', 'Myself', 'Male', 'Female', '2000-02-02', '2025200202', 25, 25, 32, '2025-03-24', '1'),
(76, 32, '20250326091242christianwoman15.jpg', 'Samantha', 'Perera', '998877445444', '9999999785', 'samantha123@gmail.com', 'Samantha@123', 'Myself', 'Male', 'Female', '2004-06-24', '2025212406', 20, 20, 26, '2025-03-25', '1'),
(77, 199, '20250324083613budhwoman2.jpg', 'Maya', 'Dorjee', '998877445566', '9999999999', 'maya123@gmail.com', 'Maya@123', 'Sister', 'Male', 'Female', '2004-01-05', '2025240501', 21, 20, 25, '2025-03-25', '1'),
(78, 362, '20250324084101budhwoman3.jpg', 'Tenzing', 'Lama', '998877448855', '9988444565', 'tenzing123@gmail.com', 'Tenzing@123', 'Daughter', 'Male', 'Female', '2004-09-15', '2025031509', 20, 20, 30, '2025-03-25', '1'),
(79, 329, '20250324084707budhwoman4.jpg', 'Lakshmi', 'Shrestha', '896577445578', '9999978596', 'lakshmi123@gmail.com', 'Lakshmi@123', 'Myself', 'Male', 'Female', '2000-08-31', '2025493108', 24, 25, 35, '2025-03-25', '1'),
(80, 403, '20250324085150budhwoman5.jpg', 'Nima', 'Chettri', '789658998856', '9988665533', 'nima123@gmail.com', 'Nima@123', 'Sister', 'Male', 'Female', '2001-04-13', '2025061304', 23, 24, 33, '2025-03-25', '1'),
(81, 137, '20250326092046jainwoman12.jpg', 'Priya', 'Shah', '889958555528', '9987789456', 'priya123@gmail.com', 'Priya@123', 'Myself', 'Male', 'Female', '2004-12-02', '2025520212', 20, 20, 25, '2025-03-25', '1'),
(82, 272, '20250324092311jainwoman2.jpg', 'Kavya', 'Shah', '998877445566', '9999999999', 'kavya123@gmail.com', 'Kavya@123', 'Sister', 'Male', 'Female', '2004-12-15', '2025221512', 20, 20, 30, '2025-03-25', '1'),
(83, 470, '20250326092320jainwoman13.jpg', 'Riddhi', 'Jain', '99887747896i', '9922223654', 'riddhi123@gmail.com', 'Riddhi@123', 'Daughter', 'Male', 'Female', '2004-11-17', '2025131711', 20, 20, 35, '2025-03-25', '1'),
(86, 489, '20250324093722jainwoman4.jpg', 'Ishita', 'Doshi', '885522963741', '7878555523', 'ishita123@gmail.com', 'Ishita@123', 'Myself', 'Male', 'Female', '2000-02-25', '2025212502', 25, 25, 35, '2025-03-25', '1'),
(87, 490, '20250324094242jainwoman5.jpg', 'Aditi', 'Sanghvi', '787845459635', '9785858444', 'aditi123@gmail.com', 'Aditi@123', 'Sister', 'Male', 'Female', '2000-06-13', '2025461306', 24, 24, 30, '2025-03-25', '1'),
(88, 494, '20250326092630parsiwoman13.jpg', 'Zarina', 'Godrej', '998877445566', '9999554423', 'zarina123@gmail.com', 'Zarina@123', 'Myself', 'Male', 'Female', '2004-08-02', '2025230208', 20, 20, 25, '2025-03-25', '1'),
(89, 510, '20250324095755parsiwoman2.jpg', 'Farah', 'Dastur', '896577445566', '9999992222', 'farah123@gmail.com', 'Farah@123', 'Sister', 'Male', 'Female', '2004-12-02', '2025100212', 20, 20, 28, '2025-03-25', '1'),
(90, 481, '20250324101335parsiwoman3.jpg', 'Rohini', 'Irani', '896577445566', '9999999999', 'rohini123@gmail.com', 'Rohini@123', 'Daughter', 'Male', 'Female', '2003-06-11', '2025391106', 21, 21, 31, '2025-03-25', '1'),
(91, 447, '20250404075935hindu35.jpg', 'Tara', 'Vakil', '998877445566', '9999999999', 'tara123@gmail.com', 'Tara@123', 'Myself', 'Male', 'Female', '2004-12-09', '2025500912', 20, 20, 30, '2025-03-25', '1'),
(92, 165, '20250324102053parshiwoman5..jpg', 'Nazneen', 'Dordi', '898655656542', '8895635585', 'nazneen123@gmail.com', 'Nazneen@123', 'Myself', 'Male', 'Female', '2000-05-03', '2025490305', 24, 25, 35, '2025-03-25', '1'),
(94, 165, '20250402111738muslim1.jpg', 'Amina', 'Ahmed', '998877445566', '9999999999', 'amina123@gmail.com', 'Amina@123', 'Myself', 'Male', 'Female', '2004-02-11', '2025331102', 21, 21, 25, '2025-04-02', '1'),
(95, 342, '20250402114113muslim2.jpg', 'Zainab', 'Khan', '896577445566', '7069683976', 'zainab123@gmail.com', 'Zainab@123', 'Sister', 'Male', 'Female', '2004-01-14', '2025441401', 21, 21, 26, '2025-04-02', '1'),
(100, 228, '20250402122101muslim3.jpg', 'Samira', 'Qureshi', '889977478956', '8877777789', 'samira123@gmail.com', 'Samira@123', 'Myself', 'Male', 'Female', '2000-02-01', '2025500102', 25, 25, 30, '2025-04-02', '1'),
(101, 165, '20250402123452muslimmen1.jpg', 'Faisal', 'Sheikh', '887777774458', '9999977889', 'Faisal123@gmail.com', 'Faisal@123', 'Myself', 'Female', 'Male', '1998-07-08', '2025170807', 26, 21, 25, '2025-04-02', '1'),
(102, 269, '20250402124239muslimmen2.jpg', 'Bilal', 'Rehman', '998877777796', '9988777789', 'bilal123@gmail.com', 'Bilal@123', 'Son', 'Female', 'Male', '2000-03-16', '2025361603', 25, 21, 25, '2025-04-02', '1'),
(103, 168, '20250402124817muslimmen3.jpg', 'Shakil', 'Anwar', '668852354555', '7878963254', 'shakil123@gmail.com', 'Shakil@123', 'Myself', 'Female', 'Male', '1990-02-06', '2025380602', 35, 25, 35, '2025-04-02', '1');

-- --------------------------------------------------------

--
-- Table structure for table `notification_tbl`
--

CREATE TABLE `notification_tbl` (
  `notification_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `notification_type` enum('request_sent','request_accepted') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_tbl`
--

INSERT INTO `notification_tbl` (`notification_id`, `member_id`, `message`, `notification_type`, `created_at`, `is_read`) VALUES
(36, 1, 'You have received a new connection request from Member #27', 'request_sent', '2025-03-19 03:17:12', 1),
(37, 3, 'You have received a new connection request from Member #27', 'request_sent', '2025-03-19 03:17:31', 0),
(38, 4, 'You have received a new connection request from Member #27', 'request_sent', '2025-03-19 03:17:41', 1),
(39, 27, 'Your connection request was accepted by Member #4', 'request_accepted', '2025-03-19 08:51:07', 0),
(40, 2, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 10:10:36', 1),
(41, 19, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 10:10:36', 0),
(42, 21, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 10:10:36', 0),
(43, 22, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 10:10:36', 0),
(45, 31, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 10:10:36', 0),
(47, 1, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:15:32', 1),
(48, 3, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:15:32', 0),
(49, 6, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:15:32', 0),
(50, 8, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:15:32', 0),
(51, 14, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:15:32', 0),
(53, 1, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:16:10', 1),
(54, 3, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:16:10', 0),
(55, 6, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:16:10', 0),
(56, 8, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:16:10', 0),
(57, 14, 'You have received a new connection request from Member #36', 'request_sent', '2025-03-19 10:16:10', 0),
(59, 15, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 05:23:12', 1),
(60, 35, 'Your connection request was accepted by Member #15', 'request_accepted', '2025-03-19 10:53:23', 1),
(61, 29, 'You have received a new connection request from Member #37', 'request_sent', '2025-03-19 11:03:39', 0),
(62, 31, 'You have received a new connection request from Member #37', 'request_sent', '2025-03-19 11:03:39', 0),
(63, 33, 'You have received a new connection request from Member #37', 'request_sent', '2025-03-19 11:03:39', 0),
(64, 36, 'You have received a new connection request from Member #37', 'request_sent', '2025-03-19 11:03:39', 0),
(65, 1, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 1),
(66, 3, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(67, 4, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(68, 6, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(69, 7, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(70, 8, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(71, 9, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(72, 10, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(73, 11, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(74, 14, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(75, 34, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(76, 35, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(77, 37, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
(78, 35, 'You have received a new connection request from Member #39', 'request_sent', '2025-03-19 11:49:29', 0),
(79, 37, 'You have received a new connection request from Member #39', 'request_sent', '2025-03-19 11:49:29', 0),
(80, 7, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(81, 8, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(82, 9, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(83, 11, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(84, 34, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(85, 35, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(86, 37, 'You have received a new connection request from Member #40', 'request_sent', '2025-03-19 11:56:48', 0),
(87, 1, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 1),
(88, 3, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(89, 6, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(90, 7, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(91, 8, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(92, 9, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(93, 11, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(94, 34, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(95, 35, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(96, 37, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(97, 41, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(98, 42, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(99, 43, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(100, 44, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(101, 45, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(102, 46, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 1),
(103, 47, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(104, 48, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(105, 49, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(106, 50, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(107, 51, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(108, 52, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(109, 53, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(110, 54, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(111, 55, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(112, 56, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(113, 57, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(114, 58, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(115, 59, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(116, 60, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(117, 61, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(118, 62, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(119, 63, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(120, 64, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(121, 65, 'You have received a new connection request from Member #94', 'request_sent', '2025-04-02 09:08:54', 0),
(122, 94, 'Your connection request was accepted by Member #1', 'request_accepted', '2025-04-02 09:13:55', 1),
(123, 1, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(124, 3, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(125, 6, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(126, 7, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(127, 8, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(128, 9, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(129, 11, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(130, 34, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(131, 35, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(132, 37, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(133, 41, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(134, 42, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(135, 43, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(136, 44, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(137, 45, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(138, 46, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 1),
(139, 47, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(140, 48, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(141, 49, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(142, 50, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(143, 51, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(144, 52, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(145, 53, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(146, 54, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(147, 55, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(148, 56, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(149, 57, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(150, 58, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(151, 59, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(152, 60, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(153, 61, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(154, 62, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(155, 63, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(156, 64, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(157, 65, 'You have received a new connection request from Member #95', 'request_sent', '2025-04-02 09:39:52', 0),
(158, 1, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(159, 3, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(160, 6, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(161, 7, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(162, 8, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(163, 9, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(164, 11, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(165, 34, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(166, 35, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(167, 37, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(168, 41, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(169, 42, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(170, 43, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(171, 44, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(172, 45, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(173, 46, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 1),
(174, 47, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(175, 48, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(176, 49, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(177, 50, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(178, 51, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(179, 52, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(180, 53, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(181, 54, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(182, 55, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(183, 56, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(184, 57, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(185, 58, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(186, 59, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(187, 60, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(188, 61, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(189, 62, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(190, 63, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(191, 64, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(192, 65, 'You have received a new connection request from Member #100', 'request_sent', '2025-04-02 10:20:01', 0),
(193, 2, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 1),
(194, 5, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(195, 17, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(196, 19, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(197, 22, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(198, 24, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 1),
(199, 25, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(200, 26, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(201, 27, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(202, 28, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(203, 29, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(204, 30, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(205, 31, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(206, 32, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(207, 33, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(208, 36, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(209, 38, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(210, 39, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(211, 66, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(212, 67, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(213, 68, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(214, 69, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(215, 70, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(216, 71, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(217, 72, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(218, 73, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(219, 74, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(220, 75, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(221, 76, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(222, 77, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(223, 78, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(224, 79, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(225, 80, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(226, 81, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(227, 82, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(228, 83, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(229, 86, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(230, 87, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(231, 88, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(232, 89, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(233, 90, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(234, 91, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(235, 92, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(236, 94, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(237, 95, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(238, 100, 'You have received a new connection request from Member #101', 'request_sent', '2025-04-02 10:33:27', 0),
(239, 2, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 1),
(240, 5, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(241, 17, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(242, 19, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(243, 22, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(244, 24, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 1),
(245, 25, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(246, 26, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(247, 27, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(248, 28, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(249, 29, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(250, 30, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(251, 31, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(252, 32, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(253, 33, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(254, 36, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(255, 38, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(256, 39, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(257, 66, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(258, 67, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(259, 68, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(260, 69, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(261, 70, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(262, 71, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(263, 72, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(264, 73, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(265, 74, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(266, 75, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(267, 76, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(268, 77, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(269, 78, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(270, 79, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(271, 80, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(272, 81, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(273, 82, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(274, 83, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(275, 86, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(276, 87, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(277, 88, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(278, 89, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(279, 90, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(280, 91, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(281, 92, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(282, 94, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(283, 95, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(284, 100, 'You have received a new connection request from Member #102', 'request_sent', '2025-04-02 10:41:52', 0),
(285, 2, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 1),
(286, 5, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(287, 17, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(288, 19, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(289, 22, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(290, 24, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 1),
(291, 25, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(292, 26, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(293, 27, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(294, 28, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(295, 29, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(296, 30, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(297, 31, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(298, 32, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(299, 33, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(300, 36, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(301, 38, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(302, 39, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(303, 66, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(304, 67, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(305, 68, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(306, 69, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(307, 70, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(308, 71, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(309, 72, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(310, 73, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(311, 74, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(312, 75, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(313, 76, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(314, 77, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(315, 78, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(316, 79, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(317, 80, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(318, 81, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(319, 82, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(320, 83, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(321, 86, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(322, 87, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(323, 88, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(324, 89, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(325, 90, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(326, 91, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(327, 92, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(328, 94, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(329, 95, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0),
(330, 100, 'You have received a new connection request from Member #103', 'request_sent', '2025-04-02 10:47:52', 0);

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
(1, 1, 1, 1, '2025-03-18', '2025-06-18', 1),
(2, 1, 2, 2, '2025-03-18', '2025-06-18', 1),
(3, 3, 3, 3, '2025-03-18', '2025-04-18', 1),
(5, 1, 5, 5, '2025-03-18', '2025-06-18', 1),
(6, 2, 6, 6, '2025-03-18', '2025-05-18', 1),
(7, 1, 7, 7, '2025-03-18', '2025-06-18', 1),
(8, 2, 8, 8, '2025-03-18', '2025-05-18', 1),
(9, 3, 9, 9, '2025-03-18', '2025-04-18', 1),
(11, 1, 11, 11, '2025-03-18', '2025-06-18', 1),
(14, 1, 17, 14, '2025-03-18', '2025-06-18', 1),
(16, 2, 19, 16, '2025-03-18', '2025-05-18', 1),
(19, 1, 22, 19, '2025-03-19', '2025-06-19', 1),
(21, 1, 25, 21, '2025-03-19', '2025-06-19', 1),
(22, 2, 26, 22, '2025-03-19', '2025-05-19', 1),
(23, 3, 27, 23, '2025-03-19', '2025-04-19', 1),
(24, 2, 28, 24, '2025-03-19', '2025-05-19', 1),
(25, 1, 29, 25, '2025-03-19', '2025-06-19', 1),
(26, 1, 30, 26, '2025-03-19', '2025-06-19', 1),
(27, 1, 31, 27, '2025-03-19', '2025-06-19', 1),
(28, 1, 32, 28, '2025-03-19', '2025-06-19', 1),
(29, 1, 35, 29, '2025-03-19', '2025-06-19', 1),
(30, 1, 37, 30, '2025-03-19', '2025-06-19', 1),
(31, 1, 38, 31, '2025-03-19', '2025-06-19', 1),
(32, 2, 39, 32, '2025-03-19', '2025-05-19', 1),
(34, 1, 41, 34, '2025-03-20', '2025-06-20', 1),
(35, 1, 94, 35, '2025-04-02', '2025-07-02', 1),
(38, 3, 100, 38, '2025-04-02', '2025-05-02', 1),
(39, 1, 46, 39, '2025-04-02', '2025-07-02', 1),
(40, 1, 101, 40, '2025-04-02', '2025-07-02', 1),
(41, 2, 102, 41, '2025-04-02', '2025-06-02', 1);

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
(1, 'Gold', 5000, '3', '1'),
(2, 'Silver', 2000, '2', '1'),
(3, 'Platinum', 500, '1', '1');

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
(1, 'pay_Q8EnzZMoqdjzZN', 5000.00, 'success', '2025-03-18 11:32:06'),
(2, 'pay_Q8EvuhUEldfRqj', 5000.00, 'success', '2025-03-18 11:39:35'),
(3, 'pay_Q8F3DwvJ0hrjnl', 500.00, 'success', '2025-03-18 11:46:31'),
(4, 'pay_Q8FCBp55K6vRQh', 5000.00, 'success', '2025-03-18 11:54:59'),
(5, 'pay_Q8FKwK33mPV0Q9', 5000.00, 'success', '2025-03-18 12:03:17'),
(6, 'pay_Q8FSKUlKPmkJjc', 2000.00, 'success', '2025-03-18 12:10:22'),
(7, 'pay_Q8FaMCu5fdSAqg', 5000.00, 'success', '2025-03-18 12:17:52'),
(8, 'pay_Q8FgNboD9h10UL', 2000.00, 'success', '2025-03-18 12:23:34'),
(9, 'pay_Q8Fm0tSXdp5mDP', 500.00, 'success', '2025-03-18 12:28:59'),
(10, 'pay_Q8Ft63FntDRrDN', 5000.00, 'success', '2025-03-18 12:35:37'),
(11, 'pay_Q8G2z40SBZJHqT', 5000.00, 'success', '2025-03-18 12:44:59'),
(12, 'pay_Q8GFK1W7Lo6f0l', 2000.00, 'success', '2025-03-18 12:56:40'),
(13, 'pay_Q8GMCDrD73DjCs', 5000.00, 'success', '2025-03-18 13:03:10'),
(14, 'pay_Q8KuK8tyEeRIeC', 5000.00, 'success', '2025-03-18 17:30:17'),
(15, 'pay_Q8L2a6aapZ6oJf', 5000.00, 'success', '2025-03-18 17:38:05'),
(16, 'pay_Q8L8VtvSZGhjjp', 2000.00, 'success', '2025-03-18 17:43:43'),
(17, 'pay_Q8LGKtwQvTfHlf', 500.00, 'success', '2025-03-18 17:51:06'),
(18, 'pay_Q8LMU1O2MBIujB', 5000.00, 'success', '2025-03-18 17:56:55'),
(19, 'pay_Q8VsJSIFRtk36R', 5000.00, 'success', '2025-03-19 04:14:02'),
(20, 'pay_Q8X02zK98UsxHX', 5000.00, 'success', '2025-03-19 05:20:05'),
(21, 'pay_Q8X7ACXUFcLslt', 5000.00, 'success', '2025-03-19 05:27:32'),
(22, 'pay_Q8XDP0Z0wn5VKu', 2000.00, 'success', '2025-03-19 05:32:42'),
(23, 'pay_Q8XPhgJUABDZyX', 500.00, 'success', '2025-03-19 05:44:18'),
(24, 'pay_Q8XZ6u6hqjakxI', 2000.00, 'success', '2025-03-19 05:53:14'),
(25, 'pay_Q8Xi5alvGC58sH', 5000.00, 'success', '2025-03-19 06:01:41'),
(26, 'pay_Q8Xm2pxinT4tNW', 5000.00, 'success', '2025-03-19 06:05:26'),
(27, 'pay_Q8Y8WxHd9WouZm', 5000.00, 'success', '2025-03-19 06:26:44'),
(28, 'pay_Q8YdU7YZWPxtEC', 5000.00, 'success', '2025-03-19 06:56:16'),
(29, 'pay_Q8bxOPcXQYsDC5', 5000.00, 'success', '2025-03-19 10:10:58'),
(30, 'pay_Q8crTYmcwxHCdh', 5000.00, 'success', '2025-03-19 11:04:04'),
(31, 'pay_Q8dJOrBodoRyeu', 5000.00, 'success', '2025-03-19 11:30:30'),
(32, 'pay_Q8ddpLDM2ND9FT', 2000.00, 'success', '2025-03-19 11:49:50'),
(33, 'pay_Q8dlaAxQW01Yad', 2000.00, 'success', '2025-03-19 11:57:10'),
(34, 'pay_Q8vNafU8k0aYQS', 5000.00, 'success', '2025-03-20 05:10:58'),
(35, 'pay_QE8PtEAkZo9LXS', 5000.00, 'success', '2025-04-02 09:11:09'),
(36, 'pay_QE9D5AJ5PO6zOv', 500.00, 'success', '2025-04-02 09:57:44'),
(37, 'pay_QE9OuWByBVSGH8', 5000.00, 'success', '2025-04-02 10:08:55'),
(38, 'pay_QE9b4rGP4YnamC', 500.00, 'success', '2025-04-02 10:20:27'),
(39, 'pay_QE9eS7wOnqta0K', 5000.00, 'success', '2025-04-02 10:23:38'),
(40, 'pay_QE9pFhN1elGcMp', 5000.00, 'success', '2025-04-02 10:33:51'),
(41, 'pay_QE9yHkBFUKcBLy', 2000.00, 'success', '2025-04-02 10:42:25');

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
(33, 24, '{\"34\":\"pending\"}', '2025-03-19 08:39:15'),
(34, 27, '{\"1\":\"accepted\"}', '2025-03-19 08:47:12'),
(35, 27, '{\"3\":\"pending\"}', '2025-03-19 08:47:31'),
(36, 27, '{\"4\":\"accepted\"}', '2025-03-19 08:47:41'),
(37, 35, '{\"2\":\"accepted\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"31\":\"pending\"}', '2025-03-19 10:10:36'),
(38, 36, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"8\":\"pending\",\"14\":\"pending\",\"35\":\"pending\"}', '2025-03-19 10:15:32'),
(39, 36, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"8\":\"pending\",\"14\":\"pending\"}', '2025-03-19 10:16:10'),
(40, 35, '{\"15\":\"accepted\"}', '2025-03-19 10:53:12'),
(41, 37, '{\"29\":\"pending\",\"31\":\"pending\",\"33\":\"pending\",\"36\":\"pending\"}', '2025-03-19 11:03:39'),
(42, 38, '{\"1\":\"accepted\",\"3\":\"pending\",\"4\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\"}', '2025-03-19 11:30:08'),
(43, 39, '{\"35\":\"pending\",\"37\":\"pending\"}', '2025-03-19 11:49:29'),
(45, 41, '{\"2\":\"accepted\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"accepted\"}', '2025-03-20 06:10:21'),
(46, 42, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-20 06:30:28'),
(47, 43, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-20 06:56:59'),
(48, 44, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-20 07:16:38'),
(49, 46, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-20 08:00:25'),
(50, 47, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 05:12:04'),
(51, 48, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 05:42:42'),
(52, 49, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 05:50:50'),
(53, 50, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 06:00:15'),
(54, 51, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 06:23:26'),
(55, 52, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 06:31:45'),
(56, 53, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 06:39:08'),
(57, 54, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-22 06:48:14'),
(58, 55, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 03:39:18'),
(59, 56, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 03:49:45'),
(60, 57, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 04:40:47'),
(61, 58, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 04:53:08'),
(62, 59, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 05:02:46'),
(63, 60, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 05:09:46'),
(64, 61, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 05:30:57'),
(65, 62, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 06:16:59'),
(66, 63, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 06:28:03'),
(67, 64, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 07:37:16'),
(68, 65, '{\"2\":\"pending\",\"5\":\"pending\",\"15\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"21\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\"}', '2025-03-24 07:44:57'),
(69, 66, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 11:34:31'),
(70, 67, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 12:28:40'),
(71, 68, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 12:41:44'),
(72, 69, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 12:51:12'),
(73, 70, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 13:00:55'),
(74, 71, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 13:19:14'),
(75, 72, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 13:27:25'),
(76, 73, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 13:37:05'),
(77, 74, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 13:46:08'),
(78, 75, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 13:54:26'),
(79, 76, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 20:27:36'),
(80, 77, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 20:35:29'),
(81, 78, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 20:40:09'),
(82, 79, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 20:45:55'),
(83, 80, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 20:51:11'),
(84, 81, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:16:57'),
(85, 82, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:22:28'),
(86, 83, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:27:18'),
(87, 86, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:36:30'),
(88, 87, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:41:52'),
(89, 88, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:50:29'),
(90, 89, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 21:57:16'),
(91, 90, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 22:03:45'),
(92, 91, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 22:10:55'),
(93, 92, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"10\":\"pending\",\"11\":\"pending\",\"14\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-03-24 22:19:58'),
(95, 94, '{\"1\":\"accepted\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"11\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-04-02 11:08:54'),
(96, 95, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"11\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-04-02 11:39:52'),
(97, 100, '{\"1\":\"pending\",\"3\":\"pending\",\"6\":\"pending\",\"7\":\"pending\",\"8\":\"pending\",\"9\":\"pending\",\"11\":\"pending\",\"34\":\"pending\",\"35\":\"pending\",\"37\":\"pending\",\"41\":\"pending\",\"42\":\"pending\",\"43\":\"pending\",\"44\":\"pending\",\"45\":\"pending\",\"46\":\"pending\",\"47\":\"pending\",\"48\":\"pending\",\"49\":\"pending\",\"50\":\"pending\",\"51\":\"pending\",\"52\":\"pending\",\"53\":\"pending\",\"54\":\"pending\",\"55\":\"pending\",\"56\":\"pending\",\"57\":\"pending\",\"58\":\"pending\",\"59\":\"pending\",\"60\":\"pending\",\"61\":\"pending\",\"62\":\"pending\",\"63\":\"pending\",\"64\":\"pending\",\"65\":\"pending\"}', '2025-04-02 12:20:01'),
(98, 101, '{\"2\":\"pending\",\"5\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\",\"66\":\"pending\",\"67\":\"pending\",\"68\":\"pending\",\"69\":\"pending\",\"70\":\"pending\",\"71\":\"pending\",\"72\":\"pending\",\"73\":\"pending\",\"74\":\"pending\",\"75\":\"pending\",\"76\":\"pending\",\"77\":\"pending\",\"78\":\"pending\",\"79\":\"pending\",\"80\":\"pending\",\"81\":\"pending\",\"82\":\"pending\",\"83\":\"pending\",\"86\":\"pending\",\"87\":\"pending\",\"88\":\"pending\",\"89\":\"pending\",\"90\":\"pending\",\"91\":\"pending\",\"92\":\"pending\",\"94\":\"pending\",\"95\":\"pending\",\"100\":\"pending\"}', '2025-04-02 12:33:27'),
(99, 102, '{\"2\":\"pending\",\"5\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\",\"66\":\"pending\",\"67\":\"pending\",\"68\":\"pending\",\"69\":\"pending\",\"70\":\"pending\",\"71\":\"pending\",\"72\":\"pending\",\"73\":\"pending\",\"74\":\"pending\",\"75\":\"pending\",\"76\":\"pending\",\"77\":\"pending\",\"78\":\"pending\",\"79\":\"pending\",\"80\":\"pending\",\"81\":\"pending\",\"82\":\"pending\",\"83\":\"pending\",\"86\":\"pending\",\"87\":\"pending\",\"88\":\"pending\",\"89\":\"pending\",\"90\":\"pending\",\"91\":\"pending\",\"92\":\"pending\",\"94\":\"pending\",\"95\":\"pending\",\"100\":\"pending\"}', '2025-04-02 12:41:52'),
(100, 103, '{\"2\":\"pending\",\"5\":\"pending\",\"17\":\"pending\",\"19\":\"pending\",\"22\":\"pending\",\"24\":\"pending\",\"25\":\"pending\",\"26\":\"pending\",\"27\":\"pending\",\"28\":\"pending\",\"29\":\"pending\",\"30\":\"pending\",\"31\":\"pending\",\"32\":\"pending\",\"33\":\"pending\",\"36\":\"pending\",\"38\":\"pending\",\"39\":\"pending\",\"66\":\"pending\",\"67\":\"pending\",\"68\":\"pending\",\"69\":\"pending\",\"70\":\"pending\",\"71\":\"pending\",\"72\":\"pending\",\"73\":\"pending\",\"74\":\"pending\",\"75\":\"pending\",\"76\":\"pending\",\"77\":\"pending\",\"78\":\"pending\",\"79\":\"pending\",\"80\":\"pending\",\"81\":\"pending\",\"82\":\"pending\",\"83\":\"pending\",\"86\":\"pending\",\"87\":\"pending\",\"88\":\"pending\",\"89\":\"pending\",\"90\":\"pending\",\"91\":\"pending\",\"92\":\"pending\",\"94\":\"pending\",\"95\":\"pending\",\"100\":\"pending\"}', '2025-04-02 12:47:52');

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
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jharkhand'),
(11, 'Karnataka'),
(12, 'Kerala'),
(13, 'Madhya Pradesh'),
(14, 'Maharashtra'),
(15, 'Manipur'),
(16, 'Meghalaya'),
(17, 'Mizoram'),
(18, 'Nagaland'),
(19, 'Odisha'),
(20, 'Punjab'),
(21, 'Rajasthan'),
(22, 'Sikkim'),
(23, 'Tamil Nadu'),
(24, 'Telangana'),
(25, 'Tripura'),
(27, 'Uttar Pradesh'),
(26, 'Uttarakhand'),
(28, 'West Bengal');

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
(1, 1, 'Brahmin Saraswat', '1'),
(2, 1, 'Brahmin Gaur', '1'),
(3, 1, 'Brahmin Kanyakubj', '1'),
(4, 2, 'Rajput Chauhan', '1'),
(5, 2, 'Rajput Sisodia', '1'),
(6, 2, 'Rajput Rathore', '1'),
(7, 3, 'Sunni Hanafi', '1'),
(8, 3, 'Sunni Deobandi', '1'),
(9, 3, 'Sunni Barelvi', '1'),
(10, 4, 'Roman Catholic', '1'),
(11, 4, 'Syro Malankara', '1'),
(12, 4, 'Syro Malabar', '1'),
(13, 5, 'Jain Digambar', '1'),
(14, 5, 'Jain Shwetambar', '1'),
(15, 6, 'Sikh Jat', '1'),
(16, 6, 'sikh Khatri', '1'),
(17, 6, 'Sikh Ramgarhia', '1'),
(18, 7, 'Parsi Irani', '1'),
(19, 7, 'Parsi Zoroastrian', '1'),
(20, 8, 'Theravada Buddhist', '1'),
(21, 8, 'Mahayana Buddhist', '1'),
(22, 9, 'Hindu SC Chamar', '1'),
(23, 9, 'Hindu SC Valmiki', '1'),
(24, 10, 'Hindu ST Bhil', '1'),
(25, 10, 'Hindu ST Gond', '1'),
(26, 11, 'Hindu OBC Kurmi', '1'),
(27, 11, 'Hindu OBC Koli', '1'),
(28, 12, 'Memon Kutchi', '1'),
(29, 12, 'Memon Halai', '1'),
(30, 13, 'Shia Ithna Ashari', '1'),
(31, 13, 'Shia Dawoodi Bohra', '1'),
(32, 14, 'Agnostic Humanist', '1'),
(33, 14, 'Agnostic Rationalist', '1'),
(34, 15, 'Jewish Sephardic', '1'),
(35, 15, 'Jewish Ashkenazi', '1'),
(36, 16, 'Maratha Kunbi', '1'),
(37, 16, 'Maratha Deshastha', '1'),
(38, 17, 'Sindhi Lohana', '1'),
(39, 17, 'Sindhi Bhaiband', '1'),
(40, 18, 'Kshatriya Thakur', '1'),
(41, 18, 'Kshatriya Chauhan', '1'),
(42, 19, 'Kayastha Mathur', '1'),
(43, 19, 'Kayastha Srivastava', '1'),
(44, 20, 'Iyengar Vadagalai', '1'),
(45, 20, 'Iyengar Thenkalai', '1'),
(46, 21, 'Iyer Vadama', '1'),
(47, 21, 'Iyer Brahacharanam', '1'),
(48, 22, 'Baniya Agrawal', '1'),
(49, 22, 'Baniya Maheshwari', '1'),
(50, 23, 'Ezhava Thiyya', '1'),
(51, 23, 'Ezhava Chekava', '1'),
(52, 24, 'Nair Nambiar', '1'),
(53, 24, 'Nair Menon', '1'),
(54, 25, 'Reddy Kapu', '1'),
(55, 25, 'Reddy Pedakanti', '1'),
(56, 26, 'Kapu Ontari', '1'),
(57, 26, 'Kapu Balija', '1'),
(58, 27, 'Goud Ediga', '1'),
(59, 27, 'Goud Kalinga', '1'),
(60, 28, 'Chettiar Vellan', '1'),
(61, 28, 'Chettiar Devanga', '1'),
(62, 29, 'Lingayat Panchamasal', '1'),
(63, 29, 'Lingayat Veerashaiva', '1'),
(64, 30, 'Yadav Gwala', '1'),
(65, 30, 'Yadav Ahir', '1'),
(66, 31, 'Kumhar Prajapati', '1'),
(67, 31, 'Kumhar Gurjar', '1'),
(68, 32, 'Jat Dahiya', '1'),
(69, 32, 'Jat Malik', '1'),
(70, 33, 'Gurjar Bainsla', '1'),
(71, 33, 'Gurjar Rawat', '1'),
(72, 34, 'Lohana Halai', '1'),
(73, 34, 'Lohana Kutchi', '1'),
(74, 35, 'Kutchi Bhatia', '1'),
(75, 35, 'Kutchi Jain', '1'),
(76, 36, 'Modh Vanik', '1'),
(77, 36, 'Modh Brahmin', '1'),
(78, 37, 'Vaishnav Pushtimarg', '1'),
(79, 37, 'Vaishnav Vallabhacha', '1'),
(80, 38, 'Maheshwari Rajasthan', '1'),
(81, 38, 'Maheshwari Gujarati', '1'),
(82, 39, 'Mangalorean Konkani', '1'),
(83, 39, 'Mangalorean Bunt', '1'),
(84, 40, 'Malankara Syrian', '1'),
(85, 40, 'Malankara Orthodox', '1'),
(86, 41, 'Deobandi Tablighi', '1'),
(87, 41, 'Deobandi Hanafi', '1'),
(88, 42, 'Bohra Dawoodi', '1'),
(89, 42, 'Bohra Sulemani', '1'),
(90, 43, 'Ahmadiyya Qadiani', '1'),
(91, 43, 'Ahmadiyya Lahori', '1'),
(92, 44, 'Ismaili Nizari', '1'),
(93, 44, 'Ismaili Mustali', '1'),
(94, 45, 'Zoroastrian Irani', '1'),
(95, 45, 'Zoroastrian Parsi', '1'),
(96, 46, 'Arya Samajist', '1'),
(97, 46, 'Arya Samaj Satyarthi', '1'),
(98, 47, 'Others Unknown', '1'),
(99, 47, 'Others Mixed', '1');

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
(1, 1, '2025-03-01', 9988774455, 'I Love your website', '1'),
(2, 2, '2025-03-11', 9988665533, 'Finally,I find my Patner', '1');

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
-- Indexes for table `bookmark_profile_tbl`
--
ALTER TABLE `bookmark_profile_tbl`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `member_id` (`member_id`);

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
-- Indexes for table `notification_tbl`
--
ALTER TABLE `notification_tbl`
  ADD PRIMARY KEY (`notification_id`);

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
-- AUTO_INCREMENT for table `bookmark_profile_tbl`
--
ALTER TABLE `bookmark_profile_tbl`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city_tbl`
--
ALTER TABLE `city_tbl`
  MODIFY `city_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;

--
-- AUTO_INCREMENT for table `community_tbl`
--
ALTER TABLE `community_tbl`
  MODIFY `community_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `faq_tbl`
--
ALTER TABLE `faq_tbl`
  MODIFY `faq_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lifestyle_tbl`
--
ALTER TABLE `lifestyle_tbl`
  MODIFY `lifestyle_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `member_detail_tbl`
--
ALTER TABLE `member_detail_tbl`
  MODIFY `member_detail_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `member_qualification_tbl`
--
ALTER TABLE `member_qualification_tbl`
  MODIFY `member_qualification_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `member_tbl`
--
ALTER TABLE `member_tbl`
  MODIFY `member_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `notification_tbl`
--
ALTER TABLE `notification_tbl`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `otp_status_tbl`
--
ALTER TABLE `otp_status_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_detail_tbl`
--
ALTER TABLE `package_detail_tbl`
  MODIFY `package_detail_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `package_tbl`
--
ALTER TABLE `package_tbl`
  MODIFY `package_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_tbl`
--
ALTER TABLE `payment_tbl`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `send_request_tbl`
--
ALTER TABLE `send_request_tbl`
  MODIFY `request_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `state_tbl`
--
ALTER TABLE `state_tbl`
  MODIFY `state_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sub_community_tbl`
--
ALTER TABLE `sub_community_tbl`
  MODIFY `sub_community_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `testimonial_tbl`
--
ALTER TABLE `testimonial_tbl`
  MODIFY `testimonial_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
