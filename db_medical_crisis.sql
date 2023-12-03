-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 07:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_medical_crisis`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add accident', 7, 'add_accident'),
(26, 'Can change accident', 7, 'change_accident'),
(27, 'Can delete accident', 7, 'delete_accident'),
(28, 'Can view accident', 7, 'view_accident'),
(29, 'Can add ambulance', 8, 'add_ambulance'),
(30, 'Can change ambulance', 8, 'change_ambulance'),
(31, 'Can delete ambulance', 8, 'delete_ambulance'),
(32, 'Can view ambulance', 8, 'view_ambulance'),
(33, 'Can add police', 9, 'add_police'),
(34, 'Can change police', 9, 'change_police'),
(35, 'Can delete police', 9, 'delete_police'),
(36, 'Can view police', 9, 'view_police'),
(37, 'Can add doctor', 10, 'add_doctor'),
(38, 'Can change doctor', 10, 'change_doctor'),
(39, 'Can delete doctor', 10, 'delete_doctor'),
(40, 'Can view doctor', 10, 'view_doctor'),
(41, 'Can add hospital', 11, 'add_hospital'),
(42, 'Can change hospital', 11, 'change_hospital'),
(43, 'Can delete hospital', 11, 'delete_hospital'),
(44, 'Can view hospital', 11, 'view_hospital'),
(45, 'Can add staff', 12, 'add_staff'),
(46, 'Can change staff', 12, 'change_staff'),
(47, 'Can delete staff', 12, 'delete_staff'),
(48, 'Can view staff', 12, 'view_staff'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user'),
(53, 'Can add login', 14, 'add_login'),
(54, 'Can change login', 14, 'change_login'),
(55, 'Can delete login', 14, 'delete_login'),
(56, 'Can view login', 14, 'view_login'),
(57, 'Can add complaint', 15, 'add_complaint'),
(58, 'Can change complaint', 15, 'change_complaint'),
(59, 'Can delete complaint', 15, 'delete_complaint'),
(60, 'Can view complaint', 15, 'view_complaint'),
(61, 'Can add department', 16, 'add_department'),
(62, 'Can change department', 16, 'change_department'),
(63, 'Can delete department', 16, 'delete_department'),
(64, 'Can view department', 16, 'view_department'),
(65, 'Can add location', 17, 'add_location'),
(66, 'Can change location', 17, 'change_location'),
(67, 'Can delete location', 17, 'delete_location'),
(68, 'Can view location', 17, 'view_location');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crisis_accident`
--

