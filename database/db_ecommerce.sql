-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 01:35 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 76, 'PROID', 10),
(2, '0', 1, 106, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(20, 'PC Game', 0),
(21, 'Voucher', 0),
(22, 'DOTA2', 0),
(23, 'CSGO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactmsg`
--

CREATE TABLE `tblcontactmsg` (
  `id_contactmsg` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontactmsg`
--

INSERT INTO `tblcontactmsg` (`id_contactmsg`, `name`, `email`, `subject`, `message`) VALUES
(1, 'bbb', 'bbb@bbb.com', 'bbb', 'bbb'),
(2, 'aa', 'yedida.26@students.amikom.ac.id', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `PHONE`, `EMAIL`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `DATEJOIN`) VALUES
(12, 'yedida', 'harya', '08888888888', 'yedida.26@students.amikom.ac.id', 'yedida_harya', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'customer_image/user_512px.png', '2020-12-02'),
(19, 'aaa', 'aaa', 'aaa', 'aaa@aaa.com', 'aaa', '7e240de74fb1ed08fa08d38063f6a6a91462a815', '', '2021-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(12, 201774, 1, 500000, 104, 0),
(13, 201758, 1, 290000, 104, 0),
(14, 201766, 1, 125000, 104, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` decimal(15,2) NOT NULL,
  `PROPRICE` decimal(15,2) DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201748, 'AK47 Asimov                           ', 5, '485000.00', '485000.00', 23, 'uploaded_photos/Capture_285x350.png', 'Available', 'admin', '08123123123'),
(201750, 'AWP Wildfire                              ', 10, '680000.00', '680000.00', 23, 'uploaded_photos/2_285x350.png', 'Available', 'admin', '08123123123'),
(201758, 'GTA V                                                                                                              ', 6, '290000.00', '290000.00', 20, 'uploaded_photos/Grand_Theft_Auto_V.png', 'NotAvailable', 'admin', '08123123123'),
(201760, 'COD : Cold War                      ', 5, '879000.00', '879000.00', 20, 'uploaded_photos/Black_Ops_Cold_War_285x350.png', 'Available', 'admin', '08123123123'),
(201763, 'Glock Vague', 5, '112000.00', '112000.00', 23, 'uploaded_photos/3_285x350.png', 'Available', 'admin', '08123123123'),
(201765, 'FIFA21', 10, '849000.00', '849000.00', 20, 'uploaded_photos/FIFA_21_Standard_Edition_Cover_285x350.png', 'Available', 'admin', '08123123123'),
(201766, 'Steam Wallet  120.000', 4, '125000.00', '125000.00', 21, 'uploaded_photos/stimwallet1_285x350.png', 'Available', 'admin', '08123123123'),
(201767, 'Battle.net 5$', 15, '75000.00', '75000.00', 21, 'uploaded_photos/battlenet_1_285x350.jpg', 'Available', 'admin', '08123123123'),
(201768, 'Xbox Gift Card 10$', 5, '110000.00', '110000.00', 21, 'uploaded_photos/xbox_1_285x350.jpg', 'Available', 'admin', '08123123123'),
(201769, 'Juggernaut Arcana', 3, '402000.00', '402000.00', 22, 'uploaded_photos/bljgg_arcup_sm_285x350.jpg', 'Available', 'admin', '08123123123'),
(201770, 'Monkey King Arcana', 6, '374000.00', '374000.00', 22, 'uploaded_photos/great_reckoning_arcana_bundle_large.0a22a31e47c41209a453a9838d892415e118c399_285x350.png', 'Available', 'admin', '08123123123'),
(201771, 'Rubick Arcana', 10, '443000.00', '443000.00', 22, 'uploaded_photos/previewfile_1596543189_285x350.jpg', 'Available', 'admin', '08123123123'),
(201774, 'Battlefield 5', 0, '500000.00', '500000.00', 20, 'uploaded_photos/image_cover_285x350.jpg', 'Available', 'admin', '08123123123');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` decimal(15,2) NOT NULL,
  `PRODISPRICE` decimal(15,2) NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(12, 201748, '0.00', '485000.00', 0, 0),
(14, 201750, '0.00', '680000.00', 0, 0),
(22, 201758, '0.00', '290000.00', 0, 0),
(24, 201760, '0.00', '879000.00', 0, 0),
(27, 201763, '0.00', '112000.00', 0, 0),
(29, 201765, '0.00', '849000.00', 0, 0),
(30, 201766, '0.00', '125000.00', 0, 0),
(31, 201767, '0.00', '75000.00', 0, 0),
(32, 201768, '0.00', '110000.00', 0, 0),
(33, 201769, '0.00', '402000.00', 0, 0),
(34, 201770, '0.00', '374000.00', 0, 0),
(35, 201771, '0.00', '443000.00', 0, 0),
(38, 201774, '0.00', '500000.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'BANK MANDIRI', '123123123123', '2000.00'),
(2, 'BANK BCA', '123123123123', '2000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(12, '2021-01-14 08:08:51', 12, 104, 2000, 917000, 'Transfer Bank', 'Confirmed', 'Your order has been confirmed.', '2021-01-14 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  `NO_REKENING` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `EMAIL`, `U_PASS`, `U_ROLE`, `USERIMAGE`, `NO_REKENING`) VALUES
(126, 'admin', 'admin', '', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/male_user_512px.png', ''),
(128, 'admin2', 'admin2', '', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Seller', '', ''),
(129, 'aaa', 'aaa', '', '7e240de74fb1ed08fa08d38063f6a6a91462a815', 'Seller', '', ''),
(130, 'bbb', 'bbb', 'bbb@bbb.com', '5cb138284d431abd6a053a56625ec088bfb88912', 'Seller', '', 'bbb');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `WISHLISTID` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`WISHLISTID`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(22, 12, 201774, '2021-01-14', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblcontactmsg`
--
ALTER TABLE `tblcontactmsg`
  ADD PRIMARY KEY (`id_contactmsg`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`WISHLISTID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `CUSID` (`CUSID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcontactmsg`
--
ALTER TABLE `tblcontactmsg`
  MODIFY `id_contactmsg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `WISHLISTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD CONSTRAINT `tblwishlist_ibfk_1` FOREIGN KEY (`PROID`) REFERENCES `tblproduct` (`PROID`),
  ADD CONSTRAINT `tblwishlist_ibfk_2` FOREIGN KEY (`CUSID`) REFERENCES `tblcustomer` (`CUSTOMERID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
