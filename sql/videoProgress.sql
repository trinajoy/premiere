-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2020 at 07:33 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `premiere`
--

-- --------------------------------------------------------

--
-- Table structure for table `videoProgress`
--

CREATE TABLE `videoProgress` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `finished` tinyint(4) NOT NULL DEFAULT 0,
  `dateModified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videoProgress`
--

INSERT INTO `videoProgress` (`id`, `userName`, `videoId`, `progress`, `finished`, `dateModified`) VALUES
(1, 'tim', 1144, 2, 0, '2020-07-27 17:33:08'),
(2, 'tim', 82, 0, 0, '2020-07-27 09:53:37'),
(3, 'tim', 80, 0, 0, '2020-07-27 11:22:01'),
(4, 'tim', 1261, 6, 1, '2020-07-27 14:39:31'),
(5, 'tim', 1145, 0, 0, '2020-07-27 16:43:05'),
(6, 'tim', 1168, 0, 0, '2020-07-27 16:43:09'),
(7, 'tim', 1169, 0, 0, '2020-07-27 16:43:14'),
(8, 'tim', 1166, 0, 0, '2020-07-27 16:43:18'),
(9, 'tim', 1179, 8, 0, '2020-07-27 16:50:46'),
(10, 'tim', 1177, 3, 0, '2020-07-27 16:50:41'),
(11, 'tim', 1167, 0, 0, '2020-07-27 16:50:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videoProgress`
--
ALTER TABLE `videoProgress`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videoProgress`
--
ALTER TABLE `videoProgress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
