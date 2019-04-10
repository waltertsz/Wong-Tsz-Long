-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 11:39 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stationary`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adid` int(11) NOT NULL,
  `adname` varchar(100) NOT NULL,
  `adpw` varchar(100) NOT NULL,
  `adrole` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adid`, `adname`, `adpw`, `adrole`) VALUES
(1, 'admin', 'admin', 'boss'),
(2, 'qwert', 'qwert', 'maintainer');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `place` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `uid`, `pid`, `name`, `mobile`, `place`, `quantity`, `date`) VALUES
(11, 5, 1, '123', 2147483647, '21312312', 1, '2019-04-17 16:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `ptname` varchar(200) NOT NULL,
  `pdetail` varchar(200) NOT NULL,
  `pprice` float NOT NULL,
  `ptype` varchar(50) NOT NULL,
  `plink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `ptname`, `pdetail`, `pprice`, `ptype`, `plink`) VALUES
(1, 'Kaweco FROSTED SPORT Ball Pen Soft Mandarin', 'Kaweco FROSTED SPORT Ball Pen Soft Mandarin having a beauty orange design', 200, 'kaweco', 'pen1.jpeg'),
(2, 'Kaweco LILIPUT Ballpen (Eco-) Brass', 'Kaweco LILIPUT Ballpen (Eco-) Brass\r\nusing a golden colour to let it be more elegant ', 580, 'kaweco', 'pen2.jpeg'),
(3, 'Kaweco AC SPORT Ballpen Green', 'This pen using a green colour to show it special!', 1080, 'kaweco', 'pen3.jpeg'),
(4, 'Kaweco AC SPORT Ballpen Green', 'This pen using a green colour to show it special!', 1500, 'kaweco', 'pen4.jpeg'),
(5, 'Kaweco AL SPORT Ballpen Rosé Gold', 'Kaweco AL SPORT Ballpen Rosé Gold', 660, 'kaweco', 'pen5.jpeg'),
(6, 'Kaweco AL SPORT Fountain Pen RAW', 'Kaweco AL SPORT Fountain Pen RAW', 680, 'kaweco', 'pen6.jpeg'),
(7, 'Kaweco AL SPORT Fountain Pen Night Edition', 'Kaweco AL SPORT Fountain Pen Night Edition', 1080, 'kaweco', 'pen7.jpeg'),
(8, 'Kaweco AL SPORT Mechanical Pencil 0.7 mm Night Edition', 'Kaweco AL SPORT Mechanical Pencil 0.7 mm Night Edition', 700, 'kaweco', 'pen8.jpeg'),
(9, 'Kaweco AL SPORT Rollerball Deep Red', 'Kaweco AL SPORT Rollerball Deep Red', 700, 'kaweco', 'pen9.jpeg'),
(10, 'Kaweco Converter Standard', 'It is a injector', 45, 'injector', 'injector1.jpeg'),
(11, 'Kaweco Mini Converter SPORT', 'It is a MINI-injector', 70, 'injector', 'injector2.jpeg'),
(12, 'Kaweco SQUEEZE Converter SPORT & LILIPUT', 'Kaweco SQUEEZE Converter SPORT & LILIPUT', 35, 'injector', 'injector3.jpeg'),
(13, 'Waldmann Fountain Pen Converter', 'Waldmann Fountain Pen Converter', 100, 'injector', 'injector4.jpeg'),
(14, 'Kaweco Ink Bottle Caramel Brown 30 ml', 'Kaweco Ink Bottle Caramel Brown 30 ml', 120, 'ink', 'ink1.jpeg'),
(15, 'Kaweco Ink Bottle Midnight Blue 30 ml', 'Kaweco Ink Bottle Midnight Blue 30 ml', 120, 'ink', 'ink2.jpeg'),
(16, 'Kaweco Ink Bottle Palm Green 30 ml', 'Kaweco Ink Bottle Palm Green 30 ml', 120, 'ink', 'ink3.jpeg'),
(17, 'Kaweco Ink Bottle Paradise Blue 30 ml', 'Kaweco Ink Bottle Paradise Blue 30 ml', 120, 'ink', 'ink4.jpeg'),
(18, 'Kaweco Ink Bottle Pearl Black 30 ml', 'Kaweco Ink Bottle Pearl Black 30 ml', 120, 'ink', 'ink5.jpeg'),
(19, 'Kaweco Ink Bottle Royal Blue 30 ml', 'Kaweco Ink Bottle Royal Blue 30 ml', 120, 'ink', 'ink6.jpeg'),
(20, 'Kaweco Ink Bottle Ruby Red 30 ml', 'Kaweco Ink Bottle Ruby Red 30 ml', 120, 'ink', 'ink7.jpeg'),
(21, 'Kaweco Ink Bottle Smoky Grey 30 ml', 'Kaweco Ink Bottle Smoky Grey 30 ml', 120, 'ink', 'ink8.jpeg'),
(22, 'Kaweco Ink Bottle Smoky Grey 30 ml', 'Kaweco Ink Bottle Smoky Grey 30 ml', 120, 'ink', 'ink9.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userpw` varchar(100) NOT NULL,
  `useraddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `useremail`, `username`, `userpw`, `useraddress`) VALUES
(1, 'qwe@qw.qwe', 'qwe', 'qweqwe', 'qwe123'),
(5, 'waltertszlong@gmail.com', 'waltertsz', '123', 'hk ez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
