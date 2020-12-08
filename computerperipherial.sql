-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 11:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computerperipherial`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproducts`
--

CREATE TABLE `addproducts` (
  `Id` int(11) NOT NULL,
  `Code` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addproducts`
--

INSERT INTO `addproducts` (`Id`, `Code`, `Name`, `Description`, `Category`, `Manufacturer`, `Quantity`, `Price`) VALUES
(1, 201, 'Microphone', 'mini silver corded', 'Input', 'Hama', 59, 529),
(2, 202, 'mouse', 'black', 'Input', 'dell', 56, 213),
(3, 203, 'keyboard', 'Compact Wireless', 'Input', 'Logitech', 32, 999),
(4, 204, 'Speaker', 'Bluetooth Multimedia', 'Output', 'Philips', 29, 4099);

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `Id` int(11) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `Contact` double NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Quantity` int(50) NOT NULL,
  `UnitPrice` int(50) NOT NULL,
  `TotalAmount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`Id`, `CustomerName`, `Contact`, `Address`, `Date`, `ProductName`, `Quantity`, `UnitPrice`, `TotalAmount`) VALUES
(1, 'Esha', 9682683900, 'Malad,Mumbai', '10-11-2020', 'Speaker', 2, 4099, 8198),
(2, 'Qurrat', 9834722179, 'Andheri,Mumbai', '13-11-2020', 'keyboard', 3, 999, 2997),
(3, 'Lekha', 9143298076, 'Goregaon', '13-11-2020', 'mouse', 2, 213, 426);

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE `loginform` (
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginform`
--

INSERT INTO `loginform` (`name`, `password`) VALUES
('esha', 'esha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproducts`
--
ALTER TABLE `addproducts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addproducts`
--
ALTER TABLE `addproducts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customerdetail`
--
ALTER TABLE `customerdetail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
