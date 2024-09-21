-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 11:40 AM
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
-- Database: `office_recreational_fund_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(30) NOT NULL,
  `f_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`d_id`, `d_name`, `f_id`) VALUES
(5001, 'IT', 4001),
(5002, 'Finance', 4002),
(5003, 'Networking', 4003),
(5004, 'HR', 4004);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `designation`, `manager_id`) VALUES
(1001, 'Sumaiya Tasnim', 'Developer', 1007),
(1002, 'Nishat Afla', 'Developer', 1007),
(1003, 'Mahmud Al Ashiq', 'Engineer', 1010),
(1004, 'Chondrima Kumari', 'Developer', 1008),
(1005, 'Kamal Hasib', 'Analyst', 1009),
(1006, 'Rodoshie Reehean', 'Engineer', 1010),
(1007, 'Baria Ifteen', 'Manager', NULL),
(1008, 'Tahsib Alam', 'Manager', NULL),
(1009, 'Lance Florida', 'Manager', NULL),
(1010, 'Jessia Islam', 'Manager', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(30) NOT NULL,
  `event_date` date NOT NULL,
  `budget` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`e_id`, `e_name`, `event_date`, `budget`, `description`, `exp_id`, `manager_id`) VALUES
(6001, 'New Year Party', '2024-01-01', 8000, 'Picnic done in Kolabagan', 3001, 1007),
(6002, 'Birthday Party', '2024-01-10', 3000, 'Surprise to a IT dept member', 3002, 1007),
(6003, 'Dinner Plan', '2024-02-17', 3000, 'Dinner Plan to banani', 3003, 1007),
(6004, 'Cafe outing', '2024-02-24', 1000, 'Cafe foods supplied', 3004, 1009),
(6005, 'Anniversary celebration', '2024-03-24', 8500, 'Anniversary of the company celebrated', 3005, 1010),
(6006, 'Picnic', '2024-01-10', 4000, 'Savar picnic in early morning', 3006, 1008),
(6007, 'Birthday Party', '2024-06-22', 3000, 'BD Surprise to finance manager', 3007, 1008),
(6008, 'Camping to Khulna', '2024-07-16', 11000, 'Entire day tent camping held on Khulna', 3008, 1009),
(6009, 'Sister concern IT Firm visited', '2024-09-24', 4000, 'Visited Mindset It firm with complementary lunch', 3009, 1010),
(6010, 'Yearly vacation', '2024-12-24', 33000, 'Vacation was in Sajek for 5 days', 3010, 1010);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `exp_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `expense_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`exp_id`, `description`, `amount`, `expense_date`) VALUES
(3001, 'Picnic for new years eve', 8000, '2024-01-01'),
(3002, 'Birthday Surprise to Sumaiya', 3000, '2024-01-10'),
(3003, 'Dinner Outing to a Banani restaurant', 6500, '2024-02-17'),
(3004, 'Sudden Lunch plan to nearby cafe', 1000, '2024-02-20'),
(3005, 'Dinner outing for company anniversary', 8500, '2024-03-11'),
(3006, 'Picnic to Savar', 4000, '2024-05-23'),
(3007, 'Birthday Surprise to Lance Florida', 3000, '2024-06-22'),
(3008, 'Tent camping tour to Khulna', 11000, '2024-07-16'),
(3009, 'Tour to Mindset IT Industry for visit and lunch', 4000, '2024-09-11'),
(3010, 'Yearly 5 day long vacation tour', 33000, '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `fund`
--

CREATE TABLE `fund` (
  `f_id` int(11) NOT NULL,
  `a_fund` int(11) NOT NULL,
  `a_date` date NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund`
--

INSERT INTO `fund` (`f_id`, `a_fund`, `a_date`, `manager_id`) VALUES
(4001, 15000, '2024-01-01', 1007),
(4002, 10000, '2024-01-03', 1008),
(4003, 8000, '2024-01-04', 1009),
(4004, 9000, '2024-01-06', 1010);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`emp_id`, `emp_name`, `designation`, `department`) VALUES
(1007, 'Baria Ifteen', 'Manager', 'IT'),
(1008, 'Tahsib Alam', 'Manager', 'Networking'),
(1009, 'Lance Florida', 'Manager', 'Finance'),
(1010, 'Jessia Islam', 'Manager', 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

CREATE TABLE `proposal` (
  `p_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `p_date` date NOT NULL,
  `p_budget` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`p_id`, `description`, `p_date`, `p_budget`, `status`, `manager_id`, `d_id`) VALUES
(8001, 'New Year Party', '2023-12-05', 8000, 'completed', 1007, 5001),
(8002, 'Birthday surprise to employee', '2024-01-02', 3000, 'completed', 1007, 5001),
(8003, 'Dinner outing', '2024-01-31', 3000, 'completed', 1009, 5003),
(8004, 'Cafe outing', '2024-02-20', 1000, 'completed', 1010, 5004),
(8005, 'Company Anniversary', '2024-03-01', 8500, 'completed', 1008, 5002),
(8006, 'Picnic to savar', '2024-05-02', 4000, 'completed', 1008, 5002),
(8007, 'Birthday surprise to manager', '2024-06-19', 3000, 'completed', 1009, 5003),
(8008, 'Camping to Khulna', '2024-06-02', 11000, 'under planning', 1010, 5004),
(8009, 'IT firm visit', '2024-09-01', 4000, 'under planning', 1010, 5004),
(8010, 'Yearly vacation', '2024-12-01', 33000, 'under planning', 1007, 5001);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `r_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `d_name` varchar(30) NOT NULL,
  `e_name` varchar(30) NOT NULL,
  `d_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`r_id`, `amount`, `r_date`, `d_name`, `e_name`, `d_id`) VALUES
