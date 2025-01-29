-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 05:56 PM
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
-- Database: `jsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `createdBy`) VALUES
(1, 'Earing', 'Various  type of earing', '2024-10-15 04:23:02', NULL, 1),
(2, 'Pendants', 'Pendants is very beautiful', '2024-10-15 04:27:41', NULL, 1),
(3, 'Finger Rings', 'There is huge variety of finger rings', '2024-10-15 04:28:31', NULL, 1),
(6, 'Necklace', 'Necklace', '2024-10-15 04:29:28', NULL, 1),
(7, 'Nose pin', 'Nose pin', '2024-10-15 04:30:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `PId` varchar(255) DEFAULT NULL,
  `IsOrderPlaced` int(5) DEFAULT NULL,
  `OrderNumber` int(5) DEFAULT NULL,
  `PaymentMethod` varchar(200) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `UserId`, `PId`, `IsOrderPlaced`, `OrderNumber`, `PaymentMethod`, `orderDate`) VALUES
(42, 1, '26', 1, 835406198, 'Cash on Delivery', '2024-10-21 18:31:17'),
(43, 1, '27', 1, 835406198, 'Cash on Delivery', '2024-10-21 18:34:57'),
(44, 1, '31', 1, 951247031, 'Debit Card', '2024-10-21 18:44:03'),
(45, 1, '28', 1, 799074190, 'Credit Card', '2024-10-21 18:54:00'),
(46, 1, '31', 1, 195061171, 'E-Wallet', '2024-10-21 18:55:22'),
(47, 1, '26', 1, 171053128, 'Cash on Delivery', '2024-10-22 09:29:38'),
(48, 1, '27', 1, 171053128, 'Cash on Delivery', '2024-11-21 10:23:25'),
(49, 1, '26', 1, 171053128, 'Cash on Delivery', '2024-11-22 06:19:57'),
(50, 1, '27', 1, 263418593, 'E-Wallet', '2024-11-22 06:38:21'),
(51, 1, '28', 1, 759298226, 'Cash on Delivery', '2024-11-22 06:47:28'),
(52, 1, '26', 1, 759298226, 'Cash on Delivery', '2024-12-05 16:42:57'),
(53, 1, '26', 1, 156951378, 'Cash on Delivery', '2024-12-06 04:44:31'),
(55, 1, '26', 1, 431034807, 'Cash on Delivery', '2024-12-06 07:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productweight` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `addedBy` int(11) DEFAULT NULL,
  `lastUpdatedBy` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `type`, `productName`, `productweight`, `productPrice`, `gender`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `addedBy`, `lastUpdatedBy`) VALUES
