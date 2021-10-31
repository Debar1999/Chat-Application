-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 12:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(13) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(88, 28293038, 1205214717, 'Hi'),
(89, 28293038, 1205214717, ' What are you doing'),
(90, 1205214717, 28293038, 'doing great'),
(91, 1205214717, 28293038, ' what about you'),
(92, 28293038, 1205214717, 'Nothing much'),
(93, 28293038, 1205214717, ' having a bad day'),
(94, 1205214717, 28293038, ' why'),
(95, 1205214717, 28293038, ' what happend?'),
(96, 1205214717, 28293038, 'Stay Calm'),
(97, 28293038, 1205214717, 'Trying to be'),
(98, 28293038, 1205214717, ' But I lost my path'),
(99, 1205214717, 28293038, 'Dont loose hope buddy'),
(100, 28293038, 1205214717, 'Thanks brother for you advice'),
(101, 96585602, 28293038, 'Hi deb'),
(102, 96585602, 28293038, 'How are you man?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(0, 28293038, 'Debarghya ', 'Chowdhury', '1831017@kiit.ac.in', 'debghr@99', '1627302246unnamed.jpg', 'Offline now'),
(0, 1205214717, 'Alex', 'Darwin', 'alex.darwin@ymail.com', 'alex123', '1627302447download.jpg', 'Offline now'),
(0, 96585602, 'Rituparna', 'Chowdhury', 'rituparnachowdhury94@gmail.com', 'ritu@123', '1627333775images.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
