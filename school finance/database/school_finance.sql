-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2019 at 09:21 AM
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
-- Database: `school_finance`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `fee_amount` double NOT NULL DEFAULT '0',
  `year` varchar(100) NOT NULL DEFAULT '2018'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `class_name`, `term`, `fee_amount`, `year`) VALUES
(1, 'FORM 1', 'TERM I', 5000, '2019'),
(2, 'FORM 2', 'TERM I', 4000, '2019'),
(3, 'FORM 3', 'TERM I', 3000, '2019'),
(4, 'FORM 4', 'TERM I', 5000, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `pay_id` int(11) NOT NULL,
  `admno` int(11) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `term` varchar(100) NOT NULL,
  `amount_paid` double NOT NULL DEFAULT '0',
  `amount_in_words` text NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `payment_code` varchar(100) NOT NULL,
  `date_of_payment` date NOT NULL,
  `notes` text NOT NULL,
  `receipt_no` int(11) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`pay_id`, `admno`, `class_name`, `term`, `amount_paid`, `amount_in_words`, `mode_of_payment`, `payment_code`, `date_of_payment`, `notes`, `receipt_no`, `balance`) VALUES
(1, 1, 'FORM 1 ', 'TERM I', 100, 'yiana', 'bank slip', '1234', '2019-01-26', 'being pauid ', 1, 0),
(2, 1, 'FORM 1 ', 'TERM I', 1000, 'haf adtyfvb  adg', 'bank slip', '5678', '2019-01-17', 'dtfyu fghj ghjk', 2, 3900),
(3, 1, 'FORM 1 ', 'TERM I', 1000, 'ngili', 'bank slip', '5678', '2019-01-26', 'str dtycu dfgvh', 3, 2900),
(4, 1, 'FORM 1 ', 'TERM I', 5000, 'five thousands', 'bank slip', 'pay534', '2019-01-26', 'penalty', 4, -2100),
(5, 2, 'FORM 1 ', 'TERM I', 400, 'four ', 'bank slip', 'pay23', '2019-01-26', 'dsbhghsd', 5, 4600),
(6, 1, 'FORM 1 ', 'TERM I', 100, 'one', 'bank slip', 'fghjk', '2019-01-26', 'dfhjk', 6, -2200),
(7, 1, 'FORM 1 ', 'TERM I', -2300, 'vhgjc c', 'bank slip', '3344', '2019-01-26', 'rtyu fytuio', 7, 100);

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE `statement` (
  `id` int(11) NOT NULL,
  `admno` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Document_Type` varchar(100) NOT NULL,
  `Ref` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Debit_Expected` double NOT NULL DEFAULT '0',
  `Credit_Paid` double NOT NULL DEFAULT '0',
  `Balance` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement`
--

INSERT INTO `statement` (`id`, `admno`, `Date`, `Document_Type`, `Ref`, `Description`, `Debit_Expected`, `Credit_Paid`, `Balance`) VALUES
(1, 1, '2019-01-26', 'INVOICE(TERM I)', 'INV2019/01/261', 'Being fees forFORM 1TERM I', 5000, 0, 5000),
(2, 1, '2019-01-26', 'INVOICE(TERM I)', 'INV2019/01/261', 'Being fees forFORM 1TERM I', 5000, 0, 5000),
(3, 1, '2019-01-26', 'bank slip', '5678', 'str dtycu dfgvh', 0, 1000, 2900),
(4, 1, '2019-01-26', 'bank slip', 'pay534', 'penalty', 0, 5000, -2100),
(5, 2, '2019-01-26', 'bank slip', 'pay23', 'dsbhghsd', 0, 400, 4600),
(6, 1, '2019-01-26', 'bank slip', 'fghjk', 'dfhjk', 0, 100, -2200),
(7, 3, '2019-01-26', 'INVOICE(TERM I)', 'INV2019/01/261', 'Being fees forFORM 2TERM I', 4000, 0, 4000),
(8, 4, '2019-01-26', 'INVOICE(TERM I)', 'INV2019/01/261', 'Being fees forFORM 3TERM I', 3000, 0, 3000),
(9, 1, '2019-01-26', 'bank slip', '3344', 'rtyu fytuio', 0, -2300, 100),
(10, 10, '2019-01-26', 'INVOICE(TERM I)', 'INV2019/01/261', 'Being fees forFORM 4TERM I', 5000, 0, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `admno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `fee_balance` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`admno`, `name`, `class_name`, `stream`, `year`, `fee_balance`) VALUES
(1, 'chris watia', 'FORM 1 ', 'EAST', '2019', 100),
(2, 'mark markit', 'FORM 1 ', 'EAST', '2019', 5000),
(3, 'peter nmaish', 'FORM 2  ', 'EAST', '2019', 4000),
(4, 'benard', 'FORM 3  ', 'EAST', '2019', 3000),
(5, 'benard misheck', 'FORM 3  ', 'EAST', '2019', 3000),
(6, 'naomi', 'FORM 1 ', 'EAST', '2019', 5000),
(7, 'Samuel', 'FORM 2  ', 'EAST', '2019', 4000),
(8, 'joel', 'FORM 1 ', 'EAST', '2019', 5000),
(9, 'muth', 'FORM 1 ', 'EAST', '2019', 5000),
(10, 'lomu', 'FORM 4 ', 'EAST', '2019', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `voteheads`
--

CREATE TABLE `voteheads` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `votehead` varchar(100) NOT NULL,
  `term` varchar(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voteheads`
--

INSERT INTO `voteheads` (`id`, `class_name`, `votehead`, `term`, `amount`, `year`) VALUES
(1, 'FORM 1', 'Boarding', 'TERM I', 5000, 2019),
(2, 'FORM 1', 'Examination', 'TERM I', 2000, 2019),
(3, 'FORM 2', 'Boarding', 'TERM I', 4000, 2019),
(4, 'FORM 3', 'Boarding', 'TERM I', 3000, 2019),
(5, 'FORM 4', 'boarding', 'TERM I', 5000, 2019),
(6, 'FORM 1', 'lunch', 'TERM I', 8000, 2019),
(7, 'FORM 1', 'supper', 'TERM II', 10000, 2019);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `admno` (`admno`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admno` (`admno`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`admno`),
  ADD KEY `class_name` (`class_name`);

--
-- Indexes for table `voteheads`
--
ALTER TABLE `voteheads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voteheads`
--
ALTER TABLE `voteheads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
