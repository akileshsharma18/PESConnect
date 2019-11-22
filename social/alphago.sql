-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2019 at 06:32 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphago`
--

-- --------------------------------------------------------

--
-- Table structure for table `1_12_comments`
--

CREATE TABLE `1_12_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_12_votes`
--

CREATE TABLE `1_12_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_12_votes`
--

INSERT INTO `1_12_votes` (`user`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `1_13_comments`
--

CREATE TABLE `1_13_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_13_votes`
--

CREATE TABLE `1_13_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_13_votes`
--

INSERT INTO `1_13_votes` (`user`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `1_14_comments`
--

CREATE TABLE `1_14_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_14_votes`
--

CREATE TABLE `1_14_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_14_votes`
--

INSERT INTO `1_14_votes` (`user`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `1_15_comments`
--

CREATE TABLE `1_15_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_15_votes`
--

CREATE TABLE `1_15_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_main`
--

CREATE TABLE `1_main` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_main`
--

INSERT INTO `1_main` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(7, '2', 'Hello there!\r\nHow are you guys?', 1478786163, '10/11/16 19:56', 'public', 'active'),
(1, '3', 'Hi', 1574309603, '21/11/19 10:13', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `1_mates`
--

CREATE TABLE `1_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_mates`
--

INSERT INTO `1_mates` (`user`, `relation`, `status`) VALUES
(2, 'friend', 'friend'),
(3, 'friend', 'request');

-- --------------------------------------------------------

--
-- Table structure for table `1_notify`
--

CREATE TABLE `1_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_notify`
--

INSERT INTO `1_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(2, '<a href=\"profile.php?id=2\">Indres</a> wants to be your mate.', 1478521301, '07/11/16 13:21', 'read'),
(3, '<a href=\"profile.php?id=2\">Indres</a> wants to be your mate.', 1478521945, '07/11/16 13:32', 'read'),
(4, '<a href=\"profile.php?id=2\">Indres</a> is now your mate.', 1478522107, '07/11/16 13:35', 'read'),
(5, '<a href=\"profile.php?id=2\">Indres</a> is now your mate.', 1478693235, '09/11/16 13:07', 'read'),
(6, '<a href=\"profile.php?id=3\">Aniket Kumar</a> wants to be your mate.', 1574160927, '19/11/19 11:55', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `1_posts`
--

CREATE TABLE `1_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_posts`
--

INSERT INTO `1_posts` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(12, '1', 'Kaisa h bhai!?', 1478787552, '10/11/16 20:19', 'public', 'active'),
(13, '2', 'Bol be', 1478787697, '10/11/16 20:21', 'public', 'active'),
(14, '1', 'rtergtberg', 1478788027, '10/11/16 20:27', 'public', 'active'),
(15, '1', 'Hello Worls', 1574160978, '19/11/19 16:56', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `2_6_votes`
--

CREATE TABLE `2_6_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2_7_comments`
--

CREATE TABLE `2_7_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2_7_votes`
--

CREATE TABLE `2_7_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_7_votes`
--

INSERT INTO `2_7_votes` (`user`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `2_8_comments`
--

CREATE TABLE `2_8_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2_8_votes`
--

CREATE TABLE `2_8_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_8_votes`
--

INSERT INTO `2_8_votes` (`user`) VALUES
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `2_main`
--

CREATE TABLE `2_main` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_main`
--

INSERT INTO `2_main` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(12, '1', 'Kaisa h bhai!?', 1478787552, '10/11/16 20:19', 'public', 'active'),
(14, '1', 'rtergtberg', 1478788027, '10/11/16 20:27', 'public', 'active'),
(1, '3', 'Hi', 1574309603, '21/11/19 10:13', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `2_mates`
--

CREATE TABLE `2_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_mates`
--

INSERT INTO `2_mates` (`user`, `relation`, `status`) VALUES
(1, 'friend', 'friend'),
(3, 'friend', 'friend');

-- --------------------------------------------------------

--
-- Table structure for table `2_notify`
--

CREATE TABLE `2_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_notify`
--

INSERT INTO `2_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(2, '<a href=\"profile.php?id=1\">Swapnil Sharma</a> is now your mate.', 1478521332, '07/11/16 13:22', 'read'),
(3, '<a href=\"profile.php?id=1\">Swapnil Sharma</a> wants to be your mate.', 1478522084, '07/11/16 13:34', 'read'),
(4, '<a href=\"profile.php?id=1\">Swapnil Sharma</a> wants to be your mate.', 1478693005, '09/11/16 13:03', 'read'),
(5, '<a href=\"profile.php?id=1\">Swapnil Sharma</a> posted on your profile. <a href=\"profile.php?id=2\">View post.</a>', 1478788051, '10/11/16 20:27', 'read'),
(6, '<a href=\"profile.php?id=3\">Aniket Kumar</a> is now your mate.', 1574224551, '20/11/19 05:35', 'unread'),
(7, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `2_posts`
--

CREATE TABLE `2_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_posts`
--

INSERT INTO `2_posts` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(7, '2', 'Hello there!\r\nHow are you guys?', 1478786163, '10/11/16 19:56', 'public', 'active'),
(8, '1', 'Kya hua?', 1478788051, '10/11/16 20:27', 'public', 'active');

--
-- Triggers `2_posts`
--
DELIMITER $$
CREATE TRIGGER `2del` BEFORE DELETE ON `2_posts` FOR EACH ROW BEGIN DELETE FROM 1_main WHERE 1_main.id = old.id; DELETE FROM 3_main WHERE 3_main.id = old.id; END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `2ins` AFTER INSERT ON `2_posts` FOR EACH ROW BEGIN INSERT INTO 1_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); INSERT INTO 3_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `3_1_comments`
--

CREATE TABLE `3_1_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `3_1_votes`
--

CREATE TABLE `3_1_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `3_main`
--

CREATE TABLE `3_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3_main`
--

INSERT INTO `3_main` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(1, '5', 'How are u', 1574232355, '20/11/19 12:45', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `3_mates`
--

CREATE TABLE `3_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3_mates`
--

INSERT INTO `3_mates` (`user`, `relation`, `status`) VALUES
(1, 'friend', 'sent'),
(2, 'friend', 'friend'),
(4, 'friend', 'request'),
(5, 'friend', 'friend');

-- --------------------------------------------------------

--
-- Table structure for table `3_notify`
--

CREATE TABLE `3_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3_notify`
--

INSERT INTO `3_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, '<a href=\"profile.php?id=4\">Harshit Dave</a> wants to be your mate.', 1574161378, '19/11/19 12:02', 'unread'),
(2, '<a href=\"profile.php?id=2\">Akilsh S</a> wants to be your mate.', 1574161818, '19/11/19 12:10', 'unread'),
(3, '<a href=\"profile.php?id=5\">Adarsh Mishra</a> wants to be your mate.', 1574224503, '20/11/19 05:35', 'unread'),
(4, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `3_posts`
--

CREATE TABLE `3_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3_posts`
--

INSERT INTO `3_posts` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(1, '3', 'Hi', 1574309603, '21/11/19 10:13', 'public', 'active');

--
-- Triggers `3_posts`
--
DELIMITER $$
CREATE TRIGGER `3del` BEFORE DELETE ON `3_posts` FOR EACH ROW BEGIN DELETE FROM 1_main WHERE 1_main.id = old.id; DELETE FROM 2_main WHERE 2_main.id = old.id; DELETE FROM 4_main WHERE 4_main.id = old.id; DELETE FROM 5_main WHERE 5_main.id = old.id; END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `3ins` AFTER INSERT ON `3_posts` FOR EACH ROW BEGIN INSERT INTO 1_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); INSERT INTO 2_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); INSERT INTO 4_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); INSERT INTO 5_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `4_main`
--

