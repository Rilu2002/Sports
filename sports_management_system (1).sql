-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 09:02 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_number`
--

CREATE TABLE `auto_number` (
  `auto_id` int(11) NOT NULL,
  `auto_start` int(11) NOT NULL,
  `auto_end` int(11) NOT NULL,
  `auto_increment` int(11) NOT NULL,
  `auto_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_number`
--

INSERT INTO `auto_number` (`auto_id`, `auto_start`, `auto_end`, `auto_increment`, `auto_desc`) VALUES
(1, 100, 74, 1, 'MATCH'),
(2, 100, 61, 1, 'PLYR'),
(3, 200, 43, 1, 'SY'),
(4, 1000, 9, 1, 'SCHL'),
(5, 100, 4, 1, 'SPORT'),
(6, 100, 3, 1, 'EQUIP'),
(7, 200, 5, 1, 'CCH'),
(8, 100, 6, 1, 'TEAMA'),
(9, 100, 0, 1, 'TEAMB'),
(10, 200, 10, 1, 'FCLTR'),
(11, 100, 4, 1, 'REF'),
(12, 100, 1, 1, 'VEN'),
(13, 100, 2, 1, 'TYPE'),
(14, 100, 2, 1, 'AWD'),
(15, 100, 1, 1, 'STYPE'),
(16, 100, 10, 1, 'MODE'),
(17, 100, 10, 1, 'TOUR'),
(18, 100, 79, 1, 'RESULT'),
(19, 100, 0, 1, 'TOUR-TYPE');

-- --------------------------------------------------------

--
-- Table structure for table `facilitator`
--

CREATE TABLE `facilitator` (
  `facilitator_id` int(11) NOT NULL,
  `facilitator_name` varchar(30) NOT NULL,
  `facilitator_gender` varchar(30) NOT NULL,
  `facilitator_address` text NOT NULL,
  `facilitator_contact` varchar(80) DEFAULT NULL,
  `facilitator_status` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilitator`
--

INSERT INTO `facilitator` (`facilitator_id`, `facilitator_name`, `facilitator_gender`, `facilitator_address`, `facilitator_contact`, `facilitator_status`, `facilitator_code`) VALUES
(1, 'niko curaza', 'Male', 'Himamylan City', '+639128993433', 'Available', 'basketequipfac'),
(2, 'Adrian Mercurio', 'Male', 'Brgy. Suay Himamaylan City', '+639300612294', 'Available', 'baskettablefac'),
(3, 'James Bond', 'Male', 'Brgy. Aguisan Himamaylan City', '+639128993433', 'Unavailable', 'FCLTR-200'),
(4, 'mica milagrosa', 'Female', 'Hinigaran', '09122484475', 'Unavailable', 'FCLTR-201'),
(5, 'Jezah Lima', 'Male', 'Binalbagan Negros Occidental', '+639129394844', 'Available', 'FCLTR-202'),
(6, 'jade ilongan', 'Male', 'Himamaylan City', '+639091294844', 'Available', 'FCLTR-203'),
(7, 'Arnold Perez', 'Male', 'Mambato Tooy Himamaylan City', '+639837234234', 'Unavailable', 'FCLTR-204'),
(8, 'fewfwe', 'Male', 'ewff', '+639234323432', 'Available', 'FCLTR-205'),
(9, 'jerald Nunez', 'Male', 'Isabela', '+639836253627', 'Available', 'FCLTR-206'),
(10, 'clarise embotido', 'Female', 'himamaylan city', '09123212344', 'Available', 'FCLTR-207'),
(11, 'angel jude suarez', 'Male', 'Himamaylan City', '+639125113555', 'Available', 'PLYR-161'),
(12, 'basil', 'Male', 'bac', '5948655', 'Unavailable', 'FCLTR-209');

-- --------------------------------------------------------

--
-- Table structure for table `game_result`
--

