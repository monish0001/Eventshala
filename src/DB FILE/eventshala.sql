-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 04:46 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventshala`
--
CREATE DATABASE IF NOT EXISTS `eventshala` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eventshala`;

-- --------------------------------------------------------

--
-- Table structure for table `postevent`
--

CREATE TABLE `postevent` (
  `id` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `eventName` varchar(300) NOT NULL,
  `eventDate` date NOT NULL,
  `eventDec` varchar(2000) NOT NULL,
  `eventPhoto` varchar(100) NOT NULL,
  `eventTitle` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postevent`
--

INSERT INTO `postevent` (`id`, `userName`, `eventName`, `eventDate`, `eventDec`, `eventPhoto`, `eventTitle`, `status`) VALUES
(34, 'kumar_sk_', 'Breeze\'19', '2019-03-01', ' It\'s Breeze Time! Shiv Nadar University\'s 3 day sports - techno - cultural event that\'s amassed more than 25000 people, more than a hundred colleges, and a reach of a whopping 50000 on Social Media is back - Breeze\'19 promises to be bigger and better in every way!', 'fest.jpg', 'Break The Internet', 'Active'),
(35, 'kumar_sk_', 'Vihaan 2018', '2018-12-28', 'Gear up for crazy screaming and jumping to the rocking tunes of music as Vihaan 2018 presents you its biggest event. The best talents across will rock the stage by throwing in their eclectic musical tones enough to create stir around and compete strongly to become the champions of WAR OF BANDS.', 'war-2018111305.jpg', ' War Of Bands', 'Active'),
(36, 'kumar_sk_', 'IBM', '2019-01-16', 'This Workshop provides an Introduction to Cloud Computing and a hands-on session to develop Cloud ready IoT Applications, build Cognitive applications with IBM Watson AI Services and Cloud Security. At the end the participants would come up with an end to end Internet of Things (IoT) solution.', 'download-2018110912.png', 'Hands -on Session', 'Active'),
(37, 'kumar_sk_', 'Shaastra', '2019-01-14', 'Shaastra is the annual technical festival of Indian Institute of Technology, Madras. Boasting a footfall of over 50,000, Shaastra is the first full student-run, not-for-profit technical fest to have been given an ISO 9001 certification in India. Shaastra 2019 marks the 19th edition of the festival. Spanning over 4 days, Shaastra is home to a plethora of events, workshops, professional shows, exhibitions, lectures, and a Summit.', 'WhatsApp Image 2018-11-04 at 1.30.37 AM-2018110603.jpeg', 'Legal Technology', 'Active'),
(38, 'kumar_sk_', 'Manfest-Varchasva', '2018-11-16', '        Event Details: Manfest-Varchasva is the annual Business, Sports and Cultural Festival of IIM Lucknow. The 3-day event is a confluence of Manfest, the Business Conclave and Varchasva, the Sports and Cultural Festival.', 'hallabol-cover New-2018110207.jpg', 'Halla Bol Street Play 2018', 'Active'),
(39, 'kumar_sk_', 'MITECH 18', '2018-11-29', 'Brace yourself, for one of the most awaited and awe-inspiring TechFest in Malabar Institute of Technology, Anjarakandy. It is loaded with a plethora of activities, Technical events, Non-Technical events, Workshops and just everything else to leave you awestruck and make your every moment spent here everlasting & rewarding. It provides an invaluable chance to discover, develop and demonstrate their talent, to excel and provides a podium to stand on and succeed. This student-driven techfest showcases and celebrates the innovation, ingenuity, teamwork and talent of the engineering students of MIT.It provides a platform where people not only have fun, but also learn and grow. Mitech 18 steps in the goal of encompassing all technical domains and serve it for the students of MIT and our guests from other colleges.', 'LOGO-2018102702.png', 'Tech Fest', 'Active'),
(40, 'kumar_sk_', ' TechBrisk 2018', '2018-11-28', 'The annual business fest is one of the biggest in Delhi University and consists of interesting competitions that put participants\' knowledge to test and sharpen their wits. This season, we not only challenge your inner Manager but also your ability to outwit, outplay and outlast. Prepare to take the wheel and steer through to the end as this year will be bigger and better.', 'Capture-2018102401.JPG', 'Business Fest', 'Pending'),
(41, 'kumar_sk_', 'WAVES 19', '2019-01-10', '?In calm water, every ship has a good captain? WAVES is the annual management fiesta organised by School of Management and Entrepreneurship (SME) under Kerala University of Fisheries and Ocean Studies, Kochi. Keeping up with all its previous glory in refined execution, the fest is designed to encapsulate a healthy competition among the brilliant talents of various streams of Institution.', 'FINALCOVERPIC-2018102703.jpg', 'Management Fest', 'Pending'),
(42, 'kumar_sk_', ' ECSTASY 2019', '2019-01-31', 'Ecstasy is the Annual Cultural Fest of Central Institute of Technology Kokrajhar, Assam been orgainsied since 2009. Being one of the largest Cultural fest in the entire Lower Assam region which witnesses various National and International artists performances.', 'images(2)-2018111102.png', 'Cultural Festival', 'Rejected'),
(43, 'kumar_sk_', 'Artifex Chapter 2', '2019-02-20', 'The only kind of event in the history of the college. Helps educate the local school-children about a great career option, vocation, way of life and works the same for the hundreds expected from the sibling colleges under the university. The fest focuses on the evolution of animation and pleasing aesthetics of any art form; traditional or modern. Innocent little children coming up with bright futures ahead of them, showing up with empty minds ready to embrace everything taught about Animation and other Art forms in the fest. The second most beloved thing about the event is the Cosplay event on the final day of the fest.', 'logo_blue-2018111101.png', 'Convention', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(750) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `status`, `name`, `email`, `message`) VALUES
(1, 'Pending', 'Monish', 'mohdmonishksg@gmail.com', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eventId` varchar(100) NOT NULL,
  `parent` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `eventId`, `parent`) VALUES
(5, 'Monish', '9821446257', 'mohdmonishksg@gmail.com', 'monish', '15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `email`, `password`) VALUES
(18, 'monish', 'mohdmonishksg@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(19, 'admin', 'mohdmonishksg@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(20, 'kumar_sk_', 'Shashankkumar488@gmail.com', 'b07a0680b4eb6d53626ded011fcda9c9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `postevent`
--
ALTER TABLE `postevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
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
-- AUTO_INCREMENT for table `postevent`
--
ALTER TABLE `postevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
