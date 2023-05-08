-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 09:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `adminname` varchar(20) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`first`, `last`, `id`, `adminname`, `phone`, `email`, `password`) VALUES
('Shakil', 'khan', 68, 'admin01', 0, 'shakilkhanfv@gmail.com', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `authors` varchar(50) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) VALUES
(1, 'Database management system', 'David smith', '3rd', 'Available', 5, 'CSE'),
(2, 'Electronic Engineering', 'Adam Michel', '2th', 'Available', 6, 'EEE'),
(3, 'Himu', 'Humayon Ahamed', '1st', 'Available', 9, 'Bangla'),
(32, ' The Self-Taught Computer Scientist', 'Cory Althoff', '2021', 'Available', 3, 'CSE/SE'),
(33, ' A Programmer’s Guide to Computer Science', 'Dr. William', 'vol 1', 'Available', 8, 'CSE/SE'),
(49, 'Learn JavaScript', 'Thomas J. Stephenson', '4rd', 'Available', 8, 'CSE/SE'),
(53, 'Pro Coder', 'Cory Althoff', '2021', 'Available', 3, 'CSE/SE'),
(67, 'Cracking Coding Interview', 'Gayle Laakmann McDowell', '4th', 'Available', 3, 'CSE'),
(69, 'Software Development II', 'Stephenson', '1st', 'Available', 8, 'CSE/SE'),
(75, 'Software Development I', 'Stephenson', '1st', 'Available', 2, 'CSE/SE'),
(101, 'Hemlet', 'William Shakespeare', '1st', 'Available', 6, 'English '),
(137, 'Modern Physics', ' Alastair Rae', '2010', 'Available', 3, 'CSE/SE'),
(177, 'Quantam Physics', ' Alastair Rae', '2021', 'Available', 3, 'CSE/SE'),
(212, 'Theory of Coding', 'Dr.Martin', '1st', 'Available', 2, 'CSE/EEE'),
(222, 'Theory of Everything', 'Albert Eainstain', '1st', 'Available', 2, 'CSE/EEE'),
(226, 'English for Begainners', 'Sarif hossain ', 'vol 1', 'Available', 5, 'English'),
(246, 'Advance Spoken English', 'Sarif hossain ', '1st', 'Available', 5, 'English'),
(369, 'Summation series', 'Hasan mahmud', '1st', 'available', 7, 'EEE/CSE');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(23, 'shakil067', 'Happy with your services .That will be great if   some science fictions books and magazines are also stored'),
(93, 'admin01', 'Thanks , shakil067 for your valuable comment');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('hasan', 3, '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '2019-04-22', '2019-05-16'),
('Shakil', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-03-20', '2019-04-20'),
('shomrat', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-01-30', '2019-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `id`, `username`, `phone`, `email`, `password`) VALUES
('Shakil', 'Khan', 67, 'shakil067', 0, 'shakilkhanfv@gmail.com', 'pass'),
('Addito', 'Shomrat', 67, 'somrat091', 1745223183, 'shakilkhanfv@gmail.com', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD UNIQUE KEY `bid_3` (`bid`),
  ADD KEY `bid` (`bid`),
  ADD KEY `bid_2` (`bid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
