-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 06:06 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `contactno` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Email`, `Password`, `contactno`, `Address`) VALUES
('Anjalee Singh', 'anjaleesingh@gmail.com', '123456', 2147483647, 'Surat'),
('Neha Sanaye', 'nehasanaye@gmail.com', '123456', 2147483647, 'Surat'),
('Nirav Donda', 'niravdonda@gmail.com', '123456', 2147483647, 'Surat'),
('Pratik Donda', 'pratikdonda@gmail.com', '123456', 2147483647, 'Surat'),
('Vipul Miyani', 'vipulmiyani@gmail.com', '123456', 2147483647, 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Availability` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Bid`, `Bname`, `Subject`, `Author`, `Availability`) VALUES
('B0011', 'microprocessor and interfacing', 'Microprocessor', 'Douglas Hall', 'no'),
('B0012', 'linux Command Line & is a Control Opeerator', 'Operatind System', 'Richard Blum & Chris', 'no'),
('B0013', 'Unix & Shell Program', 'Operating system', 'B.M. Harwani Oxford', 'yes'),
('B0014', 'System Anaysis & Design', 'SOAD', 'Satzinger,Jackson & ', 'yes'),
('B0015', 'Computer Networks', 'Computer Network', 'A.S.Tanenbaum', 'yes'),
('B0016', 'Systems Programming', 'SPCC', 'D.M. Dhamdhere', 'no'),
('B0017', 'Software Engineering', 'SE', 'Ali Behforooz Fredri', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `claimreturn`
--

CREATE TABLE `claimreturn` (
  `claim_return_id` int(10) NOT NULL,
  `Issue_id` int(10) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `validreturndate` date NOT NULL,
  `returnclaim_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finepaid`
--

CREATE TABLE `finepaid` (
  `Fine_pay_id` int(11) NOT NULL,
  `Fine_id` int(11) NOT NULL,
  `Issue_id` int(11) NOT NULL,
  `Return_id` int(11) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Amount` int(10) NOT NULL,
  `payment_date` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fine_unpaid`
--

CREATE TABLE `fine_unpaid` (
  `Fine_id` int(10) NOT NULL,
  `Issue_id` int(10) NOT NULL,
  `Return_id` int(10) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Issue_date` date NOT NULL,
  `Return_date` date NOT NULL,
  `diff` varchar(10) NOT NULL,
  `Amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `Issue_id` int(10) NOT NULL,
  `Request_id` int(10) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `Issue_date` date NOT NULL,
  `validreturndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuestore`
--

CREATE TABLE `issuestore` (
  `Issue_id` int(10) NOT NULL,
  `Mid` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `Issue_date` date NOT NULL,
  `validreturndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_code`
--

CREATE TABLE `library_code` (
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_code`
--

INSERT INTO `library_code` (`code`) VALUES
('OLMS');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Name` varchar(30) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `ContactNo` int(10) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Book1` varchar(50) NOT NULL,
  `Book2` varchar(50) NOT NULL,
  `days` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Name`, `Mid`, `Email`, `Password`, `Branch`, `Year`, `ContactNo`, `Address`, `Book1`, `Book2`, `days`) VALUES
('Yash Lad', '038', 'yashlad@gmail.com', '123456', 'Computer', '2018', 2147483647, 'Adajan, Surat', '', '', 0),
('Kevin Patel', '071', 'kevinpatel@gmail.com', '123456', 'Computer', '2018', 2147483647, 'Katargam, Surat', '', '', 0),
('Akshay Jain', '093', 'akshayjain@gmail.com', '123456', 'Computer', '2018', 2147483647, 'Adajan, Surat', '', '', 0),
('Meet Kachhadiya', '107', 'meetkachhadiya@gmail.com', '123456', 'Computer', '2018', 2147483647, 'Katargam, Surat', '', '', 0),
('Pratik Patel', '119', 'pratikp545@gmail.com', '123456', 'Computer', '2018', 2147483647, 'Mota Varachha, Surat', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requestbook`
--

CREATE TABLE `requestbook` (
  `Request_id` int(10) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `requestdate` date NOT NULL,
  `requestexpirydays` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestbook`
--

INSERT INTO `requestbook` (`Request_id`, `Mid`, `Name`, `Bid`, `Bname`, `requestdate`, `requestexpirydays`) VALUES
(2, '119', 'Pratik Patel', 'B0013', 'Unix & Shell Program', '2018-09-20', '0'),
(3, '119', 'Pratik Patel', 'B0017', 'Software Engineering', '2018-09-20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `Return_id` int(10) NOT NULL,
  `Issue_id` int(10) NOT NULL,
  `claim_return_id` int(10) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `validreturndate` date NOT NULL,
  `Return_date` date NOT NULL,
  `diff` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returnstore`
--

CREATE TABLE `returnstore` (
  `Return_id` int(10) NOT NULL,
  `Issue_id` int(10) NOT NULL,
  `Bid` varchar(10) NOT NULL,
  `Bname` varchar(50) NOT NULL,
  `Mid` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `validreturndate` date NOT NULL,
  `Return_date` date NOT NULL,
  `diff` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Bid`);

--
-- Indexes for table `claimreturn`
--
ALTER TABLE `claimreturn`
  ADD PRIMARY KEY (`claim_return_id`);

--
-- Indexes for table `finepaid`
--
ALTER TABLE `finepaid`
  ADD PRIMARY KEY (`Fine_pay_id`),
  ADD UNIQUE KEY `Fine_id` (`Fine_id`);

--
-- Indexes for table `fine_unpaid`
--
ALTER TABLE `fine_unpaid`
  ADD PRIMARY KEY (`Fine_id`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`Issue_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Mid`),
  ADD KEY `RollNo` (`Mid`);

--
-- Indexes for table `requestbook`
--
ALTER TABLE `requestbook`
  ADD PRIMARY KEY (`Request_id`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`Return_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `claimreturn`
--
ALTER TABLE `claimreturn`
  MODIFY `claim_return_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fine_unpaid`
--
ALTER TABLE `fine_unpaid`
  MODIFY `Fine_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `Issue_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requestbook`
--
ALTER TABLE `requestbook`
  MODIFY `Request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `Return_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
