-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 06:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `sports` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `country`, `sports`, `contact`, `reg_date`) VALUES
(1, 'Prakash', 'prakash@gmail.com', '$2y$10$IujaKMRRP8oDdH5u3aieYu/iVV8GJGIN19QQSny3Ny0QHOTzLh7rW', 'Algeria', 'Tennis', '98456321', '2024-10-04 16:20:44'),
(2, 'saney', 'saney@gmail.com', '$2y$10$P51ZFMeEnfETiP1t1KUYzO27HO3W5Br/glWHNsp6E/U9NPH7pJknC', 'Afghanistan', 'Basketball', '98563201', '2024-10-24 15:36:08'),
(3, 'anukul', 'anukul@gmail.com', '$2y$10$NOHD56vlmcotYK/GvWraYOfHVOjhFVlI050dJZDsokbFJvttHqnt.', 'Albania', 'Football', '98563201', '2024-11-24 15:03:36'),
(4, 'sandy', 'sandy@gmail.com', '$2y$10$9NIf6EoQAg/wrNMIATB27.VevWEIblGsCObDQHyuTU.K61CQW74Nm', 'Afghanistan', 'Football', '98456321', '2024-11-26 08:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_videos`
--

CREATE TABLE `youtube_videos` (
  `id` int(11) NOT NULL,
  `video_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_videos`
--

INSERT INTO `youtube_videos` (`id`, `video_id`) VALUES
(2, 'UCnbiI2Vj3U'),
(3, '<iframe width=\"823\" '),
(4, '<iframe width=\"823\" '),
(5, '<iframe width=\"853\" '),
(6, '96TIu_FrVSw'),
(7, '9z8sEadieXA'),
(8, 'VMAk1_bcv90'),
(9, '<iframe width=\"853\" '),
(10, 'VMAk1_bcv90'),
(11, 'pe0NLyhtchU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `youtube_videos`
--
ALTER TABLE `youtube_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `youtube_videos`
--
ALTER TABLE `youtube_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
