-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 11:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicantprograms`
--

CREATE TABLE `applicantprograms` (
  `Applicant_ID` int(11) NOT NULL,
  `Program_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicantprograms`
--

INSERT INTO `applicantprograms` (`Applicant_ID`, `Program_ID`) VALUES
(27, 0),
(27, 1),
(28, 0),
(29, 2),
(30, 2),
(31, 2),
(32, 3),
(33, 2),
(34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `Full_Name` varchar(45) DEFAULT NULL,
  `Mobile_nb` int(11) DEFAULT NULL,
  `Major` varchar(45) DEFAULT NULL,
  `University` varchar(45) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `pwd` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`Full_Name`, `Mobile_nb`, `Major`, `University`, `Email`, `pwd`, `ID`) VALUES
('Rawan Abbas', 3021385, 'Computer Science', 'Beirut Arab Universty', 'rawanabbas@gmail.com', 'rawan123', 27),
('Mohammad Ismail', 79787056, 'Computer Science', 'Lebanese University', 'mhmd.ismail@gmail.com', 'mhmd1234', 28),
('Sara Akoum', 3021386, 'Computer Engineering', 'Middle East University', 'saraakoum@gmail.com', 'sara12345', 29),
('Maryam nourdeen', 3021383, 'Computer Science', 'Antonine University', 'marnour@gmail.com', 'mar12345', 30),
('Ali madi', 3021381, 'Computer Science', 'Lebanese University', 'aliamadi@gmail.com', 'ali123456', 31),
('Yousif Kadi', 71020345, 'Computer Science', 'Beirut Arab Universty', 'yousifkadi@gmail.com', 'yousif12345', 32),
('Amer Itani', 3021345, 'Computer Science', 'Lebanese University', 'ameritani@gnail.com', 'amer12345', 33),
('Ali Akoum', 81070142, 'Computer Science', 'Lebanese American University', 'ali.akoum@lau.edu', 'kvpdkswodw[dwdlwdlw[pdl', 34);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `Certificate_ID` int(11) NOT NULL,
  `Certificate_File_Path` varchar(550) NOT NULL,
  `Applicants_Applicant_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`Certificate_ID`, `Certificate_File_Path`, `Applicants_Applicant_ID`) VALUES
(4, 'https://www.canva.com/design/DAFuvNnRav0/VY_ziOv9Ob_J6fn713_RtQ/view?utm_content=DAFuvNnRav0&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink', 27),
(5, 'images/home-bg.jpg', 28),
(6, 'images/home-bg.jpg', 29),
(7, 'images/home-bg.jpg', 30),
(8, 'images/home-bg.jpg', 31),
(9, 'images/home-bg.jpg', 32),
(10, 'images/home-bg.jpg', 33),
(11, 'images/home-bg.jpg', 34);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(70) NOT NULL,
  `Full_Name` varchar(50) DEFAULT NULL,
  `program_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`ID`, `email`, `pwd`, `Full_Name`, `program_ID`) VALUES
(1, 'nancyakoum@ids.edu', '76793469', 'Nancy Akoum', NULL),
(4, 'lana.ismail@ids.edu', 'lana12345', 'Lana Ismail', 0),
(5, 'nourroumani@ids.edu', 'nour@123', 'Nour roumani', 2),
(6, 'ramikhatib@ids.edu', 'rami@1234', 'Rami Alkhatib', 3),
(7, 'rimfawaz@ids.edu', 'rim123678', 'Rim Fawaz', 2),
(8, 'raedmhmd@ids.edu', 'raedmhmd12345', 'Raed Mhmd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lookups`
--

