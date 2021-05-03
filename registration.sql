-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 06:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) NOT NULL,
  `userid` int(25) DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `time_log` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `userid`, `username`, `activity`, `time_log`) VALUES
(161, NULL, 'HappyH3ro', 'Created an account', '18:20:20.000000'),
(162, NULL, 'HappyH3ro', 'Changed Password', '18:20:42.000000'),
(163, NULL, 'HappyH3ro', 'Logged in', '18:20:51.000000'),
(164, NULL, 'HappyH3ro', 'Logged out', '18:21:00.000000'),
(165, NULL, 'HappyH3ro', 'Logged in', '18:21:17.000000'),
(166, NULL, 'HappyH3ro', 'Logged out', '18:25:54.000000'),
(167, NULL, 'ADMIN', 'Logged in', '18:33:30.000000'),
(168, NULL, 'ADMIN', 'Logged out', '18:33:49.000000'),
(169, NULL, 'ADMIN', 'Logged in', '18:34:57.000000'),
(170, NULL, 'ADMIN', 'Logged in', '18:35:14.000000'),
(171, NULL, 'ADMIN', 'Logged out', '18:36:11.000000'),
(172, NULL, 'ADMIN', 'Logged in', '18:36:17.000000'),
(173, NULL, 'ADMIN', 'Logged out', '18:36:30.000000'),
(174, NULL, 'HappyH3ro', 'Changed Password', '18:40:27.000000'),
(175, NULL, 'HappyH3ro', 'Logged in', '18:40:34.000000'),
(176, NULL, 'ADMIN', 'Logged in', '18:42:26.000000'),
(177, NULL, 'ADMIN', 'Logged out', '18:42:41.000000');

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `ID` int(55) NOT NULL,
  `Code` int(55) NOT NULL,
  `Created` time(6) NOT NULL,
  `Expired` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`ID`, `Code`, `Created`, `Expired`) VALUES
(135, 397611, '18:20:51.000000', '18:25:51.000000'),
(136, 397611, '18:20:55.000000', '18:25:55.000000'),
(137, 397611, '18:21:17.000000', '18:26:17.000000'),
(138, 397611, '18:21:20.000000', '18:26:20.000000'),
(139, 643959, '18:33:31.000000', '18:38:31.000000'),
(140, 643959, '18:33:39.000000', '18:38:39.000000'),
(141, 643959, '18:34:57.000000', '18:39:57.000000'),
(142, 774654, '18:35:04.000000', '18:40:04.000000'),
(143, 774654, '18:35:14.000000', '18:40:14.000000'),
(144, 774654, '18:35:21.000000', '18:40:21.000000'),
(145, 774654, '18:36:17.000000', '18:41:17.000000'),
(146, 774654, '18:36:23.000000', '18:41:23.000000'),
(147, 704817, '18:40:34.000000', '18:45:34.000000'),
(148, 704817, '18:40:38.000000', '18:45:38.000000'),
(149, 704817, '18:42:26.000000', '18:47:26.000000'),
(150, 704817, '18:42:30.000000', '18:47:30.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(20, 'HappyH3ro', 'jsuperales560@gmail.com', 'HappyH3ro!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `ID` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