(9001, 8000, '2023-01-01', 'IT', 'New year celebration', 5001),
(9002, 3000, '2023-01-10', 'IT', 'BD celebration', 5001),
(9003, 3000, '2023-01-01', 'Networking', 'Dinner plan', 5003),
(9004, 1000, '2023-02-24', 'IT', 'Cafe outing', 5004),
(9005, 8500, '2023-01-01', 'Finance', 'Anniversary celebration', 5002),
(9006, 4000, '2023-05-23', 'Finance', 'Savar Picnic', 5002),
(9007, 3000, '2023-06-22', 'Networking', 'BD celebration', 5003),
(9008, 11000, '2023-07-16', 'HR', 'Khulna camping', 5004),
(9009, 4000, '2023-09-24', 'HR', 'Visit company', 5004);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `sp_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `sp_name` varchar(30) NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sp_id`, `description`, `sp_name`, `manager_id`) VALUES
(7001, 'New Year Party for the firm', 'Steven Gadgets', 1007),
(7002, 'Birthday Party thrown for an employee from IT dept', 'Pran Ltd', 1007),
(7003, 'Dinner to a banani restaurant named bao', 'FIC Insurance', 1009),
(7004, 'Cafe outing to cha and chill', 'Pran Ltd', 1010),
(7005, 'Company anniversary expenses for gifts and dinner', 'Dolby Company', 1008),
(7006, 'Savar outing picnic', 'Dolby Company', 1008),
(7007, 'Birthday Party thrown for a manager', 'Steven Gadgets', 1009),
(7008, 'Camping on Khulna and expenses on tickets, foods, tents and supplies', 'Micro Supplies Ltd', 1010),
(7009, 'Sister Concern company visit', 'FIC Insurance', 1010),
(7010, '5 day vacation to sajek and costs of transportation, hotels, recreation', 'Dolby Company', 1007);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `fk_fund` (`f_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `fk_manager` (`manager_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `fk_exp` (`exp_id`),
  ADD KEY `fk_emp` (`manager_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `fund`
--
ALTER TABLE `fund`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `fk_employee` (`manager_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `fk_emplo` (`manager_id`),
  ADD KEY `fk_depar` (`d_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `fk_depart` (`d_id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `fk_e` (`manager_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_fund` FOREIGN KEY (`f_id`) REFERENCES `fund` (`f_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_manager` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`emp_id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `fk_emp` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `fk_exp` FOREIGN KEY (`exp_id`) REFERENCES `expense` (`exp_id`);

--
-- Constraints for table `fund`
--
ALTER TABLE `fund`
  ADD CONSTRAINT `fk_employee` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `fk_depar` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`),
  ADD CONSTRAINT `fk_emplo` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `fk_depart` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`);

--
-- Constraints for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD CONSTRAINT `fk_e` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
