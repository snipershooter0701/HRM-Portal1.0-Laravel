-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2023 at 11:57 AM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `id` int(11) NOT NULL,
  `HeadCode` int(11) NOT NULL,
  `HeadName` varchar(100) NOT NULL,
  `PHeadName` varchar(200) NOT NULL,
  `PHeadCode` varchar(50) DEFAULT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `isCashNature` int(11) NOT NULL DEFAULT '0',
  `isBankNature` int(11) NOT NULL DEFAULT '0',
  `HeadType` char(1) NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `supplier_id` varchar(50) DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `service_id` varchar(50) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateDate` datetime NOT NULL,
  `isSubType` int(11) NOT NULL DEFAULT '0',
  `subType` int(11) NOT NULL DEFAULT '1',
  `isStock` int(11) NOT NULL DEFAULT '0',
  `isFixedAssetSch` int(11) NOT NULL DEFAULT '0',
  `noteNo` varchar(20) DEFAULT NULL,
  `assetCode` varchar(20) DEFAULT NULL,
  `depCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`id`, `HeadCode`, `HeadName`, `PHeadName`, `PHeadCode`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `isCashNature`, `isBankNature`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `bank_id`, `service_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `isSubType`, `subType`, `isStock`, `isFixedAssetSch`, `noteNo`, `assetCode`, `depCode`) VALUES
(8, 50202, 'Accounts Payable', 'Current Liabilities', '502', 3, 1, 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:52:17', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(10, 1, 'Assets', 'COA', '0', 1, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(13, 10201, 'Cash', 'Current Asset', '102', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 12:07:11', '0', '2015-10-15 15:57:55', 0, 1, 0, 0, NULL, NULL, NULL),
(15, 1020101, 'Cash In Hand', 'Cash', '10201', 4, 1, 1, 1, 1, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-12 08:16:03', '0', '2016-05-23 12:05:43', 0, 1, 0, 0, NULL, NULL, NULL),
(16, 102, 'Current Asset', 'Assets', '1', 2, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '2018-07-07 11:23:00', 0, 1, 0, 0, '', '', ''),
(17, 502, 'Current Liabilities', 'Liabilities', '5', 2, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '2014-08-30 13:18:20', '0', '2015-10-15 19:49:21', 0, 1, 0, 0, '', '', ''),
(23, 401, 'Cost of Goods Solds', 'Expenses', '4', 2, 1, 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-02 10:28:34', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(24, 2, 'Shareholder\'s Equity', 'COA', '0', 1, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(25, 4, 'Expenses', 'COA', '0', 1, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '2', '2019-11-24 05:45:24', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(26, 101, 'Fixed Assets', 'Assets', '1', 2, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '2015-10-15 15:29:11', 0, 1, 0, 0, '', '', ''),
(27, 402, 'Over Head Cost', 'Expenses', '4', 2, 1, 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-04 10:01:58', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(29, 3, 'Income', 'COA', '0', 1, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(30, 5, 'Liabilities', 'COA', '0', 1, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '2013-07-04 12:32:07', '0', '2015-10-15 19:46:54', 0, 1, 0, 0, '', '', ''),
(31, 501, 'Long Term Liabilities', 'Liabilities', '5', 2, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '2014-08-30 13:18:20', '0', '2015-10-15 19:49:21', 0, 1, 0, 0, '', '', ''),
(33, 301, 'Direct Income', 'Income', '3', 2, 1, 1, 1, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-02 10:31:45', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(35, 302, 'Indirect Income', 'Income', '3', 2, 1, 1, 1, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-02 10:55:45', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, '', '', ''),
(36, 5020201, 'Supplier Payable', 'Accounts Payable', '50202', 4, 1, 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:52:44', '0', '0000-00-00 00:00:00', 1, 4, 0, 0, NULL, NULL, NULL),
(41, 10203, 'Prepaid Expenses', 'Current Asset', '102', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:45:19', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(43, 10204, 'Inventory', 'Current Asset', '102', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:48:32', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(44, 50203, 'Accrued Expenses', 'Current Liabilities', '502', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:50:20', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(46, 50101, 'Long-Term Debt', 'Long Term Liabilities', '501', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:51:45', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(47, 50102, 'Other Long-Term  Liabilities', 'Long Term Liabilities', '501', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 06:53:04', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(48, 201, 'Equity', 'Shareholder\'s Equity', '2', 2, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '2022-04-10 06:56:38', '0', '2022-04-10 06:56:38', 0, 1, 0, 0, NULL, NULL, NULL),
(49, 20101, 'Equity Capital', 'Equity', '201', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:31:33', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(50, 20102, 'Retained Earnings', 'Equity', '201', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 07:01:45', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(51, 10101, 'Property & Equipment', 'Fixed Assets', '101', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:35:53', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(52, 10102, 'Goodwills', 'Fixed Assets', '101', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-23 06:47:21', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(55, 40101, 'Cost of Goods Sold', 'Cost of Goods Solds', '401', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:13:52', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(57, 40201, 'Automobile', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:14:37', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(58, 40202, 'Bank Service Charges', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:15:32', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(59, 40203, 'Insurance', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:15:58', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(60, 40204, 'Interest Expenses', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:16:36', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(61, 40205, 'Payroll Expenses', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:17:08', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(62, 40206, 'Postage', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:17:26', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(63, 40207, 'Professional Fees', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:17:55', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(64, 40208, 'Repairs', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:18:38', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(65, 40209, 'Tools and Macchnery', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:28:02', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(66, 40210, 'Utilities', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 08:28:42', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(67, 4021001, 'Electic Bill', 'Utilities', '40210', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 09:05:45', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(68, 4021002, 'House Rent', 'Utilities', '40210', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 09:06:05', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(69, 10205, 'Cash at Bank', 'Current Asset', '102', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:44:19', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(75, 1010201, 'Goodwill', 'Goodwills', '10102', 4, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '15.00', '1', '2022-04-23 06:45:48', '0', '0000-00-00 00:00:00', 0, 1, 0, 1, NULL, 'GD001', NULL),
(77, 5020401, 'property sales', 'Unearned Revenue', '50204', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:40:48', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(78, 5010101, 'Debts', 'Long-Term Debt', '50101', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:41:49', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(79, 5010201, 'Other Long-Term  Liabilities', 'Other Long-Term  Liabilities', '50102', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:42:03', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(80, 2010101, 'Capital Fund', 'Equity Capital', '20101', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:42:36', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(81, 2010201, 'Current year Profit & Loss', 'Retained Earnings', '20102', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:42:53', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(82, 2010202, 'Last year Profit & Loss', 'Retained Earnings', '20102', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:43:03', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(84, 50201, 'Provisions', 'Current Liabilities', '502', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-10 11:46:00', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(85, 5020104, 'Depreciation of Goodwill', 'Depreciations', '50205', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-23 06:47:07', '0', '0000-00-00 00:00:00', 0, 1, 0, 1, NULL, NULL, 'GD001'),
(86, 50204, 'Unearned Revenue', 'Current Liabilities', '502', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 12:53:09', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(88, 10206, 'Advance', 'Current Asset', '102', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-11 11:56:56', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(89, 1020601, 'Advance against Employee', 'Advance', '10206', 4, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-11 11:57:18', '0', '0000-00-00 00:00:00', 1, 2, 0, 0, NULL, NULL, NULL),
(90, 1020602, 'Advance Against Customer', 'Advance', '10206', 4, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-11 11:57:35', '0', '0000-00-00 00:00:00', 1, 3, 0, 0, NULL, NULL, NULL),
(91, 1020102, 'CASHIER MERCHANT', 'Cash', '10201', 4, 1, 0, 0, 1, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-04 12:02:29', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(94, 40301, 'Purchase Account', 'Purchase Accounts', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '2022-04-16 10:31:43', '0', '2022-04-16 10:31:43', 0, 1, 0, 0, NULL, NULL, NULL),
(95, 4030102, 'Purchase', 'Purchase Account', '40201', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-16 10:33:59', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(96, 30103, 'Sales Revenue', 'Direct Income', '301', 3, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-01 12:33:51', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(97, 3010301, 'Sales Revenue', 'Sales Accounts', '30103', 4, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-01 12:28:00', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(99, 4020501, 'Salary Expense', 'Payroll Expenses', '40205', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-20 06:24:08', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(104, 5020102, 'Provision for npf contribution', 'Provisions', '50201', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-10 06:19:45', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(106, 5020101, 'Provision for State Income Tax', 'Provisions', '50201', 4, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-26 06:44:29', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(107, 40211, 'State Income Tax', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-26 06:44:46', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(108, 4021101, 'State Income Tax', 'State Income Tax', '40211', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-04-26 06:45:00', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(110, 40212, 'Employeer ICF Expense', 'Over Head Cost', '402', 3, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-10 06:35:37', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(111, 4021201, 'Employeer 1% ICF Expense', 'Employeer ICF Expense', '40212', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 11:34:02', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(112, 50205, 'Depreciations', 'Current Liabilities', '502', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '0', '2022-05-10 09:35:15', '0', '2022-05-10 09:35:15', 0, 1, 0, 0, NULL, NULL, NULL),
(191, 4020502, 'Employee 5 % NPF Expenses', 'Payroll Expenses', '40205', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 11:32:14', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(192, 4020503, 'Employee 10 % NPF Expenses', 'Payroll Expenses', '40205', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-05-17 11:32:36', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(221, 50206, 'Aoounts pay by name supplier', 'Current Liabilities', '502', 3, 1, 0, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-13 11:51:32', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(229, 10208, 'Accounts Receivable', 'Current Asset', '102', 3, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-16 07:05:42', '0', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(230, 1020801, 'Customer Receivable', 'Accounts Receivable', '10208', 4, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-16 07:07:17', '0', '0000-00-00 00:00:00', 1, 3, 0, 0, NULL, NULL, NULL),
(231, 1020802, 'Employee Receivable', 'Accounts Receivable', '10208', 4, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-16 07:06:58', '0', '0000-00-00 00:00:00', 1, 2, 0, 0, NULL, NULL, NULL),
(232, 1020401, 'Inventory account', 'Inventory', '10204', 4, 1, 0, 0, 0, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 07:53:16', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(233, 4010101, 'Cost of Goods Sold Account', 'Cost of Goods Sold', '40101', 4, 1, 0, 0, 0, 0, 'E', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 08:58:18', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(234, 30104, 'Service Accounts', 'Direct Income', '301', 3, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 16:23:37', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(235, 3010401, 'Service Account', 'Service Accounts', '30104', 4, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-06-15 16:24:11', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(238, 2116000001, '1-MDHossen', 'Employee Ledger', NULL, 4, 1, 1, 0, 0, 0, 'L', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2022-07-20 10:47:55', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(242, 30105, 'Sales returns and allowances', 'Direct Income', '301', 3, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-01 12:34:39', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(243, 30106, 'Sales Discounts', 'Direct Income', '301', 3, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-01 12:34:55', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(244, 1020103, 'E-Dahab', 'Cash', '10201', 4, 1, 0, 0, 1, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-04 12:03:57', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(245, 1020104, 'MERCHANT', 'Cash', '10201', 4, 1, 0, 0, 1, 0, 'A', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-04 12:04:45', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL),
(246, 30107, 'Purchase Discount', 'Direct Income', '301', 3, 1, 0, 0, 0, 0, 'I', 0, 0, NULL, NULL, NULL, NULL, '0.00', '1', '2023-03-11 14:31:23', '', '0000-00-00 00:00:00', 0, 1, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `acc_monthly_balance`
--

CREATE TABLE `acc_monthly_balance` (
  `id` int(11) NOT NULL,
  `fyear` int(11) NOT NULL,
  `COAID` int(11) NOT NULL,
  `balance1` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance2` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance3` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance4` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance5` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance6` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance7` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance8` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance9` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance10` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance11` decimal(18,2) NOT NULL DEFAULT '0.00',
  `balance12` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalBalance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `updatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_monthly_balance`
--

INSERT INTO `acc_monthly_balance` (`id`, `fyear`, `COAID`, `balance1`, `balance2`, `balance3`, `balance4`, `balance5`, `balance6`, `balance7`, `balance8`, `balance9`, `balance10`, `balance11`, `balance12`, `totalBalance`, `updatedDate`) VALUES
(10, 3, 1020401, '0.00', '0.00', '7695.30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(11, 3, 1020101, '0.00', '0.00', '229.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(12, 3, 5020201, '0.00', '0.00', '2604.30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:54'),
(13, 3, 1020102, '0.00', '0.00', '38810.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:10:55'),
(14, 3, 3010301, '0.00', '0.00', '9227.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(15, 3, 4010101, '0.00', '0.00', '10643.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(16, 3, 4021101, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(17, 3, 5020101, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(18, 3, 1020103, '0.00', '0.00', '2561.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-19 09:38:46'),
(19, 3, 1020104, '0.00', '0.00', '13.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-18 11:42:15'),
(20, 3, 2010101, '0.00', '0.00', '48120.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-18 10:36:45'),
(21, 3, 1020801, '0.00', '0.00', '82.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2023-03-14 02:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `acc_opening_balance`
--

CREATE TABLE `acc_opening_balance` (
  `id` int(11) NOT NULL,
  `fyear` int(11) NOT NULL,
  `COAID` int(11) NOT NULL,
  `subType` int(11) NOT NULL DEFAULT '1',
  `subCode` int(11) DEFAULT NULL,
  `Debit` decimal(10,0) NOT NULL,
  `Credit` decimal(10,0) NOT NULL,
  `openDate` date NOT NULL,
  `CreateBy` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_opening_balance`
--

