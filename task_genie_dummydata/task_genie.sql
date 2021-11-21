-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 05:42 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_genie`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `acnt_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`acnt_id`, `u_id`, `username`, `password`) VALUES
(1, 1, 'admin1@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a'),
(36, 2, 'dhruti.123@gmail.com', '69a9109a9f8ff8cc78c0f949d24365dc'),
(37, 2, 'anushree.123@gmail.com', 'd8cb364b15abe61a8471701e54ec12eb'),
(38, 2, 'vidhi.1999@gmail.com', 'c652e2ae603960e491677c4188681938'),
(39, 2, 'chitra.agni123@gmail.com', '43c847b0f8f323ac5c9e98c967715954');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `u_id` int(11) NOT NULL DEFAULT '1',
  `a_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`u_id`, `a_id`, `f_name`, `l_name`, `username`, `email`, `mobileno`, `city`) VALUES
(1, 1, 'Rakesh', 'Mehra', 'admin1@gmail.com', 'admin1@gmail.com', 9845223510, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` varchar(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `flatno` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `zip` int(11) NOT NULL,
  `comments` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`b_id`, `c_id`, `s_id`, `fullname`, `date`, `time`, `flatno`, `street`, `city`, `landmark`, `zip`, `comments`) VALUES
(1, 25, 'MICD', 'Dhruti Patel', '2018-10-19', '03:00 PM', '345', 'Ashok nagar', 'banglore', 'jain mandir', 421308, 'Finish it as soon as possible'),
(2, 26, 'MKDETAIL', 'Anushree Shah', '2018-11-15', '04:00 PM', '56', 'Santacruz', 'mumbai', 'opp.Dmart', 435678, 'I would like to use my products for makeup.'),
(3, 26, 'PT3', 'Anushka Sharma', '2018-11-08', '12:00 PM', '56', 'Santacruz', 'pune', 'opp.Big bazzar', 567234, ''),
(4, 27, 'KIT', 'Vidhi Parikh', '2018-11-08', '03:00 PM', '56/9', 'Dostii Apartment', 'ahemdabad', 'Near Jain Mandir', 765109, ''),
(5, 28, 'PER', 'Chitra Agnihotri', '2018-11-11', '02:00 PM', 'Block 10', 'Sector 2', 'delhi', 'Beside Akshardham', 561093, '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `u_id` int(11) NOT NULL DEFAULT '2',
  `c_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`u_id`, `c_id`, `username`, `f_name`, `l_name`, `mobile_no`, `email`, `city`) VALUES
(2, 25, 'dhruti.123@gmail.com', 'Dhruti', 'Patel', 9552239993, 'dhruti.123@gmail.com', 'mumbai'),
(2, 26, 'anushree.123@gmail.com', 'Anushree', 'Shah', 6789113455, 'anushree.123@gmail.com', 'mumbai'),
(2, 27, 'vidhi.1999@gmail.com', 'Vidhi ', 'Parikh', 9883464678, 'vidhi.1999@gmail.com', 'pune'),
(2, 28, 'chitra.agni123@gmail.com', 'Chitra ', 'Agnihotri', 8912390156, 'chitra.agni123@gmail.com', 'banglore');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `helper`
--

CREATE TABLE `helper` (
  `h_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `age` int(3) NOT NULL,
  `city` varchar(50) NOT NULL,
  `skill_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `helper`
--

INSERT INTO `helper` (`h_id`, `f_name`, `l_name`, `mobile_no`, `age`, `city`, `skill_id`) VALUES
(9, 'Sharda', 'Verma', 9757123409, 38, 'mumbai', 1),
(10, 'Anil', 'Kothari', 987654321, 47, 'pune', 3),
(11, 'Ajay', 'Patil', 9060852735, 32, 'hyderabad', 2),
(12, 'Saba', 'Shaikh', 8879092136, 23, 'delhi', 5),
(13, 'Jagruti', 'Sheth', 7092134762, 30, 'ahemdabad', 4),
(14, 'Tanmay', 'Bhatt', 7623415678, 29, 'banglore', 3),
(15, 'Romil', 'Sarju', 6721346546, 32, 'ahemdabad', 1),
(16, 'Umang', 'Jain', 8734523425, 43, 'hyderabad', 3),
(17, 'Somi', 'Khan', 9067235167, 23, 'pune', 5),
(18, 'Surbhi', 'Punjabi', 8902345267, 30, 'mumbai', 4),
(19, 'Raksha', 'Patel', 8923408143, 28, 'banglore', 2),
(20, 'Tushar', 'Gandhi', 8989456723, 25, 'mumbai', 3),
(21, 'Rajubhai', 'Pattrawala', 7845129067, 45, 'mumbai', 3),
(22, 'Jhonny', 'Sebistian', 9067123456, 45, 'mumbai', 2),
(23, 'Megha', 'Verma', 6789451234, 33, 'mumbai', 5),
(24, 'Mahesh', 'Gaitonde', 7856456789, 34, 'pune', 1),
(25, 'Kapil', 'Sharma', 6756904326, 38, 'banglore', 1),
(26, 'Rahul', 'Haria', 8976445675, 27, 'hyderabad', 1),
(27, 'Raj', 'Tapsee', 9090877678, 45, 'pune', 2),
(28, 'Farooq', 'Shaikh', 7876547567, 34, 'ahemdabad', 2),
(29, 'Shyam', 'Kumar', 7890567877, 36, 'delhi', 2),
(30, 'Ram', 'Naida', 7890532456, 43, 'delhi', 1),
(31, 'Chirag', 'Agnihotri', 8975127946, 37, 'delhi', 2),
(32, 'Ajinkya', 'Mehra', 7890510982, 31, 'ahemdabad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `tamount` int(11) NOT NULL,
  `cardname` varchar(100) NOT NULL,
  `cardno` varchar(20) NOT NULL,
  `cvv` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `b_id`, `tamount`, `cardname`, `cardno`, `cvv`) VALUES
(1, 1, 500, 'dhruti sunil patel', '1234567890123456', 234),
(2, 2, 2000, 'Anushree Shah', '4532167890234567', 567),
(3, 3, 1500, 'Anushka Sharma', '6419023008773441', 912),
(4, 4, 1000, 'Vidhi Parikh', '7823146723450923', 672),
(5, 5, 500, 'Chitra Ranjeet Agnihotri', '0821459825671890', 101);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `s_id` varchar(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `charge` int(11) NOT NULL,
  `nhelpers` int(11) NOT NULL DEFAULT '1',
  `skill_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`s_id`, `service_name`, `charge`, `nhelpers`, `skill_id`) VALUES