CREATE TABLE `game_result` (
  `game_result_id` int(11) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `final_score` varchar(30) NOT NULL,
  `position_code` varchar(30) NOT NULL,
  `game_result_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_result`
--

INSERT INTO `game_result` (`game_result_id`, `match_code`, `sport_code`, `sport_type_code`, `school_code`, `final_score`, `position_code`, `game_result_code`) VALUES
(33, 'MATCH-166', 'basketball1', 'TEAMSPORTS', 'SCHL-1001', '90', 'WIN-100', 'RESULT-175'),
(34, 'MATCH-166', 'basketball1', 'TEAMSPORTS', 'SCHL-1003', '70', 'LOS-100', 'RESULT-176'),
(35, 'MATCH-171', 'SPORT-103', 'TEAMSPORTS', 'SCHL-1000', '150', 'PLACE-101', 'RESULT-177'),
(36, 'MATCH-172', 'SPORT-104', 'SINGLESPORTS', 'SCHL-1000', '100', 'WIN-100', 'RESULT-178');

-- --------------------------------------------------------

--
-- Table structure for table `game_result_position`
--

CREATE TABLE `game_result_position` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(30) NOT NULL,
  `position_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_result_position`
--

INSERT INTO `game_result_position` (`position_id`, `position_name`, `position_code`) VALUES
(7, 'Winner', 'WIN-100'),
(8, 'Losser', 'LOS-100'),
(13, 'First Place', 'PLACE-100'),
(14, 'Second Place', 'PLACE-101'),
(15, 'Third Place', 'PLACE-102'),
(16, 'Fourth Place', 'PLACE-103'),
(17, 'Fifth Place', 'PLACE-104');

-- --------------------------------------------------------

--
-- Table structure for table `game_type`
--

CREATE TABLE `game_type` (
  `game_type_id` int(11) NOT NULL,
  `type_of_game` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `number_of_scoring` int(11) NOT NULL,
  `game_type_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_type`
--

INSERT INTO `game_type` (`game_type_id`, `type_of_game`, `sport_type_code`, `number_of_scoring`, `game_type_code`) VALUES
(1, 'PER QUARTER', 'TEAMSPORTS', 4, 'QUART100'),
(2, 'PER REGU', 'TEAMSPORTS', 3, 'REGU100'),
(3, 'PER VOLLEY SET', 'TEAMSPORTS', 5, 'SET100'),
(4, 'PER METER', 'SINGLESPORTS', 500, 'METER-100'),
(7, 'PER SETBAD', 'SINGLESPORTS', 3, 'SET101'),
(8, 'sdsd', 'TOURNAMENTSPORTS', 132, 'TYPE-101');

-- --------------------------------------------------------

--
-- Table structure for table `game_type_mode`
--

CREATE TABLE `game_type_mode` (
  `mode_id` int(11) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `mode_name` varchar(30) NOT NULL,
  `mode_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_type_mode`
--

INSERT INTO `game_type_mode` (`mode_id`, `game_type_code`, `mode_name`, `mode_code`) VALUES
(1, 'QUART100', 'First Quarter', '1st'),
(2, 'QUART100', 'Second Quarter', '2nd'),
(5, 'REGU100', 'First Regu', '1stregu'),
(6, 'REGU100', 'Second Regu', '2ndregu'),
(8, 'QUART100', 'Overtime', 'Over'),
(9, 'METER-100', 'Time Score', 'MODE-100'),
(10, 'TYPE-101', 'ddwfwe', 'MODE-101'),
(11, 'SET101', 'BAD SET 1', 'MODE-102'),
(12, 'SET101', 'BAD SET 2', 'MODE-103'),
(14, 'SET100', 'VOLLEY SET 1', 'MODE-105'),
(15, 'SET100', 'VOLLEY SET 2', 'MODE-106'),
(16, 'SET100', 'VOLLEY SET 3', 'MODE-107');

-- --------------------------------------------------------

--
-- Table structure for table `match_schedule`
--

CREATE TABLE `match_schedule` (
  `match_id` int(11) NOT NULL,
  `type_code` varchar(30) NOT NULL,
  `tour_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL,
  `match_date` text NOT NULL,
  `match_time` text NOT NULL,
  `time_end` varchar(30) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `sy_code` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `player_code` varchar(30) NOT NULL,
  `Is_have_result` varchar(11) NOT NULL,
  `match_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_schedule`
--

INSERT INTO `match_schedule` (`match_id`, `type_code`, `tour_code`, `sport_code`, `facilitator_code`, `venue_code`, `match_date`, `match_time`, `time_end`, `match_code`, `sy_code`, `school_code`, `sport_type_code`, `game_type_code`, `player_code`, `Is_have_result`, `match_status`) VALUES
(153, 'TOUR-TYPE-100', 'TOUR-103', 'basketball1', 'baskettablefac', 'chmscbc', '31/08/2020', '07:00', '08:00', 'MATCH-166', 'S.Y. 19-20', 'SCHL-1001', 'TEAMSPORTS', 'QUART100', '', 'YES', 'Normal Game'),
(154, 'TOUR-TYPE-100', 'TOUR-103', 'basketball1', 'baskettablefac', 'chmscbc', '31/08/2020', '07:00', '08:00', 'MATCH-166', 'S.Y. 19-20', 'SCHL-1003', 'TEAMSPORTS', 'QUART100', '', 'YES', 'Normal Game'),
(157, 'TOUR-TYPE-103', 'TOUR-104', 'basketball1', 'FCLTR-204', 'chmscbc', '28/08/2020', '10:00', '11:00', 'MATCH-168', 'S.Y. 19-20', 'SCHL-1000', 'TEAMSPORTS', 'QUART100', '', 'NO', 'Normal Game'),
(158, 'TOUR-TYPE-103', 'TOUR-104', 'basketball1', 'FCLTR-204', 'chmscbc', '28/08/2020', '10:00', '11:00', 'MATCH-168', 'S.Y. 19-20', 'SCHL-1005', 'TEAMSPORTS', 'QUART100', '', 'NO', 'Normal Game'),
(159, 'TOUR-TYPE-100', 'TOUR-104', 'SPORT-104', 'PLYR-161', 'chmscf', '28/08/2020', '06:00', '07:00', 'MATCH-169', 'S.Y. 19-20', 'SCHL-1000', 'SINGLESPORTS', 'METER-100', '', 'NO', 'Championship'),
(160, 'TOUR-TYPE-100', 'TOUR-104', 'SPORT-104', 'PLYR-161', 'chmscf', '28/08/2020', '06:00', '07:00', 'MATCH-169', 'S.Y. 19-20', 'SCHL-1001', 'SINGLESPORTS', 'METER-100', '', 'NO', 'Championship'),
(161, 'TOUR-TYPE-100', 'TOUR-104', 'SPORT-104', 'PLYR-161', 'chmscf', '28/08/2020', '06:00', '07:00', 'MATCH-169', 'S.Y. 19-20', 'SCHL-1002', 'SINGLESPORTS', 'METER-100', '', 'NO', 'Championship'),
(162, 'TOUR-TYPE-100', 'TOUR-104', 'SPORT-104', 'PLYR-161', 'chmscf', '28/08/2020', '06:00', '07:00', 'MATCH-169', 'S.Y. 19-20', 'SCHL-1003', 'SINGLESPORTS', 'METER-100', '', 'NO', 'Championship'),
(163, 'TOUR-TYPE-100', 'TOUR-104', 'SPORT-104', 'PLYR-161', 'chmscf', '28/08/2020', '06:00', '07:00', 'MATCH-169', 'S.Y. 19-20', 'SCHL-1004', 'SINGLESPORTS', 'METER-100', '', 'NO', 'Championship'),
(164, 'TOUR-TYPE-100', 'TOUR-104', 'SPORT-104', 'PLYR-161', 'chmscf', '28/08/2020', '06:00', '07:00', 'MATCH-169', 'S.Y. 19-20', 'SCHL-1005', 'SINGLESPORTS', 'METER-100', '', 'NO', 'Championship'),
(165, 'TOUR-TYPE-100', 'TOUR-107', 'SPORT-103', 'FCLTR-201', 'chmscquad', '14/06/2023', '15:54', '15:56', 'MATCH-171', 'S.Y. 19-20', 'SCHL-1000', 'TEAMSPORTS', 'SET100', '', 'YES', 'Losser By Losser'),
(166, 'TOUR-TYPE-100', 'TOUR-108', 'SPORT-104', 'FCLTR-209', 'chmscfr1', '30/06/2023', '20:56', '15:01', 'MATCH-172', 'S.Y. 19-20', 'SCHL-1000', 'SINGLESPORTS', 'METER-100', '', 'YES', 'Normal Game'),
(167, 'TOUR-TYPE-100', 'TOUR-109', 'Badminton2019', 'FCLTR-204', 'chmscbc', '14/06/2023', '11:49', '12:50', 'MATCH-173', 'S.Y. 19-20', 'SCHL-1005', 'SINGLESPORTS', 'SET101', '', 'NO', 'Normal Game');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(30) NOT NULL,
  `player_age` int(11) NOT NULL,
  `player_course` varchar(30) NOT NULL,
  `player_address` text NOT NULL,
  `player_gender` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `contact` varchar(80) DEFAULT NULL,
  `player_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `player_age`, `player_course`, `player_address`, `player_gender`, `school_code`, `sport_code`, `contact`, `player_code`) VALUES
(1, 'Leonel Gayacao jr.', 21, 'BSIT', 'Saraet', 'Male', 'SCHL-1006', 'basketball1', '+639123384489', 'unobasplayer'),
(2, 'coco martin', 22, 'BSCRIM', 'Himamaylan City', 'Male', 'SCHL-1006', 'basketball1', '+639093223332', 'unobasplayer'),
(4, 'july king cadayona', 22, 'BSIT', 'Kabankalan City', 'Male', 'SCHL-1006', 'basketball1', '+639098222189', 'unobasplayer'),
(5, 'gerick mabag', 21, 'BSCRIM', 'Brgy. Canmuros,Binalbagan', 'Male', 'SCHL-1006', 'basketball1', '+639482532323', 'unobasplayer'),
(7, 'joel onquit', 22, 'BEED', 'Binalbagan', 'Male', 'SCHL-1006', 'basketball1', '+639472326542', 'unobasplayer'),
(10, 'mark lawrence bantilan', 22, 'BSIT', 'Brgy. 2 , Himamaylan City', 'Male', 'SCHL-1006', 'basketball1', '+639072625322', 'unobasplayer'),
(11, 'mark joseph catahuran', 21, 'BEED', 'Himamaylan City', 'Male', 'SCHL-1000', 'basketball1', '+639097363543', 'bccbasplayer'),
(12, 'mark abraham taub', 21, 'BSCRIM', 'Himamaylan City', 'Male', 'SCHL-1000', 'basketball1', '+639128736333', 'bccbasplayer'),
(13, 'kobe bryant', 22, 'BSIT', 'USA', 'Male', 'SCHL-1000', 'basketball1', '+639075332323', 'bccbasplayer'),
(18, 'terence romeo', 22, 'BSED', 'Cavite', 'Male', 'SCHL-1000', 'basketball1', '+639071152522', 'bccbasplayer'),
(19, 'mark barroca', 26, 'BSIT', 'General Santos', 'Male', 'SCHL-1000', 'basketball1', '+639072525222', 'bccbasplayer'),
(20, 'peter june simon', 25, 'BSCRIM', 'Pontevedra', 'Male', 'SCHL-1000', 'basketball1', '+639097254252', 'bccbasplayer');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `school_address` text NOT NULL,
  `school_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`, `school_address`, `school_code`) VALUES
(1, 'BCC', 'Binalbagan', 'SCHL-1000'),
(6, 'Southland College', 'Kabankalan City', 'SCHL-1005'),
(7, 'UNO-R', 'Bacolod City', 'SCHL-1006'),
(11, 'LCC', 'Bacolod City', 'SCHL-109');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `sy_id` int(11) NOT NULL,
  `school_year` varchar(30) NOT NULL,
  `sy_code` varchar(30) NOT NULL,
  `is_default` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`sy_id`, `school_year`, `sy_code`, `is_default`) VALUES
(1, '2018-2019', 'S.Y. 18-19', 'NO'),
(2, '2019-2020', 'S.Y. 19-20', 'YES'),
(3, '2020-2021', 'SY-200', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `no_of_player` int(11) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `is_default` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_id`, `sport_name`, `sport_type_code`, `game_type_code`, `no_of_player`, `sport_code`, `is_default`) VALUES
(1, 'Basketball Men', 'TEAMSPORTS', 'QUART100', 12, 'basketball1', 'YES'),
(2, 'Badminton Single', 'SINGLESPORTS', 'SET101', 1, 'Badminton2019', 'YES'),
(3, 'Sepak Takraw', 'TEAMSPORTS', 'REGU100', 9, 'SPORT-100', 'YES'),
(4, 'Badminton Double', 'DOUBLESPORTS', 'SET101', 2, 'SPORT-101', 'YES'),
(5, 'Table Tennis Single', 'SINGLESPORTS', '', 1, 'SPORT-102', 'YES'),
(6, 'Volleyball Men', 'TEAMSPORTS', 'SET100', 12, 'SPORT-103', 'YES'),
(7, 'Running', 'SINGLESPORTS', 'METER-100', 1, 'SPORT-104', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `sports_type`
--

CREATE TABLE `sports_type` (
  `sport_type_id` int(11) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `sport_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_type`
--

INSERT INTO `sports_type` (`sport_type_id`, `sport_type_code`, `sport_type`) VALUES
(1, 'TEAMSPORTS', 'TEAM'),
(2, 'SINGLESPORTS', 'SINGLE'),
(3, 'DOUBLESPORTS', 'DOUBLE');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(300) NOT NULL,
  `tour_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`tour_id`, `tour_name`, `tour_code`) VALUES
(8, 'SCUAA', 'TOUR-103'),
(9, 'CHMSC Enter Campus', 'TOUR-104'),
(10, 't101', 'TOUR-105'),
(11, '465', 'TOUR-106'),
(12, 'cricket', 'TOUR-107'),
(13, 'vjcet', 'TOUR-108'),
(14, 'abc', 'TOUR-109');

-- --------------------------------------------------------

--
-- Table structure for table `tournament_type`
--

CREATE TABLE `tournament_type` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `type_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tournament_type`
--

INSERT INTO `tournament_type` (`id`, `type`, `type_code`) VALUES
(1, 'Single Event', 'TOUR-TYPE-100'),
(2, 'Single Elimination', 'TOUR-TYPE-101'),
(3, 'Double Elimination', 'TOUR-TYPE-102'),
(4, 'Round Robin', 'TOUR-TYPE-103');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `user_type`) VALUES
(1, 'admin', 'admin', 'admin', 'Admin'),
(2, 'basil', 'basil', '123', 'Encoder');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `place` text NOT NULL,
  `venue_status` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `place`, `venue_status`, `venue_code`) VALUES
