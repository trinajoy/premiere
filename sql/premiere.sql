-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2020 at 12:13 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `premiere`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Comedies'),
(4, 'Dramas'),
(17, 'Music'),
(21, 'Crime');

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `preview`, `categoryId`) VALUES
(1, 'Friends', 'entities/thumbnails/friends.png', 'entities/previews/friends_s1e1.mp4', 3),
(100, 'Underbelly', 'entities/thumbnails/underbelly.png', 'entities/previews/underbelly_s1e1.mp4', 21),
(101, 'Murder Call', 'entities/thumbnails/murdercall.png', 'entities/videos/murdercall_s1e1.mp4', 21),
(102, 'City Homicide', 'entities/thumbnails/cityhomicide.png\r\n', '\r\nentities/previews/cityhomicide_s1e1.mp4', 21),
(103, 'Bounty Hunters', 'entities/thumbnails/bountyhunters.png', 'entities/videos/bountyhunters_s1e1.mp4', 3),
(104, 'Hamish Macbeth', 'entities/thumbnails/hamish.png', 'entities/videos/hamish_s1e1.mp4', 21),
(105, 'Moulin Rouge', 'entities/thumbnails/moulinrouge.png', 'entities/videos/moulinrouge.mp4', 17),
(106, 'Hairspray', 'entities/thumbnails/hairspray.png', 'entities/videos/hairspray.mp4', 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `userName`, `email`, `password`) VALUES
(1, 'Katrina', 'Joy', 'trina', 'katrina.hitchcock@gmail.com', 'fb131bc57a477c8c9d068f1ee5622ac304195a77164ccc2d75d82dfe1a727ba8d674ed87f96143b2b416aacefb555e3045c356faa23e6d21de72b85822e39fdd'),
(2, 'Tim', 'Bradley', 'tim', 'tim@gmail.com', '22e7e9d85b7fe6004f7b9f3aa592ea9ec9ce098682e8192fa83785f1784c768d1d1ac3b8afcae88666f66aec24739ac133e9d4adc7506f1a5f1f6078cb27c674'),
(3, 'John', 'Sanders', 'john', 'john1234@gmail.com', '22e7e9d85b7fe6004f7b9f3aa592ea9ec9ce098682e8192fa83785f1784c768d1d1ac3b8afcae88666f66aec24739ac133e9d4adc7506f1a5f1f6078cb27c674');

-- --------------------------------------------------------

--
-- Table structure for table `videoProgress`
--

CREATE TABLE `videoProgress` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `finished` tinyint(4) NOT NULL DEFAULT 0,
  `dateModified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videoProgress`
--

