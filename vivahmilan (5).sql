-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2025 at 04:17 PM
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
(1, 'hunny', 'patelhanu033@gmail.com', '111', 7383700242, 'Surat', 'rishi.jpg', '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 15, 35, 'hii', '2025-03-19 10:53:49', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=704 ;

--
-- Dumping data for table `city_tbl`
--

INSERT INTO `city_tbl` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Anantapur', 1),
(2, 'Chittoor', 1),
(3, 'East Godavari', 1),
(4, 'Guntur', 1),
(5, 'Kadapa', 1),
(6, 'Krishna', 1),
(7, 'Kurnool', 1),
(8, 'Nellore', 1),
(9, 'Srikakulam', 1),
(10, 'Visakhapatnam', 1),
(11, 'West Godavari', 1),
(12, 'Tawang', 2),
(13, 'West Kameng', 2),
(14, 'East Kameng', 2),
(15, 'Papum Pare', 2),
(16, 'Lower Subansiri', 2),
(17, 'Kurung Kume', 2),
(18, 'Upper Subansiri', 2),
(19, 'West Slang', 2),
(20, 'East Slang', 2),
(21, 'Upper Siang', 2),
(22, 'Dibang Valley', 2),
(23, 'Lower Dibang Valley', 2),
(24, 'Lohit', 2),
(25, 'Anjaw', 2),
(26, 'Changlang', 2),
(27, 'Tirap', 2),
(28, 'Longding', 2),
(29, 'Bajali', 3),
(30, 'Baksa', 3),
(31, 'Barpeta', 3),
(32, 'Biswanath', 3),
(33, 'Bongaigason', 3),
(34, 'Cachar', 3),
(35, 'Charaideo', 3),
(36, 'Chirang', 3),
(37, 'Darrang', 3),
(38, 'Dhemaji', 3),
(39, 'Dhubri', 3),
(40, 'Dibrugarh', 3),
(41, 'Dima Hasao', 3),
(42, 'Goalpara', 3),
(43, 'Golaghat', 3),
(44, 'Hailakandi', 3),
(45, 'Hojai', 3),
(46, 'Jorhat', 3),
(47, 'Kamrup', 3),
(48, 'Kamrup Metro', 3),
(49, 'Karbi Anglong', 3),
(50, 'Karimganj', 3),
(51, 'Kokrajhar', 3),
(52, 'Lakhimpur', 3),
(53, 'Majuli', 3),
(54, 'Marigaon', 3),
(55, 'Nagaon', 3),
(56, 'Nalbari', 3),
(57, 'Sivasagar', 3),
(58, 'Sonitpur', 3),
(59, 'South Salmara Mancachar', 3),
(60, 'Tamulpur', 3),
(61, 'Tinsukia', 3),
(62, 'Udalguri', 3),
(63, 'West Karbi Anglong', 3),
(64, 'Araria', 4),
(65, 'Arwal', 4),
(66, 'Aurangabad', 4),
(67, 'Banka', 4),
(68, 'Begusarai', 4),
(69, 'Bhagalpur', 4),
(70, 'Bhojpur', 4),
(71, 'Buxar', 4),
(72, 'Darbhanga', 4),
(73, 'East Champaran', 4),
(74, 'Gaya', 4),
(75, 'Gopalganj', 4),
(76, 'Jamui', 4),
(77, 'Jehanabad', 4),
(78, 'Kaimur', 4),
(79, 'Katihar', 4),
(80, 'Khagaria', 4),
(81, 'Kishanganj', 4),
(82, 'Lakhisarai', 4),
(83, 'Madhepura', 4),
(84, 'Madhubani', 4),
(85, 'Munger', 4),
(86, 'Muzaffarpur', 4),
(87, 'Nalanda', 4),
(88, 'Nawada', 4),
(89, 'Patna', 4),
(90, 'Purnia', 4),
(91, 'Rohtas', 4),
(92, 'Saharsa', 4),
(93, 'Samastipur', 4),
(94, 'Sheohar', 4),
(95, 'Sheikhpura', 4),
(96, 'Saran', 4),
(97, 'Sitamarhi', 4),
(98, 'Supaul', 4),
(99, 'Siwan', 4),
(100, 'Vaishali', 4),
(101, 'West Champaran', 4),
(102, 'Balod', 5),
(103, 'Baloda Bazar', 5),
(104, 'Balrampur', 5),
(105, 'Bastar', 5),
(106, 'Bemetara', 5),
(107, 'Bijapur', 5),
(108, 'Bilaspur', 5),
(109, 'Dantewada', 5),
(110, 'Dhamtari', 5),
(111, 'Durg', 5),
(112, 'Gariaband', 5),
(113, 'Gaurella-Pendra-Marwahi', 5),
(114, 'Janjgir-Champa', 5),
(115, 'Jashpur', 5),
(116, 'Kabirdham', 5),
(117, 'Kanker', 5),
(118, 'Kondagaon', 5),
(119, 'Khairagarh-Chhuikhadan-Ga', 5),
(120, 'Korba', 5),
(121, 'Koriya', 5),
(122, 'Mahasamund', 5),
(123, 'Manendragarh-Chirmiri-Bha', 5),
(124, 'Mohla-Manpur- Ambagarh Ch', 5),
(125, 'Mungeli', 5),
(126, 'Narayanpur', 5),
(127, 'Raigarh', 5),
(128, 'Raipur', 5),
(129, 'Rajnandgaon', 5),
(130, 'Sarangarh-Bilaigarh', 5),
(131, 'Sakti', 5),
(132, 'Sukma', 5),
(133, 'Surajpur', 5),
(134, 'Surguja', 5),
(135, 'North Goa', 6),
(136, 'South Goa', 6),
(137, 'Ahmadabad', 7),
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
(171, 'Bhiwani', 8),
(172, 'Charkhi Dadri', 8),
(173, 'Faridabad', 8),
(174, 'Fatehabad', 8),
(175, 'Gurugram', 8),
(176, 'Hisar', 8),
(177, 'Jhajjar', 8),
(178, 'Jind', 8),
(179, 'Kaithal', 8),
(180, 'Karnal', 10),
(181, 'Kurukshetra', 8),
(182, 'Mahendragarh', 8),
(183, 'Nuh', 8),
(184, 'Palwal', 8),
(185, 'Panchkula', 8),
(186, 'Panipat', 8),
(187, 'Rewari', 8),
(188, 'Rohtak', 8),
(189, 'Sirsa', 8),
(190, 'Sonipat', 8),
(191, 'Yamunanagar', 8),
(192, 'Chamba', 9),
(193, 'Hamirpur', 9),
(194, 'Kangra', 9),
(195, 'Kinnaur', 9),
(196, 'Kullu', 9),
(197, 'Lahaul and Spiti', 9),
(198, 'Mandi', 9),
(199, 'Shimla', 9),
(200, 'Sirmaur', 9),
(201, 'Solan', 9),
(202, 'Una', 9),
(203, 'Bokaro', 10),
(204, 'Chatra', 10),
(205, 'Deoghar', 10),
(206, 'Dhanbad', 10),
(207, 'Dumka', 10),
(208, 'East Singhbhum', 10),
(209, 'Garhwa', 10),
(210, 'Giridih', 10),
(211, 'Godda', 10),
(212, 'Gumla', 10),
(213, 'Hazaribagh', 10),
(214, 'Jamtara', 10),
(215, 'Khunti', 10),
(216, 'Kodarma', 10),
(217, 'Latehar', 10),
(218, 'Lohardaga', 10),
(219, 'Pakur', 10),
(220, 'Palamu', 10),
(221, 'Ramgarh', 10),
(222, 'Ranchi', 10),
(223, 'Sahibganj', 10),
(224, 'Saraikela-Kharsawan', 10),
(225, 'Simdega', 10),
(226, 'West Singhbhum', 10),
(227, 'Bagalkote', 11),
(228, 'Bengaluru Urban', 11),
(229, 'Bengaluru Rural', 11),
(230, 'Belagavi', 11),
(231, 'Ballari', 11),
(232, 'Bidar', 11),
(233, 'Vijayapura', 11),
(234, 'Chamarajanagar', 11),
(235, 'Chikkaballapura', 11),
(236, 'Chikkamagaluru', 11),
(237, 'Chitradurga', 11),
(238, 'Dakshina Kannada', 11),
(239, 'Davanagere', 11),
(240, 'Dharwad', 11),
(241, 'Gadag', 11),
(242, 'Kalaburagi', 11),
(243, 'Hassan', 11),
(244, 'Haveri', 11),
(245, 'Kodagu', 11),
(246, 'Kolar', 11),
(247, 'Koppal', 11),
(248, 'Mandya', 11),
(249, 'Mysuru', 11),
(250, 'Raichur', 11),
(251, 'Bengaluru South', 11),
(252, 'Shivamogga', 11),
(253, 'Tumakuru', 11),
(254, 'Udupi', 11),
(255, 'Uttara Kannada', 11),
(256, 'Vijayanagara', 11),
(257, 'Yadgiri', 11),
(258, 'Alappuzha', 12),
(259, 'Ernakulam', 12),
(260, 'Idukki', 12),
(261, 'Kannur', 12),
(262, 'Kasaragod', 12),
(263, 'Kollam', 12),
(264, 'Kottayam', 12),
(265, 'Kozhikode', 12),
(266, 'Malappuram', 12),
(267, 'Palakkad', 12),
(268, 'Pathanamthitta', 12),
(269, 'Thiruvananthapuram', 12),
(270, 'Thrissur', 12),
(271, 'Wayanad', 12),
(272, 'Bhopal', 13),
(273, 'Raisen', 13),
(274, 'Rajgarh', 13),
(275, 'Sehore', 13),
(276, 'Vidisha', 13),
(277, 'Morena', 13),
(278, 'Sheopur', 13),
(279, 'Bhind', 13),
(280, 'Gwalior', 13),
(281, 'Ashoknagar', 13),
(282, 'Shivpuri', 13),
(283, 'Datia', 13),
(284, 'Guna', 13),
(285, 'Alirajpur', 13),
(286, 'Barwani', 13),
(287, 'Burhanpur', 13),
(288, 'Indore', 13),
(289, 'Dhar', 13),
(290, 'Jhabua', 13),
(291, 'Khandwa', 13),
(292, 'Khargone', 13),
(293, 'Balaghat', 13),
(294, 'Chhindwara', 13),
(295, 'Jabalpur', 13),
(296, 'Katni', 13),
(297, 'Mandla', 13),
(298, 'Narsinghpur', 13),
(299, 'Seoni', 13),
(300, 'Dindori', 13),
(301, 'Pandhurna', 13),
(302, 'Betul', 13),
(303, 'Harda', 13),
(304, 'Narmadapuram', 13),
(305, 'Rewa', 13),
(306, 'Satna', 13),
(307, 'Sidhi', 13),
(308, 'Singrauli', 13),
(309, 'Mauganj', 13),
(310, 'Maihar', 13),
(311, 'Chhatarpur', 13),
(312, 'Damoh', 13),
(313, 'Panna', 13),
(314, 'Sagar', 13),
(315, 'Tikamgarh', 13),
(316, 'Niwari', 13),
(317, 'Anuppur', 13),
(318, 'Shahdol', 13),
(319, 'Umaria', 13),
(320, 'Agar Malwa', 13),
(321, 'Dewas', 13),
(322, 'Mandsaur', 13),
(323, 'Neemuch', 13),
(324, 'Ratlam', 13),
(325, 'Shajapur', 13),
(326, 'Ujjain', 13),
(327, 'Ahmednagar', 14),
(328, 'Akola', 14),
(329, 'Amravati', 14),
(330, 'Beed', 14),
(331, 'Bhandara', 14),
(332, 'Buldhana', 14),
(333, 'Chandrapur', 14),
(334, 'Dhule', 14),
(335, 'Gadchiroli', 14),
(336, 'Gondia', 14),
(337, 'Hingoli', 14),
(338, 'Jalgaon', 14),
(339, 'Jalna', 14),
(340, 'Kolhapur', 14),
(341, 'Latur', 14),
(342, 'Mumbai City', 14),
(343, 'Mumbai Suburban', 14),
(344, 'Nagpur', 14),
(345, 'Nanded', 14),
(346, 'Nandurbar', 14),
(347, 'Nashik', 14),
(348, 'Osmanabad', 14),
(349, 'Palghar', 14),
(350, 'Parbhani', 14),
(351, 'Pune', 14),
(352, 'Raigad', 14),
(353, 'Ratnagiri', 14),
(354, 'Sangli', 14),
(355, 'Satara', 14),
(356, 'Sindhudurg', 14),
(357, 'Solapur', 14),
(358, 'Thane', 14),
(359, 'Wardha', 14),
(360, 'Washim', 14),
(361, 'Yavatmal', 14),
(362, 'Bishnupur', 15),
(363, 'Chandel', 15),
(364, 'Churachandpur', 15),
(365, 'Imphal East', 15),
(366, 'Imphal West', 15),
(367, 'Jiribam', 15),
(368, 'Kakching', 15),
(369, 'Kamjong', 15),
(370, 'Kangpokpi', 15),
(371, 'Noney', 15),
(372, 'Pherzawl', 15),
(373, 'Senapati', 15),
(374, 'Tamenglong', 15),
(375, 'Tengnoupal', 15),
(376, 'Thoubal', 15),
(377, 'Ukhrul', 15),
(378, 'North Garo Hills', 16),
(379, 'East Garo Hills	', 16),
(380, 'South Garo Hills', 16),
(381, 'West Garo Hills', 16),
(382, 'South West Garo Hills', 16),
(383, 'West Jaintia Hills', 16),
(384, 'East Jaintia Hills', 16),
(385, 'East Khasi Hills', 16),
(386, 'West Khasi Hills', 16),
(387, 'South West Khasi Hills', 16),
(388, 'Ri-Bhoi', 16),
(389, 'Aizawl', 17),
(390, 'Champhai', 17),
(391, 'Hnahthial', 17),
(392, 'Khawzawl', 17),
(393, 'Kolasib', 17),
(394, 'Lawngtlai', 17),
(395, 'Lunglei', 17),
(396, 'Mamit', 17),
(397, 'Saiha', 17),
(398, 'Saitual', 17),
(399, 'Serchhip', 17),
(400, 'Chümoukedima', 18),
(401, 'Dimapur', 18),
(402, 'Kiphire', 18),
(403, 'Kohima', 18),
(404, 'Longleng', 18),
(405, 'Meluri', 18),
(406, 'Mokokchung', 18),
(407, 'Mon', 18),
(408, 'Niuland', 18),
(409, 'Noklak', 18),
(410, 'Peren', 18),
(411, 'Phek', 18),
(412, 'Shamator', 18),
(413, 'Tseminyü', 18),
(414, 'Tuensang', 18),
(415, 'Wokha', 18),
(416, 'Zunheboto', 18),
(417, 'Angul', 19),
(418, 'Balangir', 19),
(419, 'Balasore', 19),
(420, 'Bargarh', 19),
(421, 'Bhadrak', 19),
(422, 'Boudh', 19),
(423, 'Cuttack', 19),
(424, 'Debagarh', 19),
(425, 'Dhenkanal', 19),
(426, 'Gajapati', 19),
(427, 'Ganjam', 19),
(428, 'Jagatsinghapur', 19),
(429, 'Jajpur', 19),
(430, 'Jharsuguda', 19),
(431, 'Kalahandi', 19),
(432, 'Kandhamal', 19),
(433, 'Kendrapara', 19),
(434, 'Kendujhar', 19),
(435, 'Khordha', 19),
(436, 'Koraput', 19),
(437, 'Malkangiri', 19),
(438, 'Mayurbhanj', 19),
(439, 'Nabarangpur', 19),
(440, 'Nayagarh', 19),
(441, 'Nuapada', 19),
(442, 'Puri', 19),
(443, 'Rayagada', 19),
(444, 'Sambalpur', 19),
(445, 'Subarnapur', 19),
(446, 'Sundargarh', 19),
(447, 'Amritsar', 20),
(448, 'Barnala', 20),
(449, 'Bathinda', 20),
(450, 'Faridkot', 20),
(451, 'Fatehgarh Sahib', 20),
(452, 'Firozpur', 20),
(453, 'Fazilka', 20),
(454, 'Gurdaspur', 20),
(455, 'Hoshiarpur', 20),
(456, 'Jalandhar', 20),
(457, 'Kapurthala', 20),
(458, 'Ludhiana', 20),
(459, 'Malerkotla', 20),
(460, 'Mansa', 20),
(461, 'Moga', 20),
(462, 'Sri Muktsar Sahib', 20),
(463, 'Pathankot', 20),
(464, 'Patiala', 20),
(465, 'Rupnagar', 20),
(466, 'Sahibzada Ajit Singh Naga', 20),
(467, 'Sangrur', 20),
(468, 'Shaheed Bhagat Singh Naga', 20),
(469, 'Tarn Taran', 20),
(470, 'Ajmer', 21),
(471, 'Alwar', 21),
(472, 'Balotra', 21),
(473, 'Banswara', 21),
(474, 'Baran', 21),
(475, 'Barmer', 21),
(476, 'Beawar', 21),
(477, 'Bharatpur', 21),
(478, 'Bhilwara', 21),
(479, 'Bikaner', 21),
(480, 'Bundi', 21),
(481, 'Chittorgarh', 21),
(482, 'Churu', 21),
(483, 'Dausa', 21),
(484, 'Deeg', 21),
(485, 'Didwana-Kuchaman', 21),
(486, 'Dholpur', 21),
(487, 'Dungarpur', 21),
(488, 'Hanumangarh', 21),
(489, 'Jaipur', 21),
(490, 'Jaisalmer', 21),
(491, 'Jalore', 21),
(492, 'Jhalawar', 21),
(493, 'Jhunjhunu', 21),
(494, 'Jodhpur', 21),
(495, 'Karauli', 21),
(496, 'Khairthal-Tijara', 21),
(497, 'Kotputli-Behror', 21),
(498, 'Kota', 21),
(499, 'Nagaur', 21),
(500, 'Pali', 21),
(501, 'Phalodi', 21),
(502, 'Pratapgarh', 21),
(503, 'Rajsamand', 21),
(504, 'Salumbar', 21),
(505, 'Sawai Madhopur', 21),
(506, 'Sikar', 21),
(507, 'Sirohi', 21),
(508, 'Sri Ganganagar', 21),
(509, 'Tonk', 21),
(510, 'Udaipur', 21),
(511, 'Gangtok', 22),
(512, 'Mangan', 22),
(513, 'Pakyong', 22),
(514, 'Soreng', 22),
(515, 'Namchi', 22),
(516, 'Gyalshing', 22),
(517, 'Ariyalur', 23),
(518, 'Chengalpattu', 23),
(519, 'Chennai', 23),
(520, 'Coimbatore', 23),
(521, 'Cuddalore', 23),
(522, 'Dharmapuri', 23),
(523, 'Dindigul', 23),
(524, 'Erode', 23),
(525, 'Kallakurichi', 23),
(526, 'Kancheepuram', 23),
(527, 'Kanyakumari', 23),
(528, 'Karur', 23),
(529, 'Krishnagiri', 23),
(530, 'Madurai', 23),
(531, 'Mayiladuthurai', 23),
(532, 'Nagapattinam', 23),
(533, 'Namakkal', 23),
(534, 'Nilgiris', 23),
(535, 'Perambalur', 23),
(536, 'Pudukkottai', 23),
(537, 'Ramanathapuram', 23),
(538, 'Ranipet', 23),
(539, 'Salem', 23),
(540, 'Sivaganga', 23),
(541, 'Tenkasi', 23),
(542, 'Thanjavur', 23),
(543, 'Theni', 23),
(544, 'Thoothukudi', 23),
(545, 'Tiruchirappalli', 23),
(546, 'Tirunelveli', 23),
(547, 'Tirupathur', 23),
(548, 'Tiruppur', 23),
(549, 'Tiruvallur', 23),
(550, 'Tiruvannamalai', 23),
(551, 'Tiruvarur', 23),
(552, 'Vellore', 23),
(553, 'Viluppuram', 23),
(554, 'Virudhunagar', 23),
(555, 'Adilabad', 24),
(556, 'Kumuram Bheem Asifabad', 24),
(557, 'Mancherial', 24),
(558, 'Nirmal', 24),
(559, 'Nizamabad', 24),
(560, 'Jagtial', 24),
(561, 'Peddapalli', 24),
(562, 'Kamareddy', 24),
(563, 'Rajanna Sircilla', 24),
(564, 'Karimnagar', 24),
(565, 'Jayashankar Bhupalpally', 24),
(566, 'Sangareddy', 24),
(567, 'Medak', 24),
(568, 'Siddipet', 24),
(569, 'Jangaon', 24),
(570, 'Hanumakonda', 24),
(571, 'Warangal', 24),
(572, 'Mulugu', 24),
(573, 'Bhadradri kothagudem', 24),
(574, 'Khammam', 24),
(575, 'Mahabubabad', 24),
(576, 'Suryapet', 24),
(577, 'Nalgonda', 24),
(578, 'Yadadri Bhuvanagiri', 24),
(579, 'Medchal–Malkajgiri', 24),
(580, 'Hyderabad', 24),
(581, 'Ranga Reddy', 24),
(582, 'Vikarabad', 24),
(583, 'Narayanpet', 24),
(584, 'Mahabubnagar', 24),
(585, 'Nagarkurnool', 24),
(586, 'Wanaparthy', 24),
(587, 'Jogulamba Gadwal', 24),
(588, 'Dhalai', 25),
(589, 'Gomati', 25),
(590, 'Khowai', 25),
(591, 'Sipahijala', 25),
(592, 'Unakoti', 25),
(593, 'North Tripura', 25),
(594, 'South Tripura', 25),
(595, 'West Tripura', 25),
(596, 'Almora', 26),
(597, 'Bageshwar', 26),
(598, 'Chamoli', 26),
(599, 'Champawat', 26),
(600, 'Dehradun', 26),
(601, 'Haridwar', 26),
(602, 'Nainital', 26),
(603, 'Pauri Garhwal', 26),
(604, 'Pithoragarh', 26),
(605, 'Rudraprayag', 26),
(606, 'Tehri Garhwal', 26),
(607, 'Udham Singh Nagar', 26),
(608, 'Uttarkashi', 26),
(609, 'Agra', 27),
(610, 'Aligarh', 27),
(611, 'Ambedkar Nagar', 27),
(612, 'Ayodhya', 27),
(613, 'Amethi', 27),
(614, 'Amroha', 27),
(615, 'Auraiya', 27),
(616, 'Azamgarh', 27),
(617, 'Budaun', 27),
(618, 'Bagpat', 27),
(619, 'Bahraich', 27),
(620, 'Ballia', 27),
(621, 'Banda', 27),
(622, 'Barabanki', 27),
(623, 'Bareilly', 27),
(624, 'Basti', 27),
(625, 'Bijnor', 27),
(626, 'Bulandshahr', 27),
(627, 'Chandauli', 27),
(628, 'Chitrakoot', 27),
(629, 'Deoria', 27),
(630, 'Etah', 27),
(631, 'Etawah', 27),
(632, 'Farrukhabad', 27),
(633, 'Fatehpur', 27),
(634, 'Firozabad', 27),
(635, 'Gautam Buddha Nagar', 27),
(636, 'Ghaziabad', 27),
(637, 'Ghazipur', 27),
(638, 'Gonda', 27),
(639, 'Gorakhpur', 27),
(640, 'Hapur', 27),
(641, 'Hardoi', 27),
(642, 'Hathras', 27),
(643, 'Jalaun', 27),
(644, 'Jaunpur', 27),
(645, 'Jhansi', 27),
(646, 'Kannauj', 27),
(647, 'Kanpur Dehat', 27),
(648, 'Kanpur Nagar', 27),
(649, 'Kasganj', 27),
(650, 'Kaushambi', 27),
(651, 'Kushinagar', 27),
(652, 'Lakhimpur Kheri', 27),
(653, 'Lalitpur', 27),
(654, 'Lucknow', 27),
(655, 'Maharajganj', 27),
(656, 'Mahoba', 27),
(657, 'Mainpuri', 27),
(658, 'Mathura', 27),
(659, 'Mau', 27),
(660, 'Meerut', 27),
(661, 'Mirzapur', 27),
(662, 'Moradabad', 27),
(663, 'Muzaffarnagar', 27),
(664, 'Pilibhit', 27),
(665, 'Prayagraj', 27),
(666, 'Rae Bareli', 27),
(667, 'Rampur', 27),
(668, 'Saharanpur', 27),
(669, 'Sant Kabir Nagar', 27),
(670, 'Bhadohi', 27),
(671, 'Sambhal', 27),
(672, 'Shahjahanpur', 27),
(673, 'Shamli', 27),
(674, 'Shravasti', 27),
(675, 'Siddharthnagar', 27),
(676, 'Sitapur', 27),
(677, 'Sonbhadra', 27),
(678, 'Sultanpur', 27),
(679, 'Unnao', 27),
(680, 'Varanasi', 27),
(681, 'Alipurduar', 28),
(682, 'Bankura', 28),
(683, 'Paschim Bardhaman', 28),
(684, 'Purba Bardhaman', 28),
(685, 'Birbhum', 28),
(686, 'Cooch Behar', 28),
(687, 'Darjeeling', 28),
(688, 'Dakshin Dinajpur', 28),
(689, 'Hooghly', 28),
(690, 'Howrah', 28),
(691, 'Jalpaiguri', 28),
(692, 'Jhargram', 28),
(693, 'Kolkata', 28),
(694, 'Kalimpong', 28),
(695, 'Malda', 28),
(696, 'Paschim Medinipur', 28),
(697, 'Purba Medinipur', 28),
(698, 'Murshidabad', 28),
(699, 'Nadia', 28),
(700, 'North 24 Parganas', 28),
(701, 'South 24 Parganas', 28),
(702, 'Purulia', 28),
(703, 'Uttar Dinajpur', 28);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

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
(47, 'Others', '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

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
(10, 10, 'B+', 'Hangout with Family,Playing', 'Any', 'English,Hindi', '1,bhatia villa ,bokaro,jharkhand', 'NO', 'NO', '3'),
(11, 11, 'B-', 'Yoga', 'Any', 'Gujarati,English,Hindi', 'kapoor homes,  kolhapur, maharashtra', 'NO', 'NO', '1'),
(14, 14, 'B-', 'Books Reading,Modelling', 'Any', 'English,Hindi', 'gandhidham  ,gandhinagar,gujrat', 'NO', 'NO', '1'),
(15, 15, 'A+', 'Hangout with Family', 'Any', 'English,Hindi', 'sliver residency,  gir somnath, gujrat', 'NO', 'NO', '2'),
(16, 16, 'A-', 'Hangout with Family,Modelling', 'Any', 'Gujarati,English,Hindi', 'vishnukrupa residency, bishnupur , manipur', 'NO', 'NO', '1'),
(18, 18, 'O+', 'Books Reading,Cooking,Modelling', 'Any', 'Gujarati,English,Marathi', '102,shivshakati home  , dhamtari, chhattisgarh', 'NO', 'NO', '3'),
(20, 20, 'B-', 'Modelling,Volleyball', 'Any', 'Gujarati,English,Hindi', 'saikrupa , soreng , sikkim', 'Occasionally', 'Occasionally', '1'),
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
(38, 38, 'A-', 'Hangout with Family', 'Veg', 'English', 'green park view,Bharuch,Gujarat', 'Occasionally', 'Occasionally', '1'),
(39, 39, 'B-', 'Hangout with Family', 'Any', 'English,Hindi', '51,green city , surat , Gujarat', 'NO', 'NO', '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

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
(76, 1, '2025-03-19 15:04:37', 'no'),
(77, 1, '2025-03-19 16:17:12', 'no'),
(78, 24, '2025-03-19 16:13:16', 'no'),
(79, 31, '2025-03-19 16:15:57', 'no'),
(80, 14, '2025-03-19 16:16:26', 'no');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `member_detail_tbl`
--

INSERT INTO `member_detail_tbl` (`member_detail_id`, `member_id`, `member_sub_community_id`, `member_religion`, `member_with_family`, `member_childrens`, `member_height`, `member_weight`, `caste_no_bar`, `marital_status`, `member_birthplace`, `member_body_type`, `member_complexion`, `member_rashi`) VALUES
(1, 1, 1, 'Hindu', 'yes', '3', 6.9, 70, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Vrischika'),
(2, 2, 55, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Chennai', 'Skinny', 'Normal', 'Vrischika'),
(3, 3, 27, 'Hindu', 'yes', '1', 6.7, 82, '1', 'Divorced', 'Amritsar', 'Skinny', 'Dark', 'Mithuna'),
(5, 5, 6, 'Hindu', 'yes', '2', 6.7, 70, '1', 'Divorced', 'Hampi', 'Fat', 'Dark', 'Varishabha'),
(6, 6, 4, 'Hindu', 'yes', '1', 6.7, 78, '1', 'Single', 'Satara', 'Skinny', 'Dark', 'Karka'),
(7, 7, 80, 'Hindu', 'yes', '1', 6.9, 82, '1', 'Single', 'Rajkot', 'Skinny', 'Dark', 'Karka'),
(8, 8, 47, 'Hindu', 'yes', '1', 6.7, 71, '1', 'Divorced', 'Chennai', 'Skinny', 'Dark', 'Sinha'),
(9, 9, 25, 'Hindu', 'yes', '1', 5.6, 82, '1', 'Separated', 'Surat', 'Fat', 'Dark', 'Mithuna'),
(10, 10, 2, 'Hindu', 'yes', '3', 6.7, 70, '1', 'Awaiting', 'JhunjhunÅ«n', 'Skinny', 'Dark', 'Kanya'),
(11, 11, 66, 'Hindu', 'yes', '1', 6.3, 82, '1', 'Single', 'Bhavnagar', 'Fat', 'Dark', 'Karka'),
(14, 14, 64, 'Hindu', 'yes', '1', 6.8, 74, '1', 'Single', 'Surat', 'Fat', 'Dark', 'Karka'),
(15, 15, 77, 'Hindu', 'yes', '1', 6.8, 55, '1', 'Divorced', 'Surat', 'Fat', 'Dark', 'Vrischika'),
(16, 17, 2, 'Hindu', 'yes', '1', 5.6, 55, '1', 'Divorced', 'Jamnagar', 'Skinny', 'Dark', 'Dhanur'),
(18, 19, 16, 'Sikh', 'yes', '1', 5.8, 58, '1', 'Divorced', 'Jalgaon', 'Fat', 'Dark', 'Varishabha'),
(20, 21, 10, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Divorced', 'Darbhanga', 'Skinny', 'Dark', 'Sinha'),
(21, 22, 4, 'Hindu', 'yes', '1', 5.4, 57, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Sinha'),
(22, 24, 37, 'Hindu', 'yes', '2', 5.6, 58, '1', 'Divorced', 'Amritsar', 'Skinny', 'Dark', 'Makara'),
(23, 25, 2, 'Hindu', 'yes', '1', 5.2, 50, '1', 'Single', 'Chennai', 'Skinny', 'Dark', 'Sinha'),
(24, 26, 13, 'Hindu', 'yes', '1', 5.3, 55, '0', 'Single', 'Darbhanga', 'Skinny', 'Dark', 'Karka'),
(25, 27, 38, 'Hindu', 'yes', '1', 5.2, 70, '1', 'Single', 'Noida', 'Normal', 'Normal', 'Mithuna'),
(26, 28, 3, 'Hindu', 'yes', '1', 5.6, 70, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Kumbha'),
(27, 29, 5, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Prayagraj', 'Skinny', 'Dark', 'Varishabha'),
(28, 30, 11, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Salem', 'Normal', 'Brown', 'Varishabha'),
(29, 31, 5, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Lucknow', 'Skinny', 'Dark', 'Mithuna'),
(30, 32, 4, 'Hindu', 'no', '1', 5.2, 52, '1', 'Single', 'Jalgaon', 'Normal', 'Dark', 'Mithuna'),
(31, 33, 36, 'Hindu', 'yes', '1', 5.1, 50, '0', 'Single', 'Lucknow', 'Skinny', 'Dark', 'Mithuna'),
(32, 34, 11, 'Sikh', 'yes', '1', 5.2, 60, '1', 'Awaiting', 'Suratgarh', 'Fat', 'Brown', 'Karka'),
(33, 35, 5, 'Hindu', 'no', '1', 5.2, 66, '1', 'Divorced', 'Aizawl', 'Skinny', 'Dark', 'Kumbha'),
(34, 36, 13, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Varishabha'),
(35, 37, 5, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Bhusawal', 'Skinny', 'Dark', 'Mithuna'),
(36, 38, 1, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Widowed', 'Jamkhandi', 'Skinny', 'Dark', 'Tula'),
(37, 39, 13, 'Jain', 'yes', '1', 5.2, 60, '1', 'Single', 'Jamshedpur', 'Fat', 'Dark', 'Karka'),
(38, 40, 5, 'Sikh', 'yes', '1', 6.9, 55, '1', 'Awaiting', 'Chandigarh', 'Skinny', 'Dark', 'Mithuna'),
(39, 41, 3, 'Hindu', 'yes', '1', 5.2, 55, '1', 'Single', 'Surat', 'Skinny', 'Dark', 'Sinha');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

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
(10, 10, 'M.B.A', 'Government', 'Social Worker', 'Accountant', 'Visionary Works', 800000, 'hello!,I am 32 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling,hangout with family and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(11, 11, 'B.B.A', 'Government', 'Bussiness', 'Accountant', 'StellarPulse Tech', 500000, 'hello!,I am 27 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is yoga. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(14, 14, 'B.B.A', 'Government', 'Bussiness', 'Clerk', 'Tata', 990000, 'hello!,I am 31 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling,hangout with family and reading books. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(15, 15, 'B.com', 'Private', 'Manager', 'Accountant', 'SparkFlow Technologies', 800000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(16, 16, 'B.B.A', 'Private', 'Bussiness', 'Accountant', 'Ignite Studios', 500000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family and modelling. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(18, 18, 'B.B.A', 'Private', 'Librarian', 'Other', 'peace library', 200000, 'hello!,I am 20 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is modelling,cooking and book reading . I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(20, 20, 'B.Tech', 'Private', 'Social Worker', 'HR', 'ElitePath Solutions', 600000, 'hello!,I am 31 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
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
(38, 38, 'B.C.A', 'Government', 'Manager', 'Admin', 'L&T ', 700000, 'hello!,I am 32 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is Hangout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.'),
(39, 39, 'B.B.A', 'Government', 'Doctor', 'Accountant', 'Tata', 700000, 'hello!,I am 30 years old ,who enjoys spending quality time with my family. One of my favorite hobbies is hangout with family. I believe in the importance of balancing work and personal life, and these activities allow me to unwind and relax.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `member_tbl`
--

INSERT INTO `member_tbl` (`member_id`, `member_city`, `member_image`, `member_firstname`, `member_lastname`, `member_adhar_id`, `member_contact`, `member_email`, `member_password`, `member_profile_for`, `member_looking_for`, `member_gender`, `member_dob`, `member_profile_id`, `member_age`, `member_min_age`, `member_max_age`, `registration_date`, `member_status`) VALUES
(1, 142, '20250319123101boy8.jpg', 'Aarav', 'Sharama', '675849364578', '1234567651', 'aarav123@gmail.com', 'Aarav@123', 'Brother', 'Female', 'Male', '1998-12-28', '2025392812', 26, 22, 27, '2025-03-18', '1'),
(2, 527, '20250319111150girl32.jpg', 'Ruhi', 'Reddy', '123521362378', '1234567651', 'ruhi123@gmail.com', 'Ruhi@123', 'Myself', 'Male', 'Female', '1999-02-02', '2025110202', 26, 27, 30, '2025-03-18', '1'),
(3, 458, '20250319043425men2.jpg', 'Roshan', 'singh', '123521362341', '1234567890', 'roshan123@gmail.com', 'Roshan@123', 'Son', 'Female', 'Male', '1996-01-30', '2025033001', 29, 23, 26, '2025-03-18', '1'),
(5, 136, '20250319121431girl50.jpg', 'Jaismin', 'Jaiswal', '123343221233', '7990212140', 'jaismin123@gmail.com', 'Jaismin@123', 'Myself', 'Male', 'Female', '1994-06-07', '2025510706', 30, 33, 35, '2025-03-18', '1'),
(6, 181, '20250319043608men4.jpg', 'Aniket', 'Chauhan', '123343221233', '1234567899', 'aniket123@gmail.com', 'Aniket@123', 'Myself', 'Female', 'Male', '1996-02-06', '2025530602', 29, 22, 27, '2025-03-18', '1'),
(7, 510, '20250319122747boy2.jpg', 'Abhimanyu', 'Birla', '123321123452', '8477335995', 'abhimanyu123@gmail.com', 'Abhimanyu@123', 'Brother', 'Female', 'Male', '1997-10-15', '2025291510', 27, 23, 26, '2025-03-18', '1'),
(8, 520, '20250319122823boy1.jpg', 'Vikram', 'Iyer', '123343221284', '7990212147', 'vikram123@gmail.com', 'Vikram@123', 'Brother', 'Female', 'Male', '1995-01-31', '2025123101', 30, 25, 30, '2025-03-18', '1'),
(9, 148, '20250319043740men7.jpg', 'Sameer', 'Tiwari', '123521362378', '1234567899', 'sameer123@gmail.com', 'sameer@123', 'Son', 'Female', 'Male', '1994-03-17', '2025271703', 31, 22, 27, '2025-03-18', '1'),
(10, 203, '20250319043804men8.jpg', 'Rajesh ', 'Bhatia', '123321123478', '8866335000', 'rajesh123@gmail.com', 'Rajesh@123', 'Son', 'Female', 'Male', '1993-03-04', '2025140403', 32, 35, 35, '2025-03-18', '1'),
(11, 340, '20250319043849men9.jpg', 'Siddharth', ' Kapoor', '675849364545', '1274567600', 'siddharth123@gmail.com', 'Siddharth@123', 'Son', 'Female', 'Male', '1998-02-03', '2025350302', 27, 26, 29, '2025-03-18', '1'),
(14, 149, '20250319041629men10.jpg', 'Sandeep', 'Yadav', '345678987543', '1236785430', 'sandeep123@gmail.com', 'Sandeep@123', 'Son', 'Female', 'Male', '1993-06-08', '2025160806', 31, 28, 30, '2025-03-18', '1'),
(15, 150, '20250319111230girl36.jpg', 'Anita', ' Malhotra', '435324765892', '1234321567', 'anita123@gmail.com', 'Anita@123', 'Sister', 'Male', 'Female', '2004-12-23', '2025442312', 20, 29, 31, '2025-03-18', '1'),
(17, 362, '20250319111311girl31.jpg', 'riya', 'mehta', '325641789362', '1245896375', 'riya123@gmail.com', 'Riya@123', 'Sister', 'Male', 'Female', '2004-12-10', '2025301012', 20, 25, 30, '2025-03-18', '1'),
(19, 110, '20250319111423girl34.jpg', 'Dharmi', 'Patel', '789951753122', '8529637890', 'dharmi123@gmail.com', 'Dharmi@123', 'Daughter', 'Male', 'Female', '2004-12-09', '2025160912', 20, 24, 34, '2025-03-18', '1'),
(21, 514, '20250319120113girl40.jpg', 'Simran ', 'Gill', '753852786352', '7538527863', 'simran123@gmail.com', 'Simran@123', 'Sister', 'Male', 'Female', '1993-07-07', '2025300707', 31, 30, 35, '2025-03-18', '1'),
(22, 231, '20250319120331girl41.jpg', 'sanvi', 'patel', '785496123055', '7854961230', 'sanvi123@gmail.com', 'Sanvi@123', 'Daughter', 'Male', 'Female', '2003-10-06', '2025300610', 21, 28, 32, '2025-03-19', '1'),
(24, 458, '20250319052033girl15.jpg', 'Shalini', 'Rao', '784521968888', '7845219688', 'shalini123@gmail.com', 'Shalini@123', 'Sister', 'Male', 'Female', '1995-06-06', '2025040606', 29, 30, 35, '2025-03-19', '1'),
(25, 155, '20250319120439girl38.jpg', 'Sneha', 'Desai', '785694128877', '7856941288', 'sneha123@gmail.com', 'Sneha@123', 'Sister', 'Male', 'Female', '2002-02-12', '2025101202', 23, 22, 30, '2025-03-19', '1'),
(26, 342, '20250319060830girl18.jpg', 'Neha', 'Joshi', '785496586689', '7854965866', 'neha123@gmail.com', 'Neha@123', 'Myself', 'Male', 'Female', '2004-12-10', '2025031012', 20, 26, 30, '2025-03-19', '1'),
(27, 680, '20250319060912girl19.jpg', 'Richa', 'Sinha', '888888555555', '8877556699', 'richa123@gmail.com', 'Richa@123', 'Sister', 'Male', 'Female', '2000-06-08', '2025240806', 24, 28, 30, '2025-03-19', '1'),
(28, 165, '20250319060958girl20.jpg', 'Shweta', 'Mishra', '675849364578', '7878999999', 'shweta123@gmail.com', 'Shweta@123', 'Daughter', 'Male', 'Female', '2002-02-14', '2025191402', 23, 23, 30, '2025-03-19', '1'),
(29, 524, '20250319061036girl22.jpg', 'Ananya ', 'Nair', '888888888888', '8888888888', 'ananya123@gmail.com', 'Ananya@123', 'Sister', 'Male', 'Female', '2001-02-06', '2025100602', 24, 26, 30, '2025-03-19', '1'),
(30, 109, '20250319061105girl23.jpg', 'Aarti ', 'Choudhary ', '777777777777', '7777777777', 'aarati123@gmail.com', 'Aarati@123', 'Daughter', 'Male', 'Female', '2004-12-09', '2025020912', 20, 25, 34, '2025-03-19', '1'),
(31, 170, '20250319121701girl51.jpg', 'Hunny', 'Patel', '665689744789', '6656897447', 'hunny123@gmail.com', 'Hunny@123', 'Daughter', 'Male', 'Female', '2004-12-08', '2025140812', 20, 26, 30, '2025-03-19', '1'),
(32, 232, '20250319121809girl52.jpg', 'Kajal', 'Das', '852582558222', '8525825582', 'kajal123@gmail.com', 'Kajal@123', 'Daughter', 'Male', 'Female', '2004-12-03', '2025140312', 20, 26, 32, '2025-03-19', '1'),
(33, 339, '20250319122036girl46.jpg', 'Vidhi', ' Joshi', '858254789888', '8582547898', 'vidhi123@gmail.com', 'Vidhi@123', 'Son', 'male', 'Female', '1999-06-08', '', 25, 26, 33, '2025-03-19', '1'),
(34, 283, '20250319123207boy6.jpg', 'heet', 'patel', '111111111112', '1111111110', 'heet123@gmail.com', 'Heet@123', 'Son', 'Female', 'Male', '1995-01-31', '2025413101', 30, 29, 31, '2025-03-19', '1'),
(35, 70, '20250319123145boy7.jpg', 'Jay', 'Modi', '789456987555', '7894569875', 'jay123@gmail.com', 'Jay@123', 'Son', 'Female', 'Male', '1991-05-06', '2025230605', 33, 25, 30, '2025-03-19', '1'),
(36, 332, '20250319122203girl53.jpg', 'Janavi', 'Patel', '858585858585', '8585858585', 'janavi123@gmail.com', 'Janavi@123', 'Myself', 'Male', 'Female', '2000-06-06', '2025570606', 24, 23, 28, '2025-03-19', '1'),
(37, 144, '20250319123244boy5.jpg', 'Prince', 'Sanepara', '451278936955', '4512789369', 'prince123@gmail.com', 'Prince@123', 'Son', 'Female', 'Male', '1995-01-02', '2025130201', 30, 24, 28, '2025-03-19', '1'),
(38, 260, '20250319122331girl55.jpg', 'Urvi', 'Shah', '787845458588', '7878454585', 'urvi123@gmail.com', 'Urvi@123', 'Myself', 'Male', 'Female', '2000-06-06', '2025020606', 24, 27, 30, '2025-03-19', '1'),
(39, 195, '20250319122414girl56.jpg', 'Mitali', 'Roy', '784521963789', '7874521464', 'mitali123@gmail.com', 'Mitali@123', 'Sister', 'Male', 'Female', '2000-02-01', '2025030102', 25, 28, 30, '2025-03-19', '1'),
(40, 142, '20250319123347boy10.jpg', 'Ronit', 'Patel', '457812963888', '4578129638', 'ronit123@gmail.com', 'Ronit@123', 'Myself', 'Male', 'Male', '1993-02-01', '2025340102', 32, 25, 30, '2025-03-19', '1'),
(41, 165, 'image_placeholder.jpg', 'Hardik', 'Methiwala', '789456123888', '7894561238', 'hardik123@gmail.com', 'Hardik@123', 'Son', 'Female', 'Male', '1995-01-31', '2025483101', 30, 21, 23, '2025-03-19', '1');

-- --------------------------------------------------------

--
-- Table structure for table `notification_tbl`
--

CREATE TABLE IF NOT EXISTS `notification_tbl` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `notification_type` enum('request_sent','request_accepted') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `notification_tbl`
--

INSERT INTO `notification_tbl` (`notification_id`, `member_id`, `message`, `notification_type`, `created_at`, `is_read`) VALUES
(36, 1, 'You have received a new connection request from Member #27', 'request_sent', '2025-03-19 03:17:12', 1),
(37, 3, 'You have received a new connection request from Member #27', 'request_sent', '2025-03-19 03:17:31', 0),
(38, 4, 'You have received a new connection request from Member #27', 'request_sent', '2025-03-19 03:17:41', 1),
(39, 27, 'Your connection request was accepted by Member #4', 'request_accepted', '2025-03-19 08:51:07', 0),
(40, 2, 'You have received a new connection request from Member #35', 'request_sent', '2025-03-19 10:10:36', 0),
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
(65, 1, 'You have received a new connection request from Member #38', 'request_sent', '2025-03-19 11:30:08', 0),
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
(87, 2, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(88, 5, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(89, 15, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(90, 17, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(91, 19, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(92, 21, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(93, 22, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(94, 24, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(95, 25, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(96, 26, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(97, 27, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(98, 28, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(99, 29, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(100, 30, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(101, 31, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(102, 32, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(103, 33, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(104, 36, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(105, 38, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(106, 39, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0),
(107, 40, 'You have received a new connection request from Member #41', 'request_sent', '2025-03-19 16:08:50', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

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
(10, 1, 10, 10, '2025-03-18', '2025-06-18', 1),
(11, 1, 11, 11, '2025-03-18', '2025-06-18', 1),
(12, 2, 14, 12, '2025-03-18', '2025-05-18', 1),
(13, 1, 15, 13, '2025-03-18', '2025-06-18', 1),
(14, 1, 17, 14, '2025-03-18', '2025-06-18', 1),
(16, 2, 19, 16, '2025-03-18', '2025-05-18', 1),
(18, 1, 21, 18, '2025-03-18', '2025-06-18', 1),
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
(33, 2, 40, 33, '2025-03-19', '2025-05-19', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

CREATE TABLE IF NOT EXISTS `payment_tbl` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `razorpay_payment_id` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','success','failed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `payment_tbl`
--

INSERT INTO `payment_tbl` (`payment_id`, `razorpay_payment_id`, `total_amount`, `payment_status`, `created_at`) VALUES
(1, 'pay_Q8EnzZMoqdjzZN', '5000.00', 'success', '2025-03-18 11:32:06'),
(2, 'pay_Q8EvuhUEldfRqj', '5000.00', 'success', '2025-03-18 11:39:35'),
(3, 'pay_Q8F3DwvJ0hrjnl', '500.00', 'success', '2025-03-18 11:46:31'),
(4, 'pay_Q8FCBp55K6vRQh', '5000.00', 'success', '2025-03-18 11:54:59'),
(5, 'pay_Q8FKwK33mPV0Q9', '5000.00', 'success', '2025-03-18 12:03:17'),
(6, 'pay_Q8FSKUlKPmkJjc', '2000.00', 'success', '2025-03-18 12:10:22'),
(7, 'pay_Q8FaMCu5fdSAqg', '5000.00', 'success', '2025-03-18 12:17:52'),
(8, 'pay_Q8FgNboD9h10UL', '2000.00', 'success', '2025-03-18 12:23:34'),
(9, 'pay_Q8Fm0tSXdp5mDP', '500.00', 'success', '2025-03-18 12:28:59'),
(10, 'pay_Q8Ft63FntDRrDN', '5000.00', 'success', '2025-03-18 12:35:37'),
(11, 'pay_Q8G2z40SBZJHqT', '5000.00', 'success', '2025-03-18 12:44:59'),
(12, 'pay_Q8GFK1W7Lo6f0l', '2000.00', 'success', '2025-03-18 12:56:40'),
(13, 'pay_Q8GMCDrD73DjCs', '5000.00', 'success', '2025-03-18 13:03:10'),
(14, 'pay_Q8KuK8tyEeRIeC', '5000.00', 'success', '2025-03-18 17:30:17'),
(15, 'pay_Q8L2a6aapZ6oJf', '5000.00', 'success', '2025-03-18 17:38:05'),
(16, 'pay_Q8L8VtvSZGhjjp', '2000.00', 'success', '2025-03-18 17:43:43'),
(17, 'pay_Q8LGKtwQvTfHlf', '500.00', 'success', '2025-03-18 17:51:06'),
(18, 'pay_Q8LMU1O2MBIujB', '5000.00', 'success', '2025-03-18 17:56:55'),
(19, 'pay_Q8VsJSIFRtk36R', '5000.00', 'success', '2025-03-19 04:14:02'),
(20, 'pay_Q8X02zK98UsxHX', '5000.00', 'success', '2025-03-19 05:20:05'),
(21, 'pay_Q8X7ACXUFcLslt', '5000.00', 'success', '2025-03-19 05:27:32'),
(22, 'pay_Q8XDP0Z0wn5VKu', '2000.00', 'success', '2025-03-19 05:32:42'),
(23, 'pay_Q8XPhgJUABDZyX', '500.00', 'success', '2025-03-19 05:44:18'),
(24, 'pay_Q8XZ6u6hqjakxI', '2000.00', 'success', '2025-03-19 05:53:14'),
(25, 'pay_Q8Xi5alvGC58sH', '5000.00', 'success', '2025-03-19 06:01:41'),
(26, 'pay_Q8Xm2pxinT4tNW', '5000.00', 'success', '2025-03-19 06:05:26'),
(27, 'pay_Q8Y8WxHd9WouZm', '5000.00', 'success', '2025-03-19 06:26:44'),
(28, 'pay_Q8YdU7YZWPxtEC', '5000.00', 'success', '2025-03-19 06:56:16'),
(29, 'pay_Q8bxOPcXQYsDC5', '5000.00', 'success', '2025-03-19 10:10:58'),
(30, 'pay_Q8crTYmcwxHCdh', '5000.00', 'success', '2025-03-19 11:04:04'),
(31, 'pay_Q8dJOrBodoRyeu', '5000.00', 'success', '2025-03-19 11:30:30'),
(32, 'pay_Q8ddpLDM2ND9FT', '2000.00', 'success', '2025-03-19 11:49:50'),
(33, 'pay_Q8dlaAxQW01Yad', '2000.00', 'success', '2025-03-19 11:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `send_request_tbl`
--

CREATE TABLE IF NOT EXISTS `send_request_tbl` (
  `request_id` int(4) NOT NULL AUTO_INCREMENT,
  `member_id` int(4) NOT NULL,
  `send_request_id` text NOT NULL,
  `request_date` datetime NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `send_request_tbl`
--

INSERT INTO `send_request_tbl` (`request_id`, `member_id`, `send_request_id`, `request_date`) VALUES
(32, 14, '{"19":"accepted"}', '2025-03-19 07:48:11'),
(33, 24, '{"34":"pending"}', '2025-03-19 08:39:15'),
(34, 27, '{"1":"pending"}', '2025-03-19 08:47:12'),
(35, 27, '{"3":"pending"}', '2025-03-19 08:47:31'),
(36, 27, '{"4":"accepted"}', '2025-03-19 08:47:41'),
(37, 35, '{"2":"pending","19":"pending","21":"pending","22":"pending","31":"pending"}', '2025-03-19 10:10:36'),
(38, 36, '{"1":"pending","3":"pending","6":"pending","8":"pending","14":"pending","35":"pending"}', '2025-03-19 10:15:32'),
(39, 36, '{"1":"pending","3":"pending","6":"pending","8":"pending","14":"pending"}', '2025-03-19 10:16:10'),
(40, 35, '{"15":"accepted"}', '2025-03-19 10:53:12'),
(41, 37, '{"29":"pending","31":"pending","33":"pending","36":"pending"}', '2025-03-19 11:03:39'),
(42, 38, '{"1":"pending","3":"pending","4":"pending","6":"pending","7":"pending","8":"pending","9":"pending","10":"pending","11":"pending","14":"pending","34":"pending","35":"pending","37":"pending"}', '2025-03-19 11:30:08'),
(43, 39, '{"35":"pending","37":"pending"}', '2025-03-19 11:49:29'),
(44, 40, '{"7":"pending","8":"pending","9":"pending","11":"pending","34":"pending","35":"pending","37":"pending"}', '2025-03-19 11:56:48'),
(45, 41, '{"2":"pending","5":"pending","15":"pending","17":"pending","19":"pending","21":"pending","22":"pending","24":"pending","25":"pending","26":"pending","27":"pending","28":"pending","29":"pending","30":"pending","31":"pending","32":"pending","33":"pending","36":"pending","38":"pending","39":"pending","40":"pending"}', '2025-03-19 16:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `state_tbl`
--

CREATE TABLE IF NOT EXISTS `state_tbl` (
  `state_id` int(4) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name` (`state_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

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

CREATE TABLE IF NOT EXISTS `sub_community_tbl` (
  `sub_community_id` int(4) NOT NULL AUTO_INCREMENT,
  `community_id` int(4) NOT NULL,
  `sub_community_name` varchar(20) NOT NULL,
  `sub_community_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`sub_community_id`),
  KEY `community_id` (`community_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

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

CREATE TABLE IF NOT EXISTS `testimonial_tbl` (
  `testimonial_id` int(4) NOT NULL AUTO_INCREMENT,
  `member_id` int(4) NOT NULL,
  `testimonial_date` date NOT NULL,
  `member_contact` bigint(11) NOT NULL,
  `testimonial_description` text NOT NULL,
  `testimonial_status` enum('1','0') NOT NULL,
  PRIMARY KEY (`testimonial_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `testimonial_tbl`
--

INSERT INTO `testimonial_tbl` (`testimonial_id`, `member_id`, `testimonial_date`, `member_contact`, `testimonial_description`, `testimonial_status`) VALUES
(1, 1, '2025-03-01', 9988774455, 'I Love your website', '1'),
(2, 2, '2025-03-11', 9988665533, 'Finally,I find my Patner', '1');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
