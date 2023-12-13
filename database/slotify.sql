-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 09:16 AM
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
-- Database: `slotify`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bollywood Central', 2, 4, 'assets/images/artwork/Bollywood Central.jpg'),
(2, 'House Party Hits', 5, 10, 'assets/images/artwork/House Party Hits.jpg'),
(3, 'Winter of Love', 3, 1, 'assets/images/artwork/Winter of Love.jpg'),
(4, 'Best of Arijit Singh', 2, 6, 'assets/images/artwork/Best of Arijit Singh.jpg'),
(5, 'Hindustani Classical', 38, 6, 'assets/images/artwork/Hindustani Classical.jpg'),
(6, 'HollyWood\'s Big Night', 63, 24, 'assets/images/artwork/HollywoodBigNight.jpg'),
(7, 'Michael Jackson', 46, 2, 'assets/images/artwork/Michael Jackson.jpg'),
(9, 'Punjabi Hot Hits', 32, 28, 'assets/images/artwork/Punjabi Hot Hits.jpg'),
(10, 'Pop Down South', 6, 31, 'assets/images/artwork/Pop Down South.jpg'),
(11, 'Bollywood Evergreen', 22, 22, 'assets/images/artwork/Bollywood Evergreen.jpg'),
(14, 'Michael Jackson Essentials', 46, 2, 'assets/images/artwork/Michael Jackson Essential.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Vishal & Shekhar'),
(2, 'Arijit Singh'),
(3, 'Atif aslam'),
(4, 'Pritam'),
(5, 'Jonita Gandhi'),
(6, 'Anirudh Ravichander'),
(7, 'Shreya Ghoshal'),
(8, 'Sachin-Jigar'),
(9, 'Kavita Seth'),
(10, 'Nikhita Gandhi'),
(11, 'Badshaah'),
(12, 'Shilpa Rao'),
(13, 'A.R. Rahman'),
(14, 'Jubin Nautiyal'),
(15, 'Tanishk Bagchi'),
(16, 'B Praak'),
(17, 'Neha Kakkar'),
(18, 'Guru Randhawa'),
(19, 'Honey Singh'),
(20, 'Dhvani Bhanushali'),
(21, 'Asees Kaur'),
(22, 'Alka Yagnik'),
(23, 'Sonu Nigam'),
(24, 'Garry Sandhu'),
(25, 'Jasmine Sandlas'),
(26, 'Akhil Sachdeva'),
(27, 'Kanika Kapoor'),
(28, 'Sunidhi Chauhan'),
(29, 'Himesh Reshammiya'),
(30, 'Mika Singh'),
(31, 'Raftaar'),
(32, 'Diljit Dosanjh'),
(33, 'Harrdy Sandhu'),
(34, 'Shankar-Ehsaan-Loy'),
(35, 'MC Stan'),
(36, 'KK'),
(37, 'Jawad Ahmad'),
(38, 'Rahat Fateh Ali Khan'),
(39, 'Momina Mustehsan'),
(40, 'King'),
(41, 'Sachet Tandon'),
(42, 'Jasleen Royal'),
(43, 'Gansaraswati Kishori Amonkar'),
(44, 'Tansen'),
(45, 'Sher Muhammad Khan'),
(46, 'Michael Jackson'),
(47, 'Pandit Ravishankar'),
(48, 'Shobha Gurtu'),
(49, 'Anuradha Kuber'),
(50, 'Dr. Revati Kamat'),
(51, 'Justin Bieber'),
(52, 'Selena Gomez'),
(53, 'Alan Walker'),
(54, 'Akon'),
(55, 'Jonas Brothers'),
(56, '24kGoldn'),
(57, 'Jason Derulo'),
(58, 'The Weeknd'),
(59, 'Maroon 5'),
(60, 'Charlie Puth'),
(61, 'Post Malone'),
(62, 'Marshmello'),
(63, 'One Direction'),
(64, 'Dua Lipa'),
(65, 'Clean Bandit'),
(66, 'Taylor Swift'),
(67, 'Eminem'),
(68, 'Billie Eillish'),
(69, 'The Chainsmokers'),
(70, 'Dev Anand'),
(71, 'Starboy');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Rhythm and Blues'),
(12, 'Electronic Music'),
(13, 'Funk'),
(14, 'Folk'),
(15, 'Soul'),
(16, 'Disco'),
(17, 'Acoustic'),
(18, 'Instrumental'),
(19, 'Hauntology'),
(20, 'Jungle'),
(21, 'K-Pop'),
(22, 'Bollywood'),
(23, 'Indie'),
(24, 'Hollywood'),
(25, 'Hardcore'),
(26, 'Explicit'),
(27, 'Romantic'),
(28, 'Punjabi'),
(30, 'Party'),
(31, 'SouthIndie'),
(32, 'Evergreen');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Lio Special', 'LionelMessi11', '2023-11-27 00:00:00'),
(3, 'Saturday Party', 'LionelMessi11', '2023-11-30 00:00:00'),
(5, 'taha badboi', 'Tahaaz', '2023-11-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 4, 1, 0),
(2, 61, 1, 1),
(3, 85, 1, 2),
(4, 86, 1, 3),
(5, 96, 1, 4),
(6, 132, 1, 5),
(7, 135, 1, 6),
(9, 61, 5, 0),
(10, 122, 3, 0),
(17, 132, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Besharam Rang', 1, 1, 22, '4:18', 'assets/music/Besharam Rang Pathaan.mp3', 12, 4),
(2, 'Besharam Rang', 1, 2, 30, '4:18', 'assets/music/Besharam Rang Pathaan.mp3', 4, 1),
(3, 'What Jhumka?', 2, 1, 22, '3:33', 'assets/music/What Jhumka Rocky Aur Rani Kii Prem Kahaani.mp3', 1, 9),
(4, 'Chaleya', 6, 1, 22, '3:20', 'assets/music/Chaleya Jawan.mp3', 2, 14),
(5, 'Tere Vaaste', 8, 1, 22, '3:09', 'assets/music/Tere Vaaste Zara Hatke Zara Bachke.mp3', 3, 7),
(6, 'Satranga (From \"Animal\")', 2, 1, 22, '4:31', 'assets/music/Satranga Animal.mp3', 4, 4),
(7, 'Deva Deva (From \"Brahmastra\")', 4, 1, 22, '4:39', 'assets/music/Deva Deva Brahmastra.mp3', 5, 4),
(8, 'RangiSari', 9, 1, 6, '3:43', 'assets/music/Rangisari Jugjugg Jeeyo.mp3', 6, 4),
(9, 'Kesariya (From \"Brahmastra\")', 2, 1, 22, '4:28', 'assets/music/Kesariya Brahmastra.mp3', 7, 9),
(10, 'Pyaar Hota Kai Baar Hai', 4, 1, 22, '3:36', 'assets/music/Pyaar Hota Kayi Baar Hai Tu Jhoothi Main Makkaar.mp3', 8, 5),
(11, 'Jhoome Jo Pathaan', 1, 1, 22, '3:28', 'assets/music/Jhoome Jo Pathaan Title Song.mp3', 9, 5),
(12, 'Sooraj Dooba Hain', 2, 1, 22, '4:24', 'assets/music/Sooraj Dooba Hain Roy.mp3', 10, 4),
(13, 'Bulleya (From \"Ae Dil Hai Mushkil\")', 4, 1, 6, '5:49', 'assets/music/Bulleya Ae Dil Hai Mushkil.mp3', 11, 2),
(14, 'Ghungroo (From \"War\")', 1, 1, 22, '5:03', 'assets/music/Ghungroo War.mp3', 13, 1),
(15, 'Illegal Weapon 2.0', 24, 1, 22, '3:08', 'assets/music/Illegal Weapon 2.0 Street Dancer 3d.mp3', 14, 2),
(16, 'Besharam Rang', 1, 1, 22, '4:18', 'assets/music/Besharam Rang Pathaan.mp3', 15, 2),
(17, 'Apna Bana Le', 8, 1, 22, '4:21', 'assets/music/Apna Bana Le Bhediya.mp3', 16, 4),
(18, 'Duniyaa Luka Chuppi', 20, 1, 27, '3:42', 'assets/music/Duniyaa Luka Chuppi.mp3', 17, 2),
(19, 'Kabira', 4, 1, 22, '3:43', 'assets/music/Kabira Yeh Jawaani Hai Deewani.mp3', 18, 2),
(20, 'Rait Zara Si', 13, 1, 22, '4:51', 'assets/music/Rait Zara Si Atrangi Re.mp3', 19, 2),
(21, 'Tera Ban Jaunga', 26, 1, 27, '3:56', 'assets/music/Tera Ban Jaunga Kabir Singh.mp3', 20, 3),
(22, 'Raataan Lambiyan', 15, 1, 22, '3:50', 'assets/music/Raataan Lambiyan Shershaah.mp3', 21, 4),
(23, 'Manike (From \"Thank God\")', 14, 1, 22, '3:17', 'assets/music/Manike Thank God.mp3', 22, 3),
(24, 'Nadiyon Paar', 8, 1, 22, '2:44', 'assets/music/Nadiyon Paar Roohi.mp3', 23, 3),
(25, 'Param Sundari Mimi', 7, 1, 22, '3:20', 'assets/music/Param Sundari Mimi.mp3', 24, 3),
(26, 'Suit Suit (From \"Hindi Medium\")', 18, 1, 28, '3:10', 'assets/music/Suit Suit Hindi Medium.mp3', 25, 2),
(27, 'Chittiyaan Kalaiyan', 27, 1, 22, '4:05', 'assets/music/Chittiyaan Kalaiyaan Roy.mp3', 26, 3),
(28, 'Radha (From \"Jab Harry Met Sejal\")', 4, 1, 22, '5:01', 'assets/music/Radha Jab Harry Met Sejal.mp3', 27, 3),
(29, 'Nagada Sang Dhol', 7, 1, 22, '4:33', 'assets/music/Nagada Sang Dhol Goliyon Ki Raasleela Ram Leela.mp3', 28, 3),
(30, 'Kamli (From \"Dhoom 3\")', 28, 1, 22, '3:55', 'assets/music/Kamli Dhoom 3.mp3', 29, 3),
(31, 'Bolna (From \"Kapoor & Sons\")', 15, 1, 22, '3:32', 'assets/music/Bolna Kapoor And Sons.mp3', 30, 2),
(32, 'Dil Diyan Gallan', 3, 1, 27, '4:20', 'assets/music/Dil Diyan Gallan Tiger Zinda Hai.mp3', 31, 2),
(33, 'Ae Dil Hai Mushkil', 2, 1, 22, '4:42', 'assets/music/Alizeh Ae Dil Hai Mushkil.mp3', 32, 1),
(34, 'Tujhe Kitna Chahne Lage ', 2, 1, 27, '4:44', 'assets/music/Tujhe Kitna Chahne Lage Kabir Singh.mp3', 33, 2),
(35, 'Agar Tum Saath Ho', 22, 1, 27, '5:41', 'assets/music/Agar Tum Saath Ho Tamasha.mp3', 34, 1),
(36, 'Kar Gayi Chull', 11, 2, 30, '3:07', 'assets/music/Kar Gayi Chull Kapoor And Sons.mp3', 1, 6),
(37, 'Hookah Bar (From \"Khiladi 786\")', 29, 2, 30, '4:14', 'assets/music/Hookah Bar Khiladi 786.mp3', 2, 3),
(38, 'Subha Hone Na De', 30, 2, 30, '4:48', 'assets/music/Subha Hone Na De Desi Boyz.mp3', 3, 2),
(39, 'Gone Girl ~Badshah', 11, 2, 30, '2:47', 'assets/music/Gone Girl Badshah.mp3', 5, 1),
(40, 'Ghana Kasoota', 31, 2, 30, '2:48', 'assets/music/Ghana Kasoota Raftaar.mp3', 6, 1),
(41, 'O Saki Saki', 17, 2, 30, '3:11', 'assets/music/O Saki Saki Batla House.mp3', 7, 1),
(42, 'Nashe Si Chad Gayi', 1, 2, 30, '3:08', 'assets/music/Nashe Si Chadh Gayi.mp3', 8, 1),
(43, 'Akh Lad Jaave (From \"Loveyatri\")', 21, 2, 2, '3:00', 'assets/music/Akh Lad Jaave Loveyatri A Journey Of Love.mp3', 9, 1),
(44, 'Not Ramaiya Vastavaiya', 6, 2, 16, '3:22', 'assets/music/Not Ramaiya Vastavaiya Jawan.mp3', 10, 0),
(45, 'Munda Sona Hoon Main', 32, 2, 28, '3:50', 'assets/music/Munda Sona Hoon Main Shehzada.mp3', 11, 1),
(46, 'Chedkhaniyan (From \"Shehzada\")', 2, 1, 22, '3:51', 'assets/music/Chedkhaniyan Shehzada.mp3', 35, 3),
(47, 'Malang Sajna', 8, 2, 27, '2:41', 'assets/music/Malang Sajna Sachet Tandon.mp3', 12, 2),
(48, 'Kyaa Baat Haii 2.0', 33, 2, 28, '2:56', 'assets/music/Kyaa Baat Haii 2 Govinda Naam Mera.mp3', 13, 1),
(49, 'Jehda Nasha Hustle 2.0', 15, 2, 30, '2:02', 'assets/music/Jehda Nasha Hustle 2.0.mp3', 14, 1),
(50, 'Paani Paani', 11, 2, 30, '2:54', 'assets/music/Paani Paani Badshah.mp3', 15, 1),
(51, 'Kajra Re', 34, 2, 22, '8:02', 'assets/music/Kajra Re Bunty Aur Babli.mp3', 16, 1),
(52, 'Dance Basanti (From \"Ungli\")', 8, 2, 30, '3:44', 'assets/music/Dance Basanti Ungli.mp3', 17, 1),
(53, 'Dance ka Bhoot (From \"Brahmastra\")', 2, 2, 22, '4:05', 'assets/music/Dance Ka Bhoot Brahmastra.mp3', 18, 1),
(54, 'Urvashi Ikka', 35, 2, 4, '3:36', 'assets/music/Urvashi Ikka.mp3', 19, 1),
(55, 'Jugnu 21\'', 11, 2, 28, '3:50', 'assets/music/Jugnu Badshah.mp3', 20, 1),
(56, 'Paagal', 11, 2, 28, '2:50', 'assets/music/Paagal Badshah 128 Kbps.mp3', 21, 1),
(57, 'Garmi (From \"Street Dancer 3D\")', 11, 2, 30, '3:02', 'assets/music/Garmi (feat. Varun Dhawan) Street Dancer 3d.mp3', 22, 2),
(58, 'Proper Patola', 32, 2, 30, '2:58', 'assets/music/Proper Patola Namaste England 128 Kbps.mp3', 23, 1),
(59, 'Bom Diggy Diggy', 17, 2, 30, '3:58', 'assets/music/Bom Diggy Diggy Sonu Ke Titu Ki Sweety.mp3', 24, 1),
(60, 'Main Tera Boyfriend', 4, 2, 22, '4:36', 'assets/music/Main Tera Boyfriend Raabta 128 Kbps.mp3', 25, 1),
(61, 'Satranga (From \"Animal\")', 2, 3, 27, '4:31', 'assets/music/Satranga Animal.mp3', 1, 7),
(62, 'Subhanallah', 4, 3, 22, '4:09', 'assets/music/Subhanallah Yeh Jawaani Hai Deewani.mp3', 2, 2),
(63, 'Mere Bina ', 4, 3, 27, '4:49', 'assets/music/Mere Bina Crook.mp3', 3, 1),
(64, 'Dil Jhoom', 2, 3, 27, '5:04', 'assets/music/Dil Jhoom Gadar 2.mp3', 4, 2),
(65, 'Ruaan (From \"Tiger 3\")', 4, 3, 27, '4:18', 'assets/music/Ruaan Tiger 3 128 Kbps.mp3', 5, 2),
(66, 'Phir Aur Kya Chahiye', 8, 3, 27, '4:26', 'assets/music/Phir Aur Kya Chahiye Zara Hatke Zara Bachke.mp3', 6, 1),
(67, 'Dil Diyan Gallan', 3, 3, 22, '4:20', 'assets/music/Dil Diyan Gallan Tiger Zinda Hai.mp3', 7, 1),
(68, 'Jannatein Kahan', 36, 3, 27, '3:48', 'assets/music/Jannatein Kahan Jannat 2 Original Motion Picturetrack 128 Kbps.mp3', 8, 2),
(69, 'Hum Nashe Mein Toh Nahin', 4, 3, 27, '3:58', 'assets/music/Hum Nashe Mein Toh Nahin Bhool Bhulaiyaa 2 128 Kbps.mp3', 9, 2),
(70, 'Samjhawan', 37, 3, 27, '4:29', 'assets/music/Samjhawan Humpty Sharma Ki Dulhania.mp3', 10, 1),
(71, 'Uchiyaan Dewaraan Baari 2 ', 39, 3, 27, '3:48', 'assets/music/Uchiyaan Dewaraan Baari 2 Bilal Saeed Momina Mustehsan.mp3', 11, 1),
(72, 'Maan Meri Jaan', 40, 3, 27, '3:14', 'assets/music/Maan Meri Jaan Champagne Talk.mp3', 12, 1),
(73, 'Maiyya Mainu (From \"Jersey\")', 41, 3, 27, '3:51', 'assets/music/Maiyya Mainu Jersey.mp3', 13, 5),
(74, 'Ishq Wala Love', 1, 3, 22, '4:18', 'assets/music/Ishq Wala Love Student Of The Year.mp3', 14, 1),
(75, 'Main Agar Kahoon', 7, 3, 27, '5:12', 'assets/music/Main Agar Kahoon Om Shanti Om.mp3', 15, 1),
(76, 'Tum Hi Ho ', 2, 3, 27, '4:22', 'assets/music/Tum Hi Ho Aashiqui 2.mp3', 16, 1),
(78, 'What Jhumka?', 2, 4, 22, '3:33', 'assets/music/What Jhumka Rocky Aur Rani Kii Prem Kahaani.mp3', 1, 1),
(79, 'Satranga (From \"Animal\")', 2, 4, 22, '4:31', 'assets/music/Satranga Animal.mp3', 2, 0),
(80, 'Kesariya (From \"Brahmastra\")', 2, 4, 22, '4:28', 'assets/music/Kesariya Brahmastra.mp3', 3, 0),
(81, 'Sooraj Dooba Hain', 2, 4, 22, '4:24', 'assets/music/Sooraj Dooba Hain Roy.mp3', 4, 0),
(82, 'Ae Dil Hai Mushkil', 2, 4, 22, '4:42', 'assets/music/Alizeh Ae Dil Hai Mushkil.mp3', 5, 0),
(83, 'Tujhe Kitna Chahne Lage ', 2, 4, 27, '4:44', 'assets/music/Tujhe Kitna Chahne Lage Kabir Singh.mp3', 6, 0),
(84, 'Chedkhaniyan (From \"Shehzada\")', 2, 4, 22, '3:51', 'assets/music/Chedkhaniyan Shehzada.mp3', 7, 0),
(85, 'Dance ka Bhoot (From \"Brahmastra\")', 2, 4, 22, '4:05', 'assets/music/Dance Ka Bhoot Brahmastra.mp3', 8, 0),
(86, 'Dil Jhoom', 2, 4, 27, '5:04', 'assets/music/Dil Jhoom Gadar 2.mp3', 9, 0),
(87, 'Tum Hi Ho ', 2, 4, 27, '4:22', 'assets/music/Tum Hi Ho Aashiqui 2.mp3', 10, 0),
(88, 'Heeriye', 42, 3, 27, '3:14', 'assets/music/Heeriye.mp3', 17, 1),
(89, 'Hawayein', 4, 3, 27, '4:50', 'assets/music/Hawayein Jab Harry Met Sejal.mp3', 18, 0),
(90, 'Hawayein', 2, 4, 22, '4:50', 'assets/music/Hawayein Jab Harry Met Sejal.mp3', 11, 2),
(91, 'Kalank-Title Track', 2, 4, 22, '5:11', 'assets/music/Kalank (title Track) Arijit Singh.mp3', 12, 1),
(92, 'Tera Yaar Hoon Main', 2, 4, 22, '4:24', 'assets/music/Tera Yaar Hoon Main Sonu Ke Titu Ki Sweety.mp3', 13, 1),
(93, 'Galti Se Mistake ', 2, 4, 30, '3:23', 'assets/music/Galti Se Mistake Jagga Jasoos.mp3', 14, 1),
(94, 'Woh Din (From \"Chhichhore\")', 2, 4, 22, '4:18', 'assets/music/Woh Din Chhichhore 128 Kbps.mp3', 15, 1),
(95, 'Lehra Do', 2, 4, 22, '3:37', 'assets/music/Lehra Do 83 128 Kbps.mp3', 16, 1),
(96, 'Kashmir Main, Tu Kanyakumari', 2, 4, 22, '5:07', 'assets/music/Kashmir Main, Tu Kanyakumari Chennai Express.mp3', 17, 1),
(97, 'Channa Mereya', 2, 4, 27, '4:49', 'assets/music/Channa Mereya Ae Dil Hai Mushkil.mp3', 18, 1),
(98, 'Ghar More Pardesiya', 7, 5, 6, '5:19', 'assets/music/Ghar More Pardesiya Kalank.mp3', 0, 4),
(99, 'Raga Gaud Malhar ', 43, 5, 6, '5:08', 'assets/music/Hindustani Classical Raga Gaud Malhar Part 2.mp3', 0, 1),
(100, 'Dhrupad', 44, 5, 6, '1:08:09', 'assets/music/Dhrupad.mp3', 3, 2),
(101, 'Ibn-e-Insha', 45, 5, 6, '1:27', 'assets/music/Ibn-e-Insha.mp3', 4, 1),
(114, 'Indian Classical Essence', 47, 5, 6, '8:04', 'assets/music/Indian Classical Essence.mp3', 5, 1),
(115, 'Lagi Re Mori', 48, 5, 6, '5:17', 'assets/music/Indian Classical Lagi Re Mori.mp3', 6, 1),
(116, 'Jhoola Jhamaka Jhuki Ayi', 49, 5, 6, '5:08', 'assets/music/Jhoola Jhamaka Jhuki Ayi.mp3', 7, 0),
(117, 'Raga Ahir Bhairav', 50, 5, 6, '4:36', 'assets/music/Raga Ahir Bhairav.mp3', 8, 0),
(118, 'Billie Jean', 46, 7, 16, '4:54', 'assets/music/Billie Jean.mp3', 1, 5),
(119, 'Beat It', 46, 7, 1, '4:17', 'assets/music/Beat It.mp3', 2, 4),
(120, 'Thriller', 46, 7, 2, '5:57', 'assets/music/Thriller.mp3', 3, 5),
(121, 'Bad', 46, 7, 1, '4:19', 'assets/music/Bad.mp3', 4, 5),
(122, 'Black or White', 46, 7, 8, '4:16', 'assets/music/Black Or White.mp3', 5, 5),
(123, 'Human Nature', 46, 7, 15, '4:05', 'assets/music/Human Nature.mp3', 6, 5),
(124, 'Jam', 46, 7, 6, '5:39', 'assets/music/Jam.mp3', 7, 4),
(125, 'Man in the Mirror', 46, 7, 26, '5:19', 'assets/music/Man In The Mirror.mp3', 8, 5),
(126, 'I just cant stop loving you', 46, 7, 27, '4:12', 'assets/music/I Just Cant Stop Loving You.mp3', 9, 5),
(127, 'This Is It', 46, 7, 3, '3:36', 'assets/music/This Is It.mp3', 10, 5),
(128, 'They dont care about us', 46, 7, 5, '4:44', 'assets/music/They Dont Care About Us.mp3', 11, 4),
(129, 'Shake your body down', 46, 7, 15, '3:53', 'assets/music/Shake Your Body Down.mp3', 12, 4),
(130, 'Smooth Criminal', 46, 7, 1, '4:17', 'assets/music/Smooth Criminal.mp3', 13, 5),
(131, 'Wanna Be Startin Somethin', 46, 7, 2, '6:02', 'assets/music/Wanna Be Startin Somethin.mp3', 14, 4),
(132, 'On My Way', 53, 6, 12, '3:13', 'assets/music/On My Way Alan Walker.mp3', 1, 7),
(133, 'Closer', 69, 6, 27, '4:05', 'assets/music/Closer.mp3', 2, 2),
(134, 'Your Power', 68, 6, 15, '4:05', 'assets/music/Your Power.mp3', 3, 1),
(135, 'Attention', 60, 6, 25, '3:31', 'assets/music/Attention.mp3', 4, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'MananGarg22', 'Manan', 'Garg', 'Manangarg1929@gmail.com', '3bf694be4d95410d42f71d5c8512d4e5', '2023-11-23 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'UzomakiNaruto88', 'Uzomaki', 'Naruto', 'Uzomakinaruto88@gmail.com', '055ad45dfe8228f03135029065afc0b9', '2023-11-24 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'LionelMessi11', 'Lionel', 'Messi', 'Lionelmessi11@gmail.com', 'a01a82a9c35cef056ca0f32d0a8184e3', '2023-11-25 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'VickkyVirat', 'Vickky', 'Kapoor', 'Vickky@gmail.com', 'afd9b62a0becbaa0777653c383a57a6b', '2023-11-30 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
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
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
