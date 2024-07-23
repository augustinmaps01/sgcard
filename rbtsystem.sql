-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 11:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rbtsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `accessid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `hradmin` text NOT NULL,
  `hradminpass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`accessid`, `uid`, `hradmin`, `hradminpass`) VALUES
(2, 1, 'T', '9921502bb2e9cc175d4cfea38592f290f83370f4');

-- --------------------------------------------------------

--
-- Table structure for table `appvleave`
--

CREATE TABLE `appvleave` (
  `applvid` int(11) NOT NULL,
  `leaveid` int(11) DEFAULT NULL,
  `officer` varchar(60) NOT NULL,
  `acondition` varchar(60) NOT NULL,
  `asofficer` varchar(60) NOT NULL,
  `officerstamplog` timestamp NOT NULL DEFAULT current_timestamp(),
  `appvlog` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assettype`
--

CREATE TABLE `assettype` (
  `assettypeid` int(12) NOT NULL,
  `typename` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assettype`
--

INSERT INTO `assettype` (`assettypeid`, `typename`, `timestamp`) VALUES
(1, 'Printer', '2022-03-06 04:02:36'),
(2, 'Power Supply', '2022-03-06 04:02:56'),
(3, 'Storage Memory', '2022-03-06 04:03:19'),
(4, 'PC Case', '2022-03-06 05:41:22'),
(5, 'UPS', '2022-05-27 03:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `bid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `maf` varchar(100) NOT NULL,
  `mafsub` varchar(100) NOT NULL,
  `hospitalization` varchar(100) NOT NULL,
  `hospitalizationsub` varchar(100) NOT NULL,
  `executive` varchar(100) NOT NULL,
  `exesub` varchar(100) NOT NULL,
  `grocery` varchar(50) NOT NULL,
  `grocsub` varchar(100) NOT NULL,
  `rice` varchar(50) NOT NULL,
  `ricesub` varchar(100) NOT NULL,
  `lptype` varchar(100) NOT NULL,
  `loadplan` varchar(50) NOT NULL,
  `lpsub` varchar(100) NOT NULL,
  `gas` varchar(100) NOT NULL,
  `gassub` varchar(100) NOT NULL,
  `benefitsstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `brid` int(11) NOT NULL,
  `brname` text DEFAULT NULL,
  `brak` text DEFAULT NULL,
  `brcode` varchar(10) DEFAULT NULL,
  `brstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`brid`, `brname`, `brak`, `brcode`, `brstamp`) VALUES
(1, 'Head Office', 'HO', '00', '2022-01-18 07:37:09'),
(2, 'Main Office', 'MO', '01', '2022-02-13 11:32:02'),
(3, 'Jasaan Branch', 'JB', '02', '2022-02-13 11:32:12'),
(4, 'Salay Branch', 'SB', '03', '2022-02-13 11:32:20'),
(5, 'CDO Branch', 'CDOB', '04', '2022-02-13 11:32:29'),
(6, 'Maramag Branch', 'MB', '05', '2022-02-27 09:43:06'),
(7, 'Gingoog BLU', 'GBLU', '06', '2022-06-17 05:26:08'),
(8, 'Camiguin BLU', 'CBLU', '07', '2022-06-17 05:26:25'),
(9, 'Butuan BLU', 'BBLU', '08', '2023-04-27 07:49:40'),
(10, 'Manolo BLU', 'MBLU', '09', '2023-04-27 07:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `co_idno` varchar(20) NOT NULL,
  `datehired` varchar(30) NOT NULL,
  `regapp` varchar(30) NOT NULL,
  `empstat` varchar(30) NOT NULL,
  `position` varchar(30) DEFAULT NULL,
  `positionlvl` varchar(25) NOT NULL,
  `branch` int(11) DEFAULT NULL,
  `suboffice` varchar(30) NOT NULL,
  `department` varchar(40) NOT NULL,
  `salary` varchar(340) NOT NULL,
  `coinfocreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `timelog` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `uid`, `co_idno`, `datehired`, `regapp`, `empstat`, `position`, `positionlvl`, `branch`, `suboffice`, `department`, `salary`, `coinfocreated`, `timelog`) VALUES
(2, 2, '2019-010', '07/01/2019', '01/02/2020', 'Regular', 'MIS Assistant', '', 1, '  ', 'MIS', 'DvLozvs=', '2023-02-08 06:10:05', '2023-02-21 01:29:29'),
(3, 3, '2011-013', '03/21/1988', '06/01/2012', 'Regular  ', '-- Select Position --', '  ', 1, '  ', 'MIS  ', '', '2023-02-08 06:19:35', '2023-02-08 06:19:35'),
(4, 4, '2005-012', '11/14/2005', '05/01/2008', 'Regular  ', 'Compliance Specialist  ', '  ', 1, '  ', 'COMPLIANCE  ', '', '2023-02-08 06:23:40', '2023-02-08 06:23:40'),
(5, 5, '2020-008', '10/01/2020', '03/01/2021', 'Resigned  ', 'MIS Assistant', '', 1, '  ', 'MIS', '', '2023-02-08 06:27:27', '2023-05-22 02:08:18'),
(6, 6, '2019-008', '04/15/2019', '10/01/2019', 'Regular  ', 'Appraiser I  ', 'I  ', 1, '  ', 'ASSET MANAGEMENT & LEGAL SECTION  ', '', '2023-02-08 06:29:52', '2023-02-08 06:29:52'),
(7, 7, '2020-002', '03/01/2020', '09/01/2020', 'Regular  ', 'HR Associate  ', '  ', 1, '  ', 'HUMAN RESOURCE DEPARTMENT  ', '', '2023-02-08 06:32:23', '2023-02-08 06:32:23'),
(8, 8, '2001-013', '01/16/2001', '08/01/2001', 'Regular  ', 'HR Specialist  ', '  ', 1, '  ', 'HUMAN RESOURCE DEPARTMENT  ', '', '2023-02-08 06:35:13', '2023-02-08 06:35:13'),
(9, 9, '2001-011', '10/08/2001', '07/12/2002', 'Regular', 'Manager  ', 'II', 1, '  ', 'HUMAN RESOURCE DEPARTMENT', '', '2023-02-08 06:43:45', '2023-02-07 23:45:35'),
(10, 10, '1999-010', '03/01/1999', '09/01/1999', 'Regular  ', 'Manager  ', 'I  ', 1, '  ', 'MICROFINANCE  ', '', '2023-02-08 06:53:21', '2023-02-08 06:53:21'),
(11, 11, '2014-017', '02/01/2014', '08/01/2014', 'Regular  ', 'Driver  ', '  ', 1, '  ', 'GENERAL SERVICES  ', '', '2023-02-08 06:57:45', '2023-02-08 06:57:45'),
(12, 12, '2021-001', '05/17/2021', '11/16/2021', 'Regular', 'Associate  ', 'II', 1, '  ', 'SME  ', '', '2023-02-08 07:01:28', '2023-02-08 00:02:54'),
(13, 13, '2000-004', '04/03/2000', '10/05/2000', 'Regular', 'Auditor', 'I', 1, '  ', 'AUDIT', '', '2023-02-08 07:07:04', '2023-02-08 00:09:11'),
(14, 14, '2003-005', '04/16/2003', '01/16/2004', 'Regular  ', 'Auditor  ', 'I  ', 1, '  ', 'AUDIT  ', '', '2023-02-08 07:11:07', '2023-02-08 07:11:07'),
(15, 15, '2013-015', '08/01/2013', '11/16/2013', 'Regular', 'BDO Assistant  ', '', 1, '', 'BDA', '', '2023-02-08 07:14:06', '2023-02-08 00:14:23'),
(16, 16, '2003-008', '06/02/2003', '06/16/2004', 'Regular  ', 'Compliance Specialist  ', 'I  ', 1, '  ', 'COMPLIANCE  ', '', '2023-02-08 07:17:55', '2023-02-08 07:17:55'),
(17, 17, '2019-007', '04/15/2019', '10/16/2019', 'Regular  ', 'Accounting Clerk  ', 'I  ', 1, '  ', 'ACCOUNTING  ', '', '2023-02-08 07:25:23', '2023-02-08 07:25:23'),
(18, 18, '1999-005', '01/11/1999', '07/12/1999', 'Regular', 'Asset Management & Legal Super', 'I', 1, '  ', 'ASSET MANAGEMENT & LEGAL SECTION', '', '2023-02-08 07:30:08', '2023-06-14 00:41:58'),
(19, 19, '2012-003', '04/02/2012', '08/01/2012', 'Regular', 'Supervisor', 'I', 9, '  ', 'SME', '', '2023-02-08 07:35:04', '2023-06-14 00:43:45'),
(20, 20, '1994-002', '09/01/1995', '04/15/1996', 'Regular  ', 'Compliance Officer  ', '  ', 1, '  ', 'COMPLIANCE  ', '', '2023-02-08 07:38:00', '2023-02-08 07:38:00'),
(21, 21, '1999-004', '01/11/1999', '07/11/1999', 'Regular  ', 'Manager  ', 'III  ', 1, '  ', 'AUDIT  ', '', '2023-02-08 08:07:56', '2023-02-08 08:07:56'),
(22, 22, '2001-003', '01/16/2001', '08/01/2001', 'Regular  ', 'Junior Accountant  ', '  ', 1, '  ', 'ACCOUNTING  ', '', '2023-02-08 08:21:42', '2023-02-08 08:21:42'),
(23, 23, '2020-009', '10/01/2020', '03/01/2021', 'Regular  ', 'Supervisor  ', '  ', 1, '  ', 'AUDIT  ', '', '2023-02-09 01:17:37', '2023-02-09 01:17:37'),
(24, 24, '2017-010', '06/27/2017', '01/02/2018', 'Regular', 'Administrative Assistant', '  ', 1, '  ', 'OFFICE OF THE PRESIDENT  ', '', '2023-02-09 02:57:37', '2023-02-08 20:04:40'),
(25, 25, '2022-001', '03/14/2022', '06/16/2022', 'Regular', 'Technical Assistant  ', '  ', 1, '  ', 'OFFICE OF THE PRESIDENT  ', '', '2023-02-09 03:03:11', '2023-02-08 20:03:58'),
(26, 26, '2014-019', '10/01/2014', '02/01/2020', 'Regular  ', 'President & CEO  ', '  ', 1, '  ', 'OFFICE OF THE PRESIDENT  ', '', '2023-02-09 03:08:27', '2023-02-09 03:08:27'),
(27, 27, '2019-011', '07/16/2019', '01/16/2020', 'Regular  ', 'Account Officer  ', 'I  ', 6, '  ', 'OTHER LOANS  ', '', '2023-02-09 03:15:55', '2023-02-09 03:15:55'),
(28, 28, '2018-004', '03/16/2018', '07/17/2018', 'Regular  ', 'Account Officer  ', 'I  ', 6, '  ', 'OTHER LOANS  ', '', '2023-02-09 03:18:56', '2023-02-09 03:18:56'),
(29, 29, '2015-013', '07/06/2015', '01/02/2016', 'Regular  ', 'Account Officer  ', 'II  ', 6, '  ', 'OTHER LOANS  ', '', '2023-02-09 03:21:56', '2023-02-09 03:21:56'),
(30, 30, '2013-004', '05/02/2013', '08/01/2013', 'Regular  ', 'Loan Officer  ', '  ', 6, '  ', 'OTHER LOANS  ', '', '2023-02-09 03:25:03', '2023-02-09 03:25:03'),
(31, 31, '2022-006', '03/14/2022', '09/16/2022', 'Regular  ', 'Loans Bookkeeper  ', '  ', 6, '  ', 'ACCOUNTING  ', '', '2023-02-09 03:34:36', '2023-02-09 03:34:36'),
(32, 32, '2016-008', '06/16/2016', '01/03/2017', 'Regular  ', 'Loan Processor  ', '  ', 6, '  ', 'LOANS  ', '', '2023-02-09 03:41:07', '2023-02-09 03:41:07'),
(33, 33, '2021-003', '11/08/2021', '05/16/2022', 'Regular  ', 'Teller  ', 'I  ', 6, '  ', 'CASH  ', '', '2023-02-09 03:44:03', '2023-02-09 03:44:03'),
(34, 35, '2018-012', '10/06/1991', '02/16/2019', 'Regular  ', 'Cashier  ', 'I  ', 6, '  ', 'CASH  ', '', '2023-02-09 03:47:05', '2023-02-09 03:47:05'),
(35, 34, '2006-001', '07/03/2006', '09/01/2007', 'Regular  ', 'Account Officer  ', 'I  ', 4, '', 'LOANS  ', '', '2023-02-09 03:47:13', '2023-02-09 03:47:13'),
(36, 36, '2008-011', '10/20/2008', '08/01/2009', 'Regular  ', 'General Bookkeeper  ', 'I  ', 6, '  ', 'ACCOUNTING  ', '', '2023-02-09 03:49:27', '2023-02-09 03:49:27'),
(37, 37, '2000-006', '08/07/2000', '02/16/2001', 'Regular  ', 'Manager  ', 'I  ', 6, '  ', 'MICROFINANCE  ', '', '2023-02-09 03:51:59', '2023-02-09 03:51:59'),
(38, 38, '2014-005', '07/27/2014', '08/01/2014', 'Regular  ', 'Account Officer  ', 'I  ', 4, '', 'LOANS  ', '', '2023-02-09 03:58:26', '2023-02-09 03:58:26'),
(39, 39, '2021-005', '11/22/2021', '05/16/2022', 'Regular', 'Customer Associate', 'I', 9, '  ', 'CASH', '', '2023-02-09 05:35:47', '2023-06-14 00:45:00'),
(40, 40, '2022-002', '02/02/2022', '08/01/2022', 'Regular  ', 'Account Officer  ', 'I  ', 2, '  ', 'LOANS  ', '', '2023-02-09 05:39:34', '2023-02-09 05:39:34'),
(41, 41, '2020-001', '02/10/2020', '08/16/2020', 'Regular  ', 'Account Officer  ', 'I  ', 2, '  ', 'MICROFINANCE  ', '', '2023-02-09 05:43:05', '2023-02-09 05:43:05'),
(42, 42, '2018-015', '09/03/2018', '03/01/2019', 'Regular  ', 'Account Officer  ', 'I  ', 2, '  ', 'OTHER LOANS  ', '', '2023-02-09 05:46:03', '2023-02-09 05:46:03'),
(43, 43, '2003-013', '11/18/2003', '05/16/2005', 'Regular  ', 'Loan Processor  ', 'I  ', 2, '  ', 'LOANS  ', '', '2023-02-09 05:49:36', '2023-02-09 05:49:36'),
(44, 44, '1999-001', '01/11/1999', '07/12/1999', 'Regular  ', 'Loans Bookkeeper  ', 'I  ', 2, '  ', 'ACCOUNTING  ', '', '2023-02-09 05:54:49', '2023-02-09 05:54:49'),
(45, 45, '2002-006', '07/17/2002', '05/02/2003', 'Regular  ', 'General Bookkeeper  ', 'II  ', 2, '  ', 'ACCOUNTING  ', '', '2023-02-09 05:57:07', '2023-02-09 05:57:07'),
(46, 46, '2017-014', '11/02/2017', '05/02/2018', 'Regular', 'Accounting Clerk', 'I', 7, '  ', 'ACCOUNTING', '', '2023-02-09 05:59:33', '2023-06-09 02:12:13'),
(47, 47, '2008-007', '02/12/2008', '07/16/2009', 'Regular  ', 'Supervisor  ', 'I  ', 3, '  ', 'MICROFINANCE  ', '', '2023-02-09 06:58:34', '2023-02-09 06:58:34'),
(48, 48, '2003-007', '05/02/2003', '02/02/2004', 'Regular  ', 'Assistant Manager  ', 'I  ', 3, '  ', '', '', '2023-02-09 07:01:04', '2023-02-09 07:01:04'),
(49, 49, '2017012', '09/01/2017', '03/01/2018', 'Regular  ', 'Account Officer  ', 'I  ', 3, '  ', 'OTHER LOANS  ', '', '2023-02-09 07:05:40', '2023-02-09 07:05:40'),
(50, 50, '2006014', '06/20/2006', '09/01/2007', 'Regular  ', 'Loans Bookkeeper  ', '  ', 3, '  ', 'ACCOUNTING  ', '', '2023-02-09 07:08:36', '2023-02-09 07:08:36'),
(51, 51, '2007003', '02/05/2007', '01/02/2008', 'Regular  ', 'Driver', '  ', 3, '  ', 'GENERAL SERVICES', '', '2023-02-09 07:11:11', '2023-02-09 01:36:04'),
(52, 52, '2007007', '03/27/2007', '02/01/2008', 'Regular  ', 'Assistant Cashier  ', '  ', 3, '  ', 'CASH  ', '', '2023-02-09 07:13:44', '2023-02-09 07:13:44'),
(53, 53, '2019014', '08/27/2019', '03/01/2020', 'Regular  ', 'Office Associate  ', '  ', 3, 'Manolo OBO  ', 'ACCOUNTING  ', '', '2023-02-09 07:17:38', '2023-02-09 07:17:38'),
(54, 54, '2014013', '07/28/2014', '02/02/2015', 'Regular  ', 'Teller  ', 'I  ', 3, '  ', 'CASH  ', '', '2023-02-09 07:39:30', '2023-02-09 07:39:30'),
(55, 55, '2016012', '09/26/2016', '04/01/2017', 'Regular  ', 'Loan Processor  ', 'I  ', 3, '  ', 'LOANS  ', '', '2023-02-09 07:49:35', '2023-02-09 07:49:35'),
(56, 56, '2019012', '08/13/2019', '02/01/2020', 'Regular  ', 'Customer Associate  ', 'I  ', 3, '  ', 'CASH  ', '', '2023-02-10 01:33:57', '2023-02-10 01:33:57'),
(57, 57, '2001001', '01/16/2001', '08/01/2001', 'Regular  ', 'Teller  ', 'II  ', 3, '  ', 'CASH  ', '', '2023-02-10 01:39:23', '2023-02-10 01:39:23'),
(58, 58, '2018016', '09/24/2018', '05/16/2019', 'Regular  ', 'Account Officer  ', 'II  ', 3, '  ', 'MICROFINANCE  ', '', '2023-02-10 01:43:18', '2023-02-10 01:43:18'),
(59, 59, '2019009', '05/02/2019', '11/02/2019', 'Regular  ', 'Loans Processor Assistant  ', '  ', 3, '  ', 'LOANS  ', '', '2023-02-10 01:46:53', '2023-02-10 01:46:53'),
(60, 60, '1999014', '04/16/1999', '10/16/1999', 'Regular  ', 'Accounting Clerk  ', 'I  ', 3, '  ', 'ACCOUNTING  ', '', '2023-02-10 01:52:21', '2023-02-10 01:52:21'),
(61, 61, '2000003', '04/03/2000', '10/05/2000', 'Regular  ', 'Loan Officer  ', '  ', 3, '  ', 'LOANS  ', '', '2023-02-10 01:56:04', '2023-02-10 01:56:04'),
(62, 62, '2008012', '05/19/2008', '03/01/2009', 'Regular  ', 'Account Officer  ', 'II  ', 3, '  ', 'OTHER LOANS  ', '', '2023-02-10 02:00:29', '2023-02-10 02:00:29'),
(63, 63, '2022008', '05/02/2022', '01/02/2023', 'Regular', 'Account Officer', 'I', 3, '  ', 'OTHER LOANS', '', '2023-02-10 02:06:49', '2023-02-09 19:07:23'),
(64, 64, '2001009', '09/03/2001', '07/12/2002', 'Regular  ', 'Cashier  ', 'I  ', 3, '  ', 'CASH  ', '', '2023-02-10 02:10:24', '2023-02-10 02:10:24'),
(65, 65, '1999003', '01/11/1999', '07/12/1999', 'Regular  ', 'Branch Manager  ', 'I  ', 3, '  ', 'OFFICE OF THE PRESIDENT  ', '', '2023-02-10 02:29:14', '2023-02-10 02:29:14'),
(66, 66, '2007012', '09/01/2007', '08/16/2008', 'Regular  ', 'MFU Supervisor  ', 'II  ', 3, '  ', 'MICROFINANCE  ', '', '2023-02-10 02:43:36', '2023-02-10 02:43:36'),
(67, 67, '2016009', '07/01/2016', '01/03/2017', 'Regular  ', 'Account Officer  ', 'I  ', 3, '  ', 'MICROFINANCE  ', '', '2023-02-10 02:46:01', '2023-02-10 02:46:01'),
(68, 68, '2017007', '05/22/2017', '11/16/2017', 'Regular  ', 'General Bookkeeper  ', 'II  ', 3, '  ', 'ACCOUNTING  ', '', '2023-02-10 02:48:17', '2023-02-10 02:48:17'),
(69, 69, '2020006', '03/10/2020', '09/16/2020', 'Regular  ', 'Account Officer  ', 'II  ', 3, '  ', 'MICROFINANCE  ', '', '2023-02-10 03:13:59', '2023-02-10 03:13:59'),
(70, 70, '2007013', '09/01/2007', '05/16/2008', 'Regular  ', 'Account Officer  ', 'II  ', 3, '  ', 'OTHER LOANS  ', '', '2023-02-10 03:16:16', '2023-02-10 03:16:16'),
(71, 71, '2008006', '02/13/2008', '11/16/2008', 'Regular  ', 'Account Officer  ', 'II  ', 3, '  ', 'OTHER LOANS  ', '', '2023-02-10 03:18:53', '2023-02-10 03:18:53'),
(72, 72, '2013019', '10/17/2013', '05/02/2014', 'Regular  ', 'Account Officer  ', 'II  ', 3, '  ', 'MICROFINANCE  ', '', '2023-02-10 03:21:46', '2023-02-10 03:21:46'),
(73, 73, '2008-002', '01/02/2008', '10/01/2008', 'Regular  ', 'Account Officer  ', 'II  ', 4, '-- Select Sub Office --', 'LOANS  ', '', '2023-02-14 06:25:23', '2023-02-14 06:25:23'),
(74, 74, '2005-008', '09/05/2005', '12/06/2006', 'Regular  ', 'Account Officer  ', 'II  ', 4, '-- Select Sub Office --', 'LOANS  ', '', '2023-02-22 06:51:41', '2023-02-22 06:51:41'),
(75, 75, '2008005', '02/12/2008', '11/16/2008', 'Regular  ', 'Account Officer  ', 'II  ', 7, '  ', 'OTHER LOANS  ', '', '2023-02-22 06:55:07', '2023-02-22 06:55:07'),
(76, 76, '2016-004', '02/01/2016', '08/01/2016', 'Regular  ', 'Loan Processor  ', 'I  ', 4, '-- Select Sub Office --', 'LOANS  ', '', '2023-02-22 07:11:52', '2023-02-22 07:11:52'),
(77, 77, '2019-015', '11/04/2019', '05/16/2020', 'Regular', 'Loan Processor', 'I', 9, '  ', 'LOANS', '', '2023-02-22 07:16:00', '2023-06-14 00:45:14'),
(78, 78, '2017001', '01/03/2017', '06/16/2017', 'Regular', 'General Bookkeeper  ', 'I', 4, '  ', 'ACCOUNTING', '', '2023-02-22 07:22:11', '2023-06-09 02:11:38'),
(79, 80, '1999012', '03/15/1999', '10/22/1999', 'Regular  ', 'Office Associate  ', 'I  ', 7, '  ', 'CASH  ', '', '2023-02-22 07:24:41', '2023-02-22 07:24:41'),
(80, 79, '2014-008', '05/16/2014', '11/16/2014', 'Regular  ', 'Loans Bookkeeper  ', 'I  ', 4, '-- Select Sub Office --', 'ACCOUNTING  ', '', '2023-02-22 07:24:55', '2023-02-22 07:24:55'),
(81, 81, '2002003', '07/08/2002', '01/16/2003', 'Regular  ', 'General Bookkeeper  ', '  ', 7, '  ', 'LOANS  ', '', '2023-02-22 07:27:48', '2023-02-22 07:27:48'),
(82, 82, '2022003', '02/14/2022', '09/01/2022', 'Resigned', 'Account Officer', 'I', 7, '  ', 'MICROFINANCE', '', '2023-02-22 07:31:31', '2023-02-22 00:32:38'),
(83, 83, '2018006', '05/07/2018', '11/02/2018', 'Regular  ', 'Account Officer  ', 'I  ', 7, '  ', 'MICROFINANCE  ', '', '2023-02-22 07:34:29', '2023-02-22 07:34:29'),
(86, 84, '2013-014', '07/17/2013', '01/16/2014', 'Regular  ', 'General Bookkeeper  ', 'I  ', 4, '-- Select Sub Office --', 'ACCOUNTING  ', '', '2023-02-22 07:36:15', '2023-02-22 07:36:15'),
(88, 85, '2014-015', '08/18/2014', '03/17/2015', 'Regular  ', 'Account Officer  ', 'I  ', 7, '  ', 'OTHER LOANS  ', '', '2023-02-22 07:37:36', '2023-02-22 07:37:36'),
(89, 86, '2006-005', '07/06/2006', '05/01/2008', 'Regular  ', 'Customer Associate  ', 'I  ', 4, '-- Select Sub Office --', 'CASH  ', '', '2023-02-22 07:40:15', '2023-02-22 07:40:15'),
(90, 87, '2020-005', '05/02/2018', '12/01/2020', 'Regular  ', 'Driver  ', 'I  ', 4, '-- Select Sub Office --', 'GENERAL SERVICES  ', '', '2023-02-22 07:44:08', '2023-02-22 07:44:08'),
(91, 88, '2015-018', '09/01/2015', '03/01/2016', 'Regular  ', 'Teller  ', 'I  ', 4, '-- Select Sub Office --', 'CASH  ', '', '2023-02-22 07:47:34', '2023-02-22 07:47:34'),
(92, 89, '1999-002', '01/11/1999', '07/16/1999', 'Regular  ', 'Teller  ', 'II  ', 4, '-- Select Sub Office --', 'CASH  ', '', '2023-02-22 07:51:33', '2023-02-22 07:51:33'),
(93, 90, '2005-011', '10/17/2005', '01/22/2007', 'Regular  ', 'Driver  ', '  ', 2, '  ', 'GENERAL SERVICES  ', '', '2023-02-22 07:55:07', '2023-02-22 07:55:07'),
(96, 91, '2014-007', '02/24/2014', '09/16/2014', 'Regular  ', 'Account Officer  ', 'I  ', 4, '-- Select Sub Office --', 'LOANS  ', '', '2023-02-22 07:57:01', '2023-02-22 07:57:01'),
(97, 92, '2019-001', '02/01/2019', '08/01/2019', 'Regular  ', 'Teller  ', 'I  ', 2, '  ', 'CASH  ', '', '2023-02-22 07:57:17', '2023-02-22 07:57:17'),
(98, 93, '2020-007', '08/17/2020', '03/01/2021', 'Regular  ', 'Teller  ', 'I  ', 2, '  ', 'CASH  ', '', '2023-02-22 08:00:26', '2023-02-22 08:00:26'),
(99, 94, '1998-002', '05/18/1998', '02/16/1999', 'Regular  ', 'Assistant Cashier  ', 'I  ', 2, '  ', 'CASH  ', '', '2023-02-22 08:07:04', '2023-02-22 08:07:04'),
(100, 95, '1999-009', '02/24/1999', '09/01/1999', 'Regular  ', 'Cashier  ', 'I  ', 2, '  ', 'CASH  ', '', '2023-02-22 08:09:11', '2023-02-22 08:09:11'),
(101, 96, '2001-008', '09/03/2001', '09/09/2002', 'Regular  ', 'Cashier  ', 'I  ', 4, '-- Select Sub Office --', 'CASH  ', '', '2023-02-22 08:17:26', '2023-02-22 08:17:26'),
(102, 97, '2002-009', '09/23/2002', '06/02/2003', 'Regular  ', 'Loan Officer  ', 'I  ', 2, '  ', 'OTHER LOANS  ', '', '2023-02-22 08:19:57', '2023-02-22 08:19:57'),
(103, 98, '2002-004', '07/08/2002', '01/16/2003', 'Regular  ', 'Branch Manager  ', 'I  ', 4, '-- Select Sub Office --', 'CASH  ', '', '2023-02-22 08:21:20', '2023-02-22 08:21:20'),
(104, 99, '1999-007', '01/25/1999', '07/26/1999', 'Regular  ', 'Branch Manager  ', 'I  ', 2, '  ', 'OFFICE OF THE PRESIDENT  ', '', '2023-02-22 08:23:09', '2023-02-22 08:23:09'),
(105, 100, '2018-008', '06/11/2018', '12/16/2018', 'Regular', 'Office Associate', 'I', 9, 'Butuan OBO  ', 'CASH', '', '2023-02-22 08:24:53', '2023-04-27 02:05:15'),
(106, 101, '2021-004', '11/22/2021', '05/16/2022', 'Regular  ', 'Account Officer  ', 'I  ', 5, '', 'MICROFINANCE  ', '', '2023-02-22 08:25:41', '2023-02-22 08:25:41'),
(107, 102, '2003-002', '01/23/2003', '10/16/2003', 'Regular', 'Loan Supervisor', '', 9, 'Butuan OBO  ', 'LOANS', '', '2023-02-22 08:27:51', '2023-04-27 02:57:48'),
(109, 103, '2016-016', '08/17/2015', '03/16/2016', 'Regular  ', 'Other Loans Supervisor  ', 'I  ', 5, '-- Select Sub Office --', 'OTHER LOANS  ', '', '2023-02-22 08:29:21', '2023-02-22 08:29:21'),
(110, 104, '2011-001', '02/16/2011', '08/16/2011', 'Regular  ', 'Account Officer  ', 'II  ', 8, '  ', 'MICROFINANCE  ', '', '2023-02-22 08:30:35', '2023-02-22 08:30:35'),
(111, 107, '2019-004', '03/01/2019', '09/02/2019', 'Regular  ', 'Accounting Clerk  ', 'I  ', 8, '  ', 'ACCOUNTING  ', '', '2023-02-22 08:32:45', '2023-02-22 08:32:45'),
(112, 105, '2003-014', '11/18/2003', '09/01/2004', 'Regular  ', 'Other Loans Supervisor  ', 'I  ', 5, '-- Select Sub Office --', 'OTHER LOANS  ', '', '2023-02-22 08:32:53', '2023-02-22 08:32:53'),
(113, 108, '2019-002', '02/01/2019', '08/01/2019', 'Regular  ', 'Office Associate  ', 'I  ', 8, '  ', 'CASH  ', '', '2023-02-22 08:35:35', '2023-02-22 08:35:35'),
(114, 109, '2003-010', '06/04/2003', '02/16/2004', 'Regular  ', 'Loan Supervisor  ', 'I  ', 8, '  ', 'LOANS  ', '', '2023-02-22 08:38:17', '2023-02-22 08:38:17'),
(115, 110, '2004-001', '03/23/2004', '10/03/2005', 'Regular  ', 'Account Officer  ', 'I  ', 5, '  ', 'OTHER LOANS  ', '', '2023-02-27 07:21:14', '2023-02-27 07:21:14'),
(116, 111, '2022-005', '03/14/2022', '09/16/2022', 'Regular  ', 'Office Associate  ', 'I  ', 5, 'Iligan OBO  ', 'CASH  ', '', '2023-02-27 07:23:28', '2023-02-27 07:23:28'),
(117, 112, '2022-004', '02/28/2022', '09/01/2022', 'Regular  ', 'Driver  ', '  ', 5, '  ', 'GENERAL SERVICES  ', '', '2023-02-27 07:25:36', '2023-02-27 07:25:36'),
(118, 113, '2004-007', '03/15/2007', '08/01/2007', 'Regular', 'Janitor / Messenger  ', '', 5, 'CDO OBO  ', 'GENERAL SERVICES', '', '2023-02-27 07:28:35', '2023-02-27 00:29:56'),
(119, 114, '2002-005', '07/08/2002', '01/16/2003', 'Regular  ', 'Loan Officer  ', 'II  ', 5, '  ', 'OTHER LOANS  ', '', '2023-02-27 08:37:42', '2023-02-27 08:37:42'),
(120, 115, '2019-013', '08/13/2019', '02/01/2020', 'Regular  ', 'Accounting Clerk  ', 'I  ', 5, '  ', 'ACCOUNTING  ', '', '2023-02-27 08:41:18', '2023-02-27 08:41:18'),
(121, 116, '2006-004', '07/04/2006', '12/01/2007', 'Regular  ', 'Loan Processor  ', 'I  ', 5, '  ', 'LOANS  ', '', '2023-02-27 08:44:04', '2023-02-27 08:44:04'),
(122, 117, '2018-010', '07/09/2018', '01/16/2019', 'Regular  ', 'Loans Bookkeeper  ', 'II  ', 5, '  ', 'LOANS  ', '', '2023-02-27 08:46:22', '2023-02-27 08:46:22'),
(123, 118, '2020-004', '03/01/2020', '09/01/2020', 'Regular  ', 'Loan Processor  ', 'I  ', 5, '  ', 'LOANS  ', '', '2023-02-27 08:49:36', '2023-02-27 08:49:36'),
(124, 119, '2003-011', '11/18/2003', '01/01/2005', 'Regular', 'General Bookkeeper', 'II', 5, '  ', 'ACCOUNTING', '', '2023-02-27 08:54:03', '2023-03-07 23:20:52'),
(125, 120, '2018-003', '03/12/2018', '09/16/2018', 'Regular  ', 'Teller  ', 'I  ', 5, '  ', 'CASH  ', '', '2023-02-27 08:56:31', '2023-02-27 08:56:31'),
(126, 121, '2001-005', '01/16/2001', '08/01/2001', 'Regular  ', 'Teller  ', 'II  ', 5, '  ', 'CASH  ', '', '2023-02-27 08:59:21', '2023-02-27 08:59:21'),
(127, 122, '2007-015', '10/15/2007', '07/01/2008', 'Regular  ', 'Cashier  ', 'I  ', 5, '  ', 'CASH  ', '', '2023-02-27 09:01:31', '2023-02-27 09:01:31'),
(128, 123, '1998-005', '11/23/1998', '06/01/1999', 'Regular  ', 'Branch Manager  ', 'I  ', 5, '  ', 'OFFICE OF THE PRESIDENT  ', '', '2023-02-27 09:21:49', '2023-02-27 09:21:49'),
(129, 124, '2007-010', '07/02/2007', '03/01/2008', 'Regular  ', 'Account Officer  ', 'I  ', 5, '  ', 'MICROFINANCE  ', '', '2023-02-28 01:10:27', '2023-02-28 01:10:27'),
(130, 125, '2023-003', '02/23/2023', '', 'Probationary', 'MIS Assistant', '  ', 1, '  ', 'MIS', '', '2023-03-07 04:05:09', '2023-06-14 00:43:06'),
(131, 106, '', '', '', 'Regular  ', 'Loan Officer  ', 'I  ', 5, '  ', 'LOANS  ', '', '2023-03-08 06:16:09', '2023-03-08 06:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `compremarks`
--

CREATE TABLE `compremarks` (
  `crid` int(11) NOT NULL,
  `compid` int(11) DEFAULT NULL,
  `compticket` varchar(20) DEFAULT NULL,
  `comprdate` varchar(15) DEFAULT NULL,
  `comphandleby` varchar(20) DEFAULT NULL,
  `compremarks` varchar(200) DEFAULT NULL,
  `crstamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE `dependents` (
  `depid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `dfullname` varchar(100) NOT NULL,
  `drelationship` varchar(100) NOT NULL,
  `dbirthdate` date NOT NULL,
  `dtimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ddatacreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deptsect`
--

CREATE TABLE `deptsect` (
  `deptsectid` int(11) NOT NULL,
  `deptsectname` varchar(50) NOT NULL,
  `deptsectstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deptsect`
--

INSERT INTO `deptsect` (`deptsectid`, `deptsectname`, `deptsectstamp`) VALUES
(1, 'MIS', '2022-01-18 07:38:08'),
(2, 'CASH', '2022-06-21 08:44:43'),
(3, 'LOANS', '2022-06-21 08:44:46'),
(4, 'COMPLIANCE', '2022-06-21 08:44:50'),
(5, 'ACCOUNTING', '2022-06-21 08:44:57'),
(6, 'OTHER LOANS', '2022-06-21 08:45:52'),
(7, 'MICROFINANCE', '2022-06-21 08:45:56'),
(8, 'GENERAL SERVICES', '2022-06-21 08:46:03'),
(9, 'HUMAN RESOURCE DEPARTMENT', '2022-06-24 08:32:09'),
(10, 'ASSET MANAGEMENT & LEGAL SECTION', '2022-06-24 09:01:11'),
(11, 'SME', '2023-02-08 07:02:18'),
(12, 'AUDIT', '2023-02-08 07:07:38'),
(13, 'BDA', '2023-02-08 07:08:05'),
(14, 'OFFICE OF THE PRESIDENT', '2023-02-09 03:02:33'),
(15, 'MARKETING', '2023-02-09 07:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `desktop`
--

CREATE TABLE `desktop` (
  `deskid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `equserid` int(11) DEFAULT NULL,
  `dname` varchar(150) DEFAULT NULL,
  `wstype` varchar(70) NOT NULL,
  `acqdate` varchar(15) DEFAULT NULL,
  `tprice` varchar(20) DEFAULT NULL,
  `dstat` varchar(15) DEFAULT NULL,
  `drmkid` int(11) DEFAULT NULL,
  `timelog` timestamp NOT NULL DEFAULT current_timestamp(),
  `itemacreated` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desktop`
--

INSERT INTO `desktop` (`deskid`, `uid`, `equserid`, `dname`, `wstype`, `acqdate`, `tprice`, `dstat`, `drmkid`, `timelog`, `itemacreated`) VALUES
(1, 2, NULL, 'Desktop PC - MIS Assistant #1', 'Desktop PC', '', '17395', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 06:38:58'),
(2, 6, NULL, 'Desktop PC - Asset Appraiser ', 'Desktop PC', '07/05/2017', '13295', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 07:53:09'),
(3, 3, NULL, 'ASUS TUF FX505DT Laptop - MIS Head', 'Laptop', '2020-11-16', '42800', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 07:58:19'),
(4, 21, NULL, 'ACER Nitro 5 Laptop - Audit Manager', 'Laptop', '2019-11-27', '37000', 'Functional', NULL, '2023-03-07 08:00:09', '2023-03-07 08:00:09'),
(5, 23, NULL, 'ASUS X455LF Laptop - Audit Supervisor', 'Laptop', '2015-01-14', '26995', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 08:12:50'),
(6, 14, NULL, 'Desktop PC - Auditor #2', 'Desktop PC', '2022-05-20', '20000', 'New', NULL, '2023-03-07 08:14:07', '2023-03-07 08:14:07'),
(7, 13, NULL, 'Desktop PC - Auditor #1', 'Desktop PC', '2014-08-09', '16500', 'Functional', NULL, '2023-03-07 08:14:51', '2023-03-07 08:14:51'),
(8, 17, NULL, 'Desktop PC - Accounting Clerk (CMG)', 'Desktop PC', '2023-01-09', '14500', 'New', NULL, '2023-03-07 08:16:57', '2023-03-07 08:16:57'),
(9, 24, NULL, 'HP Laptop - EA ', 'Laptop', '2016-12-09', '25990', 'Functional', NULL, '2023-03-07 08:23:06', '2023-03-07 08:23:06'),
(10, 16, NULL, 'Desktop PC - Compliance Specialist  #2', 'Desktop PC', '2020-03-23', '14700', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 08:25:22'),
(11, 4, NULL, 'Desktop PC - Compliance Specialist Supervisor #1', 'Desktop PC', '2018-01-06', '18900', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 08:26:08'),
(12, 4, NULL, 'ASUS NB T300CHI Notebook - Compliance', 'Laptop', '2017-01-06', '29995', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-07 08:27:00'),
(13, 9, NULL, 'ACER ASPIRE AC15-57G Laptop - HR Head', 'Laptop', '2020-11-16', '38190', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 00:57:44'),
(14, 10, NULL, 'ACER ASPIRE AC15-57G Laptop - MFU Head', 'Laptop', '2020-11-16', '38190', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 00:59:33'),
(15, 19, NULL, 'ACER ASPIRE A514-54 Laptop - SME Officer', 'Laptop', '2022-05-16', '34150', 'New', NULL, '2023-03-08 01:03:02', '2023-03-08 01:03:02'),
(16, 18, NULL, 'Desktop PC - Asset Supervisor', 'Desktop PC', '2012-02-18', '19500', 'Functional', NULL, '2023-03-08 01:04:15', '2023-03-08 01:04:15'),
(17, 12, NULL, 'MSI Modern 15 Laptop - SME Associate', 'Laptop', '2022-12-08', '42249', 'New', NULL, '2023-03-08 01:06:25', '2023-03-08 01:06:25'),
(18, 7, NULL, 'Desktop PC - HR Associate', 'Desktop PC', '2020-11-12', '15000', 'Functional', NULL, '2023-03-08 01:16:04', '2023-03-08 01:16:04'),
(19, 8, NULL, 'Desktop PC - HR Specialist', 'Desktop PC', '2013-06-13', '17750', 'Functional', NULL, '2023-03-08 01:17:18', '2023-03-08 01:17:18'),
(20, 60, NULL, 'Desktop PC - Accounting Clerk', 'Desktop PC', '2021-08-10', '17500', 'Functional', NULL, '2023-03-08 02:04:38', '2023-03-08 02:04:38'),
(21, 65, NULL, 'ASUS X441URK Laptop - Branch Manager (Jasaan Branch)', 'Laptop', '2017-08-25', '25900', 'Functional', NULL, '2023-03-08 02:08:30', '2023-03-08 02:08:30'),
(22, 64, NULL, 'Desktop PC - Cashier', 'Desktop PC', '2012-03-09', '13295', 'Functional', NULL, '2023-03-08 02:09:30', '2023-03-08 02:09:30'),
(23, 52, NULL, 'Desktop PC - Assistant Cashier', 'Desktop PC', '2011-05-13', '18300', 'Functional', NULL, '2023-03-08 02:12:04', '2023-03-08 02:12:04'),
(24, 56, NULL, 'Desktop PC - Customer Associate', 'Desktop PC', '2019-09-12', '16995', 'Functional', NULL, '2023-03-08 02:13:19', '2023-03-08 02:13:19'),
(25, 68, NULL, 'Desktop PC - General Bookkeeper', 'Desktop PC', '2019-06-20', '9980', 'Functional', NULL, '2023-03-08 02:14:01', '2023-03-08 02:14:01'),
(26, 61, NULL, 'Desktop PC - Loans Officer', 'Desktop PC', '2016-07-12', '12495', 'Functional', NULL, '2023-03-08 02:14:37', '2023-03-08 02:14:37'),
(27, 50, NULL, 'Desktop PC - Loans Bookkeeper', 'Desktop PC', '2007-06-08', '24320', 'Functional', NULL, '2023-03-08 02:16:42', '2023-03-08 02:16:42'),
(28, 55, NULL, 'Desktop PC - Loans Processor', 'Desktop PC', '2015-10-29', '14400', 'Functional', NULL, '2023-03-08 02:17:13', '2023-03-08 02:17:13'),
(29, 47, NULL, 'Desktop PC - MFU Supervisor #1', 'Desktop PC', '2018-08-03', '13695', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 02:17:48'),
(30, 66, NULL, 'Desktop PC - MFU Supervisor #2', 'Desktop PC', '2012-01-26', '19500', 'Functional', NULL, '2023-03-08 02:19:10', '2023-03-08 02:19:10'),
(31, 48, NULL, 'Desktop PC - OL Supervisor', 'Desktop PC', '2017-05-27', '13295', 'Functional', NULL, '2023-03-08 02:19:45', '2023-03-08 02:19:45'),
(32, 57, NULL, 'Desktop PC - Loans Teller', 'Desktop PC', '2017-05-27', '13295', 'Functional', NULL, '2023-03-08 02:23:47', '2023-03-08 02:23:47'),
(33, 54, NULL, 'Desktop PC - Savings Teller', 'Desktop PC', '2019-07-15', '14200', 'Functional', NULL, '2023-03-08 02:25:01', '2023-03-08 02:25:01'),
(34, 65, NULL, 'Desktop PC - CIC (for MIS)', 'Desktop PC', '2017-05-15', '20000', 'Functional', NULL, '2023-03-08 02:26:22', '2023-03-08 02:26:22'),
(35, 53, NULL, 'Desktop PC - Office Associate', 'Desktop PC', '2012-06-22', '18500', 'Functional', NULL, '2023-03-08 02:28:15', '2023-03-08 02:28:15'),
(36, 71, NULL, 'Desktop PC - AO (Manolo BLU)', 'Desktop PC', '2009-02-06', '19500', 'Functional', NULL, '2023-03-08 02:29:34', '2023-03-08 02:29:34'),
(37, 15, NULL, 'HP Mini 200-4220 TU Laptop - BDA ', 'Laptop', '2013-05-14', '15990', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 02:39:53'),
(38, 24, NULL, 'HP Laptop - MANCOM ', 'Laptop', '2017-03-29', '22990', 'Functional', NULL, '2023-03-08 02:41:23', '2023-03-08 02:41:23'),
(39, 17, NULL, 'HP 14-R238TU Laptop - HO Accounting Clerk', 'Laptop', '2015-06-22', '21990', 'Functional', NULL, '2023-03-08 02:47:22', '2023-03-08 02:47:22'),
(40, 125, NULL, 'Desktop PC - MIS Assistant #2', 'Desktop PC', '2022-01-10', '25000', 'Functional', NULL, '2023-03-08 02:49:38', '2023-03-08 02:49:38'),
(41, 104, NULL, 'Desktop PC - AO', 'Desktop PC', '2012-05-15', '14500', 'Functional', NULL, '2023-03-08 02:53:49', '2023-03-08 02:53:49'),
(42, 108, NULL, 'Desktop PC - Office Associate', 'Desktop PC', '2015-03-05', '16200', 'Functional', NULL, '2023-03-08 02:54:26', '2023-03-08 02:54:26'),
(43, 109, NULL, 'Desktop PC - BLU Head', 'Desktop PC', '2013-11-04', '17750', 'Functional', NULL, '2023-03-08 02:55:04', '2023-03-08 02:55:04'),
(44, 107, NULL, 'Desktop PC -Loans Bookkeeper', 'Desktop PC', '2018-06-11', '18250', 'Functional', NULL, '2023-03-08 02:55:38', '2023-03-08 02:55:38'),
(45, 80, NULL, 'Desktop PC - Office Associate', 'Desktop PC', '2014-12-01', '9135', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 02:58:15'),
(46, 81, NULL, 'Desktop PC - BLU Head', 'Desktop PC', '2020-05-20', '15830', 'Functional', NULL, '2023-03-08 03:05:48', '2023-03-08 03:05:48'),
(47, 83, NULL, 'Desktop PC - AO - Micro', 'Desktop PC', '2015-10-13', '14500', 'Functional', NULL, '2023-03-08 03:06:36', '2023-03-08 03:06:36'),
(48, 85, NULL, 'Desktop PC - AO-OL', 'Desktop PC', '2013-12-19', '15250', 'Functional', NULL, '2023-03-08 03:07:13', '2023-03-08 03:07:13'),
(49, 46, NULL, 'Desktop PC - Loans Bookkeeper', 'Desktop PC', '2018-06-11', '18250', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 03:07:38'),
(50, 46, NULL, 'Desktop PC - Loans Processor', 'Desktop PC', '2018-06-11', '18250', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 03:08:01'),
(51, 115, NULL, 'Desktop PC - Accounting Clerk', 'Desktop PC', '2015-01-26', '17500', 'Functional', NULL, '2023-03-08 05:46:23', '2023-03-08 05:46:23'),
(52, 118, NULL, 'Desktop PC - Loans Processor #2', 'Desktop PC', '2008-05-23', '15000', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 05:47:18'),
(53, 123, NULL, 'Lenovo 320-151KBRN Laptop - Branch Manager(CDO)', 'Laptop', '2018-07-02', '30000', 'Functional', NULL, '2023-03-08 05:48:16', '2023-03-08 05:48:16'),
(54, 122, NULL, 'Desktop PC - Cashier', 'Desktop PC', '2014-01-20', '12700', 'Functional', NULL, '2023-03-08 05:49:28', '2023-03-08 05:49:28'),
(55, 119, NULL, 'Desktop PC - General Bookkeeper', 'Desktop PC', '2014-03-26', '17795', 'Functional', NULL, '2023-03-08 05:50:29', '2023-03-08 05:50:29'),
(56, 106, NULL, 'Desktop PC - Loans Officer', 'Desktop PC', '2014-08-15', '', 'Functional', NULL, '2023-03-08 05:52:58', '2023-03-08 05:52:58'),
(57, 117, NULL, 'Desktop PC - Loans Bookkeeper', 'Desktop PC', '2011-10-10', '9890', 'Functional', NULL, '2023-03-08 05:53:23', '2023-03-08 05:53:23'),
(58, 116, NULL, 'Desktop PC - Loans Processor #1', 'Desktop PC', '2018-01-04', '18700', 'Functional', NULL, '2023-03-08 05:54:07', '2023-03-08 05:54:07'),
(59, 114, NULL, 'Desktop PC - OL Supervisor ', 'Desktop PC', '2008-01-23', '21000', 'Functional', NULL, '2023-03-08 06:02:25', '2023-03-08 06:02:25'),
(60, 120, NULL, 'Desktop PC - Savings Teller', 'Desktop PC', '2018-08-20', '15295', 'Functional', NULL, '2023-03-08 06:03:25', '2023-03-08 06:03:25'),
(61, 103, NULL, 'Desktop PC - AO (former loans teller)', 'Desktop PC', '2008-01-21', '18500', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 06:04:11'),
(62, 111, NULL, 'Desktop PC - Office Associate [ILIGAN]', 'Desktop PC', '2012-03-22', '20450', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 06:05:29'),
(63, 113, NULL, 'Desktop PC - Office Associate [CDOOBO]', 'Desktop PC', '2011-11-25', '20000', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 06:06:01'),
(64, 110, NULL, 'Desktop PC - AO(Former NAC)', 'Desktop PC', '2015-09-15', '14600', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-08 07:54:09'),
(65, 99, NULL, 'Lenovo IdeaPad 330 Laptop - Branch Manager (MAIN OFFICE)', 'Laptop', '2019-05-22', '25,995', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 05:15:45'),
(66, 44, NULL, 'Desktop PC - Loans Bookkeeper', 'Desktop PC', '2019-06-19', '16,900', 'Functional', NULL, '2023-03-10 05:17:41', '2023-03-10 05:17:41'),
(67, 97, NULL, 'Desktop PC - Loans Officer', 'Desktop PC', '2016-10-04', '13,450', 'Functional', NULL, '2023-03-10 05:19:43', '2023-03-10 05:19:43'),
(69, 98, NULL, 'Lenovo 320-151KBRN Laptop - Branch Manager (SALAY)', 'Laptop', '2018-07-02', '30,000', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 05:24:06'),
(70, 96, NULL, 'Desktop PC - Cashier', 'Desktop PC', '2019-10-15', '19,700', 'Functional', NULL, '2023-03-10 05:25:11', '2023-03-10 05:25:11'),
(71, 78, NULL, 'Desktop PC - General Bookkeeper', 'Desktop PC', '2016-01-15', '15,695', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 05:26:29'),
(72, 37, NULL, 'ACER Aspire7   Laptop - Branch Manager', 'Laptop', '2022-12-08', '41249', 'New', NULL, '0000-00-00 00:00:00', '2023-03-10 05:29:22'),
(73, 35, NULL, 'Desktop PC - Cashier', 'Desktop PC', '2010-07-19', '19250', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 05:33:03'),
(74, 95, NULL, 'Desktop PC - Cashier', 'Desktop PC', '2022-04-18', '18,300', 'New', NULL, '2023-03-10 05:54:36', '2023-03-10 05:54:36'),
(75, 45, NULL, 'Desktop PC - General Bookkeeper', 'Desktop PC', '2021-02-08', '16,900', 'Functional', NULL, '2023-03-10 05:56:10', '2023-03-10 05:56:10'),
(76, 93, NULL, 'Desktop PC - Loans Teller', 'Desktop PC', '2020-08-03', '12,800', 'Functional', NULL, '2023-03-10 06:00:47', '2023-03-10 06:00:47'),
(77, 92, NULL, 'Desktop PC - Savings Teller', 'Desktop PC', '2021-04-26', '15,000', 'Functional', NULL, '2023-03-10 06:01:47', '2023-03-10 06:01:47'),
(78, 79, NULL, 'Desktop PC - Loans Bookkeeper', 'Desktop PC', '2018-06-26', '13,895', 'Functional', NULL, '2023-03-10 06:06:02', '2023-03-10 06:06:02'),
(79, 102, NULL, 'Desktop PC - Account Officer BUTUAN', 'Desktop PC', '2014-11-13', '16,990', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 06:52:02'),
(80, 36, NULL, 'Desktop PC - General Bookkeeper', 'Desktop PC', '2014-02-24', '10385', 'Functional', NULL, '2023-03-10 07:20:46', '2023-03-10 07:20:46'),
(81, 32, NULL, 'Desktop PC - Loans Processor', 'Desktop PC', '2010-07-19', '19250', 'Functional', NULL, '2023-03-10 07:22:09', '2023-03-10 07:22:09'),
(82, 33, NULL, 'Desktop PC - Teller/NAC', 'Desktop PC', '2010-07-19', '19250', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 07:23:39'),
(83, 31, NULL, 'Desktop PC - Loans Bookkeeper', 'Desktop PC', '2016-04-29', '15995', 'Functional', NULL, '2023-03-10 07:24:46', '2023-03-10 07:24:46'),
(84, 30, NULL, 'Desktop PC - Loans Officer', 'Desktop PC', '2019-02-12', '13550', 'Functional', NULL, '2023-03-10 07:26:13', '2023-03-10 07:26:13'),
(85, 43, NULL, 'Desktop PC - Loans Processor', 'Desktop PC', '2018-06-11', '18250', 'Functional', NULL, '2023-03-10 07:27:58', '2023-03-10 07:27:58'),
(86, 42, NULL, 'Desktop PC - Account Officer/OL2', 'Desktop PC', '2013-07-20', '17750', 'Functional', NULL, '2023-03-10 07:29:24', '2023-03-10 07:29:24'),
(87, 40, NULL, 'Desktop PC - AO Mcro', 'Desktop PC', '2006-01-26', '21750', 'Functional', NULL, '2023-03-10 07:31:00', '2023-03-10 07:31:00'),
(88, 74, NULL, 'Desktop PC - Loans Supervisor', 'Desktop PC', '2010-11-30', '20250', 'Functional', NULL, '2023-03-10 07:36:42', '2023-03-10 07:36:42'),
(89, 73, NULL, 'Desktop PC - Account Officer - Mcro', 'Desktop PC', '2009-01-28', '19500', 'Functional', NULL, '2023-03-10 07:38:12', '2023-03-10 07:38:12'),
(90, 76, NULL, 'Desktop PC - Loans Processor', 'Desktop PC', '2014-09-27', '8650', 'Functional', NULL, '2023-03-10 07:40:19', '2023-03-10 07:40:19'),
(91, 29, NULL, 'Desktop PC - Account Officer', 'Desktop PC', '2010-07-19', '19250', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-10 07:41:38'),
(92, 34, NULL, 'Desktop PC  - MFU Supervisor', 'Desktop PC', '2012-12-13', '16595', 'Functional', NULL, '2023-03-10 07:45:52', '2023-03-10 07:45:52'),
(93, 86, NULL, 'Desktop PC - Customer Associate', 'Desktop PC', '2021-10-25', '17199', 'Functional', NULL, '2023-03-10 07:48:15', '2023-03-10 07:48:15'),
(94, 89, NULL, 'Desktop PC - Savings Teller', 'Desktop PC', '2017-10-28', '15900', 'Functional', NULL, '2023-03-10 07:49:51', '2023-03-10 07:49:51'),
(140, NULL, 1, 'HP Laptop - MANCOM', 'Laptop', '2017-03-29', '22990', 'Functional', NULL, '2023-03-23 01:50:05', '2023-03-23 01:50:05'),
(141, 22, NULL, 'ASUS TUF FX505DT Laptop - Junior Accountant', 'Laptop', '2020-11-16', '40500', 'Functional', NULL, '2023-03-23 02:25:36', '2023-03-23 02:25:36'),
(142, 88, NULL, 'Desktop PC - Loans Teller', 'Desktop PC', '2012-07-05', '18500', 'Functional', NULL, '2023-03-23 07:57:25', '2023-03-23 07:57:25'),
(143, 124, NULL, 'Desktop PC - Account Officer', 'Desktop PC', '2008-01-23', '21000', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-23 08:31:37'),
(144, 93, NULL, 'Desktop PC - Customer Associate', 'Desktop PC', '2012-12-27', '16595', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-24 05:15:22'),
(145, 45, NULL, 'Desktop PC - Accounting Clerk', 'Desktop PC', '2021-08-10', '15100', 'Functional', NULL, '0000-00-00 00:00:00', '2023-03-24 05:46:39'),
(146, 94, NULL, 'Desktop PC - Assistant Cashier', 'Desktop PC', '2014-08-09', '16500', 'Functional', NULL, '2023-03-24 05:53:05', '2023-03-24 05:53:05'),
(147, NULL, 3, 'Lenovo ThinkSystem SR250 (Blade type)', 'Server', '2022-08-25', '119800', 'New', NULL, '2023-03-28 06:17:04', '2023-03-28 06:17:04'),
(148, NULL, 4, 'Dell PowerEdge T340 (Tower Type)', 'Server', '2021-04-14', '90700', 'Functional', NULL, '2023-03-29 07:44:55', '2023-03-29 07:44:55'),
(149, NULL, 6, 'Lenovo System X3250 (Blade Type)', 'Server', '2016-03-10', '79100', 'Functional', NULL, '2023-03-29 08:22:58', '2023-03-29 08:22:58'),
(151, 39, NULL, 'Desktop PC - Office Associate', 'Desktop PC', '2022-04-18', '20000', 'New', NULL, '2023-05-05 06:43:33', '2023-05-05 06:43:33'),
(152, 100, NULL, 'Desktop PC - Loans Processor Butuan BLU', 'Desktop PC', '2023-04-18', '20000', 'New', NULL, '0000-00-00 00:00:00', '2023-05-05 06:47:11'),
(154, 77, NULL, 'Desktop PC - LoansBook Butuan BLU', 'Desktop PC', '2023-04-18', '20000', 'New', NULL, '2023-05-05 06:51:15', '2023-05-05 06:51:15'),
(155, 20, NULL, 'Lenovo Yoga 6 Laptop - Assistant VP', 'Laptop', '2023-05-16', '45185', 'New', NULL, '0000-00-00 00:00:00', '2023-05-16 06:21:58'),
(156, 121, NULL, 'Desktop PC - Loans Teller', 'Desktop PC', '2023-04-11', '18,500', 'New', NULL, '0000-00-00 00:00:00', '2023-05-31 05:10:41'),
(157, 74, NULL, 'Desktop PC - Loans Officer', 'Desktop PC', '2022-12-20', '14500', 'Functional', NULL, '2023-06-06 05:53:52', '2023-06-06 05:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `educational`
--

CREATE TABLE `educational` (
  `educid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `course` varchar(150) NOT NULL,
  `educlevel` varchar(25) NOT NULL,
  `school` varchar(30) NOT NULL,
  `schabr` varchar(80) NOT NULL,
  `year` varchar(15) NOT NULL,
  `eductimestamp` timestamp NULL DEFAULT current_timestamp(),
  `educcreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educational`
--

INSERT INTO `educational` (`educid`, `uid`, `course`, `educlevel`, `school`, `schabr`, `year`, `eductimestamp`, `educcreated`) VALUES
(1, 3, 'BS Computer Science ', 'College', 'Xavier University', 'XU', '', '2023-02-08 06:20:31', '2023-02-08 06:20:31'),
(2, 4, 'BS in Commerce  Major in  Management Accounting', 'College', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-08 06:24:25', '2023-02-08 06:24:25'),
(3, 5, 'BS in Information Technology', 'College Graduate', 'Christ the King College', 'CKC', '2020', '2023-02-08 06:27:52', '2023-02-08 06:27:52'),
(4, 6, 'BS in Accounting Technology', 'College Graduate', 'Cagayan de Oro College (PHINMA', 'COC', '', '2023-02-08 06:30:17', '2023-02-08 06:30:17'),
(5, 7, 'BS in Business Administration Major in Financial M', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-08 06:32:59', '2023-02-08 06:32:59'),
(6, 8, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-08 06:35:44', '2023-02-08 06:35:44'),
(7, 9, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-08 06:43:55', '2023-02-08 06:43:55'),
(8, 10, 'AB Economics', 'College Graduate', 'University of Bohol', 'UB', '', '2023-02-08 06:53:44', '2023-02-08 06:53:44'),
(9, 11, 'BS in Criminology', 'College Level', 'Cagayan de Oro College (PHINMA', 'COC', '', '2023-02-08 06:58:05', '2023-02-08 06:58:05'),
(10, 12, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-08 07:01:47', '2023-02-08 07:01:47'),
(11, 13, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-08 07:07:24', '2023-02-08 07:07:24'),
(12, 14, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-08 07:11:23', '2023-02-08 07:11:23'),
(13, 15, 'BS in Commerce  Major in  Banking and Finance', 'College Graduate', 'St. Rita College of Balingasag', 'SRCB', '', '2023-02-08 07:15:20', '2023-02-08 07:15:20'),
(14, 16, 'BS in Commerce  Major in  Banking and Finance', 'College Graduate', 'St. Ritas College', 'SRC', '', '2023-02-08 07:18:23', '2023-02-08 07:18:23'),
(15, 17, 'BS in Accountancy', 'College Graduate', 'Pilgrim Christian College', 'PCC', '', '2023-02-08 07:25:53', '2023-02-08 07:25:53'),
(16, 18, 'BS in Commerce  Major in  Marketing', 'College Graduate', 'Xavier University', 'XU', '', '2023-02-08 07:30:29', '2023-02-08 07:30:29'),
(17, 19, 'BS in Business Administration Major in Banking and', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-08 07:35:44', '2023-02-08 07:35:44'),
(18, 20, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-08 07:38:10', '2023-02-08 07:38:10'),
(19, 21, 'BS in Accountancy', 'College Graduate', 'Capitol University', 'CU', '', '2023-02-08 08:08:16', '2023-02-08 08:08:16'),
(20, 22, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-08 08:21:50', '2023-02-08 08:21:50'),
(21, 23, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-09 01:17:47', '2023-02-09 01:17:47'),
(22, 24, 'BS in Business Administration Major in Financial M', 'College Graduate', 'Xavier University', 'XU', '2017', '2023-02-09 02:58:10', '2023-02-09 02:58:10'),
(23, 25, 'BS in Management of Financial', 'College Graduate', 'De La Salle University', 'DLSU', '', '2023-02-09 03:03:44', '2023-02-09 03:03:44'),
(24, 26, 'BS in Commerce  Major in  Accounting', 'College Graduate', 'Xavier University', 'XU', '', '2023-02-09 03:08:46', '2023-02-09 03:08:46'),
(25, 27, 'BS in Commerce  Major in  Management', 'College Graduate', 'San Agustin Institute of Techn', 'SAIT', '', '2023-02-09 03:16:58', '2023-02-09 03:16:58'),
(26, 28, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-09 03:19:16', '2023-02-09 03:19:16'),
(27, 29, 'BS in Commerce  Major in  Banking and Finance', '', 'Bukidnon State University', 'BSU', '', '2023-02-09 03:22:11', '2023-02-09 03:22:11'),
(28, 30, 'BS in Commerce  Major in  Management ', 'College Graduate', 'San Agustin Institute of Techn', 'SAIT', '', '2023-02-09 03:25:30', '2023-02-09 03:25:30'),
(29, 31, 'BS in Commerce  Major in  Marketing Management ', 'College Graduate', 'Southern Philippine College', 'SPC', '', '2023-02-09 03:35:14', '2023-02-09 03:35:14'),
(30, 32, 'BS in Commerce  Major in  Marketing Management ', '', 'ACLC  College Valencia', 'ACLC College Valencia', '', '2023-02-09 03:41:50', '2023-02-09 03:41:50'),
(31, 33, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-09 03:44:18', '2023-02-09 03:44:18'),
(32, 35, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-09 03:47:16', '2023-02-09 03:47:16'),
(34, 39, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-09 05:36:04', '2023-02-09 05:36:04'),
(35, 40, 'BS in Information Technology', '', 'Bukidnon State University', 'BSU', '', '2023-02-09 05:39:49', '2023-02-09 05:39:49'),
(36, 41, 'BS in Information Technology', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-09 05:43:24', '2023-02-09 05:43:24'),
(37, 42, 'BA in Economics ', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-09 05:46:30', '2023-02-09 05:46:30'),
(38, 43, 'BS in Business Administration ', '', 'Christ the King College', 'CKC', '', '2023-02-09 05:49:59', '2023-02-09 05:49:59'),
(39, 44, 'BS in Business Administration Major in Management', 'College Graduate', 'Mountain View College', 'MVC', '', '2023-02-09 05:55:19', '2023-02-09 05:55:19'),
(40, 45, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-09 05:57:20', '2023-02-09 05:57:20'),
(41, 46, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-09 05:59:42', '2023-02-09 05:59:42'),
(42, 48, 'BS in Agriculture  Major in Animal Science', 'College Graduate', 'Central Mindanao University', 'CMU', '', '2023-02-09 07:02:06', '2023-02-09 07:02:06'),
(43, 47, 'BS in Economics', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-09 07:02:57', '2023-02-09 07:02:57'),
(44, 49, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Tagoloan Community College', 'TCC', '', '2023-02-09 07:06:07', '2023-02-09 07:06:07'),
(45, 50, 'BS in Computer Science', 'College Graduate', 'Capitol University', 'CU', '', '2023-02-09 07:09:09', '2023-02-09 07:09:09'),
(46, 51, 'BS in Elementary Education', 'College Graduate', 'Bukidnon Sate College', 'BSC', '', '2023-02-09 07:11:33', '2023-02-09 07:11:33'),
(47, 52, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-09 07:14:05', '2023-02-09 07:14:05'),
(48, 53, 'BS in Business Administration Major in Marketing Management', 'College Graduate', 'Northern Bukidnon Community Co', 'NBCC', '', '2023-02-09 07:18:30', '2023-02-09 07:18:30'),
(49, 54, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Tagoloan Community College', 'TCC', '', '2023-02-09 07:40:19', '2023-02-09 07:40:19'),
(50, 55, 'BS in Technology Communication Management', 'College Graduate', 'Mindanao University of Science', 'MUST', '', '2023-02-09 07:50:26', '2023-02-09 07:50:26'),
(51, 56, 'BS in Information Technology', 'College Graduate', 'Mindanao University of Science', 'MUST', '', '2023-02-10 01:34:12', '2023-02-10 01:34:12'),
(52, 57, 'BS in Commerce  Major in  Management', 'College Graduate', 'Cagayan Capitol College', 'CCC', '', '2023-02-10 01:40:05', '2023-02-10 01:40:05'),
(53, 58, 'BS in Communication Management', 'College Graduate', 'Misamis Oriental State College', 'MOSCAT', '', '2023-02-10 01:43:58', '2023-02-10 01:43:58'),
(54, 59, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Lourdes College', 'LC', '', '2023-02-10 01:47:23', '2023-02-10 01:47:23'),
(55, 60, 'BS in Commerce  Major in  Banking and Finance', 'College Graduate', 'Cagayan Capitol College', 'CCC', '', '2023-02-10 01:52:39', '2023-02-10 01:52:39'),
(56, 61, 'BS in Commerce  Major in  Marketing Management ', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-10 01:56:24', '2023-02-10 01:56:24'),
(57, 62, 'BS in Horticulture Management', 'College Graduate', 'Misamis Oriental State College', 'MOSCAT', '', '2023-02-10 02:01:07', '2023-02-10 02:01:07'),
(58, 63, 'BS in Radiologic Technologist', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-10 02:07:11', '2023-02-10 02:07:11'),
(59, 64, 'BS in Commerce  Major in  Banking and Finance', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-10 02:10:38', '2023-02-10 02:10:38'),
(60, 65, 'BS in Commerce Major in Business Management', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-10 02:29:35', '2023-02-10 02:29:35'),
(61, 66, 'BS in Agricultural Education', 'College Graduate', 'Misamis Oriental State College', 'MOSCAT', '', '2023-02-10 02:44:04', '2023-02-10 02:44:04'),
(62, 67, 'BS in Business Administration Major in Marketing Management', 'College Graduate', 'Gingoog City Colleges', 'GCC', '', '2023-02-10 02:46:20', '2023-02-10 02:46:20'),
(63, 68, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'St. Peters College of Balingas', 'SPCB', '', '2023-02-10 02:49:16', '2023-02-10 02:49:16'),
(64, 69, 'BS in Agriculture', 'College Graduate', 'Misamis Oriental State College', 'MOSCAT', '', '2023-02-10 03:14:22', '2023-02-10 03:14:22'),
(65, 70, 'BS in Business Administration ', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-10 03:16:39', '2023-02-10 03:16:39'),
(66, 71, 'BS in Commerce  Major in  Banking and Finance', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-10 03:19:08', '2023-02-10 03:19:08'),
(67, 72, 'BS in Education Major in Mathematics', 'College Graduate', 'St. Peters College of Balingas', 'SPCB', '', '2023-02-10 03:22:12', '2023-02-10 03:22:12'),
(68, 74, 'BS - Business Administration', 'Tertiary', 'Bukidnon State University', '', '', '2023-02-22 06:52:27', '2023-02-22 06:52:27'),
(69, 75, 'BS in Computer Science', 'College Graduate', 'University of Visayas', 'UV', '', '2023-02-22 06:56:37', '2023-02-22 06:56:37'),
(70, 76, 'BSBA - Financial Management', 'Tertiary', 'St. Ritas College of Balingasa', '', '', '2023-02-22 07:12:57', '2023-02-22 07:12:57'),
(71, 77, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-22 07:16:16', '2023-02-22 07:16:16'),
(72, 78, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Xavier University', 'XU', '', '2023-02-22 07:22:24', '2023-02-22 07:22:24'),
(73, 80, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-22 07:24:59', '2023-02-22 07:24:59'),
(74, 79, 'BSBA - Financial Management', 'Tertiary', 'St. Ritas College of Balingasa', '', '', '2023-02-22 07:25:25', '2023-02-22 07:25:25'),
(75, 81, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-22 07:28:01', '2023-02-22 07:28:01'),
(76, 82, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'St. Peters College of Balingas', 'SPCB', '', '2023-02-22 07:31:55', '2023-02-22 07:31:55'),
(77, 83, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-22 07:34:45', '2023-02-22 07:34:45'),
(78, 84, 'BS - Accountancy', 'Tertiary', 'Christ the King College', '', '', '2023-02-22 07:36:54', '2023-02-22 07:36:54'),
(79, 85, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-22 07:37:52', '2023-02-22 07:37:52'),
(80, 86, 'BS - Business Administration', 'Tertiary', 'Bukidnon State University', '', '', '2023-02-22 07:40:32', '2023-02-22 07:40:32'),
(82, 87, '', '', '', '', '', '2023-02-22 07:44:17', '2023-02-22 07:44:17'),
(84, 88, 'BSBA - Financial Management', 'Tertiary', 'Bukidnon State University', '', '', '2023-02-22 07:48:48', '2023-02-22 07:48:48'),
(85, 89, 'BS Development Communication', 'Tertiary', 'Xavier University (Ateneo de C', '', '', '2023-02-22 07:52:23', '2023-02-22 07:52:23'),
(87, 90, '', '', '', '', '', '2023-02-22 07:55:22', '2023-02-22 07:55:22'),
(88, 92, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-22 07:57:28', '2023-02-22 07:57:28'),
(89, 93, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-22 08:00:43', '2023-02-22 08:00:43'),
(90, 94, 'BS in Commerce Major in Economics', 'College Graduate', 'Bukidnon Sate College', 'BSC', '', '2023-02-22 08:07:30', '2023-02-22 08:07:30'),
(91, 95, 'BS in Commerce  Major in  Management', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-22 08:09:30', '2023-02-22 08:09:30'),
(92, 91, 'BSBA - Marketing Management', 'Tertiary', 'St. Ritas College of Balingasa', '', '', '2023-02-22 08:14:10', '2023-02-22 08:14:10'),
(93, 96, 'BSC - Accounting Management', 'Tertiary', 'Urios College', '', '', '2023-02-22 08:18:10', '2023-02-22 08:18:10'),
(94, 97, 'BS in Accountancy', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-22 08:20:11', '2023-02-22 08:20:11'),
(95, 98, 'BS - Accountancy', 'Tertiary', 'Christ the King College', 'CKC', '', '2023-02-22 08:21:38', '2023-02-22 08:21:38'),
(96, 99, 'BS in Business Management', 'College Graduate', 'Xavier University', 'XU', '', '2023-02-22 08:23:25', '2023-02-22 08:23:25'),
(97, 100, 'BS in Business Administration Major in Marketing Management', 'College Graduate', 'Gingoog City Colleges', 'GCC', '', '2023-02-22 08:25:18', '2023-02-22 08:25:18'),
(98, 101, 'BSBA - Financial Management', 'Tertiary', 'PHINMA COC', '', '', '2023-02-22 08:26:11', '2023-02-22 08:26:11'),
(99, 102, 'BS in Accountancy', 'College Graduate', 'Cagayan de Oro College (PHINMA', 'COC', '', '2023-02-22 08:28:11', '2023-02-22 08:28:11'),
(100, 103, 'BSBA - Marketing Management', 'Tertiary', 'Liceo De Cagayan University', '', '', '2023-02-22 08:30:04', '2023-02-22 08:30:04'),
(101, 104, 'BS in Commerce Major in Custom Management', 'College Graduate', 'Fatima College of Camiguin', 'FCC', '', '2023-02-22 08:31:04', '2023-02-22 08:31:04'),
(102, 107, 'BS in Business Administration Major in Business Administration', 'College Graduate', 'Bukidnon State University', 'BSU', '', '2023-02-22 08:33:31', '2023-02-22 08:33:31'),
(103, 108, 'BS in Business Administration Major in Marketing Management', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-22 08:35:53', '2023-02-22 08:35:53'),
(104, 109, 'BS in Commerce  Major in  Banking and Finance', 'College Graduate', 'Fatima College of Camiguin', 'FCC', '', '2023-02-22 08:38:32', '2023-02-22 08:38:32'),
(105, NULL, 'BSC - Management Accounting', 'Tertiary', 'Liceo De Cagayan University', '', '', '2023-02-22 08:40:52', '2023-02-22 08:40:52'),
(106, 110, 'BS in Commerce  Major in  Management', 'College Graduate', 'Christ the King College', 'CKC', '', '2023-02-27 07:21:42', '2023-02-27 07:21:42'),
(107, 111, 'BS in Business Administration Major in Financial Management', 'College Graduate', 'Stella Maris College', 'SMC', '', '2023-02-27 07:23:46', '2023-02-27 07:23:46'),
(108, 113, 'Computer Progamming', '1 year ', '', '', '', '2023-02-27 07:28:52', '2023-02-27 07:28:52'),
(109, 114, 'BS in Accountancy', 'College Graduate', 'Cagayan de Oro College (PHINMA', 'COC', '', '2023-02-27 08:37:57', '2023-02-27 08:37:57'),
(110, 115, 'BS in Accountancy', 'College Graduate', 'Pilgrim Christian College', 'PCC', '', '2023-02-27 08:41:29', '2023-02-27 08:41:29'),
(111, 116, 'BS in Commerce  Major in  Marketing Management ', 'College Graduate', 'Cagayan de Oro College (PHINMA', 'COC', '', '2023-02-27 08:44:20', '2023-02-27 08:44:20'),
(112, 117, 'BS in Accountancy', 'College Graduate', 'Cagayan de Oro College (PHINMA', 'COC', '', '2023-02-27 08:46:33', '2023-02-27 08:46:33'),
(113, 119, 'BS in Commerce Major in Management Accounting', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-27 08:54:39', '2023-02-27 08:54:39'),
(114, 120, 'BS in Business Administration Major in Human Resource Development', 'College Graduate', 'Capitol University', 'CU', '', '2023-02-27 08:57:28', '2023-02-27 08:57:28'),
(115, 121, 'BS in Commerce  Major in  Management Accounting', 'College Graduate', 'Liceo de Cagayan University', 'LDCU', '', '2023-02-27 08:59:34', '2023-02-27 08:59:34'),
(116, 122, 'BS in Commerce  Major in  Business Administration', 'College Graduate', 'Lourdes College', 'LC', '', '2023-02-27 09:02:35', '2023-02-27 09:02:35'),
(117, 123, 'BS in Business Management', 'College Graduate', 'Xavier University', 'XU', '', '2023-02-27 09:22:27', '2023-02-27 09:22:27'),
(118, 124, 'BS in Computer Science', 'College Graduate', 'Capitol University', 'CU', '', '2023-02-28 01:11:06', '2023-02-28 01:11:06'),
(119, 125, 'BS in Information Technology', 'College Graduate', 'Lourdes College', 'LC', '2019', '2023-03-07 04:05:55', '2023-03-07 04:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `uid` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `nname` varchar(70) NOT NULL,
  `profpic` varchar(150) NOT NULL,
  `suffix` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `datebirth` varchar(25) NOT NULL,
  `placebirth` varchar(70) NOT NULL,
  `bldtype` varchar(20) NOT NULL,
  `cvlstat` varchar(20) NOT NULL,
  `telno` varchar(15) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `natl` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tin` varchar(25) NOT NULL,
  `sssgsis` varchar(25) NOT NULL,
  `pagibig` varchar(25) NOT NULL,
  `philhealth` varchar(25) NOT NULL,
  `haddress` varchar(70) NOT NULL,
  `hzipcode` int(10) NOT NULL,
  `sfname` varchar(70) NOT NULL,
  `smname` varchar(70) NOT NULL,
  `slname` varchar(70) NOT NULL,
  `sntl` varchar(20) NOT NULL,
  `socc` varchar(25) NOT NULL,
  `weddinganniv` date DEFAULT NULL,
  `ffname` varchar(70) NOT NULL,
  `fmname` varchar(70) NOT NULL,
  `flname` varchar(70) NOT NULL,
  `fntl` varchar(20) NOT NULL,
  `focc` varchar(25) NOT NULL,
  `mfname` varchar(70) NOT NULL,
  `mmname` varchar(70) NOT NULL,
  `mlname` varchar(70) NOT NULL,
  `mntl` varchar(20) NOT NULL,
  `mocc` varchar(25) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password1` varchar(300) NOT NULL,
  `password2` varchar(300) NOT NULL,
  `userlevel` int(15) DEFAULT NULL,
  `userstatus` int(15) NOT NULL,
  `usercondition` int(15) NOT NULL,
  `employeecreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `timelog` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`uid`, `fname`, `mname`, `lname`, `nname`, `profpic`, `suffix`, `gender`, `datebirth`, `placebirth`, `bldtype`, `cvlstat`, `telno`, `mobno`, `natl`, `email`, `tin`, `sssgsis`, `pagibig`, `philhealth`, `haddress`, `hzipcode`, `sfname`, `smname`, `slname`, `sntl`, `socc`, `weddinganniv`, `ffname`, `fmname`, `flname`, `fntl`, `focc`, `mfname`, `mmname`, `mlname`, `mntl`, `mocc`, `username`, `password1`, `password2`, `userlevel`, `userstatus`, `usercondition`, `employeecreated`, `timelog`) VALUES
(1, 'ADMINISTRATOR', 'ADMINISTRATOR', 'ADMINISTRATOR', 'ADMINISTRATOR', '1600px_COLOURBOX9896883.jpg', '', 'Male', '08/01/2021', 'TALISAYAN', 'N/A', '', '', '', '', 'misdept.rbtbank@gmail.com', '', '', '', '', 'TALISAYAN', 0, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 'admin', 'd15f15946d4a97f57514d3eb94365152325d6a03', '', 3, 1, 1, '2022-05-20 03:05:38', '2022-05-20 03:05:38'),
(2, 'Charles Matthew', 'Gamutan', 'Coming', 'CHARLES', '', '', 'Male', '11/27/1994', '', 'O-', '', '', '', '', 'ichmmyxxx@gmail.com', '', '', '', '', '', 0, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', 'chums', 'd4885a18981782158cb29bfd9943afa7964f2995', '', 2, 1, 1, '2022-05-17 09:20:04', '2022-05-17 09:20:04'),
(3, 'Pepito', 'Valentin', 'Vacalares', 'PETO', '', 'Jr.', 'Male', '03/21/1988', '', 'B', 'Married', '', '', 'Filipino', '', '444-743-205', '08-1796785-7', '1210-1333-6188', '15-050261410-1', 'Generalao St., Poblacion, Opol, Misamis Oriental', 9016, 'Kristin Glo', 'Pates', 'Vacalares', 'Filipino', 'Banker/Compliance Superiv', '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:18:42', '2023-02-08 06:18:42'),
(4, 'Kristin Glo', 'Pates', 'Vacalares', 'KRISTIN', '', '', 'Female', '06/21/1984', '', 'O', 'Married', '', '', 'Filipino', '', '938-993-386', '08-1138224-7', '1820-0077-4141', '15-050165194-1', 'South Poblacion, Medina, Misamis Oriental', 0, 'Pepito Jr.', 'Valentin', 'Vacalares', 'Filipino', 'Banker/IT/MIS Head', '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:22:46', '2023-02-08 06:22:46'),
(5, 'Karl', '  ', 'Abao', 'KARL', '', '', 'Male', '07/06/1998', '', '', 'Single', '', '', 'Filipino', '', '741-153-447', '34-9741995-5', '1212-7434-3361', '15-050516652-5', 'P-3, Barangay 18, Poblacion, Gingoog City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:26:59', '2023-02-08 06:26:59'),
(6, 'Jeson ', 'Tubalado', 'Dominguez', 'JESON', '', '', 'Male', '03/02/1992', '', 'O', 'Single', '', '', '', '', '328-608-363', '34-5685887-4', '1211-6372-9441', '15-025446152-2', 'P-28, Danatag, Baungon, Bukidnon', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:29:27', '2023-02-08 06:29:27'),
(7, 'Kara May Fatima', 'Panulin', 'Palarca', 'KARA', '', '', 'Male', '05/31/1996', '', '', 'Married', '', '', 'Filipino', '', '765-520-903', '34-3836916-7', '1212-6893-8071', '15-025492014-4', 'P-2, Calamcam, Talisayan, Misamis Oriental', 9012, 'Rodelio Jr.', 'T', 'Palarca ', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:31:59', '2023-02-08 06:31:59'),
(8, 'Leoreme', 'Bentuzal', 'Pamisa', 'JINGGY', '', '', 'Female', '08/18/1979', '', 'B', 'Married', '', '', '', '', '936-510-622', '08-2186332-9', '1820-0076-4359', '15-025007032-4', 'Sta. Ana, Talisayan, Misamis Oriental', 9012, 'John Paul', 'Quilab', 'Pamisa', 'Filipino', 'Seaman', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:34:25', '2023-02-08 06:34:25'),
(9, 'Phsyche Joy', 'Bon', 'Cena', 'PHSYCHE', '', '', 'Female', '', '', 'O', 'Married', '', '', '', '', '936-510-606', '08-1128453-6', '1820-0076-2363', '15-050071442-7', 'Calamcam, Talisayan, Misamis Oriental', 9012, 'Jembo', 'Labial', 'Cena', 'Filipino', 'Seaman', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:42:16', '2023-02-08 06:42:16'),
(10, 'Virgencita Daisy', 'Quicho', 'Carael', 'DAISY', '', '', 'Male', '', '', 'B', 'Married', '', '', 'Filipino', '', '190-371-240', '08-0916610-3', '1820-0073-9946', '15-050102983-3', 'San Luis, Gingoog CIty', 0, 'Marcial', 'Bajao', 'Carael', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:52:18', '2023-02-08 06:52:18'),
(11, 'Rodel', 'Mabalacad', 'Madlos', 'RODEL', '', '', 'Male', '04/08/1976', '', '', 'Married', '', '', 'Filipino', '', '925-416-931', '08-2057282-8', '1820-0005-5246', '15-050121613-7', 'Zone 6B, Aguiles St., Capisnon, Kauswagan, Cagayan de Oro City', 9000, 'Jene Veive', 'Calderon', 'Madlos', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:57:17', '2023-02-08 06:57:17'),
(12, 'Eden John', 'Salingay', 'Mercado', 'EDEN', '', '', 'Male', '02/16/1999', '', '', 'Single', '', '', 'Filipino', '', '378-460-636', '08-2912336-2', '1212-8275-4888', '15-251587064-9', 'CM Homes Barangay 24-A, Gingoog City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', 'Marites', '', 'Mercado', 'Filipino', 'Teacher', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 06:59:53', '2023-02-08 06:59:53'),
(13, 'Nancy', 'Uy', 'Balingkit', 'NANCY', '', '', 'Female', '06/27/1977', '', 'A', 'Married', '', '', '', '', '919-977-320', '08-2183271-6', '1820-0078-4732', '15-025001841-1', 'Dona Trinidad Baol St., Barangay 22, Gingoog City', 0, 'Samuel', 'C', 'Balingkit', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:06:08', '2023-02-08 07:06:08'),
(14, 'Rhea', 'Balaba', 'Dagoldol', 'RHEA', '', '', 'Female', '11/23/1978', '', 'O', 'Married', '', '', '', '', '410-269-004', '08-1125925-7', '1820-0075-9074', '15-050102982-5', 'Manlangka, Barangay 25, Gingoog City', 0, 'Anthony', 'Aguino', 'Dagoldol', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:10:42', '2023-02-08 07:10:42'),
(15, 'Monique', 'Autor', 'Jumoc', 'MONICA', '', '', 'Female', '09/30/1977', '', 'O', 'Single', '', '', 'Filipino', '', '925-410-457', '08-1334155-8', '1820-0070-5710', '15-0500770007-8', 'Purok 2, Barangay Kabulawan, Lagonglong, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:12:57', '2023-02-08 07:12:57'),
(16, 'Ivy Marie', 'Cervantes', 'Mabale', 'IVY', '', '', 'Female', '02/04/1982', '', 'O', 'Married', '', '', 'Filipino', '', '936-498-409', '08-2078010-2', '1820-0076-0776', '15-050105652-0', 'Panabol, Kinoguitan, Misamis Oriental', 0, 'Vic', 'Loggong', 'Mabale', 'Filipino', 'Banker/Loans Officer', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:17:05', '2023-02-08 07:17:05'),
(17, 'Unity', 'Creayla', 'Lamayon', 'UNITY', '', '', 'Female', '05/02/1993', '', 'O+', 'Married', '', '', 'Filipino', '', '450-447-775', '09-3731301-9', '1211-2280-9406', '16-050609737-9', 'P5 - San Jose, Talisayan, Misamis Oriental', 9012, 'Randolf', '', 'Lamayon', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:24:57', '2023-02-08 07:24:57'),
(18, 'Clint', 'Banico', 'Fernandez', 'CLINT', '', '', 'Male', '04/05/1974', '', 'A', 'Married', '', '', '', '', '919-977-178', '08-1264819-7', '1820-0073-8471', '15-050190795-4', 'Bauk-Bauk, Balingoan, Misamis Oriental', 0, 'Isabel Arlyn', 'Atienza', 'Fernandez', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:29:17', '2023-02-08 07:29:17'),
(19, 'Dexter', 'Ladao', 'Argoncillo', 'DEX', '', '', 'Male', '10/22/1983', '', 'B', 'Married', '', '', 'F', '', '949-478-715', '08-1432974-4', '1830-0036-4133', '18-050074783-6', 'Minlagas, San Luis, Gingoog City', 0, 'Junibe', 'Bongcayao', 'Argoncillo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:34:34', '2023-02-08 07:34:34'),
(20, 'Thesil', 'Macaranas', 'Bailo', 'TITING', '', '', 'Female', '12/07/1973', '', 'A', 'Married', '', '', 'Filipino', '', '185-751-957', '08-1086713-2', '1820-0072-7769', '15-050018392-8', 'La Verdad, Poblacion, Talisayan, Misamis Oriental', 0, 'Jason', 'Ranoco', 'Bailo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 07:37:32', '2023-02-08 07:37:32'),
(21, 'Emielyn', 'Rafal', 'Badic', 'EMIELYN', '', '', 'Female', '03/21/1977', '', 'O', 'Married', '', '', 'Filipino', '', '919-977-258', '08-1264707-5', '1820-0077-7703', '15-050071459-1', 'Lagonglong, Misamis Oriental', 0, 'Darey John', 'Obliosca', 'Badic', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 08:07:19', '2023-02-08 08:07:19'),
(22, 'Frevie Eve', 'Rañoa', 'Alido', 'EVE', '', '', 'Female', '10/15/1976', '', 'O', 'Married', '', '', 'Filipino', '', '321-527-459', '08-1232726-9', '1820-0077-6962', '19-090045770-0', 'Poblaciion, Talisayan, Misamis Oriental', 9012, 'Lendy', 'Valmoria', 'Alido', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-08 08:21:06', '2023-02-08 08:21:06'),
(23, 'Grant Kennth', 'De Lara', 'Flores', 'KENNETH', '', '', 'Male', '11/11/1998', '', '', 'Single', '', '', 'Filipino', '', '775-480-571', '08-2921163-0', '1212-7424-3747', '15-251618509-5', 'P-4, Barangay 25, Gingoog City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 01:16:38', '2023-02-09 01:16:38'),
(24, 'Ira Regine', 'Moog', 'Pangan', 'IRA', '', '', 'Female', '10/11/1996', '', 'A', 'Married', '', '', 'Filipino', '', '715-254-411', '08-2764225-6', '1211-5385-4456', '15-000110260-7', 'Poblacion, Talisayan, Misamis Oriental', 9012, 'Daniel Lawrence ', 'O', 'Pangan', 'Filipino', '', '2018-07-20', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 02:57:03', '2023-02-09 02:57:03'),
(25, 'Alexander Christoph ', 'Pe', 'Beltran', 'ALEC', '', '', 'Male', '', '', 'O+', 'Single', '', '', 'F', '', '717-761-308', '34-7721562-9', '', '03-251551689-0', '#1 School St., Grace Village, Quezon City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:00:25', '2023-02-09 03:00:25'),
(26, 'Cesar ', 'Gaid', 'Magallanes', 'SARSI', '', '', 'Male', '11/11/1958', '', '', 'Married', '', '', 'Filipino', '', '135-230-947', '08-0550257-0', '1040-0099-3184', '15-000017197-4', '1180 FC Galarrita Compound, Camman-an, Cagayan de Oro City', 9000, 'Agnes', 'L', 'Galarrita', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:06:46', '2023-02-09 03:06:46'),
(27, 'Regidor', 'Aparicio', 'Valiente', 'REGIE', '', '', 'Male', '03/15/1990', '', 'O', 'Married', '', '', '', '', '403-127-153', '08-1777450-3', '1210-2406-7444', '15-050266420-6', 'P-1, Mendis, Pangantucan, Bukidnon', 0, 'Aiza Glezel', 'A', 'Dagang', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:15:11', '2023-02-09 03:15:11'),
(28, 'Christian', 'Liguan', 'Gabales', 'TIAN', '', '', 'Male', '01/08/1996', '', 'O', 'Married', '', '', 'Filipino', '', '716-796-882', '08-2825783-1', '1212-1992-0538', '15-203111067-4', 'P-1, Base Camp, Maramag, Bukidnon', 0, 'Mary Aiza', 'Bautista', 'Lansang', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:18:27', '2023-02-09 03:18:27'),
(29, 'Novie', 'Fantionial', 'Colis', 'NOVIE', '', '', 'Male', '11/01/1985', '', 'B+', 'Married', '', '', 'Filipino', '', '292-899-391', '08-1603978-6', '1820-0070-5966', '15-050155208-0', 'Manlamonav, Don Carlos, Bukidnon', 0, 'Christine', 'C', 'Colis', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:21:31', '2023-02-09 03:21:31'),
(30, 'Estrello', 'Alpas', 'Jemino', 'TJ', '', '', 'Male', '01/20/1977', '', 'O', 'Married', '', '', '', '', '921-279-093', '08-1322128-3', '1820-0037-0440', '15-050069983-5', 'Valencia City, Bukidnon', 0, 'Michelle ', 'Lumayno', 'Jemino', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:24:22', '2023-02-09 03:24:22'),
(31, 'Janeth', 'Landasan', 'Magdale', 'JANETH', '', '', 'Female', '04/30/1995', '', 'O', 'Single', '', '', '', '', '321-802-555', '08-2439994-2', '1211-4038-2937', '15-050360900-4', 'Block 4, Puntod, Cagayan de Oro City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:31:56', '2023-02-09 03:31:56'),
(32, 'Jessavyl', 'Monteza', 'Pamaylaon', 'JESSAVYL', '', '', 'Female', '04/19/1992', '', '', 'Married', '', '', '', '', '324-751-308', '08-1935054-3', '1210-9013-1046', '15-050310216-3', 'Salolong Sacramento Valley, San Fernando, Bukidnon', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:39:43', '2023-02-09 03:39:43'),
(33, 'Arjen', 'Balindres', 'Tiberio', 'ARJEAN', '', '', 'Female', '08/10/1998', '', '', 'Single', '', '', 'Filipino', '', '725-197-069', '08-2840004-4', '1212-2369-1062', '15-050475398-2', 'Impalutao, Impasug-ong, Bukidnon', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:43:26', '2023-02-09 03:43:26'),
(34, 'Rodulfo ', 'Aborido', 'Gayloa', 'Pendong', '', 'Jr', 'Male', '06/12/1983', 'Salay, Misamis Oriental', 'A', 'Single', '', '', 'Filipino', '', '400-246-906', '08-2330908-5', '1820-0078-2679', '15-050147695-3', 'Zone 1, Poblacion, Salay, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:46:03', '2023-02-09 03:46:03'),
(35, 'Julie Ann', 'Abalahon', 'Cabunilas', 'JULIE', '', '', 'Female', '10/06/1991', '', 'B', 'Married', '', '', 'Filipino', '', '422-237-470', '34-3029375-6', '1211-9443-1690', '08-051195442-1', 'Zone 1, Poblacion, Talisayan, Misamis Oriental', 0, 'Epifanio Jr.', 'D', 'Cabunilas ', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:46:34', '2023-02-09 03:46:34'),
(36, 'Lester Terex', 'Maglunsod', 'Lao', 'LES', '', '', 'Male', '10/27/1983', '', 'O', 'Married', '', '', 'Filipino', '', '927-000-850', '08-1377011-6', '1210-4962-6820', '15-050155384-2', 'P-4, Poblacion, Kitaotao, Bukidnon', 0, 'Jean Melanie', 'Abellanosa', 'Lao', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:48:58', '2023-02-09 03:48:58'),
(37, 'Edward', ' Gumapo', 'Bajao', 'EDWARD', '', '', 'Male', '04/13/1974', '', 'O', 'Married', '', '', 'Filipino', '', '938-993-409', '08-1126048-2', '1820-0074-4411', '15-050071440-0', 'Poblacion, Medina, Misamis Oriental', 0, 'Chona', 'Solis', ' Bajao', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:51:12', '2023-02-09 03:51:12'),
(38, 'Earn Arthur', 'Nipas', 'Palamine', 'EARN ', '', '', 'Male', '10/17/1982', 'Salay, Misamis Oriental', 'O', 'Married', '', '', 'Filipino', '', '405-769-049', '06-1938380-4', '1210-9404-8198', '15-025186270-4', 'P-7, Poblacion, Salay, Misamis Oriental', 0, 'Nadenah Fay', 'Salvana', 'Palamine', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 03:57:48', '2023-02-09 03:57:48'),
(39, 'April Joy', 'Agbu', 'Ferrer', 'APRIL', 'APRIL2x2.png', '', 'Female', '04/16/1996', '', 'AB', 'Single', '', '', 'Filipino', '', '329-043-443', '08-2653517-3', '12211-7386-6943', '15-251607760-8', 'Zone 1, Barangay 23, Gingoog City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', 'April', 'ba4eba367c2b67f5ce513181af934ba1e6ed3d71', '', 6, 1, 1, '2023-02-09 05:35:19', '2023-02-09 05:35:19'),
(40, 'Larry Mar', 'Dela Cruz', 'Jinayon', 'LARS', '', '', 'Male', '01/30/1996', '', 'B+', 'Married', '', '', 'Filipino', '', '949-230-270', '08-2648550-8', '1211-6853-0184', '15-25163062-2', 'Bulwa, Medina, Misamis Oriental', 0, '', '', '', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:39:01', '2023-02-09 05:39:01'),
(41, 'Justine ', 'Dagoldol', 'Chavez', 'JUST', '', '', 'Male', '04/29/1997', '', '', 'Single', '', '', 'Filipino', '', '765-520-313', '34-8012705-0', '1212-7048-6077', '15-251593160-5', 'P-7, Barangay 25, Gingoog City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:42:39', '2023-02-09 05:42:39'),
(42, 'Alby', 'Yamson', 'Polinar', 'ALBS', '', '', 'Male', '03/20/1985', '', '', 'Married', '', '', 'Filipino', '', '938-995-749', '08-1543981-1', '1580-0041-1408', '15-050127641-5', 'P-3, Barangay 23, Gingoog City', 0, 'Ruby', 'Campaña', 'Polinar', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:45:34', '2023-02-09 05:45:34'),
(43, 'Darwinda', 'Beronio', 'Castro', 'DARBS', '', '', 'Female', '04/18/1979', '', 'A', 'Married', '', '', 'Filipino', '', '444-742-086', '33-5512863-4', '1820-0076-2217', '15-050168928-0', 'San Jose, Talisayan, Misamis Oriental', 0, 'Harold ', 'Adorellas', 'Castro Sr.', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:49:06', '2023-02-09 05:49:06'),
(44, 'Gemma', 'Rebamba', 'Gavasan', 'GEMS', '', '', 'Female', '12/16/1975', '', 'A', 'Widow', '', '', 'Filipino', '', '919-977-186', '08-1124406-8', '1820-0073-8482', '15-050071440-4', 'Mintabon, Talisayan, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:53:07', '2023-02-09 05:53:07'),
(45, 'Ruby Mae', 'Benlon', 'Onio ', 'RUBY', '', '', 'Female', '12/31/1979', '', 'B', 'Married', '', '', 'Filipino', '', '932-272-922', '15-05165193-3', '1820-0078-0069', '15-050165193-3', 'San Jose, Talisayan, Misamis Oriental', 0, 'Alexander', 'Buhat', 'Onio', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:56:36', '2023-02-09 05:56:36'),
(46, 'Lyca ', 'Kiunisala', 'Espantaleion', 'LYCA', '', '', 'Female', '09/16/1997', '', '', 'Married', '', '', 'Filipino', '', '710-138-113', '08-2795680-3', '1212-1191-1924', '15-251584716-7', 'V.E Kiunisala St., Gingoog City', 0, 'Clint Frances ', 'P', 'Espantaleion', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 05:58:59', '2023-02-09 05:58:59'),
(47, 'Jefferson', 'Macapagal', 'Zamayla ', 'JEFF', '', '', 'Male', '03/23/1985', '', 'B', 'Married', '', '', 'Filipino', '', '290-642-092', '08-1502876-9', '1820-0079-0116', '15-050190796-2', '400 Immaculate Conception St., Jasaan, Misamis Oriental', 0, 'Jenny Flor ', 'Rebote', 'Zamayla', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 06:58:03', '2023-02-09 06:58:03'),
(48, 'Marvin', 'Roa', 'Yonson', 'MARVS', '', '', 'Male', '2/22/1981', '', 'B', 'Married', '', '', '', '', '419-279-855', '08-1444477-1', '1820-0076-1286', '15-050184672-6', 'Jasaan, Misamis Oriental', 0, 'Maria Rina', 'M', 'Yonson', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:00:12', '2023-02-09 07:00:12'),
(49, 'April Mike', 'Almonia', 'Valdehuesa', 'MIKE', '', '', 'Male', '05/12/1994', '', 'A', 'Married', '', '', 'Filipino', '', '719-027-366', '08-1934124-8', '1211-4608-1346', '15-025312847-1', 'Zone 4, Baluarte, Tagoloan, Misamis Oriental', 0, 'Marjiniel Blessiel Faith', 'Ylaya', 'Zayas', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:05:01', '2023-02-09 07:05:01'),
(50, 'Anabella', 'Cainoy', 'Tangarorang', 'ABING', '', '', 'Female', '02/08/1984', '', 'O', 'Married', '', '', 'Filipino', '', '938-991-860', '08-1555412-3', '1820-0077-7961', '15-050185635-7', 'Purok 4, Danao, Jasaan, Misamis Oriental', 0, 'Roqueley Anthony', 'Cabeites', 'Tangarorang', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:07:49', '2023-02-09 07:07:49'),
(51, 'Falconery ', 'Escalante', 'Salcedo', 'CONCON', '', '', 'Male', '07/05/1972', '', 'AB', 'Married', '', '', 'Filipino', '', '192-117-517', '08-1019857-1', '1820-0077-9657', '15-000004167-1', 'Bobontugan, Jasaan, Misamis Oriental', 0, 'Ruby', 'N', 'Salcedo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:10:36', '2023-02-09 07:10:36'),
(52, 'Rona', 'Ladra', 'Sabuga', 'RONA', '', '', 'Female', '06/07/1984', '', 'B', 'Married', '', '', 'Filipino', '', '934-160-293', '08-1545364-8', '1820-0078-2668', '15-050165186-0', 'Zone 5, Jampason, Jasaan, Misamis Oriental', 0, 'Nino Rhee', 'Ganzan', 'Sabuga', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:13:05', '2023-02-09 07:13:05'),
(53, 'Rizza', 'Quieta', 'Pagaran', 'RIZA', '', '', 'Female', '04/13/1991', '', 'O', 'Married', '', '', 'Filipino', '', '323-941-435', '08-1986376-8', '15-025332751-2', '15-025332751-2', 'Coralles Extension, Agusan Canyon, Manolo Fortich, Bukidnon.', 0, 'Earl Harvey', 'B', 'Pagaran', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:16:55', '2023-02-09 07:16:55'),
(54, 'Kemberly Ritz', 'Nandong', 'Sabal', 'KEMMY', '', '', 'Female', '08/06/1992', '', 'AB', 'Single', '', '', '', '', '465-149-108', '08-1934132-9', '1221-2676-5694', '15-050310088-8', 'Lower Jasaan, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:38:59', '2023-02-09 07:38:59'),
(55, 'Ivy Cris', 'Patayon', 'Zaballero', 'IVY', '', '', 'Female', '12/11/1989', '', 'B+', 'Married', '', '', 'Filipino', '', '313-072-203', '08-1784980-7', '1211-6045-9199', '12-050927397-4', 'Napaliran, Balingasag, Misamis Oriental', 0, 'Sachnie', 'Arguita', 'Zaballero', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-09 07:41:51', '2023-02-09 07:41:51'),
(56, 'Wilmar Grace', 'Pacaña', 'Dacer', 'GRACE', '', '', 'Female', '02/21/1993', '', '', 'Married', '', '', 'Filipino', '', '359-024-779', '08-2369767-4', '9133-1100-9460', '15-025348157-0', 'Zone-1, Luz Banzon, Jasaan, Misamis Oriental', 0, 'Marlix', 'Ellezo', 'Dacer', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:33:36', '2023-02-10 01:33:36'),
(57, 'Nova', 'Dungog', 'Pabayo', 'NOVA', '', '', 'Female', '10/27/1976', '', 'B', 'Married', '', '', 'Filipino', '', '290-641-589', '08-1301292-6', '1820-0077-1099', '15-0500048-0', 'Bobontugan, Jasaan, Misamis Oriental', 0, 'Delfin', 'Casiño', 'Pabayo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:38:52', '2023-02-10 01:38:52'),
(58, 'Junrick', 'Jalapan', 'Ocot', 'JUNRICK', '', '', 'Male', '11/07/1990', '', 'O', 'Married', '', '', 'Filipino', '', '331-110-085', '08-1972494-6', '1211-2039-3597', '18-050142721-5', 'Aposkahoy, Claveria, Misamis Oriental', 0, 'Jenefer ', 'A', 'Ocot', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:42:42', '2023-02-10 01:42:42'),
(59, 'Maria Amor', 'Ranalan', 'Mialdo', 'AMOR', '', '', 'Female', '12/26/1990', '', 'O', 'Single', '', '', '', '', '322-724-695', '08-2363866-2', '1210-9187-7439', '15-025347747-6', 'Napaliran, Balingasag, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:46:16', '2023-02-10 01:46:16'),
(60, 'Myrna', 'Verula', 'Macabodbod', 'MYRN', '', '', 'Female', '07/04/1977', '', 'O+', 'Married', '', '', 'Filipino', '', '496-019-384', '08-1194618-8', '1820-0076-0787', '15-050181683-5', 'San Antonio, Jasaan, Misamis Oriental', 0, 'Gil', 'Ilago', 'Macabodbod', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:51:42', '2023-02-10 01:51:42'),
(61, 'Maria Glenda', 'Sabuga', 'Lobusta', 'GLENDA', '', '', 'Female', '08/23/1977', '', 'O', 'Married', '', '', 'Filipino', '', '919-977-274', '08-1125991-4', '1820-0077-4130', '15-050070438-3', 'Bobontugan, Jasaan, Misamis Oriental', 0, 'Francis Michael', 'Regalado', 'Lobusta', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:55:29', '2023-02-10 01:55:29'),
(62, 'Jepte', 'Quinto', 'Lequin', 'JEPTE', '', '', 'Male', '11/30/1983', '', 'O', 'Married', '', '', 'Filipino', '', '290-639-844', '08-1656534-4', '1820-0079-8275', '15-050194866-9', 'Minlanot, Claveria, Misamis Oriental', 0, 'Mary Ann', 'Emata', 'Lequin', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 01:59:24', '2023-02-10 01:59:24'),
(63, 'Albert ', 'Dabo-dabo', 'Catipon', 'ALBERT', '', 'Jr.', 'Male', '01/20/1982', '', 'A', 'Married', '', '', 'Filipino', '', '459-463-718', '08-1460545-5', '1211-1332-5033', '15-025395859-8', 'Purok 2, Tankulan, Manolo Fortich, Bukidnon', 0, 'Pinky', 'R', 'Catipon', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 02:06:20', '2023-02-10 02:06:20'),
(64, 'Melanie', 'Estopa', 'Dumapias', 'LANIE', '', '', 'Female', '09/19/1979', '', 'O', 'Married', '', '', 'Filipino', '', '936-510-751', '08-2069110-7', '1820-0077-1088', '15-050181684-3', 'Kimaya, Jasaan, Misamis Oriental', 0, 'Darnel', 'Santos', 'Dumapias', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 02:09:32', '2023-02-10 02:09:32'),
(65, 'Rezile', 'Odchigue', 'Calusa', 'REZILE', '', '', 'Female', '12/07/1977', '', '', 'Married', '', '', 'Filipino', '', '928-404-080', '08-1264708-8', '1820-0078-0836', '15-050070441-3', 'Pangpangon, Talisayan, Misamis Oriental', 0, 'Arnel', 'Malate', 'Calusa', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 02:28:26', '2023-02-10 02:28:26'),
(66, 'Rulan', 'Ladra', 'Cagas', 'RULAN', '', '', 'Male', '09/11/1980', '', 'O', 'Married', '', '', '', '', '290-638-455', '08-1620875-3', '1820-0078-5620', '15-050175454-6', 'Zone 3-B, MAT-I, Claveria, Misamis Oriental', 0, 'Romelda', 'Anaya', 'Cagas', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 02:42:17', '2023-02-10 02:42:17'),
(67, 'Loreto', 'Namilit', 'Cagampang', 'LORZ', '', 'Jr.', 'Male', '09/18/1984', '', 'O', 'Married', '', '', 'Filipino', '', '281-466-535', '08-1128708-3', '1820-0021-2788', '15-050172122-2', 'Paz Village Subdivision, Gingoog City', 0, 'Flory', 'Guarde', 'Empenio', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 02:45:26', '2023-02-10 02:45:26'),
(68, 'Jeprey', 'Castanias', 'Bulawan', 'JEPOY', '', '', 'Male', '11/29/1995', '', '', 'Single', '', '', '', '', '713-260-676', '08-2754994-8', '1211-9892-6308', '15-050455440-8', 'Mambayaan, Balingasag, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 02:47:48', '2023-02-10 02:47:48'),
(69, 'Alecris', 'Sarilla', 'Buhawe', 'ALECRIS', '', '', 'Male', '09/09/1988', '', 'O', 'Married', '', '', 'Filipino', '', '488-701-725', '08-2683722-4', '1211-7928-7139', '15-202118673-7', 'Poblacion, Claveria, Misamis Oriental', 0, 'Margie', 'N', 'Buhawe', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 03:13:27', '2023-02-10 03:13:27'),
(70, 'Pio', 'Jalop', 'Bucag', 'PIO', '', 'Jr.', 'Male', '07/08/1984', '', 'O', 'Married', '', '', 'Filipino', '', '289-271-341', '08-1552318-3', '1820-0078-5619', '15-050165196-8', 'Casibole, Talisayan, Misamis Oriental', 0, 'Marie Irene', 'Ochigue', 'Bucag', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 03:15:43', '2023-02-10 03:15:43'),
(71, 'Johnny', 'Aurit', 'Ampusta', 'JOHNNY', '', '', 'Male', '12/15/1983', '', 'AB ', 'Married', '', '', 'Filipino', '', '413-771-245', '08-1635734-5', '1820-0079-0072', '15-050181685-1', 'Salvacion, Maambong, Libona, Bukidnon', 0, 'Jescil', 'Benting', 'Ampusta', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 03:18:26', '2023-02-10 03:18:26'),
(72, 'Mark', 'Oliver', 'Aguilor', 'MARK', '', '', 'Male', '11/27/1983', '', 'O', 'Married', '', '', 'Filipino', '', '401-564-225', '08-2061712-3', '1211-2674-0438', '15-201187799-5', 'Zone 1, Inobulan, Salay, Misamis Oriental', 0, 'Mazzel', 'Labial', 'Aguilor', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-10 03:21:20', '2023-02-10 03:21:20'),
(73, 'Rico', 'Edpalina', 'Cadelina', 'Rico', '', '', 'Male', '6/5/1986', 'Salay, Misamis Oriental', 'O', 'Married', '', '', '', '', '948-845-133', '08-1611817-3', '1820-0078-8273', '15-201187839-8', 'Purok 7, Poblacion, Salay Misamis Oriental', 0, 'Roselyn ', 'Dullen', 'Cadelina', 'Filipino', 'Banker', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-14 06:22:37', '2023-02-14 06:22:37'),
(74, 'Vic', 'Loging', 'Mabale', 'Vicmabs', '', '', 'Male', '6/8/1983', 'Panabol, Kinoguitan, Misamis Oriental', 'B', 'Married', '', '', 'Filipino', '', '936-516-890', '08-1357520-1', '1820-0077-1783', '15-050112556-5', 'Panabol, Kinoguitan, Misamis Oriental', 9007, 'Ivy Marie', 'Cervantes', 'Mabale', 'Filipino', 'Banker', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 06:49:51', '2023-02-22 06:49:51'),
(75, 'Leo', 'Tinonga', 'Padilla', 'LEO', '', '', 'Male', '10/18/1981', '', 'B', 'Married', '', '', 'Filipino', '', '403-552-335', '08-1137717-1', '1820-0079-0094', '15-025205307-9', 'Bulwa, Medina, Misamis Oriental', 0, 'Maricel', 'Doldolea', 'Padilla', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 06:53:59', '2023-02-22 06:53:59'),
(76, 'Charry Mae', 'Caminade', 'Bagongon', 'Char', '', '', 'Female', '6/2/1994', 'Poblacion, Salay, Misamis Oriental', '', 'Married', '', '', 'Filipino', '', '477-683-936', '08-2426301-0', '1211-4924-4086', '15-050420857-7', 'Poblacion, Salay, Misamis Oriental', 9007, 'Kit Jeccer', 'P', 'Bagongon', 'Filipino', 'Banker', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:10:40', '2023-02-22 07:10:40'),
(77, 'Arabella', 'Gonia', 'Labial', 'ARA', '', '', 'Female', '11/10/1998', '', '', 'Single', '', '', 'Filipino', '', '765-519-625', '34-8967670-6', '1212-6353-9187', '15-025548008-3', 'P-3, Bugdang, Talisayan, Misamis Oriental', 9012, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:12:20', '2023-02-22 07:12:20'),
(78, 'Erica Nochka', 'Barcelona', 'Gomez', 'NOCHKA', '', '', 'Female', '02/04/1994', '', 'A', 'Single', '', '', 'Filipino', '', '319-873-902', '08-2410828-5', '1211-2961-4825', '15-025413032-1', 'P-4, Baliwagan, Balingasag, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:21:03', '2023-02-22 07:21:03'),
(79, 'Edgar', 'Etor', 'Poral', 'ed', '', '', 'Male', '1/6/1992', 'Poblacion, Salay, Misamis Oriental', '', 'Single', '', '', 'Filipino', '', '312-126-173', '18-1958190-1', '1211-2681-3385', '15-050322845-0', 'Poblacion, Salay, Misamis Oriental', 0, 'Sheila Mae ', 'Longakit', 'Poral', '', '', '0000-00-00', '', '', '', 'Filipino', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:23:49', '2023-02-22 07:23:49'),
(80, 'Emelia', 'Villanueva', 'Tugade', 'EMELIA', '', '', 'Female', '10/06/1974', '', 'O', 'Married', '', '', '', '', '919-977-345', '08-1190894-8', '1820-0076-0998', '15-050082079-0', 'Barangay San Luis, Gingoog City', 0, 'Dante', '', 'Tugade', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:24:01', '2023-02-22 07:24:01'),
(81, 'Lendyvie', 'Rabusa', 'Gaputan', 'LENDS', '', '', 'Female', '12/28/1979', '', 'A', 'Married', '', '', '', '', '413-523-232', '08-1309857-1', '1820-0077-6984', '19-090045733-6', 'Barangay Agay-an, Gingoog City', 9014, 'Wilfredo', 'Astronomo', 'Gaputan Jr.', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:26:59', '2023-02-22 07:26:59'),
(82, 'Jecker Jan', 'Babiera', 'Ladera', 'JECKER', '', '', 'Male', '01/15/1987', '', 'B+', 'Married', '', '', '', '', '435-925-487', '09-3177279-5', '1211-1493-7998', '16-050416885-6', 'P-2, Maanas, Medina, Misamis Oriental', 0, 'Ludeza', 'Narisma', 'Ladera', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:30:54', '2023-02-22 07:30:54'),
(83, 'Jericson', 'Sabacajan', 'Tiongson', 'JERICSON', '', '', 'Male', '11/11/1995', '', '', 'Married', '', '', '', '', '476-172-258', '08-2651134-6', '1211-5008-2477', '15-050430003-1', 'P-4, Barangay 18-A, GingoogCity', 0, 'Jessa ', 'Ragrag', 'Tiongson', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:34:00', '2023-02-22 07:34:00'),
(84, 'Nori Jane', 'Lustre', 'Macamimo', 'Nor', '', '', 'Female', '11/3/1991', 'Dig-Aguyan, Medina, Misamis Oriental', '', 'Single', '', '', 'Filipino', '', '314-307-158', '08-2298771-2', '1211-2665-7310', '15-050348734-0', 'Dig-Aguyan, Medina, Misamis Oriental', 9007, 'Myco ', 'B', 'Macamimo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:34:42', '2023-02-22 07:34:42'),
(85, 'Rogel', 'Saraus', 'Crieta', 'GEL', '', '', 'Male', '11/06/1991', '', 'O', 'Married', '', '', '', '', '467-555-559', '08-2296364-2', '1211-2666-0097', '15-050361036-3', 'Barangay 2, Rizal Street, Gingoog City', 0, 'Queenie Marie', 'G', 'Creita', 'Filipino', 'Teacher', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:36:24', '2023-02-22 07:36:24'),
(86, 'Nelisa', 'Bustamante', 'Niese', '', '', '', 'Female', '5/9/1986', 'Salay, Misamis Oriental', 'B', 'Married', '', '', '', '', '938-993-417', '08-2331140-0', '1820-0077-6973', '15-050147699-6', 'Zone 8, Poblacion, Salay, Misamis Oriental', 9007, 'Randolf', 'Dalumpines', 'Niese', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:39:43', '2023-02-22 07:39:43'),
(87, 'Niel', 'Roa', 'Acobo', 'Nilaks', '', '', 'Male', '6/15/1977', 'Salay, Misamis Oriental', '', 'Single', '', '', 'Filipino', '', '774-352-575', '09-1607330-9', '1211-7778-7401', '15-201241024-1', 'Poblacion, Salay, Misamis Oriental', 9007, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:43:27', '2023-02-22 07:43:27'),
(88, 'Jucinde', 'Labandero', 'Acobo', 'Cindi', '', '', 'Female', '5/22/1991', 'Salay, Misamis Oriental', 'O', 'Married', '', '', '', '', '484-490-029', '34-5438445-0', '1211-5671-4645', '15-050411474-2', 'Inobulan, Salay, Misamis Oriental', 9007, 'Ricky ', 'Villarin', 'Acobo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:47:03', '2023-02-22 07:47:03'),
(89, 'Shiela May', 'Tagarda', 'Tacandong', 'Mik', '', '', 'Female', '4/14/1977', 'Poblacion, Salay, Misamis Oriental', 'O', 'Married', '', '', 'Filipino', '', '919-917-304', '08-1124405-5', '1820-0077-5540', '15-050071457-5', 'Poblacion, Salay, Misamis Oriental', 9007, 'Glenn Mark', 'Bullicer', 'Tacandong', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:50:59', '2023-02-22 07:50:59'),
(90, 'Roger', 'Guayan', 'Mediante', 'ROGER', '', '', 'Male', '01/25/1975', '', 'A', 'Married', '', '', 'Filipino', '', '936-516-904', '08-1316700-4', '1820-0077-3231', '15-050191186-2', 'P-4, Poblacion, Talisayan, Misamis Oriental', 9012, 'Sofia', 'Guayan', 'Mediante', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:54:31', '2023-02-22 07:54:31'),
(91, 'Jesson', 'Nahial', 'Tacandong', 'Jiktags', '', '', 'Male', '12/20/1984', 'Balingasag, Misamis Oriental', 'AB', 'Married', '', '', 'Filipino', '', '418-736-798', '08-1896206-8', '1210-4133-9057', '15-201542676-9', 'Talusan, Balingasag, Misamis Oriental', 9007, 'Mariane Rose', 'Acantilado', 'Tacandong', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:54:41', '2023-02-22 07:54:41'),
(92, 'Venus', 'Pegalan', 'Sunot', 'VEE', '', '', 'Female', '11/12/1997', '', 'A', 'Single', '', '', '', '', '721-249-745', '08-2911105-7', '1212-4134-7171', '15-251862581-5', 'San Jose, Talisayan, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 07:56:54', '2023-02-22 07:56:54'),
(93, 'Jeanny', 'Balaba', 'Mostacisa', 'JEANNY', '', '', 'Female', '01/13/1997', '', '', 'Married', '', '', '', '', '764-796-555', '08-2945702-5', '1212-4904-4113', '15-251858610-0', 'P-3, Poblacion, Talisayan, Misamis Oriental', 0, 'Fretz Delta', 'A', 'Mostacisa', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:00:04', '2023-02-22 08:00:04'),
(94, 'Amelita', 'Tosloc', 'Fuscablo', 'MIMI', '', '', 'Female', '04/11/1968', '', 'B', 'Married', '', '', '', '', '186-241-181', '09-1314448-0', '1820-0073-8114', '15-050018387-1', 'San Jose, Talisayan, Misamis Oriental', 9012, 'Renato', 'Renequito', 'Fuscablo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:06:24', '2023-02-22 08:06:24'),
(95, 'May Rechel', 'Pimentel', 'Obedencio', 'CHUCHIE', '', '', 'Female', '03/08/1977', '', 'B', 'Married', '', '', 'Filipino', '', '919-977-240', '08-1233248-7', '1820-0076-0798', '15-050071455-9', 'Poblacion, Talisayan, Misamis Oriental', 9012, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:08:35', '2023-02-22 08:08:35'),
(96, 'Jenny Ve ', 'Porras', 'Kionisala', 'Jen', '', '', 'Female', '10/29/1977', 'Villanueva, Misamis Oriental', 'A', 'Married', '', '', '', '', '936-511-631', '08-2280604-2', '1820-0076-4503', '15-050181682-7', 'Katipunan, Villanueva, Misamis Oriental', 0, 'Stephen Joses', 'Bactong', 'Koinisala', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:16:58', '2023-02-22 08:16:58'),
(97, 'Grace', 'Lague', 'Costudio', 'GRACE', '', '', 'Female', '01/03/1980', '', 'A', 'Married', '', '', '', '', '413-772-020', '08-1129716-7', '1210-4425-9864', '19-090045712-3', 'Barangay 22A, Gingoog City', 0, 'Bobette ', 'Llimet', 'Costudio', 'Filipino', 'Financial Employee', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:19:11', '2023-02-22 08:19:11'),
(98, 'Kathrine ', 'Nunez', 'Casino', 'Kathycute', '', '', 'Female', '9/10/1979', 'Lunao, Gingoog City', 'O', 'Married', '', '', '', '', '2002-004', '08-1122338-0', '1820-0074-9094', '15-050099308-3', 'Lunao, Gingoog City', 9014, 'Enrico ', 'Palma', 'Casino', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:20:04', '2023-02-22 08:20:04'),
(99, 'Johanna Evan', 'Obedencio', 'Cabotaje', 'EVAN', '', '', 'Female', '08/01/1977', '', 'O', 'Married', '', '', '', '', '919-977-233', '08-1243253-6', '1820-0075-1973', '15-050071453-2', 'Medina, Misamis Oriental', 0, 'Abner', 'Opaon', 'Cabotaje', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:21:49', '2023-02-22 08:21:49'),
(100, 'Clark', 'Escalante', 'Macarayo', 'CLARK', '', '', 'Male', '11/10/1995', '', '', 'Single', '', '', '', '', '478-434-543', '08-2620329-8', '1211-5956-2468', '15-251587323-0', 'P-6, Barangay 19, Gingoog City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:24:20', '2023-02-22 08:24:20'),
(101, 'James ', 'Regala', 'Lugatman', '', '', '', 'Male', '', 'Cagayan de Oro City, Misamis Oriental', 'O', 'Married', '', '', 'Filipino', '', '770-413-965', '08-2786837-2', '1212-1002-4132', '15-050482557-6', 'B-15, L32, Calaanan Relocation Site Canitoan, CDO', 9000, 'Daiana Rose', 'Nacuna', 'Lugatman', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:25:01', '2023-02-22 08:25:01'),
(102, 'Villamor', 'Baruel', 'Sumagang', 'JUN MAGZ', '', '', 'Male', '04/23/1972', '', 'O', 'Married', '', '', 'Filipino', '', '129-040-688', '08-0831606-4', '1820-0075-4224', '19-089292032-3', 'Kibungsod, Magsaysay, Misamis Oriental', 0, 'Sheila', 'Nob', 'Sumagang', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:27:18', '2023-02-22 08:27:18'),
(103, 'Nicarter', 'Alianze', 'Jalit', '', '', '', 'Male', '3/31/1988', 'Cagayan de Oro City, Misamis Oriental', 'B', 'Married', '', '', '', '', '310-899-919', '08-1879791-6', '1211-0211-7339', '15-025286203-1', 'Zone 2, Leandro Neri St., Bayabas, CDO', 9000, 'Junalyn', 'Basadre', 'Jalit', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:28:10', '2023-02-22 08:28:10'),
(104, 'Mark Niño', 'Bitoy', 'Rodriguez', 'MARK', '', '', 'Male', '04/24/1989', '', 'O', 'Married', '', '', '', '', '413-524-863', '08-1841213-6', '1210-5035-7319', '15-025277294-6', 'Bonbon, Catarman, Camiguin Province', 0, 'Rona Mae ', 'De La Riarte', 'Rodriguez', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:30:02', '2023-02-22 08:30:02'),
(106, 'Cirane', 'Cailing', 'Basubas', 'Jing', '', '', 'Female', '11/5/1980', 'Jasaan, Misamis Oriental', 'A', 'Married', '', '', 'Filipino', '', '944-272-780', '08-1339552-0', '1820-0076-2340', '15-050175451-1', 'Jampason, Jasaan, Misamis Oriental', 0, 'Joseph Niel', 'L', 'Basubas', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:32:10', '2023-02-22 08:32:10'),
(107, 'Luta', 'Auguis', 'Ocang', 'LUTA', '', '', 'Female', '10/16/1992', '', 'O', 'Married', '', '', 'Filipino', '', '313-937-262', '08-2296300-8', '1211-0315-5186', '15-050337185-7', 'Quiboro, Poblacion, Mambajao, Camiguin Province', 0, 'Mart Gil', 'G', 'Ocang', 'Filipino', 'Goverment Employee', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:32:22', '2023-02-22 08:32:22'),
(108, 'Mary Grace', 'Dunay', 'Salvaña', 'ACE', '', '', 'Female', '07/31/1996', '', 'B+', 'Single', '', '', 'Filipino', '', '749-112-633', '08-2882706-7', '1212-3484-7644', '15-050482522-3', 'P-7, Mainit, Catarman, Camiguin Province, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:35:14', '2023-02-22 08:35:14'),
(109, 'Josephine', 'Cagumbay', 'Tabamo', 'EPEN', '', '', 'Female', '10/18/1978', '', 'O', 'Married', '', '', '', '', '927-881-356', '08-1430973-5', '1820-0077-1109', '15-025099581-6', 'Guinsiliban, Camiguin Province', 0, 'Frederic ', 'Udalve', 'Tabamo', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-22 08:37:34', '2023-02-22 08:37:34'),
(110, 'Boyet', 'Grande', 'Pomada', 'BOYET', '', '', 'Male', '10/24/1979', '', 'AB', 'Married', '', '', '', '', '938-991-844', '08-1129714-1', '1820-0076-3595', '15-050147693-7', 'Portulin, Medina, Misamis Oriental', 0, 'Glenda', 'Mabuyo', 'Pomada', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 07:20:38', '2023-02-27 07:20:38'),
(111, 'Remark', 'Ipan', 'Lespana', 'MARK', '', '', 'Male', '05/19/1994', '', 'B', 'Single', '', '', 'Filipino', '', '340-290-130', '08-2769095-2', '1212-0859-3183', '15-202572965-4', 'P-5, Canaway, Tibanga, Iligan City, Lanao Del Norte', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 07:23:00', '2023-02-27 07:23:00'),
(112, 'Joel', 'Tadeo', 'Apduhan', 'KUYA JOEL', '', '', 'Male', '01/12/1971', '', '', 'Married', '', '', '', '', '166-598-750', '08-0936554-8', '1820-0034-2085', '15-0500018538-6', 'Natumolan, Tagoloan, Misamis Oriental', 0, 'Arlyn', 'B', 'Apduhan', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 07:25:10', '2023-02-27 07:25:10'),
(113, 'Arniel', 'Hingo', 'Oñez', 'SHOSHO', '', '', 'Male', '12/15/1979', '', '', 'Married', '', '', 'F', '', '930-168-290', '08-1247996-8', '1820-0077-0891', '15-050099276-1', 'Bugo, Cagayan de Oro City', 0, 'May Kenneth', 'Agcopra', 'Dangga', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 07:27:56', '2023-02-27 07:27:56'),
(114, 'Brian', 'Macabuac', 'Dahilog', 'BRY', '', '', 'Male', '10/30/1980', '', '', 'Married', '', '', 'Filipino', '', '938-992-983', '08-1336437-3', '1820-0075-4246', '15-050165191-7', 'Iponan, Cagayan de Oro City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:36:20', '2023-02-27 08:36:20');
INSERT INTO `employee` (`uid`, `fname`, `mname`, `lname`, `nname`, `profpic`, `suffix`, `gender`, `datebirth`, `placebirth`, `bldtype`, `cvlstat`, `telno`, `mobno`, `natl`, `email`, `tin`, `sssgsis`, `pagibig`, `philhealth`, `haddress`, `hzipcode`, `sfname`, `smname`, `slname`, `sntl`, `socc`, `weddinganniv`, `ffname`, `fmname`, `flname`, `fntl`, `focc`, `mfname`, `mmname`, `mlname`, `mntl`, `mocc`, `username`, `password1`, `password2`, `userlevel`, `userstatus`, `usercondition`, `employeecreated`, `timelog`) VALUES
(115, 'Aisa Jane', 'Asentista', 'Panilag', 'AISA', '', '', 'Female', '01/05/1997', '', '', 'Married', '', '', 'Filipino', '', '706-909-946', '08-2975934-1', '1212-0968-3659', '15-203287553-4', 'Compol, Catarman, Camiguin', 0, 'Charlys', 'Cadiz', 'Panilag', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:40:52', '2023-02-27 08:40:52'),
(116, 'Roxan', 'Tamayo', 'Mahusay', 'ROX', '', '', 'Female', '01/12/1984', '', 'B', 'Married', '', '', 'Filipino', '', '287-243-534', '08-1317878-9', '1820-0077-7983', '15-050162637-8', 'Zone 1, Bonbon, Cagayan de Oro City', 0, 'Mark Allan', 'Responso', 'Mahusay', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:43:13', '2023-02-27 08:43:13'),
(117, 'Emee Grace', 'Cajes', 'Ramonal', 'EMEE', '', '', 'Female', '08/30/1994', '', 'B+', 'Single', '', '', 'Filipino', '', '339-336-174', '08-2504863-2', '1211-2785-2004', '15-050380959-3', '#459, Zone 3, Bayabas, Cagayan de Oro City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:45:46', '2023-02-27 08:45:46'),
(118, 'Christine Julie Jane', 'Neri', 'Dael', 'TINE', '', '', 'Female', '07/20/1997', '', '', 'Single', '', '', 'Filipino', '', '752-479-842', '08-2903048-4', '1212-3948-5417', '15-251669283-3', 'Zone 1, Luz Banzon, Jasaan, Misamis Oriental', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:49:09', '2023-02-27 08:49:09'),
(119, 'Micheluo ', 'Bahian', 'Mansequiao', 'MICH', '', '', 'Female', '12/15/1982', '', 'O', 'Married', '', '', 'Filipino', '', '944-273-427', '08-1460987-5', '1820-0076-2339', '15-050339094-0', 'Zone 1, Logulio, Alubijid, Misamis Oriental', 0, 'Jonald', 'Sesaldo', 'Mansequiao', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:52:30', '2023-02-27 08:52:30'),
(120, 'Charmaine', 'Labado', 'Fariola', 'SINSIN', '', '', 'Female', '05/21/1994', '', '', 'Married', '', '', 'Filipino', '', '731-423-526', '34-5902989-1', '1211-4660-6985', '15-025453070-2', 'NHA, Kauswagan, Cagayan de Oro City', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:56:03', '2023-02-27 08:56:03'),
(121, 'Claire Mary', 'Legaspi', 'Caiña', 'CLANG2x', '', '', 'Male', '10/09/1979', '', 'O', 'Married', '', '', 'Filipino', '', '413-524-434', '08-1127739-4', '1820-0076-2351', '19-090047052-9', 'Sta. Ana, Talisayan, Misamis Oriental', 0, 'Dexter', 'Gala', 'Caiña', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 08:58:55', '2023-02-27 08:58:55'),
(122, 'Leah', 'Simene', 'Butad', 'LEAH', '', '', 'Female', '02/05/1981', '', 'B', 'Married', '', '', '', '', '927-001-615', '08-1370350-7', '1820-0078-7496', '15-050079474-9', 'Pook, Talisayan, Misamis Oriental', 0, 'Roland', 'Berse', 'Butad', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 09:01:00', '2023-02-27 09:01:00'),
(123, 'Kathy', 'Enterina', 'Saraus', 'KATHY', '', '', 'Male', '10/21/1977', '', 'AB', 'Married', '', '', 'Filipino', '', '919-977-160', '08-1123792-3', '1820-0077-4164', '15-050018383-9', 'B21 L16, Bellevue Subdivision, Upper Carmen, Cagayan de Oro City', 0, 'Ralph Jules', 'Tingabngab', 'Saraus', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-27 09:09:06', '2023-02-27 09:09:06'),
(124, 'Jezzrel', 'Paglinawan', 'Saraus', 'JEZ', '', '', 'Male', '11/07/1982', '', 'B', 'Married', '', '', 'Filipino', '', '938-991-499', '08-1445415-6', '1820-0078-4743', '15-050155063-0', 'Puntod, Cagayan de Oro City', 0, 'Maricel', 'Romulo', 'Saraus', 'Filipino', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '2713a6dfac50c1c05a947e98c36ea5e9d5b828f3', '', 6, 1, 1, '2023-02-28 01:09:18', '2023-02-28 01:09:18'),
(125, 'Louelven', 'Asuque', 'Querol', 'TAWENG', '', '', 'Male', '02/11/1998', 'Cagayan de Oro City', 'O', 'Single', '', '09656507872', 'Filipino', 'qlouelven@gmail.com', '', '', '', '', 'P2 Sibantang, Talisayan, Misamis Oriental', 9012, '', '', '', '', '', '0000-00-00', 'Domesiano', 'Suazo', 'Querol', 'Filipino', 'Farmer', 'Leticia', 'D', 'Asuque', 'Filipino', 'Farmer', 'taweng', '2e9058aac7598cfed549e4c7dc56df2c6f58945b', '', 2, 1, 1, '2023-03-07 04:04:06', '2023-03-07 04:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `empstatus`
--

CREATE TABLE `empstatus` (
  `empstatid` int(12) NOT NULL,
  `empstat` varchar(200) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empstatus`
--

INSERT INTO `empstatus` (`empstatid`, `empstat`, `stamp`) VALUES
(1, 'Regular', '2022-02-13 10:26:46'),
(2, 'Probationary', '2022-02-13 10:27:05'),
(3, 'Contractual', '2022-02-13 10:27:11'),
(4, 'On Job Training (OJT)', '2022-02-13 10:27:27'),
(5, 'Resigned', '2023-02-22 07:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `equip`
--

CREATE TABLE `equip` (
  `equipid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `equserid` int(11) DEFAULT NULL,
  `eqptname` varchar(60) DEFAULT NULL,
  `sn` varchar(35) DEFAULT NULL,
  `vendor` varchar(35) DEFAULT NULL,
  `acqcost` varchar(30) DEFAULT NULL,
  `eqdate` date DEFAULT NULL,
  `class` varchar(35) DEFAULT NULL,
  `estyrs` int(15) DEFAULT NULL,
  `bookvalue` int(15) DEFAULT NULL,
  `stat` varchar(35) DEFAULT NULL,
  `rmkid` int(11) DEFAULT NULL,
  `itemcreated` timestamp NULL DEFAULT current_timestamp(),
  `eqmonth` varchar(20) NOT NULL,
  `eqday` varchar(10) NOT NULL,
  `eqyear` varchar(20) NOT NULL,
  `diagrep` varchar(250) DEFAULT NULL,
  `daterep` date DEFAULT NULL,
  `datedefect` date DEFAULT NULL,
  `curloc` varchar(100) DEFAULT NULL,
  `statrepair` varchar(120) DEFAULT NULL,
  `daterepaired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equip`
--

INSERT INTO `equip` (`equipid`, `userid`, `equserid`, `eqptname`, `sn`, `vendor`, `acqcost`, `eqdate`, `class`, `estyrs`, `bookvalue`, `stat`, `rmkid`, `itemcreated`, `eqmonth`, `eqday`, `eqyear`, `diagrep`, `daterep`, `datedefect`, `curloc`, `statrepair`, `daterepaired`) VALUES
(1, 2, NULL, 'MSI Optix G241V E2 ', 'B7T171800468', 'IT World (Shopee)', '8889', '2022-01-10', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 01:17:55', 'February', '28', '2023', NULL, NULL, NULL, NULL, '', NULL),
(2, 13, NULL, 'NVISION N190HD V3 Monitor', 'N140VL68A221024118', 'TAKTAK Computer Vendor', '2450', '2023-01-09', 'Monitor', 3, 0, 'New', NULL, '2023-05-23 00:54:36', 'February', '28', '2023', NULL, NULL, NULL, NULL, '', NULL),
(3, 97, NULL, 'NVISION Monitor 20 in', '', 'TAKTAK Computer Vendor', '2800', '2022-08-12', 'Monitor', 3, 0, 'New', NULL, '2023-02-28 03:10:53', 'February', '28', '2023', NULL, NULL, NULL, NULL, '', NULL),
(4, 6, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 06:21:51', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(5, 7, NULL, 'Acer - EB192Q Monitor', 'MMT6MSS003103006BC3E00', 'Microtrade', '3600', '2021-07-12', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 01:05:20', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(6, 8, NULL, 'Acer - EB192Q Monitor', 'MMT6MSS003103009CA3E00', 'Microtrade', '3600', '2021-07-12', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 01:05:22', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(8, 8, NULL, 'UPS APC RS500 (BK 650-AS)', '4B0943P48292', '', '6000', '2006-06-02', 'UPS', 3, 0, 'Functional', NULL, '2023-05-23 01:10:23', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(9, 8, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 06:33:45', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(10, 2, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 06:34:58', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(11, 18, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2018-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 06:37:13', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(12, 18, NULL, 'UPS APC BX625 CI - MS', '3B1726X11811', '', '3295', '2012-10-01', 'UPS', 3, 0, 'Functional', NULL, '2023-05-23 00:53:25', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(13, 13, NULL, 'UPS APC 650VA ', '310026736C94545902436', 'Gaisano Interpace', '1750', '2023-01-05', 'UPS', 3, 0, 'Functional', NULL, '2023-05-23 00:56:14', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(14, 23, NULL, 'UPS BX625CI-MS', '3B1548X06942', '', '2695', '2016-05-27', 'UPS', 3, 0, 'Functional', NULL, '2023-05-23 01:19:45', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(15, 14, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 07:05:18', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(16, 4, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 07:07:46', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(17, 16, NULL, 'UPS APC Bk 650 - AS', '3B0825X45008', '', '6195', '2012-10-01', 'UPS', 3, 0, 'Functional', NULL, '2023-05-23 01:00:35', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(18, 4, NULL, 'Acer  Monitor', 'MMLQGSS0072197ADB94201', '', '25850', '2009-10-22', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 01:01:50', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(19, 46, NULL, 'Epson FX-2175 II', 'X4BK008102', '', '25800', '2020-12-29', 'Printer', 3, 1, 'Functional', NULL, '0000-00-00 00:00:00', 'March', '07', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(20, 24, NULL, 'Jabra Speaker', '05623-17-05774', '', '15000', '2021-03-01', 'Speaker', 3, 0, 'Functional', NULL, '2023-05-23 00:51:47', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(21, 46, NULL, 'APC C5650', '', '', '3250', '2007-06-19', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 00:24:18', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(22, 24, NULL, 'Aurora Paper Shredder', 'A1S2203000947', 'Microtrade', '28500', '2022-12-09', 'Paper Shredder', 3, 0, 'New', NULL, '2023-05-23 00:52:04', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(23, 24, NULL, '1TB Seagate External HDD', 'NACN736K', 'Interpace Gaisano', '2795', '2022-11-03', 'External HDD', 3, 0, '', NULL, '0000-00-00 00:00:00', 'March', '07', '', '', '0000-00-00', '0000-00-00', '', '', NULL),
(24, 94, NULL, 'Desktop Case', '', '', '350', '2022-10-12', 'Case', 3, 1, 'New', NULL, '2023-03-07 07:26:35', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(25, 17, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-07 07:26:43', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(26, 94, NULL, 'Acer 19', 'MT6MS500310300C6E3E00', '', '4000', '2021-09-27', 'Monitor', 3, 1, 'Functional', NULL, '2023-05-19 00:33:23', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(27, 99, NULL, 'Lenovo Ideapad 330', '', '', '25995', '2019-05-22', 'Laptop', 3, 1, 'Functional', NULL, '2023-03-07 07:30:42', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(28, 17, NULL, 'Samsung LED 18.5 Monitor', 'G0B3HYCF504064Y', '', '16990', '2014-11-13', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 00:48:06', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(29, 44, NULL, 'WD 500GB HDD', '', '', '1000', '2022-06-20', 'HDD', 3, 1, 'New', NULL, '2023-03-07 18:23:00', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(30, 44, NULL, 'Printer Head Epson 2175', '', '', '5995', '2020-06-29', 'Printer', 3, 1, 'Functional', NULL, '2023-03-07 07:39:59', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(31, 44, NULL, 'APC C5650', '', '', '3250', '2007-06-19', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 07:41:06', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(33, 97, NULL, '700W power supply', '', '', '750', '2022-03-01', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 07:55:14', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(34, 97, NULL, 'AOC LCD', '', '', '3900', '2011-11-25', 'Monitor', 3, 1, 'Functional', NULL, '2023-03-07 07:56:18', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(35, 44, NULL, 'APC BX625', '', '', '3295', '2020-01-11', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 07:57:14', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(36, 97, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-03-07 07:58:22', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(37, 97, NULL, 'Brother DCP J140W', '', '', '4449', '2013-07-07', 'Printer', 3, 1, 'Functional', NULL, '2023-03-07 08:00:10', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(38, 40, NULL, 'Desktop PSU', '', '', '650', '2022-08-03', 'PSU', 3, 1, 'New', NULL, '2023-03-07 18:27:17', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(39, 40, NULL, 'APC C5650', '', '', '2395', '2022-05-02', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 18:27:25', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(40, 64, NULL, 'EPSON LX310 Printer Dot Matrix', '', 'Interpace Gaisano', '10910', '2021-06-06', 'Printer', 3, 0, 'Functional', NULL, '2023-05-12 01:09:32', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(41, 68, NULL, 'HP LaserJet P1006', '', '', '8550', '2008-01-17', 'Printer', 3, 1, 'Functional', NULL, '2023-03-07 08:14:26', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(42, 68, NULL, 'APC ES500', '', '', '6200', '2006-08-17', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 08:15:20', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(43, 68, NULL, '1TB External HDD (Offsite)', '', '', '2795', '2021-09-27', 'HDD', 3, 1, 'Functional', NULL, '2023-03-07 08:19:23', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(44, 23, NULL, 'X455LF (Class A Battery)', '', 'Microtrade', '3960', '2021-06-18', 'Laptop Battery', 3, 0, 'Functional', NULL, '2023-03-07 08:19:54', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(45, 68, NULL, '1TB Toshiba HDD', '', '', '2195', '2017-09-08', 'HDD', 3, 1, 'Functional', NULL, '2023-03-07 08:20:29', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(46, 68, NULL, 'HP 1515 DeskJet', '', '', '4500', '2014-01-20', 'Printer', 3, 1, 'Functional', NULL, '2023-03-07 08:21:36', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(47, 68, NULL, 'Epson L3110', '', '', '1500', '2018-03-09', 'Printer', 3, 1, 'Functional', NULL, '2023-03-07 08:22:29', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(48, 66, NULL, 'APC BX650', '', '', '6900', '2012-07-26', 'UPS', 3, 1, 'Functional', NULL, '2023-03-07 08:25:00', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(49, 66, NULL, 'Epson FX2175', '', '', '20500', '2015-06-05', 'Printer', 3, 1, 'Functional', NULL, '2023-03-07 08:26:04', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(50, 20, NULL, 'NB T300 CHI Charger', '', '', '750', '2021-11-19', 'Laptop Charger', 3, 0, 'Functional', NULL, '2023-03-07 08:27:59', 'March', '07', '', NULL, NULL, NULL, NULL, '', NULL),
(51, 18, NULL, 'USB to LAN converter adapter', '', '', '450', '2023-01-01', 'Adapter', 0, 0, 'Functional', NULL, '2023-03-08 01:19:35', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(52, 98, NULL, 'Lenovo 320 Battery', '', '', '2114', '2022-04-07', 'Battery', 3, 1, 'Functional', NULL, '2023-03-08 03:01:44', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(53, 98, NULL, 'Logitech Headset with Mic', '', '', '495', '2022-11-03', 'Headset', 3, 1, 'New', NULL, '2023-03-08 03:03:08', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(54, 98, NULL, 'Laptop Battery', '', '', '3500', '2015-09-01', 'Battery', 3, 1, 'Functional', NULL, '2023-03-08 03:04:12', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(55, 122, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-03-08 03:05:40', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(56, 122, NULL, 'UPS  Secured 650W', '', '', '2000', '2020-03-13', 'UPS', 3, 1, 'Functional', NULL, '2023-03-08 03:07:25', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(57, 122, NULL, '700W Power supply Unit', '', '', '750', '2022-02-15', 'PSU', 3, 1, 'Functional', NULL, '2023-03-08 03:08:24', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(58, 122, NULL, 'Epson FX-2175', '', '', '20495', '2012-11-19', 'Printer', 3, 1, 'Functional', NULL, '2023-03-08 03:09:55', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(59, 122, NULL, 'FX-2175 Printerhead', '', '', '5995', '2021-06-07', 'Printer Head', 3, 1, 'Functional', NULL, '2023-03-08 03:11:05', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(60, 122, NULL, 'Battery 12v - 7a', '', '', '760', '2019-09-16', 'Battery', 3, 1, 'Functional', NULL, '2023-03-08 03:11:54', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(61, 84, NULL, '500GB Desktop HDD', '', '', '1000', '2023-02-20', 'HDD', 3, 1, 'New', NULL, '2023-03-08 03:13:28', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(62, 84, NULL, '700W Power Supply Unit', '', '', '650', '2022-06-20', 'PSU', 3, 1, 'New', NULL, '2023-03-08 03:14:48', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(63, 84, NULL, 'APC ES500', '', '', '6350', '2007-07-20', 'UPS', 3, 1, 'Repaired', NULL, '2023-03-08 03:15:55', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(64, 84, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-03-08 03:16:42', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(65, 84, NULL, 'HP 2515 Deskjet', '', '', '2800', '2016-05-10', 'Printer', 3, 3025, 'Repaired', NULL, '2023-03-08 03:18:38', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(66, 80, NULL, 'Olivetti PR2E Passbook Printer', '', '', '35000', '2018-06-11', 'Printer', 3, 0, 'Functional', NULL, '2023-03-08 03:29:58', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(67, 81, NULL, 'UPS APC 650VA', '9B2146A18415', '', '2395', '2022-05-02', 'UPS', 3, 0, 'Functional', NULL, '0000-00-00 00:00:00', 'March', '08', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(68, 83, NULL, 'UPS APC 650VA', '', '', '2395', '2022-05-02', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 03:39:03', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(69, 85, NULL, 'UPS BX650 CI-AS', '', '', '6850', '2013-12-26', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 03:39:57', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(70, 37, NULL, 'A4tech Camera, Edifier speaker and Titan mic', '', '', '2549', '2021-10-25', 'Video Conference peripherals', 3, 1, 'Functional', NULL, '2023-03-08 03:40:45', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(71, 78, NULL, 'UPS APC BX650', '', '', '2350', '2018-06-11', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 03:40:55', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(72, 77, NULL, 'UPS APC 650', '', '', '2395', '2022-05-02', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 03:41:21', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(73, 37, NULL, 'HP Compaq 510 Battery', '', '', '3000', '2014-10-28', 'Battery', 3, 1, 'Functional', NULL, '2023-03-08 03:42:21', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(74, 78, NULL, 'EPSON FX2175 II Dot Matrix', '', '', '37760', '2022-10-26', 'Printer', 3, 0, 'New', NULL, '2023-03-08 03:43:26', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(75, 35, NULL, 'Lenovo 18\" LCD', '', '', '3295', '2020-11-17', 'Monitor', 3, 1, 'Functional', NULL, '2023-03-08 03:44:03', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(76, 77, NULL, 'EPSON FX2175 II Dot Matrix', '', '', '25995', '2021-09-27', 'Printer', 0, 0, 'Functional', NULL, '2023-03-08 03:45:04', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(77, 35, NULL, 'APC R5650', '', '', '5850', '2010-08-16', 'UPS', 3, 3315, 'Functional', NULL, '2023-03-08 03:45:22', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(78, 78, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-08 03:45:38', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(79, 35, NULL, 'Olivetti PR2E', '', '', ' 39000', '2010-08-16', 'Printer', 3, 22100, 'Functional', NULL, '2023-03-08 03:47:03', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(80, 35, NULL, 'HP Deskjet 2130', '', '', '2195', '2016-12-28', 'Printer', 3, 1, 'Functional', NULL, '2023-03-08 03:48:03', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(81, 78, NULL, 'Kingston USB Flashdrive 32GB', '', '', '790', '2019-07-27', 'Storage Data', 0, 0, 'Functional', NULL, '2023-03-08 03:48:36', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(82, 35, NULL, 'WD 500GB HDD', '', '', '2830', '2018-03-05', 'HDD', 3, 1, 'Functional', NULL, '2023-03-08 03:48:55', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(83, 36, NULL, 'Boston 700W PSU', '', '', '895', '2022-03-21', 'PSU', 3, 1, 'Functional', NULL, '2023-03-08 03:50:24', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(84, 80, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-08 03:50:47', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(85, 36, NULL, 'Desktop 500GB HDD', '', '', '850', '2022-01-10', 'HDD', 3, 1, 'Functional', NULL, '2023-03-08 03:51:37', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(86, 36, NULL, 'Monitor', '', '', '2995', '2020-07-23', 'Monitor', 3, 1, 'Functional', NULL, '2023-03-08 03:52:39', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(87, 107, NULL, 'EPSON FX2175 II Dot Matrix', '', '', '37760', '2022-10-19', 'Printer', 3, 0, 'New', NULL, '2023-03-08 03:57:15', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(88, 36, NULL, 'HDD Toshiba 500GB', '', '', '1950', '2020-05-08', 'HDD', 3, 3, 'Functional', NULL, '2023-03-08 03:57:36', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(89, 107, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 3, 0, 'Functional', NULL, '2023-03-08 03:58:19', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(90, 36, NULL, 'Epson FX-2175', '', '', '20995', '2016-01-15', 'Printer', 3, 1, 'Functional', NULL, '2023-03-08 03:58:40', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(91, 107, NULL, 'UPS APC BX650', '', '', '2350', '2018-06-11', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 03:59:13', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(92, 36, NULL, 'APC BX625', '', '', '2960', '2017-06-22', 'UPS', 3, 3315, 'Functional', NULL, '2023-03-08 03:59:35', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(93, 108, NULL, 'Olivetti PR2E Passbook Printer', '', 'Microtrade', '35000', '2018-06-11', 'Printer', 3, 0, 'Functional', NULL, '2023-03-08 04:00:22', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(94, 36, NULL, 'Epson L360', '', '', '1500', '2018-03-09', 'Printer', 3, 1, 'Functional', NULL, '2023-03-08 04:00:46', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(95, 108, NULL, 'UPS APC RS650', '', '', '5500', '2011-07-22', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 04:01:28', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(96, 33, NULL, 'A4Tech 720P', '', '', '', '2021-07-25', 'WebCam', 3, 1, 'Functional', NULL, '2023-03-08 04:02:41', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(97, 33, NULL, 'Lenovo 18\" LCD', '', '', '3295', '2021-01-13', 'Monitor', 3, 1, 'Functional', NULL, '2023-03-08 04:03:26', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(98, 108, NULL, 'One Touch External HDD', '', 'Interpace Gaisano', '2795', '2022-07-14', 'Storage Data', 3, 0, 'Functional', NULL, '2023-03-08 04:05:19', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(99, 33, NULL, 'APC BX625', '', '', '2960', '2017-06-22', 'UPS', 3, 3315, 'Functional', NULL, '2023-03-08 04:05:36', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(100, 31, NULL, 'Desktop HDD', '', '', '1000', '2022-10-11', 'HDD', 3, 1, 'New', NULL, '2023-03-08 05:13:06', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(101, 31, NULL, 'APC BX650CI-AS', '', '', '6850', '2014-11-28', 'UPS', 3, 1, 'Functional', NULL, '2023-03-08 05:14:24', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(102, 31, NULL, 'Epson FX-2175-II', '', '', '25900', '2018-10-23', 'Printer', 3, 12297, 'Functional', NULL, '2023-03-08 05:15:54', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(103, 30, NULL, 'HP Deskjet 2515', '', '', '3295', '2017-05-02', 'Printer', 3, 1, 'Functional', NULL, '2023-03-08 05:17:11', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(104, 115, NULL, 'Lenovo D19-10 Monitor ', '', '', '3700', '2021-06-10', 'Monitor', 3, 0, 'Functional', NULL, '2023-03-08 07:20:30', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(105, 115, NULL, 'UPS APC BX650', '', '', '5650', '2015-01-26', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 07:21:18', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(106, 123, NULL, 'Ideapad 320-15K pin (CLASS A) Charger', '', 'Microtrade', '1800', '2021-08-10', 'Charger', 3, 0, 'Functional', NULL, '2023-03-08 07:24:38', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(107, 120, NULL, 'EPSON DS 530 Scanner', '', 'Microtrade', '27000', '2019-08-01', 'Scanner', 3, 0, 'Functional', NULL, '2023-03-08 07:26:00', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(108, 120, NULL, 'AOC Monitor', '', '', '3300', '2013-01-21', 'Monitor', 3, 0, 'Functional', NULL, '2023-03-08 07:26:38', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(109, 110, NULL, 'UPS APC BR650ci-as', '', '', '5500', '2011-10-04', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 00:53:05', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(110, 122, NULL, 'EPSON LX310 Printer Dot Matrix', '', 'Interpace Gaisano', '8750', '2017-10-13', 'Printer', 3, 0, 'Functional', NULL, '2023-03-08 07:29:41', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(111, 119, NULL, 'HDD Toshiba 500GB', '', 'Interpace Gaisano', '1950', '2020-05-02', 'Storage Data', 3, 0, 'Functional', NULL, '2023-03-08 07:42:53', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(112, 120, NULL, 'Olivetti PR2E Passbook Printer', '', 'Microtrade', '35000', '2013-05-27', 'Printer', 3, 0, 'Functional', NULL, '2023-03-08 07:48:18', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(113, 121, NULL, 'Olivetti PR2E Passbook Printer', '', 'Microtrade', '32000', '2014-09-11', 'Printer', 3, 0, 'Functional', NULL, '2023-03-08 07:48:45', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(114, 121, NULL, 'AOC Monitor', '', '', '3600', '2013-06-25', 'Monitor', 3, 0, 'Functional', NULL, '2023-03-08 07:49:27', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(115, 121, NULL, 'UPS APC BX800', '', '', '4695', '2015-06-19', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 07:50:18', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(116, 120, NULL, 'UPS APC RS650', '', '', '5500', '2015-06-19', 'UPS', 3, 0, 'Functional', NULL, '2023-03-08 07:51:02', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(117, 110, NULL, 'EPSON L3110 Inkjet', '', 'Interpace Gaisano', '5995', '2020-09-10', 'Printer', 0, 0, 'Under Repair', NULL, '2023-03-08 00:55:23', 'March', '08', '', NULL, NULL, NULL, NULL, '', NULL),
(118, 74, NULL, 'Espon FX-2175', '', '', '21500', '2010-04-30', 'Printer', 3, 1, 'Functional', NULL, '2023-05-12 01:06:08', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(119, 74, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-03-10 07:53:40', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(120, 74, NULL, 'APC BX650', '', '', '6850', '2013-05-27', 'Printer', 3, 7, 'Functional', NULL, '2023-03-10 07:54:48', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(121, 73, NULL, 'Epson FX - 2175 Printhead', '', '', '5995', '2021-09-06', 'Printer Head', 3, 1, 'Functional', NULL, '2023-03-10 07:57:12', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(122, 73, NULL, 'Epson FX-2175', '', '', '21500', '2007-07-31', 'Printer', 3, 3, 'Functional', NULL, '2023-03-10 07:58:01', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(123, 73, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-03-10 07:59:40', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(124, 73, NULL, 'Epson LX-300', '', '', '7495', '2007-06-18', 'Printer', 3, 1, 'Functional', NULL, '2023-03-10 08:01:06', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(125, 96, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-03-10 08:07:14', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(126, 96, NULL, 'UPS  Secured 650W', '', '', '2000', '2020-03-13', 'UPS', 3, 1, 'Functional', NULL, '2023-03-10 08:08:02', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(127, 96, NULL, '700W Power supply Unit', '', '', '750', '2022-02-15', 'PSU', 3, 1, 'Functional', NULL, '2023-03-10 08:09:01', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(128, 96, NULL, 'Epson FX-2175', '', '', '20495', '2012-11-19', 'Printer', 3, 1, 'Functional', NULL, '2023-03-10 08:10:17', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(129, 96, NULL, 'Epson FX - 2175 Printhead', '', '', '5995', '2021-06-07', 'Printer Head', 3, 1, 'Functional', NULL, '2023-03-10 08:11:18', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(130, 96, NULL, 'Battery 12v - 7a', '', '', '760', '2019-09-16', 'Battery', 3, 1, 'Functional', NULL, '2023-03-10 08:11:59', 'March', '10', '', NULL, NULL, NULL, NULL, '', NULL),
(131, 100, NULL, 'A1tech Speaker', '', 'Octagon Ayala Mall', '499', '2023-03-14', 'Speaker', 3, 1, 'New', NULL, '2023-03-20 03:44:27', 'March', '20', '', NULL, NULL, NULL, NULL, '', NULL),
(132, 100, NULL, 'Titan Microphone', '', 'Octagon Ayala Mall', '1199', '2023-03-14', 'Microphone', 3, 1, 'New', NULL, '2023-03-20 03:47:09', 'March', '20', '', NULL, NULL, NULL, NULL, '', NULL),
(133, NULL, 1, 'EPSON ES-S41 Projector H842C', 'X4HL7X3816', '', '20445', '2018-12-13', 'Projector', 3, 0, 'Functional', NULL, '2023-03-22 08:24:18', 'March', '22', '', NULL, NULL, NULL, NULL, '', NULL),
(134, NULL, 3, 'UPS APC RS1000', '', '', '16500', '2007-04-17', 'UPS', 3, 0, 'Functional', NULL, '2023-03-29 06:19:08', 'March', '29', '', NULL, NULL, NULL, NULL, '', NULL),
(135, NULL, 8, 'DVR ', '', 'Microtech', '17000', '2016-04-12', 'DVR', 3, 0, 'Functional', NULL, '2023-03-29 08:26:27', 'March', '29', '', NULL, NULL, NULL, NULL, '', NULL),
(136, NULL, 8, 'DVR/CCTV PSU', '', 'Microtech', '2400', '2021-08-18', 'PSU', 3, 0, 'Functional', NULL, '2023-03-29 08:27:26', 'March', '29', '', NULL, NULL, NULL, NULL, '', NULL),
(137, NULL, 8, 'UPS APC CS650', '', 'Dataworld', '5500', '2009-03-03', 'UPS', 3, 0, 'Functional', NULL, '2023-03-29 08:28:40', 'March', '29', '', NULL, NULL, NULL, NULL, '', NULL),
(138, NULL, 8, 'Seagate Skyhawk HDD 2TB', '', 'Microtech', '3950', '2021-06-18', 'Storage Data', 3, 0, 'Functional', NULL, '2023-03-29 08:29:36', 'March', '29', '', NULL, NULL, NULL, NULL, '', NULL),
(139, 100, NULL, 'INPLAY', 'H2ZVSJ07BA220300233', 'TAKTAK VENDOR', '', '2023-04-04', 'Monitor', 3, 1, 'New', NULL, '2023-04-27 07:50:59', 'April', '27', '', NULL, NULL, NULL, NULL, '', NULL),
(140, NULL, 10, 'DVR CCTV', '', '', '21620.87', '2014-12-05', 'CCTV DVR', 0, 0, 'Functional', NULL, '2023-05-12 05:23:55', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(141, NULL, 17, 'Tenda 16 ports switch', '', '', '3095', '2021-03-26', 'Switch', 0, 0, 'Functional', NULL, '2023-05-12 05:26:21', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(142, NULL, 17, 'TP Link C6 Router', '', '', '2450', '2021-07-05', 'Router', 0, 0, 'Functional', NULL, '2023-05-12 05:28:54', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(143, 104, NULL, 'Asus H61M-C', '', '', '2750', '2015-06-19', 'Motherboard', 3, 1, 'Functional', NULL, '2023-05-11 23:43:34', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(144, 104, NULL, 'Inplay Power Supply  Unit', '', '', '899', '2015-06-15', 'PSU', 3, 1, 'Functional', NULL, '2023-05-12 05:32:38', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(145, NULL, 17, 'Peplick Balance One SDWAN', '192C-7643-7D46', 'Handlink-Microtech', '109000', '2021-03-20', 'Router', 0, 0, 'Functional', NULL, '2023-05-12 05:33:34', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(146, 104, NULL, 'Seagate 500GB HDD', '', '', '877', '2022-04-07', 'HDD', 3, 1, 'Functional', NULL, '2023-05-12 05:35:16', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(147, 104, NULL, 'Servo 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-05-11 23:43:14', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(148, 104, NULL, 'UPS BX650CI-MS', '', '', '6195', '2015-02-13', 'UPS', 3, 1, 'Functional', NULL, '2023-05-11 23:43:03', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(149, NULL, 20, 'Alarm System', '', 'Microtech', '24000', '2015-03-17', 'Alarm System', 0, 0, 'Functional', NULL, '2023-05-12 05:40:31', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(150, 104, NULL, 'EPSON FX-2175', '', '', '20500', '2015-03-05', 'Printer', 3, 1, 'Functional', NULL, '2023-05-11 23:42:46', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(151, NULL, 20, 'UPS APC CS650', '', '', '2695', '2021-11-19', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 05:41:28', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(152, 104, NULL, 'Epson FX-2175', '', '', '20895', '2017-02-07', 'Printer', 3, 1, 'Functional', NULL, '2023-05-11 23:43:25', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(153, 76, NULL, 'UPS APC 650', '', '', '5500', '2006-08-22', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 05:43:46', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(154, 104, NULL, 'A4Tech Camera, Edifier Speaker and Titan Microphone', '', '', '2549', '0021-10-25', 'Peripherals', 3, 1, 'Functional', NULL, '2023-05-12 05:50:05', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(155, 108, NULL, 'Servo 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-05-12 06:06:07', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(156, 107, NULL, 'HP Deskjet 2130', '', '', '3800', '2018-06-11', 'Printer', 3, 1, 'Functional', NULL, '2023-05-12 06:10:46', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(157, 76, NULL, 'EPSON FX2175', '', '', '20495', '2012-02-09', 'Printer', 0, 0, 'Functional', NULL, '2023-05-12 06:17:35', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(158, 109, NULL, 'UPS APC BX650', '', '', '2350', '2018-06-11', 'UPS', 3, 1, 'Functional', NULL, '2023-05-12 06:25:06', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(159, 79, NULL, 'EPSON FX2175  Dot Matrix', '', '', '21000', '2015-03-28', 'Printer', 0, 0, 'Functional', NULL, '2023-05-12 06:25:22', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(160, 79, NULL, 'EPSON FX2175 Printer Head', '', 'Interpace Gaisano', '5995', '2020-02-12', 'Printer Head', 0, 0, 'Functional', NULL, '2023-05-12 06:26:14', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(161, 79, NULL, 'UPS APC BX650CI-AS', '', '', '6850', '2012-08-14', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 06:26:59', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(162, 79, NULL, 'AOC LED Monitor', '', '', '2950', '2018-11-19', 'Monitor', 0, 0, 'Functional', NULL, '2023-05-12 06:27:49', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(163, 109, NULL, 'Asus Motherboard', '', '', '1995', '2022-03-17', 'Motherboard', 3, 1, 'Functional', NULL, '2023-05-12 06:32:29', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(164, 109, NULL, 'Servo Type AVR 500W', '', '', '1375', '2019-12-05', 'AVR', 3, 1, 'Functional', NULL, '2023-05-12 06:33:47', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(165, 109, NULL, 'Printhead Epson 2175', '', '', '5995', '2020-09-10', 'Printhead', 3, 1, 'Functional', NULL, '2023-05-12 06:35:25', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(166, 109, NULL, 'Power Supply', '', '', '600', '2020-03-10', 'PSU', 3, 1, 'Functional', NULL, '2023-05-12 06:37:07', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(167, 109, NULL, 'Gigabyte H61M_DS274', '', '', '3495', '2019-07-06', 'Motherboard', 3, 1, 'Functional', NULL, '2023-05-12 06:38:50', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(168, 109, NULL, 'AVR', '', '', '275', '2018-06-26', 'AVR', 3, 1, 'Functional', NULL, '2023-05-12 06:40:45', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(169, 86, NULL, 'Monitor', '', '', '10890', '2011-11-04', 'Monitor', 0, 0, 'Functional', NULL, '2023-05-12 06:53:12', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(170, NULL, 14, 'DVR', '', '', '31000', '2009-09-22', 'DVR', 3, 1, 'Functional', NULL, '2023-05-12 06:53:27', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(171, 86, NULL, 'A4 Tech Webcam', '', 'Interpace Gaisano', '1290', '2021-06-22', 'Webcam', 0, 0, 'Functional', NULL, '2023-05-12 06:54:08', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(172, NULL, 14, 'APC C5650', '', '', '5500', '2010-04-22', 'UPS', 3, 1, 'Functional', NULL, '2023-05-12 06:54:14', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(173, 86, NULL, 'UPS APC RS650', '', '', '10800', '2009-09-02', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 06:58:29', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(174, 86, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 0, 0, 'Functional', NULL, '2023-05-12 06:58:49', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(175, NULL, 31, 'CD-R KING', '', '', '', '0000-00-00', 'Router', 3, 1, 'Functional', NULL, '2023-05-12 06:59:05', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(176, 86, NULL, 'EPSON DS 530 Scanner', '', 'Microtrade', '27000', '2019-08-01', 'Scanner', 0, 0, 'Functional', NULL, '2023-05-12 06:59:21', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(177, NULL, 31, 'CISCO 8ports switch', '', '', '1495', '2018-06-26', 'Switch', 3, 1, 'Functional', NULL, '2023-05-12 06:59:54', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(178, NULL, 31, 'Granding GT100 Biometric', '', '', '9500', '2019-01-22', 'Biometric', 3, 1, 'Functional', NULL, '2023-05-12 07:01:34', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(179, NULL, 31, 'AVR', '', '', '275', '2018-06-26', 'AVR', 3, 1, 'Functional', NULL, '2023-05-12 07:02:10', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(180, NULL, 32, 'CISCO gigabit 16ports', '', '', '6900', '2018-05-15', 'Switch', 3, 1, 'Functional', NULL, '2023-05-12 07:04:43', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(181, NULL, 32, 'Peplink Balance one', '192C-4C7B-74C4', '', '109000', '2021-12-20', 'Router', 3, 1, 'Functional', NULL, '2023-05-12 07:07:19', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(182, NULL, 33, 'ZKTeco MB460 Biometric', '', '', '6500', '2022-08-03', 'Biometric', 3, 1, 'Functional', NULL, '2023-05-12 07:11:52', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(183, NULL, 33, 'Globe Modem with Mimo Antenna', '10822C65506220', '', '', '2022-02-11', 'Internet', 3, 1, 'Functional', NULL, '2023-05-12 07:12:38', 'May', '12', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(184, 64, NULL, 'UPS APC BX625CI-MS', '', 'Interpace Gaisano', '2695', '2016-10-05', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 07:12:41', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(185, 64, NULL, 'AOC Monitor', '', '', '3200', '2014-03-21', 'Monitor', 0, 0, 'Functional', NULL, '2023-05-12 07:13:14', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(186, NULL, 13, 'Dahua DVR', '', '', '11000', '2018-03-15', 'DVR', 3, 1, 'Functional', NULL, '2023-05-12 07:13:48', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(187, NULL, 13, '2 Outdoor Cameras', '', '', '7600', '2018-03-14', 'Camera', 3, 1, 'Functional', NULL, '2023-05-12 07:14:30', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(188, NULL, 13, 'Power Supply', 'JM80170324', '', '1800', '2018-03-22', 'PSU', 3, 1, 'Functional', NULL, '2023-05-12 07:15:16', 'May', '12', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(189, 56, NULL, 'EPSON DS 530 Scanner', '', 'Microtrade', '27000', '2019-08-01', 'Scanner', 0, 0, 'Functional', NULL, '2023-05-12 07:15:19', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(190, 56, NULL, 'UPS APC BX650', '', '', '6900', '2012-07-26', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 07:16:11', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(191, 39, NULL, 'EPSON DS 530 Scanner', 'X2HB005218', 'Microtrade', '27000', '2019-08-01', 'Scanner', 0, 0, 'Functional', NULL, '2023-05-19 00:36:56', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(192, 39, NULL, 'EPSON L360 INKE Subscription', '', 'INKE', '1500', '2017-11-16', 'Printer', 0, 0, 'Functional', NULL, '2023-05-12 07:26:39', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(193, 39, NULL, 'NVISION Monitor', '', '', '2450', '2023-01-09', 'Monitor', 0, 0, 'Functional', NULL, '2023-05-12 07:27:45', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(194, 39, NULL, 'UPS APC CS650', '', '', '2395', '2022-06-20', 'UPS', 0, 0, 'New', NULL, '2023-05-12 01:28:40', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(195, 95, NULL, 'EPSON LX310 Printer Dot Matrix', 'Q7CY104063', '', '8195', '2016-06-20', 'Printer', 0, 0, 'Functional', NULL, '2023-05-19 00:34:15', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(196, 95, NULL, 'EPSON LX310 Dot Matrix Printer Head', '', 'Interpace Gaisano', '1895', '2019-11-11', 'Printer Head', 0, 0, 'Functional', NULL, '2023-05-12 07:31:52', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(197, 95, NULL, 'UPS APC BX625', '', '', '3295', '2020-01-11', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 07:33:15', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(198, 45, NULL, 'UPS APC CS650', '', 'Interpace Gaisano', '2695', '2021-09-27', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 07:35:46', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(199, 45, NULL, 'Epson L3210 Inkjet Printer', '', 'Gaisano Interpace', '8395', '2022-01-24', 'Printer', 3, 0, 'Functional', NULL, '2023-05-12 07:36:48', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(200, 45, NULL, 'AVR 500W Servo Type ', '', 'Dataworld', '1375', '2019-12-05', 'AVR', 0, 0, 'Functional', NULL, '2023-05-12 07:37:27', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(201, 43, NULL, 'EPSON FX2175 II Dot Matrix', '', 'Gaisano Interpace', '25800', '2020-11-16', 'Printer', 0, 0, 'Functional', NULL, '2023-05-12 07:38:36', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(202, 43, NULL, 'UPS APC BX625', '', '', '3295', '2019-07-01', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 07:39:19', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(204, 43, NULL, 'HDD 500GB (Desktop)', '', '', '900', '2021-12-09', 'Storage Data', 3, 0, 'Functional', NULL, '2023-05-12 07:39:57', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(205, NULL, 18, 'Alarm System (with wireless)', '', 'Microtech', '33500', '2019-12-10', 'Alarm System', 0, 0, 'Functional', NULL, '2023-05-12 07:41:42', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(206, NULL, 34, 'CISCO Gigabit 24 ports (Cash Section)', '', '', '9800', '2017-05-15', 'Switch', 0, 0, 'Functional', NULL, '2023-05-12 08:42:50', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(207, NULL, 34, 'Allied Telesyn 8 ports (Loans Section)', '', '', '2600', '2007-11-12', 'Switch', 0, 0, 'Functional', NULL, '2023-05-12 08:44:58', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(208, NULL, 34, 'Mikrotik LHGG LTE6', '', '', '12995', '2021-09-07', 'Antenna', 3, 0, 'Functional', NULL, '2023-05-12 08:46:21', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(209, NULL, 34, 'TP LINK - Archer C6 (Manager Side)', '', '', '2450', '2021-09-20', 'Router', 3, 0, 'Functional', NULL, '2023-05-12 08:50:36', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(210, NULL, 34, 'UPS APC BX650 CI-AS', '3B4725X00094', '', '6850', '2013-12-05', 'UPS', 0, 0, 'Functional', NULL, '2023-05-12 08:51:53', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(211, NULL, 3, 'AVR NIPPOServo Type 2000W', '', 'Dataworld', '5000', '2019-10-18', '', 0, 0, 'Functional', NULL, '2023-05-12 08:53:50', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(212, NULL, 34, 'Linksys E1200', '10822C65506220', '', '2500', '2013-06-03', 'Router', 3, 0, 'Functional', NULL, '2023-05-12 08:55:10', 'May', '12', '', '', '0000-00-00', '0000-00-00', '', '', NULL),
(213, NULL, 35, 'CISCO Gigabit 24 ports', 'DNI20270BGK', '', '9800', '2016-12-12', 'Switch', 3, 0, 'Functional', NULL, '2023-05-12 09:02:04', 'May', '12', '', '', '0000-00-00', '0000-00-00', '', '', NULL),
(214, NULL, 35, 'Linksys E1000', 'CVN21L617398', '', '2450', '2011-08-19', 'Router', 3, 0, 'Spare', NULL, '2023-05-12 09:04:41', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(215, NULL, 35, 'TP Link Archer AX72 - AX5400', '227045002637', '', '5899', '2023-01-27', 'Router', 3, 0, 'New', NULL, '2023-05-12 09:06:44', 'May', '12', '', NULL, NULL, NULL, NULL, '', NULL),
(216, 80, NULL, 'ASUS H61M-C', '', '', '2695', '2014-12-01', 'Motherboard', 3, 1, 'Functional', NULL, '2023-05-15 02:40:32', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(217, 80, NULL, 'INTEL Pentium G2030 3.0GHZ CPU', '', '', '2995', '0014-10-01', 'Processor', 3, 1, 'Functional', NULL, '2023-05-15 02:41:40', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(218, 80, NULL, 'DDR3 RAM 4GB', '', '', '1895', '2014-12-01', 'RAM', 3, 1, 'Functional', NULL, '2023-05-15 02:42:32', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(219, 80, NULL, '750W INPLAY PSU', '', '', '650', '2014-12-01', 'PSU', 3, 1, 'Functional', NULL, '2023-05-14 20:43:58', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(220, 80, NULL, 'Seagate 500GB', '', '', '900', '2022-01-31', 'HDD', 3, 1, 'Functional', NULL, '2023-05-15 03:23:18', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(221, 81, NULL, 'NEO', '', '', '25995', '2009-05-15', 'Laptop', 3, 1, 'Functional', NULL, '2023-05-15 03:27:37', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(222, 81, NULL, '700W Power Supply Unit', 'G52111L0025', '', '750', '2022-05-26', 'PSU', 3, 1, 'Functional', NULL, '0000-00-00 00:00:00', 'May', '15', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(223, 78, NULL, 'APC BX650', '', '', '2350', '2018-06-11', 'UPS', 3, 1, 'Functional', NULL, '2023-05-15 06:46:54', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(224, 77, NULL, 'APC BX650', '', '', '2350', '2018-06-11', 'UPS', 3, 1, 'Functional', NULL, '2023-05-15 06:48:35', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(225, NULL, 32, 'CISCO Gigabit 16ports', '', '', '6900', '2017-05-15', 'Switch', 3, 1, 'Functional', NULL, '2023-05-15 06:50:01', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(226, NULL, 32, 'Peplink Balance one', '', '', '109000', '2021-12-20', 'Router', 3, 1, 'Functional', NULL, '2023-05-15 06:50:52', 'May', '15', '', NULL, NULL, NULL, NULL, '', NULL),
(227, NULL, 13, 'Dahua DVR', 'n/a', '', '11000', '2018-03-15', 'DVR', 3, 1, 'Functional', NULL, '2023-05-15 06:51:51', 'May', '15', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(228, 121, NULL, 'PCI Card Expansion (2 Serial Port and 1 parallel Port)', '', 'Microtech', '1200', '2023-05-15', 'PCI Card', 3, 0, 'New', NULL, '2023-05-16 03:54:45', 'May', '16', '', NULL, NULL, NULL, NULL, '', NULL),
(229, 43, NULL, 'NVISION 20', 'N200L81CA22002703', 'HUBE Computer Store', '2100', '2023-05-16', 'Monitor', 3, 0, 'New', NULL, '2023-05-16 23:49:52', 'May', '17', '', NULL, NULL, NULL, NULL, '', NULL),
(230, NULL, 36, 'NAS DS 418 Synology 4 with Iron wolf 6TB NAS Drive (2 pcs)', '2020PHN683500', 'Microtrade', '45300', '2020-08-11', 'Storage Data Server', 5, 0, 'Functional', NULL, '2023-05-18 05:18:07', 'May', '18', '', NULL, NULL, NULL, NULL, '', NULL),
(231, 2, NULL, 'UPS APC BVX 650', '9B2116A02759', 'Gaisano Interpace', '2695', '2021-11-19', 'UPS', 3, 0, 'Functional', NULL, '2023-05-18 05:25:33', 'May', '18', '', NULL, NULL, NULL, NULL, '', NULL),
(232, NULL, 35, 'Globe ZTL Modem', '', '', '1000', '2021-08-23', 'Modem', 3, 0, 'Functional', NULL, '2023-05-18 05:34:12', 'May', '18', '', NULL, NULL, NULL, NULL, '', NULL),
(233, 18, NULL, 'WD Green SATA 2.5\" SSD 500GB', '2042B9800735', '', '', '2022-10-05', 'SSD', 3, 1, 'Functional', NULL, '2023-05-19 06:30:24', 'May', '19', '', NULL, NULL, NULL, NULL, '', NULL),
(234, 6, NULL, 'AOC LCD Monitor', 'W18A8JA004481', '', '11500', '2011-11-24', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 06:43:19', 'May', '23', '', NULL, NULL, NULL, NULL, '', NULL),
(235, 13, NULL, 'PC AVR SECURE', '', '', '450', '0000-00-00', 'AVR', 3, 0, 'Functional', NULL, '2023-05-23 06:47:43', 'May', '23', '', NULL, NULL, NULL, NULL, '', NULL),
(236, 16, NULL, 'CVS Monitor', '25ED00802FB', 'HUBE Computer Store', '1800', '2020-03-23', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 01:29:31', 'May', '23', '', NULL, NULL, NULL, NULL, '', NULL),
(237, 14, NULL, 'NVISION N190HD V3 Monitor', 'N190J07BA210214313', 'HUBE Computer Store', '2100', '2022-05-20', 'Monitor', 3, 0, 'Functional', NULL, '2023-05-23 07:36:39', 'May', '23', '', NULL, NULL, NULL, NULL, '', NULL),
(238, 43, NULL, 'AOC', 'W18A1JA005477', '', '', '2016-10-04', 'Monitor', 3, 1, 'Defect', NULL, '0000-00-00 00:00:00', 'May', '25', '', 'The monitor already has dead pixels on the screen.', '2023-05-18', '2023-05-18', 'MIS Dept.', '', NULL),
(239, 24, NULL, 'LOGITECH CAMERA C615', '', 'Gaisano Interpace  (KETKAI)', '2495', '2022-07-25', 'Camera', 3, 0, 'Functional', NULL, '2023-05-26 07:08:00', 'May', '26', '', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 119, NULL, 'EPSON FX2175 II Dot Matrix', 'X4BK00898', 'Gaisano Interpace CDO', '25800', '2020-03-23', 'Printer', 3, 1, 'Under Repair', NULL, '2023-05-31 03:09:10', 'May', '31', '', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 16, NULL, 'NVISION N200HD V3 20inch Monitor', 'N200L81CA221001830', 'HUBE Computer Store CDO', '2100', '2023-06-05', 'Monitor', 3, 3, 'New', NULL, '2023-06-06 06:48:06', 'June', '06', '', NULL, NULL, NULL, NULL, NULL, NULL),
(242, 74, NULL, 'Seagate Barracuda 500GB HDD', 'W8EXO92K', 'HUBE Computer Store CDO', '742.50', '2023-06-05', 'Storage Data', 3, 3, 'New', NULL, '2023-06-08 02:24:38', 'June', '08', '', NULL, NULL, NULL, NULL, NULL, NULL),
(243, 85, NULL, 'Epson DS-530ii', 'X8Q7005273', 'Gai Interpace', '26995', '2023-07-20', 'Scanner', 3, 1, 'New', NULL, '0000-00-00 00:00:00', 'July', '27', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(244, 80, NULL, 'Epson V39', 'VCHY038986', '', '3195', '2017-10-10', 'Scanner', 3, 1, 'Functional', NULL, '2023-07-27 07:36:40', 'July', '27', '', NULL, NULL, NULL, NULL, NULL, NULL),
(245, 85, NULL, 'Philips Monitor', 'ZYA180300065', '', 'PC bundle  (15250)', '2013-12-19', 'Monitor', 3, 0, 'Functional', NULL, '2023-07-27 07:39:36', 'July', '27', '', NULL, NULL, NULL, NULL, NULL, NULL),
(246, 85, NULL, 'Toshiba HDD ', 'X3QSJT7ES', '', 'Bundle PC (15250)', '2013-12-19', 'Desktop PC', 3, 1, 'Functional', NULL, '2023-07-27 07:50:29', 'July', '27', '', NULL, NULL, NULL, NULL, NULL, NULL),
(247, 75, NULL, 'ACER MONITOR', '044020858', '', '', '2018-06-11', 'Monitor', 3, 1, 'Functional', NULL, '2023-07-31 05:11:09', 'July', '31', '', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 83, NULL, 'TOSHIBA HDD 1TB', 'X705N5PF5', '', 'PC SET', '2013-12-13', 'HDD', 3, 1, 'Functional', NULL, '0000-00-00 00:00:00', 'July', '31', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(249, 80, NULL, 'Epson V39 Scanner', 'VCHY038986', '', '3195', '2017-10-10', 'Document Scanner', 3, 1, 'Functional', NULL, '2023-07-31 05:29:46', 'July', '31', '', NULL, NULL, NULL, NULL, NULL, NULL),
(250, 46, NULL, 'RISE PSU P4-750', 'JM20170324', '', '', '2018-11-06', 'PSU', 3, 1, 'Functional', NULL, '2023-07-31 05:35:27', 'July', '31', '', NULL, NULL, NULL, NULL, NULL, NULL),
(251, 46, NULL, 'EPSON FX-2175ii', 'X4BK008102', '', '37760', '2022-10-26', 'PRINTER', 3, 1, 'Functional', NULL, '2023-07-31 05:36:46', 'July', '31', '', NULL, NULL, NULL, NULL, NULL, NULL),
(252, 81, NULL, 'HITACHI 1TB HDD', 'MH1U7AYW', '', '', '2020-05-20', 'HDD', 3, 1, 'Functional', NULL, '2023-07-31 05:40:49', 'July', '31', '', NULL, NULL, NULL, NULL, NULL, NULL),
(253, NULL, 35, 'StarLink UTR-211', 'KIT301515033', 'StarLink', '21219', '2023-08-04', 'Router', 3, 1, 'New', NULL, '2023-08-04 05:57:45', 'August', '04', '', NULL, NULL, NULL, NULL, NULL, NULL),
(254, 23, NULL, 'W-D Green SATA 512GB', '14214C9BH', 'PC PLUG MALL (Shopee)', '1291', '2023-07-14', 'SSD', 3, 1, 'New', NULL, '2023-08-04 08:31:37', 'August', '04', '', NULL, NULL, NULL, NULL, NULL, NULL),
(255, 23, NULL, 'Crucial DDR3L SODIMM RAM 4GB', '2042B9800735', 'PC PLUG MALL', '525', '2023-07-14', 'RAM', 3, 1, 'New', NULL, '2023-08-04 08:32:50', 'August', '04', '', NULL, NULL, NULL, NULL, NULL, NULL),
(256, 43, NULL, 'ECS H81H3 - M4 Motherboard', 'EV8141G63000867', 'Gaisano Interpace CDO', '1995', '2023-08-18', 'Motherboard', 3, 0, 'New', NULL, '2023-08-22 05:48:27', 'August', '22', '', NULL, NULL, NULL, NULL, NULL, NULL),
(257, 47, NULL, 'BOSSTON PSU 700W', '20231700', 'GERRADO COMPUTER TRADING & SERVICES', '680', '2023-08-31', 'PSU', 1, 0, 'New', NULL, '0000-00-00 00:00:00', 'August', '31', '', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00'),
(258, 9, NULL, 'SONY PX470 Voice Recorder', 'S0-1 1413095-9 (IS 616/IEC60065[141', 'msshopph (Shopee)', '3054', '2023-09-01', 'Recorder', 3, 0, 'New', NULL, '2023-09-06 01:33:52', 'September', '06', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equsers`
--

CREATE TABLE `equsers` (
  `equid` int(11) NOT NULL,
  `userseqname` varchar(255) NOT NULL,
  `branchu` int(11) DEFAULT NULL,
  `subofficeu` varchar(120) NOT NULL,
  `deptsectu` varchar(120) NOT NULL,
  `userlevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `addusertimestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equsers`
--

INSERT INTO `equsers` (`equid`, `userseqname`, `branchu`, `subofficeu`, `deptsectu`, `userlevel`, `timestamp`, `addusertimestamp`) VALUES
(1, 'MANCOM', 1, '  ', 'OFFICE OF THE PRESIDENT  ', 2, '2023-03-22 08:06:45', '2023-03-22 08:06:45'),
(2, 'MIS', 1, '  ', 'MIS  ', 2, '2023-03-22 08:07:17', '2023-03-22 08:07:17'),
(3, 'SERVER-MIS', 2, '  ', 'MIS  ', 2, '2023-03-22 08:09:06', '2023-03-22 08:09:06'),
(4, 'SERVER-MIS', 3, '  ', 'MIS  ', 2, '2023-03-22 08:09:17', '2023-03-22 08:09:17'),
(5, 'SERVER-MIS ', 4, '  ', 'MIS  ', 2, '2023-03-29 07:46:01', '2023-03-29 07:46:01'),
(6, 'SERVER-MIS', 5, '  ', 'MIS  ', 2, '2023-03-29 07:46:38', '2023-03-29 07:46:38'),
(7, 'SERVER-MIS', 6, '  ', '', 2, '2023-03-29 07:46:48', '2023-03-29 07:46:48'),
(8, 'CCTV', 2, '  ', 'MIS  ', 2, '2023-03-29 07:48:28', '2023-03-29 07:48:28'),
(9, 'CCTV', 3, '  ', '', 2, '2023-03-29 07:48:42', '2023-03-29 07:48:42'),
(10, 'CCTV', 4, '  ', 'MIS  ', 2, '2023-03-29 07:48:55', '2023-03-29 07:48:55'),
(11, 'CCTV', 5, '  ', 'MIS  ', 2, '2023-03-29 07:49:26', '2023-03-29 07:49:26'),
(12, 'CCTV', 6, '  ', 'MIS  ', 2, '2023-03-29 07:49:35', '2023-03-29 07:49:35'),
(13, 'CCTV', 7, '  ', 'MIS  ', 2, '2023-03-29 07:49:44', '2023-03-29 07:49:44'),
(14, 'CCTV', 8, '  ', 'MIS  ', 2, '2023-03-29 07:50:03', '2023-03-29 07:50:03'),
(15, 'CCTV(CDO-CAPISTRANO)', 5, 'CDO OBO  ', 'MIS  ', 2, '2023-03-29 07:50:48', '2023-03-29 07:50:48'),
(16, 'CCTV(CDO-ILIGAN)', 5, 'Iligan OBO  ', 'MIS  ', 2, '2023-03-29 07:51:08', '2023-03-29 07:51:08'),
(17, 'NETWORK(Switch & Routers)', 4, '  ', 'MIS  ', 6, '2023-05-12 05:20:02', '2023-05-12 05:20:02'),
(18, 'ALARM SYSTEM ', 2, '  ', 'MIS  ', 6, '2023-05-12 05:35:29', '2023-05-12 05:35:29'),
(19, 'ALARM SYSTEM', 3, '  ', '', 6, '2023-05-12 05:36:07', '2023-05-12 05:36:07'),
(20, 'ALARM SYSTEM', 4, '  ', 'MIS  ', 6, '2023-05-12 05:36:29', '2023-05-12 05:36:29'),
(21, 'ALARM SYSTEM', 5, '  ', 'MIS  ', 6, '2023-05-12 05:36:37', '2023-05-12 05:36:37'),
(22, 'ALARM SYSTEM', 6, '  ', 'MIS  ', 6, '2023-05-12 05:36:45', '2023-05-12 05:36:45'),
(24, 'ALARM SYSTEM', 7, '  ', 'MIS  ', 6, '2023-05-12 05:37:16', '2023-05-12 05:37:16'),
(25, 'ALARM SYSTEM', 8, '  ', 'MIS  ', 6, '2023-05-12 05:37:24', '2023-05-12 05:37:24'),
(26, 'ALARM SYSTEM', 9, '  ', 'MIS  ', 6, '2023-05-12 05:37:38', '2023-05-12 05:37:38'),
(27, 'ALARM SYSTEM', 10, '  ', 'MIS  ', 6, '2023-05-12 05:37:46', '2023-05-12 05:37:46'),
(28, 'ALARM SYSTEM(CDO-CAPISTRANO)', 5, 'CDO OBO  ', 'MIS  ', 6, '2023-05-12 05:38:14', '2023-05-12 05:38:14'),
(29, 'ALARM SYSTEM(CDO-ILIGAN)', 5, 'Iligan OBO  ', 'MIS  ', 6, '2023-05-12 05:38:34', '2023-05-12 05:38:34'),
(30, 'CCTV (DVR & APC CS650)', 8, '-- Select Sub Office --', '-- Select Department / Section --', 6, '2023-05-12 06:45:43', '2023-05-12 06:45:43'),
(31, 'NETWORK(SWITCH & ROUTER)', 8, '-- Select Sub Office --', '-- Select Department / Section --', 6, '2023-05-12 06:56:18', '2023-05-12 06:56:18'),
(32, 'NETWORK (SWITCH & ROUTER)', 7, '-- Select Sub Office --', '-- Select Department / Section --', 6, '2023-05-12 07:03:45', '2023-05-12 07:03:45'),
(33, 'BIOMETRIC', 7, '-- Select Sub Office --', '-- Select Department / Section --', 6, '2023-05-12 07:10:56', '2023-05-12 07:10:56'),
(34, 'NETWORK (Switches & Routers)', 2, '  ', 'MIS  ', 6, '2023-05-12 08:41:46', '2023-05-12 08:41:46'),
(35, 'NETWORK (Switches & Routers) ', 1, '  ', 'MIS  ', 6, '2023-05-12 09:01:11', '2023-05-12 09:01:11'),
(36, 'DIGICUR - MIS', 1, '  ', 'MIS  ', 6, '2023-05-18 05:14:46', '2023-05-18 05:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `eremarks`
--

CREATE TABLE `eremarks` (
  `rmkid` int(11) NOT NULL,
  `equip_id` int(11) DEFAULT NULL,
  `eqticket` varchar(20) DEFAULT NULL,
  `rmkdate` varchar(15) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `handleby` varchar(25) DEFAULT NULL,
  `remarksstamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eremarks`
--

INSERT INTO `eremarks` (`rmkid`, `equip_id`, `eqticket`, `rmkdate`, `remarks`, `handleby`, `remarksstamp`) VALUES
(1, 28, '', '03/07/2023', 'the item price is a set price of a Computer Set. ', 'Charles', '2023-03-07 07:33:15'),
(2, 14, '', '03/07/2023', 'the UPS was repaired (changed battery and button) at Dataworld on 09/01/2022', 'Charles', '2023-03-07 07:45:34'),
(3, 117, '', '03/07/2023', 'the unit is in the Colombia for repair', 'Charles(taweng)', '2023-03-08 08:03:16'),
(4, 122, '', '', 'Repaired 10-22-16', '', '2023-03-10 07:58:28'),
(5, 148, '', '11/24/2022', 'Repaired on 11/24/2022', '', '2023-05-12 05:46:16'),
(6, 148, '', '11/24/2022', 'Repaired on 11/24/2022', 'Karl', '2023-05-12 05:46:33'),
(7, 214, '', '05/17/2023', 'Installed in Accounting Department as AP (Access Point). This is for the LAN Connection for users.', 'Charles', '2023-05-17 06:01:27'),
(8, 210, '', '05/18/2023', 'Last update: Repaired by Dataworld on 04/23/2021', 'Charles', '2023-05-18 05:32:56'),
(9, 234, '', '05/23/2023', 'former user (Audit Staff/Auditor) based on previous sticker ', 'Charles', '2023-05-23 06:44:45'),
(13, 236, '', '5/24/2023', 'Temporary monitor for CCTV', 'Louelven', '2023-05-25 02:08:16'),
(14, 240, '', '05/31/2023', 'On 05/29/2023, It was delivered to Golden XP Services (EPSON Services) for repair as recommended by Columbia Computer Store ', 'Charles', '2023-05-31 03:14:20'),
(15, 240, '', '05/31/2023', 'On 04/21/2021, the unit was repaired by Dataworld CDO/Gaisano Interpace CDO ', 'Charles(KARL)', '2023-05-31 03:15:38'),
(16, 240, '', '05/31/2023', 'During the warranty period, the unit was fixed three times.', 'Charles(KARL)', '2023-05-31 03:17:17'),
(17, 197, '', '1/6/2023', 'power source output in cash section low enough voltage causing UPS to keep beeping. UPS needs to be recharged. ', 'Louelven', '2023-06-01 08:08:31'),
(18, 197, '', '', '', '', '2023-06-01 01:43:55'),
(19, 197, '', '6/2/2023', 'UPS doesnt provide enough power to the cashiers PC, which needs to recharge for 1 day.', 'Louelven', '2023-06-01 01:47:40'),
(20, 236, '', '06/06/2023', 'Remark as DEFECTIVE. The said monitor will be used as CCTV monitor. ', 'Charles', '2023-06-06 06:52:12'),
(21, 242, '', '06/08/2023', 'Installed new HDD due to defective HDD and Corrupted OS. Windows 10 64bit', 'Charles', '2023-06-08 02:25:40'),
(22, 248, '', '07/25/2023', 'COMES WITH PC BUNDLE. 15,250', 'Louelven', '2023-07-31 05:25:54'),
(23, 248, '', '07/25/2023', 'COMES WITH PC BUNDLE. 14,500', 'Louelven', '2023-07-31 05:26:48'),
(24, 247, '', '07/25/2023', 'COMES WITH PC BUNDLE. 14,500', 'Louelven', '2023-07-31 05:27:56'),
(25, 252, '', '07/26/2023', 'COMES WITH PC BUNDLE. 15,830', 'Louelven', '2023-07-31 05:41:56'),
(26, 253, '', '08/04/2023', 'received on 08/04/2023.  with P 2,700.00 / month', 'MIS(PETO/CHARLES/TAWENG)', '2023-08-04 06:00:10'),
(27, 256, '', '8/23/2023', 'Set up and configured CBS. ', 'Louelven', '2023-08-23 03:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `image_uploads`
--

CREATE TABLE `image_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itorder`
--

CREATE TABLE `itorder` (
  `itorderid` int(11) NOT NULL,
  `workstation` int(11) DEFAULT NULL,
  `eqname` varchar(100) NOT NULL,
  `qty` int(15) NOT NULL,
  `price` varchar(30) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `dateorder` date NOT NULL,
  `itorderbr` int(11) DEFAULT NULL,
  `itstat` varchar(50) NOT NULL,
  `orderby` varchar(120) NOT NULL,
  `updatestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `orderstamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itorder`
--

INSERT INTO `itorder` (`itorderid`, `workstation`, `eqname`, `qty`, `price`, `vendor`, `dateorder`, `itorderbr`, `itstat`, `orderby`, `updatestamp`, `orderstamp`) VALUES
(7, 27, 'EPSON FX2175 Printer Unit', 1, '32500', 5, '2022-05-13', 3, 'Order Failed/Change Vendor', 'Karl Abao', '2023-05-24 01:27:20', '2022-07-05 16:25:25'),
(8, 29, 'Epson L3110 Printerhead', 1, '3900', 8, '2023-05-23', 3, 'Processing Order', 'Louelven Querol', '2023-05-24 07:14:12', '2023-05-24 15:14:12'),
(9, 29, 'Epson L3110 Ink System', 1, '480', 8, '2023-05-23', 3, 'Processing Order', 'Louelven Querol', '2023-05-24 07:14:49', '2023-05-24 15:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `itorder_updates`
--

CREATE TABLE `itorder_updates` (
  `updatesid` int(11) NOT NULL,
  `itorderitem` int(11) DEFAULT NULL,
  `remarks` varchar(300) NOT NULL,
  `itustat` varchar(30) NOT NULL,
  `dateremarks` date NOT NULL,
  `updateby` varchar(120) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itorder_updates`
--

INSERT INTO `itorder_updates` (`updatesid`, `itorderitem`, `remarks`, `itustat`, `dateremarks`, `updateby`, `stamp`) VALUES
(1, 8, 'Already ordered the printerhead to their supplier', 'Processing Order', '2023-05-16', 'Louelven Querol', '2023-06-14 01:29:38'),
(2, 9, 'Already ordered the ink system to their supplier', 'Processing Order', '2023-05-16', 'Louelven Querol', '2023-06-14 01:30:14'),
(3, 8, 'P.O already sent to their supplier', 'Processing Order', '2023-07-20', 'Louelven Querol', '2023-07-20 01:54:49'),
(4, 9, 'P.O already sent to their supplier', 'Processing Order', '2023-07-20', 'Louelven Querol', '2023-07-20 01:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `itprofile`
--

CREATE TABLE `itprofile` (
  `itprofid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `netaccess` text NOT NULL,
  `netlevelaccess` varchar(80) NOT NULL,
  `digicuraccess` text NOT NULL,
  `digiusername` varchar(100) NOT NULL,
  `digipassword` varchar(150) NOT NULL,
  `cbsaccess` text NOT NULL,
  `cbstc` varchar(15) NOT NULL,
  `nxtbankaccess` text NOT NULL,
  `nxtbankuser` varchar(120) NOT NULL,
  `nxtbankpw` varchar(120) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itprofile`
--

INSERT INTO `itprofile` (`itprofid`, `uid`, `netaccess`, `netlevelaccess`, `digicuraccess`, `digiusername`, `digipassword`, `cbsaccess`, `cbstc`, `nxtbankaccess`, `nxtbankuser`, `nxtbankpw`, `timestamp`) VALUES
(1, 2, 'YES', 'III', 'YES', 'Charles', '', 'YES', '004', 'YES', 'Charles', '', '2023-05-24 03:40:10'),
(2, 125, 'YES', '', 'NO ACCESS', '', '', 'YES, but use same teller code with', '004', 'NO ACCESS', '', '', '2023-05-25 01:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `itreserved_in`
--

CREATE TABLE `itreserved_in` (
  `itrin_id` int(12) NOT NULL,
  `itreqname` varchar(70) NOT NULL,
  `itrsn` varchar(40) NOT NULL,
  `itaction1` varchar(20) NOT NULL,
  `itrven` varchar(50) NOT NULL,
  `itrcost` varchar(50) NOT NULL,
  `itrdate` varchar(20) NOT NULL,
  `itrtype` varchar(25) NOT NULL,
  `month` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `itrtimelog` timestamp NOT NULL DEFAULT current_timestamp(),
  `itrcreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itreserved_in`
--

INSERT INTO `itreserved_in` (`itrin_id`, `itreqname`, `itrsn`, `itaction1`, `itrven`, `itrcost`, `itrdate`, `itrtype`, `month`, `day`, `year`, `itrtimelog`, `itrcreated`) VALUES
(1, 'Seagate 500GB HDD', '', 'IN', 'HUBE Computer Store  ', '899', '2022-04-07', 'Storage Memory  ', 'April', '13', '2022', '2022-06-13 06:06:02', '2022-06-13 06:06:02'),
(2, 'Seagate 500GB HDD', '', 'IN', 'HUBE Computer Store  ', '899', '2022-04-07', 'Storage Memory  ', 'April', '13', '2022', '2022-06-13 06:07:15', '2022-06-13 06:07:15'),
(3, 'Inplay 750 watt PSU', '', 'IN', 'HUBE Computer Store  ', '503', '2022-04-07', 'Power Supply  ', 'April', '13', '2022', '2022-06-13 06:08:41', '2022-06-13 06:08:41'),
(4, 'Keyboard and Mouse', '', 'IN', 'HUBE Computer Store  ', '750', '2022-04-07', 'PC Case  ', 'April', '13', '2022', '2022-06-13 06:09:27', '2022-06-13 06:09:27'),
(5, 'WD 500GB HDD', 'WMAYUP630664', 'IN', 'HUBE Computer Store  ', '1000', '2022-06-20', 'Storage Memory  ', 'June', '21', '2022', '2022-06-21 07:15:34', '2022-06-21 07:15:34'),
(6, 'WD 500GB HDD', 'WCC2EKTYEFY1', 'IN', 'HUBE Computer Store  ', '1000', '2022-06-20', 'Storage Memory  ', 'June', '21', '2022', '2022-06-21 07:16:25', '2022-06-21 07:16:25'),
(7, 'INPLAY 750W PSU', '', 'IN', 'HUBE Computer Store  ', '650', '2022-06-20', 'UPS  ', 'June', '21', '2022', '2022-06-21 07:17:21', '2022-06-21 07:17:21'),
(8, '', '', 'IN', '-- Select Vendor --', '', '', '-- Select Asset Type --', 'June', '23', '2022', '2022-06-23 03:35:06', '2022-06-23 03:35:06'),
(9, 'WD 500GB HDD', 'WCAYUFY14720', 'IN', 'HUBE Computer Store  ', '1000', '2022-08-03', 'Storage Memory  ', 'August', '03', '2022', '2022-08-03 07:00:17', '2022-08-03 07:00:17'),
(10, 'INPLAY GPSeries PSU', '', 'IN', 'HUBE Computer Store  ', '650', '2022-08-03', 'Power Supply  ', 'August', '03', '2022', '2022-08-03 07:00:51', '2022-08-03 07:00:51'),
(11, 'INPLAY GPSeries PSU', '', 'IN', 'HUBE Computer Store  ', '650', '2022-08-03', 'Power Supply  ', 'August', '03', '2022', '2022-08-03 07:01:09', '2022-08-03 07:01:09'),
(12, '', '', 'IN', '-- Select Vendor --', '', '', '-- Select Asset Type --', 'September', '01', '2022', '2022-09-01 06:50:22', '2022-09-01 06:50:22'),
(13, 'WD 500GB HDD', 'WCAV9AV99803', 'IN', 'Mastertech  ', '1000', '2022-09-19', 'Storage Memory  ', 'September', '19', '2022', '2022-09-19 02:01:10', '2022-09-19 02:01:10'),
(14, 'WD 500GB HDD', 'WCAV9AK93838', 'IN', 'Dataworld   ', '1000', '2022-09-19', 'Storage Memory  ', 'September', '19', '2022', '2022-09-19 02:01:45', '2022-09-19 02:01:45'),
(15, 'Inplay 750 watt PSU', '', 'IN', 'HUBE Computer Store  ', '650', '2022-10-26', 'Power Supply  ', 'October', '27', '2022', '2022-10-27 01:43:05', '2022-10-27 01:43:05'),
(16, 'Inplay 750 watt PSU', '', 'IN', 'HUBE Computer Store  ', '650', '2022-10-26', 'Power Supply  ', 'October', '27', '2022', '2022-10-27 01:43:28', '2022-10-27 01:43:28'),
(17, 'Keyboard and Mouse', '', 'IN', 'HUBE Computer Store  ', '550', '2022-10-27', 'PC Case  ', 'October', '27', '2022', '2022-10-27 01:43:57', '2022-10-27 01:43:57'),
(18, ' Seagate Barracuda 500GB HDD', 'W8EXO92K', 'IN', 'HUBE Computer Store [CDO]  ', '742.50', '2023-06-05', 'Storage Memory  ', 'June', '06', '2023', '2023-06-06 00:49:40', '2023-06-06 06:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `itreserved_out`
--

CREATE TABLE `itreserved_out` (
  `itrout_id` int(12) NOT NULL,
  `itrin_id` int(12) DEFAULT NULL,
  `outeqticket` varchar(30) DEFAULT NULL,
  `outeqdate` varchar(25) DEFAULT NULL,
  `outeqaction` varchar(50) DEFAULT NULL,
  `outequser` int(11) DEFAULT NULL,
  `outeqhandle` varchar(50) DEFAULT NULL,
  `outeqremarks` varchar(300) DEFAULT NULL,
  `outmonth` varchar(25) DEFAULT NULL,
  `outday` varchar(25) DEFAULT NULL,
  `outyear` varchar(25) DEFAULT NULL,
  `outeqtimelog` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itreserved_out`
--

INSERT INTO `itreserved_out` (`itrout_id`, `itrin_id`, `outeqticket`, `outeqdate`, `outeqaction`, `outequser`, `outeqhandle`, `outeqremarks`, `outmonth`, `outday`, `outyear`, `outeqtimelog`) VALUES
(1, 1, '', '06/09/2022', 'OUT', NULL, 'KARL', 'installed', 'June', '13', '2022', '2022-06-23 08:31:43'),
(2, 2, '', '06/09/2022', 'OUT', NULL, 'KARL', 'For installation', 'June', '13', '2022', '2022-06-23 08:31:47'),
(5, 7, '', '7/21/2022', 'OUT', NULL, 'KARL', 'Installed on GC BLU Office Assoc', 'July', '22', '2022', '2022-07-22 01:10:41'),
(6, 5, '', '06/28/2022', 'OUT', NULL, 'Charles', 'replaced the corrupt HDD of Compliance Supervisor PC', 'July', '22', '2022', '2022-07-22 03:23:20'),
(7, 7, '', '6/21/2022', 'OUT', NULL, 'KARL', 'Installed on BLU Gingoog Office Associate', 'July', '27', '2022', '2022-07-27 01:27:42'),
(8, 6, '', '9/1/2022', 'OUT', NULL, 'KARL', 'Installed on main office loansbook pc', 'September', '01', '2022', '2022-09-01 06:51:11'),
(9, 9, '', '09/07/2022', 'OUT', NULL, 'KARL', 'Installed on HR Supervisor PC', 'September', '19', '2022', '2022-09-19 02:07:07'),
(10, 11, '', '10/13/2022', 'OUT', NULL, 'KARL', 'INSTALLED ON MAIN OFFICE PRINTING AND SCANNING', 'October', '27', '2022', '2022-10-27 01:44:49'),
(11, 10, '', '10/20/2022', 'OUT', NULL, 'KARL', 'INSTALLED ON JASAAN BRANCH SAVINGS TELLER', 'October', '27', '2022', '2022-10-27 01:45:37'),
(12, 18, '', '06/08/2023', 'OUT', 88, 'Charles', 'Installed new HDD due to defective HDD and Corrupt OS. Installed Windows 10 64 bit', 'June', '08', '2023', '2023-06-08 02:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `leavecredits`
--

CREATE TABLE `leavecredits` (
  `leavecid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `availableleave` varchar(100) NOT NULL,
  `almonth` int(50) NOT NULL,
  `alyear` int(50) NOT NULL,
  `sickleave` varchar(100) NOT NULL,
  `slmonth` int(50) NOT NULL,
  `slyear` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `leaveid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `datefiling` varchar(15) NOT NULL,
  `namelf` varchar(150) NOT NULL,
  `leaveapplication` varchar(90) NOT NULL,
  `others` varchar(50) NOT NULL,
  `fmonth` text NOT NULL,
  `fday` int(20) NOT NULL,
  `fyear` int(20) NOT NULL,
  `tmonth` text NOT NULL,
  `tday` int(20) NOT NULL,
  `tyear` int(20) NOT NULL,
  `nodays` varchar(50) NOT NULL,
  `reasoncause` varchar(200) NOT NULL,
  `responsibility` varchar(100) NOT NULL,
  `lstatus` varchar(50) NOT NULL,
  `ovstatstamp` timestamp NULL DEFAULT current_timestamp(),
  `sectprog1` varchar(50) NOT NULL,
  `officerstatus1` varchar(50) NOT NULL,
  `officerstatstamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `sectprog2` varchar(50) NOT NULL,
  `officerstatus2` varchar(50) NOT NULL,
  `officerstatstamp2` timestamp NOT NULL DEFAULT current_timestamp(),
  `notedby` varchar(50) NOT NULL,
  `notebystat` varchar(50) NOT NULL,
  `notebystamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `approvalid` int(11) DEFAULT NULL,
  `leavecreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `licid` int(12) NOT NULL,
  `licname` varchar(200) DEFAULT NULL,
  `licver` varchar(60) NOT NULL,
  `licvername` varchar(200) NOT NULL,
  `liccost` varchar(20) NOT NULL,
  `lictot` varchar(20) NOT NULL,
  `licqty` varchar(30) NOT NULL,
  `licdate` date NOT NULL,
  `licnum` varchar(120) NOT NULL,
  `licauthnum` varchar(255) NOT NULL,
  `licpo` varchar(255) NOT NULL,
  `lictype` varchar(40) NOT NULL,
  `licven` varchar(25) NOT NULL,
  `licyear` varchar(20) NOT NULL,
  `licmonth` varchar(20) NOT NULL,
  `modifydate` timestamp NOT NULL DEFAULT current_timestamp(),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`licid`, `licname`, `licver`, `licvername`, `liccost`, `lictot`, `licqty`, `licdate`, `licnum`, `licauthnum`, `licpo`, `lictype`, `licven`, `licyear`, `licmonth`, `modifydate`, `timestamp`) VALUES
(1, 'MS OFFICE HOME & BUSINESS 2016 32bit/65bit License', '2016', 'MS OFFICE 2016', '10200', '51000', '5', '2019-08-19', 'N/A', 'N/A', '56176', 'Microsoft Office', 'Microtrade  ', '2023', 'March', '2023-03-23 05:42:19', '2023-03-23 05:42:19'),
(2, 'MS Office 2010 SINGLE OPEN 1 License No Level', '2010', 'MS OFFICE 2010', '', '', '25', '2011-05-24', '48539745', '68516159ZZS10305', '004801', 'Microsoft Office', 'Dataworld   ', '2023', 'March', '2023-03-23 05:43:10', '2023-03-23 05:43:10'),
(3, 'MS Windows Server CAL 2008 Single OPEN 1 License NO Level device CAL Device CAL', '2008', 'Server OS Win2008', '', '', '40', '2011-05-24', '48539745', '68516159ZZS10305', '004801', 'Microsoft Server OS', 'Dataworld   ', '2023', 'March', '2023-03-23 05:45:19', '2023-03-23 05:45:19'),
(4, 'MS Windows Server Standard 2008 R2 Single Open 1 license No Level', '2008', 'Server OS Win2008', '', '', '4', '2011-05-24', '48539745', '68516159ZZS10305', '004801', 'Microsoft Server OS', 'Dataworld   ', '2023', 'March', '2023-03-23 05:46:06', '2023-03-23 05:46:06'),
(5, 'Microsoft Windows Server STDCORE 2016 Single OLP 2Licenses No Level Core License', '2016', 'Server OS Win2016', '5830', '46640', '8', '2017-03-22', '68213266', '98276546ZZS1903', '100103668', 'Microsoft Server OS', 'Dataworld   ', '2023', 'March', '2023-03-23 05:47:03', '2023-03-23 05:47:03'),
(6, 'MS Windows Professional 10 Single OLP 1 License No Level Legalization GetGenuine', '2010', 'PC OS Win10 PRO', '10010', '240240', '24', '2017-05-22', '68213269', '98276546ZZS1903', '1000103667', 'Microsoft Operating System', 'Dataworld   ', '2023', 'March', '2023-03-23 05:48:25', '2023-03-23 05:48:25'),
(7, 'MS Windows Professional 7 Single OPEN 1 License No Level Legalization Get Genuine', '2007', 'PC OS Win7 PRO', '', '', '60', '2011-05-24', '48539746', '68516923ZZS1305', '004800', 'Microsoft Operating System', 'Dataworld   ', '2023', 'March', '2023-03-23 05:49:23', '2023-03-23 05:49:23'),
(8, 'MS Windows Professional 10 Single OLP 1 License No Level Legalization GetGenuine', '2010', 'PC OS Win10 PRO', '', '', '4', '0019-01-02', '87482054', '98279325ZZS1903', 'FP099011', 'Microsoft Operating System', 'Dataworld   ', '2023', 'March', '2023-03-23 05:50:23', '2023-03-23 05:50:23'),
(9, 'MS Window Professional 10 OEM', '2010', 'PC OS Win10 PRO OEM', '', '', '11', '0000-00-00', '', '', '', 'Microsoft Operating System', 'Various Different Vendors', '2023', 'March', '2023-03-23 06:07:23', '2023-03-23 06:07:23'),
(10, 'MS Window Professional 11 OEM', '2011', 'PC OS Win11 PRO OEM', '', '', '3', '0000-00-00', '', '', '', 'Microsoft Operating System', 'Various Different Vendors', '2023', 'March', '2023-03-23 06:24:43', '2023-03-23 06:24:43'),
(11, 'MS Window Starter 7 OEM', '2007', 'PC OS Win7 OEM', '', '', '1', '0000-00-00', '', '', '', 'Microsoft Operating System', '-- Select Vendor --', '2023', 'March', '2023-03-23 06:51:56', '2023-03-23 06:51:56'),
(12, 'MS Windows Ultimate 7 OEM', '2008', 'PC OS Win7 OEM', '', '', '1', '0000-00-00', '', '', '', 'Microsoft Operating System', '-- Select Vendor --', '2023', 'March', '2023-03-24 07:49:41', '2023-03-24 07:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `licensespc`
--

CREATE TABLE `licensespc` (
  `licpcid` int(11) NOT NULL,
  `licworkstation` int(11) DEFAULT NULL,
  `licnamepc` int(11) DEFAULT NULL,
  `licavail` varchar(80) NOT NULL,
  `datelicpc` date NOT NULL,
  `licserialkey` varchar(200) NOT NULL,
  `lictimestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `licensespc`
--

INSERT INTO `licensespc` (`licpcid`, `licworkstation`, `licnamepc`, `licavail`, `datelicpc`, `licserialkey`, `lictimestamp`) VALUES
(1, 13, 9, 'Used', '2020-11-16', '', '2023-03-23 06:15:49'),
(2, 3, 9, 'Used', '2020-11-16', '', '2023-03-23 06:15:53'),
(3, 4, 9, 'Used', '2019-11-27', '', '2023-03-23 06:12:18'),
(4, 14, 9, 'Used', '2020-11-16', '', '2023-03-23 06:13:31'),
(5, 141, 9, 'Used', '2020-11-16', '', '2023-03-23 06:15:15'),
(6, 12, 9, 'Used', '2017-01-06', '', '2023-03-23 06:16:44'),
(7, 9, 9, 'Used', '2016-12-09', '', '2023-03-23 06:19:29'),
(8, 15, 10, 'Used', '2022-05-16', '', '2023-03-23 06:25:53'),
(9, 17, 10, 'Used', '2022-12-08', '', '2023-03-23 06:26:18'),
(10, 11, 7, 'Used', '2018-01-06', '', '2023-03-23 06:31:01'),
(11, 19, 7, 'Used', '2013-06-13', '', '2023-03-23 06:49:33'),
(12, 37, 11, 'Used', '2013-05-14', '', '2023-03-23 06:53:13'),
(13, 21, 9, 'Used', '0000-00-00', '', '2023-03-23 07:03:20'),
(14, 26, 8, 'Used', '0000-00-00', '', '2023-03-23 07:06:32'),
(15, 20, 8, 'Used', '0000-00-00', '', '2023-03-23 07:08:57'),
(16, 27, 8, 'Used', '0000-00-00', '', '2023-03-23 07:09:19'),
(17, 25, 7, 'Used', '2019-06-20', '', '2023-03-23 07:14:54'),
(18, 22, 7, 'Used', '2012-03-09', '', '2023-03-23 07:16:42'),
(19, 23, 7, 'Used', '2011-05-13', '', '2023-03-23 07:17:40'),
(20, 24, 7, 'Used', '2019-09-12', '', '2023-03-23 07:18:48'),
(21, 32, 7, 'Used', '2017-05-27', '', '2023-03-23 07:20:14'),
(22, 33, 7, 'Used', '2019-07-15', '', '2023-03-23 07:21:10'),
(23, 28, 7, 'Used', '2015-10-29', '', '2023-03-23 07:21:49'),
(24, 31, 7, 'Used', '2015-05-27', '', '2023-03-23 07:22:46'),
(25, 30, 7, 'Used', '2012-01-26', '', '2023-03-23 07:24:16'),
(26, 30, 7, 'Used', '2018-08-03', '', '2023-03-23 07:25:00'),
(27, 35, 7, 'Used', '2012-06-22', '', '2023-03-23 07:25:55'),
(28, 36, 7, 'Used', '2009-02-06', '', '2023-03-23 07:26:45'),
(29, 34, 7, 'Used', '2017-05-15', '', '2023-03-23 07:27:24'),
(30, 69, 9, 'Used', '2018-07-02', '', '2023-03-23 07:34:03'),
(31, 71, 7, 'Used', '2016-01-15', '', '2023-03-23 07:35:42'),
(32, 94, 7, 'Used', '2017-10-28', '', '2023-03-23 07:54:23'),
(33, 78, 7, 'Used', '2018-06-26', '', '2023-03-23 07:55:13'),
(34, 90, 7, 'Used', '2014-09-27', '', '2023-03-23 07:55:37'),
(35, 89, 7, 'Used', '0009-01-28', '', '2023-03-23 07:56:55'),
(36, 92, 7, 'Used', '2012-12-13', '', '2023-03-23 07:57:31'),
(37, 142, 7, 'Used', '2012-07-05', '', '2023-03-23 07:58:30'),
(38, 53, 9, 'Used', '2018-07-02', '', '2023-03-23 07:59:53'),
(39, 54, 7, 'Used', '2014-01-20', '', '2023-03-23 08:05:49'),
(40, 61, 7, 'Used', '2008-01-21', '', '2023-03-23 08:07:24'),
(41, 60, 7, 'Used', '2021-08-20', '', '2023-03-23 08:07:45'),
(42, 57, 7, 'Used', '2011-10-10', '', '2023-03-23 08:09:06'),
(43, 52, 7, 'Used', '2008-05-23', '', '2023-03-23 08:09:57'),
(44, 58, 7, 'Used', '2018-01-04', '', '2023-03-23 08:10:25'),
(45, 59, 7, 'Used', '2008-01-23', '', '2023-03-23 08:11:04'),
(46, 63, 7, 'Used', '2011-11-25', '', '2023-03-23 08:12:28'),
(47, 62, 7, 'Used', '2012-03-22', '', '2023-03-23 08:14:17'),
(48, 64, 7, 'Used', '2015-09-15', '', '2023-03-23 08:32:38'),
(49, 143, 7, 'Used', '2008-01-23', '', '2023-03-23 08:33:42'),
(50, 72, 10, 'Used', '2022-12-08', '', '2023-03-23 08:44:15'),
(51, 80, 7, 'Used', '2019-02-12', '', '2023-03-23 08:44:47'),
(52, 73, 7, 'Used', '0000-00-00', '', '2023-03-23 08:44:57'),
(53, 82, 7, 'Used', '0000-00-00', '', '2023-03-23 08:45:11'),
(54, 81, 7, 'Used', '0000-00-00', '', '2023-03-23 08:45:24'),
(55, 84, 6, 'Used', '0000-00-00', '', '2023-03-23 08:46:57'),
(56, 91, 6, 'Used', '0000-00-00', '', '2023-03-23 08:47:12'),
(57, 83, 6, 'Used', '0000-00-00', '', '2023-03-23 08:47:33'),
(58, 49, 7, 'Used', '0000-00-00', '', '2023-03-23 08:48:24'),
(59, 50, 7, 'Used', '0000-00-00', '', '2023-03-23 08:48:34'),
(60, 45, 7, 'Used', '0000-00-00', '', '2023-03-23 08:48:51'),
(61, 48, 7, 'Used', '0000-00-00', '', '2023-03-23 08:49:23'),
(62, 47, 7, 'Used', '0000-00-00', '', '2023-03-23 08:49:31'),
(63, 42, 7, 'Used', '0000-00-00', '', '2023-03-23 08:50:08'),
(64, 44, 7, 'Used', '0000-00-00', '', '2023-03-23 08:50:16'),
(65, 43, 7, 'Used', '0000-00-00', '', '2023-03-23 08:50:29'),
(66, 46, 6, 'Used', '0000-00-00', '', '2023-03-23 08:54:55'),
(67, 41, 7, 'Used', '0000-00-00', '', '2023-03-23 08:55:10'),
(68, 8, 6, 'Used', '0000-00-00', '', '2023-03-23 09:12:01'),
(69, 1, 6, 'Used', '0000-00-00', '', '2023-03-23 09:12:23'),
(70, 18, 6, 'Used', '0000-00-00', '', '2023-03-23 09:12:58'),
(71, 79, 7, 'Used', '0000-00-00', '', '2023-03-24 05:11:53'),
(72, 87, 7, 'Used', '0000-00-00', '', '2023-03-24 05:12:53'),
(73, 144, 7, 'Used', '0000-00-00', '', '2023-03-24 05:17:01'),
(74, 75, 6, 'Used', '0000-00-00', '', '2023-03-24 05:17:45'),
(75, 74, 6, 'Used', '0000-00-00', '', '2023-03-24 05:25:35'),
(76, 88, 6, 'Used', '0000-00-00', '', '2023-03-24 05:27:49'),
(77, 93, 6, 'Used', '0000-00-00', '', '2023-03-24 05:28:21'),
(78, 70, 6, 'Used', '0000-00-00', '', '2023-03-24 05:28:37'),
(79, 55, 6, 'Used', '0000-00-00', '', '2023-03-24 05:29:58'),
(80, 51, 6, 'Used', '0000-00-00', '', '2023-03-24 05:30:20'),
(81, 56, 7, 'Used', '0000-00-00', '', '2023-03-24 05:31:16'),
(83, 10, 6, 'Used', '0000-00-00', '', '2023-03-24 05:32:36'),
(84, 16, 6, 'Used', '0000-00-00', '', '2023-03-24 05:33:35'),
(85, 77, 6, 'Used', '0000-00-00', '', '2023-03-24 05:36:39'),
(86, 5, 7, 'Used', '0000-00-00', '', '2023-03-24 05:40:58'),
(87, 145, 6, 'Used', '0000-00-00', '', '2023-03-24 05:46:59'),
(88, 67, 6, 'Used', '0000-00-00', '', '2023-03-24 05:47:42'),
(89, 6, 6, 'Used', '0000-00-00', '', '2023-03-24 05:49:01'),
(90, 40, 6, 'Used', '0000-00-00', '', '2023-03-24 05:49:29'),
(91, 76, 6, 'Used', '0000-00-00', '', '2023-03-24 05:50:21'),
(92, 146, 7, 'Used', '0000-00-00', '', '2023-03-24 05:53:37'),
(93, 85, 7, 'Used', '0000-00-00', '', '2023-03-24 06:34:03'),
(94, 66, 7, 'Used', '0000-00-00', '', '2023-03-24 06:34:29'),
(95, 86, 7, 'Used', '0000-00-00', '', '2023-03-24 06:35:14'),
(96, 2, 7, 'Used', '0000-00-00', '', '2023-03-24 06:40:14'),
(97, 7, 7, 'Used', '0000-00-00', '', '2023-03-24 06:40:21'),
(98, 39, 12, 'Used', '0000-00-00', '', '2023-03-24 07:51:16'),
(99, 65, 9, 'Used', '0000-00-00', '', '2023-03-30 03:05:05'),
(100, 38, 6, 'Used', '0000-00-00', '', '2023-03-30 05:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `licpc_remarks`
--

CREATE TABLE `licpc_remarks` (
  `licpcrid` int(11) NOT NULL,
  `licpc` int(11) DEFAULT NULL,
  `licpcticket` varchar(120) NOT NULL,
  `licpcrmkdate` date NOT NULL,
  `licpchandle` varchar(120) NOT NULL,
  `licpcremarks` varchar(255) NOT NULL,
  `licpcrtimestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `licpc_remarks`
--

INSERT INTO `licpc_remarks` (`licpcrid`, `licpc`, `licpcticket`, `licpcrmkdate`, `licpchandle`, `licpcremarks`, `licpcrtimestamp`) VALUES
(1, 92, '', '2023-03-24', 'Charles', 'Desktop MS OS Windows 7 migrated to MS OS Windows 10', '2023-03-24 06:05:06'),
(2, 96, '', '2023-03-24', 'Charles', 'windows 7 migrated to windows 10 for record keeping', '2023-03-24 06:58:54'),
(3, 97, '', '2023-03-24', 'Charles', 'windows 7 migrated to windows 10 for record keeping', '2023-03-24 07:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logs_id` int(11) NOT NULL,
  `logs_useruid` int(11) DEFAULT NULL,
  `logs_category` varchar(150) NOT NULL,
  `logs_type` varchar(150) NOT NULL,
  `logs_remarks` varchar(150) NOT NULL,
  `logs_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logs_id`, `logs_useruid`, `logs_category`, `logs_type`, `logs_remarks`, `logs_timestamp`) VALUES
(1, 2, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: ADMINISTRATOR ADMINISTRATOR to database', '2023-02-08 06:10:05'),
(2, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Pepito Vacalares to database', '2023-02-08 06:18:42'),
(3, 3, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: ADMINISTRATOR ADMINISTRATOR to database', '2023-02-08 06:19:35'),
(4, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: ADMINISTRATOR ADMINISTRATOR to database', '2023-02-08 06:20:31'),
(5, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Kristin Glo Vacala to database', '2023-02-08 06:22:47'),
(6, 4, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: ADMINISTRATOR ADMINISTRATOR to database', '2023-02-08 06:23:40'),
(7, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: ADMINISTRATOR ADMINISTRATOR to database', '2023-02-08 06:24:25'),
(8, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Karl Abao to database', '2023-02-08 06:26:59'),
(9, 5, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:27:27'),
(10, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:27:52'),
(11, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jeson  Dominguez to database', '2023-02-08 06:29:27'),
(12, 6, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:29:52'),
(13, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:30:17'),
(14, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Kara May Fatima Palarca to database', '2023-02-08 06:31:59'),
(15, 7, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:32:23'),
(16, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:32:59'),
(17, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Leoreme Pamisa to database', '2023-02-08 06:34:25'),
(18, 8, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:35:13'),
(19, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:35:44'),
(20, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Phsyche Joy Cena to database', '2023-02-08 06:42:16'),
(21, 9, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:43:45'),
(22, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:43:55'),
(23, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Virgencita Daisy Carael to database', '2023-02-08 06:52:18'),
(24, 10, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:53:21'),
(25, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:53:44'),
(26, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rodel Madlos to database', '2023-02-08 06:57:17'),
(27, 11, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 06:57:45'),
(28, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 06:58:05'),
(29, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Eden John Mercado to database', '2023-02-08 06:59:53'),
(30, 12, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:01:28'),
(31, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:01:47'),
(32, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Nancy Balingkit to database', '2023-02-08 07:06:08'),
(33, 13, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:07:04'),
(34, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:07:24'),
(35, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rhea Dagoldol to database', '2023-02-08 07:10:42'),
(36, 14, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:11:07'),
(37, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:11:23'),
(38, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Monique Jumoc to database', '2023-02-08 07:12:57'),
(39, 15, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:14:06'),
(40, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:15:20'),
(41, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Ivy Marie Mabale to database', '2023-02-08 07:17:05'),
(42, 16, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:17:55'),
(43, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:18:23'),
(44, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Unity Lamayon to database', '2023-02-08 07:24:57'),
(45, 17, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:25:23'),
(46, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:25:53'),
(47, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Clint Fernandez to database', '2023-02-08 07:29:17'),
(48, 18, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:30:08'),
(49, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:30:29'),
(50, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Dexter Argoncillo to database', '2023-02-08 07:34:34'),
(51, 19, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:35:04'),
(52, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:35:44'),
(53, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Thesil Bailo to database', '2023-02-08 07:37:32'),
(54, 20, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 07:38:00'),
(55, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 07:38:10'),
(56, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Emielyn Badic to database', '2023-02-08 08:07:19'),
(57, 21, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 08:07:56'),
(58, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 08:08:16'),
(59, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Frevie Eve Alido to database', '2023-02-08 08:21:06'),
(60, 22, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-08 08:21:42'),
(61, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-08 08:21:50'),
(62, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 01:15:00'),
(63, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Grant Kennth Flores to database', '2023-02-09 01:16:38'),
(64, 23, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 01:17:37'),
(65, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 01:24:41'),
(66, 1, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 01:24:37'),
(67, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As 1', '2023-02-09 01:21:58'),
(68, 1, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 01:24:43'),
(69, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 01:34:52'),
(70, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As 2', '2023-02-09 01:50:05'),
(71, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 01:50:15'),
(72, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 01:53:10'),
(73, 0, 'EUPP ', 'User Changed Profile PIC  ', 'ADMINISTRATOR ADMINISTRATOR changed profile pic: 1600px_COLOURBOX9896883.jpg [ uploaded/edited to database ]', '2023-02-09 01:55:58'),
(74, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As 2', '2023-02-09 01:57:08'),
(75, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 02:03:22'),
(76, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 02:40:46'),
(77, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system', '2023-02-09 02:45:19'),
(78, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 02:45:03'),
(79, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system', '2023-02-09 02:45:06'),
(80, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 02:46:53'),
(81, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As 2', '2023-02-09 02:46:54'),
(82, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2', '2023-02-09 02:47:34'),
(83, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As 2 userlevel', '2023-02-09 02:47:48'),
(84, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As 2 userlevel', '2023-02-09 02:48:40'),
(85, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-09 02:49:20'),
(86, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-09 02:49:32'),
(87, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Ira Regine Pangan to database', '2023-02-09 02:57:03'),
(88, 24, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 02:57:37'),
(89, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 02:58:10'),
(90, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Alexander Christoph  Beltran to database', '2023-02-09 03:00:25'),
(91, 25, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:03:11'),
(92, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:03:44'),
(93, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Cesar  Magallanes to database', '2023-02-09 03:06:46'),
(94, 26, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:08:27'),
(95, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:08:46'),
(96, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Regidor Valiente to database', '2023-02-09 03:15:11'),
(97, 27, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:15:55'),
(98, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:16:58'),
(99, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Christian Gabales to database', '2023-02-09 03:18:27'),
(100, 28, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:18:56'),
(101, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:19:16'),
(102, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Novie Colis to database', '2023-02-09 03:21:31'),
(103, 29, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:21:57'),
(104, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:22:11'),
(105, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Estrello Jemino to database', '2023-02-09 03:24:22'),
(106, 30, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:25:03'),
(107, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:25:30'),
(108, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Janeth Magdale to database', '2023-02-09 03:31:56'),
(109, 31, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:34:36'),
(110, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:35:14'),
(111, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jessavyl Pamaylaon to database', '2023-02-09 03:39:44'),
(112, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-09 03:40:22'),
(113, 32, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:41:07'),
(114, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:41:50'),
(115, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Arjen Tiberio to database', '2023-02-09 03:43:26'),
(116, 33, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:44:03'),
(117, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:44:18'),
(118, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rodulfo  Gayloa to database', '2023-02-09 03:46:03'),
(119, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Julie Ann Cabunilas to database', '2023-02-09 03:46:34'),
(120, 35, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:47:05'),
(121, 34, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:47:13'),
(122, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 03:47:16'),
(123, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Lester Terex Lao to database', '2023-02-09 03:48:58'),
(124, 36, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:49:27'),
(125, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Edward Bajao to database', '2023-02-09 03:51:12'),
(126, 37, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:51:59'),
(127, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Earn Arthur Palamine to database', '2023-02-09 03:57:48'),
(128, 38, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 03:58:26'),
(129, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: April Joy Ferrer to database', '2023-02-09 05:35:19'),
(130, 39, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:35:47'),
(131, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:36:04'),
(132, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Larry Mar Jinayon to database', '2023-02-09 05:39:01'),
(133, 40, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:39:34'),
(134, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:39:49'),
(135, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Justine  Chavez to database', '2023-02-09 05:42:39'),
(136, 41, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:43:05'),
(137, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:43:24'),
(138, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Alby Polinar to database', '2023-02-09 05:45:34'),
(139, 42, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:46:03'),
(140, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:46:30'),
(141, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Darwinda Castro to database', '2023-02-09 05:49:06'),
(142, 43, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:49:36'),
(143, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:49:59'),
(144, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Gemma Gavasan to database', '2023-02-09 05:53:07'),
(145, 44, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:54:49'),
(146, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:55:19'),
(147, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Ruby Mae Onio  to database', '2023-02-09 05:56:36'),
(148, 45, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:57:07'),
(149, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:57:20'),
(150, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Lyca  Espantaleion to database', '2023-02-09 05:58:59'),
(151, 46, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 05:59:33'),
(152, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 05:59:42'),
(153, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jefferson Zamayla  to database', '2023-02-09 06:58:03'),
(154, 47, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 06:58:34'),
(155, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Marvin Yonson to database', '2023-02-09 07:00:12'),
(156, 48, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:01:04'),
(157, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:02:06'),
(158, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:02:57'),
(159, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: April Mike Valdehuesa to database', '2023-02-09 07:05:01'),
(160, 49, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:05:40'),
(161, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:06:07'),
(162, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Anabella Tangarorang to database', '2023-02-09 07:07:49'),
(163, 50, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:08:36'),
(164, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:09:09'),
(165, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Falconery  Salcedo to database', '2023-02-09 07:10:36'),
(166, 51, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:11:11'),
(167, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:11:33'),
(168, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rona Sabuga to database', '2023-02-09 07:13:05'),
(169, 52, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:13:44'),
(170, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:14:05'),
(171, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rizza Pagaran to database', '2023-02-09 07:16:55'),
(172, 53, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:17:38'),
(173, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:18:30'),
(174, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Kemberly Ritz Sabal to database', '2023-02-09 07:38:59'),
(175, 54, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:39:30'),
(176, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:40:19'),
(177, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Ivy Cris Zaballero to database', '2023-02-09 07:41:51'),
(178, 55, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-09 07:49:35'),
(179, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-09 07:50:26'),
(180, 1, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-09 09:15:55'),
(181, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 00:53:58'),
(182, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Wilmar Grace Dacer to database', '2023-02-10 01:33:36'),
(183, 56, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 01:33:57'),
(184, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 01:34:12'),
(185, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Nova Pabayo to database', '2023-02-10 01:38:52'),
(186, 57, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 01:39:23'),
(187, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 01:40:05'),
(188, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-10 01:40:16'),
(189, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 01:40:18'),
(190, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Junrick Ocot to database', '2023-02-10 01:42:43'),
(191, 58, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 01:43:18'),
(192, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 01:43:58'),
(193, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Maria Amor Mialdo to database', '2023-02-10 01:46:16'),
(194, 59, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 01:46:53'),
(195, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 01:47:23'),
(196, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Myrna Macabodbod to database', '2023-02-10 01:51:42'),
(197, 60, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 01:52:21'),
(198, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 01:52:39'),
(199, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Maria Glenda Lobusta to database', '2023-02-10 01:55:29'),
(200, 61, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 01:56:04'),
(201, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 01:56:24'),
(202, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jepte Lequin to database', '2023-02-10 01:59:24'),
(203, 62, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:00:29'),
(204, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:01:07'),
(205, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Albert  Catipon to database', '2023-02-10 02:06:20'),
(206, 63, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:06:49'),
(207, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:07:11'),
(208, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Melanie Dumapias to database', '2023-02-10 02:09:32'),
(209, 64, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:10:24'),
(210, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:10:38'),
(211, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rezile Calusa to database', '2023-02-10 02:28:26'),
(212, 65, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:29:14'),
(213, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:29:35'),
(214, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rulan Cagas to database', '2023-02-10 02:42:17'),
(215, 66, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:43:36'),
(216, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:44:04'),
(217, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Loreto Cagampang to database', '2023-02-10 02:45:26'),
(218, 67, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:46:01'),
(219, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:46:20'),
(220, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jeprey Bulawan to database', '2023-02-10 02:47:48'),
(221, 68, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 02:48:17'),
(222, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 02:49:16'),
(223, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Alecris Buhawe to database', '2023-02-10 03:13:27'),
(224, 69, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 03:13:59'),
(225, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 03:14:22'),
(226, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Pio Bucag to database', '2023-02-10 03:15:43'),
(227, 70, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 03:16:16'),
(228, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 03:16:39'),
(229, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Johnny Ampusta to database', '2023-02-10 03:18:26'),
(230, 71, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 03:18:53'),
(231, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 03:19:08'),
(232, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Mark Aguilor to database', '2023-02-10 03:21:20'),
(233, 72, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-10 03:21:46'),
(234, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-10 03:22:12'),
(235, 39, 'LP', 'Login homepage', 'April Joy Ferrer Login As userlevel 5', '2023-02-10 03:41:01'),
(236, 1, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-10 03:52:31'),
(237, 39, 'LP', 'Login homepage', 'April Joy Ferrer Login As userlevel 5', '2023-02-10 03:52:33'),
(238, 39, 'LP', 'Login homepage', 'April Joy Ferrer Login As userlevel 5', '2023-02-10 03:53:00'),
(239, 0, 'LOP', 'User Logout', '  logout system As userlevel ', '2023-02-10 03:56:46'),
(240, 39, 'LP', 'Login homepage', 'April Joy Ferrer Login As userlevel 5', '2023-02-10 03:56:51'),
(241, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 04:01:20'),
(242, 0, 'EUPP ', 'User Changed Profile PIC  ', 'ADMINISTRATOR ADMINISTRATOR changed profile pic: APRIL2x2.png [ uploaded/edited to database ]', '2023-02-10 04:03:13'),
(243, 0, 'EUPP ', 'User Changed Profile PIC  ', 'ADMINISTRATOR ADMINISTRATOR changed profile pic: APRIL2x2.png [ uploaded/edited to database ]', '2023-02-10 04:04:44'),
(244, 39, 'LP', 'Login homepage', 'April Joy Ferrer Login As userlevel 5', '2023-02-10 04:07:16'),
(245, 39, 'LOP', 'User Logout', 'April Joy Ferrer logout system As userlevel 5', '2023-02-10 04:08:45'),
(246, 39, 'LP', 'Login homepage', 'April Joy Ferrer Login As userlevel 5', '2023-02-10 04:09:29'),
(247, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-10 05:16:23'),
(248, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 05:16:32'),
(249, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-10 05:16:35'),
(250, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 07:08:53'),
(251, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-10 08:53:44'),
(252, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-02-10 08:53:46'),
(253, 2, 'LOP', 'User Logout', 'Charles Matthew Coming logout system As userlevel 2', '2023-02-10 08:54:27'),
(254, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 08:54:31'),
(255, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-10 08:57:01'),
(256, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-02-10 08:57:04'),
(257, 2, 'LOP', 'User Logout', 'Charles Matthew Coming logout system As userlevel 2', '2023-02-10 08:57:21'),
(258, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-10 08:57:35'),
(259, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-10 09:05:13'),
(260, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-14 01:39:42'),
(261, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-14 01:40:34'),
(262, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-14 01:40:38'),
(263, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-14 03:08:53'),
(264, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-14 03:09:10'),
(265, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-14 03:09:12'),
(266, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-14 03:51:26'),
(267, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-14 05:32:11'),
(268, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-14 05:40:13'),
(269, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-14 06:13:22'),
(270, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rico Cadelina to database', '2023-02-14 06:22:37'),
(271, 73, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-14 06:25:23'),
(272, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-16 02:26:30'),
(273, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-16 02:26:37'),
(274, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-16 02:26:40'),
(275, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-21 06:51:03'),
(276, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-21 06:51:46'),
(277, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 5', '2023-02-21 06:51:49'),
(278, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-21 07:24:19'),
(279, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 0', '2023-02-21 07:24:51'),
(280, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-21 07:25:40'),
(281, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-21 07:27:24'),
(282, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-21 07:27:28'),
(283, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-21 08:25:10'),
(284, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-21 08:28:43'),
(285, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-21 08:29:09'),
(286, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-21 08:29:12'),
(287, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-21 08:29:25'),
(288, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-21 08:29:35'),
(289, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-21 08:29:38'),
(290, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-22 03:16:38'),
(291, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-22 03:17:11'),
(292, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-22 03:40:34'),
(293, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-22 06:25:02'),
(294, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-22 06:39:25'),
(295, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Vic Mabale to database', '2023-02-22 06:49:51'),
(296, 74, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 06:51:41'),
(297, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 06:52:27'),
(298, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Leo Padilla to database', '2023-02-22 06:53:59'),
(299, 75, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 06:55:07'),
(300, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 06:56:37'),
(301, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Charry Mae Bagongon to database', '2023-02-22 07:10:40'),
(302, 76, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:11:52'),
(303, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Arabella Labial to database', '2023-02-22 07:12:20'),
(304, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:12:57'),
(305, 77, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:16:00'),
(306, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:16:16'),
(307, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Erica Nochka Gomez to database', '2023-02-22 07:21:03'),
(308, 78, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:22:11'),
(309, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:22:24'),
(310, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Edgar Poral to database', '2023-02-22 07:23:49'),
(311, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Emelia Tugade to database', '2023-02-22 07:24:01'),
(312, 80, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:24:42'),
(313, 79, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:24:55'),
(314, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:24:59'),
(315, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:25:25'),
(316, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Lendyvie Gaputan to database', '2023-02-22 07:26:59'),
(317, 81, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:27:48'),
(318, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:28:01'),
(319, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jecker Jan Ladera to database', '2023-02-22 07:30:54'),
(320, 82, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:31:31'),
(321, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:31:55'),
(322, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jericson Tiongson to database', '2023-02-22 07:34:00'),
(323, 83, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:34:29'),
(324, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Nori Jane Macamimo to database', '2023-02-22 07:34:42'),
(325, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:34:45'),
(326, 84, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:36:15'),
(327, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Rogel Crieta to database', '2023-02-22 07:36:24'),
(328, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:36:54'),
(329, 85, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:37:36'),
(330, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:37:52'),
(331, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Nelisa Niese to database', '2023-02-22 07:39:43'),
(332, 86, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:40:15'),
(333, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:40:32'),
(334, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Niel Acobo to database', '2023-02-22 07:43:27'),
(335, 87, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:44:08'),
(336, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:44:17'),
(337, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jucinde Acobo to database', '2023-02-22 07:47:03'),
(338, 88, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:47:34'),
(339, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:48:48'),
(340, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Shiela May Tacandong to database', '2023-02-22 07:50:59'),
(341, 89, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:51:33'),
(342, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:52:23'),
(343, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Roger Mediante to database', '2023-02-22 07:54:31'),
(344, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jesson Tacandong to database', '2023-02-22 07:54:41'),
(345, 90, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:55:07'),
(346, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:55:22'),
(347, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Venus Sunot to database', '2023-02-22 07:56:54'),
(348, 91, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:57:01'),
(349, 92, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 07:57:17'),
(350, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 07:57:28'),
(351, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jeanny Mostacisa to database', '2023-02-22 08:00:04'),
(352, 93, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:00:26'),
(353, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:00:43'),
(354, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Amelita Fuscablo to database', '2023-02-22 08:06:24'),
(355, 94, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:07:04'),
(356, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:07:30'),
(357, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: May Rechel Obedencio to database', '2023-02-22 08:08:35'),
(358, 95, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:09:11'),
(359, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:09:30'),
(360, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:14:10'),
(361, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jenny Ve  Kionisala to database', '2023-02-22 08:16:58'),
(362, 96, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:17:26'),
(363, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:18:10'),
(364, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Grace Costudio to database', '2023-02-22 08:19:11'),
(365, 97, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:19:57'),
(366, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Kathrine  Casino to database', '2023-02-22 08:20:04'),
(367, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:20:11'),
(368, 98, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:21:20'),
(369, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:21:38'),
(370, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Johanna Evan Cabotaje to database', '2023-02-22 08:21:49'),
(371, 99, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:23:09'),
(372, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:23:25'),
(373, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Clark Macarayo to database', '2023-02-22 08:24:20'),
(374, 100, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:24:53'),
(375, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: James  Lugatman to database', '2023-02-22 08:25:01'),
(376, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:25:18'),
(377, 101, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:25:41'),
(378, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:26:11'),
(379, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Villamor Sumagang to database', '2023-02-22 08:27:18'),
(380, 102, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:27:51'),
(381, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Nicarter Jalit to database', '2023-02-22 08:28:10'),
(382, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:28:11'),
(383, 103, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:29:21');
INSERT INTO `logs` (`logs_id`, `logs_useruid`, `logs_category`, `logs_type`, `logs_remarks`, `logs_timestamp`) VALUES
(384, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Mark Niño Rodriguez to database', '2023-02-22 08:30:02'),
(385, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:30:04'),
(386, 104, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:30:35'),
(387, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Cirane Basubas to database', '2023-02-22 08:30:56'),
(388, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:31:04'),
(389, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Cirane Basubas to database', '2023-02-22 08:32:10'),
(390, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Luta Ocang to database', '2023-02-22 08:32:22'),
(391, 107, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:32:45'),
(392, 105, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:32:53'),
(393, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:33:31'),
(394, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Mary Grace Salvaña to database', '2023-02-22 08:35:14'),
(395, 108, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:35:35'),
(396, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:35:53'),
(397, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Josephine Tabamo to database', '2023-02-22 08:37:34'),
(398, 109, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-22 08:38:17'),
(399, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:38:32'),
(400, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-22 08:40:52'),
(401, 1, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-22 09:25:02'),
(402, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 5', '2023-02-23 01:43:49'),
(403, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-23 01:44:40'),
(404, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-23 01:50:37'),
(405, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-23 03:25:33'),
(406, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-23 03:25:38'),
(407, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-23 07:40:51'),
(408, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-27 07:14:36'),
(409, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Boyet Pomada to database', '2023-02-27 07:20:38'),
(410, 110, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 07:21:14'),
(411, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 07:21:42'),
(412, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Remark Lespana to database', '2023-02-27 07:23:00'),
(413, 111, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 07:23:28'),
(414, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 07:23:46'),
(415, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Joel Apduhan to database', '2023-02-27 07:25:10'),
(416, 112, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 07:25:36'),
(417, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Arniel Oñez to database', '2023-02-27 07:27:56'),
(418, 113, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 07:28:35'),
(419, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 07:28:52'),
(420, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Brian Dahilog to database', '2023-02-27 08:36:20'),
(421, 114, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:37:42'),
(422, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:37:57'),
(423, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Aisa Jane Panilag to database', '2023-02-27 08:40:52'),
(424, 115, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:41:18'),
(425, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:41:29'),
(426, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Roxan Mahusay to database', '2023-02-27 08:43:13'),
(427, 116, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:44:04'),
(428, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:44:20'),
(429, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Emee Grace Ramonal to database', '2023-02-27 08:45:46'),
(430, 117, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:46:22'),
(431, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:46:33'),
(432, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Christine Julie Jane Dael to database', '2023-02-27 08:49:09'),
(433, 118, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:49:36'),
(434, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Micheluo  Mansequiao to database', '2023-02-27 08:52:30'),
(435, 119, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:54:03'),
(436, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:54:39'),
(437, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Charmaine Fariola to database', '2023-02-27 08:56:03'),
(438, 120, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:56:31'),
(439, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:57:28'),
(440, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Claire Mary Caiña to database', '2023-02-27 08:58:55'),
(441, 121, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 08:59:21'),
(442, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 08:59:34'),
(443, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Leah Butad to database', '2023-02-27 09:01:00'),
(444, 122, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 09:01:31'),
(445, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 09:02:35'),
(446, 1, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Kathy Saraus to database', '2023-02-27 09:09:06'),
(447, 123, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-27 09:21:49'),
(448, 1, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-27 09:22:27'),
(449, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-28 01:03:32'),
(450, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Jezzrel Saraus to database', '2023-02-28 01:09:18'),
(451, 124, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-02-28 01:10:27'),
(452, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-02-28 01:11:06'),
(453, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-28 01:26:09'),
(454, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-28 01:26:12'),
(455, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-28 02:58:48'),
(456, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-02-28 06:11:15'),
(457, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-02-28 06:11:19'),
(458, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-28 06:11:22'),
(459, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-28 06:57:47'),
(460, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-02-28 14:05:21'),
(461, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-01 03:04:00'),
(462, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-01 03:04:03'),
(463, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-01 03:04:10'),
(464, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-02 01:41:32'),
(465, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-02 02:15:22'),
(466, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-02 02:15:26'),
(467, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-06 01:27:54'),
(468, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-06 01:27:58'),
(469, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-07 03:58:03'),
(470, 0, 'AU', 'Add a User ', 'ADMINISTRATOR ADMINISTRATOR added user profile: Louelven Querol to database', '2023-03-07 04:04:06'),
(471, 125, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-03-07 04:05:09'),
(472, 0, 'AUED', 'Add a User Education ', 'ADMINISTRATOR ADMINISTRATOR added Education profile: Karl Abao to database', '2023-03-07 04:05:55'),
(473, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-07 04:06:31'),
(474, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-07 04:06:34'),
(475, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 04:08:05'),
(476, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 04:08:17'),
(477, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-07 04:09:53'),
(478, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-07 05:21:01'),
(479, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 06:06:11'),
(480, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 06:06:24'),
(481, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 5', '2023-03-07 06:07:41'),
(482, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 06:09:34'),
(483, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 5', '2023-03-07 06:09:51'),
(484, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 06:10:12'),
(485, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-07 06:10:21'),
(486, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 06:10:24'),
(487, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-07 06:58:04'),
(488, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-03-07 07:22:39'),
(489, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-03-07 07:24:11'),
(490, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-03-07 07:24:28'),
(491, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-03-07 07:32:01'),
(492, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-03-07 07:36:50'),
(493, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-03-07 07:44:18'),
(494, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-07 08:02:05'),
(495, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-08 00:55:41'),
(496, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-08 01:23:06'),
(497, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-03-08 01:23:07'),
(498, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-03-08 01:27:20'),
(499, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-03-08 01:27:29'),
(500, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-08 06:15:02'),
(501, 106, 'AUC', 'Add a User Company ', 'ADMINISTRATOR ADMINISTRATOR added company profile: Karl Abao to database', '2023-03-08 06:16:09'),
(502, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-08 06:20:26'),
(503, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-08 06:20:39'),
(504, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-08 06:20:43'),
(505, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-08 06:21:05'),
(506, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-08 06:21:07'),
(507, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-03-08 07:53:12'),
(508, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-03-08 07:55:25'),
(509, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-09 02:42:00'),
(510, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-10 03:44:52'),
(511, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-10 03:49:23'),
(512, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-10 05:40:35'),
(513, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-10 07:10:57'),
(514, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-14 06:36:21'),
(515, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-15 07:37:00'),
(516, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-16 08:28:02'),
(517, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-17 00:50:40'),
(518, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-17 00:51:04'),
(519, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-17 08:15:35'),
(520, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-20 03:09:14'),
(521, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-20 03:11:13'),
(522, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-21 00:57:21'),
(523, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-21 03:47:25'),
(524, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-21 03:47:35'),
(525, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-21 03:47:39'),
(526, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-22 02:02:13'),
(527, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-22 03:26:54'),
(528, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-03-22 03:57:16'),
(529, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-03-22 06:09:29'),
(530, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-03-22 08:06:45'),
(531, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-03-22 08:07:17'),
(532, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-03-22 08:09:06'),
(533, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-03-22 08:09:17'),
(534, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-23 01:43:18'),
(535, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-23 07:55:09'),
(536, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-24 01:41:51'),
(537, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-27 03:42:12'),
(538, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-27 03:42:31'),
(539, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-27 03:45:57'),
(540, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-27 06:40:43'),
(541, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-27 07:20:41'),
(542, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 1', '2023-03-28 02:32:18'),
(543, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-03-28 03:50:48'),
(544, 1, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 2', '2023-03-28 03:51:14'),
(545, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-03-28 03:51:21'),
(546, 2, 'LOP', 'User Logout', 'Charles Matthew Coming logout system As userlevel 2', '2023-03-28 03:51:26'),
(547, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-03-28 03:51:29'),
(548, 2, 'LOP', 'User Logout', 'Charles Matthew Coming logout system As userlevel 2', '2023-03-28 03:51:33'),
(549, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-03-28 03:52:21'),
(550, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-29 01:20:37'),
(551, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-29 01:21:05'),
(552, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-29 01:39:52'),
(553, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:46:01'),
(554, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:46:38'),
(555, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:46:48'),
(556, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:48:29'),
(557, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:48:42'),
(558, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:48:55'),
(559, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:49:26'),
(560, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:49:35'),
(561, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:49:44'),
(562, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:50:03'),
(563, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:50:48'),
(564, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-03-29 07:51:08'),
(565, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-03-30 02:31:41'),
(566, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-03-30 08:18:30'),
(567, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-31 01:50:22'),
(568, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-31 05:12:32'),
(569, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-03-31 07:26:41'),
(570, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-03 02:01:12'),
(571, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-03 02:44:55'),
(572, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-04-03 02:45:01'),
(573, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-04-03 03:16:09'),
(574, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-04-11 07:19:06'),
(575, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-04-12 01:57:11'),
(576, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-12 02:01:53'),
(577, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-13 07:57:40'),
(578, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-14 03:47:53'),
(579, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-04-18 07:13:25'),
(580, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-25 05:56:23'),
(581, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 2', '2023-04-26 05:48:32'),
(582, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-26 05:48:47'),
(583, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-04-26 05:53:16'),
(584, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-04-26 08:05:42'),
(585, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-26 08:05:46'),
(586, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-04-27 02:03:40'),
(587, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-04-27 06:48:12'),
(588, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-27 06:48:15'),
(589, 2, 'LOP', 'User Logout', 'Charles Matthew Coming logout system As userlevel 2', '2023-04-27 07:46:24'),
(590, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-27 07:46:31'),
(591, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-04-27 07:47:39'),
(592, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-04-27 07:49:12'),
(593, 1, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-04-27 07:50:01'),
(594, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-27 07:50:17'),
(595, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-04-27 08:04:02'),
(596, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-04-27 08:04:44'),
(597, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-27 08:04:46'),
(598, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-04-27 08:05:01'),
(599, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-04-27 08:05:31'),
(600, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-04-27 08:05:37'),
(601, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-04-27 08:06:18'),
(602, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-05-03 08:18:35'),
(603, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-05-05 06:20:12'),
(604, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-05 08:09:17'),
(605, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-05 08:09:19'),
(606, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-05 08:09:22'),
(607, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 1', '2023-05-05 08:09:34'),
(608, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-05 08:10:55'),
(609, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-09 02:35:02'),
(610, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-09 05:19:47'),
(611, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-10 04:02:39'),
(612, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-10 05:09:29'),
(613, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-11 01:27:54'),
(614, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-12 05:09:16'),
(615, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-12 05:17:09'),
(616, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:20:02'),
(617, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:35:29'),
(618, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:36:07'),
(619, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:36:29'),
(620, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:36:37'),
(621, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:36:45'),
(622, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:37:16'),
(623, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:37:24'),
(624, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:37:38'),
(625, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:37:46'),
(626, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:38:14'),
(627, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 05:38:34'),
(628, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-12 05:42:55'),
(629, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-12 05:43:08'),
(630, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-12 05:43:19'),
(631, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-12 05:43:29'),
(632, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-12 05:43:39'),
(633, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-05-12 06:45:43'),
(634, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-05-12 06:56:18'),
(635, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-05-12 07:03:45'),
(636, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-12 07:06:20'),
(637, 125, 'AINDUEQ', 'Add Independent  ', 'Louelven Querol added Independent user: Karl Abao to database', '2023-05-12 07:10:56'),
(638, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-12 07:11:47'),
(639, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-12 07:28:43'),
(640, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 08:41:46'),
(641, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-12 09:01:11'),
(642, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-15 01:50:31'),
(643, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-15 02:44:03'),
(644, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-16 03:30:38'),
(645, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-16 03:30:47'),
(646, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-16 03:30:50'),
(647, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-16 03:34:05'),
(648, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-17 05:48:06'),
(649, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-17 05:50:01'),
(650, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-18 01:55:59'),
(651, 2, 'AINDUEQ', 'Add Independent  ', 'Charles Matthew Coming added Independent user: Karl Abao to database', '2023-05-18 05:14:46'),
(652, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-18 08:46:59'),
(653, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-19 05:12:39'),
(654, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-19 06:33:54'),
(655, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-19 06:34:33'),
(656, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-19 06:37:11'),
(657, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-22 02:48:01'),
(658, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-22 07:13:51'),
(659, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-22 07:14:00'),
(660, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-22 07:14:02'),
(661, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-22 08:07:58'),
(662, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-22 08:08:30'),
(663, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-22 08:08:33'),
(664, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-22 08:12:48'),
(665, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-23 01:57:32'),
(666, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-23 01:58:20'),
(667, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 06:50:02'),
(668, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 06:51:59'),
(669, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 06:52:19'),
(670, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 06:54:15'),
(671, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 06:55:29'),
(672, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 06:56:37'),
(673, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:01:18'),
(674, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:03:32'),
(675, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:09:30'),
(676, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:10:04'),
(677, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:11:59'),
(678, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:18:25'),
(679, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:19:59'),
(680, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 07:30:18'),
(681, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:38:17'),
(682, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:42:26'),
(683, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:43:22'),
(684, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:45:11'),
(685, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:45:40'),
(686, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:56:00'),
(687, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:56:20'),
(688, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 08:56:53'),
(689, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 09:14:17'),
(690, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-23 09:18:30'),
(691, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-24 01:10:29'),
(692, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-24 01:29:20'),
(693, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-24 01:32:19'),
(694, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-24 03:31:48'),
(695, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-24 03:31:51'),
(696, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-24 06:59:16'),
(697, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-24 07:10:23'),
(698, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-24 07:10:26'),
(699, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-24 07:35:09'),
(700, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-24 07:42:37'),
(701, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-24 07:42:40'),
(702, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-24 07:42:52'),
(703, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-24 07:56:07'),
(704, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-24 07:56:42'),
(705, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-24 07:56:54'),
(706, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-24 07:56:57'),
(707, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-24 08:17:35'),
(708, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-25 00:54:42'),
(709, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-05-25 01:32:14'),
(710, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-05-25 01:37:36'),
(711, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-25 01:37:38'),
(712, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-25 02:06:08'),
(713, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-25 02:42:32'),
(714, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-25 03:43:18'),
(715, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-25 03:52:18'),
(716, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-25 03:53:18'),
(717, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-25 03:59:10'),
(718, 125, 'LOP', 'User Logout', 'Louelven Querol logout system As userlevel 2', '2023-05-25 03:59:21'),
(719, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-25 05:10:01'),
(720, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-26 00:51:15'),
(721, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 00:57:24'),
(722, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-26 01:09:04'),
(723, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-26 03:25:00'),
(724, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-26 05:40:19'),
(725, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-26 05:40:49'),
(726, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-26 05:41:13'),
(727, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-05-26 05:41:58'),
(728, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:43:55'),
(729, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:44:41'),
(730, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:45:17'),
(731, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:47:06'),
(732, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:47:22'),
(733, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:47:40'),
(734, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 05:47:51'),
(735, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-05-26 07:06:51'),
(736, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-29 02:21:07'),
(737, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-29 08:58:25'),
(738, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-30 02:15:25'),
(739, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-30 03:59:04'),
(740, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-31 01:22:55'),
(741, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-05-31 03:02:36'),
(742, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-05-31 06:26:17'),
(743, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-01 07:04:30'),
(744, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-01 08:03:56'),
(745, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-01 01:10:45'),
(746, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-01 01:25:54'),
(747, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-06 02:54:07'),
(748, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-07 03:39:45'),
(749, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-08 02:16:53'),
(750, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-08 03:48:11'),
(751, 125, 'LOP', 'User Logout', 'Louelven Querol logout system As userlevel 2', '2023-06-08 05:12:26'),
(752, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-08 05:12:33'),
(753, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-09 06:25:14'),
(754, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-09 08:02:04'),
(755, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-06-09 08:11:25'),
(756, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-06-09 08:12:36'),
(757, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-06-09 08:12:38'),
(758, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-06-09 08:12:55'),
(759, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-09 08:12:57'),
(760, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-13 01:44:51'),
(761, 125, 'LOP', 'User Logout', 'Louelven Querol logout system As userlevel 2', '2023-06-13 03:39:49'),
(762, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-13 03:39:54'),
(763, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-13 08:52:43'),
(764, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-14 01:27:44'),
(765, 125, 'LOP', 'User Logout', 'Louelven Querol logout system As userlevel 2', '2023-06-14 01:59:29'),
(766, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-14 01:59:37'),
(767, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-14 06:01:02'),
(768, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-14 06:06:29'),
(769, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-06-14 06:40:50'),
(770, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-06-14 06:41:14'),
(771, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-06-14 06:41:19'),
(772, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-06-14 06:44:11'),
(773, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-14 06:44:14'),
(774, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-06-14 06:44:51'),
(775, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-06-14 06:45:24'),
(776, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-14 06:45:27'),
(777, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-06-14 07:00:08'),
(778, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-06-14 07:22:51'),
(779, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-14 07:22:58'),
(780, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-15 02:18:01'),
(781, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-16 01:18:22'),
(782, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-16 05:12:11'),
(783, 2, 'LOP', 'User Logout', 'Charles Matthew Coming logout system As userlevel 2', '2023-06-16 08:12:23'),
(784, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-16 08:12:25'),
(785, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-20 04:22:48'),
(786, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-22 02:46:15'),
(787, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-22 05:31:45'),
(788, 125, 'LOP', 'User Logout', 'Louelven Querol logout system As userlevel 2', '2023-06-22 05:42:29'),
(789, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-22 05:42:34'),
(790, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-23 03:53:47'),
(791, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-23 06:00:44'),
(792, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-26 02:24:19'),
(793, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-26 07:48:47'),
(794, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-26 09:22:19'),
(795, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-27 02:33:43'),
(796, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-27 06:19:41'),
(797, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-06-29 03:09:12'),
(798, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-06-29 08:04:23'),
(799, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-05 05:13:59'),
(800, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-07-06 08:18:56'),
(801, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-06 08:19:37'),
(802, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-10 03:21:58'),
(803, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-11 03:15:41'),
(804, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-07-18 01:00:37'),
(805, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-07-18 02:47:19'),
(806, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-07-18 02:48:20'),
(807, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-18 02:59:13'),
(808, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-18 03:06:26'),
(809, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-20 01:42:19'),
(810, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-21 01:10:48'),
(811, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-07-21 09:05:19'),
(812, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-07-21 09:06:01'),
(813, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-24 03:38:53'),
(814, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-25 00:23:02'),
(815, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-26 01:26:41'),
(816, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-26 08:46:58'),
(817, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-27 02:12:00'),
(818, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-27 07:28:10'),
(819, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-27 07:31:17'),
(820, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-27 07:32:34'),
(821, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-27 07:34:17'),
(822, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-27 07:34:39'),
(823, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-27 07:37:11');
INSERT INTO `logs` (`logs_id`, `logs_useruid`, `logs_category`, `logs_type`, `logs_remarks`, `logs_timestamp`) VALUES
(824, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-07-31 05:07:44'),
(825, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-31 05:24:24'),
(826, 125, 'AUC', 'Add a User Company ', 'Louelven Querol added company profile:   to database', '2023-07-31 05:38:38'),
(827, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-08-02 03:59:01'),
(828, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-08-03 01:45:48'),
(829, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-08-04 00:54:23'),
(830, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-08-04 05:56:10'),
(831, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-08-07 04:56:31'),
(832, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-08-07 07:41:00'),
(833, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-08-11 05:08:06'),
(834, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-08-14 03:57:19'),
(835, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-08-22 05:46:19'),
(836, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-08-23 03:31:08'),
(837, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-08-23 03:31:54'),
(838, 125, 'LP', 'Login homepage', 'Louelven Querol Login As userlevel 2', '2023-08-23 09:10:11'),
(839, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-08-31 05:10:54'),
(840, 2, 'AUC', 'Add a User Company ', 'Charles Matthew Coming added company profile:   to database', '2023-08-31 07:48:47'),
(841, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-01 05:39:35'),
(842, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-05 03:49:29'),
(843, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-06 01:26:08'),
(844, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-08 01:39:21'),
(845, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-14 06:42:57'),
(846, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-19 05:28:11'),
(847, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-21 01:14:04'),
(848, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-25 03:40:25'),
(849, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-09-28 05:50:45'),
(850, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-09-28 05:51:19'),
(851, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-10-11 02:40:58'),
(852, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-10-17 02:00:07'),
(853, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-10-18 08:46:13'),
(854, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-10-18 08:47:56'),
(855, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-10-23 06:24:36'),
(856, 2, 'LP', 'Login homepage', 'Charles Matthew Coming Login As userlevel 2', '2023-10-27 04:05:58'),
(857, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-10-27 05:51:52'),
(858, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-10-27 05:52:02'),
(859, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-10-27 05:53:20'),
(860, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-10-27 05:53:22'),
(861, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-10-27 05:54:45'),
(862, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-11-03 09:08:43'),
(863, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-11-03 09:13:37'),
(864, 0, 'LP', 'Login homepage', 'ADMINISTRATOR ADMINISTRATOR Login As userlevel 3', '2023-11-03 09:14:24'),
(865, 0, 'LOP', 'User Logout', 'ADMINISTRATOR ADMINISTRATOR logout system As userlevel 3', '2023-11-03 09:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `maf`
--

CREATE TABLE `maf` (
  `mafid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `maftype` varchar(70) NOT NULL,
  `dpmonth` varchar(40) NOT NULL,
  `dpday` varchar(40) NOT NULL,
  `dpyear` varchar(40) NOT NULL,
  `demonth` varchar(40) NOT NULL,
  `deday` varchar(40) NOT NULL,
  `deyear` varchar(40) NOT NULL,
  `descrip` varchar(200) NOT NULL,
  `mafamount` varchar(100) NOT NULL,
  `maftimestamp1` timestamp NULL DEFAULT current_timestamp(),
  `maftimestamp22` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE `memo` (
  `memo_id` int(11) NOT NULL,
  `user_used` int(11) DEFAULT NULL,
  `nameofuser` varchar(150) NOT NULL,
  `memotitle` varchar(150) NOT NULL,
  `memofile` varchar(150) NOT NULL,
  `memobranch` varchar(120) NOT NULL,
  `memodept` varchar(120) NOT NULL,
  `memomonthnum` varchar(100) NOT NULL,
  `memomonth` varchar(100) NOT NULL,
  `memoday` varchar(100) NOT NULL,
  `memoyear` varchar(100) NOT NULL,
  `memo_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2024_01_16_083820_create_sgcard__n_a_i_s', 2),
(3, '2024_01_16_084054_create_sgcard__n_a_i_s', 3),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(9, '2024_01_10_020500_create_roles', 4),
(10, '2024_01_16_084257_create_sgcard_dprivacyn', 5),
(11, '2024_01_16_082519_create_sgcard_img', 6),
(12, '2024_01_17_033539_create_sgcard_nais', 7),
(22, '2024_01_18_033144_create_sam', 14),
(31, '2024_01_18_022550_create_sgcard_card', 21),
(32, '2024_01_18_022101_create_sgcard_nais', 22),
(33, '2024_01_18_023043_create_sgcard_dprivacy', 23),
(36, '2024_01_18_020817_create_sgcard_customer', 24),
(37, '2024_01_19_012419_create_sgcard_customers_table', 25),
(38, '2024_01_19_013552_create_sgcard_customer', 26),
(39, '2024_01_19_020332_create_sgcard_customer', 27),
(40, '2024_01_19_021510_create_image_uploads_table', 28),
(41, '2024_01_22_061554_create_sgcard_customer', 29),
(42, '2024_01_22_061723_create_sgcard_dprivacy', 29),
(43, '2024_01_22_061841_create_sgcard_card', 29),
(44, '2024_01_22_062050_create_sgcard_nais', 29),
(45, '2024_01_22_063556_create_sgcard_customer', 30),
(46, '2024_01_22_063536_create_sgcard_nais', 31),
(47, '2024_01_22_063542_create_sgcard_card', 31),
(48, '2024_01_22_063548_create_sgcard_dprivacy', 31),
(49, '2024_02_06_091348_create_sgcard_customer', 32),
(50, '2024_02_06_091548_create_sgcard_dprivacy', 33),
(51, '2024_02_06_091854_create_sgcard_card', 34),
(52, '2024_02_06_092022_create_sgcard_nais', 35),
(53, '2024_02_12_022649_create_sgcard_customer', 36),
(54, '2024_02_12_022929_create_sgcard_dprivacy', 37),
(55, '2024_02_12_023106_create_sgcard_card', 38),
(56, '2024_02_12_023214_create_sgcard_nais', 39),
(57, '2024_02_13_012423_create_sgcard_nais', 40),
(58, '2024_02_13_013555_create_sgcard_card', 41),
(59, '2024_02_20_051754_create_sgcard_customer', 42),
(60, '2024_02_20_052044_create_sgcard_dprivacy', 43),
(61, '2024_02_20_052218_create_sgcard_card', 44),
(62, '2024_02_20_052411_create_sgcard_nais', 45);

-- --------------------------------------------------------

--
-- Table structure for table `payslip`
--

CREATE TABLE `payslip` (
  `psid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pstype` varchar(100) NOT NULL,
  `pdfpayslip` varchar(150) NOT NULL,
  `payday` varchar(100) NOT NULL,
  `paymonthnum` varchar(100) NOT NULL,
  `paymonth` varchar(100) NOT NULL,
  `payyear` varchar(100) NOT NULL,
  `payslip_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pccomponents`
--

CREATE TABLE `pccomponents` (
  `compid` int(11) NOT NULL,
  `pcid` int(11) DEFAULT NULL,
  `cpuname` varchar(40) DEFAULT NULL,
  `cpusn` varchar(25) DEFAULT NULL,
  `cpuven` varchar(25) DEFAULT NULL,
  `cpucost` varchar(15) DEFAULT NULL,
  `cpudate` varchar(15) DEFAULT NULL,
  `cpubv` varchar(15) DEFAULT NULL,
  `cpustat` varchar(25) DEFAULT NULL,
  `moboname` varchar(40) DEFAULT NULL,
  `mobosn` varchar(25) DEFAULT NULL,
  `moboven` varchar(25) DEFAULT NULL,
  `mobocost` varchar(15) DEFAULT NULL,
  `mobodate` varchar(15) DEFAULT NULL,
  `mobobv` varchar(15) DEFAULT NULL,
  `mobostat` varchar(25) DEFAULT NULL,
  `stgname1` varchar(30) NOT NULL,
  `stgsn1` varchar(30) NOT NULL,
  `stgven1` varchar(30) NOT NULL,
  `stgcost1` varchar(30) NOT NULL,
  `stgdate1` varchar(30) NOT NULL,
  `stgbv1` varchar(30) NOT NULL,
  `stgstat1` varchar(30) NOT NULL,
  `stgname2` varchar(30) NOT NULL,
  `stgsn2` varchar(30) NOT NULL,
  `stgven2` varchar(30) NOT NULL,
  `stgcost2` varchar(30) NOT NULL,
  `stgdate2` varchar(30) NOT NULL,
  `stgbv2` varchar(30) NOT NULL,
  `stgstat2` varchar(30) NOT NULL,
  `ramname` varchar(40) DEFAULT NULL,
  `ramsn` varchar(25) DEFAULT NULL,
  `ramven` varchar(25) DEFAULT NULL,
  `ramcost` varchar(15) DEFAULT NULL,
  `ramdate` varchar(15) DEFAULT NULL,
  `rambv` varchar(15) DEFAULT NULL,
  `ramstat` varchar(25) DEFAULT NULL,
  `psuname` varchar(40) DEFAULT NULL,
  `psusn` varchar(25) DEFAULT NULL,
  `psuven` varchar(25) DEFAULT NULL,
  `psucost` varchar(15) DEFAULT NULL,
  `psudate` varchar(15) DEFAULT NULL,
  `psubv` varchar(15) DEFAULT NULL,
  `psustat` varchar(25) DEFAULT NULL,
  `casename` varchar(40) DEFAULT NULL,
  `casesn` varchar(25) DEFAULT NULL,
  `caseven` varchar(25) DEFAULT NULL,
  `casecost` varchar(15) DEFAULT NULL,
  `casedate` varchar(15) DEFAULT NULL,
  `casebv` varchar(15) DEFAULT NULL,
  `casestat` varchar(25) DEFAULT NULL,
  `itemstamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pccomponents`
--

INSERT INTO `pccomponents` (`compid`, `pcid`, `cpuname`, `cpusn`, `cpuven`, `cpucost`, `cpudate`, `cpubv`, `cpustat`, `moboname`, `mobosn`, `moboven`, `mobocost`, `mobodate`, `mobobv`, `mobostat`, `stgname1`, `stgsn1`, `stgven1`, `stgcost1`, `stgdate1`, `stgbv1`, `stgstat1`, `stgname2`, `stgsn2`, `stgven2`, `stgcost2`, `stgdate2`, `stgbv2`, `stgstat2`, `ramname`, `ramsn`, `ramven`, `ramcost`, `ramdate`, `rambv`, `ramstat`, `psuname`, `psusn`, `psuven`, `psucost`, `psudate`, `psubv`, `psustat`, `casename`, `casesn`, `caseven`, `casecost`, `casedate`, `casebv`, `casestat`, `itemstamp`) VALUES
(1, NULL, 'AMD Ryzen 5 PRO 2400GE', '', '', 'PHP   ', '01/10/2022', '', 'New', 'MS-7C51', '07C5112_L31E647743	', '', 'PHP   ', '01/10/2022', '', 'Functional', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'PHP   ', '', '', 'Functional', '', '', '', 'PHP   ', '', '', 'Functional', '', '', '', 'PHP   ', '', '', 'Functional', '2022-06-24 07:00:26'),
(2, NULL, 'AMD Ryzen 3 2200G', '', '', 'PHP   ', '', '', 'Functional', 'A320M-S2H V2', '', '', 'PHP   ', '', '', 'Functional', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'P0 CHANNEL B (No ECC)', '04019979', '', 'PHP   ', '', '', 'Functional', '', '', '', 'PHP   ', '', '', 'Functional', '', '', '', 'PHP   ', '', '', 'Functional', '2022-06-24 07:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `pcremarks`
--

CREATE TABLE `pcremarks` (
  `pcrmkid` int(11) NOT NULL,
  `pcid` int(11) DEFAULT NULL,
  `deskpcticket` varchar(20) DEFAULT NULL,
  `pcrmkdate` varchar(15) DEFAULT NULL,
  `pchandleby` varchar(20) DEFAULT NULL,
  `pcremarks` varchar(300) DEFAULT NULL,
  `pcstamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcremarks`
--

INSERT INTO `pcremarks` (`pcrmkid`, `pcid`, `deskpcticket`, `pcrmkdate`, `pchandleby`, `pcremarks`, `pcstamp`) VALUES
(1, 3, '', '03/07/2023', 'Charles(Karl)', 'added a  2 8GB RAM with a total of 16GB and the old 4GB RAM of user laptop is transferred to Junior Accountant new laptop for upgrading the RAM to 8GB. Added a new NVME SSD.  ', '2023-03-07 08:11:27'),
(2, 5, '', '03/07/2023', 'Charles(Karl)', 'former president and CEO laptop', '2023-03-07 08:13:30'),
(3, 5, '', '03/07/2023', 'Charles(Karl)', 'installed a class A battery purchased from Microtrade on 06/08/2021', '2023-03-07 08:21:43'),
(4, 9, '', '03/07/2023', 'Charles(Karl)', 'former owner is MIS HEAD (Pepito Vacalares)', '2023-03-07 08:23:58'),
(5, 16, '', '09/08/2023', 'Charles(Karl)', 'former owner accounting clerk - main office', '2023-03-08 01:04:50'),
(6, 36, '', '03/08/2023', 'Charles(Karl)', 'former owner PC accounting clerk.', '2023-03-08 02:33:54'),
(7, 38, '', '03/08/2023', 'Charles(Karl)', 'former owner EA/AA user (IRA PANGAN) old laptop', '2023-03-08 02:42:32'),
(8, 45, '', '03/08/2023', 'Charles(Karl)', 'old price of the PC is 9,735.00\r\n ', '2023-03-08 03:03:36'),
(9, 63, '', '03/08/2023', 'Charles(Karl)', 'former owner General Bookkeeper (no date)', '2023-03-08 06:06:56'),
(10, 87, '', '', '', 'used to Sig Cards', '2023-03-10 07:33:26'),
(11, 88, '', '', '', 'Assembled PC', '2023-03-10 07:38:38'),
(12, 89, '', '', '', 'Assembled PC', '2023-03-10 07:38:54'),
(13, 91, '', '', '', 'Assembled PC ', '2023-03-10 07:41:58'),
(14, 93, '', '', '', 'Assembled PC', '2023-03-10 07:48:53'),
(15, 48, '', '03/16/2023', 'Charles', 'Reinstalled OS and configure the PC. ', '2023-03-16 08:28:50'),
(16, 65, '', '03/16/2023', 'Charles', 'installed RAMSTA SSD and Kingston 4GB RAM on 03/14/2023. Reinstalled OS and Configured', '2023-03-16 08:33:51'),
(17, 77, '', '03/17/2023', 'charles', 'hardware cleaning + applied thermal paste [03/16/2023]', '2023-03-17 00:53:20'),
(18, 76, '', '03/17/2023', 'Charles', 'hardware cleaning + applied thermal paste [03/16/2023]', '2023-03-17 00:53:53'),
(19, 53, '', '3/14/2023', 'Louelven', 'Installed RAMSTA SSD and CRUCIAL 4GB RAM on 03/14/2023. Reinstalled OS and Configured', '2023-03-17 05:25:41'),
(20, 69, '', '3/14/2023', 'Louelven', 'Installed RAMSTA SSD and Kingston 4GB RAM on 03/14/2023. Reinstalled OS and Configured', '2023-03-17 05:27:13'),
(21, 21, '', '3/14/2023', 'Louelven', 'installed RAMSTA SSD and CRUCIAL 4GB RAM on 03/14/2023. Reinstalled OS and Configured', '2023-03-17 05:27:56'),
(22, 7, '', '03/24/2023', 'Charles', 'windows 7 migrated to windows 10 for record keeping', '2023-03-24 06:59:10'),
(23, 60, '', '03/31/2023', 'Charles', 'Take over taweng task  for reinstall OS. installed missing drivers 03/31/2023', '2023-04-12 02:41:04'),
(24, 89, '', '04/12/2023', 'Charles', 'installed new spare PSU due to power supply defection.  ', '2023-04-13 01:36:30'),
(25, 1, '', '04/13/2023', 'Charles', 'change equipments mobo from MSI A320M A PRO to MSI A320M  PRO VH, from 16GB RAM 2666mhz to 16GB RAM 3200mhz, from process ryzen 5 3200g to ryzen 5 5600g  from the butuan pc user', '2023-04-13 07:59:30'),
(26, 59, '', '04/18/2023', 'Charles', 'Installed new HDD 500GB Seagate due to corrupted OS, the old HDD need to reformat.', '2023-04-25 05:58:10'),
(27, 79, '', '4/18/23', 'Louelven A. Querol', 'Installed a new monitor INPLAY 19\"', '2023-05-05 06:26:18'),
(29, 61, '', '5/2/2023', 'Charles', 'Change PC case (In Ms. Caiña, Claire user)', '2023-05-05 06:41:29'),
(30, 85, '', '05/09/2023', 'Charles', 'Conducted General Cleaning, Thermal Paste on Processor, defect power switch, reset switch as power switch. ', '2023-05-09 06:51:45'),
(31, 85, '', '05/10/2023', 'Charles', 'Reinstalled OS Windows 10 32bit due to corrupted OS. ', '2023-05-10 05:11:26'),
(32, 42, '', '03/14/2022', '', 'ECS Motherboard added to Desktop PC', '2023-05-15 02:29:56'),
(33, 61, '', '05/16/2023', 'Charles', 'planning the former loans teller PC (Ms. Caiña, Claire) will be transferred to AO of Mr. Jalit.', '2023-05-16 03:32:28'),
(34, 10, '', '05/17/2023', 'Charles', 'Installed new PC Case ', '2023-05-17 05:50:35'),
(35, 10, '', '03/17/2023', 'Charles', 'Clean mobo and power supply for migration of PC case ', '2023-05-17 05:51:15'),
(36, 12, '', '5/23/2023', 'Charles', 'the old laptop of Loans Officer will be transferred to Compliance Specialist Supervisor (Ms. Kristin Vacalares) as spare and field used for Compliance Department. \r\nThe laptop has a  power problem. ', '2023-05-23 03:52:49'),
(37, 85, '', '06/01/2023', 'Taweng and Charles', 'Reinstalled OS due to opening of virus excel file. 05/31/2023 in the afternoon, Taweng reinstalled the OS. 06/01/2023 in the morning, reinstalled OS due to slow performance and delete the virus file. ', '2023-06-01 07:07:09'),
(38, 85, '', '06/01/2023', 'Taweng and Charles', 'Installed new HDD 500 GB', '2023-06-01 07:07:46'),
(39, 61, '', '06/06/2023', 'Charles', 'On 06/05/23,  installed the former loans teller PC (Ms. Caiña, Claire) on the 2nd floor and will be named as AO PC(Mr. Jalit) ', '2023-06-06 05:25:14'),
(40, 88, '', '06/06/2023', 'Charles', 'the old PC of the Loans Supervisor was at the MIS department. This will be used as testing or spare. ', '2023-06-06 05:55:08'),
(41, 89, '', '06/09/2023', 'Charles', 'Latest Checked, USB port from the motherboard and PC case is defective. Recommend changing the PC case to use the USB port of the PC case. ', '2023-06-09 08:03:50'),
(42, 157, '', '06/09/2023', 'Charles', 'Installed new HDD (IT replenishment) and reinstalled OS due to defective HDD. ', '2023-06-09 08:10:30'),
(43, 156, '', '06/14/2023', 'Charles & Taweng', '10% HDD health checked by Taweng. Conducted troubleshooting for HDD. Which needed to be replaced with the HDD as soon as possible due to brownout. UPS has no BACK UP.', '2023-06-14 06:12:56'),
(44, 52, '', '06/16/2023', 'Charles', 'Unexpected shutdown and OS reboot/Cannot proceed to Windows login. we performed basic troubleshooting. Even after taking measures, the symptoms persist. ', '2023-06-16 07:24:45'),
(45, 85, '', '07/18/2023', 'Charles', 'A new operating system was installed on 07/17/2023 due to a corrupt OS caused by electric fluctuations, while the HDD health remained at 100%.', '2023-07-18 01:06:55'),
(46, 85, '', '08/14/2023', 'Charles(Karl)', 'former owner Savings/Loans teller', '2023-08-14 04:01:16'),
(47, 29, '', '08/30/2023', 'Charles', 'Replaced PSU due to low power output old PSU. ', '2023-08-31 05:12:00'),
(48, 60, '', '09/04/2023', 'Charles', 'Hardware Cleaning, RAM Cleaning, Checked HDD Health (100 percent), Temporary Files Cleaning, and scanned anti-virus for viruses', '2023-09-06 03:52:57'),
(49, 46, '', '09/20/2023', 'Charles', 'Reformat PC due to missing and corrupted windows program files.', '2023-09-21 01:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `posid` int(11) NOT NULL,
  `posname` varchar(70) NOT NULL,
  `posak` varchar(70) NOT NULL,
  `poscode` varchar(11) NOT NULL,
  `posstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`posid`, `posname`, `posak`, `poscode`, `posstamp`) VALUES
(1, 'Assistant Manager', 'AM', '101', '2022-01-18 07:39:55'),
(2, 'HR Associate', 'HR A', '', '2022-06-16 07:35:36'),
(3, 'HR Specialist', 'HRS', '', '2022-06-21 07:46:47'),
(4, 'MIS Assistant', 'MISA', '', '2022-06-21 07:47:30'),
(5, 'Teller', 'TLLR', '', '2022-06-21 07:47:41'),
(6, 'Cashier', 'CSHR', '', '2022-06-21 07:47:59'),
(7, 'Branch Manager', 'BM', '', '2022-06-21 07:48:18'),
(8, 'Accounting Clerk', 'AC', '', '2022-06-21 07:48:58'),
(9, 'Loan Processor', 'LP', '', '2022-06-21 07:49:12'),
(10, 'Account Officer', 'AO', '', '2022-06-21 07:49:27'),
(11, 'Loans Bookkeeper', 'LB', '', '2022-06-21 07:49:38'),
(12, 'Executive Assistant', 'EA', '', '2022-06-21 07:50:19'),
(13, 'Customer Associate', 'CA', '', '2022-06-21 07:50:27'),
(14, 'General Bookkeeper', 'GB', '', '2022-06-21 07:50:47'),
(15, 'Loan Officer', 'LO', '', '2022-06-21 07:52:45'),
(16, 'Assistant Cashier', 'ACSHR', '', '2022-06-21 07:53:14'),
(17, 'Driver', 'DRVR', '', '2022-06-21 07:53:52'),
(18, 'Office Associate', 'OA', '', '2022-06-21 07:54:05'),
(19, 'Loan Supervisor', 'LS', '', '2022-06-21 07:54:43'),
(20, 'MFU Supervisor', 'MFUS', '', '2022-06-21 07:55:48'),
(21, 'Manager', 'MNGR', '', '2022-06-21 07:56:35'),
(22, 'Other Loans Supervisor', 'OLS', '', '2022-06-21 07:57:16'),
(23, 'Messenger', 'MSNGR', '', '2022-06-21 07:57:31'),
(24, 'Chairman', '', '', '2022-06-21 07:58:22'),
(25, 'Vice Chairman', 'VC', '', '2022-06-21 07:58:39'),
(26, 'President & CEO', '', '', '2022-06-21 07:59:05'),
(27, 'Director', '', '', '2022-06-21 07:59:20'),
(28, 'Independent Director', 'ID', '', '2022-06-21 07:59:37'),
(29, 'Compliance Officer', 'CO', '', '2022-06-21 08:00:31'),
(30, 'Junior Accountant', 'JA', '', '2022-06-21 08:00:55'),
(31, 'Compliance Specialist', 'CS', '', '2022-06-21 08:01:25'),
(32, 'Business Development Assistant', 'BDA', '', '2022-06-21 08:01:47'),
(33, 'Administrative Assistant', 'AA', '', '2022-06-21 08:02:27'),
(34, 'Appraiser I', 'App.I', '', '2022-06-24 09:01:48'),
(35, 'SME Associate', 'SMEA', '', '2023-02-08 07:02:33'),
(36, 'Associate', '', '', '2023-02-08 07:02:37'),
(37, 'Auditor', 'AUDTR', '', '2023-02-08 07:08:25'),
(38, 'BDO Assistant', 'BDOA', '', '2023-02-08 07:14:16'),
(39, 'Asset Management & Legal Supervisor', 'AMLS', '', '2023-02-08 07:31:22'),
(40, 'SME Supervisor', 'SMES', '', '2023-02-08 07:32:49'),
(41, 'Supervisor', 'SUPSR', '', '2023-02-08 07:33:02'),
(42, 'Technical Assistant', 'TECHASST', '', '2023-02-09 03:02:50'),
(43, 'Loans Processor Assistant', 'LPA', '', '2023-02-10 01:45:07'),
(44, 'BLU HEAD', 'BLUH', '', '2023-02-22 07:28:25'),
(45, 'Janitor', 'JNTR', '', '2023-02-27 07:29:14'),
(46, 'Messenger', 'MSSGR', '', '2023-02-27 07:29:20'),
(47, 'Janitor / Messenger', 'JNTR/MSSNGR', '', '2023-02-27 07:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `positionlvl`
--

CREATE TABLE `positionlvl` (
  `poslvlid` int(11) NOT NULL,
  `poslevel` varchar(50) NOT NULL,
  `poslvlstamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positionlvl`
--

INSERT INTO `positionlvl` (`poslvlid`, `poslevel`, `poslvlstamp`) VALUES
(1, '', '2022-06-17 06:48:50'),
(2, 'I', '2022-06-17 06:48:52'),
(3, 'II', '2022-06-17 06:48:55'),
(4, 'III', '2022-06-17 06:48:57'),
(5, 'IV', '2022-06-17 06:49:00'),
(6, 'V', '2022-06-17 06:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_roles` int(11) NOT NULL,
  `user_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sgcard_card`
--

CREATE TABLE `sgcard_card` (
  `sgcrd_id` int(11) NOT NULL,
  `card_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sgcard_card`
--

INSERT INTO `sgcard_card` (`sgcrd_id`, `card_front`, `card_back`, `custid`, `created_at`, `updated_at`) VALUES
(9, 'img/uploads/01 - MAIN/James, Lebron/SIGCARD-front.jpg', 'img/uploads/01 - MAIN/James, Lebron/SIGCARD-bck.jpg', 2, '2024-02-21 17:46:39', '2024-02-21 17:46:39'),
(10, 'img/uploads/03 - SALAY/Curry, Stephen/SIGCARD-front.jpg', 'img/uploads/03 - SALAY/Curry, Stephen/SIGCARD-bck.jpg', 3, '2024-02-21 18:25:55', '2024-02-21 18:25:55'),
(11, 'img/uploads/02 - JASAAN/Durant, Kevin/SIGCARD-front.jpg', 'img/uploads/02 - JASAAN/Durant, Kevin/SIGCARD-bck.jpg', 5, '2024-02-21 19:52:35', '2024-02-21 19:52:35'),
(12, 'img/uploads/01 - MAIN/Davis, Anthony/SIGCARD-front.jpg', 'img/uploads/01 - MAIN/Davis, Anthony/SIGCARD-bck.jpg', 6, '2024-02-21 19:55:54', '2024-02-21 19:55:54'),
(13, 'img/uploads/04 - CDO/Jokic, Nikola/SIGCARD-front.jpg', 'img/uploads/04 - CDO/Jokic, Nikola/SIGCARD-bck.jpg', 7, '2024-02-21 19:59:04', '2024-02-21 19:59:04'),
(14, 'img/uploads/06 - GINGOOG BLU/Harden, James/SIGCARD-front.jpg', 'img/uploads/06 - GINGOOG BLU/Harden, James/SIGCARD-bck.jpg', 8, '2024-02-21 21:09:53', '2024-02-21 21:09:53'),
(22, 'img/uploads/04 - CDO/Murray, Jamal/SIGCARD-front.jpg', 'img/uploads/04 - CDO/Murray, Jamal/SIGCARD-bck.jpg', 9, '2024-02-21 22:20:08', '2024-02-21 22:20:08'),
(23, 'img/uploads/05 - MARAMAG/Doe, John/SIGCARD-front.jpg', 'img/uploads/05 - MARAMAG/Doe, John/SIGCARD-bck.jpg', 10, '2024-02-22 17:38:02', '2024-02-22 17:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `sgcard_customer`
--

CREATE TABLE `sgcard_customer` (
  `custid` int(11) NOT NULL,
  `client_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `svngs_accno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_opened` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','doormant') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `suffix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sgcard_customer`
--

INSERT INTO `sgcard_customer` (`custid`, `client_ID`, `svngs_accno`, `amount_opened`, `fname`, `mname`, `lname`, `status`, `suffix`, `birthdate`, `address`, `photo`, `created_at`, `updated_at`, `brid`) VALUES
(2, '4151-2252', '265-2244', 1000, 'Lebron', 'King', 'James', 'active', NULL, '2024-02-07', 'Gingoog City, Misamis Oriental', 'img/uploads/customers/1708417605.png', '2024-02-20 00:26:45', '2024-02-20 00:26:45', 2),
(3, '5441-522', '110-524', 1000, 'Stephen', 'Shooter', 'Curry', 'active', NULL, '2024-01-18', 'Salay, MIsamis Oriental', 'img/uploads/customers/1708566879.png', '2024-02-21 17:54:39', '2024-02-21 17:54:39', 4),
(5, '115-221', '1100-22', 1000, 'Kevin', 'Maputol', 'Durant', 'active', NULL, '1985-08-01', 'Jasaan, Misamis Oriental', 'img/uploads/customers/1708568911.png', '2024-02-21 18:28:31', '2024-02-21 18:28:31', 3),
(6, '215-2240', '221-22', 100, 'Anthony', 'Center', 'Davis', 'active', NULL, '2023-07-12', 'Talisayan, Misamis Oriental', 'img/uploads/customers/1708574086.png', '2024-02-21 19:54:46', '2024-02-21 19:54:46', 2),
(7, '112-411', '114-11', 500, 'Nikola', 'Joker', 'Jokic', 'active', NULL, '1996-01-16', 'Cagayan De Oro, Misamis Oriental', 'img/uploads/customers/1708574305.png', '2024-02-21 19:58:26', '2024-02-21 19:58:26', 5),
(8, '2111-2224', '12112-511', 1200, 'James', 'Beard', 'Harden', 'active', NULL, '1999-06-08', 'Maramag Bukidnon', 'img/uploads/customers/1708578386.png', '2024-02-21 21:06:26', '2024-02-21 21:06:26', 6),
(9, '4564-1004', '141-41', 1000, 'Jamal', 'Rick', 'Murray', 'active', NULL, '1998-01-13', 'Cagayan De Oro City, Misamis Oriental', 'img/uploads/customers/1708578777.png', '2024-02-21 21:12:57', '2024-02-21 21:12:57', 5),
(10, '023-552', '2212-224', 1000, 'John', 'Doe', 'Doe', 'active', NULL, '2023-05-11', 'Maramag, Bukidnon', 'img/uploads/customers/1708652150.png', '2024-02-22 17:35:50', '2024-02-22 17:35:50', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sgcard_dprivacy`
--

CREATE TABLE `sgcard_dprivacy` (
  `dpr_id` int(11) NOT NULL,
  `dpr_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpr_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sgcard_dprivacy`
--

INSERT INTO `sgcard_dprivacy` (`dpr_id`, `dpr_front`, `dpr_back`, `created_at`, `updated_at`, `custid`) VALUES
(9, 'img/uploads/01 - MAIN/James, Lebron/DATA PRIVACY-front.jpg', 'img/uploads/01 - MAIN/James, Lebron/DATA PRIVACY-bck.jpg', '2024-02-21 17:46:41', '2024-02-21 17:46:41', 2),
(10, 'img/uploads/03 - SALAY/Curry, Stephen/DATA PRIVACY-front.jpg', 'img/uploads/03 - SALAY/Curry, Stephen/DATA PRIVACY-bck.jpg', '2024-02-21 18:25:59', '2024-02-21 18:25:59', 3),
(11, 'img/uploads/02 - JASAAN/Durant, Kevin/DATA PRIVACY-front.jpg', 'img/uploads/02 - JASAAN/Durant, Kevin/DATA PRIVACY-bck.jpg', '2024-02-21 19:52:38', '2024-02-21 19:52:38', 5),
(12, 'img/uploads/01 - MAIN/Davis, Anthony/DATA PRIVACY-front.jpg', 'img/uploads/01 - MAIN/Davis, Anthony/DATA PRIVACY-bck.jpg', '2024-02-21 19:55:57', '2024-02-21 19:55:57', 6),
(13, 'img/uploads/04 - CDO/Jokic, Nikola/DATA PRIVACY-front.jpg', 'img/uploads/04 - CDO/Jokic, Nikola/DATA PRIVACY-bck.jpg', '2024-02-21 19:59:07', '2024-02-21 19:59:07', 7),
(14, 'img/uploads/06 - GINGOOG BLU/Harden, James/DATA PRIVACY-front.jpg', 'img/uploads/06 - GINGOOG BLU/Harden, James/DATA PRIVACY-bck.jpg', '2024-02-21 21:09:53', '2024-02-21 21:09:53', 8),
(19, 'img/uploads/04 - CDO/Murray, Jamal/DATA PRIVACY-front.jpg', 'img/uploads/04 - CDO/Murray, Jamal/DATA PRIVACY-bck.jpg', '2024-02-21 21:44:02', '2024-02-21 21:44:02', 9),
(23, 'img/uploads/05 - MARAMAG/Doe, John/DATA PRIVACY-front.jpg', 'img/uploads/05 - MARAMAG/Doe, John/DATA PRIVACY-bck.jpg', '2024-02-22 17:38:05', '2024-02-22 17:38:05', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sgcard_nais`
--

CREATE TABLE `sgcard_nais` (
  `naisid` int(11) NOT NULL,
  `nais_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nais_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sgcard_nais`
--

INSERT INTO `sgcard_nais` (`naisid`, `nais_front`, `nais_back`, `custid`, `created_at`, `updated_at`) VALUES
(9, 'img/uploads/01 - MAIN/James, Lebron/NAIS-front.jpg', 'img/uploads/01 - MAIN/James, Lebron/NAIS-bck.jpg', 2, '2024-02-21 17:46:40', '2024-02-21 17:46:40'),
(10, 'img/uploads/03 - SALAY/Curry, Stephen/NAIS-front.jpg', 'img/uploads/03 - SALAY/Curry, Stephen/NAIS-bck.jpg', 3, '2024-02-21 18:25:58', '2024-02-21 18:25:58'),
(11, 'img/uploads/02 - JASAAN/Durant, Kevin/NAIS-front.jpg', 'img/uploads/02 - JASAAN/Durant, Kevin/NAIS-bck.jpg', 5, '2024-02-21 19:52:37', '2024-02-21 19:52:37'),
(12, 'img/uploads/01 - MAIN/Davis, Anthony/NAIS-front.jpg', 'img/uploads/01 - MAIN/Davis, Anthony/NAIS-bck.jpg', 6, '2024-02-21 19:55:55', '2024-02-21 19:55:55'),
(13, 'img/uploads/04 - CDO/Jokic, Nikola/NAIS-front.jpg', 'img/uploads/04 - CDO/Jokic, Nikola/NAIS-bck.jpg', 7, '2024-02-21 19:59:06', '2024-02-21 19:59:06'),
(14, 'img/uploads/06 - GINGOOG BLU/Harden, James/NAIS-front.jpg', 'img/uploads/06 - GINGOOG BLU/Harden, James/NAIS-bck.jpg', 8, '2024-02-21 21:09:53', '2024-02-21 21:09:53'),
(19, 'img/uploads/04 - CDO/Murray, Jamal/NAIS-front.jpg', 'img/uploads/04 - CDO/Murray, Jamal/NAIS-bck.jpg', 9, '2024-02-21 21:44:01', '2024-02-21 21:44:01'),
(23, 'img/uploads/05 - MARAMAG/Doe, John/NAIS-front.jpg', 'img/uploads/05 - MARAMAG/Doe, John/NAIS-bck.jpg', 10, '2024-02-22 17:38:03', '2024-02-22 17:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `ulevel`
--

CREATE TABLE `ulevel` (
  `ulid` int(11) NOT NULL,
  `userlevelc` int(20) NOT NULL,
  `userlvldesc` varchar(80) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulevel`
--

INSERT INTO `ulevel` (`ulid`, `userlevelc`, `userlvldesc`, `timestamp`) VALUES
(1, 0, 'ADMIN', '2023-03-28 03:23:58'),
(2, 1, 'IT', '2023-03-28 03:19:23'),
(3, 2, 'HR', '2023-03-28 03:19:27'),
(4, 3, 'COMPLIANCE', '2023-03-28 03:19:33'),
(5, 4, 'AUDIT', '2023-03-28 03:19:38'),
(6, 5, 'REGULAR', '2023-03-28 03:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorid` int(12) NOT NULL,
  `vencode` varchar(20) NOT NULL,
  `venname` varchar(120) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorid`, `vencode`, `venname`, `timestamp`) VALUES
(1, 'vendor20220276', 'Gaisano Interpace [CDO]', '2022-02-27 09:45:48'),
(2, 'vendor2022027', 'HUBE Computer Store [CDO]', '2022-02-27 09:45:57'),
(3, 'vendor20220234', 'Mastertech [CDO]', '2022-02-27 09:46:11'),
(4, 'vendor20220220', 'Dataworld [CDO]', '2022-02-27 09:46:15'),
(5, 'vendor20220739', 'Microtech [CDO]', '2022-07-05 08:12:30'),
(6, 'vendor20230335', 'Microtrade [CDO]', '2023-03-23 05:41:37'),
(7, 'vendor20230390', 'Various Different Vendors (Lap', '2023-03-23 06:06:06'),
(8, 'vendor2023059', 'Columbia Computer  Center [CDO]', '2023-05-24 07:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `workexp`
--

CREATE TABLE `workexp` (
  `workexpid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `position` varchar(50) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `institution` varchar(50) NOT NULL,
  `workexpstamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `workexpcreate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `workshopsid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(70) NOT NULL,
  `wfromdate` date NOT NULL,
  `wtodate` date NOT NULL,
  `conducted` varchar(50) NOT NULL,
  `wstamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `wcreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`accessid`),
  ADD KEY `access` (`uid`);

--
-- Indexes for table `appvleave`
--
ALTER TABLE `appvleave`
  ADD PRIMARY KEY (`applvid`),
  ADD KEY `leave_approval_officer` (`leaveid`);

--
-- Indexes for table `assettype`
--
ALTER TABLE `assettype`
  ADD PRIMARY KEY (`assettypeid`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `benefits_employee` (`uid`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`brid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `branch` (`branch`);

--
-- Indexes for table `compremarks`
--
ALTER TABLE `compremarks`
  ADD PRIMARY KEY (`crid`),
  ADD KEY `remarks_component` (`compid`);

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
  ADD PRIMARY KEY (`depid`),
  ADD KEY `employee_dependents` (`uid`);

--
-- Indexes for table `deptsect`
--
ALTER TABLE `deptsect`
  ADD PRIMARY KEY (`deptsectid`);

--
-- Indexes for table `desktop`
--
ALTER TABLE `desktop`
  ADD PRIMARY KEY (`deskid`),
  ADD KEY `desktop_users` (`uid`),
  ADD KEY `desktop_usersinde2` (`drmkid`),
  ADD KEY `users_pc2` (`equserid`);

--
-- Indexes for table `educational`
--
ALTER TABLE `educational`
  ADD PRIMARY KEY (`educid`),
  ADD KEY `emplyoyee_educational` (`uid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `user_level` (`userlevel`);

--
-- Indexes for table `empstatus`
--
ALTER TABLE `empstatus`
  ADD PRIMARY KEY (`empstatid`);

--
-- Indexes for table `equip`
--
ALTER TABLE `equip`
  ADD PRIMARY KEY (`equipid`),
  ADD KEY `employee_equipment` (`userid`),
  ADD KEY `users_equipments` (`equserid`);

--
-- Indexes for table `equsers`
--
ALTER TABLE `equsers`
  ADD PRIMARY KEY (`equid`),
  ADD KEY `userseq_branch` (`branchu`),
  ADD KEY `usereq_level` (`userlevel`);

--
-- Indexes for table `eremarks`
--
ALTER TABLE `eremarks`
  ADD PRIMARY KEY (`rmkid`),
  ADD KEY `remarks_equipment` (`equip_id`);

--
-- Indexes for table `image_uploads`
--
ALTER TABLE `image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itorder`
--
ALTER TABLE `itorder`
  ADD PRIMARY KEY (`itorderid`),
  ADD KEY `vendor_order` (`vendor`),
  ADD KEY `branch_order` (`itorderbr`),
  ADD KEY `updates_order` (`updatestamp`),
  ADD KEY `workstation_order` (`workstation`);

--
-- Indexes for table `itorder_updates`
--
ALTER TABLE `itorder_updates`
  ADD PRIMARY KEY (`updatesid`),
  ADD KEY `updates_itorder` (`itorderitem`);

--
-- Indexes for table `itprofile`
--
ALTER TABLE `itprofile`
  ADD PRIMARY KEY (`itprofid`),
  ADD KEY `itprofile_employee` (`uid`);

--
-- Indexes for table `itreserved_in`
--
ALTER TABLE `itreserved_in`
  ADD PRIMARY KEY (`itrin_id`);

--
-- Indexes for table `itreserved_out`
--
ALTER TABLE `itreserved_out`
  ADD PRIMARY KEY (`itrout_id`),
  ADD KEY `itout` (`itrin_id`),
  ADD KEY `workstation_itout` (`outequser`);

--
-- Indexes for table `leavecredits`
--
ALTER TABLE `leavecredits`
  ADD PRIMARY KEY (`leavecid`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`leaveid`),
  ADD KEY `leave_employee` (`uid`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`licid`);

--
-- Indexes for table `licensespc`
--
ALTER TABLE `licensespc`
  ADD PRIMARY KEY (`licpcid`),
  ADD KEY `license_pc` (`licworkstation`),
  ADD KEY `licenseused_pc` (`licnamepc`);

--
-- Indexes for table `licpc_remarks`
--
ALTER TABLE `licpc_remarks`
  ADD PRIMARY KEY (`licpcrid`),
  ADD KEY `remarks_licensepc` (`licpc`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logs_id`);

--
-- Indexes for table `maf`
--
ALTER TABLE `maf`
  ADD PRIMARY KEY (`mafid`),
  ADD KEY `maf_employee` (`uid`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`memo_id`),
  ADD KEY `user_used` (`user_used`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`psid`),
  ADD KEY `payslip_user` (`uid`);

--
-- Indexes for table `pccomponents`
--
ALTER TABLE `pccomponents`
  ADD PRIMARY KEY (`compid`),
  ADD KEY `desktop_components` (`pcid`);

--
-- Indexes for table `pcremarks`
--
ALTER TABLE `pcremarks`
  ADD PRIMARY KEY (`pcrmkid`),
  ADD KEY `remarks_pc` (`pcid`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `positionlvl`
--
ALTER TABLE `positionlvl`
  ADD PRIMARY KEY (`poslvlid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sgcard_card`
--
ALTER TABLE `sgcard_card`
  ADD PRIMARY KEY (`sgcrd_id`),
  ADD KEY `sgcard_card_custid_foreign` (`custid`);

--
-- Indexes for table `sgcard_customer`
--
ALTER TABLE `sgcard_customer`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `sgcard_customer_client_id_unique` (`client_ID`),
  ADD UNIQUE KEY `sgcard_customer_svngs_accno_unique` (`svngs_accno`),
  ADD KEY `sgcard_customer_brid_foreign` (`brid`);

--
-- Indexes for table `sgcard_dprivacy`
--
ALTER TABLE `sgcard_dprivacy`
  ADD PRIMARY KEY (`dpr_id`),
  ADD KEY `sgcard_dprivacy_custid_foreign` (`custid`);

--
-- Indexes for table `sgcard_nais`
--
ALTER TABLE `sgcard_nais`
  ADD PRIMARY KEY (`naisid`),
  ADD KEY `sgcard_nais_custid_foreign` (`custid`);

--
-- Indexes for table `ulevel`
--
ALTER TABLE `ulevel`
  ADD PRIMARY KEY (`ulid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `workexp`
--
ALTER TABLE `workexp`
  ADD PRIMARY KEY (`workexpid`),
  ADD KEY `employee_workingexperience` (`uid`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`workshopsid`),
  ADD KEY `employee_workshops` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `accessid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appvleave`
--
ALTER TABLE `appvleave`
  MODIFY `applvid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettype`
--
ALTER TABLE `assettype`
  MODIFY `assettypeid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `brid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `compremarks`
--
ALTER TABLE `compremarks`
  MODIFY `crid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dependents`
--
ALTER TABLE `dependents`
  MODIFY `depid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deptsect`
--
ALTER TABLE `deptsect`
  MODIFY `deptsectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `desktop`
--
ALTER TABLE `desktop`
  MODIFY `deskid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `educational`
--
ALTER TABLE `educational`
  MODIFY `educid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `empstatus`
--
ALTER TABLE `empstatus`
  MODIFY `empstatid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `equip`
--
ALTER TABLE `equip`
  MODIFY `equipid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `equsers`
--
ALTER TABLE `equsers`
  MODIFY `equid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `eremarks`
--
ALTER TABLE `eremarks`
  MODIFY `rmkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `image_uploads`
--
ALTER TABLE `image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itorder`
--
ALTER TABLE `itorder`
  MODIFY `itorderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `itorder_updates`
--
ALTER TABLE `itorder_updates`
  MODIFY `updatesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `itprofile`
--
ALTER TABLE `itprofile`
  MODIFY `itprofid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itreserved_in`
--
ALTER TABLE `itreserved_in`
  MODIFY `itrin_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `itreserved_out`
--
ALTER TABLE `itreserved_out`
  MODIFY `itrout_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `leavecredits`
--
ALTER TABLE `leavecredits`
  MODIFY `leavecid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `leaveid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `licid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `licensespc`
--
ALTER TABLE `licensespc`
  MODIFY `licpcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `licpc_remarks`
--
ALTER TABLE `licpc_remarks`
  MODIFY `licpcrid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `logs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `maf`
--
ALTER TABLE `maf`
  MODIFY `mafid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `memo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pccomponents`
--
ALTER TABLE `pccomponents`
  MODIFY `compid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pcremarks`
--
ALTER TABLE `pcremarks`
  MODIFY `pcrmkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `posid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `positionlvl`
--
ALTER TABLE `positionlvl`
  MODIFY `poslvlid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sgcard_card`
--
ALTER TABLE `sgcard_card`
  MODIFY `sgcrd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sgcard_customer`
--
ALTER TABLE `sgcard_customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sgcard_dprivacy`
--
ALTER TABLE `sgcard_dprivacy`
  MODIFY `dpr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sgcard_nais`
--
ALTER TABLE `sgcard_nais`
  MODIFY `naisid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ulevel`
--
ALTER TABLE `ulevel`
  MODIFY `ulid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `workexp`
--
ALTER TABLE `workexp`
  MODIFY `workexpid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `workshopsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `benefits`
--
ALTER TABLE `benefits`
  ADD CONSTRAINT `benefits_employee` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `branch` FOREIGN KEY (`branch`) REFERENCES `branch` (`brid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `compremarks`
--
ALTER TABLE `compremarks`
  ADD CONSTRAINT `remarks_component` FOREIGN KEY (`compid`) REFERENCES `pccomponents` (`compid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `dependents`
--
ALTER TABLE `dependents`
  ADD CONSTRAINT `employee_dependents` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `desktop`
--
ALTER TABLE `desktop`
  ADD CONSTRAINT `desktop_users` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `users_pc2` FOREIGN KEY (`equserid`) REFERENCES `equsers` (`equid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `educational`
--
ALTER TABLE `educational`
  ADD CONSTRAINT `emplyoyee_educational` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `user_level` FOREIGN KEY (`userlevel`) REFERENCES `ulevel` (`ulid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `equip`
--
ALTER TABLE `equip`
  ADD CONSTRAINT `employee_equipment` FOREIGN KEY (`userid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `users_equipments` FOREIGN KEY (`equserid`) REFERENCES `equsers` (`equid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `equsers`
--
ALTER TABLE `equsers`
  ADD CONSTRAINT `usereq_level` FOREIGN KEY (`userlevel`) REFERENCES `ulevel` (`ulid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `userseq_branch` FOREIGN KEY (`branchu`) REFERENCES `branch` (`brid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `eremarks`
--
ALTER TABLE `eremarks`
  ADD CONSTRAINT `remarks_equipment` FOREIGN KEY (`equip_id`) REFERENCES `equip` (`equipid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `itorder`
--
ALTER TABLE `itorder`
  ADD CONSTRAINT `branch_order` FOREIGN KEY (`itorderbr`) REFERENCES `branch` (`brid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `vendor_order` FOREIGN KEY (`vendor`) REFERENCES `vendor` (`vendorid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `workstation_order` FOREIGN KEY (`workstation`) REFERENCES `desktop` (`deskid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `itorder_updates`
--
ALTER TABLE `itorder_updates`
  ADD CONSTRAINT `updates_itorder` FOREIGN KEY (`itorderitem`) REFERENCES `itorder` (`itorderid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `itprofile`
--
ALTER TABLE `itprofile`
  ADD CONSTRAINT `itprofile_employee` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `itreserved_out`
--
ALTER TABLE `itreserved_out`
  ADD CONSTRAINT `workstation_itout` FOREIGN KEY (`outequser`) REFERENCES `desktop` (`deskid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leave_employee` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `licensespc`
--
ALTER TABLE `licensespc`
  ADD CONSTRAINT `license_pc` FOREIGN KEY (`licworkstation`) REFERENCES `desktop` (`deskid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `licenseused_pc` FOREIGN KEY (`licnamepc`) REFERENCES `licenses` (`licid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `licpc_remarks`
--
ALTER TABLE `licpc_remarks`
  ADD CONSTRAINT `remarks_licensepc` FOREIGN KEY (`licpc`) REFERENCES `licensespc` (`licpcid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `maf`
--
ALTER TABLE `maf`
  ADD CONSTRAINT `maf_employee` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `memo`
--
ALTER TABLE `memo`
  ADD CONSTRAINT `memo_ibfk_1` FOREIGN KEY (`user_used`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `payslip`
--
ALTER TABLE `payslip`
  ADD CONSTRAINT `payslip_user` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `pccomponents`
--
ALTER TABLE `pccomponents`
  ADD CONSTRAINT `desktop_components` FOREIGN KEY (`pcid`) REFERENCES `desktop` (`deskid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `pcremarks`
--
ALTER TABLE `pcremarks`
  ADD CONSTRAINT `remarks_pc` FOREIGN KEY (`pcid`) REFERENCES `desktop` (`deskid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `sgcard_card`
--
ALTER TABLE `sgcard_card`
  ADD CONSTRAINT `sgcard_card_custid_foreign` FOREIGN KEY (`custid`) REFERENCES `sgcard_customer` (`custid`) ON DELETE CASCADE;

--
-- Constraints for table `sgcard_customer`
--
ALTER TABLE `sgcard_customer`
  ADD CONSTRAINT `sgcard_customer_brid_foreign` FOREIGN KEY (`brid`) REFERENCES `branch` (`brid`) ON DELETE CASCADE;

--
-- Constraints for table `sgcard_dprivacy`
--
ALTER TABLE `sgcard_dprivacy`
  ADD CONSTRAINT `sgcard_dprivacy_custid_foreign` FOREIGN KEY (`custid`) REFERENCES `sgcard_customer` (`custid`) ON DELETE CASCADE;

--
-- Constraints for table `sgcard_nais`
--
ALTER TABLE `sgcard_nais`
  ADD CONSTRAINT `sgcard_nais_custid_foreign` FOREIGN KEY (`custid`) REFERENCES `sgcard_customer` (`custid`) ON DELETE CASCADE;

--
-- Constraints for table `workexp`
--
ALTER TABLE `workexp`
  ADD CONSTRAINT `employee_workingexperience` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `workshops`
--
ALTER TABLE `workshops`
  ADD CONSTRAINT `employee_workshops` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