(1, 'Chmsc Basketball Court', 'Unavailable', 'chmscbc'),
(2, 'Chmsc Quadrangle', 'Unavailable', 'chmscquad'),
(3, 'Chmsc Convention Hall', 'Available', 'chmscch'),
(4, 'Chmsc Field', 'Available', 'chmscf'),
(5, 'Chmsc Front of Basketball Court', 'Unavailable', 'chmscfbc'),
(6, 'Chmsc Front of Room1', 'Unavailable', 'chmscfr1'),
(7, 'Binalbagan Covered Court', 'Available', 'VEN-100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_number`
--
ALTER TABLE `auto_number`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `facilitator`
--
ALTER TABLE `facilitator`
  ADD PRIMARY KEY (`facilitator_id`),
  ADD UNIQUE KEY `facilitator_name` (`facilitator_name`);

--
-- Indexes for table `game_result`
--
ALTER TABLE `game_result`
  ADD PRIMARY KEY (`game_result_id`);

--
-- Indexes for table `game_result_position`
--
ALTER TABLE `game_result_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `game_type`
--
ALTER TABLE `game_type`
  ADD PRIMARY KEY (`game_type_id`),
  ADD UNIQUE KEY `type_of_game` (`type_of_game`);

--
-- Indexes for table `game_type_mode`
--
ALTER TABLE `game_type_mode`
  ADD PRIMARY KEY (`mode_id`);

--
-- Indexes for table `match_schedule`
--
ALTER TABLE `match_schedule`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_name` (`player_name`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `school_name` (`school_name`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`sy_id`),
  ADD UNIQUE KEY `school_year` (`school_year`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`),
  ADD UNIQUE KEY `sport_name` (`sport_name`);

--
-- Indexes for table `sports_type`
--
ALTER TABLE `sports_type`
  ADD PRIMARY KEY (`sport_type_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `tournament_type`
--
ALTER TABLE `tournament_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_number`
--
ALTER TABLE `auto_number`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `facilitator`
--
ALTER TABLE `facilitator`
  MODIFY `facilitator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `game_result`
--
ALTER TABLE `game_result`
  MODIFY `game_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `game_result_position`
--
ALTER TABLE `game_result_position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `game_type`
--
ALTER TABLE `game_type`
  MODIFY `game_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `game_type_mode`
--
ALTER TABLE `game_type_mode`
  MODIFY `mode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `match_schedule`
--
ALTER TABLE `match_schedule`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sports_type`
--
ALTER TABLE `sports_type`
  MODIFY `sport_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tournament_type`
--
ALTER TABLE `tournament_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