('AC1', 'AC Repair', 1000, 1, 2),
('AC2', 'AC Repair', 2000, 2, 2),
('AC3', 'AC Repair', 3000, 3, 2),
('AC4', 'AC Repair', 4000, 4, 2),
('AC5', 'AC Repair', 5000, 5, 2),
('AVI', 'Anti-Virus Installation', 400, 1, 2),
('BSW', 'Basic Software Installation (upto 10 softwares)', 500, 1, 2),
('CLEAN', 'Complete PC Clean-up', 700, 1, 2),
('DAC', 'Dusting and Cleaning from Inside', 500, 1, 2),
('DH', 'Desktop Hang (only detection)', 400, 1, 2),
('DISP', 'No Display Issue', 400, 1, 2),
('HC1', 'House Cleaning ', 2000, 2, 1),
('HC2', 'House Cleaning', 2500, 3, 1),
('HC3', 'House Cleaning', 3000, 3, 1),
('HC4', 'House Cleaning', 4000, 4, 1),
('HDD', 'Hard Disk Bad Sector (only detection)', 500, 1, 2),
('HEAT', 'Over Heating Issue (including dusting and servicing from inside)', 600, 1, 2),
('HW', 'Installation of Any Hardware (Lan/DVD Writer/SMPS/RAM/Hard Disk)', 500, 1, 2),
('ISP', 'Inspection', 400, 1, 2),
('KIT', 'Kitchen Cleaning', 1000, 1, 1),
('MB', 'Motherboard Issue Detection (including port issues like USB/HDMI/VGA/LAN)', 600, 1, 2),
('MICD', 'Microwave Installation and Demonstration', 500, 1, 2),
('MICI', 'Microwave Inspection or Repair', 500, 1, 2),
('MKDETAIL', 'Makeup and Hairstyling', 2000, 2, 5),
('MKMUL', 'Makeup and Hairstyling', 5000, 3, 5),
('MKSUBTLE', 'Makeup And Hairstyling', 1000, 2, 5),
('NET', 'Internet Issue', 400, 1, 2),
('OFF', 'Office Cleaning', 1500, 2, 1),
('OSBK1', 'OS Formatting without Back-up', 900, 1, 2),
('OSBK2', 'OS Formatting with Data Back-up (upto 20 GB)', 1100, 1, 2),
('OSW', 'Other Software/Application Installation (per software/application)', 600, 1, 2),
('PER', 'Slow Performance Issue (including tune-up)', 500, 1, 2),
('PKBM', 'Pre Bridal Makeover Package', 5000, 4, 4),
('PKEG', 'Eyecatcher Glow Package', 1200, 2, 4),
('PKHT', 'Head To Toe Package', 2000, 3, 4),
('PKWG', 'Wax And Groom Package', 800, 2, 4),
('PT1', 'Pest Control', 500, 1, 3),
('PT2', 'Pest Control', 1000, 1, 3),
('PT3', 'Pest Control', 1500, 1, 3),
('PT4', 'Pest Control', 2000, 2, 3),
('UP', 'Upgradation Inspection', 400, 1, 2),
('WXBK', 'Back Waxing', 200, 1, 5),
('WXFA', 'Full Arms Waxing', 200, 1, 5),
('WXHA', 'Half Arms Waxing', 100, 1, 5),
('WXHL', 'Half Legs Waxing', 120, 1, 5),
('WXST', 'Stomach Waxing', 100, 1, 5),
('WXUA', 'Underarms Waxing', 50, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(3) NOT NULL,
  `skill_name` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`) VALUES
(1, 'cleaner'),
(2, 'repairer'),
(3, 'pestController'),
(4, 'spa'),
(5, 'beautician');

-- --------------------------------------------------------

--
-- Table structure for table `user type`
--

CREATE TABLE `user type` (
  `u_id` int(11) NOT NULL,
  `type of user` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user type`
--

INSERT INTO `user type` (`u_id`, `type of user`) VALUES
(1, 'admin'),
(2, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`acnt_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `booking_ibfk_1` (`c_id`),
  ADD KEY `booking_ibfk_3` (`s_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `h_id` (`h_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `helper`
--
ALTER TABLE `helper`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `user type`
--
ALTER TABLE `user type`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `acnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `helper`
--
ALTER TABLE `helper`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user type` (`u_id`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user type` (`u_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user type` (`u_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`h_id`) REFERENCES `helper` (`h_id`);

--
-- Constraints for table `helper`
--
ALTER TABLE `helper`
  ADD CONSTRAINT `fk` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `booking` (`b_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
