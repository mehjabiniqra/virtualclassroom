-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 06:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtualclassroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `courseCode`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(175, 'copy that!', 'ca101_a', 'iqra_akter', 'ananna_chowdhury', '2023-06-16 20:23:50', 'no', 651),
(179, 'updated*', '', 'ananna_chowdhury', '', '2021-06-28 23:11:38', 'no', 655),
(180, 'hi', 'ca2069_a', 'ananna_chowdhury', 'ananna_chowdhury', '2023-01-29 23:05:44', 'no', 660);

-- --------------------------------------------------------

--
-- Table structure for table `createclass`
--

CREATE TABLE `createclass` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `className` varchar(50) NOT NULL,
  `section` varchar(25) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `num_posts` int(11) NOT NULL,
  `student_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createclass`
--

INSERT INTO `createclass` (`id`, `username`, `className`, `section`, `subject`, `courseCode`, `date`, `num_posts`, `student_array`) VALUES
(104, 'ananna_chowdhury', 'CA101', 'A', 'Databases', 'ca101_a', '2021-06-20', 0, 'iqra_akter'),
(105, 'ananna_chowdhury', 'CA10220', 'B', 'ApplicationDesign', 'ca10220_b', '2021-06-28', 0, 'iqraa_akter'),
(106, 'ananna_chowdhury', 'CA2069', 'A', 'SoftwareEngineering', 'ca2069_a', '2021-06-28', 0, ''),
(107, 'ananna_chowdhury', 'CA6978', 'B', 'CyberSecurity', 'ca6978_b', '2021-06-28', 0, ''),
(108, 'ananna_chowdhury', 'CS303', 'H', 'webtechnology', 'cs303_h', '2023-01-29', 0, 'tanvir_alam ,'),
(109, 'iqra_akter', 'CSE453', 'A', 'Computerfundamental', 'cse453_a', '2023-03-06', 0, ''),
(110, 'iqraa_akter', 'MATH415', 'C', 'LinearAlgebra', 'math415_c', '2023-03-06', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `joinclass`
--

CREATE TABLE `joinclass` (
  `user_id_fk` int(11) NOT NULL,
  `class_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joinclass`
--

INSERT INTO `joinclass` (`user_id_fk`, `class_id_fk`) VALUES
(64, 0),
(65, 0),
(65, 104),
(65, 105),
(65, 106),
(66, 104),
(66, 105),
(66, 106),
(67, 104),
(67, 107),
(68, 104),
(68, 106),
(69, 104),
(69, 105),
(69, 106),
(72, 0),
(72, 108);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opended` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opended`, `viewed`) VALUES
(42, 'ananna_chowdhury', 'iqra_akter', 'Iqra Akter commented on your post', 'post.php?id=651', '2021-06-21 22:23:50', 'no', 'no'),
(53, 'ananna_chowdhury', 'tanvir_alam', 'Tanvir Alam posted on your class room', 'post.php?id=', '2023-03-20 06:23:57', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `edited` varchar(3) NOT NULL,
  `files` varchar(500) DEFAULT NULL,
  `fileDestination` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `courseCode`, `user_to`, `date_added`, `user_closed`, `edited`, `files`, `fileDestination`) VALUES
(651, 'this is to announce you that your online classes will start from 22nd June. please be on time :)', 'ananna_chowdhury', 'ca101_a', 'none', '2021-06-20 18:18:50', 'no', 'no', 'none', 'none'),
(652, 'Sample Questions', 'ananna_chowdhury', 'ca101_a', 'none', '2021-06-25 21:03:58', 'no', 'no', ' 60d9e4ded24d12.08285662.pdf', 'uploads/sample. 60d9e4ded24d12.08285662.pdf'),
(653, 'this is a demo post for the students!', 'ananna_chowdhury', 'ca101_a', 'none', '2021-06-28 23:04:33', 'no', 'no', 'none', 'none'),
(654, 'Coursework 01, Due: August 03 Please download the attachment below!', 'ananna_chowdhury', 'ca101_a', 'none', '2021-06-28 23:05:34', 'no', 'no', ' 60da015e796f09.87969671.pdf', 'uploads/samplecw. 60da015e796f09.87969671.pdf'),
(660, '\r\nWarning:  Array to string conversion in C:\\xampp\\htdocs\\Virtual Classroom\\classRoom.php on line 148\r\nArray ', 'ananna_chowdhury', 'ca2069_a', 'none', '2023-01-29 23:05:27', 'no', 'Yes', 'none', 'none'),
(661, '', 'ananna_chowdhury', 'cs303_tyg', 'none', '2023-03-06 11:50:52', 'no', 'no', ' 64057f3c967965.48707443.pdf', 'uploads/web technology. 64057f3c967965.48707443.pdf'),
(662, 'Hiiii', 'iqra_akter', 'cse453_a', 'none', '2023-03-20 05:53:59', 'no', 'no', 'none', 'none'),
(663, '', 'iqra_akter', 'cse453_a', 'none', '2023-03-20 05:54:24', 'no', 'no', ' 6417e700507057.09761058.pdf', 'uploads/Identifier Is Valid or Not. 6417e700507057.09761058.pdf'),
(664, '', 'tanvir_alam', 'cs303_h', 'ananna_chowdhury', '2023-03-20 06:23:57', 'no', 'no', ' 6417eded5993c9.30903734.pdf', 'uploads/Identifier Is Valid or Not. 6417e700507057.09761058. 6417eded5993c9.30903734.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profilePic` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `phoneNumber` int(50) NOT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `profilePic`, `signup_date`, `user_closed`, `num_posts`, `phoneNumber`, `bio`) VALUES
(64, 'Ananna', 'Chowdhury', 'ananna_chowdhury', 'ananna@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'assets/images/profilePics/liam_moore1de7c6df4947a3d7ce3f7fe21aed86ecn.jpeg', '2021-06-20', 'no', 0, 2147483647, 'I am ready to learn. Thatâ€™s why I became a teacher.'),
(70, 'Iqra', 'Akter', 'iqra_akter', 'iqra@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'assets/images/profilePics/deafultPP.png', '2023-03-06', 'no', 0, 7756756, ''),
(71, 'Iqraa', 'Akter', 'iqraa_akter', 'iiqra@gmail.com', '99c5e07b4d5de9d18c350cdf64c5aa3d', 'assets/images/profilePics/deafultPP.png', '2023-03-06', 'no', 0, 0, ''),
(72, 'Tanvir', 'Alam', 'tanvir_alam', 'tanvir@gmail.com', '202cb962ac59075b964b07152d234b70', 'assets/images/profilePics/deafultPP.png', '2023-03-20', 'no', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createclass`
--
ALTER TABLE `createclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinclass`
--
ALTER TABLE `joinclass`
  ADD PRIMARY KEY (`user_id_fk`,`class_id_fk`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `class_id_fk` (`class_id_fk`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `createclass`
--
ALTER TABLE `createclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
