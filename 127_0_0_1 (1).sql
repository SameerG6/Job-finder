-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 07:40 AM
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
-- Database: `addemps`
--
CREATE DATABASE IF NOT EXISTS `addemps` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `addemps`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`email`, `password`, `name`, `phno`) VALUES
('admin@gmail.com', 'admin123', 'Admin', 987654321),
('admin2@outlook.com', 'admin2222', 'Admin2', 9870654321),
('sammg1364@gmail.com', '123456', 'Samm', 9087654321);

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `empid` varchar(30) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `company` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phno` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`empid`, `empname`, `email`, `company`, `gender`, `dob`, `age`, `address`, `phno`, `password`) VALUES
('A123411', 'Starks', 'stark@mail.com', 'Samsung', 'Male', '2022-12-27', 23, 'Chicago', 2147483647, 'stark123'),
('A2112651', 'Sam', 'gsam9748@gmail.com', 'Meta', 'Male', '2024-03-20', 24, 'Priya Gardens, Simhachalam', 2147483647, 'abcd123');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `uid` varchar(30) NOT NULL,
  `resume_path` varchar(600) NOT NULL,
  `jobid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `company` varchar(50) NOT NULL,
  `job_type` varchar(50) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `jexp` varchar(30) NOT NULL,
  `jfield` varchar(100) NOT NULL,
  `jobid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`company`, `job_type`, `branch`, `salary`, `description`, `jexp`, `jfield`, `jobid`) VALUES
('Tech Innovations, Inc. - Data Scientist', 'Full-time', 'Silicon Valley Branc', '$80,000 - $100,000 per annum', 'We are pleased to inform you about an exciting employment opportunity for the position of Data Analyst at [Company Name]. As a highly regarded and innovative [industry/sector] company, we are actively seeking a skilled professional to join our dynamic team.', '2 years', 'DA', 'J219'),
('SalesForce Solutions Ltd.', 'Sales Representative', 'Sales', '$40,000 - $60,000 per year', 'Are you passionate about sales? Join us as a Sales Representative and play a key role in acquiring new clients and expanding our customer base. Be part of a dynamic sales team driving revenue growth.', '1 year', 'DA', 'J210'),
('Meta', 'Sales Representative', 'Sales', '$40,000 - $60,000 per year', 'hello\r\n', '1 year', 'AI', 'J211'),
('Apple', 'Full-time', 'Competetive program', '10k', 'new', '1 year', 'AI', 'J1203');

-- --------------------------------------------------------

--
-- Table structure for table `udet`
--

CREATE TABLE `udet` (
  `uname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qua` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `age` int(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `exp` varchar(20) NOT NULL,
  `field` varchar(50) NOT NULL,
  `resume_path` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `udet`
--

INSERT INTO `udet` (`uname`, `email`, `qua`, `gender`, `dob`, `age`, `address`, `phno`, `password`, `uid`, `exp`, `field`, `resume_path`) VALUES
('Sus', 'gsam9748@gmail.com', 'PhD', 'Female', '2024-02-27', 21, 'Priya Gardens, Simhachalam', 999999999, '1234abc', 'A148', '2 years', 'AI', ''),
('Vars', 'var@gmail.com', 'B.Tech', 'Male', '2024-02-26', 22, 'Chicago', 9688339257, 'vars123', 'A165', '1 year', 'Cybersecurity', ''),
('Varshith', 'kanchipativarshith.21.cse@anits.edu.in', 'M.Tech', 'Male', '2024-02-28', 21, 'Gajuwaka', 8097654321, 'vars1234', 'A2165', '3 years', 'DA', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD UNIQUE KEY `empid` (`empid`);

--
-- Indexes for table `udet`
--
ALTER TABLE `udet`
  ADD UNIQUE KEY `uid` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
