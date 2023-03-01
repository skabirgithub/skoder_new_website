-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2023 at 03:35 AM
-- Server version: 10.3.38-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skodr_newsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Skoder Admin', 'admin@skoder.co', '01750726094', '1662255834favicon.png', 0, '$2y$10$oZ4/T.TidJzYMvZlWO5hIuxOeDzQzLdqFGn2fAmYu/Ta0DpkD0UGy', NULL, '2018-02-28 23:27:08', '2022-09-04 05:44:14'),
(2, 'test', 'test@gmail.com', '09000000', 'BhTv1584160189Brooklyn99-310x310.jpg', 1, '$2y$10$cl6qNdVuAhzJyaaLACVxGOQhlYf7n/UgLrwW0vx9QDGlZyKGM97mm', NULL, '2021-12-05 10:24:50', '2021-12-05 10:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `item_id`, `name`, `keyword`, `created_at`, `updated_at`) VALUES
(2, 523, 'Color', 'color', NULL, NULL),
(56, 523, 'Size', 'size', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) DEFAULT 'unlimited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `price`, `keyword`, `created_at`, `updated_at`, `stock`) VALUES
(221, 2, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(222, 2, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(223, 2, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(224, 2, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(1082, 56, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1128, 56, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1174, 56, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1220, 56, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_popular` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `photo`, `status`, `is_popular`, `created_at`, `updated_at`) VALUES
(20, 'Skoder', 'Skoder', 'x0lT1662256171skoder - Copy.png', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 1,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(28, 'Enterprise Solutions', 'enterprise-solutions', 'amSVskoder.png', '[{\"value\":\"best enterprise solution\"},{\"value\":\"erp software\"},{\"value\":\"erp software in bangladesh\"},{\"value\":\"accounting software\"},{\"value\":\"pos software price in bangladesh\"},{\"value\":\"stock management software\"},{\"value\":\"hrm payroll software\"}]', 'Skoder provides best and quality services in Bangladesh with enterprise solutions.\r\nbest erp software in bangladesh\r\nbest accounting software in bangladesh\r\nbest pos software in bangladesh\r\nbest inventory software in bangladesh\r\nbest hrm software in bangladesh\r\nbest stock management software in bangladesh\r\nbest school management software in bangladesh', 1, 1, 0, NULL, NULL),
(29, 'Startup Solutions', 'startup-solutions', 'bCHhskoder.png', '[{\"value\":\"startup\"},{\"value\":\"startup bangladesh\"},{\"value\":\"how to get investment\"},{\"value\":\"investment\"},{\"value\":\"fund raising\"},{\"value\":\"team for startup\"},{\"value\":\"how to start a business\"}]', 'Skoder provides best and quality services in Bangladesh with startup supports and solutions.', 1, 1, 1, NULL, NULL),
(30, 'Web Solutions', 'web-solutions', '5e62skoder.png', '[{\"value\":\"best website developer in bangladesh\"},{\"value\":\"website\"},{\"value\":\"web\"},{\"value\":\"php\"},{\"value\":\"laravel\"},{\"value\":\"portfolio website\"},{\"value\":\"customized website\"}]', 'Skoder provides best and quality services in Bangladesh with web development solutions.', 1, 1, 2, NULL, NULL),
(31, 'App Solutions', 'app-solutions', 'GUbBskoder.png', '[{\"value\":\"app\"},{\"value\":\"flutter\"},{\"value\":\"android\"},{\"value\":\"ios\"},{\"value\":\"development\"}]', 'Skoder provides best and quality services in Bangladesh with web development solutions.', 1, 1, 3, NULL, NULL),
(32, 'Creative Solution', 'creative-solution', 'hFRxskoder.png', '[{\"value\":\"creative\"},{\"value\":\"ads\"},{\"value\":\"2d\"},{\"value\":\"3d\"},{\"value\":\"motion graphics\"},{\"value\":\"anmation\"},{\"value\":\"studio\"}]', 'Skoder provides best and quality services in Bangladesh with creative solutions.', 1, 1, 4, NULL, NULL),
(33, 'Business Solutions', 'business-solutions', 'Yg6Mfavicon.png', '[{\"value\":\"business solutions\"}]', 'Skoder provides best and quality services in Bangladesh with enterprise solutions.', 1, 1, 5, NULL, NULL),
(34, 'Research and Innovation', 'research-and-innovation', 'HdhQfavicon.png', '[{\"value\":\"reearch\"},{\"value\":\"innovation\"},{\"value\":\"solution\"}]', 'Skoder provides best and quality services in Bangladesh with enterprise solutions.', 1, 1, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chield_categories`
--

INSERT INTO `chield_categories` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Pajama Sets', 'Pajama-Sets', 18, 6, 1, NULL, NULL),
(6, 'Women Socks & Hosiery', 'Women-Socks--Hosiery', 18, 6, 1, NULL, NULL),
(7, 'Shapewer', 'Shapewer', 18, 6, 1, NULL, NULL),
(8, 'Bras', 'Bras', 18, 6, 1, NULL, NULL),
(9, 'Wedding Dresses', 'Wedding-Dresses', 18, 7, 1, NULL, NULL),
(10, 'Prom Dresses', 'Prom-Dresses', 18, 7, 1, NULL, NULL),
(11, 'Evening Dresses', 'Evening-Dresses', 18, 7, 1, NULL, NULL),
(12, 'Costumes', 'Costumes', 18, 7, 1, NULL, NULL),
(13, 'Leggings', 'Leggings', 18, 8, 1, NULL, NULL),
(14, 'Skirt', 'Skirt', 18, 8, 1, NULL, NULL),
(15, 'Jeans', 'Jeans', 18, 8, 1, NULL, NULL),
(16, 'Pants & Capris', 'Pants--Capris', 18, 8, 1, NULL, NULL),
(17, 'Jackets', 'Jackets', 19, 9, 1, NULL, NULL),
(18, 'Sweaters', 'Sweaters', 19, 9, 1, NULL, NULL),
(19, 'Parkas', 'Parkas', 19, 9, 1, NULL, NULL),
(20, 'Down Jackets', 'Down-Jackets', 19, 9, 1, NULL, NULL),
(21, 'Suits & Blazers', 'Suits--Blazers', 19, 9, 1, NULL, NULL),
(22, 'Boxers', 'Boxers', 19, 17, 1, NULL, NULL),
(23, 'Briefs', 'Briefs', 19, 17, 1, NULL, NULL),
(24, 'Long Johns', 'Long-Johns', 19, 17, 1, NULL, NULL),
(25, 'Sleep & Lounge', 'Sleep--Lounge', 19, 17, 1, NULL, NULL),
(26, 'Pajama Sets', 'Pajama-Sets', 19, 17, 1, NULL, NULL),
(27, 'Cellphones', 'Cellphones', 21, 12, 1, NULL, NULL),
(28, 'iPhones', 'iPhones', 21, 12, 1, NULL, NULL),
(29, 'Android Phone', 'Android-Phone', 21, 12, 1, NULL, NULL),
(30, 'Phone Bags & Cases', 'Phone-Bags--Cases', 21, 13, 1, NULL, NULL),
(31, 'Mobile Phone Cables', 'Mobile-Phone-Cables', 21, 13, 1, NULL, NULL),
(32, 'Power Bank', 'Power-Bank', 21, 13, 1, NULL, NULL),
(33, 'Screen Protectors', 'Screen-Protectors', 21, 13, 1, NULL, NULL),
(34, 'Shirt', 'Shirt', 19, 9, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL),
(2, 'Albania', NULL, NULL),
(3, 'Algeria', NULL, NULL),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', NULL, NULL),
(7, 'Anguilla', NULL, NULL),
(8, 'Antarctica', NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL),
(10, 'Argentina', NULL, NULL),
(11, 'Armenia', NULL, NULL),
(12, 'Aruba', NULL, NULL),
(13, 'Australia', NULL, NULL),
(14, 'Austria', NULL, NULL),
(15, 'Azerbaijan', NULL, NULL),
(16, 'Bahamas', NULL, NULL),
(17, 'Bahrain', NULL, NULL),
(18, 'Bangladesh', NULL, NULL),
(19, 'Barbados', NULL, NULL),
(20, 'Belarus', NULL, NULL),
(21, 'Belgium', NULL, NULL),
(22, 'Belize', NULL, NULL),
(23, 'Benin', NULL, NULL),
(24, 'Bermuda', NULL, NULL),
(25, 'Bhutan', NULL, NULL),
(26, 'Bolivia', NULL, NULL),
(27, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'Botswana', NULL, NULL),
(29, 'Bouvet Island', NULL, NULL),
(30, 'Brazil', NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL),
(33, 'Bulgaria', NULL, NULL),
(34, 'Burkina Faso', NULL, NULL),
(35, 'Burundi', NULL, NULL),
(36, 'Cambodia', NULL, NULL),
(37, 'Cameroon', NULL, NULL),
(38, 'Canada', NULL, NULL),
(39, 'Cape Verde', NULL, NULL),
(40, 'Cayman Islands', NULL, NULL),
(41, 'Central African Republic', NULL, NULL),
(42, 'Chad', NULL, NULL),
(43, 'Chile', NULL, NULL),
(44, 'China', NULL, NULL),
(45, 'Christmas Island', NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'Colombia', NULL, NULL),
(48, 'Comoros', NULL, NULL),
(49, 'Democratic Republic of the Congo', NULL, NULL),
(50, 'Republic of Congo', NULL, NULL),
(51, 'Cook Islands', NULL, NULL),
(52, 'Costa Rica', NULL, NULL),
(53, 'Croatia (Hrvatska)', NULL, NULL),
(54, 'Cuba', NULL, NULL),
(55, 'Cyprus', NULL, NULL),
(56, 'Czech Republic', NULL, NULL),
(57, 'Denmark', NULL, NULL),
(58, 'Djibouti', NULL, NULL),
(59, 'Dominica', NULL, NULL),
(60, 'Dominican Republic', NULL, NULL),
(61, 'East Timor', NULL, NULL),
(62, 'Ecuador', NULL, NULL),
(63, 'Egypt', NULL, NULL),
(64, 'El Salvador', NULL, NULL),
(65, 'Equatorial Guinea', NULL, NULL),
(66, 'Eritrea', NULL, NULL),
(67, 'Estonia', NULL, NULL),
(68, 'Ethiopia', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', NULL, NULL),
(70, 'Faroe Islands', NULL, NULL),
(71, 'Fiji', NULL, NULL),
(72, 'Finland', NULL, NULL),
(73, 'France', NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL),
(75, 'French Guiana', NULL, NULL),
(76, 'French Polynesia', NULL, NULL),
(77, 'French Southern Territories', NULL, NULL),
(78, 'Gabon', NULL, NULL),
(79, 'Gambia', NULL, NULL),
(80, 'Georgia', NULL, NULL),
(81, 'Germany', NULL, NULL),
(82, 'Ghana', NULL, NULL),
(83, 'Gibraltar', NULL, NULL),
(84, 'Guernsey', NULL, NULL),
(85, 'Greece', NULL, NULL),
(86, 'Greenland', NULL, NULL),
(87, 'Grenada', NULL, NULL),
(88, 'Guadeloupe', NULL, NULL),
(89, 'Guam', NULL, NULL),
(90, 'Guatemala', NULL, NULL),
(91, 'Guinea', NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL),
(93, 'Guyana', NULL, NULL),
(94, 'Haiti', NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'Honduras', NULL, NULL),
(97, 'Hong Kong', NULL, NULL),
(98, 'Hungary', NULL, NULL),
(99, 'Iceland', NULL, NULL),
(100, 'India', NULL, NULL),
(101, 'Isle of Man', NULL, NULL),
(102, 'Indonesia', NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL),
(104, 'Iraq', NULL, NULL),
(105, 'Ireland', NULL, NULL),
(106, 'Israel', NULL, NULL),
(107, 'Italy', NULL, NULL),
(108, 'Ivory Coast', NULL, NULL),
(109, 'Jersey', NULL, NULL),
(110, 'Jamaica', NULL, NULL),
(111, 'Japan', NULL, NULL),
(112, 'Jordan', NULL, NULL),
(113, 'Kazakhstan', NULL, NULL),
(114, 'Kenya', NULL, NULL),
(115, 'Kiribati', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(118, 'Kosovo', NULL, NULL),
(119, 'Kuwait', NULL, NULL),
(120, 'Kyrgyzstan', NULL, NULL),
(121, 'Lao People\'s Democratic Republic', NULL, NULL),
(122, 'Latvia', NULL, NULL),
(123, 'Lebanon', NULL, NULL),
(124, 'Lesotho', NULL, NULL),
(125, 'Liberia', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', NULL, NULL),
(127, 'Liechtenstein', NULL, NULL),
(128, 'Lithuania', NULL, NULL),
(129, 'Luxembourg', NULL, NULL),
(130, 'Macau', NULL, NULL),
(131, 'North Macedonia', NULL, NULL),
(132, 'Madagascar', NULL, NULL),
(133, 'Malawi', NULL, NULL),
(134, 'Malaysia', NULL, NULL),
(135, 'Maldives', NULL, NULL),
(136, 'Mali', NULL, NULL),
(137, 'Malta', NULL, NULL),
(138, 'Marshall Islands', NULL, NULL),
(139, 'Martinique', NULL, NULL),
(140, 'Mauritania', NULL, NULL),
(141, 'Mauritius', NULL, NULL),
(142, 'Mayotte', NULL, NULL),
(143, 'Mexico', NULL, NULL),
(144, 'Micronesia, Federated States of', NULL, NULL),
(145, 'Moldova, Republic of', NULL, NULL),
(146, 'Monaco', NULL, NULL),
(147, 'Mongolia', NULL, NULL),
(148, 'Montenegro', NULL, NULL),
(149, 'Montserrat', NULL, NULL),
(150, 'Morocco', NULL, NULL),
(151, 'Mozambique', NULL, NULL),
(152, 'Myanmar', NULL, NULL),
(153, 'Namibia', NULL, NULL),
(154, 'Nauru', NULL, NULL),
(155, 'Nepal', NULL, NULL),
(156, 'Netherlands', NULL, NULL),
(157, 'Netherlands Antilles', NULL, NULL),
(158, 'New Caledonia', NULL, NULL),
(159, 'New Zealand', NULL, NULL),
(160, 'Nicaragua', NULL, NULL),
(161, 'Niger', NULL, NULL),
(162, 'Nigeria', NULL, NULL),
(163, 'Niue', NULL, NULL),
(164, 'Norfolk Island', NULL, NULL),
(165, 'Northern Mariana Islands', NULL, NULL),
(166, 'Norway', NULL, NULL),
(167, 'Oman', NULL, NULL),
(168, 'Pakistan', NULL, NULL),
(169, 'Palau', NULL, NULL),
(170, 'Palestine', NULL, NULL),
(171, 'Panama', NULL, NULL),
(172, 'Papua New Guinea', NULL, NULL),
(173, 'Paraguay', NULL, NULL),
(174, 'Peru', NULL, NULL),
(175, 'Philippines', NULL, NULL),
(176, 'Pitcairn', NULL, NULL),
(177, 'Poland', NULL, NULL),
(178, 'Portugal', NULL, NULL),
(179, 'Puerto Rico', NULL, NULL),
(180, 'Qatar', NULL, NULL),
(181, 'Reunion', NULL, NULL),
(182, 'Romania', NULL, NULL),
(183, 'Russian Federation', NULL, NULL),
(184, 'Rwanda', NULL, NULL),
(185, 'Saint Kitts and Nevis', NULL, NULL),
(186, 'Saint Lucia', NULL, NULL),
(187, 'Saint Vincent and the Grenadines', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'San Marino', NULL, NULL),
(190, 'Sao Tome and Principe', NULL, NULL),
(191, 'Saudi Arabia', NULL, NULL),
(192, 'Senegal', NULL, NULL),
(193, 'Serbia', NULL, NULL),
(194, 'Seychelles', NULL, NULL),
(195, 'Sierra Leone', NULL, NULL),
(196, 'Singapore', NULL, NULL),
(197, 'Slovakia', NULL, NULL),
(198, 'Slovenia', NULL, NULL),
(199, 'Solomon Islands', NULL, NULL),
(200, 'Somalia', NULL, NULL),
(201, 'South Africa', NULL, NULL),
(202, 'South Georgia South Sandwich Islands', NULL, NULL),
(203, 'South Sudan', NULL, NULL),
(204, 'Spain', NULL, NULL),
(205, 'Sri Lanka', NULL, NULL),
(206, 'St. Helena', NULL, NULL),
(207, 'St. Pierre and Miquelon', NULL, NULL),
(208, 'Sudan', NULL, NULL),
(209, 'Suriname', NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', NULL, NULL),
(211, 'Swaziland', NULL, NULL),
(212, 'Sweden', NULL, NULL),
(213, 'Switzerland', NULL, NULL),
(214, 'Syrian Arab Republic', NULL, NULL),
(215, 'Taiwan', NULL, NULL),
(216, 'Tajikistan', NULL, NULL),
(217, 'Tanzania, United Republic of', NULL, NULL),
(218, 'Thailand', NULL, NULL),
(219, 'Togo', NULL, NULL),
(220, 'Tokelau', NULL, NULL),
(221, 'Tonga', NULL, NULL),
(222, 'Trinidad and Tobago', NULL, NULL),
(223, 'Tunisia', NULL, NULL),
(224, 'Turkey', NULL, NULL),
(225, 'Turkmenistan', NULL, NULL),
(226, 'Turks and Caicos Islands', NULL, NULL),
(227, 'Tuvalu', NULL, NULL),
(228, 'Uganda', NULL, NULL),
(229, 'Ukraine', NULL, NULL),
(230, 'United Arab Emirates', NULL, NULL),
(231, 'United Kingdom', NULL, NULL),
(232, 'United States', NULL, NULL),
(233, 'United States minor outlying islands', NULL, NULL),
(234, 'Uruguay', NULL, NULL),
(235, 'Uzbekistan', NULL, NULL),
(236, 'Vanuatu', NULL, NULL),
(237, 'Vatican City State', NULL, NULL),
(238, 'Venezuela', NULL, NULL),
(239, 'Vietnam', NULL, NULL),
(240, 'Virgin Islands (British)', NULL, NULL),
(241, 'Virgin Islands (U.S.)', NULL, NULL),
(242, 'Wallis and Futuna Islands', NULL, NULL),
(243, 'Western Sahara', NULL, NULL),
(244, 'Yemen', NULL, NULL),
(245, 'Zambia', NULL, NULL),
(246, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, NULL, NULL),
(6, 'EUR', '€', 0.89, 0, NULL, NULL),
(7, 'INR', '₹', 74, 0, NULL, NULL),
(8, 'BDT', '৳', 86, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p>Hello {user_name},</p><p>Your Order Has Been Placed Successfilly.<br>Your Order Number is {transaction_number}.<br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To Omnimart', '<p>Hello ; {user_name},</p><p>You have successfully registered to {site_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You .<br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extra_settings`
--

CREATE TABLE `extra_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_t4_slider` tinyint(4) DEFAULT 1,
  `is_t4_featured_banner` tinyint(4) DEFAULT 1,
  `is_t4_specialpick` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t4_flashdeal` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t4_popular_category` tinyint(4) DEFAULT 1,
  `is_t4_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t4_blog_section` tinyint(4) DEFAULT 1,
  `is_t4_brand_section` tinyint(4) DEFAULT 1,
  `is_t4_service_section` tinyint(4) DEFAULT 1,
  `is_t3_slider` tinyint(4) DEFAULT 1,
  `is_t3_service_section` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t3_popular_category` tinyint(4) DEFAULT 1,
  `is_t3_flashdeal` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t3_pecialpick` tinyint(4) DEFAULT 1,
  `is_t3_brand_section` tinyint(4) DEFAULT 1,
  `is_t3_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t3_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_slider` tinyint(4) DEFAULT 1,
  `is_t2_service_section` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t2_flashdeal` tinyint(4) DEFAULT 1,
  `is_t2_new_product` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t2_featured_product` tinyint(4) DEFAULT 1,
  `is_t2_bestseller_product` tinyint(4) DEFAULT 1,
  `is_t2_toprated_product` tinyint(4) DEFAULT 1,
  `is_t2_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t2_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_brand_section` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_falsh` tinyint(4) DEFAULT 1,
  `is_t2_falsh` tinyint(4) DEFAULT 1,
  `is_t3_falsh` tinyint(4) DEFAULT 1,
  `is_t4_falsh` tinyint(4) DEFAULT 1,
  `is_t2_three_column_category` tinyint(4) DEFAULT 1,
  `is_t3_three_column_category` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_settings`
--

INSERT INTO `extra_settings` (`id`, `is_t4_slider`, `is_t4_featured_banner`, `is_t4_specialpick`, `is_t4_3_column_banner_first`, `is_t4_flashdeal`, `is_t4_3_column_banner_second`, `is_t4_popular_category`, `is_t4_2_column_banner`, `is_t4_blog_section`, `is_t4_brand_section`, `is_t4_service_section`, `is_t3_slider`, `is_t3_service_section`, `is_t3_3_column_banner_first`, `is_t3_popular_category`, `is_t3_flashdeal`, `is_t3_3_column_banner_second`, `is_t3_pecialpick`, `is_t3_brand_section`, `is_t3_2_column_banner`, `is_t3_blog_section`, `is_t2_slider`, `is_t2_service_section`, `is_t2_3_column_banner_first`, `is_t2_flashdeal`, `is_t2_new_product`, `is_t2_3_column_banner_second`, `is_t2_featured_product`, `is_t2_bestseller_product`, `is_t2_toprated_product`, `is_t2_2_column_banner`, `is_t2_blog_section`, `is_t2_brand_section`, `created_at`, `updated_at`, `is_t1_falsh`, `is_t2_falsh`, `is_t3_falsh`, `is_t4_falsh`, `is_t2_three_column_category`, `is_t3_three_column_category`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `details`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(15, 1, 'How can I purchase it ?', 'Voluptatibus enim, aut natus sint porro veniam atque obcaecati ullam, consequatur laboriosam laborum corrupti autem fugit', NULL, NULL, NULL, NULL),
(25, 1, 'Anim pariatur cliche reprehenderit ?', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus.', NULL, NULL, NULL, NULL),
(27, 1, 'Smartphones in Every Day Life ?', 'afdads', '[{\"value\":\"ad\"},{\"value\":\"fd\"}]', 'dfa', NULL, NULL),
(28, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing  ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, NULL, NULL),
(29, 3, 'But I must explain to you how all this mistaken idea ?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, cons', NULL, NULL, NULL, NULL),
(30, 3, 'Where does it come from ?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', NULL, NULL, NULL, NULL),
(31, 4, 'Where can I get some ?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', NULL, NULL, NULL, NULL),
(32, 4, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(33, 4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(34, 4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(35, 5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(36, 5, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(37, 5, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(38, 6, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(39, 6, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(40, 6, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(41, 7, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(42, 7, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(43, 7, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Electronics-', NULL, NULL, 1, NULL, NULL),
(3, 'Poroduct Delevery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Poroduct-Delevery-', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', 'It is a long established fact that a r', 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(5, 'Vat Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Vat-Information-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL),
(7, 'Offer Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Offer-Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_id`, `photo`, `created_at`, `updated_at`) VALUES
(79, 523, 'bZ7iScreenshot 2021-11-23 at 10.31.36 PM.png', NULL, NULL),
(85, 600, 'hW9r20220905_051403_0002.png', NULL, NULL),
(86, 600, 'Fcoh20220905_051403_0001.png', NULL, NULL),
(87, 600, 'X7qU20220905_051403_0003.png', NULL, NULL),
(88, 600, 'IRNf20220905_051403_0000.png', NULL, NULL),
(89, 600, '0YPv20220905_044829_0000.png', NULL, NULL),
(90, 601, 'L6bq20220906_022215_0000.jpg', NULL, NULL),
(91, 601, 'DJS120220906_002709_0001.png', NULL, NULL),
(92, 601, 'p1T620220905_053134_0000.jpg', NULL, NULL),
(93, 602, 'HZFY20220906_012134_0001.png', NULL, NULL),
(94, 602, 'DX3G20220906_002709_0000.png', NULL, NULL),
(95, 602, 'k80s20220906_002709_0003.png', NULL, NULL),
(96, 602, 'SBKg20220906_002709_0002.png', NULL, NULL),
(97, 602, 'tTvU20220906_002709_0001.png', NULL, NULL),
(98, 603, 'JoRo20220906_021106_0003.png', NULL, NULL),
(99, 603, 'lYCz20220906_021106_0002.png', NULL, NULL),
(100, 603, 'nieN20220906_021106_0000.png', NULL, NULL),
(101, 603, 'AK6j20220906_012134_0003.png', NULL, NULL),
(102, 604, 'XN3t20220906_021106_0000.png', NULL, NULL),
(103, 604, 'JukY20220906_021106_0002.png', NULL, NULL),
(104, 604, 'DjL020220906_012134_0001.png', NULL, NULL),
(105, 604, 'JoWI20220906_002709_0001.png', NULL, NULL),
(106, 605, 'Zzbb20220906_012134_0002.png', NULL, NULL),
(107, 605, 'psmM20220906_002709_0003.png', NULL, NULL),
(108, 605, 'MZim20220906_002709_0002.png', NULL, NULL),
(109, 605, 'lea620220906_002709_0001.png', NULL, NULL),
(110, 606, 'XAB520220906_012134_0000.png', NULL, NULL),
(111, 606, 'l7Em20220906_012134_0003.png', NULL, NULL),
(112, 606, 'YwIY20220906_002709_0002.png', NULL, NULL),
(113, 607, 'fx4020220906_022215_0000.jpg', NULL, NULL),
(114, 607, 'v4uS20220906_021106_0003.png', NULL, NULL),
(115, 607, 'KOVz20220906_012134_0003.png', NULL, NULL),
(116, 607, 'vhoV20220906_002709_0001.png', NULL, NULL),
(117, 608, 'GZ3X20220906_021106_0000.png', NULL, NULL),
(118, 608, '0krH20220906_021106_0003.png', NULL, NULL),
(119, 608, 'hadh20220906_012134_0003.png', NULL, NULL),
(120, 609, '7Ovf20220906_021106_0002.png', NULL, NULL),
(121, 609, 'RQ0Y20220906_021106_0001.png', NULL, NULL),
(122, 609, 'V2wJ20220906_012134_0001.png', NULL, NULL),
(123, 610, '2Jgc20220906_012134_0002.png', NULL, NULL),
(124, 610, 'Ll8t20220906_012134_0000.png', NULL, NULL),
(125, 610, 'Wcv220220906_002709_0000.png', NULL, NULL),
(126, 611, 'SQmQ20220906_021106_0001.png', NULL, NULL),
(127, 611, '77kX20220906_012134_0003.png', NULL, NULL),
(128, 611, 'W2qe20220906_012134_0001.png', NULL, NULL),
(129, 612, 'XNFC20220906_022215_0000.jpg', NULL, NULL),
(130, 612, 'nw1M20220906_021106_0000.png', NULL, NULL),
(131, 612, 'cdf320220906_021106_0002.png', NULL, NULL),
(132, 613, 'uffH20220906_012134_0001.png', NULL, NULL),
(133, 613, 'MZUc20220906_002709_0001.png', NULL, NULL),
(134, 613, 'Z5qI20220906_002709_0003.png', NULL, NULL),
(135, 614, 'KSMQ20220906_021106_0002.png', NULL, NULL),
(136, 614, 'gsZK20220906_002709_0003.png', NULL, NULL),
(137, 614, 'hZz020220906_002709_0002.png', NULL, NULL),
(138, 615, 'rnwI20220906_021106_0000.png', NULL, NULL),
(139, 615, 'NWwH20220906_021106_0001.png', NULL, NULL),
(140, 615, 'ZSdm20220906_021106_0002.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text DEFAULT NULL,
  `banner_secend` text DEFAULT NULL,
  `banner_third` text DEFAULT NULL,
  `popular_category` text DEFAULT NULL,
  `two_column_category` text DEFAULT NULL,
  `feature_category` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text DEFAULT NULL,
  `home_4_popular_category` text DEFAULT NULL,
  `hero_banner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`, `home_page4`, `home_4_popular_category`, `hero_banner`) VALUES
(1, '{\"title1\":\"Click to Call\",\"subtitle1\":\"Start Your Project\",\"firsturl1\":\"tel:+8801750726094\",\"title2\":\"Skoder Office\",\"subtitle2\":\"Our Virtual Office\",\"firsturl2\":\"https:\\/\\/office.skoder.co\",\"title3\":\"Join Skoder\",\"subtitle3\":\"Boost Up Career\",\"firsturl3\":\"https:\\/\\/join.skoder.co\",\"img1\":\"KTOg20220905_041334_0000.png\",\"img2\":\"Z1F420220905_041334_0001.png\",\"img3\":\"nAgt20220905_041334_0002.png\"}', '{\"title1\":\"BUILD\",\"subtitle1\":\"IDEA TO INDUSTRY\",\"url1\":\"#\",\"title2\":\"INNOVATE\",\"subtitle2\":\"TECH FOR FUTURE\",\"url2\":\"#\",\"title3\":\"GROW\",\"subtitle3\":\"PLATFORM FOR ALL\",\"url3\":\"#\",\"img1\":\"aLRu20220905_040333_0000.png\",\"img2\":\"gnZw20220905_040333_0001.png\",\"img3\":\"eQsB20220905_040333_0002.png\"}', '{\"title1\":\"BUSINESS PROFILE\",\"subtitle1\":\"HAVE A LOOK TO OUR\",\"url1\":\"profile.pdf\",\"title2\":\"HAPPY CUSTOMERS\",\"subtitle2\":\"INNOVATION WITH\",\"url2\":\"blog\\/customers\",\"img1\":\"ubLm20220905_031855_0000.png\",\"img2\":\"Twxc20220905_031855_0001.png\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":null,\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null,\"childcategory_id4\":null}', '{\"category_id1\":null,\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":null,\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":null,\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":null,\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":null,\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL, '{\"label1\":\"Skoder Lab\",\"url1\":\"#\",\"label2\":\"Skoder Studio\",\"url2\":\"#\",\"label3\":\"ENTERPRISE AND STARTUP SOLUTION\",\"url3\":\"#\",\"label4\":\"Skoder Academy\",\"url4\":\"#\",\"label5\":\"Skoder Store\",\"url5\":\"#\",\"img3\":\"5abu20220906_022215_0000.jpg\",\"img4\":\"GVUM20220906_021106_0001.png\",\"img5\":\"Hvbe20220906_021106_0003.png\",\"img1\":\"AaAj20220906_021106_0002.png\",\"img2\":\"zNuH20220906_012134_0000.png\"}', 'null', '{\"title1\":\"Just a Call\",\"subtitle1\":\"Start Building Your Tech\",\"url1\":\"tel:+8801750726094\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"ONMF222.jpg\",\"img2\":\"24gX1111.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT 0,
  `subcategory_id` int(11) DEFAULT 0,
  `childcategory_id` int(11) DEFAULT 0,
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `sort_details` text DEFAULT NULL,
  `specification_name` text DEFAULT NULL,
  `specification_description` text DEFAULT NULL,
  `is_specification` tinyint(4) DEFAULT 0,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `discount_price` double DEFAULT 0,
  `previous_price` double DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_type` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `file_type` enum('file','link') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text DEFAULT NULL,
  `license_key` text DEFAULT NULL,
  `item_type` varchar(255) DEFAULT 'normal',
  `thumbnail` varchar(255) DEFAULT NULL,
  `affiliate_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(600, 28, NULL, NULL, 3, NULL, 'Enterprise Resources Automation', 'Enterprise-Resources-Automation', 'enterprise-automation', 'erp,enterprise,automation,crm,hrm,pos,inventory,management system', NULL, 'Skoder Enterprise Resources Automation Service provides Complete Solution for your organisation to boost up productivity', NULL, NULL, 0, '<p>Skoder Enterprise Resources Automation Service provides Complete Solution for your organisation to boost up productivity<br></p>', '166237486520220905_053134_0000.jpg', 1162.7906976744, 0, 9, '', NULL, 1, 'feature', NULL, NULL, NULL, NULL, '2022-09-05 14:47:45', '2022-09-15 01:19:20', NULL, NULL, 'normal', 'OaiKsPs2.jpg', NULL),
(601, 28, NULL, NULL, 3, NULL, 'Accounting and Finance Automation', 'Accounting-and-Finance-Automation', 'skdr-entr-fin-auto', 'accounting,finance,erp', NULL, 'Skoder Enterprise Financial Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p><span style=\"color: rgb(0, 0, 0);\">Skoder Enterprise Financial Automation Service provides Complete Solution for your organisation to boost up productivity</span><br></p>', '166323175920220906_021106_0002.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'feature', NULL, NULL, NULL, NULL, '2022-09-15 12:49:19', '2022-09-15 16:11:12', NULL, NULL, 'normal', 'dbbuz1a2.png', NULL),
(602, 28, NULL, NULL, 3, NULL, 'Enterprise HR Automation', 'Enterprise-HR-Automation', 'skdr-entr-auto-hr', 'hrm,enterprise,software,attendance', NULL, 'Skoder Enterprise HR Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p><span style=\"color: rgb(0, 0, 0);\">Skoder Enterprise HR Automation Service provides Complete Solution for your organisation to boost up productivity</span><br></p>', '166324361320220906_012134_0002.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'top', NULL, NULL, NULL, NULL, '2022-09-15 16:06:53', '2022-09-15 16:07:17', NULL, NULL, 'normal', 'W3YBjTVu.png', NULL),
(603, 28, NULL, NULL, 3, NULL, 'Project Collaboration Automation', 'Project-Collaboration-Automation', 'skdr-entr-auto-prjct', 'enterprise,software,attendance,project management,pmp', NULL, 'Skoder Enterprise Project Collaboration Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p><span style=\"color: rgb(0, 0, 0);\">Skoder Enterprise Project Collaboration Automation Service provides Complete Solution for your organisation to boost up productivity</span><br></p>', '166324384520220906_021106_0001.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'top', NULL, NULL, NULL, NULL, '2022-09-15 16:10:45', '2022-09-15 16:10:59', NULL, NULL, 'normal', 'CfrhCbRa.png', NULL),
(604, 28, NULL, NULL, 3, NULL, 'Customer Relationship Automation', 'Customer-Relationship-Automation', 'skdr-entr-auto-crm', 'crm,customer,erp', NULL, 'Skoder Enterprise Customer Relationship Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p><span style=\"color: rgb(0, 0, 0);\">Skoder Enterprise Customer Relationship Automation Service provides Complete Solution for your organisation to boost up productivity</span><br></p>', '166324519320220906_021106_0000.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'best', NULL, NULL, NULL, NULL, '2022-09-15 16:33:13', '2022-09-15 16:33:30', NULL, NULL, 'normal', 'EEglm0mM.png', NULL),
(605, 28, NULL, NULL, 3, NULL, 'Enterprise Sales Automation', 'Enterprise-Sales-Automation', 'skdr-entr-auto-sale', 'sales,stock,inventory,software,warehouse', NULL, 'Skoder Enterprise Sales Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p><span style=\"color: rgb(0, 0, 0);\">Skoder Enterprise Sales Automation Service provides Complete Solution for your organisation to boost up productivity</span><br></p>', '166324540120220906_021106_0003.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'feature', NULL, NULL, NULL, NULL, '2022-09-15 16:36:41', '2022-09-15 16:36:54', NULL, NULL, 'normal', 'B0XgjsgR.png', NULL),
(606, 28, NULL, NULL, 3, NULL, 'University Resources Automation', 'University-Resources-Automation', 'skdr-aca-auto-ura', 'university,ura,ums,school,college,academic', NULL, 'Skoder University Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p>Skoder University Automation Service provides Complete Solution for your organisation to boost up productivity<br></p>', '166324561020220906_002709_0001.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'feature', NULL, NULL, NULL, NULL, '2022-09-15 16:40:10', '2022-09-15 16:40:23', NULL, NULL, 'normal', 'nCU59CwT.png', NULL),
(607, 28, NULL, NULL, 3, NULL, 'Virtual Learning Automation', 'Virtual-Learning-Automation', 'skdr-auto-virtual-learning', 'vla,lms,academy,virtual learning', NULL, 'Skoder Virtual Learning Automation Service provides Complete Solution for your organisation to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Virtual Learning Automation Service provides Complete Solution for your organisation to boost up productivity<br></p>', '166324604120220906_021106_0001.png', 1162.7906976744, 0, 100000, '', NULL, 1, 'new', NULL, NULL, NULL, NULL, '2022-09-15 16:47:21', '2022-09-15 16:47:38', NULL, NULL, 'normal', '5fLUkDsV.png', NULL),
(608, 29, NULL, NULL, 3, NULL, 'Business Case Study', 'Business-Case-Study', 'skdr-strtup-case-study', 'startup,business,case study,case-study,service', NULL, 'Business Case Study of Skoder Startup Solution is the leading platform for developing case-based teaching & learning capacity and delivering research tailored services to the business community native to Bangladesh.', '[null]', '[null]', 1, '<p class=\"MsoNormal\"><span style=\"line-height: 107%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Business Case Study of\r\nSkoder Startup Solution industry, and academia engage in building a\r\ncollaborative knowledge community while promoting Bangladeshi brands and\r\nbusinesses in the global market. By doing so, Business Case Study maintains the\r\nhighest intellectual integrity and standards in resource creation, follows\r\ntransparency and confidentiality protocols where appropriate, and promotes\r\nsustainable practices to businesses and communities. Consequently, Business\r\nCase Study is now the destination for Business case development and research\r\nservices in Bangladesh which welcomes business cases from industry and\r\nuniversities.</span><b><span style=\"font-size:18.0pt;line-height:107%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></b></p>', '166324716120220906_012134_0001.png', 116.27906976744, 0, 100000, 'Business Case Study of Skoder Startup Solution is the leading platform for developing case-based teaching & learning capacity and delivering research tailored services to the business community native to Bangladesh.', 'Business Case Study of Skoder Startup Solution industry, and academia engage in building a collaborative knowledge community while promoting Bangladeshi brands and businesses in the global market. By doing so, Business Case Study maintains the highest intellectual integrity and standards in resource creation, follows transparency and confidentiality protocols where appropriate, and promotes sustainable practices to businesses and communities. Consequently, Business Case Study is now the destination for Business case development and research services in Bangladesh which welcomes business cases from industry and universities.', 1, 'flash_deal', '12/31/2022', NULL, NULL, NULL, '2022-09-15 17:06:01', '2023-01-08 19:08:44', NULL, NULL, 'normal', '6geQNSQo.png', NULL),
(609, 29, NULL, NULL, 3, NULL, 'Business Tech Study', 'Business-Tech-Study', 'skdr-strtp-biz-tech-stdy', 'tech,it consultenvy,tech study,startup,business', NULL, 'Business Case Study of Skoder Startup Solution is the leading platform for developing case-based teaching & learning capacity and delivering research tailored services to the business community native to Bangladesh.', '[null]', '[null]', 1, '<p class=\"MsoNormal\"><span style=\"line-height: 107%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Business Case Study of\r\nSkoder Startup Solution industry, and academia engage in building a\r\ncollaborative knowledge community while promoting Bangladeshi brands and\r\nbusinesses in the global market. By doing so, Business Case Study maintains the\r\nhighest intellectual integrity and standards in resource creation, follows\r\ntransparency and confidentiality protocols where appropriate, and promotes\r\nsustainable practices to businesses and communities. Consequently, Business\r\nCase Study is now the destination for Business case development and research\r\nservices in Bangladesh which welcomes business cases from industry and\r\nuniversities.</span><b><span style=\"font-size:18.0pt;line-height:107%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></b></p>', '16632689711_20220907_032924_0000.jpg', 116.27906976744, 0, 1000, 'Business Case Study of Skoder Startup Solution is the leading platform for developing case-based teaching & learning capacity and delivering research tailored services to the business community native to Bangladesh.', 'Business Case Study of Skoder Startup Solution industry, and academia engage in building a collaborative knowledge community while promoting Bangladeshi brands and businesses in the global market. By doing so, Business Case Study maintains the highest intellectual integrity and standards in resource creation, follows transparency and confidentiality protocols where appropriate, and promotes sustainable practices to businesses and communities. Consequently, Business Case Study is now the destination for Business case development and research services in Bangladesh which welcomes business cases from industry and universities.', 1, 'new', NULL, NULL, NULL, NULL, '2022-09-15 23:09:31', '2023-01-08 19:02:26', NULL, NULL, 'normal', '1La9yATd.jpg', NULL),
(610, 29, NULL, NULL, 3, NULL, 'Pitch Deck Preparation', 'Pitch-Deck-Preparation', 'skdr-strtp-ptchdck-prep', 'pitch,pitch deck,startup', NULL, 'Skoder Startup Pitch Deck Preparation Service provides Complete Solution for your organisation and startup to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Startup Pitch Deck Preparation Service provides Complete Solution for your organisation and startup to boost up productivity<br></p>', '166326917920220905_043008_0007.png', 116.27906976744, 0, 1000, '', NULL, 1, 'top', NULL, NULL, NULL, NULL, '2022-09-15 23:12:59', '2022-09-15 23:13:21', NULL, NULL, 'normal', 'Tso8Sw1F.png', NULL),
(611, 29, NULL, NULL, 3, NULL, 'Business Profile Development', 'Business-Profile-Development', 'skdr-strtp-biz-prf-dvlp', 'startup,business,profile', NULL, 'Skoder Startup and Business Profile Development Service provides Complete Solution for your organisation and startup to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Startup and Business Profile Development Service provides Complete Solution for your organisation and startup to boost up productivity<br></p>', '166326943720220905_043008_0001.png', 116.27906976744, 0, 999, '', NULL, 1, 'top', NULL, NULL, NULL, NULL, '2022-09-15 23:17:17', '2022-11-15 14:24:22', NULL, NULL, 'normal', 'NA70yI3o.png', NULL),
(612, 29, NULL, NULL, 3, NULL, 'Portfolio Website Development', 'Portfolio-Website-Development', 'skdr-strtp-prtflo-web-dev', '', NULL, 'Skoder Startup and Business Portfolio Website development service helps organisations to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Startup and Business Portfolio Website development service helps organisations to boost up productivity<br></p>', '166333823320220906_012134_0003.png', 1162.7906976744, 0, 10000, '', NULL, 1, 'feature', NULL, NULL, NULL, NULL, '2022-09-16 18:23:53', '2022-09-16 18:24:15', NULL, NULL, 'normal', 'F09uIZfZ.png', NULL),
(613, 29, NULL, NULL, 3, NULL, 'Startup Pitch Videography', 'Startup-Pitch-Videography', 'skdr-strtp-ptch-vdo', 'startup,pitch,video,pitch deck,profile,fund raise', NULL, 'Skoder Startup Pitch Videography service helps organisations to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Startup Pitch Videography service helps organisations to boost up productivity<br></p>', '166333883520220905_043008_0005.png', 116.27906976744, 0, 10000, '', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2022-09-16 18:33:55', '2022-09-16 18:33:55', NULL, NULL, 'normal', '897KhJeJ.png', NULL),
(614, 29, NULL, NULL, 3, NULL, 'Startup Graphics Bundle', 'Startup-Graphics-Bundle', 'skdr-strtp-grfx-bndl', 'startup,graphics,design,cover,logo,visiting card,brochure,poster', NULL, 'Skoder Startup Graphics Service Bundle helps organisations to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Startup Graphics Service Bundle helps organisations to boost up productivity<br></p>', '166335258720220906_021106_0000.png', 116.27906976744, 0, 10000, '', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2022-09-16 22:23:07', '2022-09-16 22:23:07', NULL, NULL, 'normal', 'I0QlvAfl.png', NULL),
(615, 29, NULL, NULL, 3, NULL, 'Digital Marketing Campaign - Facebook, Google. YouTube, LinkedIn', 'Digital-Marketing-Campaign---Facebook--Google--YouTube--LinkedIn', 'skdr-strtp-dgtl-mkt-cmp', 'startup,business,digital,digital marketing,marleting,facebook,google,youtube,linkedin', NULL, 'Skoder Startup and Business Digital Marketing Campaign via Facebook, Google, YouTube and LinkedIn helps organisations to boost up productivity', '[null]', '[null]', 1, '<p>Skoder Startup and Business Digital Marketing Campaign via Facebook, Google, YouTube and LinkedIn helps organisations to boost up productivity<br></p>', '166335289420220906_022215_0000.jpg', 116.27906976744, 0, 1000, '', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2022-09-16 22:28:14', '2022-09-16 22:28:14', NULL, NULL, 'normal', 'v13j3sQe.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`, `type`) VALUES
(1, 'English', '1647794127lN7PfPAc.json', '1647794127lN7PfPAc', 1, 0, NULL, NULL, 'Website'),
(2, 'Arabic', '1647792286wzAqXQOx.json', '1647792286wzAqXQOx', 0, 1, NULL, NULL, 'Website'),
(3, 'English', '1647794074eEeCbfDD.json', '1647794074eEeCbfDD', 1, 0, NULL, NULL, 'Dashboard'),
(4, 'Arabic', '1638870927JMqjbCXv.json', '1638870927JMqjbCXv', 0, 1, NULL, NULL, 'Dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', '2021-12-03 06:33:29', '2021-12-03 06:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3),
(43, '2021_09_29_075836_add_theme_to_settings_table', 4),
(44, '2021_09_30_103035_google_chapcha_to_settings__table', 5),
(45, '2021_10_04_141643_add_currency_deraction_to_settings_table', 6),
(46, '2021_10_08_135417_add_theme_field_to_sliders_table', 7),
(51, '2021_10_09_153059_license_to_items_table', 8),
(56, '2021_10_09_173004_remove_item_type_to_items_table', 9),
(57, '2021_10_09_173038_set_item_type_to_items_table', 9),
(58, '2021_10_10_051502_add_scrript_to_settings_table', 10),
(59, '2021_10_10_142339_thumbnail_to_items_table', 11),
(61, '2021_10_10_163455_home_page4_to_home_cutomizes_table', 12),
(62, '2021_10_11_090243_create_extra_settings_table', 13),
(63, '2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table', 14),
(64, '2021_10_13_100048_create_sitemaps_table', 15),
(65, '2021_10_15_140708_add_type_to_promo_codes_table', 16),
(66, '2021_10_15_163958_add_announcement_link_to_settings_table', 17),
(68, '2021_11_21_143624_add_shop_extra_field_to_settings_table', 19),
(69, '2021_11_20_105052_add_stock_to_attribute_options_table', 20),
(71, '2021_11_21_151422_add_home_page_title_to_settings_table', 21),
(72, '2021_11_23_141528_add_type_to_languages_table', 22),
(73, '2021_11_23_144810_add_privacy_terms_to_settings_table', 23),
(74, '2021_11_23_182026_add_guest_checkout_to_settings_table', 24),
(76, '2021_11_24_144859_add_guest_hero_banner_to_home_cutomizes_table', 25),
(77, '2021_11_26_163222_add_affiliate_link_to_items_table', 26),
(78, '2021_11_27_113624_add_css_field_to_settings_table', 27),
(79, '2021_12_05_161222_add_flash_section_to_extra_settings_table', 28),
(82, '2021_12_05_165840_add_popup_field_to_settings_table', 29),
(83, '2021_12_06_141255_add_3column_section_to_extra_settings_table', 30),
(84, '2022_01_03_141239_add_currency_seperator_to_settings_table', 31),
(85, '2022_01_04_142738_create_states_table', 32),
(86, '2022_01_04_145532_add_state_id_to_users_table', 33),
(88, '2022_01_04_161647_add_state_id_to_orders_table', 34),
(89, '2022_01_06_155345_add_disqus_to_settings_table', 35),
(90, '2022_01_16_143429_add_type_to_states_table', 36),
(91, '2022_01_16_153254_add_state_to_orders_table', 37),
(92, '2022_03_01_162121_add_is_decemial_to_settings_table', 38),
(93, '2022_03_20_154807_update_column_to_home_cutomizes_table', 39);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 133, NULL, 0, '2022-09-05 14:54:00', '2022-09-05 14:54:00'),
(2, NULL, 11, 0, '2022-11-02 00:21:54', '2022-11-02 00:21:54'),
(3, NULL, 12, 0, '2022-11-10 17:06:20', '2022-11-10 17:06:20'),
(4, 134, NULL, 0, '2022-11-15 14:24:22', '2022-11-15 14:24:22'),
(5, NULL, 13, 0, '2022-11-18 04:43:50', '2022-11-18 04:43:50'),
(6, NULL, 14, 0, '2022-12-12 01:08:03', '2022-12-12 01:08:03'),
(7, NULL, 15, 0, '2022-12-12 20:54:25', '2022-12-12 20:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text DEFAULT NULL,
  `currency_sign` varchar(255) DEFAULT NULL,
  `currency_value` varchar(255) DEFAULT NULL,
  `discount` text DEFAULT NULL,
  `shipping` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `charge_id` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `shipping_info` text DEFAULT NULL,
  `billing_info` text DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_price` double DEFAULT 0,
  `state` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`, `state_price`, `state`) VALUES
(133, 0, '{\"600-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Enterprise Resources Automation\",\"slug\":\"Enterprise-Resources-Automation\",\"qty\":\"1\",\"price\":100000,\"main_price\":\"100000\",\"photo\":\"166237486520220905_053134_0000.jpg\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":\"0\",\"minimum_price\":\"1000\",\"is_condition\":\"1\",\"status\":\"1\",\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'bhqohjTDCn', 'Pending', '{\"ship_first_name\":\"Sk\",\"ship_last_name\":\"Abir\",\"ship_email\":\"skabir.ice@gmail.com\",\"ship_phone\":\"+8801750726094\",\"ship_company\":\"Skoder Technologies Limited\",\"ship_address1\":\"House#63, Road#6, Block-E, Pallabi\",\"ship_address2\":\"Mirpur,Dhaka-1216\",\"ship_zip\":\"1216\",\"ship_city\":\"Mirpur\",\"ship_country\":\"Bangladesh\"}', '{\"_token\":\"vrzHXcKwVSg8NZaiwCtRET8zCcChErVFklZh8xlv\",\"bill_first_name\":\"Sk\",\"bill_last_name\":\"Abir\",\"bill_email\":\"skabir.ice@gmail.com\",\"bill_phone\":\"+8801750726094\",\"bill_company\":\"Skoder Technologies Limited\",\"bill_address1\":\"House#63, Road#6, Block-E, Pallabi\",\"bill_address2\":\"Mirpur,Dhaka-1216\",\"bill_zip\":\"1216\",\"bill_city\":\"Mirpur\",\"bill_country\":\"Bangladesh\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-09-05 14:54:00', '2022-09-05 14:54:00', 0, NULL),
(134, 0, '{\"611-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Business Profile Development\",\"slug\":\"Business-Profile-Development\",\"qty\":\"1\",\"price\":116.27906976744,\"main_price\":\"116.27906976744\",\"photo\":\"166326943720220905_043008_0001.png\",\"type\":\"normal\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '৳', '86', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":\"20\",\"minimum_price\":\"0\",\"is_condition\":\"0\",\"status\":\"1\",\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0, NULL, 'DvAhxeJGep', 'Pending', '{\"ship_first_name\":\"Md\",\"ship_last_name\":\"Kamal Hossain\",\"ship_email\":\"spidernetkamal@gmail.com\",\"ship_phone\":\"01977743373\",\"ship_company\":\"Kamal Fashion\",\"ship_address1\":\"Moghbazar\",\"ship_address2\":\"Moghbazar\",\"ship_zip\":\"11233\",\"ship_city\":\"Dhaka\",\"ship_country\":\"Choose Country\"}', '{\"_token\":\"6UCA6T3VQu3gve3Xnavbmv9D9QyRR3SYFUnjkrZ3\",\"bill_first_name\":\"Md\",\"bill_last_name\":\"Kamal Hossain\",\"bill_email\":\"spidernetkamal@gmail.com\",\"bill_phone\":\"01977743373\",\"bill_company\":\"Kamal Fashion\",\"bill_address1\":\"Moghbazar\",\"bill_address2\":\"Moghbazar\",\"bill_zip\":\"11233\",\"bill_city\":\"Dhaka\",\"bill_country\":\"Choose Country\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-11-15 14:24:22', '2022-11-15 14:24:22', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(7, 'About Us', 'about-us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 1, NULL, NULL),
(10, 'Privacy Policy', 'privacy-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 1, NULL, NULL),
(11, 'Terms & Service', 'terms-and-service', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 1, NULL, NULL),
(12, 'Return Policy', 'return-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 1, NULL, NULL),
(14, 'How It Works', 'How-It-Works', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `unique_keyword` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(14, 'Stripe', '{\"key\":\"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa\",\"secret\":\"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh\"}', 'stripe', '1601930611stripe-logo-blue.png', 'Stripe is the faster & safer way to send money. Make an online payment via Stripe.', 1, NULL, NULL),
(15, 'Paypal', '{\"client_id\":\"AUtv8KISHG9l9rmlXB0cSLjt6A91IsGfPACeRreuRpEV3GR-ZRnxIxXnUVKNYIfqVXrxs2uPlGDot0Cc\",\"client_secret\":\"EEdtOBI_NjI2bJzLSIzumsN_xSI7htn8qyAcRz0mvO8Emv-7CdfQeqxNZlDhiDAd0ZhV49e4sOhjtwho\",\"check_sandbox\":1}', 'paypal', '16218678201601930675paypal-784404_960_720.png', 'PayPal is the faster & safer way to send money. Make an online payment via PayPal.', 1, NULL, NULL),
(17, 'Mollie', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\"}', 'mollie', '1621785282Mollie.jpeg', 'Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.', 1, NULL, NULL),
(18, 'Paytm', '{\"mercent\":\"tkogux49985047638244\",\"client_secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"is_paytm\":\"1\",\"paytm_mode\":\"sandbox\"}', 'paytm', '1631978815images.png', 'Paytm is the faster & safer way to send money. Make an online payment via Paytm.', 1, NULL, NULL),
(19, 'SSLCommerz', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"check_sandbox\":1}', 'sslcommerz', '1631978716ssl-thumb.jpeg', 'SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.', 1, NULL, NULL),
(24, 'Mercadopago', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"check_sandbox\":1}', 'mercadopago', '1633085560unnamed.jpeg', 'Mercadopago is the faster & safer way to send money. Make an online payment via Mercadopago.', 1, NULL, NULL),
(25, 'Authorize.Net', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"check_sandbox\":1}', 'authorize', '1633100640seal2.png', 'Authorize.Net is the faster & safer way to send money. Make an online payment via Authorize.Net', 1, NULL, NULL),
(26, 'Paystack', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"geniusdevs@gmail.com\"}', 'paystack', '1634237632paystack-opengraph.png', 'Paystack is the faster & safer way to send money. Make an online payment via Paystack.', 1, NULL, NULL),
(27, 'Bank Transfer', NULL, 'bank', '1638530860pngwing.com (1).png', '<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Jhon Due</p><p>Account Email : demo@gmail.com</p>', 1, NULL, NULL),
(28, 'Razorpay', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\"}', 'razorpay', '1637992878download.jpeg', 'Rezorpay is the faster & safer way to send money. Make an online payment via Rezorpay.', 1, NULL, NULL),
(29, 'Flutter Wave', '{\"public_key\":\"FLWPUBK_TEST-d54c4c69ef195e721af2139e7dfe1a23-X\",\"secret_key\":\"FLWSECK_TEST-86c6484143e62c4c9bc2e8aa08a07c92-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '1637998096download.png', 'Flutterwave is the faster & safer way to send money. Make an online payment via Flutterwave.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Flash Discount', 'ironman', 95, 2, 1, NULL, NULL, NULL),
(2, 'Halloween Carnival', 'superman', 96, 5, 1, NULL, NULL, NULL),
(3, 'Fest Carnival', 'loki', 94, 10, 1, NULL, NULL, 'amount');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `review` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'test', '[\"Manage Categories\",\"Manage Products\",\"Manage Orders\",\"Transactions\",\"Ecommerce\",\"Customer List\",\"Manages Tickets\",\"Manage Site\",\"Manage Faqs Contents\",\"Manage Blogs\",\"Manages Pages\",\"Subscribers List\",\"Manage System User\"]', '2021-12-05 10:24:27', '2021-12-05 10:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'CUSTOMER CENTRIC', 'Growing together with cooperative culture', '166233073420220905_043008_0002.png', NULL, NULL),
(32, '24x7 SUPPORT', 'Loving the relationships with customer community', '166233071120220905_043008_0005.png', NULL, NULL),
(33, 'BUDGET FRIENDLY', 'Saving customers cost is the most valuable service', '166233067220220905_043008_0007.png', NULL, NULL),
(34, 'QUALITY SERVICES', 'Providing quality services for a better product', '166233065020220905_043008_0004.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `loader` varchar(255) DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT 1,
  `feature_image` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT 0,
  `email_host` varchar(255) DEFAULT NULL,
  `email_port` varchar(255) DEFAULT NULL,
  `email_encryption` varchar(255) DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `email_pass` varchar(255) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `overlay` text DEFAULT NULL,
  `google_analytics_id` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `is_shop` tinyint(4) DEFAULT 1,
  `is_blog` tinyint(4) DEFAULT 1,
  `is_faq` tinyint(4) DEFAULT 1,
  `is_contact` tinyint(4) DEFAULT 1,
  `facebook_check` tinyint(4) DEFAULT 1,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_client_secret` varchar(255) DEFAULT NULL,
  `facebook_redirect` varchar(255) DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT 1,
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `google_redirect` varchar(255) DEFAULT NULL,
  `min_price` double DEFAULT 0,
  `max_price` double DEFAULT 100000,
  `footer_phone` varchar(255) DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `footer_email` varchar(255) DEFAULT NULL,
  `footer_gateway_img` varchar(255) DEFAULT NULL,
  `social_link` text DEFAULT NULL,
  `friday_start` varchar(255) DEFAULT NULL,
  `friday_end` varchar(255) DEFAULT NULL,
  `satureday_start` varchar(255) DEFAULT NULL,
  `satureday_end` varchar(255) DEFAULT NULL,
  `copy_right` varchar(255) DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT 1,
  `is_category` tinyint(4) DEFAULT 1,
  `is_product` tinyint(4) DEFAULT 1,
  `is_top_banner` tinyint(4) DEFAULT 1,
  `is_recent` tinyint(4) DEFAULT 1,
  `is_top` tinyint(4) DEFAULT 1,
  `is_best` tinyint(4) DEFAULT 1,
  `is_flash` tinyint(4) DEFAULT 1,
  `is_brand` tinyint(4) DEFAULT 1,
  `is_blogs` tinyint(4) DEFAULT 1,
  `is_campaign` tinyint(4) DEFAULT 1,
  `is_brands` tinyint(4) DEFAULT 1,
  `is_bottom_banner` tinyint(4) DEFAULT 1,
  `is_service` tinyint(4) DEFAULT 1,
  `campaign_title` varchar(255) DEFAULT NULL,
  `campaign_end_date` varchar(255) DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT 1,
  `twilio_sid` varchar(255) DEFAULT NULL,
  `twilio_token` varchar(255) DEFAULT NULL,
  `twilio_form_number` varchar(255) DEFAULT NULL,
  `twilio_country_code` varchar(255) DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT 1,
  `announcement` varchar(255) DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `is_maintainance` tinyint(4) DEFAULT 1,
  `maintainance_image` varchar(255) DEFAULT NULL,
  `maintainance_text` text DEFAULT NULL,
  `is_twilio` tinyint(4) DEFAULT 0,
  `twilio_section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT 1,
  `is_highlighted` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT 1,
  `is_featured_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT 1,
  `theme` varchar(255) DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT 0,
  `currency_direction` tinyint(4) DEFAULT 1,
  `google_analytics` text DEFAULT NULL,
  `google_adsense` text DEFAULT NULL,
  `facebook_pixel` text DEFAULT NULL,
  `facebook_messenger` text DEFAULT NULL,
  `is_google_analytics` tinyint(4) DEFAULT 0,
  `is_google_adsense` tinyint(4) DEFAULT 0,
  `is_facebook_pixel` tinyint(4) DEFAULT 0,
  `is_facebook_messenger` tinyint(4) DEFAULT 0,
  `announcement_link` text DEFAULT NULL,
  `is_attribute_search` tinyint(4) DEFAULT 1,
  `is_range_search` tinyint(4) DEFAULT 1,
  `view_product` int(11) DEFAULT 12,
  `home_page_title` varchar(255) DEFAULT 'Home',
  `is_privacy_trams` tinyint(4) DEFAULT 1,
  `policy_link` varchar(255) DEFAULT '''#''',
  `terms_link` varchar(255) DEFAULT '''#''',
  `is_guest_checkout` tinyint(4) DEFAULT 1,
  `custom_css` text DEFAULT NULL,
  `announcement_title` varchar(255) DEFAULT NULL,
  `announcement_type` varchar(255) DEFAULT 'banner',
  `is_cookie` tinyint(4) DEFAULT 1,
  `cookie_text` varchar(255) DEFAULT NULL,
  `announcement_details` text DEFAULT NULL,
  `decimal_separator` varchar(255) DEFAULT '.',
  `thousand_separator` varchar(255) DEFAULT ',',
  `disqus` text DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `is_decimal` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`, `theme`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `recaptcha`, `currency_direction`, `google_analytics`, `google_adsense`, `facebook_pixel`, `facebook_messenger`, `is_google_analytics`, `is_google_adsense`, `is_facebook_pixel`, `is_facebook_messenger`, `announcement_link`, `is_attribute_search`, `is_range_search`, `view_product`, `home_page_title`, `is_privacy_trams`, `policy_link`, `terms_link`, `is_guest_checkout`, `custom_css`, `announcement_title`, `announcement_type`, `is_cookie`, `cookie_text`, `announcement_details`, `decimal_separator`, `thousand_separator`, `disqus`, `is_disqus`, `is_decimal`) VALUES
(1, 'Skoder', '1662256171skoder - Copy.png', '1662256201favicon80x80.png', '1668117119c-s-d-s.gif', 1, '1600622296topic.jpg', '#FF2D2D', 1, 'smtp.mailtrap.io', '2525', 'tls', 'ab7d3fde364e5f', 'aac3f52ada3308', 'omnimartshop@email.com', 'Magicshop', 'contact@email.com', '4.0', NULL, 'UA-106757798-1', 'startup,services,digital services,startup bangladesh,idea project,startup services,erp software,best erp software in bangladesh,best erp software in bangladesh 2022,how to start a startup,ecommerce business inbangladesh,web development cost,web development pricingin bangladesh,app development,android app development,ios app development,flutter app development in bangladesh,skoder technologies,skoder,university management system,university erp,accounting software,accounting software price in bangladesh,accounting software price in bangladesh2022', 'Skoder - Innovate Creation\r\nTech Opportunities for your business.\r\nSkoder helps to build your idea to become an enterprise.\r\nSkoder Technologies is the latest frontier of the new era of technology. We have a brief\r\nhistory behind its birth. Skoder Technologies was first launched in 2018 from a\r\ntechnological passion of a young team. Our leaders thought to make a difference to the\r\nworld with advanced technologies', 0, 1, 0, 1, 1, '643929170080071', '038b2100dff9a2a684c85959c0accf66', 'https://localhost/my/omnimart/auth/facebook/callback', 1, '915191002660-6hjno4cgnbcm5p1kb3t692trh7pc6ngh.apps.googleusercontent.com', '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', 'http://localhost/my/omnimart/auth/google/callback', 0, 1000000, '01979891996', 'E-14/X, ICT Tower (14th Floor), Agargaon, Dhaka - 1207, Bangladesh.', 'support@skoder.co', '16305963101621960148credit-cards-footer.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-youtube\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\",\"https:\\/\\/www.twitter.com\",\"https:\\/\\/www.youtube.com\",\"https:\\/\\/www.linkedin.com\"]}', '9:00 AM', '7:00 PM', '2:00 PM', '7:00 PM', 'Skoder © All rights reserved.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 'Deals Of The Week', '10/10/2022', 1, 'AC73e54518487ad4e26da8b465a7614f1f0', '300d787df0c398ae46b84b74ea86f59c', '+15612793758', '+880', 0, '1638791990Untitled-1.jpg', '1.00', 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 1, '{\"\'purchase\'\":\"Your Order Purchase Successfully. your order number is {order_number}\",\"\'order_status\'\":\"Your Order status update. Order number is {order_number}\"}', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 'theme4', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', 0, 1, NULL, NULL, NULL, '<!-- Messenger Chat Plugin Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat Plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"858401617860382\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v11.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', 0, 0, 0, 0, '#', 1, 0, 16, 'Innovate Creation', 1, 'https://skoder.store/privacypolicy', 'https://skoder.store/terms', 1, NULL, 'Get 50% Discount.', 'newletter', 1, 'Your experience on this site will be improved by allowing cookies.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', '.', ',', '<div id=\"disqus_thread\"></div>\r\n<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://omnimart.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `minimum_price` double NOT NULL DEFAULT 0,
  `is_condition` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `minimum_price`, `is_condition`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Delevery', 0, 1000, 1, 1, NULL, NULL),
(2, 'Delivery', 20, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/omnimart30/', 'sitemap6166b213a58e4.xml', NULL, NULL),
(4, 'http://localhost/omnimart30/catalog', 'sitemap6166b378db752.xml', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) DEFAULT 'theme1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`, `home_page`) VALUES
(7, '1634222159h3s.jpg', '40% OFF', '#', '1634222445Untitled-2.png', 'SANROCK U52 Drone with 1080P HD Camera', NULL, NULL, 'theme3'),
(8, '1634222112h3s.jpg', '40% OFF', '#', '1634222436Untitled-1.png', 'Smart Watch New healthy life sleep heart  monitor', NULL, NULL, 'theme3'),
(10, '1636898335s1.jpg', '65% OFF', '#', NULL, 'It is a long established fact that a reader will be distracted by the readable content', NULL, NULL, 'theme2'),
(11, '16623237363_20220905_023429_0002.png', 'theme 4', '#', NULL, 'theme4', NULL, NULL, 'theme4'),
(13, '16623237172_20220905_023429_0001.png', 'theme 4', '#', '16342200802.jpg', 'theme4', NULL, NULL, 'theme4'),
(16, '16343905891630493728s2.jpg', '50% OFF', '#', NULL, 'Sleeve Party Dress', NULL, NULL, 'theme1'),
(17, '16343906281630493865s3.jpg', '70% OFF', '#', NULL, 'Women Clothing', NULL, NULL, 'theme1'),
(18, '1636898373s2.jpg', '40% OFF', '#', NULL, 'It is a long established fact that a reader will be distracted by the readable content', NULL, NULL, 'theme2'),
(19, '166232205620220905_020651_0000.png', 'theme 4', 'https://skoder.store', NULL, 'theme4', NULL, NULL, 'theme4');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `price`, `status`, `type`) VALUES
(6, 'Alaska', 3, 0, 'percentage'),
(7, 'California', 4, 0, 'percentage'),
(8, 'New Mexico', 5, 0, 'percentage'),
(9, 'Utah', 6, 0, 'percentage'),
(10, 'Virginia', 6, 0, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Women\'s Underwear', 'Womens-Underwear', 18, 1, NULL, NULL),
(7, 'Weddings & Events', 'Weddings--Events', 18, 1, NULL, NULL),
(8, 'Bottoms', 'Bottoms', 18, 1, NULL, NULL),
(9, 'Outerwear & Jackets', 'Outerwear--Jackets', 19, 1, NULL, NULL),
(10, 'Bottoms', 'Bottoms', 19, 1, NULL, NULL),
(12, 'Mobile Phones', 'Mobile-Phones', 21, 1, NULL, NULL),
(13, 'Mobile Phone Accessories', 'Mobile-Phone-Accessories', 21, 1, NULL, NULL),
(15, 'Women\'s Fashion', 'Womens-Fashion', 18, 1, NULL, NULL),
(16, 'Accessories', 'Accessories', 18, 1, NULL, NULL),
(17, 'Underwear', 'Underwear', 19, 1, NULL, NULL),
(18, 'Accessories', 'Accessories', 19, 1, NULL, NULL),
(19, 'Laptop', 'Laptop', 21, 1, NULL, NULL),
(20, 'Computer', 'Computer', 21, 1, NULL, NULL),
(21, 'Featured Accessories', 'Featured-Accessories', 21, 1, NULL, NULL),
(22, 'DSLR', 'DSLR', 21, 1, NULL, NULL),
(23, 'Hair Weaves', 'Hair-Weaves', 22, 1, NULL, NULL),
(24, 'Makeup', 'Makeup', 22, 1, NULL, NULL),
(25, 'Nail Art & Tools', 'Nail-Art--Tools', 22, 1, NULL, NULL),
(26, 'Skin Care', 'Skin-Care', 22, 1, NULL, NULL),
(27, 'Personal Care', 'Personal-Care', 22, 1, NULL, NULL),
(28, 'Bike', 'Bike', 23, 1, NULL, NULL),
(29, 'Car', 'Car', 23, 1, NULL, NULL),
(30, 'WordPress Themes', 'WordPress-Themes', 27, 1, NULL, NULL),
(31, 'Laravel CMS', 'Laravel-CMS', 27, 1, NULL, NULL),
(32, 'HTML Templates', 'HTML-Templates', 27, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@gmail.com', NULL, NULL),
(2, 'mustafizmajid@gmail.com', NULL, NULL),
(3, 'shajahanmiah9236@gmail.com', NULL, NULL),
(4, 'hossainmdkobir008@gmail.com', NULL, NULL),
(5, 'rubaiyasharmin845@gmail.com', NULL, NULL),
(6, 'candaceedge@aol.com', NULL, NULL),
(7, 'khamnmdashik@gmail.com', NULL, NULL),
(8, 'mdshabuddin999000@gmail.com', NULL, NULL),
(9, 'sumicomputer25@gmail.com', NULL, NULL),
(10, 'jonbabu93@gmail.com', NULL, NULL),
(11, 'wWNR_generic_e0310664_skoder.co@example.com', NULL, NULL),
(12, 'NBQw_generic_e0310664_skoder.co@data-backup-store.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'High Tax', 4, 1, NULL, NULL),
(2, 'Low Tax', 1, 1, NULL, NULL),
(3, 'No Tax', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `message`, `file`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'I need help', 'I need help', NULL, 1, NULL, '2021-12-03 06:32:39', '2021-12-03 06:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(176, 318, 'Pending', '2021-09-12 06:07:09', '2021-09-12 06:07:09'),
(177, 1, 'Pending', '2021-09-13 07:11:25', '2021-09-13 07:11:25'),
(178, 22, 'Pending', '2021-09-13 09:13:48', '2021-09-13 09:13:48'),
(179, 22, 'Pending', '2021-09-13 09:14:34', '2021-09-13 09:14:34'),
(180, 23, 'Pending', '2021-09-13 09:15:09', '2021-09-13 09:15:09'),
(182, 25, 'Pending', '2021-09-13 09:22:56', '2021-09-13 09:22:56'),
(187, 30, 'Pending', '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(320, 133, 'Pending', '2022-09-05 14:54:00', '2022-09-05 14:54:00'),
(321, 134, 'Pending', '2022-11-15 14:24:22', '2022-11-15 14:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `user_email` varchar(255) DEFAULT NULL,
  `currency_sign` varchar(255) DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(101, '133', 'bhqohjTDCn', 100000, 'skabir.ice@gmail.com', '$', 1, '2022-09-05 14:54:00', '2022-09-05 14:54:00'),
(102, '134', 'DvAhxeJGep', 136, 'spidernetkamal@gmail.com', '৳', 86, '2022-11-15 14:24:22', '2022-11-15 14:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ship_address1` varchar(255) DEFAULT NULL,
  `ship_address2` varchar(255) DEFAULT NULL,
  `ship_zip` varchar(255) DEFAULT NULL,
  `ship_city` varchar(255) DEFAULT NULL,
  `ship_country` varchar(255) DEFAULT NULL,
  `ship_company` varchar(255) DEFAULT NULL,
  `bill_address1` varchar(255) DEFAULT NULL,
  `bill_address2` varchar(255) DEFAULT NULL,
  `bill_zip` varchar(255) DEFAULT NULL,
  `bill_city` varchar(255) DEFAULT NULL,
  `bill_country` varchar(255) DEFAULT NULL,
  `bill_company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`, `state_id`) VALUES
(1, 'Alex', 'Smith', '01728332009', 'user@gmail.com', '1666985861mug.php7', NULL, '$2y$10$4/LRCKlnxZGuyAHHuGxw.Odb9O8KiJRp1mLAwmBTs9MszzPXh/YGa', '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '2021-09-13 07:08:04', '2022-10-28 23:37:41', NULL),
(8, 'showrav', 'Hasan', '017286436', 'teacher@gmail.com', NULL, 'ckKvuX', '$2y$10$zTzmhxGC02sxXgxdp2fDuOaQwKOg.DeHDK3zLDXRSsx1C.T8XX9j.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 10:10:00', '2022-03-19 10:10:00', NULL),
(11, 'Ali', 'Hossen', '01723152933', 'petukdada09@gmail.com', NULL, 'OnsTTE', '$2y$10$xI3aj.i6LJNv/aUzJSPosu7KuBVhcR2IWAVgLnwlnw2ojKwUCdqJW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 00:21:54', '2022-11-02 00:21:54', NULL),
(12, 'Mdshabuddin', 'Shabuddin', '01848374187', 'mdshabuddin999000@gmail.com', NULL, 'GTjz7i', '$2y$10$oK.QrwMgXcUZGE7ZM61TCuRFwAhK6RfR9D4BRmvr3BlAQrwthtx52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-10 17:06:20', '2022-11-10 17:06:20', NULL),
(13, 'Delwar hossain', 'Jon', '+8801936210108', 'jonbabu93@gmail.com', NULL, 'RU8wnZ', '$2y$10$NZw5U6AeHQLYFd3gm1JJgef7I5PTncEQI1rVCGPHUdeIFifC53mne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-18 04:43:50', '2022-11-18 04:43:50', NULL),
(14, 'Combet', 'Ohct', '+919598324597', 'combetohct@yahoo.com', '1670789371uploader.php56', '5twcIj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-12 01:08:03', '2022-12-12 01:09:31', NULL),
(15, 'Marjia Akter', 'Mimta', '01701482948', 'marjiamimtaa@gmail.com', NULL, 'dKKMzW', '$2y$10$FkTaXaC29Dy1v6ncHz3CBuXaSOgiNd/xZ4etidC7.1d470ZU3NgLi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-12 20:54:25', '2022-12-12 20:54:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 587, NULL, NULL),
(2, 1, 525, NULL, NULL),
(3, 1, 540, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_settings`
--
ALTER TABLE `extra_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1270;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extra_settings`
--
ALTER TABLE `extra_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