INSERT INTO `acc_opening_balance` (`id`, `fyear`, `COAID`, `subType`, `subCode`, `Debit`, `Credit`, `openDate`, `CreateBy`, `CreateDate`) VALUES
(16, 3, 1020101, 1, NULL, '1500', '0', '2023-01-01', 1, '2023-03-18 21:27:30'),
(17, 3, 1020801, 3, NULL, '500', '0', '2023-01-01', 1, '2023-03-18 21:24:46'),
(18, 3, 2010101, 1, NULL, '0', '1800', '2023-01-01', 1, '2023-03-18 21:24:46'),
(19, 3, 2116000001, 1, NULL, '150', '0', '2023-01-01', 1, '2023-03-18 21:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `acc_predefine_account`
--

CREATE TABLE `acc_predefine_account` (
  `id` int(11) NOT NULL,
  `cashCode` int(11) NOT NULL,
  `bankCode` int(11) NOT NULL,
  `advance` int(11) NOT NULL,
  `fixedAsset` int(11) NOT NULL,
  `purchaseCode` int(11) NOT NULL,
  `salesCode` int(11) NOT NULL,
  `serviceCode` int(11) NOT NULL,
  `customerCode` int(11) NOT NULL,
  `supplierCode` int(11) NOT NULL,
  `costs_of_good_solds` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `inventoryCode` int(11) NOT NULL,
  `CPLCode` int(11) NOT NULL,
  `LPLCode` int(11) NOT NULL,
  `salary_code` int(11) DEFAULT NULL,
  `emp_npf_contribution` int(11) DEFAULT NULL,
  `empr_npf_contribution` int(11) DEFAULT NULL,
  `emp_icf_contribution` int(11) DEFAULT NULL,
  `empr_icf_contribution` int(11) DEFAULT NULL,
  `prov_state_tax` int(11) NOT NULL,
  `state_tax` int(11) NOT NULL,
  `prov_npfcode` int(11) DEFAULT NULL,
  `Sales_Discount_Code` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_predefine_account`
--

INSERT INTO `acc_predefine_account` (`id`, `cashCode`, `bankCode`, `advance`, `fixedAsset`, `purchaseCode`, `salesCode`, `serviceCode`, `customerCode`, `supplierCode`, `costs_of_good_solds`, `vat`, `tax`, `inventoryCode`, `CPLCode`, `LPLCode`, `salary_code`, `emp_npf_contribution`, `empr_npf_contribution`, `emp_icf_contribution`, `empr_icf_contribution`, `prov_state_tax`, `state_tax`, `prov_npfcode`, `Sales_Discount_Code`) VALUES
(2, 10201, 10205, 10206, 101, 1020401, 3010301, 3010401, 1020801, 5020201, 4010101, 0, 4021101, 1020401, 2010201, 2010202, 4020501, 4020502, 4020503, 4021201, 0, 5020101, 4021101, 5020102, 30106);

-- --------------------------------------------------------

--
-- Table structure for table `acc_subcode`
--

CREATE TABLE `acc_subcode` (
  `id` int(11) NOT NULL,
  `subTypeId` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `referenceNo` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_subcode`
--

INSERT INTO `acc_subcode` (`id`, `subTypeId`, `name`, `referenceNo`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 4, 'jhon 2', 1, 1, 0, '2022-07-19', 0, '2022-07-19 17:49:00'),
(3, 3, 'walking customer', 2, 1, 0, '2022-07-20', 1, '2022-07-26 09:37:17'),
(4, 4, 'Supplier Open', 1, 1, 0, '2023-02-27', 0, '2023-02-27 14:45:15'),
(5, 4, 'Said Abdullahi', 2, 1, 0, '2023-02-27', 0, '2023-02-27 14:46:15'),
(6, 3, 'ayub m', 1, 1, 0, '2023-02-28', 0, '2023-02-28 08:56:54'),
(7, 3, 'ALI', 2, 1, 0, '2023-03-01', 0, '2023-03-01 08:26:45'),
(8, 4, 'Farah Ahmed', 3, 1, 0, '2023-03-03', 0, '2023-03-03 03:33:23'),
(9, 3, 'Hussein ', 3, 1, 0, '2023-03-03', 0, '2023-03-03 12:32:08'),
(10, 4, 'Samir ', 4, 1, 0, '2023-03-18', 0, '2023-03-18 12:36:00'),
(11, 4, 'Kamal', 5, 1, 0, '2023-03-19', 0, '2023-03-19 09:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `acc_subtype`
--

CREATE TABLE `acc_subtype` (
  `id` int(11) NOT NULL,
  `subtypeName` varchar(200) NOT NULL,
  `staus` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_subtype`
--

INSERT INTO `acc_subtype` (`id`, `subtypeName`, `staus`, `created_by`, `created_date`) VALUES
(1, 'None', 1, 1, '2022-04-05 10:19:27'),
(2, 'Employee', 1, 1, '2022-04-06 08:14:48'),
(3, 'Customer', 1, 1, '2022-04-10 08:49:22'),
(4, 'Supplier', 1, 1, '2022-04-10 08:49:22'),
(6, 'Agent', 1, 1, '2022-04-10 08:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `fyear` int(11) NOT NULL,
  `VNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Vtype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `referenceNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Narration` text CHARACTER SET utf8,
  `chequeNo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `isHonour` int(11) DEFAULT NULL,
  `ledgerComment` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL DEFAULT '0',
  `IsPosted` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `is_opening` int(11) NOT NULL DEFAULT '0',
  `CreateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `RevCodde` bigint(20) NOT NULL,
  `subType` int(11) NOT NULL DEFAULT '1',
  `subCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES
(164, 78, 3, 'CV-2', 'CV', NULL, '2023-03-15', '2010101', 'Begining balance 15', '', '0000-00-00', 0, 'Open Balance 15.03.2023', '0.00', '4620.00', 0, '1', 0, '1', '2023-03-18 10:36:45', NULL, NULL, '1', 1020103, 1, NULL),
(165, 78, 3, 'CV-2', 'CV', NULL, '2023-03-15', '1020103', 'Begining balance 15', '', '0000-00-00', 0, 'Open Balance 15.03.2023', '4620.00', '0.00', 0, '1', 0, '1', '2023-03-18 10:36:45', NULL, NULL, '1', 2010101, 1, NULL),
(166, 77, 3, 'CV-1', 'CV', NULL, '2023-03-15', '2010101', 'Begining Balance 15', '', '0000-00-00', 0, 'Open Balance 15.03.2023', '0.00', '43500.00', 0, '1', 0, '1', '2023-03-18 10:36:45', NULL, NULL, '1', 1020102, 1, NULL),
(167, 77, 3, 'CV-1', 'CV', NULL, '2023-03-15', '1020102', 'Begining Balance 15', '', '0000-00-00', 0, 'Open Balance 15.03.2023', '43500.00', '0.00', 0, '1', 0, '1', '2023-03-18 10:36:45', NULL, NULL, '1', 2010101, 1, NULL),
(168, 79, 1, 'DV-1', 'DV', '1', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '4320.00', '0.00', 0, '1', 0, '1', '2023-03-18 10:41:25', NULL, NULL, '1', 1020102, 1, NULL),
(169, 79, 1, 'DV-1', 'DV', '1', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '4320.00', 0, '1', 0, '1', '2023-03-18 10:41:25', NULL, NULL, '1', 1020401, 1, NULL),
(170, 80, 1, 'DV-2', 'DV', '1', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '930.00', '0.00', 0, '1', 0, '1', '2023-03-18 10:41:25', NULL, NULL, '1', 1020103, 1, NULL),
(171, 80, 1, 'DV-2', 'DV', '1', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '930.00', 0, '1', 0, '1', '2023-03-18 10:41:25', NULL, NULL, '1', 1020401, 1, NULL),
(172, 81, 1, 'DV-3', 'DV', '2', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '1980.00', '0.00', 0, '1', 0, '1', '2023-03-18 10:49:41', NULL, NULL, '1', 5020201, 4, 5),
(173, 81, 1, 'DV-3', 'DV', '2', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '1980.00', 0, '1', 0, '1', '2023-03-18 10:49:41', NULL, NULL, '1', 1020401, 4, 5),
(174, 82, 1, 'DV-4', 'DV', '3', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '330.00', '0.00', 0, '1', 0, '1', '2023-03-18 16:13:20', NULL, NULL, '1', 1020102, 1, NULL),
(175, 82, 1, 'DV-4', 'DV', '3', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '330.00', 0, '1', 0, '1', '2023-03-18 16:13:20', NULL, NULL, '1', 1020401, 1, NULL),
(176, 83, 1, 'DV-5', 'DV', '4', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '330.00', '0.00', 0, '1', 0, '1', '2023-03-18 16:15:37', NULL, NULL, '1', 1020102, 1, NULL),
(177, 83, 1, 'DV-5', 'DV', '4', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '330.00', 0, '1', 0, '1', '2023-03-18 16:15:37', NULL, NULL, '1', 1020401, 1, NULL),
(178, 84, 1, 'DV-6', 'DV', '5', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '440.00', '0.00', 0, '1', 0, '1', '2023-03-18 16:19:01', NULL, NULL, '1', 5020201, 1, NULL),
(179, 84, 1, 'DV-6', 'DV', '5', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '440.00', 0, '1', 0, '1', '2023-03-18 16:19:01', NULL, NULL, '1', 1020401, 1, NULL),
(180, 85, 1, 'DV-7', 'DV', '6', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '605.00', '0.00', 0, '1', 0, '1', '2023-03-18 16:29:58', NULL, NULL, '1', 5020201, 1, NULL),
(181, 85, 1, 'DV-7', 'DV', '6', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '605.00', 0, '1', 0, '1', '2023-03-18 16:29:58', NULL, NULL, '1', 1020401, 1, NULL),
(182, 86, 1, 'DV-8', 'DV', '7', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '210.00', '0.00', 0, '1', 0, '1', '2023-03-18 16:47:24', NULL, NULL, '1', 1020102, 1, NULL),
(183, 86, 1, 'DV-8', 'DV', '7', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '210.00', 0, '1', 0, '1', '2023-03-18 16:47:24', NULL, NULL, '1', 1020401, 1, NULL),
(184, 87, 1, 'DV-9', 'DV', '7', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '170.00', '0.00', 0, '1', 0, '1', '2023-03-18 16:47:24', NULL, NULL, '1', 1020103, 1, NULL),
(185, 87, 1, 'DV-9', 'DV', '7', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '170.00', 0, '1', 0, '1', '2023-03-18 16:47:24', NULL, NULL, '1', 1020401, 1, NULL),
(186, 88, 1, 'DV-10', 'DV', '8', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '120.00', '0.00', 0, '1', 0, '1', '2023-03-18 17:39:59', NULL, NULL, '1', 1020102, 1, NULL),
(187, 88, 1, 'DV-10', 'DV', '8', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '120.00', 0, '1', 0, '1', '2023-03-18 17:39:59', NULL, NULL, '1', 1020401, 1, NULL),
(188, 89, 1, 'DV-11', 'DV', '8', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 0, '1', 0, '1', '2023-03-18 17:39:59', NULL, NULL, '1', 1020103, 1, NULL),
(189, 89, 1, 'DV-11', 'DV', '8', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '80.00', 0, '1', 0, '1', '2023-03-18 17:39:59', NULL, NULL, '1', 1020401, 1, NULL),
(190, 90, 1, 'DV-12', 'DV', '9', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 0, '1', 0, '1', '2023-03-18 17:42:02', NULL, NULL, '1', 1020102, 1, NULL),
(191, 90, 1, 'DV-12', 'DV', '9', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '80.00', 0, '1', 0, '1', '2023-03-18 17:42:02', NULL, NULL, '1', 1020401, 1, NULL),
(192, 91, 1, 'DV-13', 'DV', '9', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '20.00', '0.00', 0, '1', 0, '1', '2023-03-18 17:42:02', NULL, NULL, '1', 1020103, 1, NULL),
(193, 91, 1, 'DV-13', 'DV', '9', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '20.00', 0, '1', 0, '1', '2023-03-18 17:42:02', NULL, NULL, '1', 1020401, 1, NULL),
(194, 101, 1, 'DV-23', 'DV', '14', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '70.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:11:07', NULL, NULL, '1', 1020102, 1, NULL),
(195, 101, 1, 'DV-23', 'DV', '14', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '70.00', 0, '1', 0, '1', '2023-03-18 18:11:07', NULL, NULL, '1', 1020401, 1, NULL),
(196, 102, 1, 'DV-24', 'DV', '14', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '30.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:11:07', NULL, NULL, '1', 1020103, 1, NULL),
(197, 102, 1, 'DV-24', 'DV', '14', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '30.00', 0, '1', 0, '1', '2023-03-18 18:11:07', NULL, NULL, '1', 1020401, 1, NULL),
(198, 103, 1, 'DV-25', 'DV', '14', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '32.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:11:07', NULL, NULL, '1', 5020201, 1, NULL),
(199, 103, 1, 'DV-25', 'DV', '14', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '32.00', 0, '1', 0, '1', '2023-03-18 18:11:07', NULL, NULL, '1', 1020401, 1, NULL),
(200, 104, 1, 'DV-26', 'DV', '15', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '390.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:14:23', NULL, NULL, '1', 1020102, 1, NULL),
(201, 104, 1, 'DV-26', 'DV', '15', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '390.00', 0, '1', 0, '1', '2023-03-18 18:14:23', NULL, NULL, '1', 1020401, 1, NULL),
(202, 105, 1, 'DV-27', 'DV', '15', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:14:23', NULL, NULL, '1', 1020103, 1, NULL),
(203, 105, 1, 'DV-27', 'DV', '15', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '100.00', 0, '1', 0, '1', '2023-03-18 18:14:23', NULL, NULL, '1', 1020401, 1, NULL),
(204, 106, 1, 'DV-28', 'DV', '15', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '115.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:14:23', NULL, NULL, '1', 5020201, 1, NULL),
(205, 106, 1, 'DV-28', 'DV', '15', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '115.00', 0, '1', 0, '1', '2023-03-18 18:14:23', NULL, NULL, '1', 1020401, 1, NULL),
(206, 107, 1, 'DV-29', 'DV', '16', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '300.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:24:42', NULL, NULL, '1', 1020102, 1, NULL),
(207, 107, 1, 'DV-29', 'DV', '16', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '300.00', 0, '1', 0, '1', '2023-03-18 18:24:42', NULL, NULL, '1', 1020401, 1, NULL),
(208, 108, 1, 'DV-30', 'DV', '16', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:24:42', NULL, NULL, '1', 1020103, 1, NULL),
(209, 108, 1, 'DV-30', 'DV', '16', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '100.00', 0, '1', 0, '1', '2023-03-18 18:24:42', NULL, NULL, '1', 1020401, 1, NULL),
(210, 109, 1, 'DV-31', 'DV', '16', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '150.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:24:42', NULL, NULL, '1', 5020201, 1, NULL),
(211, 109, 1, 'DV-31', 'DV', '16', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '150.00', 0, '1', 0, '1', '2023-03-18 18:24:42', NULL, NULL, '1', 1020401, 1, NULL),
(212, 110, 1, 'DV-32', 'DV', '17', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '300.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:27:08', NULL, NULL, '1', 1020102, 1, NULL),
(213, 110, 1, 'DV-32', 'DV', '17', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '300.00', 0, '1', 0, '1', '2023-03-18 18:27:08', NULL, NULL, '1', 1020401, 1, NULL),
(214, 111, 1, 'DV-33', 'DV', '17', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:27:08', NULL, NULL, '1', 1020103, 1, NULL),
(215, 111, 1, 'DV-33', 'DV', '17', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '100.00', 0, '1', 0, '1', '2023-03-18 18:27:08', NULL, NULL, '1', 1020401, 1, NULL),
(216, 112, 1, 'DV-34', 'DV', '17', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '95.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:27:08', NULL, NULL, '1', 5020201, 1, NULL),
(217, 112, 1, 'DV-34', 'DV', '17', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '95.00', 0, '1', 0, '1', '2023-03-18 18:27:08', NULL, NULL, '1', 1020401, 1, NULL),
(218, 113, 1, 'DV-35', 'DV', '18', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '300.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:29:46', NULL, NULL, '1', 1020102, 1, NULL),
(219, 113, 1, 'DV-35', 'DV', '18', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '300.00', 0, '1', 0, '1', '2023-03-18 18:29:46', NULL, NULL, '1', 1020401, 1, NULL),
(220, 114, 1, 'DV-36', 'DV', '18', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '200.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:29:46', NULL, NULL, '1', 1020103, 1, NULL),
(221, 114, 1, 'DV-36', 'DV', '18', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '200.00', 0, '1', 0, '1', '2023-03-18 18:29:46', NULL, NULL, '1', 1020401, 1, NULL),
(222, 115, 1, 'DV-37', 'DV', '18', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '28.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:29:46', NULL, NULL, '1', 5020201, 1, NULL),
(223, 115, 1, 'DV-37', 'DV', '18', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '28.00', 0, '1', 0, '1', '2023-03-18 18:29:46', NULL, NULL, '1', 1020401, 1, NULL),
(224, 116, 1, 'DV-38', 'DV', '19', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '470.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:32:00', NULL, NULL, '1', 1020102, 1, NULL),
(225, 116, 1, 'DV-38', 'DV', '19', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '470.00', 0, '1', 0, '1', '2023-03-18 18:32:00', NULL, NULL, '1', 1020401, 1, NULL),
(226, 117, 1, 'DV-39', 'DV', '19', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '10.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:32:00', NULL, NULL, '1', 1020103, 1, NULL),
(227, 117, 1, 'DV-39', 'DV', '19', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '10.00', 0, '1', 0, '1', '2023-03-18 18:32:00', NULL, NULL, '1', 1020401, 1, NULL),
(228, 118, 1, 'DV-40', 'DV', '19', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '20.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:32:00', NULL, NULL, '1', 5020201, 1, NULL),
(229, 118, 1, 'DV-40', 'DV', '19', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '20.00', 0, '1', 0, '1', '2023-03-18 18:32:00', NULL, NULL, '1', 1020401, 1, NULL),
(230, 119, 1, 'DV-41', 'DV', '20', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '70.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:43:21', NULL, NULL, '1', 1020102, 1, NULL),
(231, 119, 1, 'DV-41', 'DV', '20', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '70.00', 0, '1', 0, '1', '2023-03-18 18:43:21', NULL, NULL, '1', 1020401, 1, NULL),
(232, 120, 1, 'DV-42', 'DV', '20', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '30.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:43:21', NULL, NULL, '1', 1020103, 1, NULL),
(233, 120, 1, 'DV-42', 'DV', '20', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '30.00', 0, '1', 0, '1', '2023-03-18 18:43:21', NULL, NULL, '1', 1020401, 1, NULL),
(234, 121, 1, 'DV-43', 'DV', '20', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '9.50', '0.00', 0, '1', 0, '1', '2023-03-18 18:43:21', NULL, NULL, '1', 5020201, 1, NULL),
(235, 121, 1, 'DV-43', 'DV', '20', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '9.50', 0, '1', 0, '1', '2023-03-18 18:43:21', NULL, NULL, '1', 1020401, 1, NULL),
(236, 122, 1, 'DV-44', 'DV', '21', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '150.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:46:30', NULL, NULL, '1', 1020102, 1, NULL),
(237, 122, 1, 'DV-44', 'DV', '21', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '150.00', 0, '1', 0, '1', '2023-03-18 18:46:30', NULL, NULL, '1', 1020401, 1, NULL),
(238, 123, 1, 'DV-45', 'DV', '21', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '50.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:46:30', NULL, NULL, '1', 1020103, 1, NULL),
(239, 123, 1, 'DV-45', 'DV', '21', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '50.00', 0, '1', 0, '1', '2023-03-18 18:46:30', NULL, NULL, '1', 1020401, 1, NULL),
(240, 124, 1, 'DV-46', 'DV', '21', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '98.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:46:30', NULL, NULL, '1', 5020201, 1, 10),
(241, 124, 1, 'DV-46', 'DV', '21', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '98.00', 0, '1', 0, '1', '2023-03-18 18:46:30', NULL, NULL, '1', 1020401, 1, 10),
(242, 125, 1, 'DV-47', 'DV', '22', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '450.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:48:55', NULL, NULL, '1', 1020102, 1, NULL),
(243, 125, 1, 'DV-47', 'DV', '22', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '450.00', 0, '1', 0, '1', '2023-03-18 18:48:55', NULL, NULL, '1', 1020401, 1, NULL),
(244, 126, 1, 'DV-48', 'DV', '22', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '150.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:48:55', NULL, NULL, '1', 1020103, 1, NULL),
(245, 126, 1, 'DV-48', 'DV', '22', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '150.00', 0, '1', 0, '1', '2023-03-18 18:48:55', NULL, NULL, '1', 1020401, 1, NULL),
(246, 127, 1, 'DV-49', 'DV', '23', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '490.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:53:12', NULL, NULL, '1', 1020102, 1, NULL),
(247, 127, 1, 'DV-49', 'DV', '23', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '490.00', 0, '1', 0, '1', '2023-03-18 18:53:12', NULL, NULL, '1', 1020401, 1, NULL),
(248, 128, 1, 'DV-50', 'DV', '23', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '190.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:53:12', NULL, NULL, '1', 1020103, 1, NULL),
(249, 128, 1, 'DV-50', 'DV', '23', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '190.00', 0, '1', 0, '1', '2023-03-18 18:53:12', NULL, NULL, '1', 1020401, 1, NULL),
(250, 129, 1, 'DV-51', 'DV', '23', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '170.00', '0.00', 0, '1', 0, '1', '2023-03-18 18:53:12', NULL, NULL, '1', 5020201, 1, 8),
(251, 129, 1, 'DV-51', 'DV', '23', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '170.00', 0, '1', 0, '1', '2023-03-18 18:53:12', NULL, NULL, '1', 1020401, 1, 8),
(252, 100, 1, 'DV-22', 'DV', '13', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '35.80', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 5020201, 1, NULL),
(253, 100, 1, 'DV-22', 'DV', '13', '2023-03-18', '5020201', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '35.80', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(254, 99, 1, 'DV-21', 'DV', '13', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '5.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020103, 1, NULL),
(255, 99, 1, 'DV-21', 'DV', '13', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '5.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(256, 98, 1, 'DV-20', 'DV', '13', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '45.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020102, 1, NULL),
(257, 98, 1, 'DV-20', 'DV', '13', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '45.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(258, 97, 1, 'DV-19', 'DV', '12', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020103, 1, NULL),
(259, 97, 1, 'DV-19', 'DV', '12', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '80.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(260, 96, 1, 'DV-18', 'DV', '12', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020102, 1, NULL),
(261, 96, 1, 'DV-18', 'DV', '12', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '100.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(262, 95, 1, 'DV-17', 'DV', '11', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '50.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020103, 1, NULL),
(263, 95, 1, 'DV-17', 'DV', '11', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '50.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(264, 94, 1, 'DV-16', 'DV', '11', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020102, 1, NULL),
(265, 94, 1, 'DV-16', 'DV', '11', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '100.00', 0, '1', 0, '1', '2023-03-18 19:29:14', NULL, NULL, '1', 1020401, 1, NULL),
(266, 93, 1, 'DV-15', 'DV', '10', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '20.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:15', NULL, NULL, '1', 1020103, 1, NULL),
(267, 93, 1, 'DV-15', 'DV', '10', '2023-03-18', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '20.00', 0, '1', 0, '1', '2023-03-18 19:29:15', NULL, NULL, '1', 1020401, 1, NULL),
(268, 92, 1, 'DV-14', 'DV', '10', '2023-03-18', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 0, '1', 0, '1', '2023-03-18 19:29:15', NULL, NULL, '1', 1020102, 1, NULL),
(269, 92, 1, 'DV-14', 'DV', '10', '2023-03-18', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '80.00', 0, '1', 0, '1', '2023-03-18 19:29:15', NULL, NULL, '1', 1020401, 1, NULL),
(270, 130, 3, 'CV-3', 'CV', '1000', '2023-03-18', '1020101', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '185.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:46:45', NULL, NULL, '1', 3010301, 1, NULL),
(271, 130, 3, 'CV-3', 'CV', '1000', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '185.00', 0, '1', 0, '1', '2023-03-18 22:46:45', NULL, NULL, '1', 1020101, 1, NULL),
(272, 131, 3, 'JV-1', 'JV', '1000', '2023-03-18', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '313.50', '0.00', 0, '1', 0, '1', '2023-03-18 22:46:45', NULL, NULL, '1', 1020401, 1, NULL),
(273, 131, 3, 'JV-1', 'JV', '1000', '2023-03-18', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '313.50', 0, '1', 0, '1', '2023-03-18 22:46:45', NULL, NULL, '1', 4010101, 1, NULL),
(274, 132, 3, 'JV-2', 'JV', '1000', '2023-03-18', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:46:45', NULL, NULL, '1', 5020101, 1, NULL),
(275, 132, 3, 'JV-2', 'JV', '1000', '2023-03-18', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:46:45', NULL, NULL, '1', 4021101, 1, NULL),
(276, 133, 3, 'CV-4', 'CV', '1001', '2023-03-18', '1020101', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '2.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 3010301, 1, NULL),
(277, 133, 3, 'CV-4', 'CV', '1001', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '2.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 1020101, 1, NULL),
(278, 134, 3, 'CV-5', 'CV', '1001', '2023-03-18', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '3.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 3010301, 1, NULL),
(279, 134, 3, 'CV-5', 'CV', '1001', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '3.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 1020102, 1, NULL),
(280, 135, 3, 'CV-6', 'CV', '1001', '2023-03-18', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '5.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 3010301, 1, NULL),
(281, 135, 3, 'CV-6', 'CV', '1001', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '5.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 1020103, 1, NULL),
(282, 136, 3, 'JV-3', 'JV', '1001', '2023-03-18', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '16.50', '0.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 1020401, 1, NULL),
(283, 136, 3, 'JV-3', 'JV', '1001', '2023-03-18', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '16.50', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 4010101, 1, NULL),
(284, 137, 3, 'JV-4', 'JV', '1001', '2023-03-18', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 5020101, 1, NULL),
(285, 137, 3, 'JV-4', 'JV', '1001', '2023-03-18', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 22:52:49', NULL, NULL, '1', 4021101, 1, NULL),
(286, 138, 3, 'CV-7', 'CV', '1002', '2023-03-18', '1020101', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '30.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 3010301, 1, NULL),
(287, 138, 3, 'CV-7', 'CV', '1002', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '30.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 1020101, 1, NULL),
(288, 139, 3, 'CV-8', 'CV', '1002', '2023-03-18', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '10.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 3010301, 1, NULL),
(289, 139, 3, 'CV-8', 'CV', '1002', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '10.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 1020102, 1, NULL),
(290, 140, 3, 'JV-5', 'JV', '1002', '2023-03-18', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '43.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 1020401, 1, NULL),
(291, 140, 3, 'JV-5', 'JV', '1002', '2023-03-18', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '43.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 4010101, 1, NULL),
(292, 141, 3, 'JV-6', 'JV', '1002', '2023-03-18', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 5020101, 1, NULL),
(293, 141, 3, 'JV-6', 'JV', '1002', '2023-03-18', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:32:36', NULL, NULL, '1', 4021101, 1, NULL),
(294, 142, 3, 'CV-9', 'CV', '1003', '2023-03-18', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '751.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:38:17', NULL, NULL, '1', 3010301, 1, NULL),
(295, 142, 3, 'CV-9', 'CV', '1003', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '751.00', 0, '1', 0, '1', '2023-03-18 23:38:17', NULL, NULL, '1', 1020102, 1, NULL),
(296, 143, 3, 'JV-7', 'JV', '1003', '2023-03-18', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '723.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:38:17', NULL, NULL, '1', 1020401, 1, NULL),
(297, 143, 3, 'JV-7', 'JV', '1003', '2023-03-18', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '723.00', 0, '1', 0, '1', '2023-03-18 23:38:17', NULL, NULL, '1', 4010101, 1, NULL),
(298, 144, 3, 'JV-8', 'JV', '1003', '2023-03-18', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:38:17', NULL, NULL, '1', 5020101, 1, NULL),
(299, 144, 3, 'JV-8', 'JV', '1003', '2023-03-18', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:38:17', NULL, NULL, '1', 4021101, 1, NULL),
(300, 145, 3, 'CV-10', 'CV', '1004', '2023-03-18', '1020101', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '10.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 3010301, 1, NULL),
(301, 145, 3, 'CV-10', 'CV', '1004', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '10.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 1020101, 1, NULL),
(302, 146, 3, 'CV-11', 'CV', '1004', '2023-03-18', '1020104', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '13.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 3010301, 1, NULL),
(303, 146, 3, 'CV-11', 'CV', '1004', '2023-03-18', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '13.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 1020104, 1, NULL),
(304, 147, 3, 'JV-9', 'JV', '1004', '2023-03-18', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '26.50', '0.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 1020401, 1, NULL),
(305, 147, 3, 'JV-9', 'JV', '1004', '2023-03-18', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '26.50', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 4010101, 1, NULL),
(306, 148, 3, 'JV-10', 'JV', '1004', '2023-03-18', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 5020101, 1, NULL),
(307, 148, 3, 'JV-10', 'JV', '1004', '2023-03-18', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-18 23:42:15', NULL, NULL, '1', 4021101, 1, NULL),
(308, 149, 3, 'DV-52', 'DV', '2', '2023-03-19', '5020201', 'Purchase Due Voucher', '', NULL, 0, 'Purchase Due Voucher for supplier', '1954.00', '0.00', 0, '1', 0, '1', '2023-03-19 07:59:52', NULL, NULL, '1', 1020102, 4, 5),
(309, 149, 3, 'DV-52', 'DV', '2', '2023-03-19', '1020102', 'Purchase Due Voucher', '', NULL, 0, 'Purchase Due Voucher for supplier', '0.00', '1954.00', 0, '1', 0, '1', '2023-03-19 07:59:52', NULL, NULL, '1', 5020201, 4, 5),
(310, 150, 1, 'DV-53', 'DV', '24', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '50.00', '0.00', 0, '1', 0, '1', '2023-03-19 08:20:52', NULL, NULL, '1', 1020103, 1, NULL),
(311, 150, 1, 'DV-53', 'DV', '24', '2023-03-19', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '50.00', 0, '1', 0, '1', '2023-03-19 08:20:52', NULL, NULL, '1', 1020401, 1, NULL),
(312, 151, 1, 'DV-54', 'DV', '24', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '840.00', '0.00', 0, '1', 0, '1', '2023-03-19 08:20:52', NULL, NULL, '1', 1020102, 1, NULL),
(313, 151, 1, 'DV-54', 'DV', '24', '2023-03-19', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '840.00', 0, '1', 0, '1', '2023-03-19 08:20:52', NULL, NULL, '1', 1020401, 1, NULL),
(314, 152, 1, 'DV-55', 'DV', '24', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '80.00', '0.00', 0, '1', 0, '1', '2023-03-19 08:20:52', NULL, NULL, '1', 5020201, 1, 8),
(315, 152, 1, 'DV-55', 'DV', '24', '2023-03-19', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '80.00', 0, '1', 0, '1', '2023-03-19 08:20:52', NULL, NULL, '1', 1020401, 1, 8),
(316, 153, 1, 'DV-56', 'DV', '25', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '315.00', '0.00', 0, '1', 0, '1', '2023-03-19 08:53:58', NULL, NULL, '1', 1020102, 1, NULL),
(317, 153, 1, 'DV-56', 'DV', '25', '2023-03-19', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '315.00', 0, '1', 0, '1', '2023-03-19 08:53:58', NULL, NULL, '1', 1020401, 1, NULL),
(318, 154, 1, 'DV-57', 'DV', '25', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '15.00', '0.00', 0, '1', 0, '1', '2023-03-19 08:53:58', NULL, NULL, '1', 1020103, 1, NULL),
(319, 154, 1, 'DV-57', 'DV', '25', '2023-03-19', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '15.00', 0, '1', 0, '1', '2023-03-19 08:53:58', NULL, NULL, '1', 1020401, 1, NULL),
(320, 155, 1, 'DV-58', 'DV', '25', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '140.00', '0.00', 0, '1', 0, '1', '2023-03-19 08:53:58', NULL, NULL, '1', 5020201, 1, 4),
(321, 155, 1, 'DV-58', 'DV', '25', '2023-03-19', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '140.00', 0, '1', 0, '1', '2023-03-19 08:53:58', NULL, NULL, '1', 1020401, 1, 4),
(322, 156, 1, 'DV-59', 'DV', '26', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '430.00', '0.00', 0, '1', 0, '1', '2023-03-19 09:00:27', NULL, NULL, '1', 1020102, 1, NULL),
(323, 156, 1, 'DV-59', 'DV', '26', '2023-03-19', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '430.00', 0, '1', 0, '1', '2023-03-19 09:00:27', NULL, NULL, '1', 1020401, 1, NULL),
(324, 157, 1, 'DV-60', 'DV', '26', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '130.00', '0.00', 0, '1', 0, '1', '2023-03-19 09:00:27', NULL, NULL, '1', 1020103, 1, NULL),
(325, 157, 1, 'DV-60', 'DV', '26', '2023-03-19', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '130.00', 0, '1', 0, '1', '2023-03-19 09:00:27', NULL, NULL, '1', 1020401, 1, NULL),
(326, 158, 1, 'DV-61', 'DV', '26', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '240.00', '0.00', 0, '1', 0, '1', '2023-03-19 09:00:27', NULL, NULL, '1', 5020201, 1, 4),
(327, 158, 1, 'DV-61', 'DV', '26', '2023-03-19', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '240.00', 0, '1', 0, '1', '2023-03-19 09:00:27', NULL, NULL, '1', 1020401, 1, 4),
(328, 159, 1, 'DV-62', 'DV', '28', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '678.00', '0.00', 0, '1', 0, '1', '2023-03-19 09:38:54', NULL, NULL, '1', 1020102, 1, NULL),
(329, 159, 1, 'DV-62', 'DV', '28', '2023-03-19', '1020102', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '678.00', 0, '1', 0, '1', '2023-03-19 09:38:54', NULL, NULL, '1', 1020401, 1, NULL),
(330, 160, 1, 'DV-63', 'DV', '28', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '302.00', '0.00', 0, '1', 0, '1', '2023-03-19 09:38:54', NULL, NULL, '1', 1020103, 1, NULL),
(331, 160, 1, 'DV-63', 'DV', '28', '2023-03-19', '1020103', 'Purchase Voucher', '', NULL, 0, 'Purchase Voucher for supplier', '0.00', '302.00', 0, '1', 0, '1', '2023-03-19 09:38:54', NULL, NULL, '1', 1020401, 1, NULL),
(332, 161, 1, 'DV-64', 'DV', '28', '2023-03-19', '1020401', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '320.00', '0.00', 0, '1', 0, '1', '2023-03-19 09:38:54', NULL, NULL, '1', 5020201, 1, 4),
(333, 161, 1, 'DV-64', 'DV', '28', '2023-03-19', '5020201', 'Purchase Voucher', '', NULL, 0, 'Due Amount for Supplier', '0.00', '320.00', 0, '1', 0, '1', '2023-03-19 09:38:54', NULL, NULL, '1', 1020401, 1, 4),
(334, 162, 3, 'CV-12', 'CV', '1005', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '280.00', '0.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 3010301, 1, NULL),
(335, 162, 3, 'CV-12', 'CV', '1005', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '280.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 1020102, 1, NULL),
(336, 163, 3, 'CV-13', 'CV', '1005', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '200.00', '0.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 3010301, 1, NULL),
(337, 163, 3, 'CV-13', 'CV', '1005', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '200.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 1020103, 1, NULL),
(338, 164, 3, 'JV-11', 'JV', '1005', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '550.00', '0.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 1020401, 1, NULL),
(339, 164, 3, 'JV-11', 'JV', '1005', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '550.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 4010101, 1, NULL),
(340, 165, 3, 'JV-12', 'JV', '1005', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 5020101, 1, NULL),
(341, 165, 3, 'JV-12', 'JV', '1005', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 17:12:20', NULL, NULL, '1', 4021101, 1, NULL),
(350, 170, 3, 'CV-16', 'CV', '1007', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(351, 170, 3, 'CV-16', 'CV', '1007', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '1170.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020102, 1, NULL),
(352, 171, 3, 'CV-17', 'CV', '1007', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(353, 171, 3, 'CV-17', 'CV', '1007', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '60.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020103, 1, NULL),
(354, 172, 3, 'JV-15', 'JV', '1007', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020401, 1, NULL),
(355, 172, 3, 'JV-15', 'JV', '1007', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '1353.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4010101, 1, NULL),
(356, 173, 3, 'JV-16', 'JV', '1007', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 5020101, 1, NULL),
(357, 173, 3, 'JV-16', 'JV', '1007', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4021101, 1, NULL),
(358, 174, 3, 'CV-18', 'CV', '1008', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(359, 174, 3, 'CV-18', 'CV', '1008', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '1170.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020102, 1, NULL),
(360, 175, 3, 'CV-19', 'CV', '1008', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(361, 175, 3, 'CV-19', 'CV', '1008', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '60.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020103, 1, NULL),
(362, 176, 3, 'JV-17', 'JV', '1008', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020401, 1, NULL),
(363, 176, 3, 'JV-17', 'JV', '1008', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '1353.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4010101, 1, NULL),
(364, 177, 3, 'JV-18', 'JV', '1008', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 5020101, 1, NULL),
(365, 177, 3, 'JV-18', 'JV', '1008', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4021101, 1, NULL),
(366, 178, 3, 'CV-20', 'CV', '1009', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(367, 178, 3, 'CV-20', 'CV', '1009', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '1170.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020102, 1, NULL),
(368, 179, 3, 'CV-21', 'CV', '1009', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(369, 179, 3, 'CV-21', 'CV', '1009', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '60.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020103, 1, NULL),
(370, 180, 3, 'JV-19', 'JV', '1009', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020401, 1, NULL),
(371, 180, 3, 'JV-19', 'JV', '1009', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '1353.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4010101, 1, NULL),
(372, 181, 3, 'JV-20', 'JV', '1009', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 5020101, 1, NULL),
(373, 181, 3, 'JV-20', 'JV', '1009', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4021101, 1, NULL),
(374, 182, 3, 'CV-22', 'CV', '1010', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(375, 182, 3, 'CV-22', 'CV', '1010', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '1170.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020102, 1, NULL),
(376, 183, 3, 'CV-23', 'CV', '1010', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 3010301, 1, NULL),
(377, 183, 3, 'CV-23', 'CV', '1010', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '60.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020103, 1, NULL),
(378, 184, 3, 'JV-21', 'JV', '1010', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 1020401, 1, NULL),
(379, 184, 3, 'JV-21', 'JV', '1010', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '1353.00', 0, '1', 0, '1', '2023-03-19 18:16:42', NULL, NULL, '1', 4010101, 1, NULL),
(380, 185, 3, 'JV-22', 'JV', '1010', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 5020101, 1, NULL),
(381, 185, 3, 'JV-22', 'JV', '1010', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 4021101, 1, NULL),
(382, 186, 3, 'CV-24', 'CV', '1011', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 3010301, 1, NULL),
(383, 186, 3, 'CV-24', 'CV', '1011', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '1170.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 1020102, 1, NULL),
(384, 187, 3, 'CV-25', 'CV', '1011', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 3010301, 1, NULL),
(385, 187, 3, 'CV-25', 'CV', '1011', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '60.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 1020103, 1, NULL),
(386, 188, 3, 'JV-23', 'JV', '1011', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 1020401, 1, NULL),
(387, 188, 3, 'JV-23', 'JV', '1011', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '1353.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 4010101, 1, NULL),
(388, 189, 3, 'JV-24', 'JV', '1011', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 5020101, 1, NULL),
(389, 189, 3, 'JV-24', 'JV', '1011', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 4021101, 1, NULL),
(390, 190, 3, 'CV-26', 'CV', '1012', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 3010301, 1, NULL),
(391, 190, 3, 'CV-26', 'CV', '1012', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '1170.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 1020102, 1, NULL),
(392, 191, 3, 'CV-27', 'CV', '1012', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 3010301, 1, NULL),
(393, 191, 3, 'CV-27', 'CV', '1012', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '60.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 1020103, 1, NULL),
(394, 192, 3, 'JV-25', 'JV', '1012', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 1020401, 1, NULL),
(395, 192, 3, 'JV-25', 'JV', '1012', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '1353.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 4010101, 1, NULL),
(396, 193, 3, 'JV-26', 'JV', '1012', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 5020101, 1, NULL),
(397, 193, 3, 'JV-26', 'JV', '1012', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 18:16:43', NULL, NULL, '1', 4021101, 1, NULL),
(398, 194, 3, 'CV-28', 'CV', '1013', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '67.00', '0.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 3010301, 1, NULL);
INSERT INTO `acc_transaction` (`ID`, `vid`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeNo`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `is_opening`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`, `RevCodde`, `subType`, `subCode`) VALUES
(399, 194, 3, 'CV-28', 'CV', '1013', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '67.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 1020102, 1, NULL),
(400, 195, 3, 'CV-29', 'CV', '1013', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '88.00', '0.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 3010301, 1, NULL),
(401, 195, 3, 'CV-29', 'CV', '1013', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '88.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 1020103, 1, NULL),
(402, 196, 3, 'JV-27', 'JV', '1013', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '330.00', '0.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 1020401, 1, NULL),
(403, 196, 3, 'JV-27', 'JV', '1013', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '330.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 4010101, 1, NULL),
(404, 197, 3, 'JV-28', 'JV', '1013', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 5020101, 1, NULL),
(405, 197, 3, 'JV-28', 'JV', '1013', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 20:02:27', NULL, NULL, '1', 4021101, 1, NULL),
(406, 198, 3, 'CV-30', 'CV', '1014', '2023-03-19', '1020102', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '101.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:10:55', NULL, NULL, '1', 3010301, 1, NULL),
(407, 198, 3, 'CV-30', 'CV', '1014', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '101.00', 0, '1', 0, '1', '2023-03-19 21:10:55', NULL, NULL, '1', 1020102, 1, NULL),
(408, 199, 3, 'CV-31', 'CV', '1014', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '97.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:10:55', NULL, NULL, '1', 3010301, 1, NULL),
(409, 199, 3, 'CV-31', 'CV', '1014', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '97.00', 0, '1', 0, '1', '2023-03-19 21:10:55', NULL, NULL, '1', 1020103, 1, NULL),
(410, 200, 3, 'JV-29', 'JV', '1014', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '495.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:10:55', NULL, NULL, '1', 1020401, 1, NULL),
(411, 200, 3, 'JV-29', 'JV', '1014', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '495.00', 0, '1', 0, '1', '2023-03-19 21:10:55', NULL, NULL, '1', 4010101, 1, NULL),
(412, 201, 3, 'JV-30', 'JV', '1014', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:10:56', NULL, NULL, '1', 5020101, 1, NULL),
(413, 201, 3, 'JV-30', 'JV', '1014', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:10:56', NULL, NULL, '1', 4021101, 1, NULL),
(414, 202, 3, 'CV-32', 'CV', '1015', '2023-03-19', '1020101', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '2.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 3010301, 1, NULL),
(415, 202, 3, 'CV-32', 'CV', '1015', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '2.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 1020101, 1, NULL),
(416, 203, 3, 'CV-33', 'CV', '1015', '2023-03-19', '1020103', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '3.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 3010301, 1, NULL),
(417, 203, 3, 'CV-33', 'CV', '1015', '2023-03-19', '3010301', 'Sales Voucher', '', NULL, 0, 'Sales Voucher for customer', '0.00', '3.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 1020103, 1, NULL),
(418, 204, 3, 'JV-31', 'JV', '1015', '2023-03-19', '4010101', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '27.50', '0.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 1020401, 1, NULL),
(419, 204, 3, 'JV-31', 'JV', '1015', '2023-03-19', '1020401', 'Sales cost of goods Voucher', '', NULL, 0, 'Sales cost of goods Voucher for customer', '0.00', '27.50', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 4010101, 1, NULL),
(420, 205, 3, 'JV-32', 'JV', '1015', '2023-03-19', '4021101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 5020101, 1, NULL),
(421, 205, 3, 'JV-32', 'JV', '1015', '2023-03-19', '5020101', 'Tax for Sales Voucher', '', NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 0, '1', 0, '1', '2023-03-19 21:38:46', NULL, NULL, '1', 4021101, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `acc_vaucher`
--

CREATE TABLE `acc_vaucher` (
  `id` int(11) NOT NULL,
  `fyear` int(11) NOT NULL,
  `VNo` varchar(50) NOT NULL,
  `Vtype` varchar(50) NOT NULL,
  `referenceNo` varchar(50) DEFAULT NULL,
  `VDate` date NOT NULL,
  `COAID` int(11) NOT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `chequeno` varchar(30) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `isHonour` int(11) NOT NULL DEFAULT '0',
  `ledgerComment` varchar(255) DEFAULT NULL,
  `Debit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `Credit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `RevCodde` int(11) NOT NULL,
  `subType` int(11) NOT NULL DEFAULT '1',
  `subCode` int(11) DEFAULT NULL,
  `isApproved` int(11) NOT NULL DEFAULT '0',
  `CreateBy` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `approvedBy` int(11) DEFAULT NULL,
  `approvedDate` datetime DEFAULT NULL,
  `isyearClosed` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = non yet transfer to transation,  1 = Tranfer to transition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_vaucher`
--

INSERT INTO `acc_vaucher` (`id`, `fyear`, `VNo`, `Vtype`, `referenceNo`, `VDate`, `COAID`, `Narration`, `chequeno`, `chequeDate`, `isHonour`, `ledgerComment`, `Debit`, `Credit`, `RevCodde`, `subType`, `subCode`, `isApproved`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `approvedBy`, `approvedDate`, `isyearClosed`, `status`) VALUES
(77, 3, 'CV-1', 'CV', NULL, '2023-03-15', 2010101, 'Begining Balance 15', '', '0000-00-00', 0, 'Open Balance 15.03.2023', '0.00', '43500.00', 1020102, 1, NULL, 1, 1, '2023-03-18 10:34:59', NULL, NULL, 1, '2023-03-18 10:36:45', 0, 1),
(78, 3, 'CV-2', 'CV', NULL, '2023-03-15', 2010101, 'Begining balance 15', '', '0000-00-00', 0, 'Open Balance 15.03.2023', '0.00', '4620.00', 1020103, 1, NULL, 1, 1, '2023-03-18 10:36:17', NULL, NULL, 1, '2023-03-18 10:36:45', 0, 1),
(79, 1, 'DV-1', 'DV', '1', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '4320.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 10:41:25', NULL, NULL, 1, '2023-03-18 10:41:25', 0, 1),
(80, 1, 'DV-2', 'DV', '1', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '930.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 10:41:25', NULL, NULL, 1, '2023-03-18 10:41:25', 0, 1),
(81, 1, 'DV-3', 'DV', '2', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '1980.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 10:49:41', NULL, NULL, 1, '2023-03-18 10:49:41', 0, 1),
(82, 1, 'DV-4', 'DV', '3', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '330.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 16:13:20', NULL, NULL, 1, '2023-03-18 16:13:20', 0, 1),
(83, 1, 'DV-5', 'DV', '4', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '330.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 16:15:37', NULL, NULL, 1, '2023-03-18 16:15:37', 0, 1),
(84, 1, 'DV-6', 'DV', '5', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '440.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 16:19:01', NULL, NULL, 1, '2023-03-18 16:19:01', 0, 1),
(85, 1, 'DV-7', 'DV', '6', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '605.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 16:29:58', NULL, NULL, 1, '2023-03-18 16:29:58', 0, 1),
(86, 1, 'DV-8', 'DV', '7', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '210.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 16:47:24', NULL, NULL, 1, '2023-03-18 16:47:24', 0, 1),
(87, 1, 'DV-9', 'DV', '7', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '170.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 16:47:24', NULL, NULL, 1, '2023-03-18 16:47:24', 0, 1),
(88, 1, 'DV-10', 'DV', '8', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '120.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 17:39:59', NULL, NULL, 1, '2023-03-18 17:39:59', 0, 1),
(89, 1, 'DV-11', 'DV', '8', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 17:39:59', NULL, NULL, 1, '2023-03-18 17:39:59', 0, 1),
(90, 1, 'DV-12', 'DV', '9', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 17:42:02', NULL, NULL, 1, '2023-03-18 17:42:02', 0, 1),
(91, 1, 'DV-13', 'DV', '9', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '20.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 17:42:02', NULL, NULL, 1, '2023-03-18 17:42:02', 0, 1),
(92, 1, 'DV-14', 'DV', '10', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 17:50:49', NULL, NULL, 1, '2023-03-18 19:29:15', 0, 1),
(93, 1, 'DV-15', 'DV', '10', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '20.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 17:50:49', NULL, NULL, 1, '2023-03-18 19:29:15', 0, 1),
(94, 1, 'DV-16', 'DV', '11', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 17:53:24', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(95, 1, 'DV-17', 'DV', '11', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '50.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 17:53:24', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(96, 1, 'DV-18', 'DV', '12', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 17:56:04', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(97, 1, 'DV-19', 'DV', '12', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '80.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 17:56:04', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(98, 1, 'DV-20', 'DV', '13', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '45.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:10:06', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(99, 1, 'DV-21', 'DV', '13', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '5.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:10:06', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(100, 1, 'DV-22', 'DV', '13', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '35.80', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:10:06', NULL, NULL, 1, '2023-03-18 19:29:14', 0, 1),
(101, 1, 'DV-23', 'DV', '14', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '70.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:11:07', NULL, NULL, 1, '2023-03-18 18:11:07', 0, 1),
(102, 1, 'DV-24', 'DV', '14', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '30.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:11:07', NULL, NULL, 1, '2023-03-18 18:11:07', 0, 1),
(103, 1, 'DV-25', 'DV', '14', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '32.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:11:07', NULL, NULL, 1, '2023-03-18 18:11:07', 0, 1),
(104, 1, 'DV-26', 'DV', '15', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '390.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:14:23', NULL, NULL, 1, '2023-03-18 18:14:23', 0, 1),
(105, 1, 'DV-27', 'DV', '15', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:14:23', NULL, NULL, 1, '2023-03-18 18:14:23', 0, 1),
(106, 1, 'DV-28', 'DV', '15', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '115.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:14:23', NULL, NULL, 1, '2023-03-18 18:14:23', 0, 1),
(107, 1, 'DV-29', 'DV', '16', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '300.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:24:42', NULL, NULL, 1, '2023-03-18 18:24:42', 0, 1),
(108, 1, 'DV-30', 'DV', '16', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:24:42', NULL, NULL, 1, '2023-03-18 18:24:42', 0, 1),
(109, 1, 'DV-31', 'DV', '16', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '150.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:24:42', NULL, NULL, 1, '2023-03-18 18:24:42', 0, 1),
(110, 1, 'DV-32', 'DV', '17', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '300.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:27:08', NULL, NULL, 1, '2023-03-18 18:27:08', 0, 1),
(111, 1, 'DV-33', 'DV', '17', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '100.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:27:08', NULL, NULL, 1, '2023-03-18 18:27:08', 0, 1),
(112, 1, 'DV-34', 'DV', '17', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '95.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:27:08', NULL, NULL, 1, '2023-03-18 18:27:08', 0, 1),
(113, 1, 'DV-35', 'DV', '18', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '300.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:29:46', NULL, NULL, 1, '2023-03-18 18:29:46', 0, 1),
(114, 1, 'DV-36', 'DV', '18', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '200.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:29:46', NULL, NULL, 1, '2023-03-18 18:29:46', 0, 1),
(115, 1, 'DV-37', 'DV', '18', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '28.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:29:46', NULL, NULL, 1, '2023-03-18 18:29:46', 0, 1),
(116, 1, 'DV-38', 'DV', '19', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '470.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:32:00', NULL, NULL, 1, '2023-03-18 18:32:00', 0, 1),
(117, 1, 'DV-39', 'DV', '19', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '10.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:32:00', NULL, NULL, 1, '2023-03-18 18:32:00', 0, 1),
(118, 1, 'DV-40', 'DV', '19', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '20.00', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:32:00', NULL, NULL, 1, '2023-03-18 18:32:00', 0, 1),
(119, 1, 'DV-41', 'DV', '20', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '70.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:43:21', NULL, NULL, 1, '2023-03-18 18:43:21', 0, 1),
(120, 1, 'DV-42', 'DV', '20', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '30.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:43:21', NULL, NULL, 1, '2023-03-18 18:43:21', 0, 1),
(121, 1, 'DV-43', 'DV', '20', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '9.50', '0.00', 5020201, 1, NULL, 1, 1, '2023-03-18 18:43:21', NULL, NULL, 1, '2023-03-18 18:43:21', 0, 1),
(122, 1, 'DV-44', 'DV', '21', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '150.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:46:30', NULL, NULL, 1, '2023-03-18 18:46:30', 0, 1),
(123, 1, 'DV-45', 'DV', '21', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '50.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:46:30', NULL, NULL, 1, '2023-03-18 18:46:30', 0, 1),
(124, 1, 'DV-46', 'DV', '21', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '98.00', '0.00', 5020201, 1, 10, 1, 1, '2023-03-18 18:46:30', NULL, NULL, 1, '2023-03-18 18:46:30', 0, 1),
(125, 1, 'DV-47', 'DV', '22', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '450.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:48:55', NULL, NULL, 1, '2023-03-18 18:48:55', 0, 1),
(126, 1, 'DV-48', 'DV', '22', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '150.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:48:55', NULL, NULL, 1, '2023-03-18 18:48:55', 0, 1),
(127, 1, 'DV-49', 'DV', '23', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '490.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-18 18:53:12', NULL, NULL, 1, '2023-03-18 18:53:12', 0, 1),
(128, 1, 'DV-50', 'DV', '23', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '190.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-18 18:53:12', NULL, NULL, 1, '2023-03-18 18:53:12', 0, 1),
(129, 1, 'DV-51', 'DV', '23', '2023-03-18', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '170.00', '0.00', 5020201, 1, 8, 1, 1, '2023-03-18 18:53:12', NULL, NULL, 1, '2023-03-18 18:53:12', 0, 1),
(130, 3, 'CV-3', 'CV', '1000', '2023-03-18', 1020101, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '185.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 22:46:45', NULL, NULL, 1, '2023-03-18 22:46:45', 0, 1),
(131, 3, 'JV-1', 'JV', '1000', '2023-03-18', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '313.50', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-18 22:46:45', NULL, NULL, 1, '2023-03-18 22:46:45', 0, 1),
(132, 3, 'JV-2', 'JV', '1000', '2023-03-18', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-18 22:46:45', NULL, NULL, 1, '2023-03-18 22:46:45', 0, 1),
(133, 3, 'CV-4', 'CV', '1001', '2023-03-18', 1020101, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '2.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 22:52:49', NULL, NULL, 1, '2023-03-18 22:52:49', 0, 1),
(134, 3, 'CV-5', 'CV', '1001', '2023-03-18', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '3.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 22:52:49', NULL, NULL, 1, '2023-03-18 22:52:49', 0, 1),
(135, 3, 'CV-6', 'CV', '1001', '2023-03-18', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '5.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 22:52:49', NULL, NULL, 1, '2023-03-18 22:52:49', 0, 1),
(136, 3, 'JV-3', 'JV', '1001', '2023-03-18', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '16.50', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-18 22:52:49', NULL, NULL, 1, '2023-03-18 22:52:49', 0, 1),
(137, 3, 'JV-4', 'JV', '1001', '2023-03-18', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-18 22:52:49', NULL, NULL, 1, '2023-03-18 22:52:49', 0, 1),
(138, 3, 'CV-7', 'CV', '1002', '2023-03-18', 1020101, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '30.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 23:32:36', NULL, NULL, 1, '2023-03-18 23:32:36', 0, 1),
(139, 3, 'CV-8', 'CV', '1002', '2023-03-18', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '10.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 23:32:36', NULL, NULL, 1, '2023-03-18 23:32:36', 0, 1),
(140, 3, 'JV-5', 'JV', '1002', '2023-03-18', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '43.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-18 23:32:36', NULL, NULL, 1, '2023-03-18 23:32:36', 0, 1),
(141, 3, 'JV-6', 'JV', '1002', '2023-03-18', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-18 23:32:36', NULL, NULL, 1, '2023-03-18 23:32:36', 0, 1),
(142, 3, 'CV-9', 'CV', '1003', '2023-03-18', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '751.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 23:38:17', NULL, NULL, 1, '2023-03-18 23:38:17', 0, 1),
(143, 3, 'JV-7', 'JV', '1003', '2023-03-18', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '723.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-18 23:38:17', NULL, NULL, 1, '2023-03-18 23:38:17', 0, 1),
(144, 3, 'JV-8', 'JV', '1003', '2023-03-18', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-18 23:38:17', NULL, NULL, 1, '2023-03-18 23:38:17', 0, 1),
(145, 3, 'CV-10', 'CV', '1004', '2023-03-18', 1020101, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '10.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 23:42:15', NULL, NULL, 1, '2023-03-18 23:42:15', 0, 1),
(146, 3, 'CV-11', 'CV', '1004', '2023-03-18', 1020104, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '13.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-18 23:42:15', NULL, NULL, 1, '2023-03-18 23:42:15', 0, 1),
(147, 3, 'JV-9', 'JV', '1004', '2023-03-18', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '26.50', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-18 23:42:15', NULL, NULL, 1, '2023-03-18 23:42:15', 0, 1),
(148, 3, 'JV-10', 'JV', '1004', '2023-03-18', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-18 23:42:15', NULL, NULL, 1, '2023-03-18 23:42:15', 0, 1),
(149, 3, 'DV-52', 'DV', '2', '2023-03-19', 5020201, 'Purchase Due Voucher', NULL, NULL, 0, 'Purchase Due Voucher for supplier', '1954.00', '0.00', 1020102, 4, 5, 1, 1, '2023-03-19 07:59:52', NULL, NULL, 1, '2023-03-19 07:59:52', 0, 1),
(150, 1, 'DV-53', 'DV', '24', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '50.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-19 08:20:52', NULL, NULL, 1, '2023-03-19 08:20:52', 0, 1),
(151, 1, 'DV-54', 'DV', '24', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '840.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-19 08:20:52', NULL, NULL, 1, '2023-03-19 08:20:52', 0, 1),
(152, 1, 'DV-55', 'DV', '24', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '80.00', '0.00', 5020201, 1, 8, 1, 1, '2023-03-19 08:20:52', NULL, NULL, 1, '2023-03-19 08:20:52', 0, 1),
(153, 1, 'DV-56', 'DV', '25', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '315.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-19 08:53:58', NULL, NULL, 1, '2023-03-19 08:53:58', 0, 1),
(154, 1, 'DV-57', 'DV', '25', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '15.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-19 08:53:58', NULL, NULL, 1, '2023-03-19 08:53:58', 0, 1),
(155, 1, 'DV-58', 'DV', '25', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '140.00', '0.00', 5020201, 1, 4, 1, 1, '2023-03-19 08:53:58', NULL, NULL, 1, '2023-03-19 08:53:58', 0, 1),
(156, 1, 'DV-59', 'DV', '26', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '430.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-19 09:00:27', NULL, NULL, 1, '2023-03-19 09:00:27', 0, 1),
(157, 1, 'DV-60', 'DV', '26', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '130.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-19 09:00:27', NULL, NULL, 1, '2023-03-19 09:00:27', 0, 1),
(158, 1, 'DV-61', 'DV', '26', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '240.00', '0.00', 5020201, 1, 4, 1, 1, '2023-03-19 09:00:27', NULL, NULL, 1, '2023-03-19 09:00:27', 0, 1),
(159, 1, 'DV-62', 'DV', '28', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '678.00', '0.00', 1020102, 1, NULL, 1, 1, '2023-03-19 09:38:54', NULL, NULL, 1, '2023-03-19 09:38:54', 0, 1),
(160, 1, 'DV-63', 'DV', '28', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Purchase Voucher for supplier', '302.00', '0.00', 1020103, 1, NULL, 1, 1, '2023-03-19 09:38:54', NULL, NULL, 1, '2023-03-19 09:38:54', 0, 1),
(161, 1, 'DV-64', 'DV', '28', '2023-03-19', 1020401, 'Purchase Voucher', NULL, NULL, 0, 'Due Amount for Supplier', '320.00', '0.00', 5020201, 1, 4, 1, 1, '2023-03-19 09:38:54', NULL, NULL, 1, '2023-03-19 09:38:54', 0, 1),
(162, 3, 'CV-12', 'CV', '1005', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '280.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 17:12:20', NULL, NULL, 1, '2023-03-19 17:12:20', 0, 1),
(163, 3, 'CV-13', 'CV', '1005', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '200.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 17:12:20', NULL, NULL, 1, '2023-03-19 17:12:20', 0, 1),
(164, 3, 'JV-11', 'JV', '1005', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '550.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 17:12:20', NULL, NULL, 1, '2023-03-19 17:12:20', 0, 1),
(165, 3, 'JV-12', 'JV', '1005', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 17:12:20', NULL, NULL, 1, '2023-03-19 17:12:20', 0, 1),
(166, 3, 'CV-14', 'CV', '1006', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 17:59:18', NULL, NULL, 1, '2023-03-19 17:59:18', 0, 1),
(167, 3, 'CV-15', 'CV', '1006', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 17:59:18', NULL, NULL, 1, '2023-03-19 17:59:19', 0, 1),
(168, 3, 'JV-13', 'JV', '1006', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 17:59:18', NULL, NULL, 1, '2023-03-19 17:59:19', 0, 1),
(169, 3, 'JV-14', 'JV', '1006', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 17:59:18', NULL, NULL, 1, '2023-03-19 17:59:19', 0, 1),
(170, 3, 'CV-16', 'CV', '1007', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(171, 3, 'CV-17', 'CV', '1007', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(172, 3, 'JV-15', 'JV', '1007', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(173, 3, 'JV-16', 'JV', '1007', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(174, 3, 'CV-18', 'CV', '1008', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(175, 3, 'CV-19', 'CV', '1008', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(176, 3, 'JV-17', 'JV', '1008', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(177, 3, 'JV-18', 'JV', '1008', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(178, 3, 'CV-20', 'CV', '1009', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(179, 3, 'CV-21', 'CV', '1009', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(180, 3, 'JV-19', 'JV', '1009', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(181, 3, 'JV-20', 'JV', '1009', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(182, 3, 'CV-22', 'CV', '1010', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(183, 3, 'CV-23', 'CV', '1010', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(184, 3, 'JV-21', 'JV', '1010', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:42', 0, 1),
(185, 3, 'JV-22', 'JV', '1010', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 18:16:42', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(186, 3, 'CV-24', 'CV', '1011', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(187, 3, 'CV-25', 'CV', '1011', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(188, 3, 'JV-23', 'JV', '1011', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(189, 3, 'JV-24', 'JV', '1011', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(190, 3, 'CV-26', 'CV', '1012', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '1170.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(191, 3, 'CV-27', 'CV', '1012', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '60.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(192, 3, 'JV-25', 'JV', '1012', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '1353.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(193, 3, 'JV-26', 'JV', '1012', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 18:16:43', NULL, NULL, 1, '2023-03-19 18:16:43', 0, 1),
(194, 3, 'CV-28', 'CV', '1013', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '67.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 20:02:27', NULL, NULL, 1, '2023-03-19 20:02:27', 0, 1),
(195, 3, 'CV-29', 'CV', '1013', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '88.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 20:02:27', NULL, NULL, 1, '2023-03-19 20:02:27', 0, 1),
(196, 3, 'JV-27', 'JV', '1013', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '330.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 20:02:27', NULL, NULL, 1, '2023-03-19 20:02:27', 0, 1),
(197, 3, 'JV-28', 'JV', '1013', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 20:02:27', NULL, NULL, 1, '2023-03-19 20:02:27', 0, 1),
(198, 3, 'CV-30', 'CV', '1014', '2023-03-19', 1020102, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '101.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 21:10:55', NULL, NULL, 1, '2023-03-19 21:10:55', 0, 1),
(199, 3, 'CV-31', 'CV', '1014', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '97.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 21:10:55', NULL, NULL, 1, '2023-03-19 21:10:55', 0, 1),
(200, 3, 'JV-29', 'JV', '1014', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '495.00', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 21:10:55', NULL, NULL, 1, '2023-03-19 21:10:55', 0, 1),
(201, 3, 'JV-30', 'JV', '1014', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 21:10:55', NULL, NULL, 1, '2023-03-19 21:10:56', 0, 1),
(202, 3, 'CV-32', 'CV', '1015', '2023-03-19', 1020101, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '2.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 21:38:46', NULL, NULL, 1, '2023-03-19 21:38:46', 0, 1),
(203, 3, 'CV-33', 'CV', '1015', '2023-03-19', 1020103, 'Sales Voucher', NULL, NULL, 0, 'Sales Voucher for customer', '3.00', '0.00', 3010301, 1, NULL, 1, 1, '2023-03-19 21:38:46', NULL, NULL, 1, '2023-03-19 21:38:46', 0, 1),
(204, 3, 'JV-31', 'JV', '1015', '2023-03-19', 4010101, 'Sales cost of goods Voucher', NULL, NULL, 0, 'Sales cost of goods Voucher for customer', '27.50', '0.00', 1020401, 1, NULL, 1, 1, '2023-03-19 21:38:46', NULL, NULL, 1, '2023-03-19 21:38:46', 0, 1),
(205, 3, 'JV-32', 'JV', '1015', '2023-03-19', 4021101, 'Tax for Sales Voucher', NULL, NULL, 0, 'Tax for Sales Voucher for customer', '0.00', '0.00', 5020101, 1, NULL, 1, 1, '2023-03-19 21:38:46', NULL, NULL, 1, '2023-03-19 21:38:46', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `activity_id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL COMMENT 'for employee , it will save employee_id',
  `type` varchar(30) NOT NULL COMMENT 'ticket, employee, attendnace etc.',
  `action` varchar(15) NOT NULL COMMENT 'create, update, delete',
  `action_id` varchar(15) NOT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `form_data` text,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=created, 2=updated, 3=deleted	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES
(0, '1', 'financial_year', 'create', '1', 'financial_year', 'financial_year', '{\"yearName\":\"First Year 23\",\"startDate\":\"2023-01-01\",\"endDate\":\"2024-01-31\",\"status\":\"1\",\"created_by\":\"1\",\"created_date\":\"2023-02-27 02:04:29\"}', '2023-02-27 07:04:29', 1),
(0, '1', 'opening_balance', 'create', '0', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":null,\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"45000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-27 14:10:47\"}', '2023-02-27 07:10:47', 1),
(0, '1', 'opening_balance', 'create', '0', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":null,\"COAID\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"130000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-27 14:10:47\"}', '2023-02-27 07:10:47', 1),
(0, '1', 'opening_balance', 'create', '0', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":null,\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"\",\"Credit\":\"175000\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-27 14:10:47\"}', '2023-02-27 07:10:47', 1),
(0, '1', 'financial_year', 'delete', '1', 'financial_year', 'account/accounts/delete_financial_year/1', '{\"id\":\"1\",\"yearName\":\"First Year 23\",\"startDate\":\"2023-01-01\",\"endDate\":\"2024-01-31\",\"status\":\"1\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-02-27 02:14:59\"}', '2023-02-27 07:14:59', 3),
(0, '1', 'financial_year', 'create', '2', 'financial_year', 'financial_year', '{\"yearName\":\"First 23\",\"startDate\":\"2023-02-01\",\"endDate\":\"2024-01-31\",\"status\":\"0\",\"created_by\":\"1\",\"created_date\":\"2023-02-27 02:15:32\"}', '2023-02-27 07:15:32', 1),
(0, '1', 'opening_balance', 'create', '1', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"2\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"45000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-27 14:19:14\"}', '2023-02-27 07:19:14', 1),
(0, '1', 'opening_balance', 'create', '2', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"2\",\"COAID\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"130000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-27 14:19:14\"}', '2023-02-27 07:19:14', 1),
(0, '1', 'opening_balance', 'create', '3', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"2\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"\",\"Credit\":\"175000\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-27 14:19:14\"}', '2023-02-27 07:19:14', 1),
(0, '1', 'financial_year', 'update', '0', 'financial_year', 'account/accounts/update_financial_year', '{\"id\":\"2\",\"yearName\":\"First 23\",\"startDate\":\"2023-02-01\",\"endDate\":\"2024-01-31\",\"status\":\"1\",\"updated_by\":\"1\",\"updated_date\":\"2023-02-27 02:23:18\"}', '2023-02-27 07:23:18', 2),
(0, '1', 'financial_year', 'delete', '2', 'financial_year', 'account/accounts/delete_financial_year/2', '{\"id\":\"2\",\"yearName\":\"First 23\",\"startDate\":\"2023-02-01\",\"endDate\":\"2024-01-31\",\"status\":\"1\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-02-28 08:57:15\"}', '2023-02-28 01:57:15', 3),
(0, '1', 'financial_year', 'create', '3', 'financial_year', 'financial_year', '{\"yearName\":\"Sanadka(2023)\",\"startDate\":\"2023-02-01\",\"endDate\":\"2024-02-01\",\"status\":\"1\",\"created_by\":\"1\",\"created_date\":\"2023-02-28 08:58:05\"}', '2023-02-28 01:58:05', 1),
(0, '1', 'opening_balance', 'delete', '3', 'acc_opening_balance', 'account/accounts/delete_opening_balance/3', '{\"id\":\"3\",\"fyear\":\"2\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"0\",\"Credit\":\"175000\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-02-28 08:59:11\"}', '2023-02-28 01:59:11', 3),
(0, '1', 'opening_balance', 'delete', '2', 'acc_opening_balance', 'account/accounts/delete_opening_balance/2', '{\"id\":\"2\",\"fyear\":\"2\",\"COAID\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"130000\",\"Credit\":\"0\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-02-28 08:59:15\"}', '2023-02-28 01:59:15', 3),
(0, '1', 'opening_balance', 'delete', '1', 'acc_opening_balance', 'account/accounts/delete_opening_balance/1', '{\"id\":\"1\",\"fyear\":\"2\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"45000\",\"Credit\":\"0\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-02-28 08:59:19\"}', '2023-02-28 01:59:19', 3),
(0, '1', 'opening_balance', 'create', '4', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"45000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:00:42\"}', '2023-02-28 02:00:42', 1),
(0, '1', 'opening_balance', 'create', '5', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020801\",\"subType\":\"3\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"38000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:00:42\"}', '2023-02-28 02:00:42', 1),
(0, '1', 'opening_balance', 'create', '6', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"125000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:00:42\"}', '2023-02-28 02:00:42', 1),
(0, '1', 'opening_balance', 'create', '7', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"\",\"Credit\":\"208000\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:00:42\"}', '2023-02-28 02:00:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '1', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"190.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:10:38\"}', '2023-02-28 02:10:38', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '2', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"1\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"190.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:10:38\"}', '2023-02-28 02:10:38', 1),
(0, '1', 'approved_vaucher_transation', 'create', '3', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"2\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"112.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:10:38\"}', '2023-02-28 02:10:38', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '4', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"2\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"112.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 09:10:38\"}', '2023-02-28 02:10:38', 1),
(0, '1', 'approved_vaucher_transation', 'create', '5', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"3\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"90.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '6', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"3\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"90.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '7', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"4\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"119.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '8', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"4\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"119.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '9', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"5\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"171.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '10', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"5\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"171.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '11', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"6\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '12', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"6\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-02-28\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:18:44\"}', '2023-02-28 02:18:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '13', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"7\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"150.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:25:30\"}', '2023-02-28 02:25:30', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '14', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"7\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-02-28\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"150.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:25:30\"}', '2023-02-28 02:25:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '15', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"8\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-02-28\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"144.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:25:30\"}', '2023-02-28 02:25:30', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '16', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"8\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"144.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:25:30\"}', '2023-02-28 02:25:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '17', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"9\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-02-28\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:25:30\"}', '2023-02-28 02:25:30', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '18', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"9\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-02-28\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 15:25:30\"}', '2023-02-28 02:25:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '19', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"10\",\"fyear\":\"1\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"600.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 16:47:18\"}', '2023-02-28 09:47:18', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '20', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"10\",\"fyear\":\"1\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-02-28\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"600.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 16:47:18\"}', '2023-02-28 09:47:18', 1),
(0, '1', 'approved_vaucher_transation', 'create', '21', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"11\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"502.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 17:33:44\"}', '2023-02-28 10:33:44', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '22', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"11\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"502.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 17:33:44\"}', '2023-02-28 10:33:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '23', 'acc_transaction', 'account/accounts/create_supplier_payment', '{\"vid\":\"12\",\"fyear\":\"3\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-02-28\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Due Voucher for supplier\",\"Debit\":\"14.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"4\",\"subCode\":\"5\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 17:50:29\"}', '2023-02-28 10:50:29', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '24', 'acc_transaction', 'account/accounts/create_supplier_payment', '{\"vid\":\"12\",\"fyear\":\"3\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-02-28\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Due Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"14.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"4\",\"subCode\":\"5\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-02-28 17:50:29\"}', '2023-02-28 10:50:29', 1),
(0, '1', 'approved_vaucher_transation', 'create', '25', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"13\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-01\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"7.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 14:27:47\"}', '2023-03-01 01:27:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '26', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"13\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-01\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"7.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 14:27:47\"}', '2023-03-01 01:27:47', 1),
(0, '1', 'approved_vaucher_transation', 'create', '27', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"14\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-01\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"6.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 14:27:47\"}', '2023-03-01 01:27:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '28', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"14\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-01\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"6.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 14:27:47\"}', '2023-03-01 01:27:47', 1),
(0, '1', 'approved_vaucher_transation', 'create', '29', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"15\",\"fyear\":\"3\",\"VNo\":\"JV-6\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-01\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 14:27:47\"}', '2023-03-01 01:27:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '30', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"15\",\"fyear\":\"3\",\"VNo\":\"JV-6\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-01\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 14:27:47\"}', '2023-03-01 01:27:47', 1),
(0, '1', 'coa_account', 'update', '3010301', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"3010301\",\"Pheadcode\":\"30103\",\"HeadName\":\"Sales Revenue\",\"PHeadName\":\"Sales Accounts\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:28:00\"}', '2023-03-01 05:28:00', 2),
(0, '1', 'coa_account', 'create', '239', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"3010302\",\"Pheadcode\":\"30103\",\"HeadName\":\"Sales returns and allowances\",\"PHeadName\":\"Sales Accounts\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:29:21\"}', '2023-03-01 05:29:21', 1),
(0, '1', 'coa_account', 'create', '240', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"3010303\",\"Pheadcode\":\"30103\",\"HeadName\":\"Sales Discounts\",\"PHeadName\":\"Sales Accounts\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:29:41\"}', '2023-03-01 05:29:41', 1),
(0, '1', 'coa_account', 'create', '241', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"3010304\",\"Pheadcode\":\"30103\",\"HeadName\":\"Sales returns and allowances\",\"PHeadName\":\"Sales Accounts\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:31:22\"}', '2023-03-01 05:31:22', 1),
(0, '1', 'coa_account', 'update', '30103', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"30103\",\"Pheadcode\":\"301\",\"HeadName\":\"Sales Revenue\",\"PHeadName\":\"Direct Income\",\"HeadLevel\":\"3\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:33:51\"}', '2023-03-01 05:33:51', 2),
(0, '1', 'coa_account', 'create', '242', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"30105\",\"Pheadcode\":\"301\",\"HeadName\":\"Sales returns and allowances\",\"PHeadName\":\"Direct Income\",\"HeadLevel\":\"3\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:34:39\"}', '2023-03-01 05:34:39', 1),
(0, '1', 'coa_account', 'create', '243', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"30106\",\"Pheadcode\":\"301\",\"HeadName\":\"Sales Discounts\",\"PHeadName\":\"Direct Income\",\"HeadLevel\":\"3\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 12:34:55\"}', '2023-03-01 05:34:55', 1),
(0, '1', 'approved_vaucher_transation', 'create', '31', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"16\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-01\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"210.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 18:44:43\"}', '2023-03-01 05:44:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '32', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"16\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-01\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"210.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 18:44:43\"}', '2023-03-01 05:44:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '33', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"17\",\"fyear\":\"3\",\"VNo\":\"JV-7\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-01\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"402.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 18:44:43\"}', '2023-03-01 05:44:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '34', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"17\",\"fyear\":\"3\",\"VNo\":\"JV-7\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-01\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"402.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 18:44:43\"}', '2023-03-01 05:44:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '35', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"18\",\"fyear\":\"3\",\"VNo\":\"JV-8\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-01\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 18:44:43\"}', '2023-03-01 05:44:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '36', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"18\",\"fyear\":\"3\",\"VNo\":\"JV-8\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-01\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-01 18:44:43\"}', '2023-03-01 05:44:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '37', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"19\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"4\",\"VDate\":\"2023-03-02\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"423.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 12:31:19\"}', '2023-03-02 05:31:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '38', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"19\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"4\",\"VDate\":\"2023-03-02\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"423.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 12:31:19\"}', '2023-03-02 05:31:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '39', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"20\",\"fyear\":\"1\",\"VNo\":\"DV-7\",\"Vtype\":\"DV\",\"referenceNo\":\"5\",\"VDate\":\"2023-03-02\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"190.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 14:04:09\"}', '2023-03-02 07:04:09', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '40', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"20\",\"fyear\":\"1\",\"VNo\":\"DV-7\",\"Vtype\":\"DV\",\"referenceNo\":\"5\",\"VDate\":\"2023-03-02\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"190.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 14:04:09\"}', '2023-03-02 07:04:09', 1),
(0, '1', 'approved_vaucher_transation', 'create', '41', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"21\",\"fyear\":\"3\",\"VNo\":\"JV-9\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-02\",\"COAID\":\"1020801\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"11.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"3\",\"subCode\":\"6\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 22:57:37\"}', '2023-03-02 09:57:37', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '42', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"21\",\"fyear\":\"3\",\"VNo\":\"JV-9\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-02\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"11.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020801\",\"subType\":\"3\",\"subCode\":\"6\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 22:57:37\"}', '2023-03-02 09:57:37', 1),
(0, '1', 'approved_vaucher_transation', 'create', '43', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"22\",\"fyear\":\"3\",\"VNo\":\"JV-10\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-02\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"9.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 22:57:37\"}', '2023-03-02 09:57:37', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '44', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"22\",\"fyear\":\"3\",\"VNo\":\"JV-10\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-02\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"9.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 22:57:37\"}', '2023-03-02 09:57:37', 1),
(0, '1', 'approved_vaucher_transation', 'create', '45', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"23\",\"fyear\":\"3\",\"VNo\":\"JV-11\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-02\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 22:57:37\"}', '2023-03-02 09:57:37', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '46', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"23\",\"fyear\":\"3\",\"VNo\":\"JV-11\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-02\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-02 22:57:37\"}', '2023-03-02 09:57:37', 1),
(0, '1', 'opening_balance', 'create', '8', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"120000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:08:34\"}', '2023-03-02 20:08:34', 1),
(0, '1', 'opening_balance', 'create', '9', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020801\",\"subType\":\"3\",\"subCode\":\"7\",\"openDate\":\"2023-01-01\",\"Debit\":\"15000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:08:34\"}', '2023-03-02 20:08:34', 1),
(0, '1', 'opening_balance', 'create', '10', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020801\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"17000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:08:34\"}', '2023-03-02 20:08:34', 1),
(0, '1', 'opening_balance', 'create', '11', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"\",\"Credit\":\"152000\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:08:34\"}', '2023-03-02 20:08:34', 1),
(0, '1', 'approved_vaucher_transation', 'create', '47', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"24\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"423.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:24:23\"}', '2023-03-02 20:24:23', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '48', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"24\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"423.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:24:23\"}', '2023-03-02 20:24:23', 1),
(0, '1', 'approved_vaucher_transation', 'create', '49', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"25\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"840.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:41:35\"}', '2023-03-02 20:41:35', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '50', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"25\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-03\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"840.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:41:35\"}', '2023-03-02 20:41:35', 1),
(0, '1', 'approved_vaucher_transation', 'create', '51', 'acc_transaction', 'account/accounts/create_supplier_payment', '{\"vid\":\"26\",\"fyear\":\"3\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-03\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Due Voucher for supplier\",\"Debit\":\"65.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"4\",\"subCode\":\"8\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:46:56\"}', '2023-03-02 20:46:56', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '52', 'acc_transaction', 'account/accounts/create_supplier_payment', '{\"vid\":\"26\",\"fyear\":\"3\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Due Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"65.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"4\",\"subCode\":\"8\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 03:46:56\"}', '2023-03-02 20:46:56', 1),
(0, '1', 'approved_vaucher_transation', 'create', '53', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"27\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"640.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:07:13\"}', '2023-03-02 21:07:13', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '54', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"27\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-03\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"640.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:07:13\"}', '2023-03-02 21:07:13', 1),
(0, '1', 'approved_vaucher_transation', 'create', '55', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"28\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-03\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"640.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:07:13\"}', '2023-03-02 21:07:13', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '56', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"28\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"640.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:07:13\"}', '2023-03-02 21:07:13', 1),
(0, '1', 'approved_vaucher_transation', 'create', '57', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"29\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-03\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:07:13\"}', '2023-03-02 21:07:13', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '58', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"29\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-03\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:07:13\"}', '2023-03-02 21:07:13', 1),
(0, '1', 'approved_vaucher_transation', 'create', '59', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"30\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:25:31\"}', '2023-03-02 21:25:31', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '60', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"30\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-03\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:25:31\"}', '2023-03-02 21:25:31', 1);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES
(0, '1', 'approved_vaucher_transation', 'create', '61', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"31\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-03\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:25:31\"}', '2023-03-02 21:25:31', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '62', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"31\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-03\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:25:31\"}', '2023-03-02 21:25:31', 1),
(0, '1', 'approved_vaucher_transation', 'create', '63', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"32\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-03\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:25:31\"}', '2023-03-02 21:25:31', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '64', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"32\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-03\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-03 10:25:31\"}', '2023-03-02 21:25:31', 1),
(0, '1', 'approved_vaucher_transation', 'create', '65', 'acc_transaction', 'account/accounts/isactive/DV-4/active', '{\"vid\":\"33\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"145.20\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 09:02:11\"}', '2023-03-04 02:02:11', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '66', 'acc_transaction', 'account/accounts/isactive/DV-4/active', '{\"vid\":\"33\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-04\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"145.20\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 09:02:11\"}', '2023-03-04 02:02:11', 1),
(0, '1', 'coa_account', 'update', '1020102', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"1020102\",\"Pheadcode\":\"10201\",\"HeadName\":\"CASHIER MERCHANT\",\"PHeadName\":\"Cash\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"A\",\"IsBudget\":0,\"isCashNature\":\"1\",\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 12:02:29\"}', '2023-03-04 05:02:30', 2),
(0, '1', 'coa_account', 'create', '244', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"1020103\",\"Pheadcode\":\"10201\",\"HeadName\":\"E-Dahab\",\"PHeadName\":\"Cash\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"A\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 12:03:50\"}', '2023-03-04 05:03:50', 1),
(0, '1', 'coa_account', 'update', '1020103', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"1020103\",\"Pheadcode\":\"10201\",\"HeadName\":\"E-Dahab\",\"PHeadName\":\"Cash\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"A\",\"IsBudget\":0,\"isCashNature\":\"1\",\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 12:03:57\"}', '2023-03-04 05:03:57', 2),
(0, '1', 'coa_account', 'create', '245', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"1020104\",\"Pheadcode\":\"10201\",\"HeadName\":\"MERCHANT\",\"PHeadName\":\"Cash\",\"HeadLevel\":\"4\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"A\",\"IsBudget\":0,\"isCashNature\":\"1\",\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 12:04:45\"}', '2023-03-04 05:04:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '67', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"34\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"68.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '68', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"34\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"68.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_transation', 'create', '69', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"35\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"7.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '70', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"35\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"7.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_transation', 'create', '71', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"36\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"82.50\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '72', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"36\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"82.50\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_transation', 'create', '73', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"37\",\"fyear\":\"3\",\"VNo\":\"JV-6\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '74', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"37\",\"fyear\":\"3\",\"VNo\":\"JV-6\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-04\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:06:16\"}', '2023-03-04 06:06:16', 1),
(0, '1', 'approved_vaucher_transation', 'create', '75', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"38\",\"fyear\":\"1\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"4\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"98.90\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 15:54:35\"}', '2023-03-04 08:54:35', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '76', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"38\",\"fyear\":\"1\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"4\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"98.90\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 15:54:35\"}', '2023-03-04 08:54:35', 1),
(0, '1', 'approved_vaucher_transation', 'create', '77', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"39\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"5\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"98.90\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:04:47\"}', '2023-03-04 09:04:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '78', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"39\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"5\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"98.90\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:04:47\"}', '2023-03-04 09:04:47', 1),
(0, '1', 'approved_vaucher_transation', 'create', '79', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"40\",\"fyear\":\"1\",\"VNo\":\"DV-7\",\"Vtype\":\"DV\",\"referenceNo\":\"6\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"50.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020104\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:30:47\"}', '2023-03-04 09:30:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '80', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"40\",\"fyear\":\"1\",\"VNo\":\"DV-7\",\"Vtype\":\"DV\",\"referenceNo\":\"6\",\"VDate\":\"2023-03-04\",\"COAID\":\"1020104\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"50.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-04 16:30:47\"}', '2023-03-04 09:30:47', 1),
(0, '1', 'approved_vaucher_transation', 'create', '81', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"41\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-11\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"258.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 07:10:50\"}', '2023-03-10 21:10:50', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '82', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"41\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-11\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"258.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 07:10:50\"}', '2023-03-10 21:10:50', 1),
(0, '1', 'approved_vaucher_transation', 'create', '83', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"42\",\"fyear\":\"3\",\"VNo\":\"JV-7\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-11\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"141.90\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 07:10:50\"}', '2023-03-10 21:10:50', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '84', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"42\",\"fyear\":\"3\",\"VNo\":\"JV-7\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-11\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"141.90\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 07:10:50\"}', '2023-03-10 21:10:50', 1),
(0, '1', 'approved_vaucher_transation', 'create', '85', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"43\",\"fyear\":\"3\",\"VNo\":\"JV-8\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-11\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 07:10:50\"}', '2023-03-10 21:10:50', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '86', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"43\",\"fyear\":\"3\",\"VNo\":\"JV-8\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-11\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 07:10:50\"}', '2023-03-10 21:10:50', 1),
(0, '1', 'approved_vaucher_transation', 'create', '87', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"44\",\"fyear\":\"1\",\"VNo\":\"DV-8\",\"Vtype\":\"DV\",\"referenceNo\":\"7\",\"VDate\":\"2023-03-11\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"490.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 12:31:33\"}', '2023-03-11 05:31:33', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '88', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"44\",\"fyear\":\"1\",\"VNo\":\"DV-8\",\"Vtype\":\"DV\",\"referenceNo\":\"7\",\"VDate\":\"2023-03-11\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"490.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 12:31:33\"}', '2023-03-11 05:31:33', 1),
(0, '1', 'coa_account', 'create', '246', 'acc_coa', 'account/accounts/insert_coa', '{\"HeadCode\":\"30107\",\"Pheadcode\":\"301\",\"HeadName\":\"Purchase Discount\",\"PHeadName\":\"Direct Income\",\"HeadLevel\":\"3\",\"IsActive\":\"1\",\"isStock\":0,\"isSubType\":0,\"DepreciationRate\":0,\"HeadType\":\"I\",\"IsBudget\":0,\"isCashNature\":0,\"isBankNature\":0,\"isFixedAssetSch\":0,\"assetCode\":null,\"depCode\":null,\"subType\":1,\"noteNo\":null,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-11 14:31:23\"}', '2023-03-11 07:31:23', 1),
(0, '1', 'opening_balance', 'create', '12', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"45000\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:36:52\"}', '2023-03-11 23:36:52', 1),
(0, '1', 'opening_balance', 'create', '13', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"1530\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:36:52\"}', '2023-03-11 23:36:52', 1),
(0, '1', 'opening_balance', 'create', '14', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020801\",\"subType\":\"3\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"540\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:36:52\"}', '2023-03-11 23:36:52', 1),
(0, '1', 'opening_balance', 'create', '15', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"\",\"Credit\":\"47070\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:36:52\"}', '2023-03-11 23:36:52', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-1', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-11\",\"COAID\":\"2010101\",\"Narration\":\"Opening Balance\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"45000\",\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:39:03\",\"status\":0}', '2023-03-11 23:39:03', 1),
(0, '1', 'approved_vaucher_transation', 'create', '89', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"45\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-11\",\"COAID\":\"2010101\",\"Narration\":\"Opening Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"0.00\",\"Credit\":\"45000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:39:37\"}', '2023-03-11 23:39:37', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '90', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"45\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-11\",\"COAID\":\"1020101\",\"Narration\":\"Opening Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"45000.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:39:37\"}', '2023-03-11 23:39:37', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-2', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-12\",\"COAID\":\"2010101\",\"Narration\":\"Opening Balance\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"1230\",\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:40:44\",\"status\":0}', '2023-03-11 23:40:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '91', 'acc_transaction', 'account/accounts/isactive/CV-2/active', '{\"vid\":\"46\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-12\",\"COAID\":\"2010101\",\"Narration\":\"Opening Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"0.00\",\"Credit\":\"1230.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:41:12\"}', '2023-03-11 23:41:12', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '92', 'acc_transaction', 'account/accounts/isactive/CV-2/active', '{\"vid\":\"46\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-12\",\"COAID\":\"1020103\",\"Narration\":\"Opening Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"1230.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:41:12\"}', '2023-03-11 23:41:12', 1),
(0, '1', 'approved_vaucher_transation', 'create', '93', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"47\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"400.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:52:49\"}', '2023-03-11 23:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '94', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"47\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"400.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:52:49\"}', '2023-03-11 23:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '95', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"48\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"1120.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:52:49\"}', '2023-03-11 23:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '96', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"48\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"1120.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 06:52:49\"}', '2023-03-11 23:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '98', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"49\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"920.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 11:59:04\"}', '2023-03-12 01:59:04', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '99', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"49\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"920.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 11:59:04\"}', '2023-03-12 01:59:04', 1),
(0, '1', 'approved_vaucher_transation', 'create', '100', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"50\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"840.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 11:59:04\"}', '2023-03-12 01:59:04', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '101', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"50\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"840.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 11:59:04\"}', '2023-03-12 01:59:04', 1),
(0, '1', 'approved_vaucher_transation', 'create', '102', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"51\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 11:59:04\"}', '2023-03-12 01:59:04', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '103', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"51\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 11:59:04\"}', '2023-03-12 01:59:04', 1),
(0, '1', 'approved_vaucher_transation', 'create', '104', 'acc_transaction', 'account/accounts/create_customer_receive', '{\"vid\":\"52\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020801\",\"Narration\":\"Sales Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Due Voucher for Customer\",\"Debit\":\"0.00\",\"Credit\":\"158.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"3\",\"subCode\":\"6\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 09:19:08\"}', '2023-03-12 02:19:08', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '105', 'acc_transaction', 'account/accounts/create_customer_receive', '{\"vid\":\"52\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-12\",\"COAID\":\"1020103\",\"Narration\":\"Sales Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Due Voucher for Customer\",\"Debit\":\"158.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020801\",\"subType\":\"3\",\"subCode\":\"6\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-12 09:19:08\"}', '2023-03-12 02:19:08', 1),
(0, '1', 'approved_vaucher_transation', 'create', '106', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"53\",\"fyear\":\"1\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":1980,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 07:55:06\"}', '2023-03-14 00:55:06', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '107', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"53\",\"fyear\":\"1\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"1900.00\",\"Credit\":0,\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 07:55:06\"}', '2023-03-14 00:55:06', 1),
(0, '1', 'approved_vaucher_transation', 'create', '110', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"54\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":1980,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 07:55:06\"}', '2023-03-14 00:55:06', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '111', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"54\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"1900.00\",\"Credit\":0,\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 07:55:06\"}', '2023-03-14 00:55:06', 1),
(0, '1', 'approved_vaucher_transation', 'create', '114', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"55\",\"fyear\":\"1\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":550,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 08:18:14\"}', '2023-03-14 01:18:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '115', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"55\",\"fyear\":\"1\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020101\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"550.00\",\"Credit\":0,\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 08:18:14\"}', '2023-03-14 01:18:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '118', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"56\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":550,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 08:18:14\"}', '2023-03-14 01:18:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '119', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"56\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"550.00\",\"Credit\":0,\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 08:18:14\"}', '2023-03-14 01:18:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '122', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"57\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"820.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:20:46\"}', '2023-03-14 04:20:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '123', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"57\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-14\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":0,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:20:46\"}', '2023-03-14 04:20:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '124', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"58\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-14\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"770.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:20:46\"}', '2023-03-14 04:20:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '125', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"58\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":0,\"Credit\":\"770.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:20:46\"}', '2023-03-14 04:20:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '126', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"59\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020801\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"240.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"3\",\"subCode\":\"6\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:33:16\"}', '2023-03-14 04:33:16', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '127', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"59\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-14\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":0,\"Credit\":\"240.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020801\",\"subType\":\"3\",\"subCode\":\"6\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:33:16\"}', '2023-03-14 04:33:16', 1),
(0, '1', 'approved_vaucher_transation', 'create', '130', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"60\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-14\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":240,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:33:16\"}', '2023-03-14 04:33:16', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '131', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"60\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-14\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":0,\"Credit\":240,\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-14 14:33:16\"}', '2023-03-14 04:33:16', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-1', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"Open Balance\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"43500\",\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 09:56:15\",\"status\":0}', '2023-03-16 02:56:15', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-2', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"Open Balance\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"4620\",\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 09:56:45\",\"status\":0}', '2023-03-16 02:56:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '134', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"62\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"Open Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":null,\"Credit\":\"4620.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 09:57:47\"}', '2023-03-16 02:57:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '135', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"62\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"1020101\",\"Narration\":\"Open Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 09:57:47\"}', '2023-03-16 02:57:47', 1),
(0, '1', 'approved_vaucher_transation', 'create', '136', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"61\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"Open Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":null,\"Credit\":\"43500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 09:57:47\"}', '2023-03-16 02:57:47', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '137', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"61\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"1020101\",\"Narration\":\"Open Balance\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 09:57:47\"}', '2023-03-16 02:57:47', 1),
(0, '1', 'debit_vaucher', 'create', 'DV-1', 'acc_vaucher', 'account/accounts/store_debit_voucher', '{\"fyear\":\"3\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":\"43500\",\"Credit\":0,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:00:21\",\"status\":0}', '2023-03-16 03:00:21', 1),
(0, '1', 'approved_vaucher_transation', 'create', '138', 'acc_transaction', 'account/accounts/isactive/DV-1/active', '{\"vid\":\"63\",\"fyear\":\"3\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"43500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:01:15\"}', '2023-03-16 03:01:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '139', 'acc_transaction', 'account/accounts/isactive/DV-1/active', '{\"vid\":\"63\",\"fyear\":\"3\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"1020101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"43500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:01:15\"}', '2023-03-16 03:01:15', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-1', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"43500\",\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:06:05\",\"status\":0}', '2023-03-16 03:06:05', 1),
(0, '1', 'approved_vaucher_transation', 'create', '140', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"64\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":null,\"Credit\":\"43500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:07:49\"}', '2023-03-16 03:07:49', 1);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES
(0, '1', 'approved_vaucher_reversetransa', 'create', '141', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"64\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-16\",\"COAID\":\"1020101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:07:49\"}', '2023-03-16 03:07:49', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-1', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Open Balance\",\"Debit\":0,\"Credit\":\"43500\",\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:14:44\",\"status\":0}', '2023-03-16 03:14:44', 1),
(0, '1', 'approved_vaucher_transation', 'create', '142', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"65\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Open Balance\",\"Debit\":null,\"Credit\":\"43500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:15:14\"}', '2023-03-16 03:15:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '143', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"65\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"1020102\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Open Balance\",\"Debit\":0,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-16 10:15:14\"}', '2023-03-16 03:15:14', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-2', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"28000\",\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 05:52:02\",\"status\":0}', '2023-03-16 22:52:02', 1),
(0, '1', 'approved_vaucher_transation', 'create', '144', 'acc_transaction', 'account/accounts/isactive/CV-2/active', '{\"vid\":\"66\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"2010101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":null,\"Credit\":\"28000.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 05:52:17\"}', '2023-03-16 22:52:17', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '145', 'acc_transaction', 'account/accounts/isactive/CV-2/active', '{\"vid\":\"66\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"1020101\",\"Narration\":\"First Trasaction\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 05:52:17\"}', '2023-03-16 22:52:17', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-3', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"2010101\",\"Narration\":\"secon transaction\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"7600\",\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 06:00:16\",\"status\":0}', '2023-03-16 23:00:16', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-1', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"2010101\",\"Narration\":\"second 2\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Begining Balance\",\"Debit\":0,\"Credit\":\"8100\",\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 06:02:52\",\"status\":0}', '2023-03-16 23:02:52', 1),
(0, '1', 'approved_vaucher_transation', 'create', '146', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"68\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"2010101\",\"Narration\":\"second 2\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"0.00\",\"Credit\":\"8100.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 06:03:06\"}', '2023-03-16 23:03:06', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '147', 'acc_transaction', 'account/accounts/isactive/CV-1/active', '{\"vid\":\"68\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-17\",\"COAID\":\"1020102\",\"Narration\":\"second 2\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Begining Balance\",\"Debit\":\"8100.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-17 06:03:06\"}', '2023-03-16 23:03:06', 1),
(0, '1', 'approved_vaucher_transation', 'create', '148', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"69\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"5250.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 03:59:54\"}', '2023-03-17 20:59:54', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '149', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"69\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"5250.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 03:59:54\"}', '2023-03-17 20:59:54', 1),
(0, '1', 'approved_vaucher_transation', 'create', '150', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"70\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"1980.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 04:04:02\"}', '2023-03-17 21:04:02', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '151', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"70\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"1980.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 04:04:02\"}', '2023-03-17 21:04:02', 1),
(0, '1', 'approved_vaucher_transation', 'create', '152', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"71\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"600.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:17:19\"}', '2023-03-17 21:17:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '153', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"71\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"600.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:17:19\"}', '2023-03-17 21:17:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '154', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"72\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"550.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:17:19\"}', '2023-03-17 21:17:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '155', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"72\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"550.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:17:19\"}', '2023-03-17 21:17:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '156', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"73\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:17:19\"}', '2023-03-17 21:17:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '157', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"73\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:17:19\"}', '2023-03-17 21:17:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '158', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"74\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"590.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:20:33\"}', '2023-03-17 21:20:33', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '159', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"74\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"590.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:20:33\"}', '2023-03-17 21:20:33', 1),
(0, '1', 'approved_vaucher_transation', 'create', '160', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"75\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"660.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:20:33\"}', '2023-03-17 21:20:33', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '161', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"75\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"660.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:20:33\"}', '2023-03-17 21:20:33', 1),
(0, '1', 'approved_vaucher_transation', 'create', '162', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"76\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:20:33\"}', '2023-03-17 21:20:33', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '163', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"76\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 07:20:33\"}', '2023-03-17 21:20:33', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-1', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"2010101\",\"Narration\":\"Begining Balance 15\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Open Balance 15.03.2023\",\"Debit\":0,\"Credit\":\"43500\",\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:34:59\",\"status\":0}', '2023-03-18 03:34:59', 1),
(0, '1', 'credit_vaucher', 'create', 'CV-2', 'acc_vaucher', 'account/accounts/store_credit_voucher', '{\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"2010101\",\"Narration\":\"Begining balance 15\",\"chequeNo\":\"\",\"chequeDate\":\"\",\"isHonour\":0,\"ledgerComment\":\"Open Balance 15.03.2023\",\"Debit\":0,\"Credit\":\"4620\",\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"isApproved\":0,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:36:17\",\"status\":0}', '2023-03-18 03:36:17', 1),
(0, '1', 'approved_vaucher_transation', 'create', '164', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"78\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"2010101\",\"Narration\":\"Begining balance 15\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Open Balance 15.03.2023\",\"Debit\":\"0.00\",\"Credit\":\"4620.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:36:45\"}', '2023-03-18 03:36:45', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '165', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"78\",\"fyear\":\"3\",\"VNo\":\"CV-2\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"1020103\",\"Narration\":\"Begining balance 15\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Open Balance 15.03.2023\",\"Debit\":\"4620.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:36:45\"}', '2023-03-18 03:36:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '166', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"77\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"2010101\",\"Narration\":\"Begining Balance 15\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Open Balance 15.03.2023\",\"Debit\":\"0.00\",\"Credit\":\"43500.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:36:45\"}', '2023-03-18 03:36:45', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '167', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"77\",\"fyear\":\"3\",\"VNo\":\"CV-1\",\"Vtype\":\"CV\",\"referenceNo\":null,\"VDate\":\"2023-03-15\",\"COAID\":\"1020102\",\"Narration\":\"Begining Balance 15\",\"chequeNo\":\"\",\"chequeDate\":\"0000-00-00\",\"isHonour\":\"0\",\"ledgerComment\":\"Open Balance 15.03.2023\",\"Debit\":\"43500.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:36:45\"}', '2023-03-18 03:36:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '168', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"79\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"4320.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:41:25\"}', '2023-03-18 03:41:25', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '169', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"79\",\"fyear\":\"1\",\"VNo\":\"DV-1\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"4320.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:41:25\"}', '2023-03-18 03:41:25', 1),
(0, '1', 'approved_vaucher_transation', 'create', '170', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"80\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"930.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:41:25\"}', '2023-03-18 03:41:25', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '171', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"80\",\"fyear\":\"1\",\"VNo\":\"DV-2\",\"Vtype\":\"DV\",\"referenceNo\":\"1\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"930.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:41:25\"}', '2023-03-18 03:41:25', 1),
(0, '1', 'approved_vaucher_transation', 'create', '172', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"81\",\"fyear\":\"1\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"1980.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:49:41\"}', '2023-03-18 03:49:41', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '173', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"81\",\"fyear\":\"1\",\"VNo\":\"DV-3\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"1980.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 10:49:41\"}', '2023-03-18 03:49:41', 1),
(0, '1', 'approved_vaucher_transation', 'create', '174', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"82\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"330.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:13:20\"}', '2023-03-18 09:13:20', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '175', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"82\",\"fyear\":\"1\",\"VNo\":\"DV-4\",\"Vtype\":\"DV\",\"referenceNo\":\"3\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"330.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:13:20\"}', '2023-03-18 09:13:20', 1),
(0, '1', 'approved_vaucher_transation', 'create', '176', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"83\",\"fyear\":\"1\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"4\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"330.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:15:37\"}', '2023-03-18 09:15:37', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '177', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"83\",\"fyear\":\"1\",\"VNo\":\"DV-5\",\"Vtype\":\"DV\",\"referenceNo\":\"4\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"330.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:15:37\"}', '2023-03-18 09:15:37', 1),
(0, '1', 'approved_vaucher_transation', 'create', '178', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"84\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"5\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"440.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:19:01\"}', '2023-03-18 09:19:01', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '179', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"84\",\"fyear\":\"1\",\"VNo\":\"DV-6\",\"Vtype\":\"DV\",\"referenceNo\":\"5\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"440.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:19:01\"}', '2023-03-18 09:19:01', 1),
(0, '1', 'approved_vaucher_transation', 'create', '180', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"85\",\"fyear\":\"1\",\"VNo\":\"DV-7\",\"Vtype\":\"DV\",\"referenceNo\":\"6\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"605.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:29:58\"}', '2023-03-18 09:29:58', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '181', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"85\",\"fyear\":\"1\",\"VNo\":\"DV-7\",\"Vtype\":\"DV\",\"referenceNo\":\"6\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"605.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:29:58\"}', '2023-03-18 09:29:58', 1),
(0, '1', 'approved_vaucher_transation', 'create', '182', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"86\",\"fyear\":\"1\",\"VNo\":\"DV-8\",\"Vtype\":\"DV\",\"referenceNo\":\"7\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"210.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:47:24\"}', '2023-03-18 09:47:24', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '183', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"86\",\"fyear\":\"1\",\"VNo\":\"DV-8\",\"Vtype\":\"DV\",\"referenceNo\":\"7\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"210.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:47:24\"}', '2023-03-18 09:47:24', 1),
(0, '1', 'approved_vaucher_transation', 'create', '184', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"87\",\"fyear\":\"1\",\"VNo\":\"DV-9\",\"Vtype\":\"DV\",\"referenceNo\":\"7\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:47:24\"}', '2023-03-18 09:47:24', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '185', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"87\",\"fyear\":\"1\",\"VNo\":\"DV-9\",\"Vtype\":\"DV\",\"referenceNo\":\"7\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 16:47:24\"}', '2023-03-18 09:47:24', 1),
(0, '1', 'approved_vaucher_transation', 'create', '186', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"88\",\"fyear\":\"1\",\"VNo\":\"DV-10\",\"Vtype\":\"DV\",\"referenceNo\":\"8\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"120.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:39:59\"}', '2023-03-18 10:39:59', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '187', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"88\",\"fyear\":\"1\",\"VNo\":\"DV-10\",\"Vtype\":\"DV\",\"referenceNo\":\"8\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"120.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:39:59\"}', '2023-03-18 10:39:59', 1),
(0, '1', 'approved_vaucher_transation', 'create', '188', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"89\",\"fyear\":\"1\",\"VNo\":\"DV-11\",\"Vtype\":\"DV\",\"referenceNo\":\"8\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"80.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:39:59\"}', '2023-03-18 10:39:59', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '189', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"89\",\"fyear\":\"1\",\"VNo\":\"DV-11\",\"Vtype\":\"DV\",\"referenceNo\":\"8\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"80.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:39:59\"}', '2023-03-18 10:39:59', 1),
(0, '1', 'approved_vaucher_transation', 'create', '190', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"90\",\"fyear\":\"1\",\"VNo\":\"DV-12\",\"Vtype\":\"DV\",\"referenceNo\":\"9\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"80.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:42:02\"}', '2023-03-18 10:42:02', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '191', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"90\",\"fyear\":\"1\",\"VNo\":\"DV-12\",\"Vtype\":\"DV\",\"referenceNo\":\"9\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"80.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:42:02\"}', '2023-03-18 10:42:02', 1),
(0, '1', 'approved_vaucher_transation', 'create', '192', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"91\",\"fyear\":\"1\",\"VNo\":\"DV-13\",\"Vtype\":\"DV\",\"referenceNo\":\"9\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"20.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:42:02\"}', '2023-03-18 10:42:02', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '193', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"91\",\"fyear\":\"1\",\"VNo\":\"DV-13\",\"Vtype\":\"DV\",\"referenceNo\":\"9\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"20.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 17:42:02\"}', '2023-03-18 10:42:02', 1),
(0, '1', 'approved_vaucher_transation', 'create', '194', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"101\",\"fyear\":\"1\",\"VNo\":\"DV-23\",\"Vtype\":\"DV\",\"referenceNo\":\"14\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"70.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:11:07\"}', '2023-03-18 11:11:07', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '195', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"101\",\"fyear\":\"1\",\"VNo\":\"DV-23\",\"Vtype\":\"DV\",\"referenceNo\":\"14\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"70.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:11:07\"}', '2023-03-18 11:11:07', 1),
(0, '1', 'approved_vaucher_transation', 'create', '196', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"102\",\"fyear\":\"1\",\"VNo\":\"DV-24\",\"Vtype\":\"DV\",\"referenceNo\":\"14\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"30.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:11:07\"}', '2023-03-18 11:11:07', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '197', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"102\",\"fyear\":\"1\",\"VNo\":\"DV-24\",\"Vtype\":\"DV\",\"referenceNo\":\"14\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"30.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:11:07\"}', '2023-03-18 11:11:07', 1),
(0, '1', 'approved_vaucher_transation', 'create', '198', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"103\",\"fyear\":\"1\",\"VNo\":\"DV-25\",\"Vtype\":\"DV\",\"referenceNo\":\"14\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"32.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:11:07\"}', '2023-03-18 11:11:07', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '199', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"103\",\"fyear\":\"1\",\"VNo\":\"DV-25\",\"Vtype\":\"DV\",\"referenceNo\":\"14\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"32.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:11:07\"}', '2023-03-18 11:11:07', 1),
(0, '1', 'approved_vaucher_transation', 'create', '200', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"104\",\"fyear\":\"1\",\"VNo\":\"DV-26\",\"Vtype\":\"DV\",\"referenceNo\":\"15\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"390.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:14:23\"}', '2023-03-18 11:14:23', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '201', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"104\",\"fyear\":\"1\",\"VNo\":\"DV-26\",\"Vtype\":\"DV\",\"referenceNo\":\"15\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"390.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:14:23\"}', '2023-03-18 11:14:23', 1),
(0, '1', 'approved_vaucher_transation', 'create', '202', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"105\",\"fyear\":\"1\",\"VNo\":\"DV-27\",\"Vtype\":\"DV\",\"referenceNo\":\"15\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"100.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:14:23\"}', '2023-03-18 11:14:23', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '203', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"105\",\"fyear\":\"1\",\"VNo\":\"DV-27\",\"Vtype\":\"DV\",\"referenceNo\":\"15\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"100.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:14:23\"}', '2023-03-18 11:14:23', 1),
(0, '1', 'approved_vaucher_transation', 'create', '204', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"106\",\"fyear\":\"1\",\"VNo\":\"DV-28\",\"Vtype\":\"DV\",\"referenceNo\":\"15\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"115.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:14:23\"}', '2023-03-18 11:14:23', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '205', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"106\",\"fyear\":\"1\",\"VNo\":\"DV-28\",\"Vtype\":\"DV\",\"referenceNo\":\"15\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"115.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:14:23\"}', '2023-03-18 11:14:23', 1),
(0, '1', 'approved_vaucher_transation', 'create', '206', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"107\",\"fyear\":\"1\",\"VNo\":\"DV-29\",\"Vtype\":\"DV\",\"referenceNo\":\"16\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:24:42\"}', '2023-03-18 11:24:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '207', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"107\",\"fyear\":\"1\",\"VNo\":\"DV-29\",\"Vtype\":\"DV\",\"referenceNo\":\"16\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:24:42\"}', '2023-03-18 11:24:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '208', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"108\",\"fyear\":\"1\",\"VNo\":\"DV-30\",\"Vtype\":\"DV\",\"referenceNo\":\"16\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"100.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:24:42\"}', '2023-03-18 11:24:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '209', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"108\",\"fyear\":\"1\",\"VNo\":\"DV-30\",\"Vtype\":\"DV\",\"referenceNo\":\"16\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"100.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:24:42\"}', '2023-03-18 11:24:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '210', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"109\",\"fyear\":\"1\",\"VNo\":\"DV-31\",\"Vtype\":\"DV\",\"referenceNo\":\"16\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"150.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:24:42\"}', '2023-03-18 11:24:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '211', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"109\",\"fyear\":\"1\",\"VNo\":\"DV-31\",\"Vtype\":\"DV\",\"referenceNo\":\"16\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"150.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:24:42\"}', '2023-03-18 11:24:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '212', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"110\",\"fyear\":\"1\",\"VNo\":\"DV-32\",\"Vtype\":\"DV\",\"referenceNo\":\"17\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:27:08\"}', '2023-03-18 11:27:08', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '213', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"110\",\"fyear\":\"1\",\"VNo\":\"DV-32\",\"Vtype\":\"DV\",\"referenceNo\":\"17\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:27:08\"}', '2023-03-18 11:27:08', 1);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES
(0, '1', 'approved_vaucher_transation', 'create', '214', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"111\",\"fyear\":\"1\",\"VNo\":\"DV-33\",\"Vtype\":\"DV\",\"referenceNo\":\"17\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"100.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:27:08\"}', '2023-03-18 11:27:08', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '215', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"111\",\"fyear\":\"1\",\"VNo\":\"DV-33\",\"Vtype\":\"DV\",\"referenceNo\":\"17\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"100.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:27:08\"}', '2023-03-18 11:27:08', 1),
(0, '1', 'approved_vaucher_transation', 'create', '216', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"112\",\"fyear\":\"1\",\"VNo\":\"DV-34\",\"Vtype\":\"DV\",\"referenceNo\":\"17\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"95.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:27:08\"}', '2023-03-18 11:27:08', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '217', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"112\",\"fyear\":\"1\",\"VNo\":\"DV-34\",\"Vtype\":\"DV\",\"referenceNo\":\"17\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"95.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:27:08\"}', '2023-03-18 11:27:08', 1),
(0, '1', 'approved_vaucher_transation', 'create', '218', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"113\",\"fyear\":\"1\",\"VNo\":\"DV-35\",\"Vtype\":\"DV\",\"referenceNo\":\"18\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"300.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:29:46\"}', '2023-03-18 11:29:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '219', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"113\",\"fyear\":\"1\",\"VNo\":\"DV-35\",\"Vtype\":\"DV\",\"referenceNo\":\"18\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"300.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:29:46\"}', '2023-03-18 11:29:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '220', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"114\",\"fyear\":\"1\",\"VNo\":\"DV-36\",\"Vtype\":\"DV\",\"referenceNo\":\"18\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:29:46\"}', '2023-03-18 11:29:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '221', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"114\",\"fyear\":\"1\",\"VNo\":\"DV-36\",\"Vtype\":\"DV\",\"referenceNo\":\"18\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:29:46\"}', '2023-03-18 11:29:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '222', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"115\",\"fyear\":\"1\",\"VNo\":\"DV-37\",\"Vtype\":\"DV\",\"referenceNo\":\"18\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"28.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:29:46\"}', '2023-03-18 11:29:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '223', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"115\",\"fyear\":\"1\",\"VNo\":\"DV-37\",\"Vtype\":\"DV\",\"referenceNo\":\"18\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"28.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:29:46\"}', '2023-03-18 11:29:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '224', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"116\",\"fyear\":\"1\",\"VNo\":\"DV-38\",\"Vtype\":\"DV\",\"referenceNo\":\"19\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"470.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:32:00\"}', '2023-03-18 11:32:00', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '225', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"116\",\"fyear\":\"1\",\"VNo\":\"DV-38\",\"Vtype\":\"DV\",\"referenceNo\":\"19\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"470.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:32:00\"}', '2023-03-18 11:32:00', 1),
(0, '1', 'approved_vaucher_transation', 'create', '226', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"117\",\"fyear\":\"1\",\"VNo\":\"DV-39\",\"Vtype\":\"DV\",\"referenceNo\":\"19\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"10.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:32:00\"}', '2023-03-18 11:32:00', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '227', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"117\",\"fyear\":\"1\",\"VNo\":\"DV-39\",\"Vtype\":\"DV\",\"referenceNo\":\"19\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"10.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:32:00\"}', '2023-03-18 11:32:00', 1),
(0, '1', 'approved_vaucher_transation', 'create', '228', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"118\",\"fyear\":\"1\",\"VNo\":\"DV-40\",\"Vtype\":\"DV\",\"referenceNo\":\"19\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"20.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:32:00\"}', '2023-03-18 11:32:00', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '229', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"118\",\"fyear\":\"1\",\"VNo\":\"DV-40\",\"Vtype\":\"DV\",\"referenceNo\":\"19\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"20.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:32:00\"}', '2023-03-18 11:32:00', 1),
(0, '1', 'approved_vaucher_transation', 'create', '230', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"119\",\"fyear\":\"1\",\"VNo\":\"DV-41\",\"Vtype\":\"DV\",\"referenceNo\":\"20\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"70.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:43:21\"}', '2023-03-18 11:43:21', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '231', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"119\",\"fyear\":\"1\",\"VNo\":\"DV-41\",\"Vtype\":\"DV\",\"referenceNo\":\"20\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"70.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:43:21\"}', '2023-03-18 11:43:21', 1),
(0, '1', 'approved_vaucher_transation', 'create', '232', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"120\",\"fyear\":\"1\",\"VNo\":\"DV-42\",\"Vtype\":\"DV\",\"referenceNo\":\"20\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"30.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:43:21\"}', '2023-03-18 11:43:21', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '233', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"120\",\"fyear\":\"1\",\"VNo\":\"DV-42\",\"Vtype\":\"DV\",\"referenceNo\":\"20\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"30.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:43:21\"}', '2023-03-18 11:43:21', 1),
(0, '1', 'approved_vaucher_transation', 'create', '234', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"121\",\"fyear\":\"1\",\"VNo\":\"DV-43\",\"Vtype\":\"DV\",\"referenceNo\":\"20\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"9.50\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:43:21\"}', '2023-03-18 11:43:21', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '235', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"121\",\"fyear\":\"1\",\"VNo\":\"DV-43\",\"Vtype\":\"DV\",\"referenceNo\":\"20\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"9.50\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:43:21\"}', '2023-03-18 11:43:21', 1),
(0, '1', 'approved_vaucher_transation', 'create', '236', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"122\",\"fyear\":\"1\",\"VNo\":\"DV-44\",\"Vtype\":\"DV\",\"referenceNo\":\"21\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"150.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:46:30\"}', '2023-03-18 11:46:30', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '237', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"122\",\"fyear\":\"1\",\"VNo\":\"DV-44\",\"Vtype\":\"DV\",\"referenceNo\":\"21\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"150.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:46:30\"}', '2023-03-18 11:46:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '238', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"123\",\"fyear\":\"1\",\"VNo\":\"DV-45\",\"Vtype\":\"DV\",\"referenceNo\":\"21\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"50.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:46:30\"}', '2023-03-18 11:46:30', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '239', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"123\",\"fyear\":\"1\",\"VNo\":\"DV-45\",\"Vtype\":\"DV\",\"referenceNo\":\"21\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"50.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:46:30\"}', '2023-03-18 11:46:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '240', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"124\",\"fyear\":\"1\",\"VNo\":\"DV-46\",\"Vtype\":\"DV\",\"referenceNo\":\"21\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"98.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":\"10\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:46:30\"}', '2023-03-18 11:46:30', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '241', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"124\",\"fyear\":\"1\",\"VNo\":\"DV-46\",\"Vtype\":\"DV\",\"referenceNo\":\"21\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"98.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":\"10\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:46:30\"}', '2023-03-18 11:46:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '242', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"125\",\"fyear\":\"1\",\"VNo\":\"DV-47\",\"Vtype\":\"DV\",\"referenceNo\":\"22\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"450.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:48:55\"}', '2023-03-18 11:48:55', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '243', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"125\",\"fyear\":\"1\",\"VNo\":\"DV-47\",\"Vtype\":\"DV\",\"referenceNo\":\"22\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"450.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:48:55\"}', '2023-03-18 11:48:55', 1),
(0, '1', 'approved_vaucher_transation', 'create', '244', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"126\",\"fyear\":\"1\",\"VNo\":\"DV-48\",\"Vtype\":\"DV\",\"referenceNo\":\"22\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"150.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:48:55\"}', '2023-03-18 11:48:55', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '245', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"126\",\"fyear\":\"1\",\"VNo\":\"DV-48\",\"Vtype\":\"DV\",\"referenceNo\":\"22\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"150.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:48:55\"}', '2023-03-18 11:48:55', 1),
(0, '1', 'approved_vaucher_transation', 'create', '246', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"127\",\"fyear\":\"1\",\"VNo\":\"DV-49\",\"Vtype\":\"DV\",\"referenceNo\":\"23\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"490.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:53:12\"}', '2023-03-18 11:53:12', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '247', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"127\",\"fyear\":\"1\",\"VNo\":\"DV-49\",\"Vtype\":\"DV\",\"referenceNo\":\"23\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"490.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:53:12\"}', '2023-03-18 11:53:12', 1),
(0, '1', 'approved_vaucher_transation', 'create', '248', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"128\",\"fyear\":\"1\",\"VNo\":\"DV-50\",\"Vtype\":\"DV\",\"referenceNo\":\"23\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"190.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:53:12\"}', '2023-03-18 11:53:12', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '249', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"128\",\"fyear\":\"1\",\"VNo\":\"DV-50\",\"Vtype\":\"DV\",\"referenceNo\":\"23\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"190.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:53:12\"}', '2023-03-18 11:53:12', 1),
(0, '1', 'approved_vaucher_transation', 'create', '250', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"129\",\"fyear\":\"1\",\"VNo\":\"DV-51\",\"Vtype\":\"DV\",\"referenceNo\":\"23\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":\"8\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:53:12\"}', '2023-03-18 11:53:12', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '251', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"129\",\"fyear\":\"1\",\"VNo\":\"DV-51\",\"Vtype\":\"DV\",\"referenceNo\":\"23\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":\"8\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 18:53:12\"}', '2023-03-18 11:53:12', 1),
(0, '1', 'approved_vaucher_transation', 'create', '252', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"100\",\"fyear\":\"1\",\"VNo\":\"DV-22\",\"Vtype\":\"DV\",\"referenceNo\":\"13\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"35.80\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '253', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"100\",\"fyear\":\"1\",\"VNo\":\"DV-22\",\"Vtype\":\"DV\",\"referenceNo\":\"13\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"35.80\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '254', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"99\",\"fyear\":\"1\",\"VNo\":\"DV-21\",\"Vtype\":\"DV\",\"referenceNo\":\"13\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"5.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '255', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"99\",\"fyear\":\"1\",\"VNo\":\"DV-21\",\"Vtype\":\"DV\",\"referenceNo\":\"13\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"5.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '256', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"98\",\"fyear\":\"1\",\"VNo\":\"DV-20\",\"Vtype\":\"DV\",\"referenceNo\":\"13\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"45.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '257', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"98\",\"fyear\":\"1\",\"VNo\":\"DV-20\",\"Vtype\":\"DV\",\"referenceNo\":\"13\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"45.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '258', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"97\",\"fyear\":\"1\",\"VNo\":\"DV-19\",\"Vtype\":\"DV\",\"referenceNo\":\"12\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"80.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '259', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"97\",\"fyear\":\"1\",\"VNo\":\"DV-19\",\"Vtype\":\"DV\",\"referenceNo\":\"12\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"80.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '260', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"96\",\"fyear\":\"1\",\"VNo\":\"DV-18\",\"Vtype\":\"DV\",\"referenceNo\":\"12\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"100.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '261', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"96\",\"fyear\":\"1\",\"VNo\":\"DV-18\",\"Vtype\":\"DV\",\"referenceNo\":\"12\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"100.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '262', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"95\",\"fyear\":\"1\",\"VNo\":\"DV-17\",\"Vtype\":\"DV\",\"referenceNo\":\"11\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"50.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '263', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"95\",\"fyear\":\"1\",\"VNo\":\"DV-17\",\"Vtype\":\"DV\",\"referenceNo\":\"11\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"50.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '264', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"94\",\"fyear\":\"1\",\"VNo\":\"DV-16\",\"Vtype\":\"DV\",\"referenceNo\":\"11\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"100.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '265', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"94\",\"fyear\":\"1\",\"VNo\":\"DV-16\",\"Vtype\":\"DV\",\"referenceNo\":\"11\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"100.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:14\"}', '2023-03-18 12:29:14', 1),
(0, '1', 'approved_vaucher_transation', 'create', '266', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"93\",\"fyear\":\"1\",\"VNo\":\"DV-15\",\"Vtype\":\"DV\",\"referenceNo\":\"10\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"20.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:15\"}', '2023-03-18 12:29:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '267', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"93\",\"fyear\":\"1\",\"VNo\":\"DV-15\",\"Vtype\":\"DV\",\"referenceNo\":\"10\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"20.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:15\"}', '2023-03-18 12:29:15', 1),
(0, '1', 'approved_vaucher_transation', 'create', '268', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"92\",\"fyear\":\"1\",\"VNo\":\"DV-14\",\"Vtype\":\"DV\",\"referenceNo\":\"10\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"80.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:15\"}', '2023-03-18 12:29:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '269', 'acc_transaction', 'account/accounts/bulk_voucher_approve', '{\"vid\":\"92\",\"fyear\":\"1\",\"VNo\":\"DV-14\",\"Vtype\":\"DV\",\"referenceNo\":\"10\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"80.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 19:29:15\"}', '2023-03-18 12:29:15', 1),
(0, '1', 'approved_vaucher_transation', 'create', '270', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"130\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"185.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:46:45\"}', '2023-03-18 12:46:45', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '271', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"130\",\"fyear\":\"3\",\"VNo\":\"CV-3\",\"Vtype\":\"CV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"185.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:46:45\"}', '2023-03-18 12:46:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '272', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"131\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"313.50\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:46:45\"}', '2023-03-18 12:46:45', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '273', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"131\",\"fyear\":\"3\",\"VNo\":\"JV-1\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"313.50\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:46:45\"}', '2023-03-18 12:46:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '274', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"132\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:46:45\"}', '2023-03-18 12:46:45', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '275', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"132\",\"fyear\":\"3\",\"VNo\":\"JV-2\",\"Vtype\":\"JV\",\"referenceNo\":\"1000\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:46:45\"}', '2023-03-18 12:46:45', 1),
(0, '1', 'approved_vaucher_transation', 'create', '276', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"133\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"2.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '277', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"133\",\"fyear\":\"3\",\"VNo\":\"CV-4\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"2.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '278', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"134\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '279', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"134\",\"fyear\":\"3\",\"VNo\":\"CV-5\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '280', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"135\",\"fyear\":\"3\",\"VNo\":\"CV-6\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"5.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '281', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"135\",\"fyear\":\"3\",\"VNo\":\"CV-6\",\"Vtype\":\"CV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"5.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '282', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"136\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"16.50\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '283', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"136\",\"fyear\":\"3\",\"VNo\":\"JV-3\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"16.50\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '284', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"137\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '285', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"137\",\"fyear\":\"3\",\"VNo\":\"JV-4\",\"Vtype\":\"JV\",\"referenceNo\":\"1001\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 22:52:49\"}', '2023-03-18 12:52:49', 1),
(0, '1', 'approved_vaucher_transation', 'create', '286', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"138\",\"fyear\":\"3\",\"VNo\":\"CV-7\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"30.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '287', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"138\",\"fyear\":\"3\",\"VNo\":\"CV-7\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"30.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_transation', 'create', '288', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"139\",\"fyear\":\"3\",\"VNo\":\"CV-8\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"10.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '289', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"139\",\"fyear\":\"3\",\"VNo\":\"CV-8\",\"Vtype\":\"CV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"10.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_transation', 'create', '290', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"140\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"43.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '291', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"140\",\"fyear\":\"3\",\"VNo\":\"JV-5\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"43.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES
(0, '1', 'approved_vaucher_transation', 'create', '292', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"141\",\"fyear\":\"3\",\"VNo\":\"JV-6\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '293', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"141\",\"fyear\":\"3\",\"VNo\":\"JV-6\",\"Vtype\":\"JV\",\"referenceNo\":\"1002\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:32:36\"}', '2023-03-18 13:32:36', 1),
(0, '1', 'approved_vaucher_transation', 'create', '294', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"142\",\"fyear\":\"3\",\"VNo\":\"CV-9\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"751.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:38:17\"}', '2023-03-18 13:38:17', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '295', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"142\",\"fyear\":\"3\",\"VNo\":\"CV-9\",\"Vtype\":\"CV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"751.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:38:17\"}', '2023-03-18 13:38:17', 1),
(0, '1', 'approved_vaucher_transation', 'create', '296', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"143\",\"fyear\":\"3\",\"VNo\":\"JV-7\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"723.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:38:17\"}', '2023-03-18 13:38:17', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '297', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"143\",\"fyear\":\"3\",\"VNo\":\"JV-7\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"723.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:38:17\"}', '2023-03-18 13:38:17', 1),
(0, '1', 'approved_vaucher_transation', 'create', '298', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"144\",\"fyear\":\"3\",\"VNo\":\"JV-8\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:38:17\"}', '2023-03-18 13:38:17', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '299', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"144\",\"fyear\":\"3\",\"VNo\":\"JV-8\",\"Vtype\":\"JV\",\"referenceNo\":\"1003\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:38:17\"}', '2023-03-18 13:38:17', 1),
(0, '1', 'approved_vaucher_transation', 'create', '300', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"145\",\"fyear\":\"3\",\"VNo\":\"CV-10\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"10.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '301', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"145\",\"fyear\":\"3\",\"VNo\":\"CV-10\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"10.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_transation', 'create', '302', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"146\",\"fyear\":\"3\",\"VNo\":\"CV-11\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020104\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"13.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '303', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"146\",\"fyear\":\"3\",\"VNo\":\"CV-11\",\"Vtype\":\"CV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"13.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020104\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_transation', 'create', '304', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"147\",\"fyear\":\"3\",\"VNo\":\"JV-9\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"26.50\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '305', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"147\",\"fyear\":\"3\",\"VNo\":\"JV-9\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"26.50\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_transation', 'create', '306', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"148\",\"fyear\":\"3\",\"VNo\":\"JV-10\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '307', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"148\",\"fyear\":\"3\",\"VNo\":\"JV-10\",\"Vtype\":\"JV\",\"referenceNo\":\"1004\",\"VDate\":\"2023-03-18\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 23:42:15\"}', '2023-03-18 13:42:15', 1),
(0, '1', 'opening_balance', 'delete', '15', 'acc_opening_balance', 'account/accounts/delete_opening_balance/15', '{\"id\":\"15\",\"fyear\":\"3\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"0\",\"Credit\":\"47070\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-03-18 09:23:12\"}', '2023-03-18 14:23:12', 3),
(0, '1', 'opening_balance', 'delete', '14', 'acc_opening_balance', 'account/accounts/delete_opening_balance/14', '{\"id\":\"14\",\"fyear\":\"3\",\"COAID\":\"1020801\",\"subType\":\"3\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"540\",\"Credit\":\"0\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-03-18 09:23:17\"}', '2023-03-18 14:23:17', 3),
(0, '1', 'opening_balance', 'delete', '13', 'acc_opening_balance', 'account/accounts/delete_opening_balance/13', '{\"id\":\"13\",\"fyear\":\"3\",\"COAID\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"1530\",\"Credit\":\"0\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-03-18 09:23:21\"}', '2023-03-18 14:23:21', 3),
(0, '1', 'opening_balance', 'delete', '12', 'acc_opening_balance', 'account/accounts/delete_opening_balance/12', '{\"id\":\"12\",\"fyear\":\"3\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"45000\",\"Credit\":\"0\",\"deleteBy\":\"1\",\"deleteDate\":\"2023-03-18 09:23:25\"}', '2023-03-18 14:23:25', 3),
(0, '1', 'opening_balance', 'create', '16', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"1300\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 21:24:46\"}', '2023-03-18 14:24:46', 1),
(0, '1', 'opening_balance', 'create', '17', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020801\",\"subType\":\"3\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"500\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 21:24:46\"}', '2023-03-18 14:24:46', 1),
(0, '1', 'opening_balance', 'create', '18', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"2010101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"\",\"Credit\":\"1800\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 21:24:46\"}', '2023-03-18 14:24:46', 1),
(0, '1', 'opening_balance', 'update', '16', 'acc_opening_balance', 'account/accounts/update_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"1500\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 21:27:30\"}', '2023-03-18 14:27:30', 2),
(0, '1', 'opening_balance', 'create', '19', 'acc_opening_balance', 'account/accounts/create_opening_balance', '{\"fyear\":\"3\",\"COAID\":\"2116000001\",\"subType\":\"1\",\"subCode\":null,\"openDate\":\"2023-01-01\",\"Debit\":\"150\",\"Credit\":\"\",\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-18 21:29:30\"}', '2023-03-18 14:29:30', 1),
(0, '1', 'approved_vaucher_transation', 'create', '308', 'acc_transaction', 'account/accounts/create_supplier_payment', '{\"vid\":\"149\",\"fyear\":\"3\",\"VNo\":\"DV-52\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Due Voucher for supplier\",\"Debit\":\"1954.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"4\",\"subCode\":\"5\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 07:59:52\"}', '2023-03-19 00:59:52', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '309', 'acc_transaction', 'account/accounts/create_supplier_payment', '{\"vid\":\"149\",\"fyear\":\"3\",\"VNo\":\"DV-52\",\"Vtype\":\"DV\",\"referenceNo\":\"2\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Due Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Due Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"1954.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"4\",\"subCode\":\"5\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 07:59:52\"}', '2023-03-19 00:59:52', 1),
(0, '1', 'approved_vaucher_transation', 'create', '310', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"150\",\"fyear\":\"1\",\"VNo\":\"DV-53\",\"Vtype\":\"DV\",\"referenceNo\":\"24\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"50.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:20:52\"}', '2023-03-19 01:20:52', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '311', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"150\",\"fyear\":\"1\",\"VNo\":\"DV-53\",\"Vtype\":\"DV\",\"referenceNo\":\"24\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"50.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:20:52\"}', '2023-03-19 01:20:52', 1),
(0, '1', 'approved_vaucher_transation', 'create', '312', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"151\",\"fyear\":\"1\",\"VNo\":\"DV-54\",\"Vtype\":\"DV\",\"referenceNo\":\"24\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"840.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:20:52\"}', '2023-03-19 01:20:52', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '313', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"151\",\"fyear\":\"1\",\"VNo\":\"DV-54\",\"Vtype\":\"DV\",\"referenceNo\":\"24\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"840.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:20:52\"}', '2023-03-19 01:20:52', 1),
(0, '1', 'approved_vaucher_transation', 'create', '314', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"152\",\"fyear\":\"1\",\"VNo\":\"DV-55\",\"Vtype\":\"DV\",\"referenceNo\":\"24\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"80.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":\"8\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:20:52\"}', '2023-03-19 01:20:52', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '315', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"152\",\"fyear\":\"1\",\"VNo\":\"DV-55\",\"Vtype\":\"DV\",\"referenceNo\":\"24\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"80.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":\"8\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:20:52\"}', '2023-03-19 01:20:52', 1),
(0, '1', 'approved_vaucher_transation', 'create', '316', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"153\",\"fyear\":\"1\",\"VNo\":\"DV-56\",\"Vtype\":\"DV\",\"referenceNo\":\"25\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"315.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:53:58\"}', '2023-03-19 01:53:58', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '317', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"153\",\"fyear\":\"1\",\"VNo\":\"DV-56\",\"Vtype\":\"DV\",\"referenceNo\":\"25\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"315.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:53:58\"}', '2023-03-19 01:53:58', 1),
(0, '1', 'approved_vaucher_transation', 'create', '318', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"154\",\"fyear\":\"1\",\"VNo\":\"DV-57\",\"Vtype\":\"DV\",\"referenceNo\":\"25\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"15.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:53:58\"}', '2023-03-19 01:53:58', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '319', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"154\",\"fyear\":\"1\",\"VNo\":\"DV-57\",\"Vtype\":\"DV\",\"referenceNo\":\"25\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"15.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:53:58\"}', '2023-03-19 01:53:58', 1),
(0, '1', 'approved_vaucher_transation', 'create', '320', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"155\",\"fyear\":\"1\",\"VNo\":\"DV-58\",\"Vtype\":\"DV\",\"referenceNo\":\"25\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"140.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":\"4\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:53:58\"}', '2023-03-19 01:53:58', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '321', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"155\",\"fyear\":\"1\",\"VNo\":\"DV-58\",\"Vtype\":\"DV\",\"referenceNo\":\"25\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"140.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":\"4\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 08:53:58\"}', '2023-03-19 01:53:58', 1),
(0, '1', 'approved_vaucher_transation', 'create', '322', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"156\",\"fyear\":\"1\",\"VNo\":\"DV-59\",\"Vtype\":\"DV\",\"referenceNo\":\"26\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"430.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:00:27\"}', '2023-03-19 02:00:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '323', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"156\",\"fyear\":\"1\",\"VNo\":\"DV-59\",\"Vtype\":\"DV\",\"referenceNo\":\"26\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"430.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:00:27\"}', '2023-03-19 02:00:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '324', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"157\",\"fyear\":\"1\",\"VNo\":\"DV-60\",\"Vtype\":\"DV\",\"referenceNo\":\"26\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"130.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:00:27\"}', '2023-03-19 02:00:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '325', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"157\",\"fyear\":\"1\",\"VNo\":\"DV-60\",\"Vtype\":\"DV\",\"referenceNo\":\"26\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"130.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:00:27\"}', '2023-03-19 02:00:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '326', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"158\",\"fyear\":\"1\",\"VNo\":\"DV-61\",\"Vtype\":\"DV\",\"referenceNo\":\"26\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"240.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":\"4\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:00:27\"}', '2023-03-19 02:00:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '327', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"158\",\"fyear\":\"1\",\"VNo\":\"DV-61\",\"Vtype\":\"DV\",\"referenceNo\":\"26\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"240.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":\"4\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:00:27\"}', '2023-03-19 02:00:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '328', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"159\",\"fyear\":\"1\",\"VNo\":\"DV-62\",\"Vtype\":\"DV\",\"referenceNo\":\"28\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"678.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:38:54\"}', '2023-03-19 02:38:54', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '329', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"159\",\"fyear\":\"1\",\"VNo\":\"DV-62\",\"Vtype\":\"DV\",\"referenceNo\":\"28\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"678.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:38:54\"}', '2023-03-19 02:38:54', 1),
(0, '1', 'approved_vaucher_transation', 'create', '330', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"160\",\"fyear\":\"1\",\"VNo\":\"DV-63\",\"Vtype\":\"DV\",\"referenceNo\":\"28\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"302.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:38:54\"}', '2023-03-19 02:38:54', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '331', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"160\",\"fyear\":\"1\",\"VNo\":\"DV-63\",\"Vtype\":\"DV\",\"referenceNo\":\"28\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Purchase Voucher for supplier\",\"Debit\":\"0.00\",\"Credit\":\"302.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:38:54\"}', '2023-03-19 02:38:54', 1),
(0, '1', 'approved_vaucher_transation', 'create', '332', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"161\",\"fyear\":\"1\",\"VNo\":\"DV-64\",\"Vtype\":\"DV\",\"referenceNo\":\"28\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"320.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020201\",\"subType\":\"1\",\"subCode\":\"4\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:38:54\"}', '2023-03-19 02:38:54', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '333', 'acc_transaction', 'purchase/purchase/bdtask_save_purchase', '{\"vid\":\"161\",\"fyear\":\"1\",\"VNo\":\"DV-64\",\"Vtype\":\"DV\",\"referenceNo\":\"28\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020201\",\"Narration\":\"Purchase Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Due Amount for Supplier\",\"Debit\":\"0.00\",\"Credit\":\"320.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":\"4\",\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 09:38:54\"}', '2023-03-19 02:38:54', 1),
(0, '1', 'approved_vaucher_transation', 'create', '334', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"162\",\"fyear\":\"3\",\"VNo\":\"CV-12\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"280.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '335', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"162\",\"fyear\":\"3\",\"VNo\":\"CV-12\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"280.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_transation', 'create', '336', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"163\",\"fyear\":\"3\",\"VNo\":\"CV-13\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"200.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '337', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"163\",\"fyear\":\"3\",\"VNo\":\"CV-13\",\"Vtype\":\"CV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"200.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_transation', 'create', '338', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"164\",\"fyear\":\"3\",\"VNo\":\"JV-11\",\"Vtype\":\"JV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"550.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '339', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"164\",\"fyear\":\"3\",\"VNo\":\"JV-11\",\"Vtype\":\"JV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"550.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_transation', 'create', '340', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"165\",\"fyear\":\"3\",\"VNo\":\"JV-12\",\"Vtype\":\"JV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '341', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"165\",\"fyear\":\"3\",\"VNo\":\"JV-12\",\"Vtype\":\"JV\",\"referenceNo\":\"1005\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:12:20\"}', '2023-03-19 07:12:20', 1),
(0, '1', 'approved_vaucher_transation', 'create', '342', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"166\",\"fyear\":\"3\",\"VNo\":\"CV-14\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:18\"}', '2023-03-19 07:59:18', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '343', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"166\",\"fyear\":\"3\",\"VNo\":\"CV-14\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:18\"}', '2023-03-19 07:59:18', 1),
(0, '1', 'approved_vaucher_transation', 'create', '344', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"167\",\"fyear\":\"3\",\"VNo\":\"CV-15\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:19\"}', '2023-03-19 07:59:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '345', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"167\",\"fyear\":\"3\",\"VNo\":\"CV-15\",\"Vtype\":\"CV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:19\"}', '2023-03-19 07:59:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '346', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"168\",\"fyear\":\"3\",\"VNo\":\"JV-13\",\"Vtype\":\"JV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:19\"}', '2023-03-19 07:59:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '347', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"168\",\"fyear\":\"3\",\"VNo\":\"JV-13\",\"Vtype\":\"JV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:19\"}', '2023-03-19 07:59:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '348', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"169\",\"fyear\":\"3\",\"VNo\":\"JV-14\",\"Vtype\":\"JV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:19\"}', '2023-03-19 07:59:19', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '349', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"169\",\"fyear\":\"3\",\"VNo\":\"JV-14\",\"Vtype\":\"JV\",\"referenceNo\":\"1006\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 17:59:19\"}', '2023-03-19 07:59:19', 1),
(0, '1', 'approved_vaucher_transation', 'create', '350', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"170\",\"fyear\":\"3\",\"VNo\":\"CV-16\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '351', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"170\",\"fyear\":\"3\",\"VNo\":\"CV-16\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '352', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"171\",\"fyear\":\"3\",\"VNo\":\"CV-17\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '353', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"171\",\"fyear\":\"3\",\"VNo\":\"CV-17\",\"Vtype\":\"CV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '354', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"172\",\"fyear\":\"3\",\"VNo\":\"JV-15\",\"Vtype\":\"JV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '355', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"172\",\"fyear\":\"3\",\"VNo\":\"JV-15\",\"Vtype\":\"JV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '356', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"173\",\"fyear\":\"3\",\"VNo\":\"JV-16\",\"Vtype\":\"JV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '357', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"173\",\"fyear\":\"3\",\"VNo\":\"JV-16\",\"Vtype\":\"JV\",\"referenceNo\":\"1007\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '358', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"174\",\"fyear\":\"3\",\"VNo\":\"CV-18\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '359', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"174\",\"fyear\":\"3\",\"VNo\":\"CV-18\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '360', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"175\",\"fyear\":\"3\",\"VNo\":\"CV-19\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '361', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"175\",\"fyear\":\"3\",\"VNo\":\"CV-19\",\"Vtype\":\"CV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '362', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"176\",\"fyear\":\"3\",\"VNo\":\"JV-17\",\"Vtype\":\"JV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '363', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"176\",\"fyear\":\"3\",\"VNo\":\"JV-17\",\"Vtype\":\"JV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '364', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"177\",\"fyear\":\"3\",\"VNo\":\"JV-18\",\"Vtype\":\"JV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1);
INSERT INTO `activity_logs` (`activity_id`, `user_id`, `type`, `action`, `action_id`, `table_name`, `slug`, `form_data`, `create_date`, `status`) VALUES
(0, '1', 'approved_vaucher_reversetransa', 'create', '365', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"177\",\"fyear\":\"3\",\"VNo\":\"JV-18\",\"Vtype\":\"JV\",\"referenceNo\":\"1008\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '366', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"178\",\"fyear\":\"3\",\"VNo\":\"CV-20\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '367', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"178\",\"fyear\":\"3\",\"VNo\":\"CV-20\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '368', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"179\",\"fyear\":\"3\",\"VNo\":\"CV-21\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '369', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"179\",\"fyear\":\"3\",\"VNo\":\"CV-21\",\"Vtype\":\"CV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '370', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"180\",\"fyear\":\"3\",\"VNo\":\"JV-19\",\"Vtype\":\"JV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '371', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"180\",\"fyear\":\"3\",\"VNo\":\"JV-19\",\"Vtype\":\"JV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '372', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"181\",\"fyear\":\"3\",\"VNo\":\"JV-20\",\"Vtype\":\"JV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '373', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"181\",\"fyear\":\"3\",\"VNo\":\"JV-20\",\"Vtype\":\"JV\",\"referenceNo\":\"1009\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '374', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"182\",\"fyear\":\"3\",\"VNo\":\"CV-22\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '375', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"182\",\"fyear\":\"3\",\"VNo\":\"CV-22\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '376', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"183\",\"fyear\":\"3\",\"VNo\":\"CV-23\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '377', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"183\",\"fyear\":\"3\",\"VNo\":\"CV-23\",\"Vtype\":\"CV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '378', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"184\",\"fyear\":\"3\",\"VNo\":\"JV-21\",\"Vtype\":\"JV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '379', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"184\",\"fyear\":\"3\",\"VNo\":\"JV-21\",\"Vtype\":\"JV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:42\"}', '2023-03-19 08:16:42', 1),
(0, '1', 'approved_vaucher_transation', 'create', '380', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"185\",\"fyear\":\"3\",\"VNo\":\"JV-22\",\"Vtype\":\"JV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '381', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"185\",\"fyear\":\"3\",\"VNo\":\"JV-22\",\"Vtype\":\"JV\",\"referenceNo\":\"1010\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '382', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"186\",\"fyear\":\"3\",\"VNo\":\"CV-24\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '383', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"186\",\"fyear\":\"3\",\"VNo\":\"CV-24\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '384', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"187\",\"fyear\":\"3\",\"VNo\":\"CV-25\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '385', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"187\",\"fyear\":\"3\",\"VNo\":\"CV-25\",\"Vtype\":\"CV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '386', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"188\",\"fyear\":\"3\",\"VNo\":\"JV-23\",\"Vtype\":\"JV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '387', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"188\",\"fyear\":\"3\",\"VNo\":\"JV-23\",\"Vtype\":\"JV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '388', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"189\",\"fyear\":\"3\",\"VNo\":\"JV-24\",\"Vtype\":\"JV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '389', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"189\",\"fyear\":\"3\",\"VNo\":\"JV-24\",\"Vtype\":\"JV\",\"referenceNo\":\"1011\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '390', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"190\",\"fyear\":\"3\",\"VNo\":\"CV-26\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"1170.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '391', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"190\",\"fyear\":\"3\",\"VNo\":\"CV-26\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1170.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '392', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"191\",\"fyear\":\"3\",\"VNo\":\"CV-27\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"60.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '393', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"191\",\"fyear\":\"3\",\"VNo\":\"CV-27\",\"Vtype\":\"CV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"60.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '394', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"192\",\"fyear\":\"3\",\"VNo\":\"JV-25\",\"Vtype\":\"JV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"1353.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '395', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"192\",\"fyear\":\"3\",\"VNo\":\"JV-25\",\"Vtype\":\"JV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"1353.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '396', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"193\",\"fyear\":\"3\",\"VNo\":\"JV-26\",\"Vtype\":\"JV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '397', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"193\",\"fyear\":\"3\",\"VNo\":\"JV-26\",\"Vtype\":\"JV\",\"referenceNo\":\"1012\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 18:16:43\"}', '2023-03-19 08:16:43', 1),
(0, '1', 'approved_vaucher_transation', 'create', '398', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"194\",\"fyear\":\"3\",\"VNo\":\"CV-28\",\"Vtype\":\"CV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"67.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '399', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"194\",\"fyear\":\"3\",\"VNo\":\"CV-28\",\"Vtype\":\"CV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"67.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '400', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"195\",\"fyear\":\"3\",\"VNo\":\"CV-29\",\"Vtype\":\"CV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"88.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '401', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"195\",\"fyear\":\"3\",\"VNo\":\"CV-29\",\"Vtype\":\"CV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"88.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '402', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"196\",\"fyear\":\"3\",\"VNo\":\"JV-27\",\"Vtype\":\"JV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"330.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '403', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"196\",\"fyear\":\"3\",\"VNo\":\"JV-27\",\"Vtype\":\"JV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"330.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '404', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"197\",\"fyear\":\"3\",\"VNo\":\"JV-28\",\"Vtype\":\"JV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '405', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"197\",\"fyear\":\"3\",\"VNo\":\"JV-28\",\"Vtype\":\"JV\",\"referenceNo\":\"1013\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 20:02:27\"}', '2023-03-19 10:02:27', 1),
(0, '1', 'approved_vaucher_transation', 'create', '406', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"198\",\"fyear\":\"3\",\"VNo\":\"CV-30\",\"Vtype\":\"CV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020102\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"101.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:55\"}', '2023-03-19 11:10:55', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '407', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"198\",\"fyear\":\"3\",\"VNo\":\"CV-30\",\"Vtype\":\"CV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"101.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020102\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:55\"}', '2023-03-19 11:10:55', 1),
(0, '1', 'approved_vaucher_transation', 'create', '408', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"199\",\"fyear\":\"3\",\"VNo\":\"CV-31\",\"Vtype\":\"CV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"97.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:55\"}', '2023-03-19 11:10:55', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '409', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"199\",\"fyear\":\"3\",\"VNo\":\"CV-31\",\"Vtype\":\"CV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"97.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:55\"}', '2023-03-19 11:10:55', 1),
(0, '1', 'approved_vaucher_transation', 'create', '410', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"200\",\"fyear\":\"3\",\"VNo\":\"JV-29\",\"Vtype\":\"JV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"495.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:55\"}', '2023-03-19 11:10:55', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '411', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"200\",\"fyear\":\"3\",\"VNo\":\"JV-29\",\"Vtype\":\"JV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"495.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:55\"}', '2023-03-19 11:10:55', 1),
(0, '1', 'approved_vaucher_transation', 'create', '412', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"201\",\"fyear\":\"3\",\"VNo\":\"JV-30\",\"Vtype\":\"JV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:56\"}', '2023-03-19 11:10:56', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '413', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"201\",\"fyear\":\"3\",\"VNo\":\"JV-30\",\"Vtype\":\"JV\",\"referenceNo\":\"1014\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:10:56\"}', '2023-03-19 11:10:56', 1),
(0, '1', 'approved_vaucher_transation', 'create', '414', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"202\",\"fyear\":\"3\",\"VNo\":\"CV-32\",\"Vtype\":\"CV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020101\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"2.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '415', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"202\",\"fyear\":\"3\",\"VNo\":\"CV-32\",\"Vtype\":\"CV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"2.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '416', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"203\",\"fyear\":\"3\",\"VNo\":\"CV-33\",\"Vtype\":\"CV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020103\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"3.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"3010301\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '417', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"203\",\"fyear\":\"3\",\"VNo\":\"CV-33\",\"Vtype\":\"CV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"3010301\",\"Narration\":\"Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"3.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020103\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '418', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"204\",\"fyear\":\"3\",\"VNo\":\"JV-31\",\"Vtype\":\"JV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"4010101\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"27.50\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"1020401\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '419', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"204\",\"fyear\":\"3\",\"VNo\":\"JV-31\",\"Vtype\":\"JV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"1020401\",\"Narration\":\"Sales cost of goods Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Sales cost of goods Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"27.50\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4010101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_transation', 'create', '420', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"205\",\"fyear\":\"3\",\"VNo\":\"JV-32\",\"Vtype\":\"JV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"4021101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"5020101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1),
(0, '1', 'approved_vaucher_reversetransa', 'create', '421', 'acc_transaction', 'invoice/invoice/bdtask_manual_sales_insert', '{\"vid\":\"205\",\"fyear\":\"3\",\"VNo\":\"JV-32\",\"Vtype\":\"JV\",\"referenceNo\":\"1015\",\"VDate\":\"2023-03-19\",\"COAID\":\"5020101\",\"Narration\":\"Tax for Sales Voucher\",\"chequeNo\":\"\",\"chequeDate\":null,\"isHonour\":\"0\",\"ledgerComment\":\"Tax for Sales Voucher for customer\",\"Debit\":\"0.00\",\"Credit\":\"0.00\",\"StoreID\":0,\"IsPosted\":1,\"RevCodde\":\"4021101\",\"subType\":\"1\",\"subCode\":null,\"IsAppove\":1,\"CreateBy\":\"1\",\"CreateDate\":\"2023-03-19 21:38:46\"}', '2023-03-19 11:38:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://stock1.microsom.org/', 'https://stock1.microsom.org/', 'https://stock1.microsom.org/');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `closing_records`
--

CREATE TABLE `closing_records` (
  `id` int(11) NOT NULL,
  `head_code` bigint(20) DEFAULT NULL,
  `opening_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount_in` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount_out` decimal(10,2) NOT NULL DEFAULT '0.00',
  `closign_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `vat_no` varchar(50) DEFAULT NULL,
  `cr_no` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `vat_no`, `cr_no`, `status`) VALUES
('1', 'Rayan ltd', 'rayan312@gmail.com', 'km4', '072972829', 'https://stock1.microsom.org/', '0', '77', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(2, 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `customer_mobile` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'ayub m', 'Malviya nagar', 'Saket', '0708924951', 'ayuubmoha1@gmail.com', '0', '61', '0708924951', '0', 'Delhi', 'Delhi', '91', 'India', 1, '2023-02-28 08:56:54', '1'),
(2, 'ALI', '', '', '', '', '', '55', '', '', '', '', '', '', 1, '2023-03-01 08:26:45', '1'),
(3, 'Hussein ', 'Delhi', '', '728997797', 'husein@g.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-03-03 12:32:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` int(11) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES
(1, 'sales man', '');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'info@eholol.com', 'demo123456', 'html', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_name` varchar(100) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_percentage` int(11) DEFAULT NULL COMMENT 'all amount will add or deduct on percent if true ',
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `financial_year`
--

CREATE TABLE `financial_year` (
  `id` int(11) NOT NULL,
  `yearName` varchar(30) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `isCloseReq` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=active, 0=closed, 2=pending',
  `created_by` int(6) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(6) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financial_year`
--

INSERT INTO `financial_year` (`id`, `yearName`, `startDate`, `endDate`, `isCloseReq`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(3, 'Sanadka(2023)', '2023-02-01', '2024-02-01', 0, 1, 1, '2023-02-28 08:58:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmb_salary_advance`
--

CREATE TABLE `gmb_salary_advance` (
  `id` int(11) NOT NULL,
  `employee_id` int(50) NOT NULL,
  `salary_month` varchar(50) NOT NULL COMMENT 'for the month advance will be deducted',
  `amount` decimal(11,0) NOT NULL,
  `release_amount` decimal(11,0) DEFAULT '0',
  `paid` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'paid_to_employee',
  `CreateDate` date NOT NULL,
  `CreateBy` int(11) NOT NULL,
  `UpdateDate` date DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gmb_salary_generate`
--

CREATE TABLE `gmb_salary_generate` (
  `id` int(11) NOT NULL,
  `sal_month_year` varchar(50) NOT NULL,
  `employee_id` varchar(11) NOT NULL,
  `tin_no` int(50) DEFAULT NULL COMMENT 'TIN No',
  `total_attendance` varchar(11) DEFAULT NULL COMMENT 'tagret_hours / days',
  `total_count` varchar(11) DEFAULT NULL COMMENT 'weorked_hours / days',
  `atten_allowance` decimal(11,2) DEFAULT NULL COMMENT 'based on taget hours / days',
  `gross` decimal(11,2) NOT NULL COMMENT 'from employee_file table',
  `basic` decimal(11,2) NOT NULL COMMENT 'from employee_file table',
  `transport` decimal(11,2) NOT NULL,
  `house_rent` decimal(11,2) DEFAULT NULL,
  `medical` decimal(11,2) DEFAULT NULL,
  `other_allowance` decimal(11,2) DEFAULT NULL,
  `gross_salary` decimal(11,2) NOT NULL COMMENT 'after adding all allowance with basic',
  `income_tax` decimal(11,2) DEFAULT NULL COMMENT 'from employee_file table it will convert to amount',
  `soc_sec_npf_tax` decimal(11,2) DEFAULT NULL COMMENT 'from employee_file table it will convert to amount',
  `employer_contribution` decimal(11,2) DEFAULT NULL COMMENT '10 % of basic if there soc.sec.tax available ',
  `icf_amount` decimal(11,0) NOT NULL COMMENT 'Id social security tax available',
  `loan_deduct` decimal(11,2) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL COMMENT 'From grand_loan table',
  `salary_advance` decimal(11,2) DEFAULT NULL,
  `salary_adv_id` int(11) DEFAULT NULL COMMENT 'From gmb_salary_advance table',
  `lwp` decimal(11,2) DEFAULT NULL COMMENT 'leave without pay	',
  `pf` decimal(11,2) DEFAULT NULL COMMENT 'providend fund',
  `stamp` decimal(11,2) DEFAULT NULL COMMENT 'deduct type',
  `net_salary` decimal(11,2) DEFAULT NULL COMMENT 'after deduct net amount from gross salary',
  `createDate` date DEFAULT NULL,
  `createBy` varchar(11) NOT NULL,
  `updateDate` date DEFAULT NULL,
  `updateBy` varchar(11) DEFAULT NULL,
  `medical_benefit` decimal(11,2) DEFAULT NULL,
  `family_benefit` decimal(11,2) DEFAULT NULL,
  `transportation_benefit` decimal(11,2) DEFAULT NULL,
  `other_benefit` decimal(11,2) DEFAULT NULL,
  `normal_working_hrs_month` decimal(20,2) DEFAULT NULL,
  `actual_working_hrs_month` decimal(20,2) DEFAULT NULL,
  `hourly_rate_basic` decimal(20,2) DEFAULT NULL,
  `hourly_rate_trasport_allowance` decimal(20,2) DEFAULT NULL,
  `basic_salary_pro_rated` decimal(20,2) DEFAULT NULL,
  `transport_allowance_pro_rated` decimal(20,2) DEFAULT NULL,
  `basic_transport_allowance` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gmb_salary_sheet_generate`
--

CREATE TABLE `gmb_salary_sheet_generate` (
  `ssg_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) NOT NULL,
  `end_date` varchar(30) NOT NULL,
  `generate_by` varchar(30) NOT NULL COMMENT 'user_id',
  `approved` tinyint(1) DEFAULT '0' COMMENT '1 = approved, 0= not approved',
  `approved_by` varchar(20) DEFAULT NULL,
  `approved_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `prevous_due` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invoice` bigint(20) NOT NULL,
  `offline_invoice_no` bigint(20) DEFAULT NULL,
  `invoice_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'total invoice discount',
  `total_vat_amnt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'total invoice vat',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `ret_adjust_amnt` decimal(10,2) DEFAULT NULL,
  `returnable_amount` decimal(10,2) DEFAULT NULL,
  `sales_by` varchar(50) NOT NULL,
  `delivery_note` text,
  `invoice_details` text NOT NULL,
  `is_credit` tinyint(4) DEFAULT NULL,
  `is_fixed` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `is_online` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `invoice`, `offline_invoice_no`, `invoice_discount`, `total_discount`, `total_vat_amnt`, `total_tax`, `ret_adjust_amnt`, `returnable_amount`, `sales_by`, `delivery_note`, `invoice_details`, `is_credit`, `is_fixed`, `is_dynamic`, `status`, `bank_id`, `payment_type`, `is_online`) VALUES
(18, 1003, 1, '2023-03-18', '751.00', '751.00', '0.00', '0.00', '0.00', 1003, NULL, '35.00', '35.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(17, 1002, 1, '2023-03-18', '46.00', '40.00', '6.00', '0.00', '0.00', 1002, NULL, '20.00', '20.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(16, 1001, 1, '2023-03-18', '18.00', '10.00', '8.00', '0.00', '0.00', 1001, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(15, 1000, 1, '2023-03-18', '342.00', '185.00', '157.00', '0.00', '0.00', 1000, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(19, 1004, 1, '2023-03-18', '23.00', '23.00', '-10.00', '0.00', '0.00', 1004, NULL, '10.00', '10.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(20, 1005, 1, '2023-03-19', '600.00', '480.00', '120.00', '0.00', '0.00', 1005, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(21, 1006, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1006, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(22, 1007, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1007, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(23, 1008, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1008, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(24, 1009, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1009, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(25, 1010, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1010, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(26, 1011, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1011, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(27, 1012, 1, '2023-03-19', '1476.00', '1230.00', '246.00', '0.00', '0.00', 1012, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(28, 1013, 1, '2023-03-19', '360.00', '155.00', '205.00', '0.00', '0.00', 1013, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(29, 1014, 1, '2023-03-19', '540.00', '198.00', '342.00', '0.00', '0.00', 1014, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1),
(30, 1015, 1, '2023-03-19', '30.00', '5.00', '25.00', '0.00', '0.00', 1015, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, '1', NULL, 'Thank you for shopping with us', 0, 1, 0, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `ret_invoice_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `vat_amnt` decimal(10,2) DEFAULT NULL,
  `vat_amnt_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `ret_invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `batch_id`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `vat_amnt`, `vat_amnt_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
(17, '338822574584497', '17', NULL, '2233', '', '23', '10.00', '1.20', '08', 1.1, '12.00', '0.00', '', '0.00', '0', '0.00', '40', '6.00', 1),
(18, '249256814479877', '17', NULL, '001', '', '345', '20.00', '2.70', '09', 2.1, '54.00', '0.00', '', '0.00', '0', '0.00', '40', '6.00', 1),
(16, '543671433366165', '16', NULL, '2233', '', 'dfer', '15.00', '1.20', '003', 1.1, '18.00', '0.00', '', '0.00', '0', '0.00', '10', '8.00', 1),
(15, '141499239626924', '15', NULL, '2233', '', 'mm', '285.00', '1.20', '003', 1.1, '342.00', '0.00', '', '0.00', '0', '0.00', '185', '157.00', 1),
(19, '532729165731517', '18', NULL, '2233', '', NULL, '250.00', '1.20', '02', 1.1, '300.00', '0.00', '', '0.00', '0', '0.00', '751', '0.00', 1),
(20, '682831951831933', '18', NULL, '001', '', NULL, '180.00', '2.70', '09', 2.1, '486.00', '0.00', '', '0.00', '0', '0.00', '751', '0.00', 1),
(21, '981839655582427', '19', NULL, '001', '', NULL, '10.00', '2.70', '01', 2.1, '27.00', '0.00', '', '0.00', '0', '0.00', '23', '-10.00', 1),
(22, '988973432868189', '19', NULL, '2233', '', NULL, '5.00', '1.20', '09', 1.1, '6.00', '0.00', '', '0.00', '0', '0.00', '23', '-10.00', 1),
(23, '965574291238959', '20', NULL, '2233', '', 'mm', '500.00', '1.20', '02', 1.1, '600.00', '0.00', '0', '0.00', '0', '0.00', '480', '120.00', 1),
(24, '752476672456155', '21', NULL, '2233', '', 'nn', '1230.00', '1.20', '09', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(25, '526715249795513', '22', NULL, '2233', '', 'mm', '1230.00', '1.20', '08', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(26, '132355442794982', '23', NULL, '2233', '', 'mm', '1230.00', '1.20', '08', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(27, '241918913454716', '24', NULL, '2233', '', 'mm', '1230.00', '1.20', '08', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(28, '474114852327699', '25', NULL, '2233', '', 'mm', '1230.00', '1.20', '08', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(29, '646645836117947', '26', NULL, '2233', '', 'mm', '1230.00', '1.20', '08', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(30, '765291677161491', '27', NULL, '2233', '', 'mm', '1230.00', '1.20', '08', 1.1, '1476.00', '0.00', '0', '0.00', '0', '0.00', '1230', '246.00', 1),
(31, '229254133149653', '28', NULL, '2233', '', '', '300.00', '1.20', '02', 1.1, '360.00', '0.00', '0', '0.00', '0', '0.00', '155', '205.00', 1),
(32, '664551199698814', '29', NULL, '2233', '', 'mm', '450.00', '1.20', '02', 1.1, '540.00', '0.00', '0', '0.00', '0', '0.00', '198', '342.00', 1),
(33, '176332885927686', '30', NULL, '2233', '', 'mm', '25.00', '1.20', '09', 1.1, '30.00', '0.00', '0', '0.00', '0', '0.00', '5', '25.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
(1, 'user_profile', 'User Profile'),
(2, 'setting', 'Setting'),
(3, 'language', 'Language'),
(4, 'manage_users', 'Manage Users'),
(5, 'add_user', 'Add User'),
(6, 'manage_company', 'Manage Company'),
(7, 'web_settings', 'Software Settings'),
(8, 'manage_accounts', 'Manage Accounts'),
(9, 'create_accounts', 'Create Account'),
(10, 'manage_bank', 'Manage Bank'),
(11, 'add_new_bank', 'Add New Bank'),
(12, 'settings', 'Settings'),
(13, 'closing_report', 'Closing Report'),
(14, 'closing', 'Closing'),
(15, 'cheque_manager', 'Cheque Manager'),
(16, 'accounts_summary', 'Accounts Summary'),
(17, 'expense', 'Expense'),
(18, 'income', 'Income'),
(19, 'accounts', 'Accounts'),
(20, 'stock_report', 'Stock Report'),
(21, 'stock', 'Stock'),
(22, 'pos_invoice', 'POS Sale'),
(23, 'manage_invoice', 'Manage Sale'),
(24, 'new_invoice', 'New Sale'),
(25, 'invoice', 'Sale'),
(26, 'manage_purchase', 'Manage Purchase'),
(27, 'add_purchase', 'Add Purchase'),
(28, 'purchase', 'Purchase'),
(29, 'paid_customer', 'Paid Customer'),
(30, 'manage_customer', 'Manage Customer'),
(31, 'add_customer', 'Add Customer'),
(32, 'customer', 'Customer'),
(33, 'supplier_payment_actual', 'Supplier Payment Ledger'),
(34, 'supplier_sales_summary', 'Supplier Sales Summary'),
(35, 'supplier_sales_details', 'Supplier Sales Details'),
(36, 'supplier_ledger', 'Supplier Ledger'),
(37, 'manage_supplier', 'Manage Supplier'),
(38, 'add_supplier', 'Add Supplier'),
(39, 'supplier', 'Supplier'),
(40, 'product_statement', 'Product Statement'),
(41, 'manage_product', 'Manage Product'),
(42, 'add_product', 'Add Product'),
(43, 'product', 'Product'),
(44, 'manage_category', 'Manage Category'),
(45, 'add_category', 'Add Category'),
(46, 'category', 'Category'),
(47, 'sales_report_product_wise', 'Sales Report (Product Wise)'),
(48, 'purchase_report', 'Purchase Report'),
(49, 'sales_report', 'Sales Report'),
(50, 'todays_report', 'Todays Report'),
(51, 'report', 'Report'),
(52, 'dashboard', 'Dashboard'),
(53, 'online', 'Online'),
(54, 'logout', 'Logout'),
(55, 'change_password', 'Change Password'),
(56, 'total_purchase', 'Total Purchase'),
(57, 'total_amount', 'Total Amount'),
(58, 'supplier_name', 'Supplier Name'),
(59, 'invoice_no', 'Invoice No'),
(60, 'purchase_date', 'Purchase Date'),
(61, 'todays_purchase_report', 'Todays Purchase Report'),
(62, 'total_sales', 'Total Sales'),
(63, 'customer_name', 'Customer Name'),
(64, 'sales_date', 'Sales Date'),
(65, 'todays_sales_report', 'Todays Sales Report'),
(66, 'home', 'Home'),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report'),
(68, 'total_ammount', 'Total Amount'),
(69, 'rate', 'Rate'),
(70, 'product_model', 'Product Model'),
(71, 'product_name', 'Product Name'),
(72, 'search', 'Search'),
(73, 'end_date', 'End Date'),
(74, 'start_date', 'Start Date'),
(75, 'total_purchase_report', 'Total Purchase Report'),
(76, 'total_sales_report', 'Total Sales Report'),
(77, 'total_seles', 'Total Sales'),
(78, 'all_stock_report', 'All Stock Report'),
(79, 'search_by_product', 'Search By Product'),
(80, 'date', 'Date'),
(81, 'print', 'Print'),
(82, 'stock_date', 'Stock Date'),
(83, 'print_date', 'Print Date'),
(84, 'sales', 'Sales'),
(85, 'price', 'Price'),
(86, 'sl', 'SL.'),
(87, 'add_new_category', 'Add new category'),
(88, 'category_name', 'Category Name'),
(89, 'save', 'Save'),
(90, 'delete', 'Delete'),
(91, 'update', 'Update'),
(92, 'action', 'Action'),
(93, 'manage_your_category', 'Manage your category '),
(94, 'category_edit', 'Category Edit'),
(95, 'status', 'Status'),
(96, 'active', 'Active'),
(97, 'inactive', 'Inactive'),
(98, 'save_changes', 'Save Changes'),
(99, 'save_and_add_another', 'Save And Add Another'),
(100, 'model', 'Model'),
(101, 'supplier_price', 'Supplier Price'),
(102, 'sell_price', 'Sale Price'),
(103, 'image', 'Image'),
(104, 'select_one', 'Select One'),
(105, 'details', 'Details'),
(106, 'new_product', 'New Product'),
(107, 'add_new_product', 'Add new product'),
(108, 'barcode', 'Barcode'),
(109, 'qr_code', 'Qr-Code'),
(110, 'product_details', 'Product Details'),
(111, 'manage_your_product', 'Manage your product'),
(112, 'product_edit', 'Product Edit'),
(113, 'edit_your_product', 'Edit your product'),
(114, 'cancel', 'Cancel'),
(115, 'incl_vat', 'Incl. Vat'),
(116, 'money', 'TK'),
(117, 'grand_total', 'Grand Total'),
(118, 'quantity', 'Qnty'),
(119, 'product_report', 'Product Report'),
(120, 'product_sales_and_purchase_report', 'Product sales and purchase report'),
(121, 'previous_stock', 'Previous Stock'),
(122, 'out', 'Out'),
(123, 'in', 'In'),
(124, 'to', 'To'),
(125, 'previous_balance', 'Previous Balance'),
(126, 'customer_address', 'Customer Address'),
(127, 'customer_mobile', 'Customer Mobile'),
(128, 'customer_email', 'Customer Email'),
(129, 'add_new_customer', 'Add new customer'),
(130, 'balance', 'Balance'),
(131, 'mobile', 'Mobile'),
(132, 'address', 'Address'),
(133, 'manage_your_customer', 'Manage your customer'),
(134, 'customer_edit', 'Customer Edit'),
(135, 'paid_customer_list', 'Paid Customer List'),
(136, 'ammount', 'Amount'),
(137, 'customer_ledger', 'Customer Ledger'),
(138, 'manage_customer_ledger', 'Manage Customer Ledger'),
(139, 'customer_information', 'Customer Information'),
(140, 'debit_ammount', 'Debit Amount'),
(141, 'credit_ammount', 'Credit Amount'),
(142, 'balance_ammount', 'Balance Amount'),
(143, 'receipt_no', 'Receipt NO'),
(144, 'description', 'Description'),
(145, 'debit', 'Debit'),
(146, 'credit', 'Credit'),
(147, 'item_information', 'Item Information'),
(148, 'total', 'Total'),
(149, 'please_select_supplier', 'Please Select Supplier'),
(150, 'submit', 'Submit'),
(151, 'submit_and_add_another', 'Submit And Add Another One'),
(152, 'add_new_item', 'Add New Item'),
(153, 'manage_your_purchase', 'Manage your purchase'),
(154, 'purchase_edit', 'Purchase Edit'),
(155, 'purchase_ledger', 'Purchase Ledger'),
(156, 'invoice_information', 'Sale Information'),
(157, 'paid_ammount', 'Paid Amount'),
(158, 'discount', 'Dis./Pcs.'),
(159, 'save_and_paid', 'Save And Paid'),
(160, 'payee_name', 'Payee Name'),
(161, 'manage_your_invoice', 'Manage your Sale'),
(162, 'invoice_edit', 'Sale Edit'),
(163, 'new_pos_invoice', 'New POS Sale'),
(164, 'add_new_pos_invoice', 'Add new pos Sale'),
(165, 'product_id', 'Product ID'),
(166, 'paid_amount', 'Paid Amount'),
(167, 'authorised_by', 'Authorised By'),
(168, 'checked_by', 'Checked By'),
(169, 'received_by', 'Received By'),
(170, 'prepared_by', 'Prepared By'),
(171, 'memo_no', 'Memo No'),
(172, 'website', 'Website'),
(173, 'email', 'Email'),
(174, 'invoice_details', 'Sale Details'),
(175, 'reset', 'Reset'),
(176, 'payment_account', 'Payment Account'),
(177, 'bank_name', 'Bank Name'),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No'),
(179, 'payment_type', 'Payment Type'),
(180, 'payment_from', 'Payment From'),
(181, 'payment_date', 'Payment Date'),
(182, 'add_income', 'Add Income'),
(183, 'cash', 'Cash'),
(184, 'cheque', 'Cheque'),
(185, 'pay_order', 'Pay Order'),
(186, 'payment_to', 'Payment To'),
(187, 'total_outflow_ammount', 'Total Expense Amount'),
(188, 'transections', 'Transections'),
(189, 'accounts_name', 'Accounts Name'),
(190, 'outflow_report', 'Expense Report'),
(191, 'inflow_report', 'Income Report'),
(192, 'all', 'All'),
(193, 'account', 'Account'),
(194, 'from', 'From'),
(195, 'account_summary_report', 'Account Summary Report'),
(196, 'search_by_date', 'Search By Date'),
(197, 'cheque_no', 'Cheque No'),
(198, 'name', 'Name'),
(199, 'closing_account', 'Closing Account'),
(200, 'close_your_account', 'Close your account'),
(201, 'last_day_closing', 'Last Day Closing'),
(202, 'cash_in', 'Cash In'),
(203, 'cash_out', 'Cash Out'),
(204, 'cash_in_hand', 'Cash In Hand'),
(205, 'add_new_bank', 'Add New Bank'),
(206, 'day_closing', 'Day Closing'),
(207, 'account_closing_report', 'Account Closing Report'),
(208, 'last_day_ammount', 'Last Day Amount'),
(209, 'adjustment', 'Adjustment'),
(210, 'pay_type', 'Pay Type'),
(211, 'customer_or_supplier', 'Customer,Supplier Or Others'),
(212, 'transection_id', 'Transections ID'),
(213, 'accounts_summary_report', 'Accounts Summary Report'),
(214, 'bank_list', 'Bank List'),
(215, 'bank_edit', 'Bank Edit'),
(216, 'debit_plus', 'Debit (+)'),
(217, 'credit_minus', 'Credit (-)'),
(218, 'account_name', 'Account Name'),
(219, 'account_type', 'Account Type'),
(220, 'account_real_name', 'Account Real Name'),
(221, 'manage_account', 'Manage Account'),
(222, 'company_name', 'Niha International'),
(223, 'edit_your_company_information', 'Edit your company information'),
(224, 'company_edit', 'Company Edit'),
(225, 'admin', 'Admin'),
(226, 'user', 'User'),
(227, 'password', 'Password'),
(228, 'last_name', 'Last Name'),
(229, 'first_name', 'First Name'),
(230, 'add_new_user_information', 'Add new user information'),
(231, 'user_type', 'User Type'),
(232, 'user_edit', 'User Edit'),
(233, 'rtr', 'RTR'),
(234, 'ltr', 'LTR'),
(235, 'ltr_or_rtr', 'LTR/RTR'),
(236, 'footer_text', 'Footer Text'),
(237, 'favicon', 'Favicon'),
(238, 'logo', 'Logo'),
(239, 'update_setting', 'Update Setting'),
(240, 'update_your_web_setting', 'Update your web setting'),
(241, 'login', 'Login'),
(242, 'your_strong_password', 'Your strong password'),
(243, 'your_unique_email', 'Your unique email'),
(244, 'please_enter_your_login_information', 'Please enter your login information.'),
(245, 'update_profile', 'Update Profile'),
(246, 'your_profile', 'Your Profile'),
(247, 're_type_password', 'Re-Type Password'),
(248, 'new_password', 'New Password'),
(249, 'old_password', 'Old Password'),
(250, 'new_information', 'New Information'),
(251, 'old_information', 'Old Information'),
(252, 'change_your_information', 'Change your information'),
(253, 'change_your_profile', 'Change your profile'),
(254, 'profile', 'Profile'),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !'),
(256, 'successfully_updated', 'Successfully Updated.'),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !'),
(258, 'successfully_changed_password', 'Successfully changed password.'),
(259, 'you_are_not_authorised_person', 'You are not authorised person !'),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !'),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.'),
(262, 'you_put_wrong_email_address', 'You put wrong email address !'),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.'),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.'),
(265, 'successfully_added', 'Successfully Added.'),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.'),
(267, 'successfully_payment_received', 'Successfully Payment Received.'),
(268, 'already_inserted', 'Already Inserted !'),
(269, 'successfully_delete', 'Successfully Delete.'),
(270, 'successfully_created', 'Successfully Created.'),
(271, 'logo_not_uploaded', 'Logo not uploaded !'),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !'),
(273, 'supplier_mobile', 'Supplier Mobile'),
(274, 'supplier_address', 'Supplier Address'),
(275, 'supplier_details', 'Supplier Details'),
(276, 'add_new_supplier', 'Add New Supplier'),
(277, 'manage_suppiler', 'Manage Supplier'),
(278, 'manage_your_supplier', 'Manage your supplier'),
(279, 'manage_supplier_ledger', 'Manage supplier ledger'),
(280, 'invoice_id', 'Invoice ID'),
(281, 'deposite_id', 'Deposite ID'),
(282, 'supplier_actual_ledger', 'Supplier Payment Ledger'),
(283, 'supplier_information', 'Supplier Information'),
(284, 'event', 'Event'),
(285, 'add_new_income', 'Add New Income'),
(286, 'add_expese', 'Add Expense'),
(287, 'add_new_expense', 'Add New Expense'),
(288, 'total_inflow_ammount', 'Total Income Amount'),
(289, 'create_new_invoice', 'Create New Sale'),
(290, 'create_pos_invoice', 'Create POS Sale'),
(291, 'total_profit', 'Total Profit'),
(292, 'monthly_progress_report', 'Monthly Progress Report'),
(293, 'total_invoice', 'Total Sale'),
(294, 'account_summary', 'Account Summary'),
(295, 'total_supplier', 'Total Supplier'),
(296, 'total_product', 'Total Product'),
(297, 'total_customer', 'Total Customer'),
(298, 'supplier_edit', 'Supplier Edit'),
(299, 'add_new_invoice', 'Add New Sale'),
(300, 'add_new_purchase', 'Add new purchase'),
(301, 'currency', 'Currency'),
(302, 'currency_position', 'Currency Position'),
(303, 'left', 'Left'),
(304, 'right', 'Right'),
(305, 'add_tax', 'Add TAX'),
(306, 'manage_tax', 'Manage TAX'),
(307, 'add_new_tax', 'Add new TAX'),
(308, 'enter_tax', 'Enter TAX'),
(309, 'already_exists', 'Already Exists !'),
(310, 'successfully_inserted', 'Successfully Inserted.'),
(311, 'tax', 'TAX'),
(312, 'tax_edit', 'TAX Edit'),
(313, 'product_not_added', 'Product not added !'),
(314, 'total_tax', 'Total TAX'),
(315, 'manage_your_supplier_details', 'Manage your supplier details.'),
(316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy'),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.'),
(318, 'billing_date', 'Billing Date'),
(319, 'billing_to', 'Billing To'),
(320, 'billing_from', 'Billing From'),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!'),
(322, 'old_customer', 'Old Customer'),
(323, 'new_customer', 'New Customer'),
(324, 'new_supplier', 'New Supplier'),
(325, 'old_supplier', 'Old Supplier'),
(326, 'credit_customer', 'Credit Customer'),
(327, 'account_already_exists', 'This Account Already Exists !'),
(328, 'edit_income', 'Edit Income'),
(329, 'you_are_not_access_this_part', 'You are not authorised person !'),
(330, 'account_edit', 'Account Edit'),
(331, 'due', 'Due'),
(332, 'expense_edit', 'Expense Edit'),
(333, 'please_select_customer', 'Please select customer !'),
(334, 'profit_report', 'Profit Report (Sale Wise)'),
(335, 'total_profit_report', 'Total profit report'),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.'),
(337, 'category_not_selected', 'Category not selected.'),
(338, 'supplier_not_selected', 'Supplier not selected.'),
(339, 'please_select_product', 'Please select product.'),
(340, 'product_model_already_exist', 'Product model already exist !'),
(341, 'invoice_logo', 'Sale Logo'),
(342, 'available_qnty', 'Av. Qnty.'),
(343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !'),
(344, 'customer_details', 'Customer details'),
(345, 'manage_customer_details', 'Manage customer details.'),
(346, 'site_key', 'Captcha Site Key'),
(347, 'secret_key', 'Captcha Secret Key'),
(348, 'captcha', 'Captcha'),
(349, 'cartoon_quantity', 'Cartoon Quantity'),
(350, 'total_cartoon', 'Total Cartoon'),
(351, 'cartoon', 'Cartoon'),
(352, 'item_cartoon', 'Item/Cartoon'),
(353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !'),
(354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.'),
(355, 'item', 'Item'),
(356, 'manage_your_credit_customer', 'Manage your credit customer'),
(357, 'total_quantity', 'Total Quantity'),
(358, 'quantity_per_cartoon', 'Quantity per cartoon'),
(359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here'),
(360, 'synchronizer_setting', 'Synchronizer Setting'),
(361, 'data_synchronizer', 'Data Synchronizer'),
(362, 'hostname', 'Host name'),
(363, 'username', 'User Name'),
(364, 'ftp_port', 'FTP Port'),
(365, 'ftp_debug', 'FTP Debug'),
(366, 'project_root', 'Project Root'),
(367, 'please_try_again', 'Please try again'),
(368, 'save_successfully', 'Save successfully'),
(369, 'synchronize', 'Synchronize'),
(370, 'internet_connection', 'Internet Connection'),
(371, 'outgoing_file', 'Outgoing File'),
(372, 'incoming_file', 'Incoming File'),
(373, 'ok', 'Ok'),
(374, 'not_available', 'Not Available'),
(375, 'available', 'Available'),
(376, 'download_data_from_server', 'Download data from server'),
(377, 'data_import_to_database', 'Data import to database'),
(378, 'data_upload_to_server', 'Data uplod to server'),
(379, 'please_wait', 'Please Wait'),
(380, 'ooops_something_went_wrong', 'Oooops Something went wrong !'),
(381, 'upload_successfully', 'Upload successfully'),
(382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration'),
(383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings'),
(384, 'download_successfully', 'Download successfully'),
(385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration'),
(386, 'data_import_first', 'Data import past'),
(387, 'data_import_successfully', 'Data import successfully'),
(388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file'),
(389, 'total_sale_ctn', 'Total Sale Ctn'),
(390, 'in_qnty', 'In Qnty.'),
(391, 'out_qnty', 'Out Qnty.'),
(392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)'),
(393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)'),
(394, 'select_supplier', 'Select Supplier'),
(395, 'stock_report_product_wise', 'Stock Report (Product Wise)'),
(396, 'phone', 'Phone'),
(397, 'select_product', 'Select Product'),
(398, 'in_quantity', 'In Qnty.'),
(399, 'out_quantity', 'Out Qnty.'),
(400, 'in_taka', 'In TK.'),
(401, 'out_taka', 'Out TK.'),
(402, 'commission', 'Commission'),
(403, 'generate_commission', 'Generate Commssion'),
(404, 'commission_rate', 'Commission Rate'),
(405, 'total_ctn', 'Total Ctn.'),
(406, 'per_pcs_commission', 'Per PCS Commission'),
(407, 'total_commission', 'Total Commission'),
(408, 'enter', 'Enter'),
(409, 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.'),
(410, 'supplier_ammount', 'Supplier Amount'),
(411, 'my_sale_ammount', 'My Sale Amount'),
(412, 'signature_pic', 'Signature Picture'),
(413, 'branch', 'Branch'),
(414, 'ac_no', 'A/C Number'),
(415, 'ac_name', 'A/C Name'),
(416, 'bank_transaction', 'Bank Transaction'),
(417, 'bank', 'Bank'),
(418, 'withdraw_deposite_id', 'Withdraw / Deposite ID'),
(419, 'bank_ledger', 'Bank Ledger'),
(420, 'note_name', 'Note Name'),
(421, 'pcs', 'Pcs.'),
(422, '1', '1'),
(423, '2', '2'),
(424, '5', '5'),
(425, '10', '10'),
(426, '20', '20'),
(427, '50', '50'),
(428, '100', '100'),
(429, '500', '500'),
(430, '1000', '1000'),
(431, 'total_discount', 'Total Discount'),
(432, 'product_not_found', 'Product not found !'),
(433, 'this_is_not_credit_customer', 'This is not credit customer !'),
(434, 'personal_loan', 'Personal Loan'),
(435, 'add_person', 'Add Person'),
(436, 'add_loan', 'Add Loan'),
(437, 'add_payment', 'Add Payment'),
(438, 'manage_person', 'Manage Person'),
(439, 'personal_edit', 'Person Edit'),
(440, 'person_ledger', 'Person Ledger'),
(441, 'backup_restore', 'Backup '),
(442, 'database_backup', 'Database backup'),
(443, 'file_information', 'File information'),
(444, 'filename', 'Filename'),
(445, 'size', 'Size'),
(446, 'backup_date', 'Backup date'),
(447, 'backup_now', 'Backup now'),
(448, 'restore_now', 'Restore now'),
(449, 'are_you_sure', 'Are you sure ?'),
(450, 'download', 'Download'),
(451, 'backup_and_restore', 'Backup'),
(452, 'backup_successfully', 'Backup successfully'),
(453, 'delete_successfully', 'successfully Deleted'),
(454, 'stock_ctn', 'Stock/Qnt'),
(455, 'unit', 'Unit'),
(456, 'meter_m', 'Meter (M)'),
(457, 'piece_pc', 'Piece (Pc)'),
(458, 'kilogram_kg', 'Kilogram (Kg)'),
(459, 'stock_cartoon', 'Stock Cartoon'),
(460, 'add_product_csv', 'Add Product (CSV)'),
(461, 'import_product_csv', 'Import product (CSV)'),
(462, 'close', 'Close'),
(463, 'download_example_file', 'Download example file.'),
(464, 'upload_csv_file', 'Upload CSV File'),
(465, 'csv_file_informaion', 'CSV File Information'),
(466, 'out_of_stock', 'Out Of Stock'),
(467, 'others', 'Others'),
(468, 'full_paid', 'Full Paid'),
(469, 'successfully_saved', 'Your Data Successfully Saved'),
(470, 'manage_loan', 'Manage Loan'),
(471, 'receipt', 'Receipt'),
(472, 'payment', 'Payment'),
(473, 'cashflow', 'Daily Cash Flow'),
(474, 'signature', 'Signature'),
(475, 'supplier_reports', 'Supplier Reports'),
(476, 'generate', 'Generate'),
(477, 'todays_overview', 'Todays Overview'),
(478, 'last_sales', 'Last Sales'),
(479, 'manage_transaction', 'Manage Transaction'),
(480, 'daily_summary', 'Daily Summary'),
(481, 'daily_cash_flow', 'Daily Cash Flow'),
(482, 'custom_report', 'Custom Report'),
(483, 'transaction', 'Transaction'),
(484, 'receipt_amount', 'Receipt Amount'),
(485, 'transaction_details_datewise', 'Transaction Details Datewise'),
(486, 'cash_closing', 'Cash Closing'),
(487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.'),
(488, 'supplier_id', 'Supplier ID'),
(489, 'category_id', 'Category ID'),
(490, 'select_report', 'Select Report'),
(491, 'supplier_summary', 'Supplier summary'),
(492, 'sales_payment_actual', 'Sales payment actual'),
(493, 'today_already_closed', 'Today already closed.'),
(494, 'root_account', 'Root Account'),
(495, 'office', 'Office'),
(496, 'loan', 'Loan'),
(497, 'transaction_mood', 'Transaction Mood'),
(498, 'select_account', 'Select Account'),
(499, 'add_receipt', 'Add Receipt'),
(500, 'update_transaction', 'Update Transaction'),
(501, 'no_stock_found', 'No Stock Found !'),
(502, 'admin_login_area', 'Admin Login Area'),
(503, 'print_qr_code', 'Print QR Code'),
(504, 'discount_type', 'Discount Type'),
(505, 'discount_percentage', 'Discount'),
(506, 'fixed_dis', 'Fixed Dis.'),
(507, 'return', 'Return'),
(508, 'stock_return_list', 'Stock Return List'),
(509, 'wastage_return_list', 'Wastage Return List'),
(510, 'return_invoice', 'Sale Return'),
(511, 'sold_qty', 'Sold Qty'),
(512, 'ret_quantity', 'Return Qty'),
(513, 'deduction', 'Deduction'),
(514, 'check_return', 'Check Return'),
(515, 'reason', 'Reason'),
(516, 'usablilties', 'Usability'),
(517, 'adjs_with_stck', 'Adjust With Stock'),
(518, 'return_to_supplier', 'Return To Supplier'),
(519, 'wastage', 'Wastage'),
(520, 'to_deduction', 'Total Deduction '),
(521, 'nt_return', 'Net Return Amount'),
(522, 'return_list', 'Return List'),
(523, 'add_return', 'Add Return'),
(524, 'per_qty', 'Purchase Qty'),
(525, 'return_supplier', 'Supplier Return'),
(526, 'stock_purchase', 'Stock Purchase Price'),
(527, 'stock_sale', 'Stock Sale Price'),
(528, 'supplier_return', 'Supplier Return'),
(529, 'purchase_id', 'Purchase ID'),
(530, 'return_id', 'Return ID'),
(531, 'supplier_return_list', 'Supplier Return List'),
(532, 'c_r_slist', 'Stock Return Stock'),
(533, 'wastage_list', 'Wastage List'),
(534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID'),
(535, 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID'),
(536, 'add_more', 'Add More'),
(537, 'prouct_details', 'Product Details'),
(538, 'prouct_detail', 'Product Details'),
(539, 'stock_return', 'Stock Return'),
(540, 'choose_transaction', 'Select Transaction'),
(541, 'transection_category', 'Select  Category'),
(542, 'transaction_categry', 'Select Category'),
(543, 'search_supplier', 'Search Supplier'),
(544, 'customer_id', 'Customer ID'),
(545, 'search_customer', 'Search Customer Invoice'),
(546, 'serial_no', 'SN'),
(547, 'item_discount', 'Item Discount'),
(548, 'invoice_discount', 'Sale Discount'),
(549, 'add_unit', 'Add Unit'),
(550, 'manage_unit', 'Manage Unit'),
(551, 'add_new_unit', 'Add New Unit'),
(552, 'unit_name', 'Unit Name'),
(553, 'payment_amount', 'Payment Amount'),
(554, 'manage_your_unit', 'Manage Your Unit'),
(555, 'unit_id', 'Unit ID'),
(556, 'unit_edit', 'Unit Edit'),
(557, 'vat', 'Vat'),
(558, 'sales_report_category_wise', 'Sales Report (Category wise)'),
(559, 'purchase_report_category_wise', 'Purchase Report (Category wise)'),
(560, 'category_wise_purchase_report', 'Category wise purchase report'),
(561, 'category_wise_sales_report', 'Category wise sales report'),
(562, 'best_sale_product', 'Best Sale Product'),
(563, 'all_best_sales_product', 'All Best Sales Products'),
(564, 'todays_customer_receipt', 'Todays Customer Receipt'),
(565, 'not_found', 'Record not found'),
(566, 'collection', 'Collection'),
(567, 'increment', 'Increment'),
(568, 'accounts_tree_view', 'Accounts Tree View'),
(569, 'debit_voucher', 'Debit Voucher'),
(570, 'voucher_no', 'Voucher No'),
(571, 'credit_account_head', 'Credit Account Head'),
(572, 'remark', 'Remark'),
(573, 'code', 'Code'),
(574, 'amount', 'Amount'),
(575, 'approved', 'Approved'),
(576, 'debit_account_head', 'Debit Account Head'),
(577, 'credit_voucher', 'Credit Voucher'),
(578, 'find', 'Find'),
(579, 'transaction_date', 'Transaction Date'),
(580, 'voucher_type', 'Voucher Type'),
(581, 'particulars', 'Particulars'),
(582, 'with_details', 'With Details'),
(583, 'general_ledger', 'General Ledger'),
(584, 'general_ledger_of', 'General ledger of'),
(585, 'pre_balance', 'Pre Balance'),
(586, 'current_balance', 'Current Balance'),
(587, 'to_date', 'To Date'),
(588, 'from_date', 'From Date'),
(589, 'trial_balance', 'Trial Balance'),
(590, 'authorized_signature', 'Authorized Signature'),
(591, 'chairman', 'Chairman'),
(592, 'total_income', 'Total Income'),
(593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income'),
(594, 'profit_loss', 'Profit Loss'),
(595, 'cash_flow_report', 'Cash Flow Report'),
(596, 'cash_flow_statement', 'Cash Flow Statement'),
(597, 'amount_in_dollar', 'Amount In Dollar'),
(598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent'),
(599, 'coa_print', 'Coa Print'),
(600, 'cash_flow', 'Cash Flow'),
(601, 'cash_book', 'Cash Book'),
(602, 'bank_book', 'Bank Book'),
(603, 'c_o_a', 'Chart of Account'),
(604, 'journal_voucher', 'Journal Voucher'),
(605, 'contra_voucher', 'Contra Voucher'),
(606, 'voucher_approval', 'Vouchar Approval'),
(607, 'supplier_payment', 'Supplier Payment'),
(608, 'customer_receive', 'Customer Receive'),
(609, 'gl_head', 'General Head'),
(610, 'account_code', 'Account Head'),
(611, 'opening_balance', 'Opening Balance'),
(612, 'head_of_account', 'Head of Account'),
(613, 'inventory_ledger', 'Inventory Ledger'),
(614, 'newpassword', 'New Password'),
(615, 'password_recovery', 'Password Recovery'),
(616, 'forgot_password', 'Forgot Password ??'),
(617, 'send', 'Send'),
(618, 'due_report', 'Due Report'),
(619, 'due_amount', 'Due Amount'),
(620, 'download_sample_file', 'Download Sample File'),
(621, 'customer_csv_upload', 'Customer Csv Upload'),
(622, 'csv_supplier', 'Csv Upload Supplier'),
(623, 'csv_upload_supplier', 'Csv Upload Supplier'),
(624, 'previous', 'Previous'),
(625, 'net_total', 'Net Total'),
(626, 'currency_list', 'Currency List'),
(627, 'currency_name', 'Currency Name'),
(628, 'currency_icon', 'Currency Symbol'),
(629, 'add_currency', 'Add Currency'),
(630, 'role_permission', 'Role Permission'),
(631, 'role_list', 'Role List'),
(632, 'user_assign_role', 'User Assign Role'),
(633, 'permission', 'Permission'),
(634, 'add_role', 'Add Role'),
(635, 'add_module', 'Add Module'),
(636, 'module_name', 'Module Name'),
(637, 'office_loan', 'Office Loan'),
(638, 'add_menu', 'Add Menu'),
(639, 'menu_name', 'Menu Name'),
(640, 'sl_no', 'Sl No'),
(641, 'create', 'Create'),
(642, 'read', 'Read'),
(643, 'role_name', 'Role Name'),
(644, 'qty', 'Quantity'),
(645, 'max_rate', 'Max Rate'),
(646, 'min_rate', 'Min Rate'),
(647, 'avg_rate', 'Average Rate'),
(648, 'role_permission_added_successfully', 'Role Permission Successfully Added'),
(649, 'update_successfully', 'Successfully Updated'),
(650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated '),
(651, 'shipping_cost', 'Shipping Cost'),
(652, 'in_word', 'In Word '),
(653, 'shipping_cost_report', 'Shipping Cost Report'),
(654, 'cash_book_report', 'Cash Book Report'),
(655, 'inventory_ledger_report', 'Inventory Ledger Report'),
(656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On'),
(657, 'type', 'Type'),
(658, 'taka_only', 'Taka Only'),
(659, 'item_description', 'Desc'),
(660, 'sold_by', 'Sold By'),
(661, 'user_wise_sales_report', 'User Wise Sales Report'),
(662, 'user_name', 'User Name'),
(663, 'total_sold', 'Total Sold'),
(664, 'user_wise_sale_report', 'User Wise Sales Report'),
(665, 'barcode_or_qrcode', 'Barcode/QR-code'),
(666, 'category_csv_upload', 'Category Csv  Upload'),
(667, 'unit_csv_upload', 'Unit Csv Upload'),
(668, 'invoice_return_list', 'Sales Return list'),
(669, 'invoice_return', 'Sales Return'),
(670, 'tax_report', 'TAX Report'),
(671, 'select_tax', 'Select TAX'),
(672, 'hrm', 'HRM'),
(673, 'employee', 'Employee'),
(674, 'add_employee', 'Add Employee'),
(675, 'manage_employee', 'Manage Employee'),
(676, 'attendance', 'Attendance'),
(677, 'add_attendance', 'Attendance'),
(678, 'manage_attendance', 'Manage Attendance'),
(679, 'payroll', 'Payroll'),
(680, 'add_payroll', 'Payroll'),
(681, 'manage_payroll', 'Manage Payroll'),
(682, 'employee_type', 'Employee Type'),
(683, 'employee_designation', 'Employee Designation'),
(684, 'designation', 'Designation'),
(685, 'add_designation', 'Add Designation'),
(686, 'manage_designation', 'Manage Designation'),
(687, 'designation_update_form', 'Designation Update form'),
(688, 'picture', 'Picture'),
(689, 'country', 'Country'),
(690, 'blood_group', 'Blood Group'),
(691, 'address_line_1', 'Address Line 1'),
(692, 'address_line_2', 'Address Line 2'),
(693, 'zip', 'Zip code'),
(694, 'city', 'City'),
(695, 'hour_rate_or_salary', 'Houre Rate/Salary'),
(696, 'rate_type', 'Rate Type'),
(697, 'hourly', 'Hourly'),
(698, 'salary', 'Salary'),
(699, 'employee_update', 'Employee Update'),
(700, 'checkin', 'Check In'),
(701, 'employee_name', 'Employee Name'),
(702, 'checkout', 'Check Out'),
(703, 'confirm_clock', 'Confirm Clock'),
(704, 'stay', 'Stay Time'),
(705, 'sign_in', 'Sign In'),
(706, 'check_in', 'Check In'),
(707, 'single_checkin', 'Single Check In'),
(708, 'bulk_checkin', 'Bulk Check In'),
(709, 'successfully_checkout', 'Successfully Checkout'),
(710, 'attendance_report', 'Attendance Report'),
(711, 'datewise_report', 'Date Wise Report'),
(712, 'employee_wise_report', 'Employee Wise Report'),
(713, 'date_in_time_report', 'Date In Time Report'),
(714, 'request', 'Request'),
(715, 'sign_out', 'Sign Out'),
(716, 'work_hour', 'Work Hours'),
(717, 's_time', 'Start Time'),
(718, 'e_time', 'In Time'),
(719, 'salary_benefits_type', 'Benefits Type'),
(720, 'salary_benefits', 'Salary Benefits'),
(721, 'beneficial_list', 'Benefit List'),
(722, 'add_beneficial', 'Add Benefits'),
(723, 'add_benefits', 'Add Benefits'),
(724, 'benefits_list', 'Benefit List'),
(725, 'benefit_type', 'Benefit Type'),
(726, 'benefits', 'Benefit'),
(727, 'manage_benefits', 'Manage Benefits'),
(728, 'deduct', 'Deduct'),
(729, 'add', 'Add'),
(730, 'add_salary_setup', 'Add Salary Setup'),
(731, 'manage_salary_setup', 'Manage Salary Setup'),
(732, 'basic', 'Basic'),
(733, 'salary_type', 'Salary Type'),
(734, 'addition', 'Addition'),
(735, 'gross_salary', 'Gross Salary'),
(736, 'set', 'Set'),
(737, 'salary_generate', 'Salary Generate'),
(738, 'manage_salary_generate', 'Manage Salary Generate'),
(739, 'sal_name', 'Salary Name'),
(740, 'gdate', 'Generated Date'),
(741, 'generate_by', 'Generated By'),
(742, 'the_salary_of', 'The Salary of '),
(743, 'already_generated', ' Already Generated'),
(744, 'salary_month', 'Salary Month'),
(745, 'successfully_generated', 'Successfully Generated'),
(746, 'salary_payment', 'Salary Payment'),
(747, 'employee_salary_payment', 'Employee Salary Payment'),
(748, 'total_salary', 'Total Salary'),
(749, 'total_working_minutes', 'Total Working Hours'),
(750, 'working_period', 'Working Period'),
(751, 'paid_by', 'Paid By'),
(752, 'pay_now', 'Pay Now '),
(753, 'confirm', 'Confirm'),
(754, 'successfully_paid', 'Successfully Paid'),
(755, 'add_incometax', 'Add Income TAX'),
(756, 'setup_tax', 'Setup TAX'),
(757, 'start_amount', 'Start Amount'),
(758, 'end_amount', 'End Amount'),
(759, 'tax_rate', 'TAX Rate'),
(760, 'setup', 'Setup'),
(761, 'manage_income_tax', 'Manage Income TAX'),
(762, 'income_tax_updateform', 'Income TAX Update form'),
(763, 'positional_information', 'Positional Information'),
(764, 'personal_information', 'Personal Information'),
(765, 'timezone', 'Time Zone'),
(766, 'sms', 'SMS'),
(767, 'sms_configure', 'SMS Configure'),
(768, 'url', 'URL'),
(769, 'sender_id', 'Sender ID'),
(770, 'api_key', 'Api Key'),
(771, 'gui_pos', 'GUI POS'),
(772, 'manage_service', 'Manage Service'),
(773, 'service', 'Service'),
(774, 'add_service', 'Add Service'),
(775, 'service_edit', 'Service Edit'),
(776, 'service_csv_upload', 'Service CSV Upload'),
(777, 'service_name', 'Service Name'),
(778, 'charge', 'Charge'),
(779, 'service_invoice', 'Service Invoice'),
(780, 'service_discount', 'Service Discount'),
(781, 'hanging_over', 'ETD'),
(782, 'service_details', 'Service Details'),
(783, 'tax_settings', 'TAX Settings'),
(784, 'default_value', 'Default Value'),
(785, 'number_of_tax', 'Number of TAX'),
(786, 'please_select_employee', 'Please Select Employee'),
(787, 'manage_service_invoice', 'Manage Service Invoice'),
(788, 'update_service_invoice', 'Update Service Invoice'),
(789, 'customer_wise_tax_report', 'Customer Wise TAX Report'),
(790, 'service_id', 'Service Id'),
(791, 'invoice_wise_tax_report', 'Invoice Wise TAX Report'),
(792, 'reg_no', 'Reg No'),
(793, 'update_now', 'Update Now'),
(794, 'import', 'Import'),
(795, 'add_expense_item', 'Add Expense Item'),
(796, 'manage_expense_item', 'Manage Expense Item'),
(797, 'add_expense', 'Add Expense'),
(798, 'manage_expense', 'Manage Expense'),
(799, 'expense_statement', 'Expense Statement'),
(800, 'expense_type', 'Expense Type'),
(801, 'expense_item_name', 'Expense Item Name'),
(802, 'stock_purchase_price', 'Stock Purchase Price'),
(803, 'purchase_price', 'Purchase Price'),
(804, 'customer_advance', 'Customer Advance'),
(805, 'advance_type', 'Advance Type'),
(806, 'restore', 'Restore'),
(807, 'supplier_advance', 'Supplier Advance'),
(808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO'),
(809, 'backup', 'Back Up'),
(810, 'app_setting', 'App Settings'),
(811, 'local_server_url', 'Local Server Url'),
(812, 'online_server_url', 'Online Server Url'),
(813, 'connet_url', 'Connected Hotspot Ip/url'),
(814, 'update_your_app_setting', 'Update Your App Setting'),
(815, 'select_category', 'Select Category'),
(816, 'mini_invoice', 'Mini Invoice'),
(817, 'purchase_details', 'Purchase Details'),
(818, 'disc', 'Dis %'),
(819, 'serial', 'Serial'),
(820, 'transaction_head', 'Transaction Head'),
(821, 'transaction_type', 'Transaction Type'),
(822, 'return_details', 'Return Details'),
(823, 'return_to_customer', 'Return To Customer'),
(824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary'),
(825, 'add_person_officeloan', 'Add Person (Office Loan)'),
(826, 'add_loan_officeloan', 'Add Loan (Office Loan)'),
(827, 'add_payment_officeloan', 'Add Payment (Office Loan)'),
(828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)'),
(829, 'add_person_personalloan', 'Add Person (Personal Loan)'),
(830, 'add_loan_personalloan', 'Add Loan (Personal Loan)'),
(831, 'add_payment_personalloan', 'Add Payment (Personal Loan)'),
(832, 'manage_loan_personalloan', 'Manage Loan (Personal)'),
(833, 'hrm_management', 'Human Resource'),
(834, 'cash_adjustment', 'Cash Adjustment'),
(835, 'adjustment_type', 'Adjustment Type'),
(836, 'change', 'Change'),
(837, 'sale_by', 'Sale By'),
(838, 'salary_date', 'Salary Date'),
(839, 'earnings', 'Earnings'),
(840, 'total_addition', 'Total Addition'),
(841, 'total_deduction', 'Total Deduction'),
(842, 'net_salary', 'Net Salary'),
(843, 'ref_number', 'Reference Number'),
(844, 'name_of_bank', 'Name Of Bank'),
(845, 'salary_slip', 'Salary Slip'),
(846, 'basic_salary', 'Basic Salary'),
(847, 'return_from_customer', 'Return From Customer'),
(848, 'quotation', 'Quotation'),
(849, 'add_quotation', 'Add Quotation'),
(850, 'manage_quotation', 'Manage Quotation'),
(851, 'terms', 'Terms'),
(852, 'send_to_customer', 'Sent To Customer'),
(853, 'quotation_no', 'Quotation No'),
(854, 'quotation_date', 'Quotation Date'),
(855, 'total_service_tax', 'Total Service TAX'),
(856, 'totalservicedicount', 'Total Service Discount'),
(857, 'item_total', 'Item Total'),
(858, 'service_total', 'Service Total'),
(859, 'quot_description', 'Quotation Description'),
(860, 'sub_total', 'Sub Total'),
(861, 'mail_setting', 'Mail Setting'),
(862, 'mail_configuration', 'Mail Configuration'),
(863, 'mail', 'Mail'),
(864, 'protocol', 'Protocol'),
(865, 'smtp_host', 'SMTP Host'),
(866, 'smtp_port', 'SMTP Port'),
(867, 'sender_mail', 'Sender Mail'),
(868, 'mail_type', 'Mail Type'),
(869, 'html', 'HTML'),
(870, 'text', 'TEXT'),
(871, 'expiry_date', 'Expiry Date'),
(872, 'api_secret', 'Api Secret'),
(873, 'please_config_your_mail_setting', NULL),
(874, 'quotation_successfully_added', 'Quotation Successfully Added'),
(875, 'add_to_invoice', 'Add To Invoice'),
(876, 'added_to_invoice', 'Added To Invoice'),
(877, 'closing_balance', 'Closing Balance'),
(878, 'contact', 'Contact'),
(879, 'fax', 'Fax'),
(880, 'state', 'State'),
(881, 'discounts', 'Discount'),
(882, 'address1', 'Address1'),
(883, 'address2', 'Address2'),
(884, 'receive', 'Receive'),
(885, 'purchase_history', 'Purchase History'),
(886, 'cash_payment', 'Cash Payment'),
(887, 'bank_payment', 'Bank Payment'),
(888, 'do_you_want_to_print', 'Do You Want to Print'),
(889, 'yes', 'Yes'),
(890, 'no', 'No'),
(891, 'todays_sale', 'Today\'s Sales'),
(892, 'or', 'OR'),
(893, 'no_result_found', 'No Result Found'),
(894, 'add_service_quotation', 'Add Service Quotation'),
(895, 'add_to_invoice', 'Add To Invoice'),
(896, 'item_quotation', 'Item Quotation'),
(897, 'service_quotation', 'Service Quotation'),
(898, 'return_from', 'Return Form'),
(899, 'customer_return_list', 'Customer Return List'),
(900, 'pdf', 'Pdf'),
(901, 'note', 'Note'),
(902, 'update_debit_voucher', 'Update Debit Voucher'),
(903, 'update_credit_voucher', 'Update Credit voucher'),
(904, 'on', 'On'),
(905, '', ''),
(906, 'total_expenses', 'Total Expense'),
(907, 'already_exist', 'Already Exist'),
(908, 'checked_out', 'Checked Out'),
(909, 'update_salary_setup', 'Update Salary Setup'),
(910, 'employee_signature', 'Employee Signature'),
(911, 'payslip', 'Payslip'),
(912, 'exsisting_role', 'Existing Role'),
(913, 'filter', 'Filter'),
(914, 'testinput', NULL),
(915, 'update_quotation', 'Update Quotation'),
(916, 'quotation_successfully_updated', 'Quotation Successfully Updated'),
(917, 'successfully_approved', 'Successfully Approved'),
(918, 'expiry', 'Expiry'),
(919, 'user_list', 'User List'),
(920, 'assign_roleto_user', 'Assign Role To User'),
(921, 'assign_role_list', 'Assigned Role List'),
(922, 'application_settings', 'Application Settings'),
(923, 'company_list', 'Company List'),
(924, 'edit_company', 'Edit Company'),
(925, 'edit_user', 'Edit User'),
(926, 'edit_currency', 'Edit Currency'),
(927, 'mobile_no', 'Mobile No'),
(928, 'email_address', 'Email Address'),
(929, 'customer_list', 'Customer List'),
(930, 'advance_receipt', 'Advance Receipt'),
(931, 'supplier_list', 'Supplier List'),
(932, 'category_list', 'Category List'),
(933, 'no_record_found', 'No Record Found'),
(934, 'unit_list', 'Unit List'),
(935, 'edit_product', 'Edit Product'),
(936, 'payable_summary', 'Payable Summary'),
(937, 'pad_print', 'Pad Print'),
(938, 'pos_print', 'POS Print'),
(939, 'pos_invoice', 'POS Invoice'),
(940, 'employee_profile', 'Employee Profile'),
(941, 'edit_beneficials', 'Edit Beneficials'),
(942, 'edit_setup_update', 'Edit Salary Setup'),
(943, 'add_office_loan', 'Add Office Loan'),
(944, 'income_tax', 'Income TAX'),
(945, 'quotation_to_sale', 'Quotation To Sale'),
(946, 'quotation_edit', 'Edit Quotation'),
(947, 'edit_profile', 'Edit Profile'),
(948, 'edit_supplier', 'Edit Supplier'),
(949, 'edit_bank', 'Edit Bank'),
(950, 'balance_sheet', 'Balance Sheet'),
(951, 'salary_setup', 'Salary Setup'),
(952, 'account_head', 'Account Head'),
(953, 'add_invoice', 'Add Invoice'),
(954, 'general_ledger_report', 'General Ledger Report'),
(955, 'print_setting', 'Print Setting'),
(956, 'header', 'Header'),
(957, 'footer', 'Footer'),
(958, 'supplier_payment_receipt', 'Payment Receipt'),
(959, 'welcome_back', 'Welcome Back'),
(960, 'overwrite', 'Over Write'),
(961, 'module', 'Module'),
(962, 'purchase_key', 'Purchase Key'),
(963, 'buy_now', 'Buy Now'),
(964, 'module_list', 'Module List'),
(965, 'modules', 'Modules'),
(966, 'install', 'Install'),
(967, 'uninstall', 'Uninstall'),
(968, 'module_added_successfully', 'Module Added Successfully'),
(969, 'no_tables_are_registered_in_config', 'No table registered in config'),
(970, 'tables_are_not_available_in_database', 'Table Are not Available in Database'),
(971, 'addon', 'Add-ons'),
(972, 'generate_qr', 'Generate QR'),
(973, 'latestv', 'Latest Version'),
(974, 'Current Version', NULL),
(976, 'notesupdate', 'Note: If you want to update software,you Must have immediate previous version'),
(977, 'arabic', NULL),
(978, 'vat_no', 'VAT NO'),
(979, 'new_p_method', 'Add New Payment Method'),
(980, 'dis_val', 'Dis. Value'),
(981, 'vat_val', 'VAT Value'),
(982, 'ttl_val', 'Total VAT'),
(983, 'purchase_discount', 'Purchase Discount'),
(984, 'order_time', 'Order Time'),
(985, 'order_by', 'Order By'),
(986, 'terms_list', 'Sales Terms List'),
(987, 'terms_add', 'Add Sales Terms'),
(988, 'term_condi', 'Terms & Condition'),
(989, 'terms_update', 'Update Seles Terms'),
(990, 'add_payment_method', 'Add Payment Method'),
(991, 'payment_method_list', 'Payment Method List'),
(992, 'payment_method_name', 'Payment Method Name'),
(993, 'batch_no', 'Batch No'),
(994, 'total_with_vat', 'Total With VAT'),
(995, 'invoice_time', 'Invoice Time'),
(996, 'product_vat', 'Product VAT'),
(997, 'service_vat', 'Service VAT'),
(998, 'cr_no', 'CR NO'),
(999, 'service_payment', 'Service Payment'),
(1000, 'vat_tax_setting', 'VAT & TAX Setting'),
(1001, 'qty2', 'Qty'),
(1002, 'batch', 'Batch'),
(1003, 'disc', 'Disc'),
(1004, 'tot_price', 'Tot Price'),
(1005, 'tot_before_dis', 'Total Before Discount'),
(1006, 'tot_with_dis', 'Total with Discount'),
(1007, 'tax_vat', 'TAX Value'),
(1008, 'return_receipt_text', 'Please keep the receipt and bring it in case of return'),
(1009, 'invoice_qr_code', 'Invoice Qr-Code'),
(1010, 'sales_due', 'Today Sales Due'),
(1011, 'purchase_due', 'Today Purchase Due'),
(1012, 'delivery_note', 'Delivery Note'),
(1013, 'financial_year', 'Financial Year'),
(1014, 'close_financial_year', 'Close Financial Year'),
(1015, 'create_financial_year', 'Create Financial Year'),
(1016, 'year_closing', 'Year Closing'),
(1017, 'financial_year_start_date', 'Financial Year Start'),
(1018, 'financial_year_end_date', 'Financial Year End'),
(1019, 'subaccount_list', 'Sub Account List'),
(1020, 'subaccount_add', 'Sub Account Add'),
(1021, 'subtype', 'Sub Type'),
(1022, 'predefined_accounts', 'Predefined Accounts'),
(1023, 'create_debit_voucher', 'Create Debit Voucher'),
(1024, 'ledger_comment', 'Ledger Comment'),
(1025, 'reverseHead', 'Reverse Account Name'),
(1026, 'VNo', 'VNo'),
(1027, 'ledgerComment', '	Ledger Comment'),
(1028, 'create_credit_voucher', 'Create Credit Voucher'),
(1029, 'create_contra_voucher', 'Create Contra Voucher'),
(1030, 'create_journal_voucher', 'Create Journal Voucher'),
(1031, 'reverse_account_head', 'Reverse Account Head'),
(1032, 'bank_reconciliation', 'Bank Reconciliation'),
(1033, 'day_book', 'Day Book'),
(1034, 'sub_ledger', 'Sub Ledger'),
(1035, 'income_statement_form', 'Income Statement'),
(1036, 'year', 'Year'),
(1037, 'expenditure_statement', 'Expenditure Statement'),
(1038, 'profit_loss_report', 'Profit Loss'),
(1039, 'fixedasset_schedule', 'Fixed Asset Schedule'),
(1040, 'receipt_payment', 'Receipt & Payment'),
(1041, 'cash_basis', 'Cash Basis'),
(1042, 'accrual_basis', 'Accrual Basis'),
(1043, 'bank_reconciliation_report', 'Bank Reconciliation Report'),
(1044, 'salary_advance_view', 'Salary Advance'),
(1045, 'add_salary_advance', 'Add Salary Advance'),
(1046, 'manage_salary_advance', 'Manage Salary Advance'),
(1047, 'release_amount', 'Release Amount'),
(1048, 'create_date', 'Create Date'),
(1049, 'employee_salary_generate', 'Salary Generate'),
(1050, 'approved_date', 'Approved Date'),
(1051, 'approved_by', 'Approved By'),
(1052, 'salar_month', 'Salary Month'),
(1053, 'employee_salary_chart', 'Employee Salary Chart'),
(1054, 'post', 'Post'),
(1055, 'employee_salary_payment_view', 'Manage Employee Salary'),
(1056, 'pay_by', 'Pay By'),
(1057, 'bank_book_report', 'Bank Book Report Of'),
(1058, 'head_name', 'Head Name'),
(1059, 'head_code', 'Head Code'),
(1060, 'voucher', 'Voucher'),
(1061, 'sub_ledger_of', 'Sub Ledger of'),
(1062, 'fixed_assets_report', 'Fixed Assets Annual Report'),
(1063, 'opening_balance_fixed_assets', 'Opening Balance of Fixed Assets'),
(1064, 'additions', 'Additions'),
(1065, 'closing_balance_fixed_assets', 'Closing Balance of Fixed Assets'),
(1066, 'depreciation_rate', 'Depreciation Rate'),
(1067, 'depreciation_value', 'Depreciation Value'),
(1068, 'opening_balance_accumulated_depreciation', 'Opening Balance of Accumulated Depreciation'),
(1069, 'closing_balance_accumulated_depreciation', 'Closing Balance of Accumulated Depreciation'),
(1070, 'written_down_value', 'Written Down Value'),
(1071, 'unapproved', 'Unapproved'),
(1072, 'check_no', 'Check No'),
(1073, 'Total Liabilities Equity', 'total_liabilities_equity'),
(1074, 'total_equity', 'Total Equity'),
(1075, 'total_liabilities', 'Total Liabilities'),
(1076, 'total_assets', 'Total Assets'),
(1077, 'cashinhand', 'Cash In Hand'),
(1078, 'cash_bank', 'Cash At Bank'),
(1079, 'advance', 'Advance'),
(1080, 'view_employee_payment', 'Employee Payment List'),
(1081, 'ret_item', 'Returned Item'),
(1082, 'replaced_item', 'Replaced Item'),
(1083, 'adj_amount', 'Adjusted Amount'),
(1084, 'is_autoapprove_v', 'Auto Approve Invoice Voucher'),
(1085, 'cost_price', 'Cost Price'),
(1086, 'chalan_no', 'Chalan No'),
(1087, 'already_returned', 'This Invoice is Already Returned '),
(1088, 'sales_revenues', 'Sales Revenues'),
(1089, 'total_sales_revenues', 'Total Sales Revenues'),
(1090, 'total_sales_returnes_and_discounts', 'Total Sales Returnes and discounts'),
(1091, 'net_sales', 'Net Sales'),
(1092, 'cost_of_goods_sold', 'Cost of Goods Sold'),
(1093, 'total_cost_of_goods_sold', 'Total Cost of Goods Sold'),
(1094, 'operating_expense', 'Operating Expense'),
(1095, 'total_expense', 'Total Expense'),
(1096, 'income_loss', 'Income / Loss'),
(1097, 'cash_balance', 'Cash Balance');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_purchase_key`
--

CREATE TABLE `module_purchase_key` (
  `id` int(11) NOT NULL,
  `identity` varchar(100) DEFAULT NULL,
  `purchase_key` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(10) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `end_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

CREATE TABLE `person_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `print_setting`
--

CREATE TABLE `print_setting` (
  `id` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `footer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `print_setting`
--

INSERT INTO `print_setting` (`id`, `header`, `footer`) VALUES
(1, 200, 100);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Food', 1),
(2, 'Electronics', 1),
(3, 'Personal Care', 1),
(4, 'Shoes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_vat` float DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_vat`, `product_model`, `product_details`, `image`, `status`) VALUES
(9, '2233', '1', 'Sugar', '1.2', 'Kg', 0, '222', 0, 'Brown', 'Sugar Brazil', 'my-assets/image/product.png', 1),
(8, '001', '4', 'Blanksandles', '2.7', 'PCS', 0, '1111', 0, 'Brown', 'ATTITUDIST MEN\'S HANDCRAFTED GLOSSY BROWN ', 'my-assets/image/product.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) DEFAULT '0.00',
  `due_amount` decimal(10,2) DEFAULT '0.00',
  `total_discount` decimal(10,2) DEFAULT NULL,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'sum of product discount',
  `total_vat_amnt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'sum of product vat',
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text,
  `status` int(11) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `is_credit` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `invoice_discount`, `total_vat_amnt`, `purchase_date`, `purchase_details`, `status`, `bank_id`, `payment_type`, `is_credit`) VALUES
(23, 6, '6676', 4, '605.00', '0.00', '605.00', '0.00', '0.00', '0.00', '2023-03-18', '9', 1, NULL, 1, 1),
(22, 5, '77', 3, '440.00', '0.00', '440.00', '0.00', '0.00', '0.00', '2023-03-18', 'm7', 1, NULL, 1, 1),
(21, 4, '66', 4, '330.00', '330.00', '0.00', '0.00', '0.00', '0.00', '2023-03-18', '87', 1, NULL, 1, 0),
(20, 3, '11', 4, '330.00', '330.00', '0.00', '0.00', '0.00', '0.00', '2023-03-18', '12', 1, NULL, 1, 0),
(18, 1, '01', 1, '5250.00', '5250.00', '0.00', '0.00', '0.00', '0.00', '2023-03-18', '333', 1, NULL, 1, 0),
(19, 2, '02', 2, '1980.00', '1954.00', '26.00', '0.00', '0.00', '0.00', '2023-03-18', '222', 1, NULL, 1, 1),
(24, 7, '669', 2, '420.00', '380.00', '40.00', '0.00', '0.00', '0.00', '2023-03-18', '77', 1, NULL, 1, 0),
(25, 8, '112', 4, '275.00', '200.00', '75.00', '0.00', '0.00', '0.00', '2023-03-18', '2', 1, NULL, 1, 0),
(26, 9, '22', 4, '165.00', '100.00', '65.00', '0.00', '0.00', '0.00', '2023-03-18', '33', 1, NULL, 1, 0),
(27, 10, '123', 4, '198.00', '100.00', '98.00', '0.00', '0.00', '0.00', '2023-03-18', '456', 1, NULL, 1, 0),
(28, 11, '23', 4, '198.00', '150.00', '48.00', '0.00', '0.00', '0.00', '2023-03-18', '24', 1, NULL, 1, 0),
(29, 12, '26', 4, '214.50', '180.00', '34.50', '0.00', '0.00', '0.00', '2023-03-18', '27', 1, NULL, 1, 0),
(30, 13, '50', 4, '85.80', '50.00', '35.80', '0.00', '0.00', '0.00', '2023-03-18', '51', 1, NULL, 1, 0),
(31, 14, '54', 4, '132.00', '100.00', '32.00', '0.00', '0.00', '0.00', '2023-03-18', '55', 1, NULL, 1, 0),
(32, 15, '78', 3, '605.00', '490.00', '115.00', '0.00', '0.00', '0.00', '2023-03-18', '87', 1, NULL, 1, 0),
(33, 16, '81', 4, '550.00', '400.00', '150.00', '0.00', '0.00', '0.00', '2023-03-18', '82', 1, NULL, 1, 0),
(34, 17, '86', 4, '495.00', '400.00', '95.00', '0.00', '0.00', '0.00', '2023-03-18', '87', 1, NULL, 1, 0),
(35, 18, '89', 4, '528.00', '500.00', '28.00', '0.00', '0.00', '0.00', '2023-03-18', '90', 1, NULL, 1, 0),
(36, 19, '67', 3, '500.00', '480.00', '20.00', '50.00', '50.00', '0.00', '2023-03-18', '90', 1, NULL, 1, 0),
(37, 20, '91', 4, '109.50', '100.00', '9.50', '50.00', '50.00', '0.00', '2023-03-18', '92', 1, NULL, 1, 0),
(38, 21, '101', 4, '298.00', '200.00', '98.00', '10.00', '10.00', '0.00', '2023-03-18', '102', 1, NULL, 1, 0),
(39, 22, '55', 3, '600.00', '600.00', '0.00', '16.00', '16.00', '0.00', '2023-03-18', '45', 1, NULL, 1, 0),
(40, 23, '56', 3, '850.00', '680.00', '170.00', '8.00', '8.00', '0.00', '2023-03-18', '', 1, NULL, 1, 0),
(41, 24, '6999', 3, '970.00', '890.00', '80.00', '9.00', '9.00', '0.00', '2023-03-19', 'mn', 1, NULL, 1, 0),
(42, 25, '544', 2, '470.00', '330.00', '140.00', '3.00', '3.00', '0.00', '2023-03-19', 'mn', 1, NULL, 1, 0),
(43, 26, '8889', 4, '800.00', '560.00', '240.00', '19.00', '19.00', '0.00', '2023-03-19', '99', 1, NULL, 1, 0),
(44, 27, '6555', 3, '600.00', '600.00', '0.00', '16.00', '16.00', '0.00', '2023-03-19', '90', 1, NULL, 1, 0),
(45, 28, '557678', 5, '1300.00', '980.00', '320.00', '20.00', '20.00', '0.00', '2023-03-19', 'mn9', 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL COMMENT 'discount percentage',
  `discount_amnt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_amnt_per` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_amnt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `batch_id`, `expiry_date`, `total_amount`, `discount`, `discount_amnt`, `vat_amnt_per`, `vat_amnt`, `status`) VALUES
(23, 'NPORCKZQXL7LRJB', 23, '2233', '550.00', '1.10', '09', '2023-03-31', '605.00', 0, '0.00', '0.00', '0.00', 1),
(22, 'AVO2LY8Q5W435EQ', 22, '2233', '400.00', '1.10', '09', '2023-03-31', '440.00', 0, '0.00', '0.00', '0.00', 1),
(21, 'XBHUOA1ZVDS6PIW', 21, '2233', '300.00', '1.10', '003', '2023-03-31', '330.00', 0, '0.00', '0.00', '0.00', 1),
(20, '71UNJ18EWR45WKB', 20, '2233', '300.00', '1.10', '111', '2023-03-31', '330.00', 0, '0.00', '0.00', '0.00', 1),
(19, '2VTVUTG27OW28XZ', 19, '2233', '1800.00', '1.10', '02', '2023-03-31', '1980.00', 0, '0.00', '0.00', '0.00', 1),
(18, 'K3NHSI5UWU5XUDO', 18, '001', '2500.00', '2.10', '01', '2023-03-31', '5250.00', 0, '0.00', '0.00', '0.00', 1),
(24, 'CAH7FGW3O2VC7MJ', 24, '001', '200.00', '2.10', '09', '2023-03-31', '420.00', 0, '0.00', '0.00', '0.00', 1),
(25, 'APS4KU8YRPTULWW', 25, '2233', '250.00', '1.10', '33', '2023-03-31', '275.00', 0, '0.00', '0.00', '0.00', 1),
(26, 'E1QAAPJ1F9SOQVZ', 26, '2233', '150.00', '1.10', '11', '2023-03-31', '165.00', 0, '0.00', '0.00', '0.00', 1),
(27, 'MK7QLUKAU776G1F', 31, '2233', '120.00', '1.10', '56', '2023-03-31', '132.00', 0, '0.00', '0.00', '0.00', 1),
(28, 'HN3YOVL18MG2K34', 32, '2233', '550.00', '1.10', '08', '2023-03-31', '605.00', 0, '0.00', '0.00', '0.00', 1),
(29, '9ETQ85JYOCJ3IC2', 33, '2233', '500.00', '1.10', '83', '2023-03-31', '550.00', 0, '0.00', '0.00', '0.00', 1),
(30, 'IKGMTIT69QGNI8I', 34, '2233', '450.00', '1.10', '88', '2023-03-22', '495.00', 0, '0.00', '0.00', '0.00', 1),
(31, 'S1G3VBGURH3ISQ9', 35, '2233', '480.00', '1.10', '91', '2023-03-21', '528.00', 0, '0.00', '0.00', '0.00', 1),
(32, '54CIESV8SDLHVTS', 36, '2233', '500.00', '1.10', '09', '2023-03-31', '550.00', 0, '0.00', '0.00', '0.00', 1),
(33, '6DSCPPQSSE8BXOF', 37, '2233', '145.00', '1.10', '94', '2023-03-23', '159.50', 0, '0.00', '0.00', '0.00', 1),
(34, 'QGTRUK4EGQ415R6', 38, '2233', '280.00', '1.10', '103', '2023-03-23', '308.00', 0, '0.00', '0.00', '0.00', 1),
(35, 'MUVWV12A3ZVPSGY', 39, '2233', '560.00', '1.10', '08', '2023-03-31', '616.00', 0, '0.00', '0.00', '0.00', 1),
(36, 'CEIFFP4FVGI6WVM', 40, '2233', '780.00', '1.10', '08', '2023-03-31', '858.00', 0, '0.00', '0.00', '0.00', 1),
(37, 'D6UKNIFKTM9IFCB', 41, '2233', '890.00', '1.10', '77', '2023-03-31', '979.00', 0, '0.00', '0.00', '0.00', 1),
(38, 'RJ41WW2K8EVMNRC', 42, '2233', '430.00', '1.10', '76', '2023-03-31', '473.00', 0, '0.00', '0.00', '0.00', 1),
(39, '4LNUO8BMYDOE1W7', 43, '001', '390.00', '2.10', '77', '2023-03-31', '819.00', 0, '0.00', '0.00', '0.00', 1),
(40, 'D4Y8YXDI3FY7AIG', 44, '2233', '560.00', '1.10', '66', '2023-03-31', '616.00', 0, '0.00', '0.00', '0.00', 1),
(41, '4QL52ZBYSKHUA53', 45, '2233', '1200.00', '1.10', '55', '2023-03-31', '1320.00', 0, '0.00', '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_vat` float DEFAULT NULL,
  `is_fixed` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `quotation_id` varchar(30) NOT NULL,
  `quot_no` varchar(50) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_total_vat` double(10,2) NOT NULL DEFAULT '0.00',
  `item_total_tax` decimal(10,2) DEFAULT '0.00',
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_vat` double(10,2) NOT NULL DEFAULT '0.00',
  `service_total_tax` decimal(10,2) DEFAULT '0.00',
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_fixed` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` int(11) NOT NULL DEFAULT '0',
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

CREATE TABLE `quotation_service_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_per` decimal(10,2) DEFAULT '0.00',
  `vat_amnt` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

CREATE TABLE `quotation_taxinfo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

CREATE TABLE `quot_products_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `batch_id` varchar(10) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `vat_amnt` decimal(10,2) DEFAULT NULL,
  `vat_per` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(1, 1, 1, 0, 0, 0, 0),
(2, 2, 1, 0, 0, 0, 0),
(3, 3, 1, 0, 0, 0, 0),
(4, 121, 1, 0, 0, 0, 0),
(5, 122, 1, 0, 0, 0, 0),
(6, 4, 1, 0, 0, 0, 0),
(7, 5, 1, 0, 0, 0, 0),
(8, 10, 1, 0, 0, 0, 0),
(9, 11, 1, 0, 0, 0, 0),
(10, 12, 1, 0, 0, 0, 0),
(11, 13, 1, 0, 0, 0, 0),
(12, 14, 1, 0, 0, 0, 0),
(13, 15, 1, 0, 0, 0, 0),
(14, 16, 1, 0, 0, 0, 0),
(15, 17, 1, 0, 0, 0, 0),
(16, 18, 1, 0, 0, 0, 0),
(17, 21, 1, 0, 0, 0, 0),
(18, 22, 1, 0, 0, 0, 0),
(19, 23, 1, 1, 1, 1, 1),
(20, 24, 1, 0, 0, 0, 0),
(21, 25, 1, 0, 0, 0, 0),
(22, 26, 1, 0, 0, 0, 0),
(23, 27, 1, 0, 0, 0, 0),
(24, 28, 1, 0, 0, 0, 0),
(25, 29, 1, 0, 0, 0, 0),
(26, 30, 1, 0, 0, 0, 0),
(27, 31, 1, 0, 0, 0, 0),
(28, 32, 1, 0, 0, 0, 0),
(29, 33, 1, 0, 0, 0, 0),
(30, 34, 1, 0, 0, 0, 0),
(31, 35, 1, 0, 0, 0, 0),
(32, 36, 1, 0, 0, 0, 0),
(33, 37, 1, 0, 0, 0, 0),
(34, 38, 1, 0, 0, 0, 0),
(35, 39, 1, 0, 0, 0, 0),
(36, 40, 1, 0, 0, 0, 0),
(37, 41, 1, 0, 0, 0, 0),
(38, 42, 1, 0, 0, 0, 0),
(39, 43, 1, 0, 0, 0, 0),
(40, 44, 1, 1, 1, 1, 1),
(41, 45, 1, 1, 1, 1, 1),
(42, 46, 1, 1, 1, 1, 1),
(43, 47, 1, 1, 1, 1, 1),
(44, 48, 1, 1, 1, 1, 1),
(45, 49, 1, 1, 1, 1, 1),
(46, 50, 1, 1, 1, 1, 1),
(47, 51, 1, 1, 1, 1, 1),
(48, 52, 1, 1, 1, 1, 1),
(49, 53, 1, 1, 1, 1, 1),
(50, 54, 1, 1, 1, 1, 1),
(51, 55, 1, 1, 1, 1, 1),
(52, 56, 1, 1, 1, 1, 1),
(53, 57, 1, 1, 1, 1, 1),
(54, 58, 1, 1, 1, 1, 1),
(55, 60, 1, 1, 1, 1, 1),
(56, 123, 1, 1, 1, 1, 1),
(57, 125, 1, 1, 1, 1, 1),
(58, 126, 1, 1, 1, 1, 1),
(59, 127, 1, 1, 1, 1, 1),
(60, 128, 1, 1, 1, 1, 1),
(61, 129, 1, 1, 1, 1, 1),
(62, 130, 1, 1, 1, 1, 1),
(63, 131, 1, 1, 1, 1, 1),
(64, 132, 1, 1, 1, 1, 1),
(65, 133, 1, 1, 1, 1, 1),
(66, 134, 1, 1, 1, 1, 1),
(67, 135, 1, 1, 1, 1, 1),
(68, 136, 1, 1, 1, 1, 1),
(69, 137, 1, 1, 1, 1, 1),
(70, 138, 1, 1, 1, 1, 1),
(71, 139, 1, 1, 1, 1, 1),
(72, 140, 1, 1, 1, 1, 1),
(73, 61, 1, 0, 0, 0, 0),
(74, 62, 1, 0, 0, 0, 0),
(75, 65, 1, 0, 0, 0, 0),
(76, 124, 1, 0, 0, 0, 0),
(77, 70, 1, 0, 0, 0, 0),
(78, 71, 1, 0, 0, 0, 0),
(79, 72, 1, 0, 0, 0, 0),
(80, 73, 1, 0, 0, 0, 0),
(81, 74, 1, 0, 0, 0, 0),
(82, 75, 1, 0, 0, 0, 0),
(83, 76, 1, 0, 0, 0, 0),
(84, 84, 1, 0, 0, 0, 0),
(85, 85, 1, 0, 0, 0, 0),
(86, 86, 1, 0, 0, 0, 0),
(87, 87, 1, 0, 0, 0, 0),
(88, 88, 1, 0, 0, 0, 0),
(89, 89, 1, 0, 0, 0, 0),
(90, 90, 1, 0, 0, 0, 0),
(91, 91, 1, 0, 0, 0, 0),
(92, 92, 1, 0, 0, 0, 0),
(93, 93, 1, 0, 0, 0, 0),
(94, 94, 1, 0, 0, 0, 0),
(95, 95, 1, 0, 0, 0, 0),
(96, 96, 1, 0, 0, 0, 0),
(97, 141, 1, 1, 1, 1, 1),
(98, 142, 1, 1, 1, 1, 1),
(99, 143, 1, 1, 1, 1, 1),
(100, 97, 1, 0, 0, 0, 0),
(101, 98, 1, 0, 0, 0, 0),
(102, 99, 1, 0, 0, 0, 0),
(103, 100, 1, 0, 0, 0, 0),
(104, 102, 1, 0, 0, 0, 0),
(105, 103, 1, 0, 0, 0, 0),
(106, 104, 1, 0, 0, 0, 0),
(107, 105, 1, 0, 0, 0, 0),
(108, 106, 1, 0, 0, 0, 0),
(109, 107, 1, 0, 0, 0, 0),
(110, 108, 1, 0, 0, 0, 0),
(111, 109, 1, 0, 0, 0, 0),
(112, 110, 1, 0, 0, 0, 0),
(113, 111, 1, 0, 0, 0, 0),
(114, 112, 1, 0, 0, 0, 0),
(115, 113, 1, 0, 0, 0, 0),
(116, 114, 1, 0, 0, 0, 0),
(117, 115, 1, 0, 0, 0, 0),
(118, 116, 1, 0, 0, 0, 0),
(119, 117, 1, 0, 0, 0, 0),
(120, 118, 1, 0, 0, 0, 0),
(121, 119, 1, 0, 0, 0, 0),
(122, 120, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_header`
--

CREATE TABLE `salary_setup_header` (
  `s_s_h_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `emp_sal_type` varchar(50) DEFAULT NULL,
  `default_amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_userrole`
--

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES
(1, '615419', 1, '1', '2022-06-16 03:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `seles_termscondi`
--

CREATE TABLE `seles_termscondi` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seles_termscondi`
--

INSERT INTO `seles_termscondi` (`id`, `description`, `status`) VALUES
(6, '1.No replacement or return on used /opened/damaaged items.\r\n2.No replacement or return on Underwear and Cosmetics .\r\n3.The Maximum return period 3 days .', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_vat_amnt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'total invoice vat',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `previous` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` varchar(250) NOT NULL,
  `sales_by` varchar(20) DEFAULT NULL,
  `is_fixed` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` int(11) NOT NULL DEFAULT '0',
  `is_credit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `vat` decimal(10,2) DEFAULT '0.00',
  `vat_amnt` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT '0',
  `isservice` int(11) NOT NULL DEFAULT '0',
  `isreceive` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, '5d6db102011', '456452dfgdf', '8801645452', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'gui_pos', 1),
(4, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(5, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(6, 0, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(7, 0, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(8, 0, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(9, 0, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(10, 3, 'category', NULL, NULL, 'category', 1),
(11, 3, 'manage_category', NULL, NULL, 'manage_category', 1),
(12, 3, 'unit', NULL, NULL, 'unit', 1),
(13, 3, 'manage_unit', NULL, NULL, 'manage_unit', 1),
(14, 3, 'add_product', NULL, NULL, 'create_product', 1),
(15, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(16, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(17, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(18, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(19, 0, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(20, 0, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(21, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(22, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(23, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(24, 7, 'return', NULL, NULL, 'add_return', 1),
(25, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(26, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(27, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(28, 8, 'closing', NULL, NULL, 'add_closing', 1),
(29, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(30, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(31, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(32, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(33, 8, 'due_report', NULL, NULL, 'due_report', 1),
(34, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(35, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(36, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(37, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(38, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(39, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(40, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(41, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(42, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(43, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(44, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(45, 9, 'subaccount_list', NULL, NULL, 'subaccount_list', 1),
(46, 9, 'predefined_accounts', NULL, NULL, 'predefined_accounts', 1),
(47, 9, 'financial_year', NULL, NULL, 'financial_year', 1),
(48, 9, 'opening_balance', NULL, NULL, 'opening_balance', 1),
(49, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(50, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(51, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(52, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(53, 9, 'report', NULL, NULL, 'ac_report', 1),
(54, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(55, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(56, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(57, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(58, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(60, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(61, 0, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(62, 0, 'manage_bank', NULL, NULL, 'bank_list', 1),
(63, 0, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(64, 0, 'bank_ledger', NULL, NULL, 'bank_ledger', 1),
(65, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(66, 0, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(67, 0, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(68, 0, 'tax_report', NULL, NULL, 'tax_report', 1),
(69, 0, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(70, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(71, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(72, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(73, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(74, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(75, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(76, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(77, 0, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(78, 0, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(79, 0, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(80, 0, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(81, 0, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(82, 0, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(83, 0, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(84, 0, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(85, 0, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(86, 0, 'add_expense', NULL, NULL, 'add_expense', 1),
(87, 0, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(88, 0, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(89, 0, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(90, 0, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(91, 0, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(92, 0, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(93, 0, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(94, 0, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(95, 0, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(96, 0, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(97, 13, 'add_service', NULL, NULL, 'create_service', 1),
(98, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(99, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(100, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(102, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(103, 15, 'add_user', NULL, NULL, 'add_user', 1),
(104, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(105, 15, 'language', NULL, NULL, 'add_language', 1),
(106, 15, 'currency', NULL, NULL, 'add_currency', 1),
(107, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(108, 15, 'print_setting', NULL, NULL, 'print_setting', 1),
(109, 15, 'mail_setting', NULL, NULL, 'mail_setting', 1),
(110, 15, 'add_role', NULL, NULL, 'add_role', 1),
(111, 15, 'role_list', NULL, NULL, 'role_list', 1),
(112, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(113, 15, 'Permission', NULL, NULL, NULL, 1),
(114, 0, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(115, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(116, 15, 'import', NULL, NULL, 'sql_import', 1),
(117, 15, 'restore', NULL, NULL, 'restore', 1),
(118, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(119, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(120, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1),
(121, 1, 'terms_list', NULL, NULL, 'terms_list', 1),
(122, 1, 'terms_add', NULL, NULL, 'terms_add', 1),
(123, 9, 'service_payment', NULL, NULL, 'service_payment', 1),
(124, 11, 'vat_tax_setting', NULL, NULL, 'vat_tax_setting', 1),
(125, 9, 'add_payment_method', NULL, NULL, 'add_payment_method', 1),
(126, 9, 'payment_method_list', NULL, NULL, 'payment_method_list', 1),
(127, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(128, 9, 'bank_reconciliation', NULL, NULL, 'bank_reconciliation', 1),
(129, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(130, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(131, 9, 'cash_adjustment', NULL, NULL, 'cash_adjustment', 1),
(132, 9, 'day_book', NULL, NULL, 'day_book', 1),
(133, 9, 'sub_ledger', NULL, NULL, 'sub_ledger', 1),
(134, 9, 'income_statement_form', NULL, NULL, 'income_statement_form', 1),
(135, 9, 'expenditure_statement', NULL, NULL, 'expenditure_statement', 1),
(136, 9, 'profit_loss_report', NULL, NULL, 'profit_loss_report', 1),
(137, 9, 'balance_sheet', NULL, NULL, 'balance_sheet', 1),
(138, 9, 'fixedasset_schedule', NULL, NULL, 'fixedasset_schedule', 1),
(139, 9, 'receipt_payment', NULL, NULL, 'receipt_payment', 1),
(140, 9, 'bank_reconciliation_report', NULL, NULL, 'bank_reconciliation_report', 1),
(141, 12, 'salary_advance_view', NULL, NULL, 'salary_advance_view', 1),
(142, 12, 'employee_salary_generate', NULL, NULL, 'employee_salary_generate', 1),
(143, 12, 'employee_salary_payment_view', NULL, NULL, 'employee_salary_payment_view', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE `supplier_information` (
  `supplier_id` bigint(20) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES
(1, 'Supplier Open', '00', '000', '0', 'sopen@gmail.com', '0', '00', '0', '0', '000', '0', '000', '0', NULL, 1),
(2, 'Said Abdullahi', '0', '0', '098888999', 'said@gmail.com', '0', '0', '0', '0', 'Mogadishu', 'Banadir', '0', 'Somalia', NULL, 1),
(3, 'Farah Ahmed', 'malvi nahar', 'saket', '0786555', 'farahmd@gmail.com', '0', '0', '0988899001', '0', 'delhi', 'centeral', '91', 'India', NULL, 1),
(4, 'Samir ', 'hh', 'hh', '00', 'sm@gmail.com', '0', '00', '00', 'hh', 'hh', 'hh', 'hh', 'hh', NULL, 1),
(5, 'Kamal', '0', '0', '0', 'kaml@gmail.com', '0', '0', '0', '0', '0', '0', '0', '0', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES
(1, '110', 'M', 2, '7'),
(3, '677', 'd', 1, '9'),
(4, '1234', '113', 1, '7'),
(5, '101', 'L', 2, '1.5'),
(6, '102', 'S', 1, '1.1'),
(7, '1003', 'M', 3, '2'),
(9, '7666', 'Slippers', 1, '2.1'),
(11, '001', 'Brown', 1, '2.1'),
(12, '2233', 'Brown', 2, '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `status`) VALUES
(3, 'PCS', 1),
(4, 'Kg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '1', 'ayuubmoha1@gmail.com', 'b8538e80b7bc8c30f7950d966666b2ca', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vat_tax_setting`
--

CREATE TABLE `vat_tax_setting` (
  `id` int(11) NOT NULL,
  `dynamic_tax` int(11) NOT NULL DEFAULT '0',
  `fixed_tax` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vat_tax_setting`
--

INSERT INTO `vat_tax_setting` (`id`, `dynamic_tax`, `fixed_tax`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `is_qr` int(11) NOT NULL,
  `is_autoapprove_v` int(11) NOT NULL DEFAULT '0',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `is_qr`, `is_autoapprove_v`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'assets/img/icons/2023-03-03/383b8d0e2cfadc272afbc3ffc4405d28.jpg', 'assets/img/icons/2023-03-03/d38ce57179d4bbed62cf3b73d8df1997.jpg', '', '$', 'Africa/Nairobi', '0', 'Developed by  Microsom', 'english', '0', 1, 0, 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HeadCode` (`HeadCode`),
  ADD KEY `HeadName` (`HeadName`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `PHeadName` (`PHeadName`),
  ADD KEY `HeadLevel` (`HeadLevel`),
  ADD KEY `IsTransaction` (`IsTransaction`),
  ADD KEY `IsGL` (`IsGL`),
  ADD KEY `IsBudget` (`IsBudget`),
  ADD KEY `IsDepreciation` (`IsDepreciation`),
  ADD KEY `isCashNature` (`isCashNature`),
  ADD KEY `isBankNature` (`isBankNature`);

--
-- Indexes for table `acc_monthly_balance`
--
ALTER TABLE `acc_monthly_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_opening_balance`
--
ALTER TABLE `acc_opening_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `COAID` (`COAID`),
  ADD KEY `year` (`fyear`);

--
-- Indexes for table `acc_predefine_account`
--
ALTER TABLE `acc_predefine_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `COAID` (`cashCode`),
  ADD KEY `cashCode` (`cashCode`);

--
-- Indexes for table `acc_subcode`
--
ALTER TABLE `acc_subcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subTypeId` (`subTypeId`);

--
-- Indexes for table `acc_subtype`
--
ALTER TABLE `acc_subtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`),
  ADD KEY `VNo` (`VNo`),
  ADD KEY `RevCodde` (`RevCodde`),
  ADD KEY `subType` (`subType`),
  ADD KEY `subCode` (`subCode`),
  ADD KEY `referenceNo` (`referenceNo`),
  ADD KEY `vid` (`vid`);

--
-- Indexes for table `acc_vaucher`
--
ALTER TABLE `acc_vaucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `VNo` (`VNo`),
  ADD KEY `fyear` (`fyear`),
  ADD KEY `VDate` (`VDate`),
  ADD KEY `COAID` (`COAID`),
  ADD KEY `RevCodde` (`RevCodde`),
  ADD KEY `subType` (`subType`),
  ADD KEY `subCode` (`subCode`),
  ADD KEY `referenceNo` (`referenceNo`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closing_records`
--
ALTER TABLE `closing_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `daily_closing`
--
ALTER TABLE `daily_closing`
  ADD PRIMARY KEY (`closing_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `generate_id` (`generate_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_year`
--
ALTER TABLE `financial_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmb_salary_advance`
--
ALTER TABLE `gmb_salary_advance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmb_salary_generate`
--
ALTER TABLE `gmb_salary_generate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmb_salary_sheet_generate`
--
ALTER TABLE `gmb_salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_purchase_key`
--
ALTER TABLE `module_purchase_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Indexes for table `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_ledger`
--
ALTER TABLE `person_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `print_setting`
--
ALTER TABLE `print_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quot_no` (`quot_no`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quot_id` (`quot_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quot_id` (`quot_id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `seles_termscondi`
--
ALTER TABLE `seles_termscondi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`supplier_pr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vat_tax_setting`
--
ALTER TABLE `vat_tax_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_coa`
--
ALTER TABLE `acc_coa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `acc_monthly_balance`
--
ALTER TABLE `acc_monthly_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `acc_opening_balance`
--
ALTER TABLE `acc_opening_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `acc_predefine_account`
--
ALTER TABLE `acc_predefine_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `acc_subcode`
--
ALTER TABLE `acc_subcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `acc_vaucher`
--
ALTER TABLE `acc_vaucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `closing_records`
--
ALTER TABLE `closing_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `daily_closing`
--
ALTER TABLE `daily_closing`
  MODIFY `closing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_year`
--
ALTER TABLE `financial_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gmb_salary_advance`
--
ALTER TABLE `gmb_salary_advance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmb_salary_generate`
--
ALTER TABLE `gmb_salary_generate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmb_salary_sheet_generate`
--
ALTER TABLE `gmb_salary_sheet_generate`
  MODIFY `ssg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1098;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `module_purchase_key`
--
ALTER TABLE `module_purchase_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_information`
--
ALTER TABLE `person_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_ledger`
--
ALTER TABLE `person_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `print_setting`
--
ALTER TABLE `print_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seles_termscondi`
--
ALTER TABLE `seles_termscondi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vat_tax_setting`
--
ALTER TABLE `vat_tax_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