(26, 1, 1, 'Gold', 'Glinting Butterfly Diamond Stud Earrings(14 Carate)', '', 8607, 'gender', 'Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\nPurity - 14 Kt\r\nApprox.Weight - 0.97 g', 'd917f129d6e4b0895d864682a3909c5b.jpg', '610510f601f662581c6fbb577c8b30f5.jpg', 'a6146e9bb59550da409063667a94b450.jpg', 120, 'In Stock', '2024-10-15 05:26:23', NULL, 1, NULL),
(27, 1, 2, 'Gold', 'Drop Earing 22 Carate', '15G', 24000, 'gender', 'Drop Earing 22 Carate\r\nuiyuiyui\r\njoiuoi\r\nkoujoi', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 120, 'In Stock', '2024-10-15 05:38:58', '0000-00-00 00:00:00', 1, 1),
(28, 2, 10, 'Diamond', 'Crystal Diamond Pendant', '', 15346, 'gender', 'Width - 7.2 mm\r\nHeight - 28.9 mm\r\nPurity - 18 Kt\r\nApprox.Weight - 1.62 g', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 'e431ea294034a9afbc885e35e4ad0558.jpg', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 80, 'In Stock', '2024-10-15 05:42:33', NULL, 1, NULL),
(29, 2, 12, 'Gold', 'Teardrop Pendant in gold', '', 27000, 'gender', 'Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K', '19e2705e043c3807b4a19fd336977ec8.jpg', '3fcb00947475cd8a85638374f20198b2.jpg', '19e2705e043c3807b4a19fd336977ec8.jpg', 85, 'In Stock', '2024-10-15 05:50:07', NULL, 1, NULL),
(30, 1, 1, 'Gold', 'Diamond Ring', '7gm', 545544, 'gender', 'hjkhkjhkjhkhkhklvcgf\r\ngtuyiuhkjk', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 'ca1df5cc5f239e4475e32d2c451b9caa.jpg', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 89, 'In Stock', '2024-10-15 12:56:00', NULL, 1, NULL),
(31, 2, 11, 'Diamond', 'Necklace-1', '12 gm', 11579888, 'Female', 'jhghjghhkkjl\r\nkjhiuyiu\r\nkjyiuyioulhyiuytiu\r\njiouiy', 'b0962738125cc719cb04e494ef6675f8.jpg', '94896cbf76d9133c94b737da69d79832.jpg', '0f60661062bc215e2f63d28554dc6832.jpg', 90, 'In Stock', '2024-10-15 12:58:29', NULL, 1, NULL),
(32, 2, 12, 'Gold', 'Teardrop Pendant in gold', '', 27000, 'gender', 'Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K', '19e2705e043c3807b4a19fd336977ec8.jpg', '3fcb00947475cd8a85638374f20198b2.jpg', '19e2705e043c3807b4a19fd336977ec8.jpg', 85, 'In Stock', '2024-10-15 05:50:07', NULL, 1, NULL),
(33, 1, 1, 'Gold', 'Diamond Ring-2', '7gm', 545544, 'gender', 'hjkhkjhkjhkhkhklvcgf\r\ngtuyiuhkjk', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 'ca1df5cc5f239e4475e32d2c451b9caa.jpg', '205a8fd06cdb1ab80d3b1436c004be9b.jpg', 89, 'In Stock', '2024-10-15 12:56:00', NULL, 1, NULL),
(34, 2, 12, 'Gold', 'Teardrop Pendant in gold', '', 27000, 'gender', 'Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K', '19e2705e043c3807b4a19fd336977ec8.jpg', '3fcb00947475cd8a85638374f20198b2.jpg', '19e2705e043c3807b4a19fd336977ec8.jpg', 85, 'In Stock', '2024-10-15 05:50:07', NULL, 1, NULL),
(35, 2, 10, 'Diamond', 'Crystal Diamond Pendant', '', 15346, 'gender', 'Width - 7.2 mm\r\nHeight - 28.9 mm\r\nPurity - 18 Kt\r\nApprox.Weight - 1.62 g', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 'e431ea294034a9afbc885e35e4ad0558.jpg', '42e3a6ca313022c6d3f34a1676bd434f.jpg', 80, 'In Stock', '2024-10-15 05:42:33', NULL, 1, NULL),
(36, 1, 2, 'Gold', 'Drop Earing 22 Carate', '', 24000, 'gender', 'Drop Earing 22 Carate\r\nuiyuiyui\r\njoiuoi\r\nkoujoi', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 'c3c08f9c03c66d753798274b4245d158.jpg', 120, 'In Stock', '2024-10-15 05:38:58', NULL, 1, NULL),
(37, 1, 2, 'Gold', 'Necklace-2', '234csdf', 234234, 'Female', 'dsfsdf', '402fdfb700f491da48cf8536e0593cf0.jpg', '402fdfb700f491da48cf8536e0593cf0.jpg', '402fdfb700f491da48cf8536e0593cf0.jpg', 34, 'In Stock', '2024-10-15 11:55:44', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryName` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategoryName`, `creationDate`, `updationDate`, `createdBy`) VALUES
(1, 1, 'Stud Earrings', '2024-10-15 04:32:15', NULL, 1),
(9, 1, 'Ear Climbers', '2024-10-15 04:34:52', NULL, 1),
(10, 2, 'CRYSTAL PENDANT', '2024-10-15 04:35:47', NULL, 1),
(11, 2, 'CROSS PENDANT', '2024-10-15 04:36:04', NULL, 1),
(12, 2, 'TEARDROP PENDANT', '2024-10-15 04:36:22', NULL, 1),
(17, 3, 'Cluster Ring', '2024-10-15 04:48:59', NULL, 1),
(20, 3, 'Engagement Ring', '2024-10-15 04:49:49', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9518737748, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-30 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(10, 'Pranay', 'pranayk@gmail.com', 'I had issue with interface.\r\nPlease contact me as soon as posible.', '2024-10-21 18:49:14', 1),
(11, 'Pranay', 'pkamthe@gmail.com', 'I want to consult about your products', '2024-12-05 16:51:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `Ordernumber` int(10) DEFAULT NULL,
  `Flatnobuldngno` varchar(200) DEFAULT NULL,
  `StreetName` varchar(200) DEFAULT NULL,
  `Area` varchar(200) DEFAULT NULL,
  `Landmark` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `Phone` bigint(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PaymentMethod` varchar(200) DEFAULT NULL,
  `OrderTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `Zipcode`, `Phone`, `Email`, `PaymentMethod`, `OrderTime`, `Status`, `Remark`, `UpdationDate`) VALUES
(10, 1, 835406198, '504', 'Hadapsar', 'Hadapsar', '', 'Pune', 411026, 9595126457, 'pranaykamthe@gmail.com', 'Cash on Delivery', '2024-11-22 06:44:09', 'Delivered', 'deliverd', '2024-11-22 06:44:09'),
(11, 1, 951247031, '504', 'Loni', '', '', 'Pune', 440016, 9512345978, 'pranay@gmail.com', 'Debit Card', '2024-12-05 16:48:30', 'Pickup', 'updated', '2024-12-05 16:48:30'),
(12, 1, 799074190, '12', 'Karve nagar', '', '', 'Pune', 440016, 9876543210, 'pranay@gmail.com', 'Credit Card', '2024-11-22 06:45:57', 'Order Cancelled', 'cancel', '2024-11-22 06:45:57'),
(13, 1, 195061171, '6', 'Street no. 2', 'Karve nagar', '', 'Pune', 440016, 9877654321, 'pranay@gmail.com', 'E-Wallet', '2024-12-05 16:48:46', 'On The Way', 'updated', '2024-12-05 16:48:46'),
(14, 1, 171053128, '2', 'abc', '', '', 'Pune', 441207, 9995634865, 'pranaykamthe@gmail.com', 'Cash on Delivery', '2024-12-05 16:48:12', 'Order Confirmed', 'updated', '2024-12-05 16:48:12'),
(15, 1, 263418593, '12', 'Hanuman ward Near Sai mandir', 'sff', 'Desaiganj', 'Desaiganj', 441207, 3456554432, 'dushantkamthe@gmail.com', 'E-Wallet', '2024-11-22 06:39:01', NULL, NULL, '2024-11-22 06:39:01'),
(16, 1, 759298226, '12', 'Loni', '', '', 'Pune', 441136, 9595455465, 'pranaykamthe@gmail.com', 'Cash on Delivery', '2024-12-05 16:43:56', NULL, NULL, '2024-12-05 16:43:56'),
(17, 1, 156951378, 'sd', 'sd', '', '', 'sdsa', 5555, 454, 'p@gmail.com', 'Cash on Delivery', '2024-12-06 04:48:14', 'Pickup', 'updated', '2024-12-06 04:48:14'),
(18, 1, 431034807, '12', 'pune', '', '', 'pune', 444444, 9595134587, 'p@gmail.com', 'Cash on Delivery', '2024-12-06 07:45:40', NULL, NULL, '2024-12-06 07:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Hadapsar, Pune, Maharashtra', 'pranaykamthe@gmail.com / advaitdeshmukh@gmail.com', 9595126457, NULL, '10:30 am to 8:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `ID` int(10) NOT NULL,
  `ProductID` int(10) DEFAULT NULL,
  `ReviewTitle` varchar(200) DEFAULT NULL,
  `Review` mediumtext DEFAULT NULL,
  `UserId` int(5) DEFAULT NULL,
  `DateofReview` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`ID`, `ProductID`, `ReviewTitle`, `Review`, `UserId`, `DateofReview`, `Remark`, `Status`, `UpdationDate`) VALUES
(10, 26, 'Review', 'Best quality and superb design', 1, '2024-11-22 06:48:45', 'Review Accept', 'Review Accept', '2024-10-21 18:46:33'),
(11, 27, 'Review', 'Best jewellery ', 1, '2024-10-21 18:47:04', NULL, NULL, '2024-10-21 18:47:04'),
(12, 28, 'good', 'very good', 1, '2024-11-22 06:47:56', NULL, NULL, '2024-11-22 06:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(11, 'p@gmail.com', '2024-10-21 19:05:10'),
(12, 'yogesh@gmail.com', '2024-10-21 19:05:25'),
(13, 'Gunjan@gmail.com', '2024-10-21 19:05:53'),
(14, 'advaitdeshmukh@gmail.com', '2024-12-05 16:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(28, '835406198', 'Thanks for Buying', 'Order Confirmed', '2024-10-21 18:41:48', NULL),
(29, '835406198', 'deliverd', 'Delivered', '2024-11-22 06:44:09', NULL),
(30, '951247031', 'conform', 'Order Confirmed', '2024-11-22 06:44:49', NULL),
(31, '799074190', 'cancel', 'Order Cancelled', '2024-11-22 06:45:57', NULL),
(32, '195061171', 'updated', 'Order Confirmed', '2024-12-05 16:47:54', NULL),
(33, '171053128', 'updated', 'Order Confirmed', '2024-12-05 16:48:12', NULL),
(34, '951247031', 'updated', 'Pickup', '2024-12-05 16:48:30', NULL),
(35, '195061171', 'updated', 'On The Way', '2024-12-05 16:48:46', NULL),
(36, '156951378', 'updated', 'Order Confirmed', '2024-12-06 04:47:05', NULL),
(37, '156951378', 'updated', 'Pickup', '2024-12-06 04:48:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `regDate`) VALUES
(1, 'Pranay', 'Kamthe', 'pranaykamthe@gmail.com', 9518737748, '098f6bcd4621d373cade4e832627b4f6', '2024-10-21 18:02:12'),
(10, 'Sahil', 'B', 'sahil@gmail.com', 9512345678, 'f925916e2754e5e03f75dd58a5733251', '2024-10-21 18:52:05'),
(11, 'Omkar', 'S', 'omkar@gmail.com', 9876543210, 'f925916e2754e5e03f75dd58a5733251', '2024-10-21 18:52:40'),
(12, 'Yogesh', 'Bansod', 'yogesh@gmail.com', 9921802301, '1a1dc91c907325c69271ddf0c944bc72', '2024-11-20 12:51:36'),
(13, 'Advait', 'Deshmukh', 'advaitdeshmukh@gmail.com', 9766152614, '098f6bcd4621d373cade4e832627b4f6', '2024-12-05 16:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `UserId`, `ProductId`, `postingDate`) VALUES
(15, 1, 27, '2024-10-21 18:47:22'),
(16, 1, 28, '2024-10-21 18:47:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
