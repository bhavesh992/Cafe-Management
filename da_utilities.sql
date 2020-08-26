-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 10:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da_utilities`
--

-- --------------------------------------------------------

--
-- Table structure for table `batchmaster`
--

CREATE TABLE `batchmaster` (
  `batchId` int(11) NOT NULL,
  `batchName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batchmaster`
--

INSERT INTO `batchmaster` (`batchId`, `batchName`) VALUES
(1, 'MSCIT'),
(2, 'MTECH'),
(3, 'BTECH'),
(4, 'ALL');

-- --------------------------------------------------------

--
-- Table structure for table `itemtype`
--

CREATE TABLE `itemtype` (
  `itemId` int(11) NOT NULL,
  `itemTname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemtype`
--

INSERT INTO `itemtype` (`itemId`, `itemTname`) VALUES
(1, 'Books'),
(2, 'Electronics'),
(3, 'Inventory'),
(4, 'stationery');

-- --------------------------------------------------------

--
-- Table structure for table `sellmaster`
--

CREATE TABLE `sellmaster` (
  `sellId` int(11) NOT NULL,
  `emailId` varchar(30) NOT NULL,
  `itemId` int(11) NOT NULL COMMENT 'FK',
  `itemName` varchar(100) NOT NULL,
  `itemPrice` decimal(10,0) NOT NULL,
  `itemDetails` varchar(300) NOT NULL,
  `itemImage` varchar(4000) NOT NULL,
  `itemStatus` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 for Reported\r\n1 for available',
  `sellDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellmaster`
--

INSERT INTO `sellmaster` (`sellId`, `emailId`, `itemId`, `itemName`, `itemPrice`, `itemDetails`, `itemImage`, `itemStatus`, `sellDate`, `updatedAt`) VALUES
(1, '201912005@daiict.ac.in', 1, 'Discrete Maths and its Applications', '500', 'Discrete Maths and its Applications', 'book.jpg', 0, '2020-02-24 21:45:46', '2020-02-24 21:45:46'),
(2, '201912024@daiict.ac.in', 2, 'Boat rockers 510', '1500', 'Boat rockers 510', 'boat-rockerz.jpeg', 1, '2020-02-24 21:45:46', '2020-02-24 21:45:46'),
(3, '201912104@daiict.ac.in', 3, 'Mattress', '2000', 'Bed', 'mattress.jpg', 0, '2020-02-24 21:45:46', '2020-02-24 21:45:46'),
(4, '201912104@daiict.ac.in', 2, 'Segate Hard-drive', '3500', 'Segate Hard-drive', 'harddisk.jpg', 1, '2020-02-24 21:45:46', '2020-02-24 21:45:46'),
(5, '201912063@daiict.ac.in', 1, 'software engineering pressman 7th edition book', '350', ' Roger S. Pressman is an internationally recognized authority in software process ... It has been almost three decades since the first edition of this book was written. ... Schach, S., Object-Oriented and Classical Software Engineering, 7th ed., McGraw-Hill, 2006.', 'swe_Book.jpg', 1, '2020-06-16 07:16:44', '2020-06-16 07:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `sessionmaster`
--

CREATE TABLE `sessionmaster` (
  `sessionId` int(11) NOT NULL,
  `emailId` varchar(30) NOT NULL,
  `speakerName` varchar(30) NOT NULL,
  `sessionDetails` text NOT NULL,
  `batchId` int(11) NOT NULL,
  `sessionTopic` varchar(50) NOT NULL,
  `sessionPrice` decimal(10,0) NOT NULL,
  `LocationId` int(11) NOT NULL,
  `sessionDate` date NOT NULL,
  `sessionTime` time NOT NULL,
  `sessionAddedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `sessionUpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessionmaster`
--

