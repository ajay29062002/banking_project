-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 02:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_of_madurai`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Ajay', 'Sabarinathan', 200, '2021-08-10 18:58:27'),
(2, 'Sabarinathan', 'Ajay', 200, '2021-08-10 19:00:31'),
(3, 'Ajay', 'kabilan', 5000, '2021-08-10 19:01:32'),
(4, 'Sabari', 'kabilan', 5000, '2021-08-10 19:06:15'),
(5, 'Rohit', 'Ajay', 500, '2021-08-10 19:28:24'),
(6, 'Rohit', 'Ajay', 500, '2021-08-10 19:30:31'),
(7, 'Rohit', 'Ajay', 200, '2021-08-10 19:31:22'),
(8, 'madhu', 'santhosh', 520, '2021-08-10 07:39:58'),
(9, 'Ajith', 'Sabari', 500, '2021-08-10 09:37:08'),
(10, 'Sabari', 'santhosh', 100, '2021-08-10 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Ajay', 'senthilajay725@gmail.com', 46600),
(2654, 'sabarinathan', 'sabari.rishi.33@gmail.com', 30620),
(3624, 'Kabilan', 'kabilini@gmail@gmail.com', 40000),
(4542, 'Santhosh', 'santhoshsudhan@gmail.com', 48800),
(5345, 'Praveen', 'praveenmv@gmail.com', 35000),
(5465, 'preethi', 'preethiiabii@gmail.com', 49500),
(6554, 'Jeya sree', 'jeyasreevenkat@gmail.com', 40000),
(7875, 'madhu', 'madhuvarshni@gmail.com', 49480),
(8877, 'Rohit', 'darun123@gmail.com', 40000),
(9245, 'Sundar', 'sundaarvijay@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;