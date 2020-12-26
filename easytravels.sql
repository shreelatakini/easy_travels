-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 08:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easytravels`
--

-- --------------------------------------------------------

--
-- Table structure for table `tripdetails`
--

CREATE TABLE `tripdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `places` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `email1` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tripdetails`
--

INSERT INTO `tripdetails` (`id`, `name`, `places`, `date`, `email1`, `email2`, `message`) VALUES
(1, 'rishika', 'Cubbon Park', '2020-12-30', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'bottle'),
(2, 'rishika', 'Cubbon Park', '2020-12-30', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'bottle'),
(3, 'rishika', 'Cubbon Park', '2020-12-30', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'bottle'),
(4, 'rishiks', 'Cubbon Park', '2020-12-16', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'bottle'),
(5, 'rishiks', 'Cubbon Park', '2020-12-16', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'bottle'),
(6, 'rishiks', 'Cubbon Park', '2020-12-16', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'bottle'),
(7, 'shreelata', 'Bangalore Palace', '2020-12-30', 'shillu.kini@ymail.com', 'isaana2319@gmail.com', 'bottle\r\nmask \r\n'),
(8, 'fathima', 'Cubbon Park', '2020-12-09', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'sunscreen'),
(9, 'fathima', 'Cubbon Park', '2020-12-09', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'sunscreen'),
(10, 'fathima', 'Cubbon Park', '2020-12-09', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'sunscreen'),
(11, 'shree', 'Nandi Hills', '2020-12-30', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'iis fukfjzsfkj'),
(12, 'shree', 'Nandi Hills', '2020-12-30', 'rishikakalappa25@gmail.com', 'isaana2319@gmail.com', 'iis fukfjzsfkj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tripdetails`
--
ALTER TABLE `tripdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tripdetails`
--
ALTER TABLE `tripdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
