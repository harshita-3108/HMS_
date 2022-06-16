-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 04:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `meet_link` text DEFAULT NULL,
  `pescription` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`, `meet_link`, `pescription`) VALUES
(7, 'Dermatologist', 9, 2, 500, '2022-05-07', '7:45 AM', '2022-05-06 02:04:48', 1, 1, '2022-06-05 20:15:14', 'hello_5', 0x4169724173696120496e646961202d20424c5220544f204343552e706466),
(8, 'Dentist', 10, 2, 300, '2022-05-19', '10:30 PM', '2022-05-12 16:57:42', 1, 1, '2022-06-05 20:15:14', 'hello_5', 0x4169724173696120496e646961202d20424c5220544f204343552e706466),
(9, 'General Physician', 6, 2, 2500, '2022-06-23', '8:00 PM', '2022-06-01 14:24:38', 1, 1, '2022-06-05 20:15:14', 'hello_5', 0x4169724173696120496e646961202d20424c5220544f204343552e706466),
(25, 'Ear-Nose-Throat (Ent) Specialist', 11, 8, 800, '2022-06-23', '12:00 PM', '2022-06-16 08:01:46', 1, 1, NULL, NULL, NULL),
(26, 'Demo test', 7, 8, 200, '2022-06-30', '10:00 PM', '2022-06-16 08:03:28', 2, 1, '2022-06-16 08:39:23', NULL, NULL),
(28, 'Homeopath', 2, 8, 600, '2022-08-25', '2:00 PM', '2022-06-16 09:01:19', 0, 1, '2022-06-16 09:02:09', NULL, NULL),
(29, 'Dentist', 10, 8, 300, '2022-06-30', '8:00 PM', '2022-06-16 13:50:06', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-06-30 12:11:05'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2019-06-23 18:17:25'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10'),
(10, 'Dentist', 'Harshita Mishra', '36 sukanta sarani, tulsi 2,hindmotor\r\nUttapara\r\nHooghly', '300', 1234567890, 'mharshita31@gmail.com', '183a5c49db2e8e0c5c96d3a29bed7c75', '2021-11-14 11:02:26', NULL),
(11, 'Ear-Nose-Throat (Ent) Specialist', 'Harshita Mishra', 'hindmotor,hooghly', '800', 700360002, '12200118047harshitamishra@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-06-05 09:47:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 10, 'mharshita31@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-14 11:03:08', '14-11-2021 04:33:25 PM', 1),
(21, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 02:13:54', NULL, 0),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-05-06 02:14:26', NULL, 1),
(23, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 16:39:06', NULL, 0),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-05-06 16:39:42', '06-05-2022 10:10:45 PM', 1),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-06-01 15:43:12', '01-06-2022 09:14:08 PM', 1),
(26, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 09:10:10', NULL, 0),
(27, NULL, ' test@demo.com', 0x3a3a3100000000000000000000000000, '2022-06-02 09:10:29', NULL, 0),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-06-02 09:10:48', '02-06-2022 02:42:08 PM', 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-06-05 09:44:24', '05-06-2022 03:15:14 PM', 1),
(30, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 09:47:26', '05-06-2022 03:17:34 PM', 1),
(31, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 10:07:04', NULL, 1),
(32, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 11:06:01', NULL, 1),
(33, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 11:07:35', NULL, 1),
(34, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 11:20:25', NULL, 1),
(35, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 18:03:13', '10-06-2022 11:36:13 PM', 1),
(36, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 12:30:46', NULL, 1),
(37, NULL, '12200118047', 0x3a3a3100000000000000000000000000, '2022-06-13 13:48:23', NULL, 0),
(38, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 13:50:03', '13-06-2022 07:47:08 PM', 1),
(39, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 15:26:31', NULL, 1),
(40, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 15:31:27', '13-06-2022 09:17:37 PM', 1),
(41, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:06:04', NULL, 1),
(42, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:11:12', '13-06-2022 09:41:30 PM', 1),
(43, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:45:09', '13-06-2022 10:18:07 PM', 1),
(44, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 17:24:37', '13-06-2022 10:55:08 PM', 1),
(45, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 18:01:48', '13-06-2022 11:32:46 PM', 1),
(46, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-14 20:26:17', NULL, 1),
(47, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 14:07:15', NULL, 1),
(48, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 09:56:58', '16-06-2022 03:32:32 PM', 1),
(49, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 10:02:47', '16-06-2022 07:17:52 PM', 1),
(50, 11, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 13:55:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(4, 'Harshita Mishra', 'mharshita31@gmail.com', 7003633401, ' ', '2022-05-05 17:00:31', 'Its an empty query', '2022-06-02 09:13:13', 1),
(5, 'Frazia Farheen', 'ehgfoud1@gmail.com', 4584586524, ' ', '2022-05-05 17:07:31', 'Hey, Its a test email', '2022-06-16 09:46:16', 1),
(6, 'Harshita Mishra', 'mharshita31@gmail.com', 7003633401, ' ', '2022-05-05 20:17:12', 'empty query', '2022-06-16 09:39:10', 1),
(7, 'Harshita Mishra', 'mharshita31@gmail.com', 1234567890, ' How can i connect with a dentist', '2022-06-14 10:25:01', 'Login/Register and then book appointment', '2022-06-16 09:18:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pescription` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`, `pescription`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.Dolo 650\r\n', '2022-05-06 04:20:07', NULL),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2022-04-13 04:31:24', NULL),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2022-05-06 04:52:42', NULL),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2022-05-06 14:38:33', NULL),
(8, 6, '120/80', '30', '68', '12', 'dolo 650', '2022-06-16 10:10:52', 0x61646d69742d372e706466);

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Harshita Mishra', 4558968789, 'test@gmail.com', 'Female', '\"Hindmotor Hooghly\"', 26, 'She is diabetic patient', '2022-04-04 21:38:06', '0000-00-00 00:00:00'),
(2, 5, 'Dristi Agarwal', 9797977979, 'test@gmail.com', 'Female', 'ABC Apartment', 39, 'No', '2022-04-05 10:40:13', '0000-00-00 00:00:00'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2022-04-05 10:49:41', '0000-00-00 00:00:00'),
(4, 7, 'Frazia Farheen', 9888988989, 'test@gmail.com', 'Male', 'Kidderpore', 45, 'She is suffering from fever', '2022-04-04 14:33:54', '2022-06-05 10:39:37'),
(6, 11, 'Dristi Agarwal', 7000011101, 'mharshita31@gmail.com', 'Male', '36 sukanta sarani, tulsi 2,hindmotor\r\nUttapara', 22, 'NA', '2022-06-05 11:14:04', '2022-06-05 11:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-14 11:04:06', '14-11-2021 04:43:21 PM', 1),
(25, NULL, 'test', 0x3a3a3100000000000000000000000000, '2022-05-01 13:38:44', NULL, 0),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-01 13:39:12', '01-05-2022 07:15:35 PM', 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-01 13:45:57', '01-05-2022 07:21:53 PM', 1),
(28, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-01 14:26:15', NULL, 1),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-05 10:05:28', NULL, 1),
(30, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-05 10:15:32', '05-05-2022 03:50:20 PM', 1),
(31, NULL, 'fghdkjh', 0x3a3a3100000000000000000000000000, '2022-05-05 18:31:45', NULL, 0),
(32, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-05 18:45:59', NULL, 1),
(33, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-05 18:46:10', NULL, 0),
(34, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-05 19:30:41', NULL, 1),
(35, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-05 20:24:52', NULL, 1),
(36, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 01:04:28', NULL, 1),
(37, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 01:26:27', NULL, 1),
(38, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 02:11:30', '06-05-2022 07:43:44 AM', 1),
(39, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 02:18:35', NULL, 1),
(40, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 02:40:23', NULL, 1),
(41, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-06 16:40:56', NULL, 1),
(42, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 14:30:06', '01-06-2022 08:00:10 PM', 1),
(43, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 15:45:33', NULL, 1),
(44, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 09:13:26', NULL, 1),
(45, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 09:49:03', '05-06-2022 03:19:43 PM', 1),
(46, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 10:32:44', NULL, 1),
(47, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 11:06:48', NULL, 1),
(48, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-05 20:17:29', NULL, 1),
(49, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 18:01:44', '10-06-2022 11:32:59 PM', 1),
(50, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 12:57:57', NULL, 1),
(51, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 12:58:43', NULL, 1),
(52, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 13:08:26', NULL, 1),
(53, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 13:37:01', '13-06-2022 07:18:12 PM', 1),
(54, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 14:17:16', '13-06-2022 07:47:19 PM', 1),
(55, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 14:22:11', '13-06-2022 07:52:24 PM', 1),
(56, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 14:28:09', '13-06-2022 07:58:13 PM', 1),
(57, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 14:29:08', '13-06-2022 08:00:18 PM', 1),
(58, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 15:08:15', '13-06-2022 08:41:47 PM', 1),
(59, NULL, '12200118047harshitamishra@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:07:20', NULL, 0),
(60, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:10:40', '13-06-2022 09:41:04 PM', 1),
(61, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:15:56', NULL, 1),
(62, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:34:40', '13-06-2022 10:04:46 PM', 1),
(63, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:34:52', '13-06-2022 10:04:55 PM', 1),
(64, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 16:41:10', '13-06-2022 10:14:41 PM', 1),
(65, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 17:06:37', '13-06-2022 10:36:50 PM', 1),
(66, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 17:22:13', '13-06-2022 10:54:25 PM', 1),
(67, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 17:35:52', '13-06-2022 11:06:03 PM', 1),
(68, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 17:57:56', '13-06-2022 11:28:55 PM', 1),
(69, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-13 18:00:39', '13-06-2022 11:31:37 PM', 1),
(70, NULL, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-14 12:01:26', NULL, 0),
(71, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-14 12:01:35', '14-06-2022 06:17:51 PM', 1),
(72, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-14 12:48:03', '15-06-2022 01:12:18 AM', 1),
(73, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-14 19:46:54', '15-06-2022 01:21:32 AM', 1),
(74, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 13:44:35', NULL, 1),
(75, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 13:55:24', '15-06-2022 07:37:03 PM', 1),
(76, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 14:08:07', NULL, 1),
(77, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 14:17:00', '15-06-2022 07:57:41 PM', 1),
(78, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 14:31:15', '15-06-2022 08:10:58 PM', 1),
(79, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 17:57:34', NULL, 1),
(80, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 18:29:03', NULL, 1),
(81, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 18:48:33', NULL, 1),
(82, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 18:49:22', NULL, 1),
(83, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:37:10', NULL, 1),
(84, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:40:45', NULL, 0),
(85, NULL, 'mharshita31@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:40:53', NULL, 0),
(86, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:40:58', NULL, 1),
(87, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:45:18', NULL, 1),
(88, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:46:05', NULL, 1),
(89, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 19:48:13', NULL, 1),
(90, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-15 20:18:21', NULL, 1),
(91, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 04:42:01', NULL, 1),
(92, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 05:12:15', NULL, 1),
(93, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 05:17:54', '16-06-2022 02:47:18 PM', 1),
(94, 8, 'frazia@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-16 13:48:02', '16-06-2022 07:24:52 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Harshita Mishraa', 'Kolkata India', 'Kolkata', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '2022-05-12 16:57:02'),
(8, 'Frazia Farheen', 'kidderpore', 'kolkata', 'female', 'frazia@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-06-05 09:48:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
