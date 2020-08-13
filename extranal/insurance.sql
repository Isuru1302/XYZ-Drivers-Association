-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 05:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `claimdetails`
--

CREATE TABLE `claimdetails` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `reason` text,
  `claimAmount` int(11) DEFAULT NULL,
  `paidAmount` int(11) DEFAULT NULL,
  `status` enum('Pending','Reject','Paid') DEFAULT NULL,
  `requestDate` date NOT NULL,
  `claimedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `claimdetails`
--

INSERT INTO `claimdetails` (`ID`, `user_name`, `reason`, `claimAmount`, `paidAmount`, `status`, `requestDate`, `claimedDate`) VALUES
(1, 'Nirwan', 'Accident', 50000, 40000, 'Paid', '2017-01-10', '2017-01-20'),
(2, 'Nirwan', 'Accident', 56000, 6000, 'Paid', '2017-02-10', '2017-02-20'),
(3, 'Nirwan', 'Slip', 88000, 7500, 'Reject', '2018-02-07', '2018-02-15'),
(4, 'Sachin', 'Accident', 50000, 40000, 'Pending', '2019-03-03', '2019-03-27'),
(5, 'Sachin', 'Sleep And Accident', 12500, 0, 'Pending', '2019-04-01', NULL),
(17, 'Isuru', 'ghjkl;', 1, NULL, 'Pending', '2019-04-07', NULL),
(18, 'Isuru', 'ghjkl;', 1, NULL, 'Pending', '2019-04-07', NULL),
(19, 'Isuru', 'accsidant', 50, NULL, 'Pending', '2019-04-07', NULL),
(20, 'Isuru', 'accsidant', 50, NULL, 'Pending', '2019-04-07', NULL),
(21, 'Isuru', 'gjgbjk', 3, NULL, 'Pending', '2019-04-07', NULL),
(22, 'Isuru', 'gjgbjk', 3, NULL, 'Pending', '2019-04-07', NULL),
(23, 'Isuru', 'Sleep and hit.', 11000, NULL, 'Pending', '2019-04-07', NULL),
(24, 'Isuru', 'Sleep and hit.', 11000, NULL, 'Pending', '2019-04-07', NULL),
(25, 'Isuru', 'Test', 5000, NULL, 'Pending', '2019-04-07', NULL),
(26, 'Isuru', 'Test', 5000, NULL, 'Pending', '2019-04-07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(16) NOT NULL,
  `Amount` double NOT NULL,
  `Name on the Card` varchar(30) NOT NULL,
  `CSV` int(11) NOT NULL,
  `Date of Expire` varchar(100) NOT NULL,
  `paid` int(10) NOT NULL,
  `userID` int(5) NOT NULL,
  `vehicle_Id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `Amount`, `Name on the Card`, `CSV`, `Date of Expire`, `paid`, `userID`, `vehicle_Id`) VALUES
(1, 30, 'randika perera', 345, '2021-03-04', 1, 1, 22),
(6, 20, 'BOC', 123, '2019-04-30', 1, 15, 24),
(7, 50, 'BBC', 123, '2019-04-30', 0, 15, 23),
(8, 15, 'BOC', 123, '2019-04-26', 0, 15, 23),
(9, 23, 'BOC', 123, '2019-04-30', 0, 15, 23);

-- --------------------------------------------------------

--
-- Table structure for table `premiumdetails`
--

CREATE TABLE `premiumdetails` (
  `ID` varchar(50) NOT NULL,
  `userName` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `premiumAmmount` int(50) DEFAULT NULL,
  `paidAmmount` int(50) DEFAULT NULL,
  `vehicleType` varchar(50) DEFAULT NULL,
  `vehicleNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `premiumdetails`
--

INSERT INTO `premiumdetails` (`ID`, `userName`, `email`, `premiumAmmount`, `paidAmmount`, `vehicleType`, `vehicleNo`) VALUES
('101', 'nirvan', 'n@n.com', 4000, 2000, NULL, NULL),
('102', 'isk', 'isk@isk.com', 3000, 1000, NULL, NULL),
('152', 'rana', 'rana@r1.com', 12500, 12500, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `user_name` varchar(256) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `u_firstName` varchar(256) NOT NULL,
  `u_lastName` varchar(256) NOT NULL,
  `u_Phone` varchar(10) NOT NULL,
  `u_Email` varchar(64) NOT NULL,
  `u_PW` varchar(256) NOT NULL,
  `u_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `user_name`, `u_firstName`, `u_lastName`, `u_Phone`, `u_Email`, `u_PW`, `u_status`) VALUES
