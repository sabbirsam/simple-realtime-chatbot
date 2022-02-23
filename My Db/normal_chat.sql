-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 23, 2022 at 05:44 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `normal_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
CREATE TABLE IF NOT EXISTS `box` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `email`, `sender`, `msg`, `time`, `date`) VALUES
(65, 'samiubat14@gmail.com', 'sam', 'Hi sabbir ', '09:35 pm', '23-Feb-2022'),
(66, 'msa.sabbir.ahmed.official@gmail.com', 'sam1', 'Oww, Its realtime ', '09:35 pm', '23-Feb-2022'),
(67, 'msa.sabbir.ahmed.official@gmail.com', 'sam1', 'Ok', '09:47 pm', '23-Feb-2022'),
(68, 'samiubat14@gmail.com', 'sam', 'yr', '09:48 pm', '23-Feb-2022'),
(69, 'samiubat14@gmail.com', 'sam', 'saaa', '09:54 pm', '23-Feb-2022'),
(70, 'samiubat14@gmail.com', 'sam', 'saaa', '09:54 pm', '23-Feb-2022'),
(71, 'samiubat14@gmail.com', 'sam', 'sss', '09:54 pm', '23-Feb-2022'),
(72, 'samiubat14@gmail.com', 'sam', 'aaa', '09:54 pm', '23-Feb-2022'),
(73, 'samiubat14@gmail.com', 'sam', 's', '09:55 pm', '23-Feb-2022'),
(74, 'msa.sabbir.ahmed.official@gmail.com', 'sam1', 'sa', '11:11 pm', '23-Feb-2022'),
(75, 'msa.sabbir.ahmed.official@gmail.com', 'sam1', 'Hi sabbir ', '11:12 pm', '23-Feb-2022'),
(76, 'msa.sabbir.ahmed.official@gmail.com', 'sam1', 'I love you jan', '11:13 pm', '23-Feb-2022'),
(77, 'samiubat14@gmail.com', 'sam', 'Seriously ', '11:13 pm', '23-Feb-2022'),
(78, 'msa.sabbir.ahmed.official@gmail.com', 'sam1', 'I love you jan Otoshi ', '11:13 pm', '23-Feb-2022'),
(79, 'samiubat14@gmail.com', 'sam', 'Sorry I have a boy friend ', '11:14 pm', '23-Feb-2022');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender`, `receiver`, `msg`, `date`) VALUES
(2, 'samiubat14@gmail.com', 'msa.sabbir.ahmed.official@gmail.com', 'hello', '23-Feb-2022'),
(3, 'samiubat14@gmail.com', 'msa.sabbir.ahmed.official@gmail.com', 'Heloo its private ', '23-Feb-2022'),
(4, 'msa.sabbir.ahmed.official@gmail.com', 'samiubat14@gmail.com', 'OKKKKK', '23-Feb-2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` varchar(40) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nick` (`nick`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nick`, `dob`, `email`, `contact`, `password`, `date`, `color`, `status`) VALUES
(12, 'Md Sabbir Ahmed ', 'sam', '12/12/2021', 'samiubat14@gmail.com', '0130449896', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '23-Feb-2022', '#e2c222', '1'),
(13, 'sabbir', 'sam1', '12/12/2021', 'msa.sabbir.ahmed.official@gmail.com', '0148496365', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '23-Feb-2022', '#ff0a6c', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