INSERT INTO `videoProgress` (`id`, `userName`, `videoId`, `progress`, `finished`, `dateModified`) VALUES
(1, 'tim', 1144, 2, 0, '2020-07-27 17:40:35'),
(2, 'tim', 82, 0, 0, '2020-07-27 09:53:37'),
(3, 'tim', 80, 0, 0, '2020-07-27 11:22:01'),
(4, 'tim', 1261, 8, 1, '2020-07-28 17:48:42'),
(5, 'tim', 1145, 0, 0, '2020-07-27 16:43:05'),
(6, 'tim', 1168, 0, 0, '2020-07-27 16:43:09'),
(7, 'tim', 1169, 0, 0, '2020-07-27 16:43:14'),
(8, 'tim', 1166, 0, 0, '2020-07-27 16:43:18'),
(9, 'tim', 1179, 8, 0, '2020-07-27 16:50:46'),
(10, 'tim', 1177, 3, 0, '2020-07-27 16:50:41'),
(11, 'tim', 1167, 0, 0, '2020-07-27 16:50:49'),
(12, 'tim', 1146, 0, 0, '2020-07-27 17:40:40'),
(13, 'tim', 1147, 0, 1, '2020-07-27 18:01:45'),
(14, 'tim', 1148, 0, 1, '2020-07-27 18:03:15'),
(15, 'tim', 1149, 0, 1, '2020-07-27 18:04:22'),
(16, 'tim', 1731, 3, 0, '2020-07-27 19:23:26'),
(17, 'tim', 207, 3, 0, '2020-07-27 19:24:05'),
(18, 'tim', 209, 5, 0, '2020-07-27 19:38:24'),
(19, 'tim', 198, 0, 0, '2020-07-27 20:09:48'),
(20, 'tim', 1108, 0, 1, '2020-07-27 20:38:08'),
(21, 'tim', 1109, 0, 1, '2020-07-28 10:23:14'),
(22, 'tim', 1110, 6, 0, '2020-07-28 10:23:24'),
(23, 'tim', 1127, 3, 0, '2020-07-28 10:24:36'),
(24, 'tim', 1111, 0, 1, '2020-07-28 11:26:26'),
(25, 'tim', 685, 0, 0, '2020-07-28 17:37:32'),
(26, 'tim', 649, 14, 0, '2020-07-28 17:41:35'),
(27, 'tim', 1222, 9, 1, '2020-07-28 17:44:07'),
(28, 'tim', 675, 6, 0, '2020-07-28 17:48:18'),
(29, 'tim', 1221, 12, 0, '2020-07-29 07:38:27'),
(30, 'tim', 1934, 15, 1, '2020-08-06 12:54:44'),
(31, 'tim', 1935, 3, 1, '2020-08-06 12:56:22'),
(32, 'tim', 1936, 51, 0, '2020-08-06 13:00:27'),
(33, 'tim', 1881, 0, 0, '2020-08-06 11:57:49'),
(34, 'tim', 1939, 59, 0, '2020-08-06 12:32:49'),
(35, 'tim', 1938, 9, 0, '2020-08-06 12:23:12'),
(36, 'tim', 1940, 0, 1, '2020-08-06 13:35:36'),
(37, 'tim', 515, 0, 0, '2020-08-06 13:13:41'),
(38, 'tim', 558, 3, 0, '2020-08-06 13:22:35'),
(39, 'tim', 559, 0, 0, '2020-08-06 13:22:38'),
(40, 'tim', 1937, 6, 1, '2020-08-06 16:04:43'),
(41, 'tim', 1941, 0, 0, '2020-08-06 13:35:51'),
(42, 'tim', 585, 0, 0, '2020-08-06 13:36:43'),
(43, 'tim', 609, 3, 0, '2020-08-06 14:16:43'),
(44, 'tim', 1948, 0, 1, '2020-08-06 15:44:17'),
(45, 'tim', 1949, 6, 0, '2020-08-06 15:56:21'),
(46, 'tim', 1950, 0, 0, '2020-08-06 15:57:31'),
(47, 'tim', 1951, 0, 0, '2020-08-06 15:57:33'),
(48, 'tim', 1946, 17, 0, '2020-08-06 20:00:05'),
(49, 'tim', 1943, 6, 0, '2020-08-06 18:10:55'),
(50, 'tim', 1942, 0, 0, '2020-08-06 16:07:39'),
(51, 'tim', 17, 0, 0, '2020-08-06 17:56:17'),
(52, 'tim', 18, 3, 0, '2020-08-06 19:14:32'),
(53, 'tim', 29, 0, 0, '2020-08-06 17:56:25'),
(54, 'tim', 30, 0, 0, '2020-08-06 17:56:30'),
(55, 'tim', 1947, 3, 0, '2020-08-06 18:10:47'),
(56, 'tim', 1956, 12, 0, '2020-08-06 20:32:04'),
(57, 'tim', 1958, 3, 0, '2020-08-06 19:50:06'),
(58, 'tim', 1957, 0, 0, '2020-08-06 19:50:00'),
(59, 'tim', 1963, 0, 0, '2020-08-06 20:22:50'),
(60, 'tim', 1960, 14, 0, '2020-08-06 20:36:57'),
(61, 'tim', 1959, 16, 0, '2020-08-06 20:33:27'),
(62, 'tim', 1969, 0, 0, '2020-08-07 09:27:54'),
(63, 'tim', 1974, 0, 0, '2020-08-07 09:34:36'),
(64, 'tim', 1975, 0, 0, '2020-08-07 09:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT 0,
  `episode` int(11) DEFAULT 0,
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `thumbnail`, `isMovie`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(17, 'The One Where Monica Gets a Roommate', 'Monica and the gang introduce Rachel to the \"real world\" after she leaves her fiancé at the altar.', 'entities/videos/friends_s1e1.mp4\r\n', 'entities/thumbnails/friends_s1e1.png', 0, '2006-02-10', 6, '05:00', 1, 1, 1),
(18, 'The One with the Sonogram at the End', 'Ross finds out his ex-wife is pregnant. Rachel returns her engagement ring to Barry. Monica becomes stressed when her and Ross\'s parents come to visit.', 'entities/videos/friends_s1e2.mp4', 'entities/thumbnails/friends_s1e2.png', 0, '2002-12-09', 5, '05:00', 1, 2, 1),
(29, 'The One with Ross\'s New Girlfriend', 'Rachel waits for Ross at the airport, unaware he has a new girlfriend. Meanwhile, Chandler has a frightening experience with Joey\'s tailor, and Phoebe gives Monica a bad haircut.', 'entities/videos/friends_s2e1.mp4', 'entities/thumbnails/friends_s2e1.png', 0, '2014-06-11', 2, '05:00', 2, 1, 1),
(30, 'The One with the Breast Milk', 'Monica goes shopping with Julie and tries to keep it a secret from Rachel. Ross is grossed out by Carol\'s breast milk. At his day job, Joey competes with a fellow cologne spritzer.', 'entities/videos/friends_s2e2.mp4', 'entities/thumbnails/friends_s2e2.png', 0, '2018-02-26', 5, '05:00', 2, 2, 1),
(41, 'The One with the Princess Leia Fantasy', 'Monica suffers from insomnia and depression following her breakup with Richard. Joey struggles to accept Chandler and Janice\'s relationship. Ross confides in Rachel about one of his fantasies.', 'entities/videos/friends_s3e1.mp4', 'entities/thumbnails/friends_s3e1.png', 0, '2004-08-19', 0, '05:00', 3, 1, 1),
(42, 'The One Where No One\'s Ready', 'A stressed Ross desperately and insistently tries to get the rest of the gang ready for a black tie event at the museum, while Joey and Chandler clash over personal belongings and personal space.', 'entities/videos/friends_s3e2.mp4', 'entities/thumbnails/friends_s3e2.png', 0, '2007-09-27', 0, '05:00', 3, 2, 1),
(1934, 'The Black Prince', 'The Melbourne gangland wars start the night the gangster Alphonse Gangitano, \"The Black Prince of Lygon Street\", and one of the legendary Carlton Crew gang, murders a low-life crim named Greg Workman at a St Kilda party.', 'entities/videos/underbelly_s1e1.mp4', 'entities/thumbnails/underbelly_s1e1.png', 0, '2006-01-01', 9, '05:00', 1, 1, 100),
(1935, 'The Sorcerer\'s Apprentice', 'Alphonse Gangitano might have got away with murder but police officer Steve Owen is determined he\'ll pay for starting a riot in a nightclub where many innocent people are hurt.', 'entities/videos/underbelly_s1e2.mp4', 'entities/thumbnails/underbelly_s1e2.png', 0, '2008-01-01', 8, '05:00', 1, 2, 100),
(1936, 'I Still Pray', 'Topless waitress Tracey Seymour\'s turbulent love life with gangsters leaves her bruised and confused. She decides to get out of the underworld, turn over a new leaf and start afresh, But her past comes back to haunt her.', 'entities/videos/underbelly_s1e3.mp4\r\n', 'entities/thumbnails/underbelly_s1e3.png', 0, '2008-01-01', 5, '05:00', 1, 3, 100),
(1937, 'Aussie Bob & Kiwi Terry', 'Drug dealers Terry Clark and Robert Trimbole form a partnership in the heroin trade.', 'entities/videos/underbelly_s2e1.mp4\r\n', 'entities/thumbnails/underbelly_s2e1.png', 0, '2008-01-01', 6, '05:00', 2, 1, 100),
(1938, 'Cocksure', 'The Melbourne drug world is in uproar - the city is awash with cheap eckies and none of the established dealers knows who\'s undercutting them. Tempers flare, accusations fly and the blood flows.', 'entities/videos/underbelly_s1e4.mp4\r\n', 'entities/thumbnails/underbelly_s1e4.png', 0, '2008-01-01', 3, '05:00', 1, 4, 100),
(1939, 'The Good, the Bad and the Ugly', 'With Jason in gaol for the nightclub riot, Mark Moran takes control of the family drug business and attempts to manoeuvre drug baron Tony Mokbel out of the game.', 'entities/videos/underbelly_s1e5.mp4', 'entities/thumbnails/underbelly_s1e5.png', 0, '2008-01-01', 3, '05:00', 1, 5, 100),
(1940, 'Luv U 4 Eva', 'A charming thug, Andrew \'Benji\' Veniaman, is hired to execute Mark Moran\'s killer. But when Benji is insulted by the Carton Crew, he forms a dangerous friendship with their rival, Carl Williams.', 'entities/videos/underbelly_s1e6.mp4', 'entities/thumbnails/underbelly_s1e6.png', 0, '2008-01-01', 7, '05:00', 1, 6, 100),
(1941, 'Bad Habits', 'Detective Warwick Mobbs suspects police corruption as his efforts to solve Mackay\'s murder are constantly frustrated.', 'entities/videos/underbelly_s2e2.mp4', 'entities/thumbnails/underbelly_s2e2.png', 0, '2008-01-01', 5, '05:00', 2, 2, 100),
(1942, 'Brave New World', 'Allison Dine arrives in Sydney and begins working for Clark as a drug courier.', 'entities/videos/underbelly_s2e3.mp4\r\n', 'entities/thumbnails/underbelly_s2e3.png\r\n', 0, '2008-01-01', 3, '05:00', 2, 3, 100),
(1943, 'Business as Usual', 'The Kanes are now protectors for Trimbole\'s dealers in Melbourne.', 'entities/videos/underbelly_s2e4.mp4', 'entities/thumbnails/underbelly_s2e4.png', 0, '2008-01-01', 3, '05:00', 2, 4, 100),
(1946, 'A Tale of Two Hitmen', 'Chuck Bennett goes on trial for Les Kane\'s death, but in the absence of a body is acquitted.', 'entities/videos/underbelly_s2e5.mp4', 'entities/thumbnails/underbelly_s2e5.png\r\n', 0, '2008-01-01', 9, '05:00', 2, 5, 100),
(1947, 'Stranded', 'Clark is arrested on a minor charge extradited to New Zealand to face drug charges.', 'entities/videos/underbelly_s2e6.mp4', 'entities/thumbnails/underbelly_s2e6.png', 0, '2008-01-01', 2, '05:00', 2, 6, 100),
(1948, 'Ashes to Ashes', 'Tessa\'s ex-boyfriend tells her about a conspiracy after a body explodes from the sea.', 'entities/videos/murdercall_s1e1.mp4', 'entities/thumbnails/murdercall_s1e1.png', 0, '1997-01-01', 7, '05:00', 1, 1, 101),
(1949, 'The Burial', 'A party game goes awry when a man is found dead buried up to his neck in the sand.', 'entities/videos/murdercall_s1e2.mp4', 'entities/thumbnails/murdercall_s1e2.png', 0, '1997-01-01', 5, '05:00', 1, 2, 101),
(1950, 'Dared to Death', 'When a professional stuntman is found dead, hanging in a harness outside the window of his apartment, Steve and Tessa must determine whether it was an accident, suicide or murder.', 'entities/videos/murdercall_s2e1.mp4', 'entities/thumbnails/murdercall_s2e1.png', 0, '1997-01-01', 2, '05:00', 2, 1, 101),
(1951, 'Many Unhappy Returns', 'Steve and Tessa rush to solve the crime of a man who is murdered on his 50th birthday.', 'entities/videos/murdercall_s2e2.mp4', 'entities/thumbnails/murdercall_s2e2.png', 0, '1997-01-01', 2, '05:00', 2, 2, 101),
(1952, 'Dead Offerings', 'Tessa and Steve investigate when a young blind man is found dead in a swimming pool.', 'entities/videos/murdercall_s1e1.mp4', 'entities/thumbnails/murdercall_s1e1.png', 0, '1999-01-01', 0, '05:00', 3, 1, 101),
(1953, 'Evil Chances', 'A sports teacher is found impaled at a boarding school and is found by Fisk\'s older sister. Tessa and Steve investigate, but Fisk is frustrated when his sister is interviewed, and he is excluded.', 'entities/videos/murdercall_s1e2.mp4\r\n', 'entities/thumbnails/murdercall_s1e2.png\r\n', 0, '1999-01-01', 0, '05:00', 3, 2, 101),
(1954, 'Into the Mystic', 'Ambitious schoolkid John Ibrahim arrives in Kings Cross and saves \"Hammer\" from being clobbered by drunks, only to be stabbed himself in a later brawl.', 'entities/videos/underbelly_s1e1.mp4', 'entities/thumbnails/underbelly_s1e1.png', 9, '2010-01-01', 0, '05:00', 3, 1, 100),
(1955, 'The Crucible', 'With help from drug king Bill Bayeh and his crew, Det. Sergeant Jim Egan and Trevor Haken devise a plan to swindle money from the Federal Police.', 'entities/videos/underbelly_s1e1.mp4', 'entities/thumbnails/underbelly_s1e1.png', 0, '2010-01-01', 0, '05:00', 3, 2, 100),
(1956, 'In the Hands of Giants', 'In this pilot episode, the team investigates a suicide. While on the case, the team uncover links between the deaths of children from five separate incidents to a mystery arsonist and murderer.', 'entities/videos/cityhomicide_s1e1.mp4', 'entities/thumbnails/cityhomicide_s1e1.png', 0, '2007-01-01', 4, '05:00', 1, 1, 102),
(1957, 'In the Hands of Giants', 'The team continues work on the case, where they discover a link between the deaths of children from five separate incidents to an arsonist and murderer.', 'entities/videos/cityhomicide_s1e2.mp4', 'entities/thumbnails/cityhomicide_s1e2.png', 0, '2007-01-01', 2, '05:00', 1, 2, 102),
(1958, 'Lie Down with Dogs', 'The detectives investigate an armed robber who was found dead in a crypt at the cemetery.', 'entities/videos/cityhomicide_s1e3.mp4', 'entities/thumbnails/cityhomicide_s1e3.png', 0, '2007-01-01', 3, '05:00', 1, 3, 102),
(1959, 'Thicker Than Water', 'The unit investigates a murder of a middle aged woman in a dark alley. While the investigations dig into her family history, Stanley is confronted with his own past.', 'entities/videos/cityhomicide_s2e1.mp4', 'entities/thumbnails/cityhomicide_s2e1.png', 0, '2007-01-01', 7, '05:00', 2, 1, 102),
(1960, 'Somersaulting Dogs', 'A teenage boy is found hanging in the girls\' toilets at a local high school. Did bullying push him to suicide? When Homicide investigate they step into a community that is ready to explode.', 'entities/videos/cityhomicide_s2e2.mp4', 'entities/thumbnails/cityhomicide_s2e2.png', 0, '2007-01-01', 4, '05:00', 2, 2, 102),
(1961, 'The Money Shot', 'A regular day in Homicide. A murder. A crime scene. An investigation. Except that - Duncan Freeman is back. Walking into Homicide as if nothing had happened. Healed. Over the trauma of his attack. Or is he?', 'entities/videos/cityhomicide_s3e1.mp4', 'entities/thumbnails/cityhomicide_s3e1.png', 0, '2007-01-01', 0, '05:00', 3, 1, 102),
(1962, 'Meet and Greet', 'Allie Kingston joins the homicide squad. Samual Bowler is found tied to a bed. He was beaten, raped and stabbed to death .', 'entities/videos/cityhomicide_s3e2.mp4', 'entities/thumbnails/cityhomicide_s3e2.png', 0, '2007-01-01', 0, '05:00', 3, 2, 102),
(1963, 'In House', 'The detectives are taken hostage in their own offices by a desperate father determined to re-open the investigation of a murder for which his son was convicted.', 'entities/videos/cityhomicide_s2e3.mp4', 'entities/thumbnails/cityhomicide_s2e3.png', 0, '2007-01-01', 6, '05:00', 2, 3, 102),
(1964, '1.1', 'When a mysterious accident lands his dad in hospital, Barnaby Walker decides he\'s the man to sort out the family\'s cash-strapped business but when he shells out money on a looted treasure it turns his life upside down.', 'entities/videos/bountyhunters_s1e1.mp4', 'entities/thumbnails/bountyhunters_s1e1.png', 0, '2017-01-01', 0, '05:00', 1, 1, 103),
(1965, '1.2', 'Concerned for the safety of her family Nina moves them in with the Walkers. Barnaby is left floundering as more of Nigel\'s secrets are revealed. The police inch closer to the criminals that left Smith dead.', 'entities/videos/bountyhunters_s1e2.mp4', 'entities/thumbnails/bountyhunters_s1e2.png', 0, '2017-01-01', 0, '05:00', 1, 2, 103),
(1966, '2.1', 'Stuck in the desert with a drug lord in their car boot, Barnaby and Nina are in a real mess. The pair are even more worried when they learn that the Sherman twins have put a price on their heads.', 'entities/videos/bountyhunters_s2e1.mp4', 'entities/thumbnails/bountyhunters_s2e1.png', 0, '2017-01-01', 0, '05:00', 2, 1, 103),
(1967, '2.2', 'Nina and Barnaby attempt to escape from Mexico. With no money and both the drug cartel and the Sherman Brothers\' own bounty hunter on their tail, they need all their cunning and wit to make it safely back to England.', 'entities/videos/bountyhunters_s2e2.mp4', 'entities/thumbnails/bountyhunters_s2e2.png', 0, '2017-01-01', 0, '05:00', 2, 2, 103),
(1968, '2.1', 'Stuck in the desert with a drug lord in their car boot, Barnaby and Nina are in a real mess. The pair are even more worried when they learn that the Sherman twins have put a price on their heads.', 'entities/videos/bountyhunters_s1e1.mp4', 'entities/thumbnails/bountyhunters_s1e1.png', 0, '2017-01-01', 0, '05:00', 3, 1, 103),
(1969, 'The Great Lochdubh Salt Robbery', 'Hamish investigates a salt theft from the grocery store, and a missing wife abuser.', 'entities/videos/hamish_s1e1.mp4', 'entities/thumbnails/hamish_s1e1.png', 0, '1996-01-01', 1, '05:00', 1, 1, 104),
(1970, 'A Pillar of the Community', 'New resident Vicky Jeffreys takes over Lochdubh Day planning and bullies everyone into promoting Scottish culture.', 'entities/videos/hamish_s1e2.mp4', 'entities/thumbnails/hamish_s1e2.png', 0, '1996-01-01', 0, '05:00', 1, 2, 104),
(1971, 'A Perfectly Simple Explanation', 'A religious group declares that Hamish is the devil, leading Hamish to investigate. What he discovers is more complex than he imagined. On the personal front, Alex and Hamish begin cohabitating.', 'entities/videos/hamish_s2e1.mp4', 'entities/thumbnails/hamish_s2e1.png', 0, '1996-01-01', 0, '05:00', 2, 1, 104),
(1972, 'The Honourable Policeman', 'Local laird Roddy MacLean returns to the village with his glamorous intended Serena St Claire,and asks Hamish to be the best man at their wedding. Hamish has his doubts as to whether the bride is genuine or merely a gold digger but has further woman trouble trying to cope with new constable Anne Patterson,whose interest in him seems to go beyond the professional.', 'entities/videos/hamish_s3e1.mp4', 'entities/thumbnails/hamish_s3e1.png', 0, '1996-01-01', 0, '05:00', 3, 1, 104),
(1973, 'In Search of a Rose', 'Barney Meldon seeks to provide a new,money-making visitor attraction for the village - a whale-watching trip, using fiberglass whales, but the whole enterprise ends in disaster and a distraught Barney suspects his wife Agnes of having a fling with handsome newcomer Gavin Robb. When a man disappears and Lachie Jr. starts dredging up cattle cake from the sea, Hamish puts on his diving apparatus to investigate in the deep.', 'entities/videos/hamish_s2e2.mp4', 'entities/thumbnails/hamish_s2e2.png', 0, '1996-01-01', 0, '05:00', 2, 2, 104),
(1974, 'Mouline Rouge', 'A poet falls for a beautiful courtesan whom a jealous duke covets.', 'entities/videos/moulinrouge.mp4', 'entities/thumbnails/moulinrouge.png', 1, '2001-01-01', 3, '05:00', 0, 0, 105),
(1975, 'Hairspray', 'Pleasantly plump teenager Tracy Turnblad teaches 1962 Baltimore a thing or two about integration after landing a spot on a local TV dance show.', 'entities/videos/hairspray.mp4', 'entities/thumbnails/hairspray.png', 1, '2007-01-01', 1, '05:00', 0, 0, 106);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videoProgress`
--
ALTER TABLE `videoProgress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videoProgress`
--
ALTER TABLE `videoProgress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1976;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