CREATE TABLE `crisis_accident` (
  `accid` int(11) NOT NULL,
  `accidenttype` varchar(100) NOT NULL,
  `accident` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `police_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_accident`
--

INSERT INTO `crisis_accident` (`accid`, `accidenttype`, `accident`, `description`, `location_id`, `date`, `time`, `police_id`, `user_id`) VALUES
(1, 'Accident type 1', 'Accident 1', 'Accident description 1', 1, '2022-04-18', '18:50', NULL, 3),
(2, 'Accident type 2', 'Accident 2', 'Accident description 2', 5, '2022-04-19', '03:52', NULL, 3),
(3, 'Accident type 3', 'Accident 3', 'Accident description 3', 5, '2022-04-16', '22:24', 3, 1),
(4, 'Bike', 'Man, approximate 26 years old', 'A man crashed his bike into a tree. Lot of blood on road', 5, '2022-05-09', '22:27', 3, 4),
(5, 'Suicide attempt', 'Lady with kid', 'Lady with a kid jumped from Kollam bridge to river.', 2, '2022-05-09', '23:03', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_ambulance`
--

CREATE TABLE `crisis_ambulance` (
  `ambid` int(11) NOT NULL,
  `ambname` varchar(100) NOT NULL,
  `ambphone` varchar(100) NOT NULL,
  `amblocation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_ambulance`
--

INSERT INTO `crisis_ambulance` (`ambid`, `ambname`, `ambphone`, `amblocation_id`) VALUES
(1, 'Ambulance 1', '9087776789', 5),
(3, 'Ambulance 2', '9033245345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_complaint`
--

CREATE TABLE `crisis_complaint` (
  `compid` int(11) NOT NULL,
  `complaint` varchar(300) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_complaint`
--

INSERT INTO `crisis_complaint` (`compid`, `complaint`, `user_id`) VALUES
(2, 'Complaint 1', 1),
(3, 'Complaint 2', 1),
(4, 'I reported an accident 2 hours ago. No one is responding.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_department`
--

CREATE TABLE `crisis_department` (
  `departid` int(11) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `departdesc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_department`
--

INSERT INTO `crisis_department` (`departid`, `departname`, `departdesc`) VALUES
(1, 'Emergency Department', 'Special team to attend Emergency cases'),
(2, 'Department 2', 'Department description 2'),
(3, 'Department 3', 'Department description 3'),
(4, 'Department 4', 'Department description 4');

-- --------------------------------------------------------

--
-- Table structure for table `crisis_doctor`
--

CREATE TABLE `crisis_doctor` (
  `docid` int(11) NOT NULL,
  `docname` varchar(100) NOT NULL,
  `docdesc` varchar(300) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_doctor`
--

INSERT INTO `crisis_doctor` (`docid`, `docname`, `docdesc`, `department_id`, `hospital_id`) VALUES
(4, 'Dr.Banner', 'Specialized in Accident cases', 1, 7),
(5, 'Dr. Strange', 'Neuro surgeon ', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_hospital`
--

CREATE TABLE `crisis_hospital` (
  `hospid` int(11) NOT NULL,
  `hospname` varchar(100) NOT NULL,
  `hospdesc` varchar(300) NOT NULL,
  `facilities` varchar(300) NOT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_hospital`
--

INSERT INTO `crisis_hospital` (`hospid`, `hospname`, `hospdesc`, `facilities`, `location_id`) VALUES
(2, 'Hospital 1', 'Description 1', 'Facility 1 , Facility 2 , Facility 3', 2),
(5, 'Hospital 2', 'Description 2', 'Facility 1 , Facility 2 , Facility 3 , Facility 4', 3),
(6, 'Hospital 3', 'Description 3', 'Facility 1 , Facility 2', 4),
(7, 'Medical Mission Kottarakara', 'Hospital description 4', 'Facility 1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_location`
--

CREATE TABLE `crisis_location` (
  `locid` int(11) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_location`
--

INSERT INTO `crisis_location` (`locid`, `location`) VALUES
(1, 'Karikkod'),
(2, 'Kollam'),
(3, 'Kundara'),
(4, 'Chandhanathope'),
(5, 'Kottarakara');

-- --------------------------------------------------------

--
-- Table structure for table `crisis_login`
--

CREATE TABLE `crisis_login` (
  `logid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_login`
--

INSERT INTO `crisis_login` (`logid`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'amal', 'amal', 'user'),
(4, 'Sarath', 'sarath', 'user'),
(5, 'aswin', '1234das', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `crisis_police`
--

CREATE TABLE `crisis_police` (
  `policeid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_police`
--

INSERT INTO `crisis_police` (`policeid`, `name`, `phone`, `email`, `address`, `location_id`) VALUES
(1, 'Police 1', '8987678909', 'police1@gmail.com', 'Police address 1', 4),
(3, 'Police 2', '8987667789', 'police2@gmail.com', 'Police address 2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_staff`
--

CREATE TABLE `crisis_staff` (
  `staffid` int(11) NOT NULL,
  `staffname` varchar(100) NOT NULL,
  `staffaddress` varchar(100) NOT NULL,
  `staffphone` varchar(100) NOT NULL,
  `staffdesc` varchar(100) NOT NULL,
  `staffdepart_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_staff`
--

INSERT INTO `crisis_staff` (`staffid`, `staffname`, `staffaddress`, `staffphone`, `staffdesc`, `staffdepart_id`, `hospital_id`) VALUES
(4, 'Staff 1', 'Staff address 1', '8987678909', 'Staff description 1', 1, 2),
(5, 'Peter', '3rd block, Kottarakkara', '8765957463', 'Specialized in urgent medical support', 1, 7),
(6, 'Christine', 'Flat number 4, K building, Kottarakkara', '8767789686', 'Staff nurse', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `crisis_user`
--

CREATE TABLE `crisis_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `pin` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `emergency` varchar(100) NOT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crisis_user`
--

INSERT INTO `crisis_user` (`userid`, `name`, `phone`, `email`, `address`, `pin`, `date`, `status`, `emergency`, `login_id`) VALUES
(1, 'Amaldev', '8767890987', 'amaldev@gmail.com', 'Amal bhavanam', '897765', '2022-04-19', '1', '', 2),
(3, 'Sarath', '876785467', 'sarath@gmail.com', 'Sarat bhavanam', '987890', '2022-04-19', '1', '', 4),
(4, 'Aswin Das', '8838949878', 'aswindas@gmail.com', '12th street', '685645', '2022-05-09', '1', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'crisis', 'accident'),
(8, 'crisis', 'ambulance'),
(15, 'crisis', 'complaint'),
(16, 'crisis', 'department'),
(10, 'crisis', 'doctor'),
(11, 'crisis', 'hospital'),
(17, 'crisis', 'location'),
(14, 'crisis', 'login'),
(9, 'crisis', 'police'),
(12, 'crisis', 'staff'),
(13, 'crisis', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-18 14:25:03.929743'),
(2, 'auth', '0001_initial', '2022-04-18 14:25:04.344333'),
(3, 'admin', '0001_initial', '2022-04-18 14:25:04.475926'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-18 14:25:04.486929'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-18 14:25:04.496928'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-18 14:25:04.584029'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-18 14:25:04.620552'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-18 14:25:04.659513'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-18 14:25:04.669886'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-18 14:25:04.701761'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-18 14:25:04.706760'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-18 14:25:04.718763'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-18 14:25:04.758834'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-18 14:25:04.800231'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-18 14:25:04.843419'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-18 14:25:04.856420'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-18 14:25:04.891144'),
(18, 'sessions', '0001_initial', '2022-04-18 14:25:04.915143'),
(19, 'crisis', '0001_initial', '2022-04-18 14:45:50.054642'),
(20, 'crisis', '0002_department_location_remove_ambulance_clocation_and_more', '2022-04-19 04:48:20.587604'),
(21, 'crisis', '0003_alter_doctor_department', '2022-04-19 05:29:56.476696'),
(22, 'crisis', '0004_alter_staff_staffdepart', '2022-04-19 05:46:04.123027'),
(23, 'crisis', '0005_rename_ambaddress_ambulance_ambphone', '2022-04-19 15:34:01.437137'),
(24, 'crisis', '0006_accident_police_accident_user', '2022-04-19 16:45:18.078843');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8p0mjvmva7x4oz8q3qk4g54itw0ztu90', 'eyJ1c2VybmFtZSI6ImFtYWwiLCJyb2xlIjoidXNlciIsImlkIjoyfQ:1ngjpm:croPSxvHFA-Ogx6_qeehEsprOewKtFaefh_jVBg1d4w', '2022-05-03 09:07:42.899472'),
('h290s17yd5fhvyf7m7bwdd8jlql9xfhy', '.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1gIAMM4NdQ:1no7MJ:w_3nTJ-JWb0daSINnz3Ej5ZElzOy83QPlpLMY0C-lBQ', '2022-05-23 17:39:47.529489'),
('t28nmanlh9qkjdxv6ew19dxx3ad5kvoy', 'e30:1nh1Rh:x4pcGfQi2xc8Ob0nKgmmKOwKt5oJ4xkV1hGTCLnyu58', '2022-05-04 03:56:01.930555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `crisis_accident`
--
ALTER TABLE `crisis_accident`
  ADD PRIMARY KEY (`accid`),
  ADD KEY `crisis_accident_location_id_ff870036` (`location_id`),
  ADD KEY `crisis_accident_police_id_47eef5fc_fk_crisis_police_policeid` (`police_id`),
  ADD KEY `crisis_accident_user_id_0eff36c1_fk_crisis_user_userid` (`user_id`);

--
-- Indexes for table `crisis_ambulance`
--
ALTER TABLE `crisis_ambulance`
  ADD PRIMARY KEY (`ambid`),
  ADD KEY `crisis_ambulance_amblocation_id_f9dbb4d1` (`amblocation_id`);

--
-- Indexes for table `crisis_complaint`
--
ALTER TABLE `crisis_complaint`
  ADD PRIMARY KEY (`compid`),
  ADD KEY `crisis_complaint_user_id_87d8494d_fk_crisis_user_userid` (`user_id`);

--
-- Indexes for table `crisis_department`
--
ALTER TABLE `crisis_department`
  ADD PRIMARY KEY (`departid`);

--
-- Indexes for table `crisis_doctor`
--
ALTER TABLE `crisis_doctor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `crisis_doctor_hospital_id_707a3395_fk_crisis_hospital_hospid` (`hospital_id`),
  ADD KEY `crisis_doctor_department_id_7dfd20c8` (`department_id`);

--
-- Indexes for table `crisis_hospital`
--
ALTER TABLE `crisis_hospital`
  ADD PRIMARY KEY (`hospid`),
  ADD KEY `crisis_hospital_location_id_a78254af_fk_crisis_location_locid` (`location_id`);

--
-- Indexes for table `crisis_location`
--
ALTER TABLE `crisis_location`
  ADD PRIMARY KEY (`locid`);

--
-- Indexes for table `crisis_login`
--
ALTER TABLE `crisis_login`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `crisis_police`
--
ALTER TABLE `crisis_police`
  ADD PRIMARY KEY (`policeid`),
  ADD KEY `crisis_police_location_id_31da939f` (`location_id`);

--
-- Indexes for table `crisis_staff`
--
ALTER TABLE `crisis_staff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `crisis_staff_hospital_id_a9beeea0_fk_crisis_hospital_hospid` (`hospital_id`),
  ADD KEY `crisis_staff_staffdepart_id_a2510561` (`staffdepart_id`);

--
-- Indexes for table `crisis_user`
--
ALTER TABLE `crisis_user`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `crisis_user_login_id_910f80e0_fk_crisis_login_logid` (`login_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crisis_accident`
--
ALTER TABLE `crisis_accident`
  MODIFY `accid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crisis_ambulance`
--
ALTER TABLE `crisis_ambulance`
  MODIFY `ambid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crisis_complaint`
--
ALTER TABLE `crisis_complaint`
  MODIFY `compid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crisis_department`
--
ALTER TABLE `crisis_department`
  MODIFY `departid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crisis_doctor`
--
ALTER TABLE `crisis_doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crisis_hospital`
--
ALTER TABLE `crisis_hospital`
  MODIFY `hospid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crisis_location`
--
ALTER TABLE `crisis_location`
  MODIFY `locid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crisis_login`
--
ALTER TABLE `crisis_login`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crisis_police`
--
ALTER TABLE `crisis_police`
  MODIFY `policeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crisis_staff`
--
ALTER TABLE `crisis_staff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crisis_user`
--
ALTER TABLE `crisis_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `crisis_accident`
--
ALTER TABLE `crisis_accident`
  ADD CONSTRAINT `crisis_accident_location_id_ff870036_fk_crisis_location_locid` FOREIGN KEY (`location_id`) REFERENCES `crisis_location` (`locid`),
  ADD CONSTRAINT `crisis_accident_police_id_47eef5fc_fk_crisis_police_policeid` FOREIGN KEY (`police_id`) REFERENCES `crisis_police` (`policeid`),
  ADD CONSTRAINT `crisis_accident_user_id_0eff36c1_fk_crisis_user_userid` FOREIGN KEY (`user_id`) REFERENCES `crisis_user` (`userid`);

--
-- Constraints for table `crisis_ambulance`
--
ALTER TABLE `crisis_ambulance`
  ADD CONSTRAINT `crisis_ambulance_amblocation_id_f9dbb4d1_fk_crisis_lo` FOREIGN KEY (`amblocation_id`) REFERENCES `crisis_location` (`locid`);

--
-- Constraints for table `crisis_complaint`
--
ALTER TABLE `crisis_complaint`
  ADD CONSTRAINT `crisis_complaint_user_id_87d8494d_fk_crisis_user_userid` FOREIGN KEY (`user_id`) REFERENCES `crisis_user` (`userid`);

--
-- Constraints for table `crisis_doctor`
--
ALTER TABLE `crisis_doctor`
  ADD CONSTRAINT `crisis_doctor_department_id_7dfd20c8_fk_crisis_de` FOREIGN KEY (`department_id`) REFERENCES `crisis_department` (`departid`),
  ADD CONSTRAINT `crisis_doctor_hospital_id_707a3395_fk_crisis_hospital_hospid` FOREIGN KEY (`hospital_id`) REFERENCES `crisis_hospital` (`hospid`);

--
-- Constraints for table `crisis_hospital`
--
ALTER TABLE `crisis_hospital`
  ADD CONSTRAINT `crisis_hospital_location_id_a78254af_fk_crisis_location_locid` FOREIGN KEY (`location_id`) REFERENCES `crisis_location` (`locid`);

--
-- Constraints for table `crisis_police`
--
ALTER TABLE `crisis_police`
  ADD CONSTRAINT `crisis_police_location_id_31da939f_fk_crisis_location_locid` FOREIGN KEY (`location_id`) REFERENCES `crisis_location` (`locid`);

--
-- Constraints for table `crisis_staff`
--
ALTER TABLE `crisis_staff`
  ADD CONSTRAINT `crisis_staff_hospital_id_a9beeea0_fk_crisis_hospital_hospid` FOREIGN KEY (`hospital_id`) REFERENCES `crisis_hospital` (`hospid`),
  ADD CONSTRAINT `crisis_staff_staffdepart_id_a2510561_fk_crisis_de` FOREIGN KEY (`staffdepart_id`) REFERENCES `crisis_department` (`departid`);

--
-- Constraints for table `crisis_user`
--
ALTER TABLE `crisis_user`
  ADD CONSTRAINT `crisis_user_login_id_910f80e0_fk_crisis_login_logid` FOREIGN KEY (`login_id`) REFERENCES `crisis_login` (`logid`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
