-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2019 at 03:58 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeerius`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Egg', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg'),
(8, 'Krit&Apple', 7, 3, 'assets/images/artwork/energy.jpg'),
(9, 'Kapatid', 17, 1, 'assets/images/artwork/kapatid.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee'),
(6, 'Chanox'),
(7, 'DJKhaled'),
(8, 'Bruno Mars'),
(9, 'Kendrick Lamar'),
(10, 'Lil UziVert'),
(11, 'Migos feat Gucci Mane'),
(12, 'Playboi Carti'),
(13, 'Post Malone feat Quavo'),
(14, 'Savage'),
(15, 'YFNLucci'),
(16, 'YoGotti feat Nicki Minaj'),
(17, 'Kapatid');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'apple', 'kritApple', '2019-09-02 00:00:00'),
(5, 'ChocoMaker', 'kritApple', '2019-09-02 00:00:00'),
(6, 'ZEERIUS', 'kritApple', '2019-09-03 00:00:00'),
(7, 'MineCraft', 'CRSJ18', '2019-09-03 00:00:00'),
(8, 'yano', 'kritApple', '2019-09-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE `playlistSongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistSongs`
--

INSERT INTO `playlistSongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(3, 17, 0, 0),
(4, 17, 0, 0),
(6, 4, 1, 4),
(7, 5, 1, 5),
(8, 42, 1, 6),
(9, 44, 1, 7),
(10, 45, 1, 8),
(11, 35, 1, 9),
(12, 2, 6, 1),
(13, 3, 6, 2),
(15, 36, 5, 1),
(16, 19, 6, 3),
(17, 45, 6, 4),
(18, 24, 7, 1),
(19, 23, 7, 2),
(20, 36, 7, 3),
(21, 37, 7, 4),
(22, 39, 7, 5),
(23, 7, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `Songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 1),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 2),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 1),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 1),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 0),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 3),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 4),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 2),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 2),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 1),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 2),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 4),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 2),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 1),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 5),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 1),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 3),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 1),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 2),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 0),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 1),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 0),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 3),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 4),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 0),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 1),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 2),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 5),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 4),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 5),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 5),
(35, 'I''m the One', 7, 8, 3, '4:49', 'assets/music/DJKhaled-ImtheOne.mp3', 1, 38),
(36, 'Versace on the Floor', 8, 8, 5, '4:21', 'assets/music/BrunoMars-VersaceontheFloor.mp3', 2, 23),
(37, 'Wild Thoughts', 7, 8, 3, '3:25', 'assets/music/DJKhaled-WildThoughts.mp3', 1, 20),
(38, 'DNA', 9, 8, 3, '3:06', 'assets/music/KendrickLamar-DNA.mp3', 1, 5),
(39, 'HUMBLE', 9, 8, 3, '2:57', 'assets/music/KendrickLamar-HUMBLE.mp3', 1, 9),
(40, 'LilUziVert-XOTOURLlif3', 10, 8, 3, '3:04', 'assets/music/LilUziVert-XOTOURLlif3.mp3', 1, 5),
(41, 'Slippery', 11, 8, 3, '5:04', 'assets/music/Migos-Slippery.mp3', 1, 10),
(42, 'Magnolia', 12, 8, 3, '3:02', 'assets/music/PlayboiCarti-Magnolia.mp3', 1, 5),
(43, 'Congratulations', 13, 8, 3, '3:40', 'assets/music/PostMalone-Congratulations.mp3', 1, 6),
(44, 'BankAccount', 14, 8, 3, '3:40', 'assets/music/Savage-BankAccount.mp3', 1, 5),
(45, 'Everyday We Lit', 15, 8, 3, '3:17', 'assets/music/YFNLucci-EverydayWeLit.mp3', 1, 6),
(46, 'Rake It Up', 16, 8, 3, '4:36', 'assets/music/YoGotti-RakeItUp.mp3', 1, 11),
(47, 'Pagbabalik ng Kwago', 17, 9, 1, '2:32', 'assets/music/Kapatid-PagbabalikNgKwago.mp3', 1, 6),
(48, 'Vision', 17, 9, 1, '4:31', 'assets/music/Kapatid-Visions.mp3', 1, 3),
(49, 'Bleed', 17, 9, 1, '4:29', 'assets/music/Kapatid-Bleed.mp3', 1, 1),
(50, 'Buhay', 17, 9, 1, '3:08', 'assets/music/Kapatid-Buhay.mp3', 1, 1),
(51, '', 0, 0, 0, '', '', 0, 0),
(52, 'Destination', 17, 9, 1, '4:37', 'assets/music/Kapatid-Destination.mp3', 1, 0),
(53, 'Doon', 17, 9, 1, '3:40', 'assets/music/Kapatid-Doon.mp3', 1, 0),
(54, 'Edsa', 17, 9, 1, '5:20', 'assets/music/Kapatid-Edsa.mp3', 1, 1),
(55, 'Fadeaway', 17, 9, 1, '5:30', 'assets/music/Kapatid-Fadeaway.mp3', 1, 1),
(56, 'Hanggang Magdamag', 17, 9, 1, '3:41', 'assets/music/Kapatid-HanggangMagdamag.mp3', 1, 1),
(57, 'I Like It', 17, 9, 1, '3:17', 'assets/music/Kapatid-ILikeIt.mp3', 1, 1),
(58, 'No Help', 17, 9, 1, '3:17', 'assets/music/Kapatid-NoHelp.mp3', 1, 1),
(59, 'Prayer', 17, 9, 1, '4:18', 'assets/music/Kapatid-Prayer.mp3', 1, 1),
(60, 'Slow', 17, 9, 1, '3:41', 'assets/music/Kapatid-Slow.mp3', 1, 2),
(61, 'Sonic Assault', 17, 9, 1, '2:54', 'assets/music/Kapatid-SonicAssault.mp3', 1, 2),
(62, 'Telegrama', 17, 9, 1, '3:39', 'assets/music/Kapatid-Telegrama.mp3', 1, 2),
(63, 'The Time', 17, 9, 1, '4:04', 'assets/music/Kapatid-TheTime.mp3', 1, 1),
(69, 'Krit', 6, 3, 1, '2:04', 'assets/music/06. Yes.mp3', 0, 8),
(70, 'krit', 6, 8, 1, '4:02', 'assets/music/02. Hurts like heaven.mp3', 0, 1),
(71, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 1),
(72, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 1),
(73, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 1),
(74, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 1),
(75, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 1),
(76, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 0),
(77, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 0),
(78, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 0),
(79, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 0),
(80, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 0),
(81, 'Pompei', 6, 8, 1, '3:53', 'assets/music/Bastille - Pompeii.mp3', 0, 0),
(82, 'Chasing the Stars', 6, 8, 1, '4:08', 'assets/music/35 G - Chasing The Stars.mp3', 0, 1),
(83, 'Chasing the Stars', 6, 8, 1, '4:08', 'assets/music/35 G - Chasing The Stars.mp3', 0, 0),
(84, 'Chasing the Stars', 6, 8, 1, '4:08', 'assets/music/35 G - Chasing The Stars.mp3', 0, 0),
(85, 'Chasing the Stars', 6, 8, 1, '4:08', 'assets/music/35 G - Chasing The Stars.mp3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'kritApple', 'Krit', 'Isidoro', 'Krit1224@gmail.com', '85cec3564e90b63f731aa7b6705c8229', '2019-08-18 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'chanox37', 'Chanox', 'Isidoro', 'Chanoxorodisi@gmail.com', 'd5a8c50a0fd1e143c4c9eb9667a3108f', '2019-09-01 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'CRSJ18', 'Christianray', 'Sanjuan', 'Crsj@gmail.com', '98eb470b2b60482e259d28648895d9e1', '2019-09-03 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
