-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2021 at 06:07 AM
-- Server version: 5.7.31
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enut`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_validity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `post_validity`, `content`, `image`, `image_path`, `author`, `created_at`, `updated_at`) VALUES
(3, 'Sample', '03/08/2021 - 04/06/2021', '<p>Sample Contents</p>', 'recur.PNG', 'C:\\wamp64\\www\\enut-cms\\public\\files/announcement\\recur.PNG', 'Mark Joseph', '2021-03-08 03:16:55', '2021-03-08 04:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `brochure_categories`
--

DROP TABLE IF EXISTS `brochure_categories`;
CREATE TABLE IF NOT EXISTS `brochure_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brochure_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brochure_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brochure_categories`
--

INSERT INTO `brochure_categories` (`id`, `brochure_year`, `brochure_thumbnail`, `created_at`, `updated_at`) VALUES
(1, '2015', 'milk.jpg', '2021-02-16 00:46:05', '2021-02-16 00:46:05'),
(3, '2019', 'download.jpg', '2021-03-11 07:10:32', '2021-03-11 07:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(200) NOT NULL,
  `country_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_slug`, `created_at`, `updated_at`) VALUES
(1, 'What is PUF?', 'Public Use Files or PUF are data files characterized by a low disclosure risk or anonymized data. They are prepared and shared to provide access to the full coverage of the data for maximum utilization of data users. Users of DOST-FNRI’s PUF must comply with the provisions of Section 6 of the “Policies and Guidelines on Data Access of FNRI Nutrition Survey Data”.', '9', '2020-12-01 06:04:44', '2020-12-01 06:04:44'),
(2, 'What is the significance of the PUF?', 'For data to be more accessible to all end-users.', '9', '2020-12-01 06:05:47', '2020-12-01 06:05:47'),
(3, 'What data sources are available in the DOST-FNRI NNS PUF?', 'Data sources include the following components: Anthropometry, Biochemical, Clinical and Health, Dietary, Socioeconomic, Food Security, Maternal Health and Nutrition and Infant and Young Child Feeding.', '9', '2020-12-01 06:06:04', '2020-12-01 06:06:04'),
(4, 'In what format are data files available?', 'DOST-FNRI PUF supplies data files in CSV format.', '9', '2020-12-01 06:06:30', '2020-12-01 06:06:30'),
(5, 'How are survey respondents protected?', 'PUF do not include variables that, individually or collectively, might permit identification of individuals. Data are masked or anonymized to help preserve confidentiality.', '9', '2020-12-01 06:06:46', '2020-12-01 06:06:46'),
(6, 'What kind of PUF documentation does DOST-FNRI provide?', 'DOST-FNRI provides data documentation of PUF, describing the survey component, purpose, sample sizes and descriptions. Documentation also includes data source, time period and data dictionary.', '9', '2020-12-01 06:07:06', '2020-12-01 06:07:06'),
(7, 'How does DOST-FNRI distribute PUF?', 'It is accessible through the eNutrition website.', '9', '2020-12-01 06:07:21', '2020-12-01 06:07:21'),
(8, 'How much does it cost for a DOST-FNRI PUF?', 'Nutrition survey data files are available to the public for FREE.', '9', '2020-12-01 06:07:35', '2020-12-01 06:07:35'),
(9, 'How many PUF can I request?', 'There is no limit on the number of PUF that can be requested.', '9', '2020-12-01 06:08:08', '2021-03-11 02:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_overview` text COLLATE utf8mb4_unicode_ci,
  `file_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_title`, `file_overview`, `file_category`, `file_year`, `file_thumbnail`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(9, '2015 Updating of the Nutritional Status of Filipino Children and Other Population Group: Overview', '<p style=\"text-align: justify;\">This report provides an overview of the&nbsp;2015 Updating of the Nutritional Status of Filipino Children and Other Population Group: Philippines, undertaken by the Food and Nutrition Research Institute, Department of Science and Technology (FNRI-DOST). Additional information about the survey may be obtained from the FNRI-DOST, DOST Compound, Gen. Santos Ave., Bicutan, Taguig City, Metro Manila, Philippines 1631.</p>', 'FactsandFigures', '2015', 'overview_front.jpg', '2015_OVERVIEW.pdf', 'C:\\wamp\\www\\enutrition\\public\\Files/2015/Facts&Figures\\2015_OVERVIEW.pdf', '2020-08-17 07:25:48', '2020-08-17 07:57:49'),
