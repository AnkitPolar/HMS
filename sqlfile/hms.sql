-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 05:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  `payment_status` varchar(20) DEFAULT 'paid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`, `payment_status`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, '', 'unpaid'),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, '', 'unpaid'),
(28, 'Dentist', 1, 6, 500, '2025-04-26', '15:07', '2025-04-26 09:37:37', 1, 1, '', 'paid'),
(29, 'Dentist', 1, 6, 500, '2025-04-26', '16:17', '2025-04-26 09:47:24', 1, 1, '', 'paid'),
(30, 'Ayurveda', 5, 6, 8050, '2025-04-27', '16:21', '2025-04-26 09:51:36', 1, 1, '', 'paid'),
(31, 'General Physician', 6, 6, 2500, '2025-04-27', '12:37', '2025-04-27 06:06:56', 0, 1, '', 'paid'),
(32, 'General Physician', 6, 7, 2500, '2025-04-27', '00:49', '2025-04-27 06:19:54', 1, 1, '', 'paid'),
(33, 'Bones Specialist demo', 8, 6, 1000, '2025-04-27', '00:58', '2025-04-27 06:28:43', 1, 0, '', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subject` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `subject`, `created_at`) VALUES
(1, 'Ankit Sahoo', 'ankitsahoo09@gmail.com', '09937405828', 'hello', '2025-04-29 05:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Code Projects', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'abc ', 'xyz', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', ''),
(8, 'Bones Specialist demo', 'Shivam', 'Mahilong/Dwarika', '1000', 9953069682, 'shivam@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2025-04-27 06:26:32', '27-04-2025 11:57:52 AM'),
(9, 'Bones Specialist demo', 'Shivam', 'Mahilong/Dwarika', '1000', 9953069682, 'shivam@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2025-04-27 06:27:03', '27-04-2025 11:57:52 AM');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:03:23', '15-04-2025 01:33:41 PM', 1),
(11, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:06:43', '', 0),
(12, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:11:25', '', 0),
(13, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:12:51', '', 0),
(14, 0, 'sagar@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:13:13', '', 0),
(15, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:13:19', '', 0),
(16, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:15:25', '', 0),
(17, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:15:31', '', 0),
(18, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:16:11', '', 0),
(19, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:19:50', '', 0),
(20, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:22:31', '', 0),
(21, 0, 'test@example.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:24:17', '', 0),
(22, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:27:47', '', 0),
(23, 0, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:28:10', '', 0),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:29:21', '15-04-2025 01:59:58 PM', 1),
(25, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:30:13', '', 0),
(26, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:33:46', '', 0),
(27, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:33:58', '', 0),
(28, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:34:03', '', 0),
(29, 0, 'Sagar', 0x3a3a3100000000000000000000000000, '2025-04-15 08:34:09', '', 0),
(30, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:36:25', '', 0),
(31, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:39:41', '', 0),
(32, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:41:54', '', 0),
(33, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:44:28', '', 0),
(34, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:44:38', '', 0),
(35, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:44:51', '', 0),
(36, 0, 'ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:47:04', '', 0),
(37, 13, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-15 09:11:06', '15-04-2025 02:49:37 PM', 1),
(38, 13, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-16 05:45:55', '', 1),
(39, 0, 'test@example.com', 0x3a3a3100000000000000000000000000, '2025-04-17 04:46:47', '25-04-2025 09:56:58 PM', 0),
(40, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2025-04-17 04:47:29', '', 1),
(41, 13, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-17 04:49:39', '', 1),
(42, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:25:25', '25-04-2025 09:55:30 PM', 1),
(43, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:26:50', '25-04-2025 09:56:54 PM', 1),
(44, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:27:43', '25-04-2025 09:57:46 PM', 1),
(45, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:28:03', '25-04-2025 09:58:14 PM', 1),
(46, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:32:06', '25-04-2025 10:02:09 PM', 1),
(47, 8, 'shivam@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:27:22', '27-04-2025 11:58:06 AM', 1),
(48, 8, 'shivam@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:29:35', '27-04-2025 12:00:19 PM', 1),
(49, 0, 'shivam@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-29 04:55:06', '', 0),
(50, 0, 'shivam@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-29 04:55:15', '', 0),
(51, 8, 'shivam@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-29 04:55:23', '29-04-2025 10:25:31 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', ''),
(2, 'General Physician', '2016-12-28 06:38:12', ''),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopath', '2016-12-28 06:39:26', ''),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '07-01-2017 01:38:04 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:00:30', '15-04-2025 01:31:35 PM', 1),
(16, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-15 08:10:18', '15-04-2025 01:40:57 PM', 1),
(17, 0, 'Ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 08:49:08', '', 0),
(18, 0, 'Ankit Sahoo', 0x3a3a3100000000000000000000000000, '2025-04-15 08:49:28', '', 0),
(19, 0, 'Ankit Sahoo', 0x3a3a3100000000000000000000000000, '2025-04-15 09:07:21', '', 0),
(20, 0, 'Ankit Sahoo', 0x3a3a3100000000000000000000000000, '2025-04-15 09:07:30', '', 0),
(21, 0, 'Ankit Sahoo', 0x3a3a3100000000000000000000000000, '2025-04-15 09:07:56', '', 0),
(22, 0, 'Ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 09:08:28', '', 0),
(23, 0, 'Ankit', 0x3a3a3100000000000000000000000000, '2025-04-15 09:08:53', '', 0),
(24, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-15 09:09:11', '', 1),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-16 05:16:21', '16-04-2025 10:51:11 AM', 1),
(26, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-16 05:21:22', '', 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-17 04:46:24', '', 1),
(28, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-18 04:52:47', '', 0),
(29, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-18 04:52:57', '', 0),
(30, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-18 04:53:07', '', 1),
(31, 0, 'ankitsahoo@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 15:22:15', '', 0),
(32, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 15:22:56', '25-04-2025 08:56:00 PM', 1),
(33, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 15:28:41', '', 1),
(34, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 15:36:36', '', 1),
(35, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:04:58', '25-04-2025 09:35:04 PM', 1),
(36, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:06:06', '25-04-2025 09:36:08 PM', 1),
(37, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:09:10', '25-04-2025 09:39:11 PM', 1),
(38, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:17:39', '25-04-2025 09:47:41 PM', 1),
(39, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:18:36', '', 1),
(40, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:21:36', '25-04-2025 09:51:43 PM', 1),
(41, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-25 16:31:53', '25-04-2025 10:01:56 PM', 1),
(42, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-26 08:06:00', '26-04-2025 02:31:32 PM', 1),
(43, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-26 09:01:41', '', 1),
(44, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-26 09:11:31', '', 1),
(45, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-26 09:14:29', '', 1),
(46, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-26 09:18:08', '', 1),
(47, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-26 09:37:23', '26-04-2025 03:23:58 PM', 1),
(48, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:06:31', '27-04-2025 11:42:09 AM', 1),
(49, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:12:31', '27-04-2025 11:46:51 AM', 1),
(50, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:17:07', '', 1),
(51, 7, 'shivam@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:18:40', '27-04-2025 11:53:45 AM', 1),
(52, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:28:24', '27-04-2025 11:59:25 AM', 1),
(53, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-27 06:30:27', '27-04-2025 12:06:48 PM', 1),
(54, 0, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-29 04:56:10', '', 0),
(55, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-29 04:56:18', '29-04-2025 10:26:20 AM', 1),
(56, 6, 'ankitsahoo09@gmail.com', 0x3a3a3100000000000000000000000000, '2025-04-29 05:16:55', '29-04-2025 10:47:33 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Anuj kumar', 'Test address', 'Aligarh', 'Males', 'info@w3gang.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-26 07:03:09', '30-12-2016 11:27:47 AM'),
(2, 'Code Projects', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', ''),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', ''),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', ''),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '07-01-2017 01:32:12 PM'),
(6, 'Ankit', '108C Dwarika Nagar,Mahilong,tatisilwai,ranchi Dwarika Hospital 835103 RANCHI', 'Ranchi', 'male', 'ankitsahoo09@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2025-04-15 08:48:56', ''),
(7, 'Shivam Kumar Gaur', 'Mahilog', 'Ranchi', 'male', 'shivam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2025-04-27 06:18:16', '');

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
