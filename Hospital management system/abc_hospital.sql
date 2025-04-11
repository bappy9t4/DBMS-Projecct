-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 07:10 PM
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
-- Database: `abc hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channelno`, `doctorname`, `patientname`, `roomno`, `date`) VALUES
('CH001', 'DS002', 'PS004', 10, '2024-11-28'),
('CH003', 'DS001', 'PS001', 5, '2025-04-08'),
('CH004', 'DS002', 'PS004', 1, '2025-04-11'),
('CH005', 'BD006', 'PS005', 10, '2025-04-09'),
('CH006', 'DS003', 'PS001', 111, '2025-04-21'),
('CH007', 'DS003', 'PS006', 111, '2025-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `channelfee` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorno`, `name`, `special`, `qualification`, `channelfee`, `phone`, `room`, `log_id`) VALUES
('BD001', 'Dr. Ahsan Ullah', 'Cardiology', 'MBBS, MD', 1500, 1711223344, 101, 1),
('BD002', 'Dr. Nasrin Jahan', 'Gynecology', 'MBBS, FCPS', 1200, 1722334455, 102, 2),
('BD003', 'Dr. Faruq Hossain', 'Neurology', 'MBBS, MD', 1800, 1833445566, 103, 3),
('BD004', 'Dr. Mahbub Alam', 'Orthopedics', 'MBBS, MS', 1600, 1944556677, 104, 4),
('BD005', 'Dr. Tahmina Rahman', 'Dermatology', 'MBBS, DDV', 1400, 1655667788, 105, 5),
('BD006', 'Dr. Kamrul Hasan', 'ENT', 'MBBS, FCPS', 1300, 1766778899, 106, 6),
('BD007', 'Dr. Laila Sultana', 'Pediatrics', 'MBBS, DCH', 1250, 1877889900, 107, 7),
('BD008', 'Dr. Anisur Rahman', 'Urology', 'MBBS, MS', 1700, 1988990011, 108, 8),
('BD009', 'Dr. Rashed Kabir', 'Gastroenterology', 'MBBS, MD', 1900, 1699001122, 109, 9),
('BD010', 'Dr. Rina Akhter', 'Ophthalmology', 'MBBS, DO', 1350, 1700112233, 110, 10),
('BD011', 'Dr. Mamun Chowdhury', 'Nephrology', 'MBBS, MD', 2000, 1811223344, 111, 11),
('BD012', 'Dr. Jesmin Nahar', 'Psychiatry', 'MBBS, FCPS', 1450, 1922334455, 112, 12),
('BD013', 'Dr. Arif Mahmud', 'Oncology', 'MBBS, MD', 2200, 1633445566, 113, 13),
('BD014', 'Dr. Shirin Akter', 'Radiology', 'MBBS, FCPS', 1550, 1744556677, 114, 14),
('BD015', 'Dr. Tarek Zaman', 'Pulmonology', 'MBBS, MD', 1650, 1855667788, 115, 15),
('DS001', 'shuvo', 'ca', 'mbbs', 1209, 12345678, 1, 1),
('DS002', 'halim', 'ca', 'MBBS', 1200, 1785559534, 3, 4),
('DS003', 'Dr. Mahdi Mohammad Takdeer', 'Medicine', 'MBBS, FCPS', 1200, 238584734, 111, 21);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `itemname`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('ID001', 'hum', 'ewd', 12, 14, 21),
('ID003', 'Painkiller', 'pain remove', 34, 50, 13),
('ID004', 'napa', 'different ', 13, 20, 20),
('ID005', 'napa extra', 'fever/pain', 200, 10, 560);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientno`, `name`, `phone`, `adress`) VALUES
('PS001', 'Prince', 234567785, 'Gazipur'),
('PS004', 'Bappy', 213246, 'Changao'),
('PS005', 'Takdeer', 9584883, 'Dhaka'),
('PS006', 'Rahim', 475874574, 'Badda');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `pid` varchar(255) NOT NULL,
  `channelid` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`pid`, `channelid`, `doctorname`, `detype`, `description`) VALUES
('PC001', 'CH001', 'shuvo', 'fever', ' fver added'),
('PC002', 'CH001', 'shuvo', '', ''),
('PC003', 'CH001', 'shuvo', 'frecture', 'pain killer'),
('PC004', 'CH002', 'halim', 'fever', 'just 103 deg '),
('PC005', 'CH002', 'shuvo', 'ff', 'gfr'),
('PC006', 'CH004', 'halim', 'Fever', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2024-11-26', 120, 1278, 1158),
(2, '2024-11-26', 48, 50, 2),
(3, '2024-11-26', 340, 400, 60),
(4, '2024-11-27', 340, 230, -110),
(5, '2025-04-01', 1200, 1000, 200),
(6, '2025-04-02', 850, 850, 0),
(7, '2025-04-03', 600, 500, 100),
(8, '2025-04-04', 1500, 1500, 0),
(9, '2025-04-05', 950, 700, 250),
(10, '2025-04-06', 700, 700, 0),
(11, '2025-04-07', 1100, 1000, 100),
(12, '2025-04-08', 1300, 1200, 100),
(13, '2025-04-09', 750, 500, 250),
(14, '2025-04-10', 1000, 1000, 0),
(15, '2025-04-11', 1450, 1000, 450),
(16, '2025-04-12', 900, 900, 0),
(17, '2025-04-13', 1150, 1000, 150),
(18, '2025-04-14', 980, 980, 0),
(19, '2025-04-15', 1600, 1500, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sale_product`
--

CREATE TABLE `sale_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_product`
--

INSERT INTO `sale_product` (`id`, `sales_id`, `prod_id`, `sellprice`, `qty`, `total`) VALUES
(1, 1, 'PS002', 12, 10, 120),
(2, 2, 'PS002', 12, 4, 48),
(3, 3, 'ID003', 34, 10, 340),
(4, 4, 'ID003', 34, 10, 340),
(20, 1, 'PS005', 120, 5, 600),
(21, 2, 'CC0014', 75, 3, 225),
(22, 3, 'MM0021', 200, 2, 400),
(23, 4, 'PS007', 150, 4, 600),
(24, 5, 'CC0020', 80, 2, 160),
(25, 6, 'MM0018', 190, 1, 190),
(26, 7, 'PS008', 125, 6, 750),
(27, 8, 'PS006', 150, 2, 300),
(28, 9, 'CC0015', 70, 4, 280),
(29, 10, 'MM0032', 195, 3, 585),
(30, 11, 'PS009', 130, 3, 390),
(31, 12, 'CC0019', 70, 5, 350),
(32, 13, 'PS010', 140, 2, 280),
(33, 14, 'MM0040', 200, 4, 800),
(34, 15, 'CC0022', 90, 1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `usertype`) VALUES
(6, 'bappy', 'bappy', '7891', 'Receptionist'),
(7, 'Dr. Jebunnesa Banu', 'dr_jebu', '1122', 'Doctor'),
(8, 'Kazi Amir', 'k_amir', '2233', 'Pharmacist'),
(9, 'Dr. Rakib Hasan', 'rakib123', 'pass@123', 'doctor'),
(10, 'Sumaiya Akter', 'sumaiya_a', 'sumaiya2025', 'receptionist'),
(11, 'Nayeem Islam', 'nayeem_i', 'ni_pass456', 'pharmacist'),
(12, 'Dr. Tanzina Rahman', 'tanzina_r', 'tr7890', 'doctor'),
(13, 'Mamun Hossain', 'mamun_h', 'mamun321', 'receptionist'),
(14, 'Dr. Faisal Mahmud', 'faisal_m', 'f@isal123', 'doctor'),
(15, 'Nusrat Jahan', 'nusrat_j', 'nusrat#1', 'receptionist'),
(16, 'Dr. Arafat Karim', 'arafat_k', 'arafat007', 'doctor'),
(17, 'Mehzabin Alam', 'mehzabin_a', 'mehza321', 'pharmacist'),
(18, 'Zubair Rahman', 'zubair_r', 'zub@pass', 'pharmacist'),
(19, 'Shanjida Sultana', 'shanjida_s', 'sspass456', 'receptionist'),
(20, 'Dr. Hasibul Hasan', 'hasibul_h', 'hh_secure', 'doctor'),
(21, 'Dr. Mahdi Mohammad Takdeer', 'Mahdi', '12345', 'Doctor'),
(22, 'Prince', 'prince', '3344', 'Pharmacist'),
(23, 'Tanjina Afrose Tonu', 'dr_tonu', '8901', 'Doctor'),
(24, 'Karim', 'karim_j', '8989', 'Pharmacist'),
(25, 'Dr. Mahdi Mohammad Takdeer', 'Mahdi', '12345', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channelno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorno`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientno`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_product`
--
ALTER TABLE `sale_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