(10, '2015 Updating of the Nutritional Status of Filipino Children and Other Population Group: Government Program Participation', '<p style=\"text-align: justify;\">This report summarizes the result of the 2015 Updating of the Nutritional Status of Filipino Children and Other Population Group (Government Program Participation Survey): Philippines, undertaken by the Food and Nutrition Research Institute, Department of Science and Technology (FNRI-DOST).</p>\r\n<p><span style=\"color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: #f2f2f2;\">&nbsp;</span></p>', 'FactsandFigures', '2015', 'gp_front.jpg', '2015_GOVERNMENT_PROGRAM_PARTICIPATION_SURVEY.pdf', 'C:\\wamp\\www\\enutrition\\public\\Files/2015/Facts&Figures\\2015_GOVERNMENT_PROGRAM_PARTICIPATION_SURVEY.pdf', '2020-08-17 08:23:16', '2020-08-17 08:23:16'),
(11, '2019 ENNS Results Dissemination_Preschool School-age Children_ENNS', NULL, 'Presentation', '2019', NULL, '2019 ENNS Results Dissemination_Preschool School-age Children_ENNS.pdf', 'C:\\wamp\\www\\enutrition\\public\\Files/2019/Presentation\\2019 ENNS Results Dissemination_Preschool School-age Children_ENNS.pdf', '2020-08-17 09:09:07', '2020-08-17 09:09:07'),
(12, '2019 ENNS Results Dissemination_Adolescents & WRA', NULL, 'Presentation', '2019', NULL, '2019 ENNS Results Dissemination_Adolescents and WRA.pdf', 'C:\\wamp\\www\\enutrition\\public\\Files/2019/Presentation\\2019 ENNS Results Dissemination_Adolescents and WRA.pdf', '2020-08-17 09:09:59', '2020-08-17 09:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `image_contents`
--

DROP TABLE IF EXISTS `image_contents`;
CREATE TABLE IF NOT EXISTS `image_contents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_contents`
--

INSERT INTO `image_contents` (`id`, `image_title`, `image_subtitle`, `image_type`, `image_filename`, `image_slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Clinical Survey', 'This is Clinical Survey', 'carousel', 'clinical.jpg', 'home', 1, '2020-08-10 02:27:01', '2021-03-11 03:19:08'),
(12, 'Dietary Survey', 'This is Dietary Survey', 'carousel', 'dietary.jpg', 'home', 1, '2020-08-10 02:28:00', '2020-12-01 07:22:31'),
(13, 'Food Security Survey', 'This is Food Security Survey', 'carousel', 'food_sec.jpg', 'home', 0, '2020-08-10 02:28:30', '2021-03-11 03:35:51'),
(14, 'Maternal Survey', 'This is Maternal Survey', 'carousel', 'maternal.jpg', 'home', 1, '2020-08-10 02:28:57', '2021-02-01 03:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

DROP TABLE IF EXISTS `log_activities`;
CREATE TABLE IF NOT EXISTS `log_activities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Mark Joseph uploadedFacts&Figures', 'http://127.0.0.1:8000/file-uploads', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 9, '2021-03-09 01:34:00', '2021-03-09 01:34:00'),
(4, 'Mark Joseph added survey type.', 'http://127.0.0.1:8000/surveys', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 9, '2021-03-08 06:10:19', '2021-03-08 06:10:19'),
(6, 'Mark Joseph uploadedFacts&Figures', 'http://127.0.0.1:8000/file-uploads', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 9, '2021-03-09 01:35:16', '2021-03-09 01:35:16'),
(7, 'Mark Joseph uploadedFacts&Figures', 'http://127.0.0.1:8000/file-uploads', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 9, '2021-03-09 01:52:04', '2021-03-09 01:52:04'),
(8, 'Mark Joseph uploadedFacts&Figures', 'http://127.0.0.1:8000/file-uploads', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 9, '2021-03-09 05:48:35', '2021-03-09 05:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_06_021242_create_announcements_table', 1),
(4, '2020_08_07_190520_create_privacies_table', 1),
(5, '2020_08_08_184006_create_surveys_table', 1),
(6, '2020_08_08_202751_create_page_contents_table', 1),
(7, '2020_08_09_171210_create_image_contents_table', 2),
(8, '2020_08_17_102342_create_files_table', 3),
(9, '2020_10_15_075346_create_brochure_categories_table', 4),
(10, '2020_11_16_141134_create_upload_brochures_table', 4),
(11, '2020_11_19_092904_create_faqs_table', 4),
(12, '2020_10_29_001241_create_public_users_table', 5),
(13, '2020_11_05_023010_create_user_requesteds_table', 5),
(14, '2021_03_08_135541_create_log_activity_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

DROP TABLE IF EXISTS `page_contents`;
CREATE TABLE IF NOT EXISTS `page_contents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `page_title`, `page_content`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Data Access Policy', '<p>FNRI Disclaimer - User Agreement<br /> Nutrition Survey Data Public Use Files (PUF)<br /> <br /> The Department Of Science And Technology (DOST) - Food And Nutrition Research Institute (FNRI) Recognizes The Need To Provide Access To The Data Collected From The National Nutrition Surveys In Accordance With Section III, Article 7 Of The Philippine Constitution. This Disclaimer-User Agreement Details The Sources And Nature Of The Data. It Specifies The Responsibility Of The Data User In Processing And Understanding The Data Files.<br /> <br /> Access Conditions<br /> <br /> Nutrition Survey PUF Are Accessible Online To The Public At ENutrition Website (Enutrition.Fnri.Dost.Gov.Ph) In CSV Format As Free Downloads. Data Dictionary Per Component Are Provided For Easy Understanding Of The Different Variables Included In Each Dataset. User Has To Agree To The Following Terms And Conditions Before Given Access To Microdata Or PUF:<br /> <br /> 1. It Shall Be Used For Statistical Purposes Only. It Is The Responsibility Of The User To Identify The Variables Of Interest. Any Alterations Of The Original Data, Including Conversion To Other Data Formats And Data Manipulation Is The Sole Responsibility Of The User. The DOST-FNRI Has No Responsibility For The Data After It Has Been Altered, Converted Or Manipulated.<br /> <br /> 2. Accessed Data Shall Be Solely Used For The Purpose Of The User\'s Subject Of Interest And Shall Not Be For Any Malicious Validation Or Investigation Against Other Entities.<br /> <br /> 3. Data Have Been Anonymized Therefore Re-Identification Of These Public Datasets Is Not Permitted.<br /> <br /> 4. Data User Should Acknowledge DOST-FNRI As The Source Of Data.<br /> <br /> Additional Terms And Conditions<br /> <br /> The DOST-FNRI Reserves The Right To Revise, Modify Or Amend This Disclaimer-User Agreement. Any Violation Of This Agreement Shall Be Subjected To The Penalties As Stipulated In The Data Privacy Act.</p>', 'data-access-policy', '2020-08-08 13:36:05', '2020-12-01 05:50:46'),
(5, 'Home', '<p>Welcome To ENutrition</p>\r\n<p>The ENutrition Website Is The Data Warehouse Of The National Nutrition Survey (NNS) Providing Electronically Accessible Information On Individual\'s Growth And Body Composition, Biomarkers, Food And Nutrient Intake, Health And Other Related Indicators Which Are Useful Inputs In Crafting And/Or Reviewing Policies And Programs On Food, Nutrition, Health, Agriculture And Social Services.</p>', 'home', '2020-08-09 04:27:54', '2020-12-01 05:50:09'),
(2, 'Privacy Policy', '<p>Privacy Policy<br /> <br /> The purpose of this policy is to disclose the privacy practices for the eNutrition website. This privacy notice applies solely to information collected by this website. It may be updated or modified any time by the Data Provider.<br /> <br /> Information Collection, Use and Sharing<br /> <br /> DOST-FNRI is the sole owner of information collected on this site and has sole access to the information you voluntarily provided us via email. DOST-FNRI will not sell or rent this information to anyone.<br /> <br /> DOST-FNRI will not share your information with any third party outside of the organization.<br /> <br /> Security of Information<br /> <br /> It is important to consider that the transfer of information via Internet comes with risks i.e. emails usually aren\'t secured against virus. Whether or not an e-mail is \"secured\" depends on your software.<br /> <br /> Security on online transmission varies on the browser used by the client since this site provides data request and feedback forms without encryption/decryption protocol.<br /> <br /> FNRI Data Request and Feedback Forms<br /> <br /> This site uses Data Request Forms to gather information (name, e-mail address, data requested, etc.) that can be used as reference to help us collect or process client\'s request/s and the Data Provider responds via e-mail. In an effort to respond to your request, the information that client has submitted may be viewed by various people within the DOST-FNRI. The Feedback Forms are used to collect suggestions and comments to maintain and improve the quality of services provided.<br /> <br /> Any information provided on these forms will not be disclosed outside DOST-FNRI without client\'s consent, apart from when authorized or required by law.<br /> <br /> Data Collected when Visiting the eNutrition Website<br /> <br /> The website makes a record of the following information:<br /> <!-- [if !supportLineBreakNewLine]--><br /> <!--[endif]--></p>\r\n<ul type=\"disc\">\r\n<li>Date and time of visit</li>\r\n<li>Type of browser used</li>\r\n<li>ISP / location</li>\r\n<li>Operating system, plug-ins and resolution used</li>\r\n<li>Previous site visited</li>\r\n</ul>\r\n<p><br /> Data above are collected to aggregate and analyze information to determine what is most effective about the site and help the Data Provider identify ways to improve it.</p>', 'privacy-policy', '2020-08-08 13:37:00', '2020-12-01 05:50:54'),
(6, 'Acknowledgement', '<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-align: left; text-indent: 0cm; line-height: 107%;\" align=\"left\"><strong style=\"mso-bidi-font-weight: normal;\"><span style=\"font-size: 14.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%;\">NNS Philippines, 2013</span></strong></p>\r\n<p class=\"MsoNormal\">Grateful acknowledgment and appreciation are due to the following agencies or organizations which extended enormous support in the conduct of the 2013 National Nutrition Survey (NNS):<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: left; text-indent: 0cm; line-height: 107%; margin: 0cm 0cm .0001pt 18.0pt;\" align=\"left\"><span style=\"mso-spacerun: yes;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Department of Health (DOH)</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Department of Health-National Nutrition Council (DOH-NNC) Central and Regional Offices</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Department of Science and Technology-Philippine Council for Health Research and Development (DOST-PCHRD)<span style=\"mso-spacerun: yes;\">&nbsp; </span>Department of Science and Technology Regional and Provincial Offices<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">DSM Nutritional Products Asia Pacific</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Global Alliance for Improved Nutrition (GAIN)<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Osteoporosis Society of the Philippines Foundation, Inc. (OSPFI)<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Philippine Health Insurance Corporation (PhilHealth)<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Philippine Society of Endocrinology and Metabolism (PSEM)<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Philippine Statistics Authority (PSA)</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">Provincial/Municipal/City Government Units</p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 17.75pt;\">United Nations World Food Programme (WFP)<span style=\"mso-spacerun: yes;\">&nbsp; </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; margin-bottom: .0001pt; text-align: left; text-indent: 0cm; line-height: 107%;\" align=\"left\"><span style=\"mso-spacerun: yes;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\">Our sincerest thanks to the Dr. Arturo Y. Pacificador, Jr., NNS statistical consultant; team coordinators, assistant team<span style=\"mso-spacerun: yes;\">&nbsp; </span>coordinators, team leaders, field researchers, local survey aides, 172,323 subjects from 35,825 sample households, and numerous others who participated in the data collection of 2013 NNS.<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp; </span></p>', 'acknowledgement', '2020-12-04 01:10:17', '2020-12-04 01:11:53'),
(4, 'About NNS', '<p>National Nutrition Survey</p><p>The Department Of Science And Technology -Food And Nutrition Research Institute (DOST-FNRI) Is The Premier Research And Development Institute Of The Government In Food, Nutrition, Science, Technology And Other S &amp; T Services. Through The Years, The DOST-FNRI Is Committed To Fight Malnutrition With Accurate Data, Correct Information And Innovative Technologies.<br><br>The National Nutrition Survey Or NNS Is The Banner Activity Of The Institute That Has Tremendously Evolved From Having Three Components In The First NNS In 1978 To Ten Components In The 6th Updating Survey In 2015, Covering Wider And More Detailed Variables On Food, Nutrition, Clinical And Health; With Substantial Increase In Survey Coverage And Sample Size.<br><br>The NNS Have The Following Components: Anthropometry, Biochemical, Clinical, Dietary, Socio-Economic, Food Security, Government Program Participation, Maternal Health And Infant And Young Child Feeding. Health Indicators Such As The Measurement Of Hypertension, Diabetes And Dyslipidemia Have Been Incorporated In The Survey Since 1998, As Well As Non-Communicable Disease Risk Factors Like Smoking, Alcohol Consumption, Unhealthy Diet, And Physical Inactivity.<br><br>On The Other Hand, The Updating Survey Has The Following Components: Anthropometry, Socio-Economic, Food Security, Government Program Participation, Maternal Health And Infant And Young Child Feeding. In The 2015 Updating Survey, Clinical, Health And Dietary Component Was Conducted To Track The Country’s Progress On Achieving The Millennium Development Goals (MDGs).<br><br>The Data Collection Has Evolved From Pen And Paper To The Use Of The Electronic Data Collection System (EDCS) To Stay At Par With The Technological Advancements Of The Digital Age. The EDCS, Which Was Fully Implemented In 2013, Facilitated Faster Collection, Transmission And Organization Of Data And Timely Release Of Results.<br><br>Results Are Reported As Early As Six Months After Data Collection. Reducing By Three-Fourths The Time From Previous Surveys.</p>', 'about-nns', '2020-08-09 03:29:38', '2021-03-11 01:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `page_reference`
--

DROP TABLE IF EXISTS `page_reference`;
CREATE TABLE IF NOT EXISTS `page_reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(191) NOT NULL,
  `page_slug` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_reference`
--

INSERT INTO `page_reference` (`id`, `page_title`, `page_slug`) VALUES
(1, 'Home', 'home'),
(2, 'Facts and Figures', 'facts-and-figures'),
(3, 'Presentations', 'presentations'),
(4, 'Data Access Policy', 'data-access-policy'),
(5, 'Privacy Policy', 'privacy-policy'),
(6, 'Public Use File', 'public-use-file'),
(7, 'About NNS', 'about-nns'),
(8, 'Contact', 'contact-us'),
(9, 'Frequently Asked Questions', 'faqs'),
(10, 'Acknowledgement', 'acknowledgement');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

DROP TABLE IF EXISTS `privacies`;
CREATE TABLE IF NOT EXISTS `privacies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE IF NOT EXISTS `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `psgcCode` varchar(255) DEFAULT NULL,
  `province_name` text,
  `region_code` varchar(255) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `psgcCode`, `province_name`, `region_code`, `province_code`) VALUES
(1, '012800000', 'ILOCOS NORTE', '01', '0128'),
(2, '012900000', 'ILOCOS SUR', '01', '0129'),
(3, '013300000', 'LA UNION', '01', '0133'),
(4, '015500000', 'PANGASINAN', '01', '0155'),
(5, '020900000', 'BATANES', '02', '0209'),
(6, '021500000', 'CAGAYAN', '02', '0215'),
(7, '023100000', 'ISABELA', '02', '0231'),
(8, '025000000', 'NUEVA VIZCAYA', '02', '0250'),
(9, '025700000', 'QUIRINO', '02', '0257'),
(10, '030800000', 'BATAAN', '03', '0308'),
(11, '031400000', 'BULACAN', '03', '0314'),
(12, '034900000', 'NUEVA ECIJA', '03', '0349'),
(13, '035400000', 'PAMPANGA', '03', '0354'),
(14, '036900000', 'TARLAC', '03', '0369'),
(15, '037100000', 'ZAMBALES', '03', '0371'),
(16, '037700000', 'AURORA', '03', '0377'),
(17, '041000000', 'BATANGAS', '04', '0410'),
(18, '042100000', 'CAVITE', '04', '0421'),
(19, '043400000', 'LAGUNA', '04', '0434'),
(20, '045600000', 'QUEZON', '04', '0456'),
(21, '045800000', 'RIZAL', '04', '0458'),
(22, '174000000', 'MARINDUQUE', '17', '1740'),
(23, '175100000', 'OCCIDENTAL MINDORO', '17', '1751'),
(24, '175200000', 'ORIENTAL MINDORO', '17', '1752'),
(25, '175300000', 'PALAWAN', '17', '1753'),
(26, '175900000', 'ROMBLON', '17', '1759'),
(27, '050500000', 'ALBAY', '05', '0505'),
(28, '051600000', 'CAMARINES NORTE', '05', '0516'),
(29, '051700000', 'CAMARINES SUR', '05', '0517'),
(30, '052000000', 'CATANDUANES', '05', '0520'),
(31, '054100000', 'MASBATE', '05', '0541'),
(32, '056200000', 'SORSOGON', '05', '0562'),
(33, '060400000', 'AKLAN', '06', '0604'),
(34, '060600000', 'ANTIQUE', '06', '0606'),
(35, '061900000', 'CAPIZ', '06', '0619'),
(36, '063000000', 'ILOILO', '06', '0630'),
(37, '064500000', 'NEGROS OCCIDENTAL', '06', '0645'),
(38, '067900000', 'GUIMARAS', '06', '0679'),
(39, '071200000', 'BOHOL', '07', '0712'),
(40, '072200000', 'CEBU', '07', '0722'),
(41, '074600000', 'NEGROS ORIENTAL', '07', '0746'),
(42, '076100000', 'SIQUIJOR', '07', '0761'),
(43, '082600000', 'EASTERN SAMAR', '08', '0826'),
(44, '083700000', 'LEYTE', '08', '0837'),
(45, '084800000', 'NORTHERN SAMAR', '08', '0848'),
(46, '086000000', 'SAMAR (WESTERN SAMAR)', '08', '0860'),
(47, '086400000', 'SOUTHERN LEYTE', '08', '0864'),
(48, '087800000', 'BILIRAN', '08', '0878'),
(49, '097200000', 'ZAMBOANGA DEL NORTE', '09', '0972'),
(50, '097300000', 'ZAMBOANGA DEL SUR', '09', '0973'),
(51, '098300000', 'ZAMBOANGA SIBUGAY', '09', '0983'),
(52, '099700000', 'CITY OF ISABELA', '09', '0997'),
(53, '101300000', 'BUKIDNON', '10', '1013'),
(54, '101800000', 'CAMIGUIN', '10', '1018'),
(55, '103500000', 'LANAO DEL NORTE', '10', '1035'),
(56, '104200000', 'MISAMIS OCCIDENTAL', '10', '1042'),
(57, '104300000', 'MISAMIS ORIENTAL', '10', '1043'),
(58, '112300000', 'DAVAO DEL NORTE', '11', '1123'),
(59, '112400000', 'DAVAO DEL SUR', '11', '1124'),
(60, '112500000', 'DAVAO ORIENTAL', '11', '1125'),
(61, '118200000', 'COMPOSTELA VALLEY', '11', '1182'),
(62, '118600000', 'DAVAO OCCIDENTAL', '11', '1186'),
(63, '124700000', 'COTABATO (NORTH COTABATO)', '12', '1247'),
(64, '126300000', 'SOUTH COTABATO', '12', '1263'),
(65, '126500000', 'SULTAN KUDARAT', '12', '1265'),
(66, '128000000', 'SARANGANI', '12', '1280'),
(67, '129800000', 'COTABATO CITY', '12', '1298'),
(68, '133900000', 'NCR, CITY OF MANILA, FIRST DISTRICT', '13', '1339'),
(70, '137400000', 'NCR, SECOND DISTRICT', '13', '1374'),
(71, '137500000', 'NCR, THIRD DISTRICT', '13', '1375'),
(72, '137600000', 'NCR, FOURTH DISTRICT', '13', '1376'),
(73, '140100000', 'ABRA', '14', '1401'),
(74, '141100000', 'BENGUET', '14', '1411'),
(75, '142700000', 'IFUGAO', '14', '1427'),
(76, '143200000', 'KALINGA', '14', '1432'),
(77, '144400000', 'MOUNTAIN PROVINCE', '14', '1444'),
(78, '148100000', 'APAYAO', '14', '1481'),
(79, '150700000', 'BASILAN', '15', '1507'),
(80, '153600000', 'LANAO DEL SUR', '15', '1536'),
(81, '153800000', 'MAGUINDANAO', '15', '1538'),
(82, '156600000', 'SULU', '15', '1566'),
(83, '157000000', 'TAWI-TAWI', '15', '1570'),
(84, '160200000', 'AGUSAN DEL NORTE', '16', '1602'),
(85, '160300000', 'AGUSAN DEL SUR', '16', '1603'),
(86, '166700000', 'SURIGAO DEL NORTE', '16', '1667'),
(87, '166800000', 'SURIGAO DEL SUR', '16', '1668'),
(88, '168500000', 'DINAGAT ISLANDS', '16', '1685');

-- --------------------------------------------------------

--
-- Table structure for table `public_users`
--

DROP TABLE IF EXISTS `public_users`;
CREATE TABLE IF NOT EXISTS `public_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_users`
--

INSERT INTO `public_users` (`id`, `username`, `firstname`, `lastname`, `email`, `phone`, `password`, `gender`, `country`, `company`, `affiliation`, `office_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '@markcolibao', 'Mark Joseph', 'Colibao', 'colibaomarkjoseph@gmail.com', '09955613751', '$2y$10$ReRrphI113NqMRNImS1MgOjiX6gl3hGc9Z6DfkfsZR1c5Y0zCK33y', 'Male', 'PH', 'DOST', NULL, NULL, 'cxJILeyqmlHq3Pf8P8WVWPiKFrfkeMlFNLcwyCTWz1Kg4YiX7nmoxt8b7hkH', '2020-12-02 06:38:12', '2021-03-02 07:46:50'),
(2, 'juan', 'Juan', 'Dela Cruz', 'enns.2019@gmail.com', '09245874695', '$2y$10$OZ2BC269G8LwxlNuRBHxeOnjB2C84F8nOWsWXwVMi0K0t7WkpCeQ2', 'Male', 'PH', 'DOST', 'government', 'DOST TAGUIG CITY', NULL, '2021-01-28 00:47:20', '2021-01-28 00:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `puf_reference`
--

DROP TABLE IF EXISTS `puf_reference`;
CREATE TABLE IF NOT EXISTS `puf_reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey` varchar(191) NOT NULL,
  `form_no` varchar(191) NOT NULL,
  `year` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `puf_reference`
--

INSERT INTO `puf_reference` (`id`, `survey`, `form_no`, `year`) VALUES
(1, 'Anthropometric Survey', 'form21', '2008'),
(2, 'Biochemical Survey', 'form82', '2008'),
(3, 'Clinical Survey', 'form71', '2008'),
(4, 'Dietary Survey (Household)', 'form5', '2008'),
(5, 'Dietary Survey (Individual)', 'form61', '2008'),
(6, 'Dietary Infant and Young Child Feeding Survey', 'form43', '2008'),
(7, 'Food Security Survey', 'form15', '2008'),
(8, 'Socio Economic Survey (Household)', 'form12', '2008'),
(9, 'Socio Economic Survey (Individual)', 'form11', '2008'),
(10, 'Anthropometric Survey', 'form21', '2011'),
(11, 'Food Security Survey', 'form16', '2011'),
(12, 'Dietary Infant and Young Child Feeding Survey', 'form43', '2011'),
(13, 'Maternal Health and Nutrition Survey', 'form31', '2011'),
(14, 'Socio Economic Survey (Household)', 'form12', '2011'),
(15, 'Socio Economic Survey (Individual)', 'form11', '2011'),
(16, 'Anthropometric Survey', 'form21', '2013'),
(17, 'Biochemical Survey', 'form82', '2013'),
(18, 'Clinical Survey', 'form71', '2013'),
(19, 'Dietary Survey (Household)', 'form5', '2013'),
(20, 'Dietary Survey (Individual)', 'form61', '2013'),
(21, 'Dietary Infant and Young Child Feeding Survey', 'form43', '2013'),
(22, 'Maternal Health and Nutrition Survey', 'form31', '2013'),
(23, 'Food Security Survey', 'form15', '2013'),
(24, 'Socio Economic Survey (Household)', 'form12', '2013'),
(25, 'Socio Economic Survey (Individual)', 'form11', '2013'),
(26, 'Anthropometric Survey', 'form21', '2015'),
(27, 'Clinical Survey', 'form71', '2015'),
(28, 'Dietary Survey (Household)', 'form5', '2015'),
(29, 'Dietary Infant and Young Child Feeding Survey', 'form43', '2015'),
(30, 'Maternal Health and Nutrition Survey', 'form31', '2015'),
(31, 'Food Security Survey', 'form15', '2015'),
(32, 'Socio Economic Survey (Household)', 'form12', '2015'),
(33, 'Socio Economic Survey (Individual)', 'form11', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
CREATE TABLE IF NOT EXISTS `surveys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `surveys_year_unique` (`year`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `year`, `survey_type`, `created_at`, `updated_at`) VALUES
(1, '2008', 'National Nutrition Survey', '2020-08-09 08:32:43', '2020-08-09 08:32:43'),
(2, '2011', 'Updating Survey', '2020-08-09 08:33:23', '2020-08-09 08:33:23'),
(3, '2013', 'National Nutrition Survey', '2020-08-09 08:33:39', '2020-08-09 08:33:39'),
(4, '2015', 'Updating Survey', '2020-08-09 08:33:47', '2020-08-09 08:33:47'),
(6, '2019', 'Expanded National Nutrition Survey', '2020-08-09 08:34:17', '2020-08-09 08:34:17'),
(9, '2020', 'National Nutrition Survey', '2021-03-08 06:10:19', '2021-03-08 06:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `upload_brochures`
--

DROP TABLE IF EXISTS `upload_brochures`;
CREATE TABLE IF NOT EXISTS `upload_brochures` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bt_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brochure_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brochure_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_brochures`
--

INSERT INTO `upload_brochures` (`id`, `bt_id`, `brochure_group`, `page_no`, `brochure_filename`, `province`, `created_at`, `updated_at`) VALUES
(15, '3', 'Women of Reproductive Age', '1', 'Wra_1.jpg', 'ZAMBALES', '2021-03-12 02:02:42', '2021-03-12 02:02:42'),
(14, '3', 'School Children', '2', 'SC_2.jpg', 'ZAMBALES', '2021-03-12 02:02:42', '2021-03-12 02:02:42'),
(12, '3', 'Preschool', '1', 'ps_1.jpg', 'ZAMBALES', '2021-03-12 02:02:42', '2021-03-12 02:02:42'),
(13, '3', 'School Children', '1', 'sc_1.jpg', 'ZAMBALES', '2021-03-12 02:02:42', '2021-03-12 02:02:42'),
(18, '3', 'Elderly', '1', 'eld_1.jpg', 'ISABELA', '2021-03-12 02:16:05', '2021-03-12 02:16:05'),
(19, '3', 'Households', '1', 'hh_1.jpg', 'ISABELA', '2021-03-12 02:16:05', '2021-03-12 02:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Mark', 'mark@gmail.com', NULL, '$2y$10$mxHsLn7sJXGUYOLJfNkc9.5x8Wx4sF3B1PZNoouBXbbpfn5encIwS', 'user', '5n3JvIttNdLKltuopnjJCm2Ebb6C5fpdQF9eIrD9SGkIdteuOhlIIQJ4jVUw', '2021-03-09 02:33:29', '2021-03-09 02:33:29'),
(9, 'Mark Joseph', 'colibaomarkjoseph@gmail.com', '@mark', '$2y$10$i5PCwqGpMAGsUL3GChfNKO.FgLkLDFph42yzNOVhlxMcmM/2reIJ2', 'user', 'pHlwbx7HrZy9QRSB6odPriOzKrEubcG7q5NovA0SgYi4QajS6GIfvgX7vVLC', '2021-03-05 06:23:36', '2021-03-05 06:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_requested`
--

DROP TABLE IF EXISTS `user_requested`;
CREATE TABLE IF NOT EXISTS `user_requested` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_requested` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `notif` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_requested`
--

INSERT INTO `user_requested` (`id`, `name`, `email`, `gender`, `country`, `company`, `data_requested`, `date`, `zip_file`, `status`, `notif`, `created_at`, `updated_at`) VALUES
(1, 'Mark Joseph Colibao', 'colibaomarkjoseph@gmail.com', 'Male', 'PH', 'DOST', 'Biochemical-Component', '2021-01-25-083339', 'Mark-Joseph-Colibao-2021-01-25-083339-Biochemical-Component.zip', 0, 0, '2021-01-25 00:33:39', '2021-01-25 00:38:59'),
(2, 'Juan Dela Cruz', 'enns.2019@gmail.com', 'Male', 'PH', 'DOST', 'Biochemical-Component', '2021-01-28-084821', 'Juan-Dela-Cruz-2021-01-28-084821-Biochemical-Component.zip', 0, 0, '2021-01-28 00:48:22', '2021-02-16 00:43:42'),
(3, 'Juan Dela Cruz', 'enns.2019@gmail.com', 'Male', 'PH', 'DOST', 'Biochemical-Component', '2021-01-28-085623', 'Juan-Dela-Cruz-2021-01-28-085623-Biochemical-Component.zip', 0, 0, '2021-01-28 00:56:23', '2021-02-16 00:43:47'),
(4, 'Mark Joseph Colibao', 'colibaomarkjoseph@gmail.com', 'Male', 'PH', 'DOST', 'Biochemical-Component', '2021-03-02-154714', 'Mark-Joseph-Colibao-2021-03-02-154714-Biochemical-Component.zip', 0, 0, '2021-03-02 07:47:14', '2021-03-02 07:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `variable_label_2008`
--

DROP TABLE IF EXISTS `variable_label_2008`;
CREATE TABLE IF NOT EXISTS `variable_label_2008` (
  `var_id` int(11) NOT NULL AUTO_INCREMENT,
  `formno` varchar(250) NOT NULL DEFAULT '',
  `variable_name` varchar(250) NOT NULL DEFAULT '',
  `variable_label` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`var_id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variable_label_2008`
--

INSERT INTO `variable_label_2008` (`var_id`, `formno`, `variable_name`, `variable_label`) VALUES
(2, 'form21_2008', 'regcode', 'Name of Regions'),
(3, 'form21_2008', 'provcode', 'Name of Provinces'),
(4, 'form21_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(5, 'form21_2008', 'member_code', 'Member Code (Merging variable)'),
(6, 'form21_2008', 'age', 'Age of Respondent (in years)'),
(7, 'form21_2008', 'sex', 'Sex'),
(8, 'form21_2008', 'csc', 'Civil Status Code'),
(9, 'form21_2008', 'psc', 'Physiological Status Code'),
(10, 'form21_2008', 'ethnicity', 'Ethnicity Code'),
(11, 'form21_2008', 'weight', 'Average Weight (kg)'),
(12, 'form21_2008', 'height', 'Average Height (cm)'),
(13, 'form21_2008', 'waist', 'Average Waist Circumference (cm)'),
(14, 'form21_2008', 'hip', 'Average Hip Circumference (cm)'),
(15, 'form21_2008', 'anthrop_group', 'Anthropometric Group'),
(16, 'form21_2008', 'psurec', 'Primary Sampling Unit'),
(17, 'form21_2008', 'strrec', 'Strata'),
(18, 'form21_2008', 'wgts_weightheight', 'Sampling Weights (for Weight and Height)'),
(19, 'form21_2008', 'wgts_hipwaist', 'Sampling Weights (for Waist and Hip)'),
(20, 'form82_2008', 'regcode', 'Name of Regions'),
(21, 'form82_2008', 'provcode', 'Name of Provinces'),
(22, 'form82_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(23, 'form82_2008', 'member_code', 'Member Code (Merging variable)'),
(24, 'form82_2008', 'age', 'Age of Respondent (in years)'),
(25, 'form82_2008', 'sex', 'Sex'),
(26, 'form82_2008', 'psc', 'Physiological Status Code'),
(27, 'form82_2008', 'uie', 'Level of UIE (micrograms/L)'),
(28, 'form82_2008', 'vita', 'Level of Vitamin A (micrograms/dL)'),
(29, 'form82_2008', 'hemoglobin', 'Level of Hemoglobin (grams/dL)'),
(30, 'form82_2008', 'psurec', 'Primary Sampling Unit'),
(31, 'form82_2008', 'strrec', 'Strata'),
(32, 'form82_2008', 'wgts_uie', 'Sampling Weights (for UIE)'),
(33, 'form82_2008', 'wgts_vita', 'Sampling Weights (for Vitamin A)'),
(34, 'form82_2008', 'wgts_hgb', 'Sampling Weights (for Hemoglobin)'),
(35, 'form71_2008', 'regcode', 'Name of Regions'),
(36, 'form71_2008', 'provcode', 'Name of Provinces'),
(37, 'form71_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(38, 'form71_2008', 'member_code', 'Member Code (Merging variable)'),
(39, 'form71_2008', 'age', 'Age of Respondent (in years)'),
(40, 'form71_2008', 'sex', 'Sex'),
(41, 'form71_2008', 'psc', 'Physiological Status Code'),
(42, 'form71_2008', 'csc', 'Civil Status Code'),
(43, 'form71_2008', 'Ave_SBP', 'Average Measurement of Systolic BP (mm Hg)'),
(44, 'form71_2008', 'Ave_DBP', 'Average Measurement of Diastolic BP (mm Hg)'),
(45, 'form71_2008', 'currentsmoking', 'Presently Smoke Cigarettes Cigars Pipes or Any Other Tobacco Products'),
(46, 'form71_2008', 'ever_smk', 'Ever Smoke Cigarettes Cigars Pipes or Any Other Tobacco Products in the Past'),
(47, 'form71_2008', 'smoke_status', 'Smoking Status (Generated)'),
(48, 'form71_2008', 'con_alcohol', 'Drink 1 or More Any Alcoholic Beverages In The Past Year'),
(49, 'form71_2008', 'alcohol', 'Ever Drink Any Type Of Alcoholic Beverages'),
(50, 'form71_2008', 'alc_amt_wk', 'Total Amount of Alcohol Amount in the past week (Generated)'),
(51, 'form71_2008', 'alcohol_status', 'Alcohol Drinking Status (Generated)'),
(52, 'form71_2008', 'pa_travel_rev', 'Travel-related Physical Activity'),
(53, 'form71_2008', 'pa_occup', 'Work-related Physical Activity'),
(54, 'form71_2008', 'pa_nonoccup', 'Nonwork-related Physical Activity'),
(55, 'form71_2008', 'high_exe', 'Leisure-related Physical Activity'),
(56, 'form71_2008', 'fbs', 'Actual Values for Plasma-Fasting Blood Sugar'),
(57, 'form71_2008', 'chol', 'Actual Values for Total Cholesterol'),
(58, 'form71_2008', 'tri', 'Actual Values for Triglyceride'),
(59, 'form71_2008', 'hdl', 'Actual Values for HDL-Cholesterol'),
(60, 'form71_2008', 'ldl', 'Actual Values for LDL-Cholesterol'),
(61, 'form71_2008', 'psurec', 'Primary Sampling Unit'),
(62, 'form71_2008', 'strrec', 'Strata'),
(63, 'form71_2008', 'wgts_bp', 'Sampling Weights (for Blood Pressure)'),
(64, 'form71_2008', 'wgts_ques', 'Sampling Weights (for Smoking and Alcohol)'),
(65, 'form71_2008', 'wgts_lipids', 'Sampling Weights (for Lipids)'),
(66, 'form71_2008', 'wgts_fbs', 'Sampling Weights (for Fasting Blood Sugar)'),
(67, 'form71_2008', 'wgts_pa', 'Sampling Weights (for Physical Activity)'),
(68, 'form5_2008', 'regcode', 'Name of Regions'),
(69, 'form5_2008', 'provcode', 'Name of Provinces'),
(70, 'form5_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(71, 'form5_2008', 'fg1', 'Cereals and Cereal Products (in grams)'),
(72, 'form5_2008', 'fg2', 'Rice and Products (in grams)'),
(73, 'form5_2008', 'fg3', 'Corn and Products (in grams)'),
(74, 'form5_2008', 'fg4', 'Other Cereal Products (in grams)'),
(75, 'form5_2008', 'fg5', 'Starchy Roots and Tubers (in grams)'),
(76, 'form5_2008', 'fg6', 'Sugar and Syrups (in grams)'),
(77, 'form5_2008', 'fg7', 'Dried Beans Nuts and Seeds (in grams)'),
(78, 'form5_2008', 'fg8', 'Vegetables (in grams)'),
(79, 'form5_2008', 'fg9', 'Green Leafy and Yellow (in grams)'),
(80, 'form5_2008', 'fg10', 'Other Vegetables (in grams)'),
(81, 'form5_2008', 'fg11', 'Fruits (in grams)'),
(82, 'form5_2008', 'fg12', 'Vitamin C-Rich Fruits (in grams)'),
(83, 'form5_2008', 'fg13', 'Other Fruits (in grams)'),
(84, 'form5_2008', 'fg14', 'Fish Meat and Poultry (in grams)'),
(85, 'form5_2008', 'fg15', 'Fish and Fish Products (in grams)'),
(86, 'form5_2008', 'fg16', 'Meat and Meat Products (in grams)'),
(87, 'form5_2008', 'fg17', 'Poultry (in grams)'),
(88, 'form5_2008', 'fg18', 'Eggs (in grams)'),
(89, 'form5_2008', 'fg19', 'Milk and Milk Products (in grams)'),
(90, 'form5_2008', 'fg20', 'Whole Milk (in grams)'),
(91, 'form5_2008', 'fg21', 'Milk Products (in grams)'),
(92, 'form5_2008', 'fg23', 'Fats and Oils (in grams)'),
(93, 'form5_2008', 'fg24', 'Miscellaneous (in grams)'),
(94, 'form5_2008', 'fg25', 'Beverages (in grams)'),
(95, 'form5_2008', 'fg26', 'Condiments and Spices (in grams)'),
(96, 'form5_2008', 'fg27', 'Other Miscellaneous (in grams)'),
(97, 'form5_2008', 'Total_Food', 'Total Food Intake (in grams)'),
(98, 'form5_2008', 'Total_Calc', 'Total Calcium (g)'),
(99, 'form5_2008', 'Total_CHO', 'Total Carbohydrates (g)'),
(100, 'form5_2008', 'Total_Ener', 'Total Energy (Kcal)'),
(101, 'form5_2008', 'Total_Fat', 'Total Fats (g)'),
(102, 'form5_2008', 'Total_Iron', 'Total Iron (mg)'),
(103, 'form5_2008', 'Total_Prot', 'Total Protein (g)'),
(104, 'form5_2008', 'Total_Nia', 'Total Niacin (mg)'),
(105, 'form5_2008', 'Total_Ribo', 'Total Riboflavin (mg)'),
(106, 'form5_2008', 'Total_Thia', 'Total Thiamin (mg)'),
(107, 'form5_2008', 'Total_VitA', 'Total Vitamin A (mcg)'),
(108, 'form5_2008', 'Total_VitC', 'Total Vitamin C (mg)'),
(109, 'form5_2008', 'cu', 'Consumption Unit'),
(110, 'form5_2008', 'psurec', 'Primary Sampling Unit'),
(111, 'form5_2008', 'strrec', 'Strata'),
(112, 'form5_2008', 'wgts', 'Sampling Weights'),
(113, 'form61_2008', 'regcode', 'Name of Regions'),
(114, 'form61_2008', 'provcode', 'Name of Provinces'),
(115, 'form61_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(116, 'form61_2008', 'member_code', 'Member Code (Merging variable)'),
(117, 'form61_2008', 'age', 'Age of Respondent (in years)'),
(118, 'form61_2008', 'sex', 'Sex'),
(119, 'form61_2008', 'psc', 'Physiological Status Code'),
(120, 'form61_2008', 'fg1', 'Cereals and Cereal Products (in grams)'),
(121, 'form61_2008', 'fg2', 'Rice and Products (in grams)'),
(122, 'form61_2008', 'fg3', 'Corn and Products (in grams)'),
(123, 'form61_2008', 'fg4', 'Other Cereal Products (in grams)'),
(124, 'form61_2008', 'fg5', 'Starchy Roots and Tubers (in grams)'),
(125, 'form61_2008', 'fg6', 'Sugar and Syrups (in grams)'),
(126, 'form61_2008', 'fg7', 'Dried Beans Nuts and Seeds (in grams)'),
(127, 'form61_2008', 'fg8', 'Vegetables (in grams)'),
(128, 'form61_2008', 'fg9', 'Green Leafy and Yellow (in grams)'),
(129, 'form61_2008', 'fg10', 'Other Vegetables (in grams)'),
(130, 'form61_2008', 'fg11', 'Fruits (in grams)'),
(131, 'form61_2008', 'fg12', 'Vitamin C-Rich Fruits (in grams)'),
(132, 'form61_2008', 'fg13', 'Other Fruits (in grams)'),
(133, 'form61_2008', 'fg14', 'Fish Meat and Poultry (in grams)'),
(134, 'form61_2008', 'fg15', 'Fish and Fish Products (in grams)'),
(135, 'form61_2008', 'fg16', 'Meat and Meat Products (in grams)'),
(136, 'form61_2008', 'fg17', 'Poultry (in grams)'),
(137, 'form61_2008', 'fg18', 'Eggs (in grams)'),
(138, 'form61_2008', 'fg19', 'Milk and Milk Products (in grams)'),
(139, 'form61_2008', 'fg20', 'Whole Milk (in grams)'),
(140, 'form61_2008', 'fg21', 'Milk Products (in grams)'),
(141, 'form61_2008', 'fg23', 'Fats and Oils (in grams)'),
(142, 'form61_2008', 'fg24', 'Miscellaneous (in grams)'),
(143, 'form61_2008', 'fg25', 'Beverages (in grams)'),
(144, 'form61_2008', 'fg26', 'Condiments and Spices (in grams)'),
(145, 'form61_2008', 'fg27', 'Other Miscellaneous (in grams)'),
(146, 'form61_2008', 'Total_Food', 'Total Food Intake (in grams)'),
(147, 'form61_2008', 'Total_Ener', 'Total Energy (Kcal)'),
(148, 'form61_2008', 'Total_Prot', 'Total Protein (g)'),
(149, 'form61_2008', 'Total_Calc', 'Total Calcium (g)'),
(150, 'form61_2008', 'Total_Iron', 'Total Iron (mg)'),
(151, 'form61_2008', 'Total_VitA', 'Total Vitamin A (mcg)'),
(152, 'form61_2008', 'Total_VitC', 'Total Vitamin C (mg)'),
(153, 'form61_2008', 'Total_Thia', 'Total Thiamin (mg)'),
(154, 'form61_2008', 'Total_Ribo', 'Total Riboflavin (mg)'),
(155, 'form61_2008', 'Total_Nia', 'Total Niacin (mg)'),
(156, 'form61_2008', 'Total_CHO', 'Total Carbohydrates (g)'),
(157, 'form61_2008', 'Total_Fat', 'Total Fats (g)'),
(158, 'form61_2008', 'psurec', 'Primary Sampling Unit'),
(159, 'form61_2008', 'strrec', 'Strata'),
(160, 'form61_2008', 'wgts', 'Sampling Weights'),
(161, 'form43_2008', 'regcode', 'Name of Regions'),
(162, 'form43_2008', 'provcode', 'Name of Provinces'),
(163, 'form43_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(164, 'form43_2008', 'member_code', 'Member Code (Merging variable)'),
(165, 'form43_2008', 'agemos', 'Age of the Child (in Months)'),
(166, 'form43_2008', 'current_fd_recall2', 'Current Feeding Practices'),
(167, 'form43_2008', 'ever_bf2', 'Ever Breastfeed'),
(168, 'form43_2008', 'ynotbf', 'Reason for not Breastfeeding'),
(169, 'form43_2008', 'exclsvbf', 'Child exclusively breastfeed'),
(170, 'form43_2008', 'duration_bf', 'Duration of Breastfeeding (in Months)'),
(171, 'form43_2008', 'colostrum', 'Given colostrum'),
(172, 'form43_2008', 'startbf', 'Time child was put to breast after delivery'),
(173, 'form43_2008', 'water', 'Age of child plain water was given regularly (in Months)'),
(174, 'form43_2008', 'h2osug', 'Age of child water with sugar was given regularly (in Months)'),
(175, 'form43_2008', 'am', 'Age of child am was given regularly (in Months)'),
(176, 'form43_2008', 'fresjuce', 'Age of child fresh juice was given regularly (in Months)'),
(177, 'form43_2008', 'procjuce', 'Age of child powdered/ready to drink juice was given regularly (in Months)'),
(178, 'form43_2008', 'fishsoup', 'Age of child fish soup/broth was given regularly (in Months)'),
(179, 'form43_2008', 'meatsoup', 'Age of child meat soup/broth was given regularly (in Months)'),
(180, 'form43_2008', 'vegisoup', 'Age of child vegetable soup/broth was given regularly (in Months)'),
(181, 'form43_2008', 'othliq', 'Age of child other liquids was given regularly (in Months)'),
(182, 'form43_2008', 'solid', 'Age of child solid/semi-solid was given regularly (in Months)'),
(183, 'form43_2008', 'getinfo', 'Who usually feeds the child'),
(184, 'form43_2008', 'ygetinfo', 'Why the mother is not feeding the child'),
(185, 'form43_2008', 'whodcde', 'Who decides what to feed the child'),
(186, 'form43_2008', 'introfud', 'First introductory food given to the child'),
(187, 'form43_2008', 'ythisfud', 'Why first food was given to the child'),
(188, 'form43_2008', 'psurec', 'Primary Sampling Unit'),
(189, 'form43_2008', 'strrec', 'Strata'),
(190, 'form43_2008', 'wgts', 'Sampling Weights'),
(191, 'form15_2008', 'regcode', 'Name of Regions'),
(192, 'form15_2008', 'provcode', 'Name of Provinces'),
(193, 'form15_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(194, 'form15_2008', 'FDSEC01_RC', 'Skip eating or miss meals/food (Respondent)'),
(195, 'form15_2008', 'FDSEC02_RC', 'Ever not eat for a whole day (Respondent)'),
(196, 'form15_2008', 'FDSEC03_RC', 'Ever hungry but did not eat (Respondent)'),
(197, 'form15_2008', 'FDSEC04_RC', 'Skip eating or miss meals/food (Child/Children)'),
(198, 'form15_2008', 'FDSEC05_RC', 'Ever not eat for a whole day (Child/Children)'),
(199, 'form15_2008', 'FDSEC06_RC', 'Ever hungry but did not eat (Child/Children)'),
(200, 'form15_2008', 'FDSEC07_RC', 'Worried food would run out'),
(201, 'form15_2008', 'FDSEC08_RC', 'Food bought just did not last'),
(202, 'form15_2008', 'FDSEC09_RC', 'Children were not eating enough'),
(203, 'form15_2008', 'FDSEC10_RC', 'Could not feed children nutritionally adequate'),
(204, 'form15_2008', 'FDSEC11_RC', 'Household ever hungry or no food to eat'),
(205, 'form15_2008', 'ST1MAIS_RC ', 'Rely on less preferred and less expensive foods: corn'),
(206, 'form15_2008', 'ST1ROOTS_RC', 'Rely on less preferred and less expensive foods: root crops'),
(207, 'form15_2008', 'ST1OTHER_RC', 'Rely on less preferred and less expensive foods: others'),
(208, 'form15_2008', 'STRATG02_RC', 'Borrow food from neighbor/relatives/friends'),
(209, 'form15_2008', 'STRATG03_RC', 'Purchase food on credit'),
(210, 'form15_2008', 'STRATG04_RC', 'Eat wild or harvest immature foods'),
(211, 'form15_2008', 'STRATG05_RC', 'Reduce portion sizes of the meal'),
(212, 'form15_2008', 'STRATG06_RC', 'Reduce number of meals consumed in a day'),
(213, 'form15_2008', 'STRATG07_RC', 'Restrict consumption for adults so children have enough'),
(214, 'form15_2008', 'STRATG08_RC', 'Skip entire day without eating'),
(215, 'form15_2008', 'STRATG09_RC', 'Send family members to eat elsewhere (community kitchen school etc)'),
(216, 'form15_2008', 'STRATG10_RC', 'Others (food coping strategies)'),
(217, 'form15_2008', 'STRATG11_RC', 'Loan from relatives/friend'),
(218, 'form15_2008', 'STRATG12_RC', 'Loan from non relatives/friend'),
(219, 'form15_2008', 'STRATG13_RC', 'Sold assets'),
(220, 'form15_2008', 'STRATG14_RC', 'Some members of the family migrated to look for a job'),
(221, 'form15_2008', 'STRATG15_RC', 'Child asked to be absent in school'),
(222, 'form15_2008', 'STRATG16_RC', 'Others (non-food coping strategies)'),
(223, 'form15_2008', 'psurec', 'Primary Sampling Unit'),
(224, 'form15_2008', 'strrec', 'Strata'),
(225, 'form15_2008', 'wgts', 'Sampling Weights'),
(226, 'form11_2008', 'regcode', 'Name of Regions'),
(227, 'form11_2008', 'provcode', 'Name of Provinces'),
(228, 'form11_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(229, 'form11_2008', 'member_code', 'Member Code (Merging variable)'),
(230, 'form11_2008', 'age', 'Age of Respondent (in years)'),
(231, 'form11_2008', 'sex', 'Sex'),
(232, 'form11_2008', 'csc', 'Civil Status Code'),
(233, 'form11_2008', 'psc', 'Physiological Status Code'),
(234, 'form11_2008', 'rhc', 'Relationship to Household Head Code'),
(235, 'form11_2008', 'educ', 'Highest Educational Attainment'),
(236, 'form11_2008', 'occup', 'Current occupation for past week (PSOC)'),
(237, 'form11_2008', 'wrkpl', 'Place of Work'),
(238, 'form12_2008', 'regcode', 'Name of Regions'),
(239, 'form12_2008', 'provcode', 'Name of Provinces'),
(240, 'form12_2008', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(241, 'form12_2008', 'topogrpy', 'Topography'),
(242, 'form12_2008', 'dweltype', 'Type of Dwelling Unit'),
(243, 'form12_2008', 'tenurhws', 'Tenure Status of the Dwelling Unit'),
(244, 'form12_2008', 'tenurlot', 'Tenure Status of the Lot'),
(245, 'form12_2008', 'roof', 'Main Roofing Material'),
(246, 'form12_2008', 'wall', 'Main Material Used for the Wall'),
(247, 'form12_2008', 'floor', 'Main Flooring Material'),
(248, 'form12_2008', 'bedroom', 'Number of Bedrooms'),
(249, 'form12_2008', 'outroom', 'Other Room Used for Sleeping'),
(250, 'form12_2008', 'electrct', 'Electricity in the Household'),
(251, 'form12_2008', 'wdrinkng', 'Main Source of Drinking Water'),
(252, 'form12_2008', 'storewtr', 'Storing Drinking Water'),
(253, 'form12_2008', 'toilet', 'Type of Toilet Facility'),
(254, 'form12_2008', 'collect', 'Dispose Garbage by Collector System'),
(255, 'form12_2008', 'burn', 'Dispose Garbage by Burning'),
(256, 'form12_2008', 'composting', 'Dispose Garbage by Compost pit'),
(257, 'form12_2008', 'dump', 'Dispose Garbage by Dumping/Throwing'),
(258, 'form12_2008', 'segregate', 'Garbage Segregation'),
(259, 'form12_2008', 'psurec', 'Primary Sampling Unit'),
(260, 'form12_2008', 'strrec', 'Strata'),
(261, 'form12_2008', 'wgts', 'Sampling Weights');

-- --------------------------------------------------------

--
-- Table structure for table `variable_label_2011`
--

DROP TABLE IF EXISTS `variable_label_2011`;
CREATE TABLE IF NOT EXISTS `variable_label_2011` (
  `var_id` int(11) NOT NULL DEFAULT '0',
  `formno` varchar(255) NOT NULL,
  `variable_name` varchar(255) NOT NULL,
  `variable_label` varchar(255) NOT NULL,
  PRIMARY KEY (`formno`,`variable_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variable_label_2011`
--

INSERT INTO `variable_label_2011` (`var_id`, `formno`, `variable_name`, `variable_label`) VALUES
(5, 'form11_2011', 'age', 'Age'),
(7, 'form11_2011', 'csc', 'Civil Status Code'),
(10, 'form11_2011', 'educ', 'Highest Educational Attainment'),
(17, 'form11_2011', 'finalwgt', 'Weighting Factor'),
(3, 'form11_2011', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(4, 'form11_2011', 'member_code', 'Member Code (Merging variable)'),
(11, 'form11_2011', 'occup', 'Current occupation for past week (PSOC)'),
(2, 'form11_2011', 'provcode', 'Name of Provinces'),
(8, 'form11_2011', 'psc', 'Physiological Status Code'),
(15, 'form11_2011', 'psurec', 'Primary Sampling Unit'),
(1, 'form11_2011', 'regcode', 'Name of Regions'),
(9, 'form11_2011', 'rhc', 'Relation to Household Head Code'),
(6, 'form11_2011', 'sex', 'Sex'),
(16, 'form11_2011', 'strrec', 'Strata'),
(27, 'form12_2011', 'bedroom', 'Number of Bedrooms'),
(36, 'form12_2011', 'burn', 'Dispose Garbage by Burning   '),
(35, 'form12_2011', 'collect', 'Dispose Garbage by Collector System  '),
(37, 'form12_2011', 'composting', 'Dispose Garbage by Compost pit  '),
(31, 'form12_2011', 'drinksafe', 'Make Water Safer to Drink  '),
(38, 'form12_2011', 'dump', 'Dispose Garbage by Dumping/Throwing   '),
(21, 'form12_2011', 'dweltype', 'Type of Dwelling Unit   '),
(29, 'form12_2011', 'electrct', 'Electricity in the Household   '),
(42, 'form12_2011', 'finalwgt', 'Design(Sampling Weights)'),
(26, 'form12_2011', 'floor', 'Main Flooring Material    '),
(28, 'form12_2011', 'fuelused', 'Type of Fuel Used for Cooking '),
(20, 'form12_2011', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(32, 'form12_2011', 'makesafe', 'How You Make Water Safer to Drink'),
(19, 'form12_2011', 'provcode', 'Provinces'),
(40, 'form12_2011', 'psurec', 'Design(PSU_Code)      '),
(18, 'form12_2011', 'regcode', 'Regions'),
(24, 'form12_2011', 'roof', 'Main Roofing Material'),
(39, 'form12_2011', 'segregate', 'Garbage Segregation     '),
(34, 'form12_2011', 'shareit', 'Toilet Facility Shared    '),
(41, 'form12_2011', 'strrec', 'Design(Stratum_Code)      '),
(22, 'form12_2011', 'tenurhws', 'Tenure Status of the Dwelling Unit '),
(23, 'form12_2011', 'tenurlot', 'Tenure Status of the Lot  '),
(33, 'form12_2011', 'toilet', 'Type of Toilet Facility   '),
(25, 'form12_2011', 'wall', 'Main Material Used for the Wall '),
(30, 'form12_2011', 'wdrinking', 'Main Source of Drinking Water  '),
(62, 'form16_2011', 'FDSEC01_RC', 'Food Security Question #1 “Did you skip eating or miss meals/food because there was no food or money to buy food?”'),
(63, 'form16_2011', 'FDSEC02_RC', 'Food Security Question #2  “Did you ever not eat for a whole day because there was no food or money to buy food?”'),
(64, 'form16_2011', 'FDSEC03_RC', 'Food Security Question #3  “Were you ever hungry but did not eat because there was no food or money to buy food?”'),
(65, 'form16_2011', 'FDSEC04_RC', 'Food Security Question #4  “Did your child/children skip eating or miss meals/food because there was no food or money to buy food?” '),
(66, 'form16_2011', 'FDSEC05_RC', ' Food Security Question #5 “Did your child/children ever not eat for a whole day because there was no food or money to buy food?”'),
(67, 'form16_2011', 'FDSEC06_RC', 'Food Security Question #6 “Was/were your child/children ever hungry but did not eat because there was no food or money to buy food?”'),
(68, 'form16_2011', 'FDSEC07_RC', 'Food Security Question #7  “I worried that our food would run out before we got money to buy more”'),
(69, 'form16_2011', 'FDSEC08_RC', ' Food Security Question #8  “The food we bought just did not last and we did not have enough money to get more”'),
(70, 'form16_2011', 'FDSEC09_RC', 'Food Security Question #9  “The children were not eating enough because we did not have enough food and we could not afford to buy more “'),
(71, 'form16_2011', 'FDSEC10_RC', 'Food Security Question #10 “We could not feed the children nutritionally adequate meals because  we do not have enough food and enough money to buy more “'),
(72, 'form16_2011', 'FDSEC11_RC', 'Food Security Question #11 “Was the household ever hungry or there was no food to eat? “'),
(93, 'form16_2011', 'finalwgts', 'Sampling Weights'),
(61, 'form16_2011', 'hhnum', 'Household Number  (Unique identifier; merging variable)'),
(60, 'form16_2011', 'provcode', 'Name of Provinces'),
(91, 'form16_2011', 'psucode', 'Primary Sampling Unit'),
(59, 'form16_2011', 'regcode', 'Name of Regions'),
(73, 'form16_2011', 'ST1MAIS_RC', 'Rely  on following less preferred and less expensive foods: corn'),
(74, 'form16_2011', 'ST1OTHER_RC', 'Rely on following less preferred and less expensive foods: others'),
(75, 'form16_2011', 'ST1ROOTS_RC', 'Rely  on following less preferred and less expensive foods: root crops'),
(76, 'form16_2011', 'STRATG02_RC', 'Borrow food from neighbor/relatives/friends.'),
(77, 'form16_2011', 'STRATG03_RC', 'Purchase food on credit.'),
(78, 'form16_2011', 'STRATG04_RC', 'Eat wild foods or harvest immature crops.'),
(79, 'form16_2011', 'STRATG05_RC', 'Reduce portion sizes of the meal.'),
(80, 'form16_2011', 'STRATG06_RC', 'Reduce number of meals consumed in a day.'),
(81, 'form16_2011', 'STRATG07_RC', 'Restrict consumption for adults so that children have enough.'),
(82, 'form16_2011', 'STRATG08_RC', 'Skip entire day without eating'),
(83, 'form16_2011', 'STRATG09_RC', 'Send family members to eat elsewhere? (e.g. community kitchen school etc.)'),
(84, 'form16_2011', 'STRATG10_RC', 'Others (food coping strategies)'),
(85, 'form16_2011', 'STRATG11_RC', 'Loan from relatives.'),
(86, 'form16_2011', 'STRATG12_RC', 'Loan from non-relatives/friends.'),
(87, 'form16_2011', 'STRATG13_RC', 'Sold assets.'),
(88, 'form16_2011', 'STRATG14_RC', 'Some members of the family migrated to look for a job.'),
(89, 'form16_2011', 'STRATG15_RC', 'Child asked to be absent in school.'),
(90, 'form16_2011', 'STRATG16_RC', 'Others (non-food coping strategies)'),
(92, 'form16_2011', 'strcode', 'Strata Code'),
(99, 'form21_2011', 'age', 'Age in Years'),
(98, 'form21_2011', 'agemos', 'Age in Months'),
(109, 'form21_2011', 'anthro_group', 'Anthrop Group'),
(103, 'form21_2011', 'ethnicity', 'Ethnicity'),
(105, 'form21_2011', 'height', 'Ave Height (cm)'),
(96, 'form21_2011', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(107, 'form21_2011', 'hip_circumference', 'Ave Hip Circumference (cm)'),
(97, 'form21_2011', 'member_code', 'Member Code (Merging variable)'),
(110, 'form21_2011', 'mos_lactation', 'Months of Lactation'),
(111, 'form21_2011', 'mos_preg', 'Months of Pregnancy'),
(95, 'form21_2011', 'provcode', 'Name of Provinces'),
(102, 'form21_2011', 'psc', 'Physiological Status Code'),
(112, 'form21_2011', 'psurec', 'Primary Sampling Unit'),
(94, 'form21_2011', 'regcode', 'Name of Regions'),
(100, 'form21_2011', 'sex', 'Sex'),
(113, 'form21_2011', 'strrec', 'Strata Code'),
(106, 'form21_2011', 'waist_circumference', 'Ave Waist Circumference (cm)'),
(104, 'form21_2011', 'weight', 'Ave Weight (kg)'),
(115, 'form21_2011', 'wfact_bm', 'Sampling Weights for BMI/weight-for-height status'),
(116, 'form21_2011', 'wfact_bmi_adults', 'Sampling Weights for nutritional status of adults'),
(114, 'form21_2011', 'wfact_ht', 'Sampling Weights for height status'),
(113, 'form21_2011', 'wfact_wt', 'Sampling Weights for weight status'),
(168, 'form31_2011', 'finalwgt', 'Final Weights'),
(120, 'form31_2011', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(121, 'form31_2011', 'member_code', 'Member Code (Merging variable)'),
(154, 'form31_2011', 'month_bf', 'Knowledge of Number of Months of Exclusively Breastfeeding'),
(155, 'form31_2011', 'month_comf', 'Knowledge of Number of Months When to Give Other Food Other Than Breast Milk'),
(122, 'form31_2011', 'pnc_avail', 'Availed Pre-Natal Check-Up'),
(123, 'form31_2011', 'pnc_months', 'Month of Pre-Natal Check-Up'),
(124, 'form31_2011', 'pnc_ontime', 'Pre-Natal Check-Up on Time'),
(151, 'form31_2011', 'postnatal_avail', 'Importance of Post Natal Check Up'),
(136, 'form31_2011', 'preg_compli', 'Had Health Problems Related to Current/Last Pregnancy'),
(127, 'form31_2011', 'prenatal_ser1', 'Weight and Height Measurement'),
(128, 'form31_2011', 'prenatal_ser2', 'BP Treatment'),
(129, 'form31_2011', 'prenatal_ser3', 'Blood Test'),
(130, 'form31_2011', 'prenatal_ser4', 'Urinalysis'),
(131, 'form31_2011', 'prenatal_ser5', 'Ultrasound'),
(132, 'form31_2011', 'prenatal_ser6', 'Vitamins/Micronutrient Supplementation'),
(133, 'form31_2011', 'prenatal_ser7', 'Tetanus Toxoid Vaccine'),
(134, 'form31_2011', 'prenatal_ser8', 'Nutrition Counseling'),
(135, 'form31_2011', 'prenatal_ser9', 'Physical Examination including IE'),
(119, 'form31_2011', 'provcode', 'Name of Provinces'),
(166, 'form31_2011', 'psurec', 'Primary Sampling Unit'),
(118, 'form31_2011', 'regcode', 'Name of Regions'),
(167, 'form31_2011', 'strrec', 'Stratum Code'),
(146, 'form31_2011', 'supp1', 'Ferrous Sulfate'),
(147, 'form31_2011', 'supp2', 'Folic Acid'),
(148, 'form31_2011', 'supp3', 'Iron-Folic Acid'),
(149, 'form31_2011', 'supp4', 'Multivitamins'),
(145, 'form31_2011', 'take_vitmin', 'Take/Currently Taking Vitamins'),
(160, 'form31_2011', 'wash_hand1', 'Wash Hand: Before Food Prepation'),
(161, 'form31_2011', 'wash_hand2', 'Wash Hand: Before Eating'),
(162, 'form31_2011', 'wash_hand3', 'Wash Hand: After Eating'),
(163, 'form31_2011', 'wash_hand4', 'Wash Hand: After Toilet Use'),
(164, 'form31_2011', 'wash_hand5', 'Wash Hand: Before Feeding the  Child'),
(165, 'form31_2011', 'wash_hand6', 'Wash Hand: After Attending to A Child Who Defecated'),
(173, 'form43_2011', 'agemos', 'Age of the Child (in Months)'),
(184, 'form43_2011', 'age_appro_all', 'All age approximately breastfeeding'),
(181, 'form43_2011', 'bottle_status', 'Status of Bottle Feeding among 0-23 months'),
(182, 'form43_2011', 'cont_12to15', 'Continue Breastfeeding among 12 to 15 months'),
(183, 'form43_2011', 'cont_20to23', 'Continue Breastfeeding among 20 to 23 months'),
(174, 'form43_2011', 'current_fd_recall2', 'Current Feeding Practices'),
(186, 'form43_2011', 'dds_6to23', 'Diet Diversity Score among 6-23 months children'),
(178, 'form43_2011', 'duration_bf', 'Duration of Breastfeeding (in Months)'),
(175, 'form43_2011', 'ever_bf2', 'Ever Breastfeeding'),
(179, 'form43_2011', 'exbf_0to5', 'Exclusive breastfeeding among 0-5months'),
(192, 'form43_2011', 'finalwgt', 'Weighting Factor'),
(176, 'form43_2011', 'firstbf2', 'Breastfeeding Initiation'),
(171, 'form43_2011', 'hhnum', 'Household Number (Unique identifier; merging variable)'),
(185, 'form43_2011', 'introcomple_6to8', 'Introduction of Complementary Foods among children 6-8 months old '),
(189, 'form43_2011', 'mad_6to23_new', 'Minimum Acceptable Diet among 6 to 23 mos children'),
(187, 'form43_2011', 'mdd', 'Minimum Dietary Diversity among 6 to 23 mos children'),
(172, 'form43_2011', 'member_code', 'Member Code (Unique identifier; merging variable)'),
(188, 'form43_2011', 'mmf_6to23', 'Minimum Meal Frequency among 6 to 23 mos children'),
(180, 'form43_2011', 'predom_0to5', 'Predominant Breastfeeding among 0-5months'),
(177, 'form43_2011', 'prelacteal2', 'Given Prelacteal Feeds'),
(170, 'form43_2011', 'provcode', 'Name of Provinces'),
(190, 'form43_2011', 'psurec', 'PSU'),
(169, 'form43_2011', 'regcode', 'Name of Regions'),
(191, 'form43_2011', 'strrec', 'Strata');

-- --------------------------------------------------------

--
-- Table structure for table `variable_label_2013`
--

DROP TABLE IF EXISTS `variable_label_2013`;
CREATE TABLE IF NOT EXISTS `variable_label_2013` (
  `var_id` int(11) NOT NULL DEFAULT '0',
  `formno` varchar(255) NOT NULL,
  `variable_name` varchar(255) NOT NULL,
  `variable_label` varchar(255) NOT NULL,
  PRIMARY KEY (`formno`,`variable_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variable_label_2013`
--

INSERT INTO `variable_label_2013` (`var_id`, `formno`, `variable_name`, `variable_label`) VALUES
(5, 'form11_2013', 'age', 'Age'),
(7, 'form11_2013', 'csc', 'Civil Status Code'),
(10, 'form11_2013', 'educ', 'Highest Educational Attainment'),
(17, 'form11_2013', 'finalwgt', 'Weighting Factor'),
(12, 'form11_2013', 'haswork', 'Current work for past week'),
(3, 'form11_2013', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(4, 'form11_2013', 'member_code', 'Member Code (Merging variable)'),
(13, 'form11_2013', 'mos_lactation', 'Months of Lactation'),
(14, 'form11_2013', 'mos_preg', 'Months of Pregnancy'),
(11, 'form11_2013', 'occup', 'Current occupation for past week (PSOC)'),
(2, 'form11_2013', 'provcode', 'Name of Provinces'),
(8, 'form11_2013', 'psc', 'Physiological Status Code'),
(15, 'form11_2013', 'psurec', 'Primary Sampling Unit'),
(1, 'form11_2013', 'regcode', 'Name of Regions'),
(9, 'form11_2013', 'rhc', 'Relation to Household Head Code'),
(6, 'form11_2013', 'sex', 'Sex'),
(16, 'form11_2013', 'strrec', 'Strata'),
(27, 'form12_2013', 'bedroom', 'Number of Bedrooms'),
(36, 'form12_2013', 'burn', 'Dispose Garbage by Burning   '),
(35, 'form12_2013', 'collect', 'Dispose Garbage by Collector System  '),
(37, 'form12_2013', 'composting', 'Dispose Garbage by Compost pit  '),
(31, 'form12_2013', 'drinksafe', 'Make Water Safer to Drink  '),
(38, 'form12_2013', 'dump', 'Dispose Garbage by Dumping/Throwing   '),
(21, 'form12_2013', 'dweltype', 'Type of Dwelling Unit   '),
(29, 'form12_2013', 'electrct', 'Electricity in the Household   '),
(42, 'form12_2013', 'finalwgt', 'Design(Sampling Weights)'),
(26, 'form12_2013', 'floor', 'Main Flooring Material    '),
(28, 'form12_2013', 'fuelused', 'Type of Fuel Used for Cooking '),
(43, 'form12_2013', 'fwealthq', 'Wealth Quintile'),
(20, 'form12_2013', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(32, 'form12_2013', 'makesafe', 'How You Make Water Safer to Drink'),
(19, 'form12_2013', 'provcode', 'Provinces'),
(40, 'form12_2013', 'psurec', 'Design(PSU_Code)      '),
(18, 'form12_2013', 'regcode', 'Regions'),
(24, 'form12_2013', 'roof', 'Main Roofing Material'),
(39, 'form12_2013', 'segregate', 'Garbage Segregation     '),
(34, 'form12_2013', 'shareit', 'Toilet Facility Shared    '),
(41, 'form12_2013', 'strrec', 'Design(Stratum_Code)      '),
(22, 'form12_2013', 'tenurhws', 'Tenure Status of the Dwelling Unit '),
(23, 'form12_2013', 'tenurlot', 'Tenure Status of the Lot  '),
(33, 'form12_2013', 'toilet', 'Type of Toilet Facility   '),
(25, 'form12_2013', 'wall', 'Main Material Used for the Wall '),
(30, 'form12_2013', 'wdrinkng', 'Main Source of Drinking Water  '),
(47, 'form15_2013', 'FDSEC01', 'You worry that your household would not have enough food'),
(48, 'form15_2013', 'FDSEC02', 'Any household member not able to eat the kinds of foods you preferred'),
(49, 'form15_2013', 'FDSEC03', 'Household member have to eat a limited variety of foods due to lack of resources'),
(50, 'form15_2013', 'FDSEC04', 'Any household member had to eat some foods that you really did not want to eat'),
(51, 'form15_2013', 'FDSEC05', ' Any household member had to eat a smaller meal'),
(52, 'form15_2013', 'FDSEC06', 'Any other household member had to eat fewer meals in a day'),
(53, 'form15_2013', 'FDSEC07', 'No food of any kind in your household'),
(54, 'form15_2013', 'FDSEC08', ' Any household member goes to sleep at night hungry'),
(55, 'form15_2013', 'FDSEC09', ' Any household member go a whole day and night without eating anything'),
(46, 'form15_2013', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(45, 'form15_2013', 'provcode', 'Name of Provinces'),
(56, 'form15_2013', 'psurec', 'Primary Sampling Unit'),
(44, 'form15_2013', 'regcode', 'Name of Regions'),
(57, 'form15_2013', 'strrec', 'Strata'),
(58, 'form15_2013', 'Wgt2', 'Sampling Weights'),
(99, 'form21_2013', 'age', 'Age in Years'),
(98, 'form21_2013', 'agemos', 'Age in Months'),
(109, 'form21_2013', 'anthro_group', 'Anthrop Group'),
(103, 'form21_2013', 'ethnicity', 'Ethnicity'),
(117, 'form21_2013', 'finalwgt', 'Final Weight'),
(105, 'form21_2013', 'height', 'Ave Height (cm)'),
(96, 'form21_2013', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(107, 'form21_2013', 'hip_circumference', 'Ave Hip Circumference (cm)'),
(97, 'form21_2013', 'member_code', 'Member Code (Merging variable)'),
(110, 'form21_2013', 'mos_lactation', 'Months of Lactation'),
(111, 'form21_2013', 'mos_preg', 'Months of Pregnancy'),
(95, 'form21_2013', 'provcode', 'Name of Provinces'),
(102, 'form21_2013', 'psc', 'Physiological Status Code'),
(112, 'form21_2013', 'psurec', 'Primary Sampling Unit'),
(94, 'form21_2013', 'regcode', 'Name of Regions'),
(100, 'form21_2013', 'sex', 'Sex'),
(113, 'form21_2013', 'strrec', 'Strata Code'),
(106, 'form21_2013', 'waist_circumference', 'Ave Waist Circumference (cm)'),
(104, 'form21_2013', 'weight', 'Ave Weight (kg)'),
(158, 'form31_2013', 'child_vaccine', 'Knowledge on the need for a child to be vaccinated'),
(156, 'form31_2013', 'current_bfeed', 'Currently Breastfeeding'),
(168, 'form31_2013', 'finalwgt', 'Final Weights'),
(120, 'form31_2013', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(157, 'form31_2013', 'howlong_bfeed', 'Actual Months of Breastfeeding'),
(159, 'form31_2013', 'importance_vaccine', 'Importance of Vaccination'),
(152, 'form31_2013', 'know_postnatal', 'Knowledge on Post-Natal Timing'),
(121, 'form31_2013', 'member_code', 'Member Code (Merging variable)'),
(154, 'form31_2013', 'month_bf', 'Knowledge of Number of Months of Exclusively Breastfeeding'),
(155, 'form31_2013', 'month_comf', 'Knowledge When to Give Other Food Other Than Breast Milk'),
(143, 'form31_2013', 'nightblindness', 'Diagnosed with Nightblindness'),
(122, 'form31_2013', 'pnc_avail', 'Availed Pre-Natal Check-Up'),
(123, 'form31_2013', 'pnc_months', 'Month of Pre-Natal Check-Up'),
(124, 'form31_2013', 'pnc_ontime', 'Pre-Natal Check-Up on Time'),
(151, 'form31_2013', 'postnatal_avail', 'Importance of Post Natal Check Up'),
(153, 'form31_2013', 'practice_postnatal', 'Practice Post-Natal Check-Up'),
(142, 'form31_2013', 'preg_asth', 'Health Problems: Asthma'),
(136, 'form31_2013', 'preg_compli', 'Had Health Problems Related to Current/Last Pregnancy'),
(138, 'form31_2013', 'preg_diab', 'Health Problems: Diabetes'),
(141, 'form31_2013', 'preg_goit', 'Health Problems: Goiter'),
(140, 'form31_2013', 'preg_hdis', 'Health Problems: Heart Disease'),
(137, 'form31_2013', 'preg_hyper', 'Health Problems: Hypertension'),
(139, 'form31_2013', 'preg_tuber', 'Health Problems: Tuberculosis'),
(127, 'form31_2013', 'prenatal_ser1', 'Weight and Height Measurement'),
(128, 'form31_2013', 'prenatal_ser2', 'BP Treatment'),
(129, 'form31_2013', 'prenatal_ser3', 'Blood Test'),
(130, 'form31_2013', 'prenatal_ser4', 'Urinalysis'),
(131, 'form31_2013', 'prenatal_ser5', 'Ultrasound'),
(132, 'form31_2013', 'prenatal_ser6', 'Vitamins/Micronutrient Supplementation'),
(133, 'form31_2013', 'prenatal_ser7', 'Tetanus Toxoid Vaccine'),
(134, 'form31_2013', 'prenatal_ser8', 'Nutrition Counseling'),
(119, 'form31_2013', 'provcode', 'Name of Provinces'),
(166, 'form31_2013', 'psurec', 'Primary Sampling Unit'),
(125, 'form31_2013', 'reason_delayed_pnc', 'Reason for Delayed Pre-Natal Check Up'),
(126, 'form31_2013', 'reason_ontime_pnc', 'Reason for Ontime Pre-Natal Check Up'),
(118, 'form31_2013', 'regcode', 'Name of Regions'),
(167, 'form31_2013', 'strrec', 'Stratum Code'),
(146, 'form31_2013', 'supp1', 'Ferrous Sulfate'),
(147, 'form31_2013', 'supp2', 'Folic Acid'),
(148, 'form31_2013', 'supp3', 'Iron-Folic Acid'),
(149, 'form31_2013', 'supp4', 'Multivitamins'),
(150, 'form31_2013', 'supp5', 'Single Vitamin/Mineral'),
(145, 'form31_2013', 'take_vitmin', 'Take/Currently Taking Vitamins'),
(144, 'form31_2013', 'vita_supp', 'Given Vitamin A'),
(160, 'form31_2013', 'wash_hand1', 'Wash Hand: Before Food Prepation'),
(161, 'form31_2013', 'wash_hand2', 'Wash Hand: Before Eating'),
(162, 'form31_2013', 'wash_hand3', 'Wash Hand: After Eating'),
(163, 'form31_2013', 'wash_hand4', 'Wash Hand: After Toilet Use'),
(164, 'form31_2013', 'wash_hand5', 'Wash Hand: Before Feeding the  Child'),
(165, 'form31_2013', 'wash_hand6', 'Wash Hand: After Attending to A Child Who Defecated'),
(173, 'form43_2013', 'agemos', 'Age of the Child (in Months)'),
(184, 'form43_2013', 'age_appro_all', 'All age approximately breastfeeding'),
(181, 'form43_2013', 'bottle_status', 'Status of Bottle Feeding among 0-23 months'),
(182, 'form43_2013', 'cont_12to15', 'Continue Breastfeeding among 12 to 15 months'),
(183, 'form43_2013', 'cont_20to23', 'Continue Breastfeeding among 20 to 23 months'),
(174, 'form43_2013', 'current_fd_recall2', 'Current Feeding Practices'),
(186, 'form43_2013', 'dds_6to23', 'Diet Diversity Score among 6-23 months children'),
(178, 'form43_2013', 'duration_bf', 'Duration of Breastfeeding (in Months)'),
(175, 'form43_2013', 'ever_bf2', 'Ever Breastfeeding'),
(179, 'form43_2013', 'exbf_0to5', 'Exclusive breastfeeding among 0-5months'),
(192, 'form43_2013', 'finalwgt', 'Weighting Factor'),
(176, 'form43_2013', 'firstbf2', 'Breastfeeding Initiation'),
(171, 'form43_2013', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(185, 'form43_2013', 'introcomple_6to8', 'Introduction of Complementary Foods among children 6-8 months old '),
(189, 'form43_2013', 'mad_6to23_new', 'Minimum Acceptable Diet among 6 to 23 mos children'),
(187, 'form43_2013', 'mdd', 'Minimum Dietary Diversity among 6 to 23 mos children'),
(172, 'form43_2013', 'member_code', 'Member Code (Merging variable)'),
(188, 'form43_2013', 'mmf_6to23', 'Minimum Meal Frequency among 6 to 23 mos children'),
(180, 'form43_2013', 'predom_0to5', 'Predominant Breastfeeding among 0-5months'),
(177, 'form43_2013', 'prelacteal2', 'Given Prelacteal Feeds'),
(170, 'form43_2013', 'provcode', 'Name of Provinces'),
(190, 'form43_2013', 'psurec', 'PSU'),
(169, 'form43_2013', 'regcode', 'Name of Regions'),
(191, 'form43_2013', 'strrec', 'Strata'),
(196, 'form5_2013', 'fg1', 'Cereals and Cereal Products (in grams)'),
(205, 'form5_2013', 'fg10', 'Other Vegetables (in grams)'),
(206, 'form5_2013', 'fg11', 'Fruits (in grams)'),
(207, 'form5_2013', 'fg12', 'Vitamin C-Rich Fruits (in grams)'),
(208, 'form5_2013', 'fg13', 'Other Fruits (in grams)'),
(209, 'form5_2013', 'fg14', 'Fish, Meat and Poultry (in grams)'),
(210, 'form5_2013', 'fg15', 'Fish and Products ( in grams)'),
(211, 'form5_2013', 'fg16', 'Meat and Products (in grams)'),
(212, 'form5_2013', 'fg17', 'Poultry (in grams)'),
(213, 'form5_2013', 'fg18', 'Eggs (in grams)'),
(214, 'form5_2013', 'fg19', 'Milk and Milk Products ( in grams)'),
(197, 'form5_2013', 'fg2', 'Rice and Products (in grams)'),
(215, 'form5_2013', 'fg20', 'Whole Milk ( in grams)'),
(216, 'form5_2013', 'fg21', 'Milk Products ( in grams)'),
(217, 'form5_2013', 'fg23', 'Fats and Oils ( in grams)'),
(218, 'form5_2013', 'fg24', 'Miscellaneous ( in grams)'),
(219, 'form5_2013', 'fg25', 'Beverages ( in grams)'),
(220, 'form5_2013', 'fg26', 'Condiments and Spices ( in grams)'),
(221, 'form5_2013', 'fg27', 'Others Miscellaneous (in grams)'),
(198, 'form5_2013', 'fg3', 'Corn and Products (in grams)'),
(199, 'form5_2013', 'fg4', 'Cereal Products (in grams)'),
(200, 'form5_2013', 'fg5', 'Starchy Roots and Tubers (in grams)'),
(201, 'form5_2013', 'fg6', 'Sugar and Syrups(in grams)'),
(202, 'form5_2013', 'fg7', 'Dried Beans, Nuts and Seeds (in grams)'),
(203, 'form5_2013', 'fg8', 'Vegetables (in grams)'),
(204, 'form5_2013', 'fg9', 'Green Leafy and Yellow (in grams)'),
(195, 'form5_2013', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(194, 'form5_2013', 'provcode', 'Provinces'),
(234, 'form5_2013', 'psurec', 'Primary Sampling Unit'),
(193, 'form5_2013', 'regcode', 'Regions'),
(235, 'form5_2013', 'strrec', 'Stratum Code'),
(222, 'form5_2013', 'Total_Calc', 'Total Calcium (mg)'),
(223, 'form5_2013', 'Total_CHO', 'Total Carbohydrates (g)'),
(224, 'form5_2013', 'Total_Ener', 'Total Energy (Kcal)'),
(225, 'form5_2013', 'Total_Fat', 'Total Fats (g)'),
(226, 'form5_2013', 'Total_Food', 'Total Food Intake ( in grams)'),
(227, 'form5_2013', 'Total_Iron', 'Total Iron (mg)'),
(228, 'form5_2013', 'Total_Nia', 'Total Niacin (mg)'),
(229, 'form5_2013', 'Total_Prot', 'Total Protein (g)'),
(230, 'form5_2013', 'Total_Ribo', 'Total Riboflavin(mg)'),
(231, 'form5_2013', 'Total_Thia', 'Total Thiamin (mg)'),
(232, 'form5_2013', 'Total_VitA', 'Total Vitamin A (mcg)'),
(233, 'form5_2013', 'Total_VitC', 'Total Vitamin C (mg)'),
(236, 'form5_2013', 'weight_fact', 'Weigthing factor'),
(241, 'form61_2013', 'age', 'Age of Respondent'),
(244, 'form61_2013', 'fg1', 'Cereals and Cereal Products (in grams)'),
(253, 'form61_2013', 'fg10', 'Other Vegetables (in grams)'),
(254, 'form61_2013', 'fg11', 'Fruits (in grams)'),
(255, 'form61_2013', 'fg12', 'Vitamin C-Rich Fruits (in grams)'),
(256, 'form61_2013', 'fg13', 'Other Fruits (in grams)'),
(257, 'form61_2013', 'fg14', 'Fish, Meat and Poultry (in grams)'),
(258, 'form61_2013', 'fg15', 'Fish and Fish Products ( in grams)'),
(259, 'form61_2013', 'fg16', 'Meat and Meat Products (in grams)'),
(260, 'form61_2013', 'fg17', 'Poultry (in grams)'),
(261, 'form61_2013', 'fg18', 'Eggs (in grams)'),
(262, 'form61_2013', 'fg19', 'Milk and Milk Products ( in grams)'),
(245, 'form61_2013', 'fg2', 'Rice and Rice Products (in grams)'),
(263, 'form61_2013', 'fg20', 'Whole Milk ( in grams)'),
(264, 'form61_2013', 'fg21', 'Milk Products ( in grams)'),
(265, 'form61_2013', 'fg23', 'Fats and Oils ( in grams)'),
(266, 'form61_2013', 'fg24', 'Miscellaneous ( in grams)'),
(267, 'form61_2013', 'fg25', 'Beverages ( in grams)'),
(268, 'form61_2013', 'fg26', 'Condiments and Spices ( in grams)'),
(269, 'form61_2013', 'fg27', 'Other Miscellaneous (in grams)'),
(246, 'form61_2013', 'fg3', 'Corn and Corn Products (in grams)'),
(247, 'form61_2013', 'fg4', 'Other Cereal Products (in grams)'),
(248, 'form61_2013', 'fg5', 'Starchy Roots and Tubers (in grams)'),
(249, 'form61_2013', 'fg6', 'Sugar and Syrups (in grams)'),
(250, 'form61_2013', 'fg7', 'Dried Beans, Nuts and Seeds (in grams)'),
(251, 'form61_2013', 'fg8', 'Vegetables (in grams)'),
(252, 'form61_2013', 'fg9', 'Green Leafy and Yellow (in grams)'),
(282, 'form61_2013', 'g_fwgt', 'Weigthing factor'),
(239, 'form61_2013', 'hhnum', 'Household number (Merging variable/Unique household identifier)'),
(240, 'form61_2013', 'member_code', 'Member Code (Merging variable)'),
(238, 'form61_2013', 'provcode', 'Provinces'),
(243, 'form61_2013', 'psc', 'Physiological Status Code'),
(283, 'form61_2013', 'psurec', 'Primary Sampling Unit'),
(237, 'form61_2013', 'regcode', 'Regions'),
(242, 'form61_2013', 'sex', 'Sex of Respondent'),
(284, 'form61_2013', 'strrec', 'Stratum Code'),
(270, 'form61_2013', 'Total_Calc', 'Total Calcium (mg)'),
(271, 'form61_2013', 'Total_CHO', 'Total Carbohydrates (g)'),
(272, 'form61_2013', 'Total_Ener', 'Total Energy (Kcal)'),
(273, 'form61_2013', 'Total_Fat', 'Total Fats (g)'),
(274, 'form61_2013', 'Total_Food', 'Total Food Intake ( in grams)'),
(275, 'form61_2013', 'Total_Iron', 'Total Iron (mg)'),
(276, 'form61_2013', 'Total_Nia', 'Total Vitamin C (mg)'),
(277, 'form61_2013', 'Total_Prot', 'Total Protein (g)'),
(278, 'form61_2013', 'Total_Ribo', 'Total Niacin (mg)'),
(279, 'form61_2013', 'Total_Thia', 'Total Riboflavin (mg)'),
(280, 'form61_2013', 'Total_VitA', 'Total Vitamin A (mcg RE)'),
(281, 'form61_2013', 'Total_VitC', 'Total Thiamin (mg)'),
(289, 'form71_2013', 'age', 'Age of Respondent'),
(297, 'form71_2013', 'alcohol', 'Ever Consumed Any Alcoholic Drink Such as Beer Wine or Spirits'),
(302, 'form71_2013', 'alcohol_status', 'Alcohol Status (Generated)'),
(294, 'form71_2013', 'Ave_DBP', 'Average Measurement of Diastolic BP (Mm Hg)'),
(293, 'form71_2013', 'Ave_SBP', 'Average Measurement of Systolic BP (Mm Hg)'),
(303, 'form71_2013', 'binge_drink', 'Binge Drinking Status (Generated)'),
(306, 'form71_2013', 'chol', 'Actual Values for Cholesterol'),
(298, 'form71_2013', 'con_alcohol', 'Consumed an Alcoholic Drink within the Past 12 Months'),
(292, 'form71_2013', 'csc', 'Civil Status Code'),
(295, 'form71_2013', 'currentsmoking', 'Presently Smoke Cigarettes Pipes or Any Other Tobacco Products in the Past'),
(299, 'form71_2013', 'drnk_30days', 'Consumed an Alcoholic Drink within the Past 30 Days'),
(300, 'form71_2013', 'drnk_30d_num', 'Total Number of Standard Drink on Single Occasion'),
(296, 'form71_2013', 'ever_smk', 'Ever Smoke Cigarettes Cigars Pipes or Any Other Tobacco Products in the Past'),
(305, 'form71_2013', 'fbs', 'Actual Values for FBG'),
(312, 'form71_2013', 'finalwgt1', 'Sampling Weights [4_Replicate]'),
(313, 'form71_2013', 'finalwgt4', 'Sampling Weights [1_Replicate]'),
(308, 'form71_2013', 'hdl', 'Actual Values for HDL'),
(287, 'form71_2013', 'hhnum', 'Household Number(Merging variable/Unique household identifier)'),
(309, 'form71_2013', 'ldl', 'Actual Values for LDL'),
(288, 'form71_2013', 'member_code', 'Member Code (Merging variable)'),
(304, 'form71_2013', 'pa_met', 'General Physical Activity Classification'),
(286, 'form71_2013', 'provcode', 'Name of Provinces'),
(291, 'form71_2013', 'psc', 'Physiological Status Code'),
(310, 'form71_2013', 'psurec', 'Primary Sampling Unit'),
(285, 'form71_2013', 'regcode', 'Name of Regions'),
(290, 'form71_2013', 'sex', 'Sex of Respondent'),
(301, 'form71_2013', 'smoke_status', 'Smoking Status (Generated)'),
(311, 'form71_2013', 'strrec', 'Strata'),
(307, 'form71_2013', 'tri', 'Actual Values for Triglyceride'),
(318, 'form82_2013', 'age', 'Age in Years'),
(326, 'form82_2013', 'finalwgt_uie', 'WEIGHT|final weight[UIE]'),
(327, 'form82_2013', 'finalwgt_vita_hb', 'WEIGHT|final weight[VitA & Hemoglobin]'),
(323, 'form82_2013', 'hemoglobin', 'Actual values of Hemoglobin (gram/dL)'),
(316, 'form82_2013', 'hhnum', 'Household Number (Merging variable/Unique household identifier)'),
(317, 'form82_2013', 'member_code', 'Member Code (Merging variable)'),
(315, 'form82_2013', 'provcode', 'Name of Provinces'),
(320, 'form82_2013', 'psc', 'PSC'),
(324, 'form82_2013', 'psurec', 'Primary Sampling Unit'),
(314, 'form82_2013', 'regcode', 'Name of Regions'),
(319, 'form82_2013', 'sex', 'Sex'),
(325, 'form82_2013', 'strrec', 'Stratum Code'),
(321, 'form82_2013', 'uie', 'Actual Values of UIE (micrograms per liter)'),
(322, 'form82_2013', 'vita', 'Vitamin A - Value (microgram/dL)');

-- --------------------------------------------------------

--
-- Table structure for table `variable_label_2015`
--

DROP TABLE IF EXISTS `variable_label_2015`;
CREATE TABLE IF NOT EXISTS `variable_label_2015` (
  `var_id` int(11) NOT NULL DEFAULT '0',
  `formno` varchar(255) NOT NULL,
  `variable_name` varchar(255) NOT NULL,
  `variable_label` varchar(255) NOT NULL,
  `y2013` varchar(50) NOT NULL,
  `y2011` varchar(50) NOT NULL,
  `y2015` varchar(50) NOT NULL,
  PRIMARY KEY (`formno`,`variable_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variable_label_2015`
--

INSERT INTO `variable_label_2015` (`var_id`, `formno`, `variable_name`, `variable_label`, `y2013`, `y2011`, `y2015`) VALUES
(5, 'form11_2015', 'age', 'Age of Respondent', '', '', ''),
(7, 'form11_2015', 'csc', 'Civil Status Code', '', '', ''),
(10, 'form11_2015', 'educ', 'Highest Educational Attainment', '', '', ''),
(15, 'form11_2015', 'fwgt', 'Sampling Weights', '', '', ''),
(11, 'form11_2015', 'haswork', 'Current work for past week', '', '', ''),
(3, 'form11_2015', 'hhnum', 'Household Number (Unique identifier; merging variable)', '', '', ''),
(4, 'form11_2015', 'member_code', 'Member Code  (Unique identifier; merging variable)', '', '', ''),
(12, 'form11_2015', 'occup', 'Present Occupation  ', '', '', ''),
(2, 'form11_2015', 'provcode', 'Name of Provinces', '', '', ''),
(8, 'form11_2015', 'psc', 'Physiological Status Code', '', '', ''),
(13, 'form11_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(1, 'form11_2015', 'regcode', 'Name of Regions', '', '', ''),
(9, 'form11_2015', 'rhc', 'Relation to Household Head  Code', '', '', ''),
(6, 'form11_2015', 'sex', 'Sex of Respondent', '', '', ''),
(14, 'form11_2015', 'strrec', 'Strata Code', '', '', ''),
(25, 'form12_2015', 'bedroom', 'Number of Bedrooms', '', '', ''),
(34, 'form12_2015', 'burn', 'Dispose Garbage by Burning', '', '', ''),
(33, 'form12_2015', 'collect', 'Dispose Garbage by Collector System', '', '', ''),
(35, 'form12_2015', 'composting', 'Dispose Garbage by Compost pit', '', '', ''),
(29, 'form12_2015', 'drinksafe', 'Make Water Safer to Drink', '', '', ''),
(36, 'form12_2015', 'dump', 'Dispose Garbage by Dumping/Throwing   ', '', '', ''),
(19, 'form12_2015', 'dweltype', 'Type of Dwelling Unit', '', '', ''),
(27, 'form12_2015', 'electrct', 'Electricity in the Household', '', '', ''),
(41, 'form12_2015', 'finalwgt', 'Sampling Weights', '', '', ''),
(24, 'form12_2015', 'floor', 'Main Flooring Material', '', '', ''),
(26, 'form12_2015', 'fuelmain', 'Type of Fuel Used for Cooking', '', '', ''),
(38, 'form12_2015', 'fwealthq', 'Wealth Quintile', '', '', ''),
(18, 'form12_2015', 'hhnum', 'Household Number (Unique identifier; merging variable)', '', '', ''),
(30, 'form12_2015', 'makesafe', 'How You Make Water Safer to Drink', '', '', ''),
(17, 'form12_2015', 'provcode', 'Name of Provinces', '', '', ''),
(39, 'form12_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(16, 'form12_2015', 'regcode', 'Name of Regions', '', '', ''),
(22, 'form12_2015', 'roof', 'Main Roofing Material', '', '', ''),
(37, 'form12_2015', 'segregate', 'Garbage Segregation', '', '', ''),
(32, 'form12_2015', 'shareit', 'Toilet Facility Shared', '', '', ''),
(40, 'form12_2015', 'strrec', 'Strata Code', '', '', ''),
(20, 'form12_2015', 'tenurhws', 'Tenure Status of the Dwelling Unit', '', '', ''),
(21, 'form12_2015', 'tenurlot', 'Tenure Status of the Lot', '', '', ''),
(31, 'form12_2015', 'toilet', 'Type of Toilet Facility', '', '', ''),
(23, 'form12_2015', 'wall', 'Main Material Used for the Wall', '', '', ''),
(28, 'form12_2015', 'wdrinkng', 'Main Source of Drinking Water', '', '', ''),
(88, 'form15_2015', 'fdsec01', 'Food Security Question #1 “In the past month, did you worry that your household would not have enough food?”\n', '', '', ''),
(89, 'form15_2015', 'fdsec02', 'Food Security Question #2 ‘’In the past  month, were you or any household member not able to eat the kinds of foods you preferred because of lack of resources”', '', '', ''),
(90, 'form15_2015', 'fdsec03', 'Food Security Question #3 “In the past month, did you or any household member have to eat a limited variety of foods due to a lack of resources?”\n', '', '', ''),
(91, 'form15_2015', 'fdsec04', 'Food Security Question #4 “In the past month, did you or any household member have to eat some foods that you really did not want to eat because of lack of resources to obtain other types of foods?” \n', '', '', ''),
(92, 'form15_2015', 'fdsec05', 'Food Security Question #5 “In the past month, did you or any household member have to eat a smaller meal than you felt you needed because there was not enough food?”\n', '', '', ''),
(93, 'form15_2015', 'fdsec06', 'Food Security Question #6 “In the past month, did you or any household member have to eat fewer meals in a day because there was not enough food?”', '', '', ''),
(94, 'form15_2015', 'fdsec07', 'Food Security Question #7 “In the past month, was there ever no food to eat of any kind in your household because of lack of resources to get food?”\n', '', '', ''),
(95, 'form15_2015', 'fdsec08', 'Food Security Question #8 “In the past month, did you or any household member go to sleep at night hungry because there was not enough food?”\n', '', '', ''),
(96, 'form15_2015', 'fdsec09', 'Food Security Question #9 “In the past month, did you or any household member go a whole day and night without eating anything because there was not enough food?”\n', '', '', ''),
(87, 'form15_2015', 'hhnum', 'Household Number  (Unique identifier; merging variable)', '', '', ''),
(86, 'form15_2015', 'provcode', 'Name of Provinces', '', '', ''),
(97, 'form15_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(85, 'form15_2015', 'regcode', 'Name of Regions', '', '', ''),
(98, 'form15_2015', 'strrec', 'Strata', '', '', ''),
(99, 'form15_2015', 'Wgt2', 'Sampling Weights', '', '', ''),
(47, 'form21_2015', 'age', 'Age in Years', '', '', ''),
(46, 'form21_2015', 'agemos', 'Age of the Child (in Months)', '', '', ''),
(56, 'form21_2015', 'anthro_group', 'Anthrop Group', '', '', ''),
(50, 'form21_2015', 'ethnicity', 'Ethnicity', '', '', ''),
(61, 'form21_2015', 'fwgt', 'Sampling Weights', '', '', ''),
(52, 'form21_2015', 'height', 'Average Height (cm)', '', '', ''),
(44, 'form21_2015', 'hhnum', 'Household Number (Unique identifier; merging variable)', '', '', ''),
(54, 'form21_2015', 'hip', 'Ave Hip Circumference (cm)', '', '', ''),
(45, 'form21_2015', 'member_code', 'Member Code (Unique identifier; merging variable)', '', '', ''),
(57, 'form21_2015', 'mos_lactation', 'Months of Lactation', '', '', ''),
(58, 'form21_2015', 'mos_preg', 'Months of Pregnancy', '', '', ''),
(43, 'form21_2015', 'provcode', 'Name of Provinces', '', '', ''),
(49, 'form21_2015', 'psc', 'Physiological Status Code', '', '', ''),
(59, 'form21_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(42, 'form21_2015', 'regcode', 'Name of Regions', '', '', ''),
(48, 'form21_2015', 'sex', 'Sex of Respondent', '', '', ''),
(60, 'form21_2015', 'strrec', 'Strata', '', '', ''),
(53, 'form21_2015', 'waist', 'Ave Waist Circumference (cm)', '', '', ''),
(51, 'form21_2015', 'weight', 'Average Weight (kg)', '', '', ''),
(138, 'form31_2015', 'child_vaccine', 'Knowledge on the need for a child to be vaccinated', '', '', ''),
(148, 'form31_2015', 'finalwgt', 'Sampling Weights', '', '', ''),
(102, 'form31_2015', 'hhnum', 'Household Number (Unique identifier; merging variable)', '', '', ''),
(136, 'form31_2015', 'howlong_bfeed', 'Duration of intended Breastfeeding', '', '', ''),
(139, 'form31_2015', 'importance_vaccine', 'Importance of Vaccination', '', '', ''),
(103, 'form31_2015', 'member_code', 'Member Code (Unique identifier; merging variable)', '', '', ''),
(135, 'form31_2015', 'month_bf', 'Knowledge of Number of Months of Exclusively Breastfeeding', '', '', ''),
(137, 'form31_2015', 'month_comf', 'Knowledge of Number of Months When to Give Other Food Other Than Breast Milk', '', '', ''),
(125, 'form31_2015', 'nightblindness', 'Diagnosed with Nightblindness', '', '', ''),
(132, 'form31_2015', 'novitamin_reason', 'Reason of not taking vitamins during pregnancy', '', '', ''),
(104, 'form31_2015', 'pnc_avail', 'Availed Pre-Natal Check-Up', '', '', ''),
(105, 'form31_2015', 'pnc_months', 'Month of Pre-Natal Check-up', '', '', ''),
(106, 'form31_2015', 'pnc_ontime', 'Pre-Natal Check-Up on Time', '', '', ''),
(134, 'form31_2015', 'practice_postnatal', 'Practice Post-Natal Check-Up', '', '', ''),
(123, 'form31_2015', 'preg_asth', 'Health Problems: Asthma', '', '', ''),
(118, 'form31_2015', 'preg_compli', 'Had Health Problems Related to Current/Last Pregnancy', '', '', ''),
(120, 'form31_2015', 'preg_diab', 'Health Problems: Diabetes', '', '', ''),
(122, 'form31_2015', 'preg_goit', 'Health Problems: Goiter', '', '', ''),
(121, 'form31_2015', 'preg_hdis', 'Health Problems: Heart Disease', '', '', ''),
(119, 'form31_2015', 'preg_hyper', 'Health Problems: Hypertension', '', '', ''),
(124, 'form31_2015', 'preg_tuber', 'Health Problems: Tuberculosis', '', '', ''),
(109, 'form31_2015', 'prenatal_ser1', 'Weight Measurement', '', '', ''),
(110, 'form31_2015', 'prenatal_ser2', 'Height Measurement', '', '', ''),
(111, 'form31_2015', 'prenatal_ser3', 'BP Treatment', '', '', ''),
(112, 'form31_2015', 'prenatal_ser4', 'Blood Test', '', '', ''),
(113, 'form31_2015', 'prenatal_ser5', 'Urinalysis', '', '', ''),
(114, 'form31_2015', 'prenatal_ser6', 'Ultrasound', '', '', ''),
(115, 'form31_2015', 'prenatal_ser7', 'Vitamins/Micronutrients Supplementation', '', '', ''),
(116, 'form31_2015', 'prenatal_ser8', 'Tetanus Toxoid Vaccine', '', '', ''),
(117, 'form31_2015', 'prenatal_ser9', 'Nutrition Counseling', '', '', ''),
(101, 'form31_2015', 'provcode', 'Name of Provinces', '', '', ''),
(146, 'form31_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(108, 'form31_2015', 'reason_delayed_pnc', 'Reason for Delayed Pre-Natal Check Up', '', '', ''),
(107, 'form31_2015', 'reason_ontime_pnc', 'Reason for Ontime Pre-Natal Check Up', '', '', ''),
(100, 'form31_2015', 'regcode', 'Name of Regions', '', '', ''),
(147, 'form31_2015', 'strrec', 'Strata Code', '', '', ''),
(127, 'form31_2015', 'supp1', 'Ferrous Sulfate', '', '', ''),
(128, 'form31_2015', 'supp2', 'Folic Acid', '', '', ''),
(129, 'form31_2015', 'supp3', 'Iron-Folic Acid', '', '', ''),
(130, 'form31_2015', 'supp4', 'Multivitamins', '', '', ''),
(131, 'form31_2015', 'supp5', 'Single Vitamin/Mineral', '', '', ''),
(126, 'form31_2015', 'take_vitmin', 'Take/Currently Taking Vitamins', '', '', ''),
(140, 'form31_2015', 'wash_hand1', 'Wash Hand: Before Food Preparation', '', '', ''),
(141, 'form31_2015', 'wash_hand2', 'Wash Hand: Before Eating', '', '', ''),
(142, 'form31_2015', 'wash_hand3', 'Wash Hand: After Eating', '', '', ''),
(143, 'form31_2015', 'wash_hand4', 'Wash Hand: After Toilet Use', '', '', ''),
(144, 'form31_2015', 'wash_hand5', 'Wash Hand: Before Feeding the Child', '', '', ''),
(145, 'form31_2015', 'wash_hand6', 'Wash Hand: After Attending to a Child Who Defecated', '', '', ''),
(133, 'form31_2015', 'with_postnatal', 'With postnatal check-up', '', '', ''),
(153, 'form43_2015', 'agemos', 'Age of the Child (in Months)', '', '', ''),
(164, 'form43_2015', 'age_appro_all', 'Age-appropriate Breastfeeding', '', '', ''),
(161, 'form43_2015', 'bottle_status', 'Status of Bottlefeeding among 0-23 months', '', '', ''),
(162, 'form43_2015', 'cont_12to15', 'Continue Breastfeeding among 12 to 15 months', '', '', ''),
(163, 'form43_2015', 'cont_20to23', 'Continue Breastfeeding among 20 to 23 months', '', '', ''),
(154, 'form43_2015', 'current_fd_recall2', 'Current Feeding Practices', '', '', ''),
(166, 'form43_2015', 'dds_6to23', 'Diet Diversity Score among 6-23 months children', '', '', ''),
(158, 'form43_2015', 'duration_bf', 'Duration of Breastfeeding (in Months)', '', '', ''),
(155, 'form43_2015', 'ever_bf2', 'Ever Breastfeeding', '', '', ''),
(159, 'form43_2015', 'exbf_0to5', 'Exclusive breastfeeding among 0-5 months', '', '', ''),
(172, 'form43_2015', 'finalwgt', 'Sampling Weights', '', '', ''),
(156, 'form43_2015', 'firstbf2', 'Early Breastfeeding Initiation', '', '', ''),
(151, 'form43_2015', 'hhnum', 'Household Number \n(Unique identifier; merging variable)\n', '', '', ''),
(165, 'form43_2015', 'introcomple_6to8', 'Introduction of Complementary Foods among Children 6-8 months old', '', '', ''),
(169, 'form43_2015', 'mad_6to23_new', 'Minimum Acceptable Diet among 6 to 23 months children', '', '', ''),
(167, 'form43_2015', 'mdd', 'Minimum Dietary Diversity among  6 to 23 months children', '', '', ''),
(152, 'form43_2015', 'member_code', 'Member Code\n(Unique identifier; merging variable)\n', '', '', ''),
(168, 'form43_2015', 'mmf_6to23', 'Minimum Meal Frequency among 6 to 23 months children', '', '', ''),
(160, 'form43_2015', 'predom_0to5', 'Predominant Breastfeeding among 0-5 months', '', '', ''),
(157, 'form43_2015', 'prelacteal2', 'Prelacteal Feeds', '', '', ''),
(150, 'form43_2015', 'provcode', 'Name of Provinces', '', '', ''),
(170, 'form43_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(149, 'form43_2015', 'regcode', 'Name of Regions', '', '', ''),
(171, 'form43_2015', 'strrec', 'Strata Code', '', '', ''),
(214, 'form5_2015', 'cu', 'Consumption Unit', '', '', ''),
(176, 'form5_2015', 'fg1', 'Cereals and Cereal Products (in grams)', '', '', ''),
(185, 'form5_2015', 'fg10', 'Other Vegetables (in grams)', '', '', ''),
(186, 'form5_2015', 'fg11', 'Fruits (in grams)', '', '', ''),
(187, 'form5_2015', 'fg12', 'Vitamin C-Rich Fruits (in grams)', '', '', ''),
(188, 'form5_2015', 'fg13', 'Other Fruits (in grams)', '', '', ''),
(189, 'form5_2015', 'fg14', 'Fish, Meat and Poultry (in grams)', '', '', ''),
(190, 'form5_2015', 'fg15', 'Fish and Fish Products  (in grams)', '', '', ''),
(191, 'form5_2015', 'fg16', 'Meat and Meat Products (in grams)', '', '', ''),
(192, 'form5_2015', 'fg17', 'Poultry (in grams)', '', '', ''),
(193, 'form5_2015', 'fg18', 'Eggs (in grams)', '', '', ''),
(194, 'form5_2015', 'fg19', 'Milk and Milk Products (in grams)', '', '', ''),
(177, 'form5_2015', 'fg2', 'Rice and Rice Products (in grams)', '', '', ''),
(195, 'form5_2015', 'fg20', 'Whole Milk (in grams)', '', '', ''),
(196, 'form5_2015', 'fg21', 'Milk Products (in grams)', '', '', ''),
(197, 'form5_2015', 'fg23', 'Fats and Oils (in grams)', '', '', ''),
(198, 'form5_2015', 'fg24', 'Miscellaneous (in grams)', '', '', ''),
(199, 'form5_2015', 'fg25', 'Beverages (in grams)', '', '', ''),
(200, 'form5_2015', 'fg26', 'Condiments and Spices (in grams)', '', '', ''),
(201, 'form5_2015', 'fg27', 'Other Miscellaneous (in grams)', '', '', ''),
(178, 'form5_2015', 'fg3', 'Corn and Corn Products (in grams)', '', '', ''),
(179, 'form5_2015', 'fg4', 'Other Cereal Products (in grams)', '', '', ''),
(180, 'form5_2015', 'fg5', 'Starchy Roots and Tubers (in grams)', '', '', ''),
(181, 'form5_2015', 'fg6', 'Sugar and Syrups (in grams)', '', '', ''),
(182, 'form5_2015', 'fg7', 'Dried Beans, Nuts and Seeds (in grams)', '', '', ''),
(183, 'form5_2015', 'fg8', 'Vegetables (in grams)', '', '', ''),
(184, 'form5_2015', 'fg9', 'Green Leafy and Yellow (in grams)', '', '', ''),
(175, 'form5_2015', 'hhnum', 'Household Number \n(Unique identifier; merging variable)\n', '', '', ''),
(174, 'form5_2015', 'provcode', 'Name of Provinces', '', '', ''),
(215, 'form5_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(173, 'form5_2015', 'regcode', 'Name of Regions', '', '', ''),
(216, 'form5_2015', 'strrec', 'Strata', '', '', ''),
(205, 'form5_2015', 'Total_Calcium', 'Total Calcium (mg)', '', '', ''),
(212, 'form5_2015', 'Total_CHO', 'Total Carbohydrates (g)', '', '', ''),
(203, 'form5_2015', 'Total_Energy', 'Total Energy (Kcal)', '', '', ''),
(213, 'form5_2015', 'Total_Fat', 'Total Fats (g)', '', '', ''),
(202, 'form5_2015', 'Total_FoodIntake', 'Total Food Intake  (in grams)', '', '', ''),
(206, 'form5_2015', 'Total_Iron', 'Total Iron (mg)', '', '', ''),
(210, 'form5_2015', 'Total_Niacin', 'Total Niacin (mg)', '', '', ''),
(204, 'form5_2015', 'Total_Protein', 'Total Protein (g)', '', '', ''),
(209, 'form5_2015', 'Total_Riboflavin', 'Total Riboflavin (mg)', '', '', ''),
(208, 'form5_2015', 'Total_Thiamin', 'Total Thiamin (mg)', '', '', ''),
(207, 'form5_2015', 'Total_VitaminA', 'Total Vitamin A (mcg RE)', '', '', ''),
(211, 'form5_2015', 'Total_VitaminC', 'Total Vitamin C (mg)', '', '', ''),
(217, 'form5_2015', 'wgts', 'Sampling Weights', '', '', ''),
(66, 'form71_2015', 'age', 'Age of Respondent', '', '', ''),
(74, 'form71_2015', 'alcohol', 'Ever Consumed Any Alcoholic Drink Such as Beer, Wine or Spirits', '', '', ''),
(79, 'form71_2015', 'alcohol_status', 'Alcohol Status (Generated)', '', '', ''),
(71, 'form71_2015', 'Ave_DBP', 'Average Measurement of Diastolic BP (Mm Hg)', '', '', ''),
(70, 'form71_2015', 'Ave_SBP', 'Average Measurement of Systolic BP (Mm Hg)', '', '', ''),
(80, 'form71_2015', 'binge_drinking', 'Binge Drinking Status (Generated)', '', '', ''),
(75, 'form71_2015', 'con_alcohol', 'Consumed an Alcoholic Drink within the Past 12 Months\n[Current Drinkers]\n', '', '', ''),
(69, 'form71_2015', 'csc', 'Civil Status Code', '', '', ''),
(72, 'form71_2015', 'current_smoking', 'Presently Smoke Cigarettes, Cigars, Pipes or Any Other Tobacco Products', '', '', ''),
(76, 'form71_2015', 'drnk_30days', 'Consumed an Alcoholic Drink within the Past 30 Days', '', '', ''),
(77, 'form71_2015', 'drnk_30d_num', 'Total Number of Standard Drink on Single Occasion', '', '', ''),
(73, 'form71_2015', 'ever_smk', 'Ever Smoke Cigarettes, Cigars, Pipes or Any Other Tobacco Products in the Past', '', '', ''),
(83, 'form71_2015', 'finalwgt1', 'Sampling Weights [1_Replicate]', '', '', ''),
(84, 'form71_2015', 'finalwgt4', 'Sampling Weights [4_Replicates]', '', '', ''),
(64, 'form71_2015', 'hhnum', 'Household Number (Unique identifier; merging variable)', '', '', ''),
(65, 'form71_2015', 'member_code', 'Member Code  (Unique identifier; merging variable)', '', '', ''),
(63, 'form71_2015', 'provcode', 'Name of Provinces', '', '', ''),
(68, 'form71_2015', 'psc', 'Physiological Status Code', '', '', ''),
(81, 'form71_2015', 'psurec', 'Primary Sampling Unit', '', '', ''),
(62, 'form71_2015', 'regcode', 'Name of Regions', '', '', ''),
(67, 'form71_2015', 'sex', 'Sex of Respondent', '', '', ''),
(78, 'form71_2015', 'smoke_status', 'Smoking Status (Generated)', '', '', ''),
(82, 'form71_2015', 'strrec', 'Strata', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