CREATE TABLE `4_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4_main`
--

INSERT INTO `4_main` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(1, '3', 'Hi', 1574309603, '21/11/19 10:13', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `4_mates`
--

CREATE TABLE `4_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4_mates`
--

INSERT INTO `4_mates` (`user`, `relation`, `status`) VALUES
(3, 'friend', 'sent');

-- --------------------------------------------------------

--
-- Table structure for table `4_notify`
--

CREATE TABLE `4_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4_notify`
--

INSERT INTO `4_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `4_posts`
--

CREATE TABLE `4_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `5_1_comments`
--

CREATE TABLE `5_1_comments` (
  `id` int(250) NOT NULL,
  `user` int(250) DEFAULT NULL,
  `comment` longtext,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `5_1_votes`
--

CREATE TABLE `5_1_votes` (
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `5_main`
--

CREATE TABLE `5_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5_main`
--

INSERT INTO `5_main` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(1, '3', 'Hi', 1574309603, '21/11/19 10:13', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `5_mates`
--

CREATE TABLE `5_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5_mates`
--

INSERT INTO `5_mates` (`user`, `relation`, `status`) VALUES
(3, 'friend', 'friend');

-- --------------------------------------------------------

--
-- Table structure for table `5_notify`
--

CREATE TABLE `5_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5_notify`
--

INSERT INTO `5_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, '<a href=\"profile.php?id=3\">Aniket Kumar</a> is now your mate.', 1574224534, '20/11/19 05:35', 'unread'),
(2, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `5_posts`
--

CREATE TABLE `5_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5_posts`
--

INSERT INTO `5_posts` (`id`, `user`, `post`, `time`, `details`, `privacy`, `status`) VALUES
(1, '5', 'How are u', 1574232355, '20/11/19 12:45', 'public', 'active');

--
-- Triggers `5_posts`
--
DELIMITER $$
CREATE TRIGGER `5del` BEFORE DELETE ON `5_posts` FOR EACH ROW BEGIN DELETE FROM 3_main WHERE 3_main.id = old.id; END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `5ins` AFTER INSERT ON `5_posts` FOR EACH ROW BEGIN INSERT INTO 3_main VALUES(new.id, new.user, new.post, new.time, new.details,"public", "active" ); END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `6_main`
--

CREATE TABLE `6_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `6_mates`
--

CREATE TABLE `6_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `6_notify`
--

CREATE TABLE `6_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6_notify`
--

INSERT INTO `6_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `6_posts`
--

CREATE TABLE `6_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `7_main`
--

CREATE TABLE `7_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `7_mates`
--

CREATE TABLE `7_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `7_notify`
--

CREATE TABLE `7_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7_notify`
--

INSERT INTO `7_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `7_posts`
--

CREATE TABLE `7_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `8_main`
--

CREATE TABLE `8_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `8_mates`
--

CREATE TABLE `8_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `8_notify`
--

CREATE TABLE `8_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8_notify`
--

INSERT INTO `8_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1574276205, '20/11/19 19:56', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `8_posts`
--

CREATE TABLE `8_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `9_main`
--

CREATE TABLE `9_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `9_mates`
--

CREATE TABLE `9_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `9_notify`
--

CREATE TABLE `9_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `9_posts`
--

CREATE TABLE `9_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members_details`
--

CREATE TABLE `members_details` (
  `id` int(11) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `about` longtext NOT NULL,
  `hobbies` longtext NOT NULL,
  `clubs` longtext NOT NULL,
  `courses` longtext NOT NULL,
  `projects` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_details`
--

INSERT INTO `members_details` (`id`, `gender`, `dob`, `contact`, `about`, `hobbies`, `clubs`, `courses`, `projects`) VALUES
(1, 'Male', '22/12/1996', '8629015435', 'oregheo\r\nersgser', 'oweriuh wrotiu', 'weigtuhr o', 'woeriguwrh', '6oiuwghoeiruh'),
(2, 'Male', '12/21/1996', 'fnfgnfgn', 'gfngdnfgn', '', '', '', ''),
(3, 'Male', '11/30/2019', '7019978725', 'Resting', 'Fishing', 'CSR', 'Web Tech', 'REST API'),
(4, 'Male', '11/15/2019', '', '', '', '', '', ''),
(5, 'Male', '11/01/2019', '7019978725', 'Yo', 'kn c', 'coding', 'sscsc', 'cwscw'),
(6, 'Male', '11/09/10', '', '', '', '', '', ''),
(7, 'Male', '11/11/1997', '', '', '', '', '', ''),
(8, 'Male', '11/11/2021', '', '', '', '', '', ''),
(9, 'Male', '11/10/19', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `members_list`
--

CREATE TABLE `members_list` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_list`
--

INSERT INTO `members_list` (`id`, `fullname`, `email`, `password`, `status`) VALUES
(2, 'Akilesh S', 'a@b.com', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(3, 'Aniket Kumar', 'aniket_19@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(4, 'Harshit Dave', 'harshit_34@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(5, 'Adarsh Mishra', 'adarsh_20@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(6, 'Hello', 'sss_23@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(7, 'Hola', 'pes_12@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(8, 'Ak', 'oss_21@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active'),
(9, 'Akash Shetty', 'akash_21@students.pes.edu', '34c29c5a656a53daca3fe381fd215b68', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1_12_comments`
--
ALTER TABLE `1_12_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1_12_votes`
--
ALTER TABLE `1_12_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `1_13_comments`
--
ALTER TABLE `1_13_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1_13_votes`
--
ALTER TABLE `1_13_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `1_14_comments`
--
ALTER TABLE `1_14_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1_14_votes`
--
ALTER TABLE `1_14_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `1_15_comments`
--
ALTER TABLE `1_15_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1_15_votes`
--
ALTER TABLE `1_15_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `1_main`
--
ALTER TABLE `1_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `1_mates`
--
ALTER TABLE `1_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `1_notify`
--
ALTER TABLE `1_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1_posts`
--
ALTER TABLE `1_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2_6_votes`
--
ALTER TABLE `2_6_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `2_7_comments`
--
ALTER TABLE `2_7_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2_7_votes`
--
ALTER TABLE `2_7_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `2_8_comments`
--
ALTER TABLE `2_8_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2_8_votes`
--
ALTER TABLE `2_8_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `2_main`
--
ALTER TABLE `2_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `2_mates`
--
ALTER TABLE `2_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `2_notify`
--
ALTER TABLE `2_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2_posts`
--
ALTER TABLE `2_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3_1_comments`
--
ALTER TABLE `3_1_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3_1_votes`
--
ALTER TABLE `3_1_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `3_main`
--
ALTER TABLE `3_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `3_mates`
--
ALTER TABLE `3_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `3_notify`
--
ALTER TABLE `3_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3_posts`
--
ALTER TABLE `3_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `4_main`
--
ALTER TABLE `4_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `4_mates`
--
ALTER TABLE `4_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `4_notify`
--
ALTER TABLE `4_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `4_posts`
--
ALTER TABLE `4_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `5_1_comments`
--
ALTER TABLE `5_1_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `5_1_votes`
--
ALTER TABLE `5_1_votes`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `5_main`
--
ALTER TABLE `5_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `5_mates`
--
ALTER TABLE `5_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `5_notify`
--
ALTER TABLE `5_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `5_posts`
--
ALTER TABLE `5_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `6_main`
--
ALTER TABLE `6_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `6_mates`
--
ALTER TABLE `6_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `6_notify`
--
ALTER TABLE `6_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `6_posts`
--
ALTER TABLE `6_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `7_main`
--
ALTER TABLE `7_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `7_mates`
--
ALTER TABLE `7_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `7_notify`
--
ALTER TABLE `7_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `7_posts`
--
ALTER TABLE `7_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `8_main`
--
ALTER TABLE `8_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `8_mates`
--
ALTER TABLE `8_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `8_notify`
--
ALTER TABLE `8_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `8_posts`
--
ALTER TABLE `8_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `9_main`
--
ALTER TABLE `9_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `9_mates`
--
ALTER TABLE `9_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `9_notify`
--
ALTER TABLE `9_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `9_posts`
--
ALTER TABLE `9_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_details`
--
ALTER TABLE `members_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_list`
--
ALTER TABLE `members_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1_12_comments`
--
ALTER TABLE `1_12_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1_13_comments`
--
ALTER TABLE `1_13_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1_14_comments`
--
ALTER TABLE `1_14_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1_15_comments`
--
ALTER TABLE `1_15_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `1_notify`
--
ALTER TABLE `1_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `1_posts`
--
ALTER TABLE `1_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `2_7_comments`
--
ALTER TABLE `2_7_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2_8_comments`
--
ALTER TABLE `2_8_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2_notify`
--
ALTER TABLE `2_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `2_posts`
--
ALTER TABLE `2_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `3_1_comments`
--
ALTER TABLE `3_1_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3_notify`
--
ALTER TABLE `3_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `3_posts`
--
ALTER TABLE `3_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `4_notify`
--
ALTER TABLE `4_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `4_posts`
--
ALTER TABLE `4_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5_1_comments`
--
ALTER TABLE `5_1_comments`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5_notify`
--
ALTER TABLE `5_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `5_posts`
--
ALTER TABLE `5_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `6_notify`
--
ALTER TABLE `6_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `6_posts`
--
ALTER TABLE `6_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7_notify`
--
ALTER TABLE `7_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `7_posts`
--
ALTER TABLE `7_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `8_notify`
--
ALTER TABLE `8_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `8_posts`
--
ALTER TABLE `8_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `9_notify`
--
ALTER TABLE `9_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `9_posts`
--
ALTER TABLE `9_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members_list`
--
ALTER TABLE `members_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
