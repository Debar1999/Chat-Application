-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 05:38 PM
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
(102, 96585602, 28293038, 'How are you man?'),
(103, 28293038, 96585602, 'great'),
(104, 28293038, 96585602, ' what about you?'),
(105, 96585602, 28293038, 'Where are you now?'),
(106, 28293038, 96585602, 'I am about reach delhi in a miniute'),
(107, 96585602, 28293038, ' Ohk great'),
(108, 96585602, 28293038, ' Lets meet up then'),
(109, 96585602, 28293038, ' Its a school reunion'),
(110, 28293038, 96585602, ' Finally'),
(111, 28293038, 96585602, ' It is heppening'),
(112, 96585602, 1205214717, 'Hi '),
(113, 96585602, 1205214717, ' Alex'),
(114, 752013562, 96585602, 'hello'),
(115, 28293038, 752013562, 'hello'),
(116, 752013562, 28293038, 'hiiiii love'),
(117, 28293038, 752013562, ' heyoiiiiii sexyyyyyy'),
(118, 752013562, 28293038, 'achis bbu?'),
(119, 752013562, 28293038, ' oiiiiii'),
(120, 752013562, 28293038, ' hhuiiiiiii'),
(121, 28293038, 752013562, 'oiiii hati r bachha'),
(122, 960215759, 272677947, 'Hi'),
(123, 272677947, 960215759, 'Hello'),
(124, 960215759, 272677947, ' Kemon acchen sir'),
(125, 272677947, 960215759, ' Bhalo acchi sir'),
(126, 620621024, 28293038, 'Hi'),
(127, 620621024, 1205214717, 'Hi'),
(128, 1205214717, 620621024, 'What are you doing?'),
(129, 620621024, 1205214717, ' Just Chilling'),
(130, 1205214717, 620621024, ' Any update about your enngagement'),
(131, 620621024, 1205214717, ' Uff'),
(132, 620621024, 1205214717, ' You are so excited i think'),
(133, 620621024, 28293038, 'How are you'),
(134, 620621024, 28293038, 'hey'),
(135, 620621024, 618037971, 'Hi'),
(136, 620621024, 618037971, 'how are you doing'),
(137, 620621024, 618037971, 'r'),
(138, 620621024, 618037971, ' t'),
(139, 28293038, 1205214717, 'hi'),
(140, 28293038, 960215759, 'Hello sir');

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
(0, 96585602, 'Rituparna', 'Chowdhury', 'rituparnachowdhury94@gmail.com', 'ritu@123', '1627333775images.jpg', 'Offline now'),
(0, 618037971, 'Shibaji ', 'Das', 'shibaji.das@gmail.com', 'shibaji@123', '1627463501shibajida.jpg', 'Offline now'),
(0, 752013562, 'Tuktuki', 'Chowdhury', 'rituparna.2@tcs.com', 'sexy@2021', '1627541973shibajida.jpg', 'Offline now'),
(0, 960215759, 'Shohom', 'Roy', 'sohom.roy@gmail.com', 'tyuuuuuu', '1627751893download (1).jpg', 'Offline now'),
(0, 272677947, 'Deb', 'Chowdhury', 'deb.chowdhury@ymail.com', 'debghr99', '16277519251565901739226.jpg', 'Active now'),
(0, 620621024, 'Nalanda ', 'Kar', 'nalanda.kar@gmail.com', 'nalandaKar@1999', '1632344253hug-kiss-images.jpg', 'Offline now');

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
  MODIFY `msg_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
