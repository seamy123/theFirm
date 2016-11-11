-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2016 at 10:41 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thefirm`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE IF NOT EXISTS `alerts` (
  `user_id` int(5) NOT NULL,
  `category` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`user_id`, `category`) VALUES
(1, 4),
(1, 5),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` int(3) NOT NULL,
  `code` varchar(6) NOT NULL,
  `detail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `code`, `detail`) VALUES
(1, 'GM', 'General Manager'),
(2, 'AM', 'Assistant Manager'),
(3, 'SM', 'Sales/Event Manager'),
(4, 'CM', 'Catering Manager'),
(5, 'HR', 'HR Manager'),
(6, 'RM', 'Restaurant Manager'),
(7, 'BM', 'Bar Manger'),
(8, 'ACM', 'Accommodation Manager'),
(9, 'FO', 'Front Office Manager'),
(10, 'AC', 'Accounts'),
(11, 'HC', 'Head Chef'),
(12, 'C', 'Chef'),
(13, 'SC', 'SousChef'),
(14, 'PC', 'Pastry Chef'),
(15, 'CDP', 'Chef de Partie'),
(16, 'O', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE IF NOT EXISTS `saved_jobs` (
  `user_id` int(5) NOT NULL,
  `job_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` tinyint(1) NOT NULL,
  `detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `detail`) VALUES
(1, 'Actively seeking new opportunities'),
(2, 'Not actively seeking but willing to look at new opportunities'),
(3, 'Do not wish to be contacted at this time');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` int(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `status`, `created_on`, `category`) VALUES
(1, 'Tom', 'Byrne', '0863853399', 'tom@gmail.com', '4444', 1, '2016-11-08 21:30:15', 4),
(5, 'Susan', 'Smith', '085666666', 'julie@gmail.com', '33333', 1, '2016-11-08 21:30:24', 15),
(6, 'Kate', 'Lynch', '085447777', 'kate@gmail.com', '6363', 1, '2016-11-08 21:30:31', 1),
(7, 'Stephen', 'Dunne', '085447777', 'stephen@gmail.com', '665544', 1, '2016-11-08 21:30:38', 6),
(8, 'Ted', 'Smith', '0857744666', 'ted@gmail.com', '7777', 1, '2016-11-08 21:30:46', 1),
(9, 'Fred', 'B', '087444444', 'fred@gmail.com', '9988', 1, '2016-11-08 21:30:53', 2),
(10, 'Grace', 'Byrne', '087444444', 'jane@gmail.com', '9696', 1, '2016-11-08 21:30:59', 9),
(12, 'Jade', 'Summers', '087392222', 'jade@gmail.com', '6666', 2, '2016-11-08 21:31:05', 12),
(14, 'Janet', '', '', '', '', 1, '2016-11-08 21:31:10', 2),
(15, 'Freddie', 'Smith', '087445555', 'freddie@gmail.com', '8888', 3, '2016-11-08 21:31:23', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD KEY `user_id` (`user_id`), ADD KEY `category` (`category`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD KEY `user_id` (`user_id`), ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`), ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alerts`
--
ALTER TABLE `alerts`
ADD CONSTRAINT `alerts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
ADD CONSTRAINT `alerts_ibfk_3` FOREIGN KEY (`category`) REFERENCES `job_categories` (`id`);

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
ADD CONSTRAINT `saved_jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`),
ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`category`) REFERENCES `job_categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
