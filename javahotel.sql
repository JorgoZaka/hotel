-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2022 at 10:17 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javahotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phonenr` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `phonenr`, `email`, `username`, `password`) VALUES
(2, 'Jorgo', 'Zaka', 6666666, 'jorgo@gmail.com', 'JorgoZaka', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `checkin` date NOT NULL,
  `roomnr` varchar(50) NOT NULL,
  `roomtype` varchar(50) NOT NULL,
  `priceperday` int(50) NOT NULL,
  `daysstayed` int(50) NOT NULL,
  `totalprice` varchar(50) NOT NULL,
  `checkout` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roomnr` (`roomnr`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `roomnr` int(50) NOT NULL,
  `roomtype` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`roomnr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomnr`, `roomtype`, `price`, `status`) VALUES
(7, 'Family', 400, 'Not booked'),
(5, 'Triple', 300, 'Not booked'),
(6, 'Triple', 300, 'Not booked'),
(4, 'Double', 200, 'Not booked'),
(3, 'Double', 200, 'Not booked'),
(2, 'Single', 100, 'Not booked'),
(1, 'Single', 100, 'Not booked'),
(8, 'Family', 400, 'Not booked'),
(9, 'Suite', 500, 'Not booked'),
(10, 'Suite', 500, 'Not booked'),
(11, 'Double', 300, 'Not booked'),
(12, 'Family', 1000, 'Not booked');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
