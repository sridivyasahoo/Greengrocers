-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2020 at 04:06 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--
CREATE DATABASE `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`) VALUES
(1, 'Fresh Vegetables'),
(2, 'Leafy Vegetables'),
(3, 'Root Vegetables'),
(4, 'Fruits');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `uid` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `faname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phn` varchar(15) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `addr` varchar(200) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`uid`, `name`, `dob`, `faname`, `gender`, `phn`, `mail`, `addr`) VALUES
('U0005', 'Abhipsa Mohanty', '1999-02-26', 'Ashok Mohanty', 'female', '5678432190', 'abhi@gmail.com', 'unit-9'),
('U0002', 'Tanmoy Acharya', '1998-04-21', 'Tushar Acharya', 'male', '987654312', 'tanmoyacharya@gmail.com', 'unit-9'),
('U0003', 'Sweta P. Pati', '1999-10-24', 'Shasank Pati', 'female', '123456709', 'sweta@gmail.com', 'nayapalli'),
('U0004', 'Pratikshya Swain', '1999-07-24', 'Sudhir Swain', 'female', '98765412', 'pratikshya@gmail.com', 'unit-4'),
('U0001', 'Smarak Ranjan', '1998-12-01', 'Biswajit Pratihari', 'male', '998877665', 'smarak@gmail.com', 'srihari bihar,jatni');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `itid` varchar(50) NOT NULL,
  `iname` varchar(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `catid` int(11) NOT NULL,
  `about` varchar(500) NOT NULL,
  `benefits` varchar(500) NOT NULL,
  `image` varchar(20) NOT NULL,
  PRIMARY KEY (`itid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itid`, `iname`, `availability`, `unit`, `catid`, `about`, `benefits`, `image`) VALUES
('I0001', 'tomato', 'all year', 'kg', 1, ' red color,round shape', 'inc blood', ''),
('I0002', 'potato', 'annual', 'kg', 1, 'Fresho Potatoes are nutrient-dense, non-fattening and have reasonable amount of calories. Include them in your regular meals so that the body receives a good supply of carbohydrates, dietary fibers and essential minerals such as copper, magnesium, and iron', 'Potatoes should be included in the diet of those having mouth ulcers. As they are easy to digest, they are good for patients. Consumption of potatoes helps to maintain the blood glucose level and keeps the brain alert and active.', ''),
('I0003', 'cabbage', 'seasonal', 'kg', 2, 'green in color', 'good for hair,skin', ''),
('I0004', 'spinach', 'annual', 'kg', 2, 'healthy', 'good for skin', 'I0004.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `itemphoto`
--

CREATE TABLE IF NOT EXISTS `itemphoto` (
  `itid` varchar(10) NOT NULL,
  `photo1` varchar(15) NOT NULL,
  `photo2` varchar(15) NOT NULL,
  `photo3` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemphoto`
--

INSERT INTO `itemphoto` (`itid`, `photo1`, `photo2`, `photo3`) VALUES
('I0001', 'fg.jpg', 'fruits1.jpg', 'fruits2.jpg'),
('I0003', 'I0003-1.jpg', '', ''),
('I0002', 'I0002-1.jpg', 'I0002-2.jpg', 'I0002-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uid` varchar(10) NOT NULL,
  `logname` varchar(30) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `secques` varchar(50) NOT NULL,
  `secans` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uid`, `logname`, `pwd`, `type`, `status`, `secques`, `secans`) VALUES
('U0001', 'Smarak', 'jp123', 'customer', 'y', 'What is your favorite song?', 'botala bhangibi'),
('V0001', 'Ram', 'ram123', 'vendor', 'y', 'What is your favorite movie?', 'ramayan'),
('A0001', 'Sanchita', 'san123', 'admin', 'y', 'What is your favorite song?', 'vande mataram'),
('U0002', 'Tanmoy', 'tan123', 'customer', 'y', 'What is your favorite song?', 'darmiyan'),
('U0003', 'Sweta', 'swe123', 'customer', 'y', 'What is name the of your bestfriend?', 'sanchita'),
('U0004', 'Pratikshya', 'prat123', 'customer', 'y', 'What is your school name?', 'vems'),
('U0005', 'Abhipsa', 'abhi123', 'customer', 'y', 'What is your school name?', 'dav'),
('V0002', 'Dam', 'dam123', 'vendor', 'y', 'What is name the of your bestfriend?', 'jam'),
('V0003', 'Manshop', 'man123', 'vendor', 'y', 'What is your favorite movie?', 'uri'),
('V0004', 'raju', 'raj123', 'vendor', 'y', 'What is your school name?', 'bjem'),
('V0005', 'saurav', 'sau123', 'vendor', 'y', 'What is your school name?', 'vidwan'),
('V0006', 'Gian', 'gian123', 'vendor', 'y', 'What is your favorite song?', 'senorita');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sid` varchar(50) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `amount` float NOT NULL,
  `discount` float NOT NULL,
  `gst` float NOT NULL,
  `total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--


-- --------------------------------------------------------

--
-- Table structure for table `saledetail`
--

CREATE TABLE IF NOT EXISTS `saledetail` (
  `said` varchar(50) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `itid` varchar(50) NOT NULL,
  `venid` varchar(50) NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saledetail`
--


-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `venid` varchar(50) NOT NULL,
  `ownname` varchar(50) NOT NULL,
  `vname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `longi` varchar(30) NOT NULL,
  `latti` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`venid`, `ownname`, `vname`, `address`, `phone1`, `phone2`, `email`, `longi`, `latti`) VALUES
('V0001', 'Shyam', 'Ram godown', 'unit-4,ayodha', '123456789', '987654312', 'ram@gmail.com', '0', '0'),
('V0002', 'Damodar', 'Damgodown', 'unit-8', '34567890', '987651234', 'dam@gmail.com', '0', '0'),
('V0003', 'Manali Narendra', 'Mana shop', 'chandigarh', '345678009', '987654366', 'man@gmail.com', '0', '0'),
('V0004', 'Raju', 'Raju Shop', 'Gandhi Nagar', '445566779', '998877665', 'raju@gmail.com', '0', '0'),
('V0005', 'Saurav Pati', 'patishop', 'patia,purusottam', '98765438', '234567800', 'saurav@gmail.com', '0', '0'),
('V0006', 'Anwesha Behera', 'Gian green', 'unit-8', '765432190', '76543209', 'gian@gmail.com', '20.28988322171319', '85.84730744361877');

-- --------------------------------------------------------

--
-- Table structure for table `vendorstock`
--

CREATE TABLE IF NOT EXISTS `vendorstock` (
  `vsid` varchar(50) NOT NULL,
  `venid` varchar(50) NOT NULL,
  `itid` varchar(50) NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `available` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorstock`
--

INSERT INTO `vendorstock` (`vsid`, `venid`, `itid`, `qty`, `price`, `available`) VALUES
('VS0001', 'V0005', 'I0001', 50, 20, 'yes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