CREATE TABLE `lookups` (
  `ID` int(11) NOT NULL,
  `lookupname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lookups`
--

INSERT INTO `lookups` (`ID`, `lookupname`) VALUES
(0, 'major'),
(1, 'universities');

-- --------------------------------------------------------

--
-- Table structure for table `lookup_items`
--

CREATE TABLE `lookup_items` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Lookups_Lookup_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lookup_items`
--

INSERT INTO `lookup_items` (`Item_ID`, `Item_Name`, `Lookups_Lookup_ID`) VALUES
(1, 'Lebanese American University', 1),
(2, 'American University of Beirut', 1),
(3, 'Middle East University', 1),
(4, 'University of balamand', 1),
(6, 'Lebanese University', 1),
(7, 'Beirut Arab Universty', 1),
(8, 'Antonine University', 1),
(9, 'Computer Science', 0),
(10, 'Computer Engineering', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `Page_ID` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Body` varchar(990) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`Page_ID`, `Title`, `Body`) VALUES
(0, 'Indepth learning', 'Our Web Development Mastery Program is a comprehensive and immersive training program designed to prepare individuals for successful careers in web development. This program spans several months and covers both front-end and back-end technologies, programming languages, and industry best practice.'),
(1, 'HandsonExperience', 'Interns working on real projects is a valuable aspect of any internship program, especially in fields like web development. This hands-on experience provides interns.'),
(2, 'mentorship', 'Access to experienced mentors who provide guidance, feedback, and support throughout the internship');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `Program_ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `MaxCapacity` int(11) DEFAULT NULL,
  `CurrentCapacity` int(11) DEFAULT NULL,
  `Google_Classroom_Code` varchar(50) DEFAULT NULL,
  `Instructors_InstructorID` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`Program_ID`, `Title`, `Description`, `StartDate`, `EndDate`, `MaxCapacity`, `CurrentCapacity`, `Google_Classroom_Code`, `Instructors_InstructorID`) VALUES
(0, 'Node.js Fundamentals', 'Learn server-side JavaScript with Node.js', '2024-01-01', '2023-12-21', 11, 2, 'NODE101', 5),
(1, 'Python Web Programming', 'Explore web development with Python and Flask', '2023-09-13', '2023-09-22', 11, 1, 'Py101', 4),
(2, 'React Web Development', 'Learn React for building modern web applications', '2023-10-01', '2023-12-15', 50, 4, 'REACT101', 5),
(3, 'ASP.NET Core Programming', 'Master ASP.NET Core for web development', '2023-11-15', '2024-02-15', 30, 1, 'DOTNET202', 6),
(4, 'PHP Web Development', 'Explore PHP for server-side web development', '2023-09-15', '2023-12-31', 40, 0, 'PHP123', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicantprograms`
--
ALTER TABLE `applicantprograms`
  ADD PRIMARY KEY (`Applicant_ID`,`Program_ID`),
  ADD KEY `Program_ID` (`Program_ID`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`Certificate_ID`),
  ADD KEY `Applicants_Applicant_ID` (`Applicants_Applicant_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lookups`
--
ALTER TABLE `lookups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lookup_items`
--
ALTER TABLE `lookup_items`
  ADD PRIMARY KEY (`Item_ID`),
  ADD KEY `Lookups_Lookup_ID` (`Lookups_Lookup_ID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`Page_ID`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`Program_ID`),
  ADD KEY `Instructors_InstructorID` (`Instructors_InstructorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `Certificate_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lookups`
--
ALTER TABLE `lookups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lookup_items`
--
ALTER TABLE `lookup_items`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicantprograms`
--
ALTER TABLE `applicantprograms`
  ADD CONSTRAINT `applicantprograms_ibfk_1` FOREIGN KEY (`Applicant_ID`) REFERENCES `applicants` (`ID`),
  ADD CONSTRAINT `applicantprograms_ibfk_2` FOREIGN KEY (`Program_ID`) REFERENCES `programs` (`Program_ID`);

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`Applicants_Applicant_ID`) REFERENCES `applicants` (`ID`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `fk_program_ID` FOREIGN KEY (`program_ID`) REFERENCES `programs` (`Program_ID`);

--
-- Constraints for table `lookup_items`
--
ALTER TABLE `lookup_items`
  ADD CONSTRAINT `lookup_items_ibfk_1` FOREIGN KEY (`Lookups_Lookup_ID`) REFERENCES `lookups` (`ID`);

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `Instructors_InstructorID` FOREIGN KEY (`Instructors_InstructorID`) REFERENCES `instructor` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
