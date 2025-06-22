-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-06-2019 a las 19:22:34
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rencodie_pedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backup`
--

CREATE TABLE `backup` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `country`, `code`) VALUES
(1, 'United States', 'US'),
(2, 'Canada', 'CA'),
(3, 'Afghanistan', 'AF'),
(4, 'Albania', 'AL'),
(5, 'Algeria', 'DZ'),
(6, 'American Samoa', 'AS'),
(7, 'Andorra', 'AD'),
(8, 'Angola', 'AO'),
(9, 'Anguilla', 'AI'),
(10, 'Antarctica', 'AQ'),
(11, 'Antigua and/or Barbuda', 'AG'),
(12, 'Argentina', 'AR'),
(13, 'Armenia', 'AM'),
(14, 'Aruba', 'AW'),
(15, 'Australia', 'AU'),
(16, 'Austria', 'AT'),
(17, 'Azerbaijan', 'AZ'),
(18, 'Bahamas', 'BS'),
(19, 'Bahrain', 'BH'),
(20, 'Bangladesh', 'BD'),
(21, 'Barbados', 'BB'),
(22, 'Belarus', 'BY'),
(23, 'Belgium', 'BE'),
(24, 'Belize', 'BZ'),
(25, 'Benin', 'BJ'),
(26, 'Bermuda', 'BM'),
(27, 'Bhutan', 'BT'),
(28, 'Bolivia', 'BO'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Bouvet Island', 'BV'),
(32, 'Brazil', 'BR'),
(33, 'British lndian Ocean Territory', 'IO'),
(34, 'Brunei Darussalam', 'BN'),
(35, 'Bulgaria', 'BG'),
(36, 'Burkina Faso', 'BF'),
(37, 'Burundi', 'BI'),
(38, 'Cambodia', 'KH'),
(39, 'Cameroon', 'CM'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (Keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Cook Islands', 'CK'),
(52, 'Costa Rica', 'CR'),
(53, 'Croatia (Hrvatska)', 'HR'),
(54, 'Cuba', 'CU'),
(55, 'Cyprus', 'CY'),
(56, 'Czech Republic', 'CZ'),
(57, 'Democratic Republic of Congo', 'CD'),
(58, 'Denmark', 'DK'),
(59, 'Djibouti', 'DJ'),
(60, 'Dominica', 'DM'),
(61, 'Dominican Republic', 'DO'),
(62, 'East Timor', 'TP'),
(63, 'Ecudaor', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (Malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'France, Metropolitan', 'FX'),
(76, 'French Guiana', 'GF'),
(77, 'French Polynesia', 'PF'),
(78, 'French Southern Territories', 'TF'),
(79, 'Gabon', 'GA'),
(80, 'Gambia', 'GM'),
(81, 'Georgia', 'GE'),
(82, 'Germany', 'DE'),
(83, 'Ghana', 'GH'),
(84, 'Gibraltar', 'GI'),
(85, 'Greece', 'GR'),
(86, 'Greenland', 'GL'),
(87, 'Grenada', 'GD'),
(88, 'Guadeloupe', 'GP'),
(89, 'Guam', 'GU'),
(90, 'Guatemala', 'GT'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-Bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard and Mc Donald Islands', 'HM'),
(96, 'Honduras', 'HN'),
(97, 'Hong Kong', 'HK'),
(98, 'Hungary', 'HU'),
(99, 'Iceland', 'IS'),
(100, 'India', 'IN'),
(101, 'Indonesia', 'ID'),
(102, 'Iran (Islamic Republic of)', 'IR'),
(103, 'Iraq', 'IQ'),
(104, 'Ireland', 'IE'),
(105, 'Israel', 'IL'),
(106, 'Italy', 'IT'),
(107, 'Ivory Coast', 'CI'),
(108, 'Jamaica', 'JM'),
(109, 'Japan', 'JP'),
(110, 'Jordan', 'JO'),
(111, 'Kazakhstan', 'KZ'),
(112, 'Kenya', 'KE'),
(113, 'Kiribati', 'KI'),
(114, 'Korea, Democratic People\'s Republic of', 'KP'),
(115, 'Korea, Republic of', 'KR'),
(116, 'Kuwait', 'KW'),
(117, 'Kyrgyzstan', 'KG'),
(118, 'Lao People\'s Democratic Republic', 'LA'),
(119, 'Latvia', 'LV'),
(120, 'Lebanon', 'LB'),
(121, 'Lesotho', 'LS'),
(122, 'Liberia', 'LR'),
(123, 'Libyan Arab Jamahiriya', 'LY'),
(124, 'Liechtenstein', 'LI'),
(125, 'Lithuania', 'LT'),
(126, 'Luxembourg', 'LU'),
(127, 'Macau', 'MO'),
(128, 'Macedonia', 'MK'),
(129, 'Madagascar', 'MG'),
(130, 'Malawi', 'MW'),
(131, 'Malaysia', 'MY'),
(132, 'Maldives', 'MV'),
(133, 'Mali', 'ML'),
(134, 'Malta', 'MT'),
(135, 'Marshall Islands', 'MH'),
(136, 'Martinique', 'MQ'),
(137, 'Mauritania', 'MR'),
(138, 'Mauritius', 'MU'),
(139, 'Mayotte', 'TY'),
(140, 'Mexico', 'MX'),
(141, 'Micronesia, Federated States of', 'FM'),
(142, 'Moldova, Republic of', 'MD'),
(143, 'Monaco', 'MC'),
(144, 'Mongolia', 'MN'),
(145, 'Montserrat', 'MS'),
(146, 'Morocco', 'MA'),
(147, 'Mozambique', 'MZ'),
(148, 'Myanmar', 'MM'),
(149, 'Namibia', 'NA'),
(150, 'Nauru', 'NR'),
(151, 'Nepal', 'NP'),
(152, 'Netherlands', 'NL'),
(153, 'Netherlands Antilles', 'AN'),
(154, 'New Caledonia', 'NC'),
(155, 'New Zealand', 'NZ'),
(156, 'Nicaragua', 'NI'),
(157, 'Niger', 'NE'),
(158, 'Nigeria', 'NG'),
(159, 'Niue', 'NU'),
(160, 'Norfork Island', 'NF'),
(161, 'Northern Mariana Islands', 'MP'),
(162, 'Norway', 'NO'),
(163, 'Oman', 'OM'),
(164, 'Pakistan', 'PK'),
(165, 'Palau', 'PW'),
(166, 'Panama', 'PA'),
(167, 'Papua New Guinea', 'PG'),
(168, 'Paraguay', 'PY'),
(169, 'Peru', 'PE'),
(170, 'Philippines', 'PH'),
(171, 'Pitcairn', 'PN'),
(172, 'Poland', 'PL'),
(173, 'Portugal', 'PT'),
(174, 'Puerto Rico', 'PR'),
(175, 'Qatar', 'QA'),
(176, 'Republic of South Sudan', 'SS'),
(177, 'Reunion', 'RE'),
(178, 'Romania', 'RO'),
(179, 'Russian Federation', 'RU'),
(180, 'Rwanda', 'RW'),
(181, 'Saint Kitts and Nevis', 'KN'),
(182, 'Saint Lucia', 'LC'),
(183, 'Saint Vincent and the Grenadines', 'VC'),
(184, 'Samoa', 'WS'),
(185, 'San Marino', 'SM'),
(186, 'Sao Tome and Principe', 'ST'),
(187, 'Saudi Arabia', 'SA'),
(188, 'Senegal', 'SN'),
(189, 'Serbia', 'RS'),
(190, 'Seychelles', 'SC'),
(191, 'Sierra Leone', 'SL'),
(192, 'Singapore', 'SG'),
(193, 'Slovakia', 'SK'),
(194, 'Slovenia', 'SI'),
(195, 'Solomon Islands', 'SB'),
(196, 'Somalia', 'SO'),
(197, 'South Africa', 'ZA'),
(198, 'South Georgia South Sandwich Islands', 'GS'),
(199, 'Spain', 'ES'),
(200, 'Sri Lanka', 'LK'),
(201, 'St. Helena', 'SH'),
(202, 'St. Pierre and Miquelon', 'PM'),
(203, 'Sudan', 'SD'),
(204, 'Suriname', 'SR'),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ'),
(206, 'Swaziland', 'SZ'),
(207, 'Sweden', 'SE'),
(208, 'Switzerland', 'CH'),
(209, 'Syrian Arab Republic', 'SY'),
(210, 'Taiwan', 'TW'),
(211, 'Tajikistan', 'TJ'),
(212, 'Tanzania, United Republic of', 'TZ'),
(213, 'Thailand', 'TH'),
(214, 'Togo', 'TG'),
(215, 'Tokelau', 'TK'),
(216, 'Tonga', 'TO'),
(217, 'Trinidad and Tobago', 'TT'),
(218, 'Tunisia', 'TN'),
(219, 'Turkey', 'TR'),
(220, 'Turkmenistan', 'TM'),
(221, 'Turks and Caicos Islands', 'TC'),
(222, 'Tuvalu', 'TV'),
(223, 'Uganda', 'UG'),
(224, 'Ukraine', 'UA'),
(225, 'United Arab Emirates', 'AE'),
(226, 'United Kingdom', 'GB'),
(227, 'United States minor outlying islands', 'UM'),
(228, 'Uruguay', 'UY'),
(229, 'Uzbekistan', 'UZ'),
(230, 'Vanuatu', 'VU'),
(231, 'Vatican City State', 'VA'),
(232, 'Venezuela', 'VE'),
(233, 'Vietnam', 'VN'),
(234, 'Virgin Islands (British)', 'VG'),
(235, 'Virgin Islands (U.S.)', 'VI'),
(236, 'Wallis and Futuna Islands', 'WF'),
(237, 'Western Sahara', 'EH'),
(238, 'Yemen', 'YE'),
(239, 'Yugoslavia', 'YU'),
(240, 'Zaire', 'ZR'),
(241, 'Zambia', 'ZM'),
(242, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` char(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `currency`
--

INSERT INTO `currency` (`id`, `name`, `symbol`) VALUES
(1, 'USD', '$'),
(2, 'BDT', '৳'),
(3, 'EGP', '£'),
(4, 'EUR', '€'),
(5, 'INR', '₨'),
(6, 'LKR', 'Rs'),
(7, 'MYR', 'RM'),
(8, 'NPR', '₨'),
(9, 'PKR', '₨');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cust_branch`
--

CREATE TABLE `cust_branch` (
  `branch_code` int(10) UNSIGNED NOT NULL,
  `debtor_no` int(11) NOT NULL,
  `br_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cust_branch`
--

INSERT INTO `cust_branch` (`branch_code`, `debtor_no`, `br_name`, `br_address`, `br_contact`, `billing_street`, `billing_city`, `billing_state`, `billing_zip_code`, `billing_country_id`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip_code`, `shipping_country_id`) VALUES
(1, 1, 'Danilo', '', '', 'Av. de ', 'Mac', 'Activo', '100121', 'EC', 'Av. de', 'Mac', 'Activo', '120100', 'EC'),
(2, 1, 'Av', '', 'Daniel', 'Cu', 'Mac', 'Activo', '120100', 'EC', 'Av. de', 'Activo', 'Activo', '120100', 'EC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `debtors_master`
--

CREATE TABLE `debtors_master` (
  `debtor_no` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `vat_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `debtors_master`
--

INSERT INTO `debtors_master` (`debtor_no`, `name`, `email`, `password`, `address`, `phone`, `sales_type`, `remember_token`, `inactive`, `vat_no`, `created_at`, `updated_at`) VALUES
(1, 'Danilo', 'danilo7valladares@hotmail.com', '$2y$10$uB7Pt.0qXkWcHnCA5JS8J..OD3MMXRkcDSHx8VwXHYhZfY/ot2RIi', '', '4200000', 0, '', 0, '', '2019-06-07 05:08:54', '2019-06-07 05:13:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_config`
--

CREATE TABLE `email_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_encryption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `email_config`
--

INSERT INTO `email_config` (`id`, `type`, `email_protocol`, `email_encryption`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_username`, `smtp_password`, `from_address`, `from_name`, `sender_name`, `sender_email`) VALUES
(1, 'smtp', 'smtp', 'tls', 'smtp.gmail.com', '587', 'stockpile.techvill@gmail.com', 'stockpile.techvill@gmail.com', 'xgldhlpedszmglvj', 'stockpile.techvill@gmail.com', 'stockpile.techvill@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_temp_details`
--

CREATE TABLE `email_temp_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `email_temp_details`
--

INSERT INTO `email_temp_details` (`id`, `temp_id`, `subject`, `body`, `lang`, `lang_id`) VALUES
(1, 2, 'Your Order # {order_reference_no} from {company_name} has been shipped', 'Hi {customer_name},<br><br>Thank you for your order. Here’s a brief overview of your shipment:<br>Sales Order # {order_reference_no} was packed on {packed_date} and shipped on {delivery_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>', 'en', 1),
(2, 2, 'Subject', 'Body', 'ar', 2),
(3, 2, 'Subject', 'Body', 'ch', 3),
(4, 2, 'Subject', 'Body', 'fr', 4),
(5, 2, 'Subject', 'Body', 'po', 5),
(6, 2, 'Subject', 'Body', 'rs', 6),
(7, 2, 'Subject', 'Body', 'sp', 7),
(8, 2, 'Subject', 'Body', 'tu', 8),
(9, 1, 'Payment information for Order#{order_reference_no} and Invoice#{invoice_reference_no}.', '<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}</p><p>{billing_country}<br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b></i></p><p><i>Order No : {order_reference_no}</i><br><i></i></p><p><i>Invoice No : {invoice_reference_no}</i><br></p><p><br></p><p>Regards,</p><p>{company_name}<br></p><br><br><br><br><br><br>', 'en', 1),
(10, 1, 'Subject', 'Body', 'ar', 2),
(11, 1, 'Subject', 'Body', 'ch', 3),
(12, 1, 'Subject', 'Body', 'fr', 4),
(13, 1, 'Subject', 'Body', 'po', 5),
(14, 1, 'Subject', 'Body', 'rs', 6),
(15, 1, 'Subject', 'Body', 'sp', 7),
(16, 1, 'Subject', 'Body', 'tu', 8),
(17, 3, 'Your purchase order #{reference} has been created.', '<p>Hi {supplier_name},</p><p>Thank you for your purchase. Here’s a brief overview of your purchase: Purchase no #{reference} . The puchase total is {total_amount}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Purchase summary<br></b></p><p><b></b>{purchase_summery}<br></p><p>Regards,</p><p>{company_name}<br></p><br><br>', 'en', 1),
(18, 3, 'Subject', 'Body', 'ar', 2),
(19, 3, 'Subject', 'Body', 'ch', 3),
(20, 3, 'Subject', 'Body', 'fr', 4),
(21, 3, 'Subject', 'Body', 'po', 5),
(22, 3, 'Subject', 'Body', 'rs', 6),
(23, 3, 'Subject', 'Body', 'sp', 7),
(24, 3, 'Subject', 'Body', 'tu', 8),
(25, 4, 'Your Invoice # {invoice_reference_no} for sales Order #{order_reference_no} from {company_name} has been created.', '<p>Hi {customer_name},</p><p>Thank you for your order. Here’s a brief overview of your invoice: Invoice #{invoice_reference_no} is for Sales Order #{order_reference_no}. The invoice total is {currency}{total_amount}, please pay before {due_date}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Order summary<br></b></p><p><b></b>{invoice_summery}<br></p><p>Regards,</p><p>{company_name}<br></p><br><br>', 'en', 1),
(26, 4, 'Subject', 'Body', 'ar', 2),
(27, 4, 'Subject', 'Body', 'ch', 3),
(28, 4, 'Subject', 'Body', 'fr', 4),
(29, 4, 'Subject', 'Body', 'po', 5),
(30, 4, 'Subject', 'Body', 'rs', 6),
(31, 4, 'Subject', 'Body', 'sp', 7),
(32, 4, 'Subject', 'Body', 'tu', 8),
(33, 5, 'Your Order# {order_reference_no} from {company_name} has been created.', '<p>Hi {customer_name},</p><p>Thank you for your order. Here’s a brief overview of your Order #{order_reference_no} that was created on {order_date}. The order total is {currency}{total_amount}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Order summary<br></b></p><p><b></b>{order_summery}<br></p><p>Regards,</p><p>{company_name}</p><br><br>', 'en', 1),
(34, 5, 'Subject', 'Body', 'ar', 2),
(35, 5, 'Subject', 'Body', 'ch', 3),
(36, 5, 'Subject', 'Body', 'fr', 4),
(37, 5, 'Subject', 'Body', 'po', 5),
(38, 5, 'Subject', 'Body', 'rs', 6),
(39, 5, 'Subject', 'Body', 'sp', 7),
(40, 5, 'Subject', 'Body', 'tu', 8),
(41, 6, 'Your Order # {order_reference_no} from {company_name} has been packed', 'Hi {customer_name},<br><br>Thank you for your order. Here’s a brief overview of your shipment:<br>Sales Order # {order_reference_no} was packed on {packed_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>', 'en', 1),
(42, 6, 'Subject', 'Body', 'ar', 2),
(43, 6, 'Subject', 'Body', 'ch', 3),
(44, 6, 'Subject', 'Body', 'fr', 4),
(45, 6, 'Subject', 'Body', 'po', 5),
(46, 6, 'Subject', 'Body', 'rs', 6),
(47, 6, 'Subject', 'Body', 'sp', 7),
(48, 6, 'Subject', 'Body', 'tu', 8),
(49, 7, 'Item Received #{receive_no} of your purchase order #{reference}.', '<p>Hi {supplier_name},</p><p>Thank you for received item. Here’s a brief overview of your received: Received no #{receive_no}. Purchase order no #{reference}</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Received summary<br></b></p><p><b></b>{received_summery}<br></p><p>Regards,</p><p>{company_name}<br></p><br><br>', 'en', 1),
(50, 7, 'Subject', 'Body', 'ar', 2),
(51, 7, 'Subject', 'Body', 'ch', 3),
(52, 7, 'Subject', 'Body', 'fr', 4),
(53, 7, 'Subject', 'Body', 'po', 5),
(54, 7, 'Subject', 'Body', 'rs', 6),
(55, 7, 'Subject', 'Body', 'sp', 7),
(56, 7, 'Subject', 'Body', 'tu', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_payment_terms`
--

CREATE TABLE `invoice_payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days_before_due` int(11) NOT NULL,
  `defaults` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `invoice_payment_terms`
--

INSERT INTO `invoice_payment_terms` (`id`, `terms`, `days_before_due`, `defaults`) VALUES
(1, 'Cash on deleivery', 0, 1),
(2, 'Net15', 15, 0),
(3, 'Net30', 30, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_code`
--

CREATE TABLE `item_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `item_code`
--

INSERT INTO `item_code` (`id`, `stock_id`, `description`, `category_id`, `item_image`, `inactive`, `deleted_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'ARENA', 2, 'factura.png', 0, 0, '2019-06-06 22:05:40', NULL),
(2, '55656556', 'UGUYGYU', 2, '', 0, 0, '2019-06-12 00:09:37', NULL),
(3, '131313', 'COLLAR THE BEST', 2, '', 0, 0, '2019-06-12 00:16:53', '2019-06-12 00:17:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_tax_types`
--

CREATE TABLE `item_tax_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` double(8,2) NOT NULL,
  `exempt` tinyint(4) NOT NULL,
  `defaults` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `item_tax_types`
--

INSERT INTO `item_tax_types` (`id`, `name`, `tax_rate`, `exempt`, `defaults`) VALUES
(1, 'Tax Exempt', 0.00, 1, 0),
(2, 'Sales Tax', 15.00, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_unit`
--

CREATE TABLE `item_unit` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `item_unit`
--

INSERT INTO `item_unit` (`id`, `abbr`, `name`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'each', 'Each', 0, '2019-06-06 03:52:45', '2019-06-12 00:13:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `loc_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`id`, `loc_code`, `location_name`, `delivery_address`, `email`, `phone`, `fax`, `contact`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'PL', 'Primary Location', 'Primary Location', '', '', '', 'Primary Location', 0, '2019-06-06 03:52:45', NULL),
(2, 'JA', 'Jackson Av', '125 Hayes St, San Francisco, CA 94102, USA', '', '', '', 'Jackson Av', 0, '2019-06-06 03:52:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_26_161159_entrust_setup_tables', 1),
('2016_08_30_100832_create_users_table', 1),
('2016_08_30_104506_create_stock_category_table', 1),
('2016_08_30_105339_create_location_table', 1),
('2016_08_30_110408_create_item_code_table', 1),
('2016_08_30_114231_create_item_unit_table', 1),
('2016_09_02_070031_create_stock_master_table', 1),
('2016_09_20_123717_create_stock_move_table', 1),
('2016_10_05_113244_create_debtor_master_table', 1),
('2016_10_05_113333_create_sales_orders_table', 1),
('2016_10_05_113356_create_sales_order_details_table', 1),
('2016_10_18_060431_create_supplier_table', 1),
('2016_10_18_063931_create_purch_order_table', 1),
('2016_10_18_064211_create_purch_order_detail_table', 1),
('2016_10_18_064211_create_receive_order_detail_table', 1),
('2016_10_18_064211_create_receive_orders_table', 1),
('2016_11_15_121343_create_preference_table', 1),
('2016_12_01_130110_create_shipment_table', 1),
('2016_12_01_130443_create_shipment_details_table', 1),
('2016_12_03_051429_create_sale_price_table', 1),
('2016_12_03_052017_create_sales_types_table', 1),
('2016_12_03_061206_create_purchase_price_table', 1),
('2016_12_03_062131_create_payment_term_table', 1),
('2016_12_03_062247_create_payment_history_table', 1),
('2016_12_03_062932_create_item_tax_type_table', 1),
('2016_12_03_063827_create_invoice_payment_term_table', 1),
('2016_12_03_064157_create_email_temp_details_table', 1),
('2016_12_03_064747_create_email_config_table', 1),
('2016_12_03_065532_create_cust_branch_table', 1),
('2016_12_03_065915_create_currency_table', 1),
('2016_12_03_070030_create_country_table', 1),
('2016_12_03_070030_create_stock_transfer_table', 1),
('2016_12_03_071018_create_backup_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `order_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `amount` double DEFAULT '0',
  `person_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `payment_history`
--

INSERT INTO `payment_history` (`id`, `payment_type_id`, `order_reference`, `invoice_reference`, `payment_date`, `amount`, `person_id`, `customer_id`, `reference`, `created_at`, `updated_at`) VALUES
(1, 2, 'SO-0003', 'INV-0002', '2019-06-12', 1483.5, 1, 1, 'by all pay', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaults` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `name`, `defaults`) VALUES
(1, 'Bank', 1),
(2, 'Cash', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_customer', 'Manage Customers', 'Manage Customers', NULL, NULL),
(2, 'add_customer', 'Add Customer', 'Add Customer', NULL, NULL),
(3, 'edit_customer', 'Edit Customer', 'Edit Customer', NULL, NULL),
(4, 'delete_customer', 'Delete Customer', 'Delete Customer', NULL, NULL),
(5, 'manage_item', 'Manage Items', 'Manage Items', NULL, NULL),
(6, 'add_item', 'Add Item', 'Add Item', NULL, NULL),
(7, 'edit_item', 'Edit Item', 'Edit Item', NULL, NULL),
(8, 'delete_item', 'Delete Item', 'Delete Item', NULL, NULL),
(9, 'manage_supplier', 'Manage Suppliers', 'Manage Suppliers', NULL, NULL),
(10, 'add_supplier', 'Add Supplier', 'Add Supplier', NULL, NULL),
(11, 'edit_supplier', 'Edit Supplier', 'Edit Supplier', NULL, NULL),
(12, 'delete_supplier', 'Delete Supplier', 'Delete Supplier', NULL, NULL),
(13, 'manage_sale', 'Manage Sales', 'Manage Sales', NULL, NULL),
(14, 'manage_order', 'Manage Orders', 'Manage Orders', NULL, NULL),
(15, 'add_order', 'Add Order', 'Add Order', NULL, NULL),
(16, 'edit_order', 'Edit Order', 'Edit Order', NULL, NULL),
(17, 'delete_order', 'Delete Order', 'Delete Order', NULL, NULL),
(18, 'manage_invoice', 'Manage Invoices', 'Manage Invoices', NULL, NULL),
(19, 'add_invoice', 'Add Invoice', 'Add Invoice', NULL, NULL),
(20, 'edit_invoice', 'Edit Invoice', 'Edit Invoice', NULL, NULL),
(21, 'delete_invoice', 'Delete Invoice', 'Delete Invoice', NULL, NULL),
(22, 'manage_payment', 'Manage Payment', 'Manage Payment', NULL, NULL),
(23, 'add_payment', 'Add Payment', 'Add Payment', NULL, NULL),
(24, 'edit_payment', 'Edit Payment', 'Edit Payment', NULL, NULL),
(25, 'delete_payment', 'Delete Payment', 'Delete Payment', NULL, NULL),
(26, 'manage_shipment', 'Manage Shipment', 'Manage Shipment', NULL, NULL),
(27, 'add_shipment', 'Add Shipment', 'Add Shipment', NULL, NULL),
(28, 'edit_shipment', 'Edit Shipment', 'Edit Shipment', NULL, NULL),
(29, 'delete_shipment', 'Delete Shipment', 'Delete Shipment', NULL, NULL),
(30, 'manage_purchase', 'Manage Purchase', 'Manage Purchase', NULL, NULL),
(31, 'add_purchase', 'Add Purchase', 'Add Purchase', NULL, NULL),
(32, 'edit_purchase', 'Edit Purchase', 'Edit Purchase', NULL, NULL),
(33, 'delete_purchase', 'Delete Purchase', 'Delete Purchase', NULL, NULL),
(34, 'manage_transfer', 'Manage Transfer', 'Manage Transfer', NULL, NULL),
(35, 'add_transfer', 'Add Transfer', 'Add Transfer', NULL, NULL),
(36, 'edit_transfer', 'Edit Transfer', 'Edit Transfer', NULL, NULL),
(37, 'delete_transfer', 'Delete Transfer', 'Delete Transfer', NULL, NULL),
(38, 'manage_report', 'Manage Reports', 'Manage Report', NULL, NULL),
(39, 'manage_stock_on_hand', 'Manage Inventory Stock On Hand', 'Manage Inventory Stock On Hand', NULL, NULL),
(40, 'manage_sale_report', 'Manage Sales Report', 'Manage Sales Report', NULL, NULL),
(41, 'manage_sale_history_report', 'Manage Sales History Report', 'Manage Sales History Report', NULL, NULL),
(42, 'manage_purchase_report', 'Manage Purchase Report', 'Manage Purchase Report', NULL, NULL),
(43, 'manage_team_report', 'Manage Team Member Report', 'Manage Team Member Report', NULL, NULL),
(44, 'manage_setting', 'Manage Settings', 'Manage Settings', NULL, NULL),
(45, 'manage_company_setting', 'Manage Company Setting', 'Manage Company Setting', NULL, NULL),
(46, 'manage_team_member', 'Manage Team Member', 'Manage Team Member', NULL, NULL),
(47, 'add_team_member', 'Add Team Member', 'Add Team Member', NULL, NULL),
(48, 'edit_team_member', 'Edit Team Member', 'Edit Team Member', NULL, NULL),
(49, 'delete_team_member', 'Delete Team Member', 'Delete Team Member', NULL, NULL),
(50, 'manage_role', 'Manage Roles', 'Manage Roles', NULL, NULL),
(51, 'add_role', 'Add Role', 'Add Role', NULL, NULL),
(52, 'edit_role', 'Edit Role', 'Edit Role', NULL, NULL),
(53, 'delete_role', 'Delete Role', 'Delete Role', NULL, NULL),
(54, 'manage_location', 'Manage Location', 'Manage Location', NULL, NULL),
(55, 'add_location', 'Add Location', 'Add Location', NULL, NULL),
(56, 'edit_location', 'Edit Location', 'Edit Location', NULL, NULL),
(57, 'delete_location', 'Delete Location', 'Delete Location', NULL, NULL),
(58, 'manage_general_setting', 'Manage General Settings', 'Manage General Settings', NULL, NULL),
(59, 'manage_item_category', 'Manage Item Category', 'Manage Item Category', NULL, NULL),
(60, 'add_item_category', 'Add Item Category', 'Add Item Category', NULL, NULL),
(61, 'edit_item_category', 'Edit Item Category', 'Edit Item Category', NULL, NULL),
(62, 'delete_item_category', 'Delete Item Category', 'Delete Item Category', NULL, NULL),
(63, 'manage_income_expense_category', 'Manage Income Expense Category', 'Manage Income Expense Category', NULL, NULL),
(64, 'add_income_expense_category', 'Add Income Expense Category', 'Add Income Expense Category', NULL, NULL),
(65, 'edit_income_expense_category', 'Edit Income Expense Category', 'Edit Income Expense Category', NULL, NULL),
(66, 'delete_income_expense_category', 'Delete Income Expense Category', 'Delete Income Expense Category', NULL, NULL),
(67, 'manage_unit', 'Manage Unit', 'Manage Unit', NULL, NULL),
(68, 'add_unit', 'Add Unit', 'Add Unit', NULL, NULL),
(69, 'edit_unit', 'Edit Unit', 'Edit Unit', NULL, NULL),
(70, 'delete_unit', 'Delete Unit', 'Delete Unit', NULL, NULL),
(71, 'manage_db_backup', 'Manage Database Backup', 'Manage Database Backup', NULL, NULL),
(72, 'add_db_backup', 'Add Database Backup', 'Add Database Backup', NULL, NULL),
(73, 'download_db_backup', 'Download Database Backup', 'Download Database Backup', NULL, NULL),
(74, 'delete_db_backup', 'Delete Database Backup', 'Delete Database Backup', NULL, NULL),
(75, 'manage_email_setup', 'Manage Email Setup', 'Manage Email Setup', NULL, NULL),
(76, 'manage_finance', 'Manage Finance', 'Manage Finance', NULL, NULL),
(77, 'manage_tax', 'Manage Taxs', 'Manage Taxs', NULL, NULL),
(78, 'add_tax', 'Add Tax', 'Add Tax', NULL, NULL),
(79, 'edit_tax', 'Edit Tax', 'Edit Tax', NULL, NULL),
(80, 'delete_tax', 'Delete Tax', 'Delete Tax', NULL, NULL),
(81, 'manage_sales_type', 'Manage Sales Type', 'Manage Sales Type', NULL, NULL),
(82, 'add_sales_type', 'Add Sales Type', 'Add Sales Type', NULL, NULL),
(83, 'edit_sales_type', 'Edit Sales Type', 'Edit Sales Type', NULL, NULL),
(84, 'delete_sales_type', 'Delete Sales Type', 'Delete Sales Type', NULL, NULL),
(85, 'manage_currency', 'Manage Currency', 'Manage Currency', NULL, NULL),
(86, 'add_currency', 'Add Currency', 'Add Currency', NULL, NULL),
(87, 'edit_currency', 'Edit Currency', 'Edit Currency', NULL, NULL),
(88, 'delete_currency', 'Delete Currency', 'Delete Currency', NULL, NULL),
(89, 'manage_payment_term', 'Manage Payment Term', 'Manage Payment Term', NULL, NULL),
(90, 'add_payment_term', 'Add Payment Term', 'Add Payment Term', NULL, NULL),
(91, 'edit_payment_term', 'Edit Payment Term', 'Edit Payment Term', NULL, NULL),
(92, 'delete_payment_term', 'Delete Payment Term', 'Delete Payment Term', NULL, NULL),
(93, 'manage_payment_method', 'Manage Payment Method', 'Manage Payment Method', NULL, NULL),
(94, 'add_payment_method', 'Add Payment Method', 'Add Payment Method', NULL, NULL),
(95, 'edit_payment_method', 'Edit Payment Method', 'Edit Payment Method', NULL, NULL),
(96, 'delete_payment_method', 'Delete Payment Method', 'Delete Payment Method', NULL, NULL),
(97, 'manage_payment_gateway', 'Manage Payment Method', 'Manage Payment Gateway', NULL, NULL),
(98, 'manage_email_template', 'Manage Email Template', 'Manage Email Template', NULL, NULL),
(99, 'manage_order_email_template', 'Manage Order Template', 'Manage Order Email Template', NULL, NULL),
(100, 'manage_invoice_email_template', 'Manage Invoice Email Template', 'Manage Invoice Email Template', NULL, NULL),
(101, 'manage_purchase_order_email_template', 'Manage Purchase Order Email Template', 'Manage Purchase Order Email Template', NULL, NULL),
(102, 'manage_payment_email_template', 'Manage Payment Email Template', 'Manage Payment Email Template', NULL, NULL),
(103, 'manage_packing_email_template', 'Manage Packing Email Template', 'Manage Packing Email Template', NULL, NULL),
(104, 'manage_shipment_email_template', 'Manage Shipment Email Template', 'Manage Shipment Email Template', NULL, NULL),
(105, 'manage_preference', 'Manage Preference', 'Manage Preference', NULL, NULL),
(106, 'manage_barcode', 'Manage barcode/label', 'Manage barcode/label', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 1),
(106, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preference`
--

CREATE TABLE `preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `preference`
--

INSERT INTO `preference` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '25'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '-'),
(4, 'preference', 'soft_name', 'Stockpile'),
(5, 'company', 'site_short_name', 'SP'),
(6, 'preference', 'percentage', '0'),
(7, 'preference', 'quantity', '0'),
(8, 'preference', 'date_format_type', 'dd-mm-yyyy'),
(9, 'company', 'company_name', 'Stockpile'),
(10, 'company', 'company_email', 'admin@techvill.net'),
(11, 'company', 'company_phone', '123465798'),
(12, 'company', 'company_street', 'City Hall Park Path'),
(13, 'company', 'company_city', 'New York'),
(14, 'company', 'company_state', 'New York'),
(15, 'company', 'company_zipCode', '10007'),
(16, 'company', 'company_country_id', 'United States'),
(17, 'company', 'dflt_lang', 'en'),
(18, 'company', 'dflt_currency_id', '1'),
(19, 'company', 'sates_type_id', '1'),
(20, 'company', 'logo', 'logo.png'),
(21, 'company', 'vat_no', 'DE9999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_prices`
--

CREATE TABLE `purchase_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `conversion_factor` double DEFAULT '1',
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `purchase_prices`
--

INSERT INTO `purchase_prices` (`id`, `stock_id`, `price`, `suppliers_uom`, `conversion_factor`, `supplier_description`) VALUES
(1, '1', 100, '', 1, ''),
(2, '55656556', 100, '', 1, ''),
(3, '131313', 0, '', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purch_orders`
--

CREATE TABLE `purch_orders` (
  `order_no` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ord_date` date NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `into_stock_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `tax_included` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purch_order_details`
--

CREATE TABLE `purch_order_details` (
  `po_detail_item` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `item_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL,
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0',
  `qty_received` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receive_orders`
--

CREATE TABLE `receive_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receive_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receive_order_details`
--

CREATE TABLE `receive_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `item_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin User', NULL, NULL),
(2, 'ADMINI', 'admini', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_orders`
--

CREATE TABLE `sales_orders` (
  `order_no` int(10) UNSIGNED NOT NULL,
  `trans_type` int(11) NOT NULL,
  `debtor_no` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `version` tinyint(4) NOT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_ref` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_reference_id` int(11) NOT NULL,
  `order_reference` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL,
  `order_type` int(11) NOT NULL,
  `delivery_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_stk_loc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `payment_id` tinyint(4) NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `paid_amount` double NOT NULL DEFAULT '0',
  `choices` enum('no','partial_created','full_created') COLLATE utf8_unicode_ci NOT NULL,
  `payment_term` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sales_orders`
--

INSERT INTO `sales_orders` (`order_no`, `trans_type`, `debtor_no`, `branch_id`, `person_id`, `version`, `reference`, `customer_ref`, `order_reference_id`, `order_reference`, `comments`, `ord_date`, `order_type`, `delivery_address`, `contact_phone`, `contact_email`, `deliver_to`, `from_stk_loc`, `delivery_date`, `payment_id`, `total`, `paid_amount`, `choices`, `payment_term`, `created_at`, `updated_at`) VALUES
(1, 201, 1, 2, 1, 0, 'SO-0001', NULL, 0, NULL, '', '2019-06-11', 0, NULL, NULL, NULL, NULL, 'JA', NULL, 1, 0, 0, 'no', 0, '2019-06-11 23:53:02', NULL),
(2, 201, 1, 2, 1, 0, 'SO-0002', NULL, 0, NULL, '', '2019-06-11', 0, NULL, NULL, NULL, NULL, 'JA', NULL, 2, 1290, 0, 'no', 0, '2019-06-12 00:18:44', NULL),
(3, 201, 1, 2, 1, 1, 'SO-0003', NULL, 0, NULL, 'CCCC', '2019-06-12', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 2, 1483.5, 0, 'no', 0, '2019-06-12 18:37:34', NULL),
(4, 202, 1, 2, 1, 0, 'INV-0002', NULL, 3, 'SO-0003', 'CCCC', '2019-06-12', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 2, 1483.5, 1483.5, 'no', 1, '2019-06-12 18:37:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_order_details`
--

CREATE TABLE `sales_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `qty_sent` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `shipment_qty` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sales_order_details`
--

INSERT INTO `sales_order_details` (`id`, `order_no`, `trans_type`, `stock_id`, `tax_type_id`, `description`, `unit_price`, `qty_sent`, `quantity`, `shipment_qty`, `discount_percent`, `created_at`, `updated_at`) VALUES
(1, 1, 201, '1', 1, 'Arena', 0, 0, 2, 0, 0, NULL, NULL),
(2, 2, 201, '131313', 1, 'COLLAR THE BEST', 1290, 0, 1, 0, 0, NULL, NULL),
(3, 3, 201, '131313', 2, 'COLLAR THE BEST', 1290, 1, 1, 1, 0, NULL, NULL),
(4, 4, 202, '131313', 2, 'COLLAR THE BEST', 1290, 1, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_types`
--

CREATE TABLE `sales_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(11) NOT NULL,
  `factor` double NOT NULL,
  `defaults` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sales_types`
--

INSERT INTO `sales_types` (`id`, `sales_type`, `tax_included`, `factor`, `defaults`) VALUES
(1, 'Retail', 1, 0, 1),
(2, 'Wholesale', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_prices`
--

CREATE TABLE `sale_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type_id` int(11) NOT NULL,
  `curr_abrev` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sale_prices`
--

INSERT INTO `sale_prices` (`id`, `stock_id`, `sales_type_id`, `curr_abrev`, `price`) VALUES
(1, '1', 1, 'USD', 0),
(2, '1', 2, 'USD', 0),
(3, '55656556', 1, 'USD', 0),
(4, '55656556', 2, 'USD', 0),
(5, '131313', 1, 'USD', 1290),
(6, '131313', 2, 'USD', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipment`
--

CREATE TABLE `shipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `packed_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `shipment`
--

INSERT INTO `shipment` (`id`, `order_no`, `trans_type`, `comments`, `status`, `packed_date`, `delivery_date`, `created_at`, `updated_at`) VALUES
(1, 3, 301, 'Auto shipment', 0, '2019-06-12', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipment_details`
--

CREATE TABLE `shipment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` double NOT NULL,
  `discount_percent` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `shipment_details`
--

INSERT INTO `shipment_details` (`id`, `shipment_id`, `order_no`, `stock_id`, `tax_type_id`, `unit_price`, `quantity`, `discount_percent`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '131313', 2, 1290, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_category`
--

CREATE TABLE `stock_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dflt_units` int(11) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `stock_category`
--

INSERT INTO `stock_category` (`category_id`, `description`, `dflt_units`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'Default', 1, 0, '2019-06-06 03:52:46', NULL),
(2, 'Hardware', 1, 0, '2019-06-06 03:52:46', NULL),
(3, 'Health & Beauty', 1, 0, '2019-06-06 03:52:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_master`
--

CREATE TABLE `stock_master` (
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `long_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `stock_master`
--

INSERT INTO `stock_master` (`stock_id`, `category_id`, `tax_type_id`, `description`, `long_description`, `units`, `inactive`, `deleted_status`, `created_at`, `updated_at`) VALUES
('1', 2, 1, 'Arena', 'Arena', 'Each', 0, 0, '2019-06-06 22:05:40', NULL),
('55656556', 2, 1, 'uguygyu', '', 'Each', 0, 0, '2019-06-12 00:09:37', NULL),
('131313', 2, 1, 'COLLAR THE BEST', 'iuhugu ig iug ', 'Each', 0, 0, '2019-06-12 00:16:53', '2019-06-12 00:17:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_moves`
--

CREATE TABLE `stock_moves` (
  `trans_id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order_no` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tran_date` date NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `order_reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_reference_id` int(11) NOT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `stock_moves`
--

INSERT INTO `stock_moves` (`trans_id`, `stock_id`, `order_no`, `receive_id`, `trans_type`, `loc_code`, `tran_date`, `person_id`, `order_reference`, `reference`, `transaction_reference_id`, `transfer_id`, `note`, `qty`, `price`) VALUES
(1, '131313', 3, 0, 202, 'PL', '2019-06-12', 1, 'SO-0003', 'store_out_4', 4, NULL, '', -1, 1290);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_transfer`
--

CREATE TABLE `stock_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` int(11) NOT NULL,
  `source` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `transfer_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supp_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supp_name`, `email`, `address`, `contact`, `city`, `state`, `zipcode`, `country`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'DANIEL', 'daniel@demo.com', 'Montecito #38', '737373664636463', 'CDMX', 'CIUDAD DE MÉXICO', '03810', 'MX', 0, '2019-06-12 00:25:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `role_id`, `phone`, `email`, `picture`, `inactive`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', '$2y$10$Qc58xjg18SZWcLiteBB8veLWkitf9RocHfRbirHsHR0doGPRnQiRW', 'codelatin', 1, '', 'kaltemboard@gmail.com', '', 0, 'AR2HnARfcfavCxioo3hiSjhXNIbAlTNtDLKdEHNlkalJNWEKtS8XRVk2Jt04', '2019-06-06 03:53:07', '2019-06-12 00:22:45'),
(2, 'test', '$2y$10$RHl5lC5Z3NXG0K43EWKstOpGMmmszT10f0v9anf1UHok8U2/iYNae', 'test', 2, '5574646525525252', 'demo@demo.com', '', 0, '', '2019-06-12 00:22:39', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cust_branch`
--
ALTER TABLE `cust_branch`
  ADD PRIMARY KEY (`branch_code`);

--
-- Indices de la tabla `debtors_master`
--
ALTER TABLE `debtors_master`
  ADD PRIMARY KEY (`debtor_no`);

--
-- Indices de la tabla `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email_temp_details`
--
ALTER TABLE `email_temp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invoice_payment_terms`
--
ALTER TABLE `invoice_payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item_code`
--
ALTER TABLE `item_code`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item_tax_types`
--
ALTER TABLE `item_tax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item_unit`
--
ALTER TABLE `item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`);

--
-- Indices de la tabla `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchase_prices`
--
ALTER TABLE `purchase_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purch_orders`
--
ALTER TABLE `purch_orders`
  ADD PRIMARY KEY (`order_no`);

--
-- Indices de la tabla `purch_order_details`
--
ALTER TABLE `purch_order_details`
  ADD PRIMARY KEY (`po_detail_item`);

--
-- Indices de la tabla `receive_orders`
--
ALTER TABLE `receive_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receive_order_details`
--
ALTER TABLE `receive_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indices de la tabla `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`order_no`);

--
-- Indices de la tabla `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales_types`
--
ALTER TABLE `sales_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale_prices`
--
ALTER TABLE `sale_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipment_details`
--
ALTER TABLE `shipment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stock_category`
--
ALTER TABLE `stock_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indices de la tabla `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indices de la tabla `stock_transfer`
--
ALTER TABLE `stock_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de la tabla `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cust_branch`
--
ALTER TABLE `cust_branch`
  MODIFY `branch_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `debtors_master`
--
ALTER TABLE `debtors_master`
  MODIFY `debtor_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `email_temp_details`
--
ALTER TABLE `email_temp_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `invoice_payment_terms`
--
ALTER TABLE `invoice_payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `item_code`
--
ALTER TABLE `item_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `item_tax_types`
--
ALTER TABLE `item_tax_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `item_unit`
--
ALTER TABLE `item_unit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `purchase_prices`
--
ALTER TABLE `purchase_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `purch_orders`
--
ALTER TABLE `purch_orders`
  MODIFY `order_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purch_order_details`
--
ALTER TABLE `purch_order_details`
  MODIFY `po_detail_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `receive_orders`
--
ALTER TABLE `receive_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `receive_order_details`
--
ALTER TABLE `receive_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `order_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sales_order_details`
--
ALTER TABLE `sales_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sales_types`
--
ALTER TABLE `sales_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sale_prices`
--
ALTER TABLE `sale_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `shipment`
--
ALTER TABLE `shipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shipment_details`
--
ALTER TABLE `shipment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stock_category`
--
ALTER TABLE `stock_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `stock_moves`
--
ALTER TABLE `stock_moves`
  MODIFY `trans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stock_transfer`
--
ALTER TABLE `stock_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