(1, 'Nirwan', 'Nirwan', 'Zentinal', '1111111111', 'Nirwan@gmail.com', '$2a$10$gJx2rqeffk67A218sEbA5e81MRpc/rB51jpCB8TMTBsw2EBYGAyiy', 8),
(5, 'Sachin', 'Sachin', 'Priyanjith', '1233333333', 's@gmail.com', 'AUNbuZu72XYxGsR1ozzKx58sCBgnnalSfKmOBA55WIu-zrRV1xRq6tbAH9UPO2OUwQQXwHykKhRNbbem', 2),
(6, 'isuru123', 'adas', 'sdfcgvhbjk', '1111111111', 'dasdasd@gmail.com', 'frt4567', 2),
(13, 'shan96', 'madushan', 'randika', '0713207485', 'madushan9634@gmail.com', '$2a$10$gJx2rqeffk67A218sEbA5e81MRpc/rB51jpCB8TMTBsw2EBYGAyiy', 10),
(19, 'pasi', 'pasindu', 'dinusara', '0778965333', 'pasindulaksara@gmail.com', '$2a$10$z.DUyb6He/RiXB9KZgGFW..eDdsY39KvWlG1TNyKYI0Ar1n.4u8PC', 2),
(20, 'ISK123', 'Isuru', 'Sandaruwan', '0113127754', 'isuru1302@gmail.com', 'mL4hH_z1bOC65PaG5BGyKDQh91IdhXg3U-rU8kHAR-194yaMsBRy_DMMd34WSoexhPc6mJ505zF5OhRs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_reg`
--

CREATE TABLE `vehicle_reg` (
  `UserID` varchar(20) DEFAULT NULL,
  `VehicleId` int(11) NOT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `Chassis number` varchar(255) DEFAULT NULL,
  `Engine number` varchar(255) DEFAULT NULL,
  `Type of vehicle` varchar(20) DEFAULT NULL,
  `Manufacture Year` varchar(20) DEFAULT NULL,
  `Flood Cover` varchar(11) DEFAULT NULL,
  `Passenger` varchar(10) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `Vehicle_Number` varchar(10) NOT NULL,
  `vehicle_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_reg`
--

INSERT INTO `vehicle_reg` (`UserID`, `VehicleId`, `Brand`, `Chassis number`, `Engine number`, `Type of vehicle`, `Manufacture Year`, `Flood Cover`, `Passenger`, `total`, `Vehicle_Number`, `vehicle_status`) VALUES
('16', 21, 'gh-7869', '254457', '766006', 'Car', 'year3', 'null', 'yes', 55, 'gh-7869', 1),
('1', 22, 'Model1', '12345', 'eng01', 'Lorry', 'None', 'yes', 'null', 40, 'abcd-1', 1),
('15', 23, 'new 1', 'ad2412', 'eng1234', 'Car', 'year4', 'yes', 'yes', 27, 'abcd-112', 1),
('15', 24, 'benz', '1234', 'sfsfwr2r242', 'Three wheeler', 'None', 'yes', 'null', 20, 'th-6678', 1),
('15', 25, 'toyota', 'adqqeqeac3241', 'qeqeqeq', 'Motor Bike', 'year4', 'null', 'yes', 50, 'th-6678', 1),
('15', 26, 'benz', '2343255', '324325', 'Car', 'year5', 'null', 'yes', 65, 'Gz123', 1),
('16', 27, 'bajaj', '123456dfghj', '456321d', 'Motor Bike', 'year2', 'yes', 'null', 25, 'kg-6234', 0),
('16', 28, 'bajaj', 'add34', '452316', 'Three wheeler', 'year3', 'null', 'yes', 50, 'jk-4562', 0),
('16', 29, 'audi', 'as123', '1246gh', 'Car', 'year3', 'yes', 'null', 4000, 'kl-6565', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `claimdetails`
--
ALTER TABLE `claimdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `premiumdetails`
--
ALTER TABLE `premiumdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  ADD PRIMARY KEY (`VehicleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `claimdetails`
--
ALTER TABLE `claimdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vehicle_reg`
--
ALTER TABLE `vehicle_reg`
  MODIFY `VehicleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