INSERT INTO `sessionmaster` (`sessionId`, `emailId`, `speakerName`, `sessionDetails`, `batchId`, `sessionTopic`, `sessionPrice`, `LocationId`, `sessionDate`, `sessionTime`, `sessionAddedAt`, `sessionUpdatedAt`) VALUES
(1, '201912104@daiict.ac.in', 'Kavisha Parikh', 'PLACEMENTS 2020', 3, 'Scenario', '0', 4, '2020-07-02', '09:00:25', '2020-02-24 22:03:31', '2020-02-24 22:03:31'),
(2, '201912104@daiict.ac.in', 'Amit Shah', 'Section 370', 3, 'Section 370', '0', 3, '2020-03-29', '10:00:00', '2020-02-24 22:09:23', '2020-02-24 22:09:23'),
(3, '201912104@daiict.ac.in', 'Sundar Pichai', 'Quantam Computers', 3, 'Quantam Computers', '0', 2, '2020-07-01', '11:00:00', '2020-02-24 22:09:23', '2020-02-24 22:09:23'),
(4, '201912104@daiict.ac.in', 'Elon Musk', 'Star Link.', 3, 'Star Link.', '0', 1, '2020-06-25', '23:00:00', '2020-02-24 22:09:23', '2020-02-24 22:09:23'),
(7, '201912104@daiict.ac.in', 'DADC', 'DANCE WORKSHOP', 3, 'KATHAK', '1500', 2, '2020-06-30', '08:00:00', '2020-06-04 15:19:41', '2020-06-04 15:19:41'),
(8, '201912104@daiict.ac.in', 'Devini Sanghavi', 'Standard Template Library', 1, 'CPP', '0', 1, '2020-06-17', '20:00:00', '2020-06-17 18:13:07', '2020-06-17 18:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessionrequest`
--

CREATE TABLE `sessionrequest` (
  `sessionreqId` int(11) NOT NULL,
  `remailId` varchar(30) NOT NULL,
  `speakerName` varchar(30) NOT NULL,
  `sessionDetails` varchar(100) NOT NULL,
  `batchId` int(11) NOT NULL,
  `sessionTopic` varchar(50) NOT NULL,
  `sessionPrice` decimal(10,0) NOT NULL,
  `LocationId` int(11) NOT NULL,
  `sessionDate` date NOT NULL,
  `sessionTime` time NOT NULL,
  `sessionStatus` smallint(1) NOT NULL,
  `sessionAddedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `sessionUpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessionrequest`
--

INSERT INTO `sessionrequest` (`sessionreqId`, `remailId`, `speakerName`, `sessionDetails`, `batchId`, `sessionTopic`, `sessionPrice`, `LocationId`, `sessionDate`, `sessionTime`, `sessionStatus`, `sessionAddedAt`, `sessionUpdatedAt`) VALUES
(26, '201912005@daiict.ac.in', 'Riya Shah', 'TCP IP Protocol', 3, 'Computer Network', '0', 2, '2020-01-12', '22:00:00', 0, '2020-06-17 18:18:18', '2020-06-17 18:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `usermaster`
--

CREATE TABLE `usermaster` (
  `emailId` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `batchId` int(11) NOT NULL,
  `mobileNo` bigint(10) NOT NULL,
  `userId` smallint(1) NOT NULL DEFAULT 1 COMMENT '1 for normal2 for special commitiee3 for Admin',
  `userStatus` enum('Active','Inactive','','') NOT NULL DEFAULT 'Inactive',
  `userAddedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `userUpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermaster`
--

INSERT INTO `usermaster` (`emailId`, `password`, `userName`, `batchId`, `mobileNo`, `userId`, `userStatus`, `userAddedAt`, `userUpdatedAt`) VALUES
('201912005@daiict.ac.in', 'Anshul@5', 'Anshul Khemani', 1, 9924120253, 1, 'Active', '2020-06-17 17:52:42', '2020-06-17 17:52:42'),
('201912024@daiict.ac.in', 'Janvi@24', 'Janvi Patel', 1, 9824231173, 1, 'Active', '2020-06-17 17:49:08', '2020-06-17 17:49:08'),
('201912063@daiict.ac.in', 'Kavisha@63', 'Kavisha Parikh', 1, 9824231172, 1, 'Active', '2020-06-17 17:53:46', '2020-06-17 17:53:46'),
('201912104@daiict.ac.in', 'Girish@104', 'Girish Prajapati', 1, 9586361199, 2, 'Active', '2020-06-17 17:51:03', '2020-06-17 17:51:03'),
('admin@daiict.ac.in', 'admin@daiict', 'admin@da', 3, 9714818258, 3, 'Active', '2020-06-16 05:28:54', '2020-06-16 05:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `userId` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`userId`, `type`) VALUES
(1, 'student'),
(2, 'committee'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `venuemaster`
--

CREATE TABLE `venuemaster` (
  `LocationId` int(11) NOT NULL,
  `LocationName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venuemaster`
--

INSERT INTO `venuemaster` (`LocationId`, `LocationName`) VALUES
(1, 'CEP-110'),
(2, 'CEP-106'),
(3, 'LT-1'),
(4, 'LT-2'),
(5, 'LT-3'),
(6, 'OAT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batchmaster`
--
ALTER TABLE `batchmaster`
  ADD PRIMARY KEY (`batchId`);

--
-- Indexes for table `itemtype`
--
ALTER TABLE `itemtype`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `sellmaster`
--
ALTER TABLE `sellmaster`
  ADD PRIMARY KEY (`sellId`);

--
-- Indexes for table `sessionmaster`
--
ALTER TABLE `sessionmaster`
  ADD PRIMARY KEY (`sessionId`);

--
-- Indexes for table `sessionrequest`
--
ALTER TABLE `sessionrequest`
  ADD PRIMARY KEY (`sessionreqId`);

--
-- Indexes for table `usermaster`
--
ALTER TABLE `usermaster`
  ADD PRIMARY KEY (`emailId`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `venuemaster`
--
ALTER TABLE `venuemaster`
  ADD PRIMARY KEY (`LocationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batchmaster`
--
ALTER TABLE `batchmaster`
  MODIFY `batchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `itemtype`
--
ALTER TABLE `itemtype`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sellmaster`
--
ALTER TABLE `sellmaster`
  MODIFY `sellId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sessionmaster`
--
ALTER TABLE `sessionmaster`
  MODIFY `sessionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sessionrequest`
--
ALTER TABLE `sessionrequest`
  MODIFY `sessionreqId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venuemaster`
--
ALTER TABLE `venuemaster`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
