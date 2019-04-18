-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 11:10 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-1434-2018-7', 'Pax Indica', 'Shashi Tharoor', 'pax.jpg', 'The book is fascinating and one cannot think to put it down, once started. Shashi Tharoor takes us on an arduous journey, comprehensively explaining each theme. The book is exceptional in its own way, and that\'s not a surprise as the writer is no one else than under-secretary-general of the United Nations.', '30.00', 1),
('978-0-321-94786-4', 'Half GirlFriend', 'Chetan Bhagat', 'halfgf.jpg', 'Chetan Bhagat, who has been slapped with Rs 1 crore defamation suit, has denied that \"Half Girlfriend\" has any reference to the family of erstwhile princely state of Dumraon in Bihar. The author said there was some \"misunderstanding\" as his book is a work of fiction', '20.00', 7),
('978-0-7303-1474-9', 'How to Stop Worrying and Start Living', 'Dale Carnegie', 'how.jpg', 'If worry fills up your mind and you end up struggling to conquer it, this book is all you need!\r\nâ€œThe secret of being miserable \r\nis to have the leisure to bother about \r\nwhether you are happy or not.â€\r\nFrom the fundamental facts that one must know about worry to the techniques in analyzing it, this book introduces ways to prevent fatigue and worry and cultivate a mental attitude that will bring peace and happiness. it offers insights on how to break the worry habit and brings for you not only a magic formula for solving worry situations but a way to conquer it altogether. \r\nA result of his own experiences and realizations, Dale Carnegieâ€™s How to Stop Worrying and Start Living has inspired many and helped them triumph over their worries. with timeless practical advice, this classic bestseller holds the power to change your future.', '88.00', 7),
('978-1-328-91124-7', 'Friday Black', 'Nana Kwame Adjei-Brenyah', 'black.jpg', 'Friday Black is the 2018 debut book by author Nana Kwame Adjei-Brenyah. Set in a dystopian near-future of twisted prosaic settings, the collection of short stories explores themes surrounding black identity as it relates to a range of contemporary social issues. The book enjoyed an overall positive reception, including the naming of Adjei-Brenyah as one of the \"5 Under 35 Authors\" for 2018, by the National Book Foundation.', '35.00', 4),
('978-1-49192-706-0', 'Girl in Room 105', 'Chetan Bhagat', 'the_girl.jpg', 'The Girl in Room 105 is the eighth fictional novel and the tenth overall book written by the Indian author Chetan Bhagat.[1][2] The book became a bestseller based on pre-order sales alone.', '44.00', 8),
('978-1-5098-7135-3', 'Children of Blood and Bone', 'Adeyemi Tomi', 'blood.jpg', 'Zelie is a diviner who lives with her brother Tzain and father. Her mother was killed in an attempt to wipe out all majis from Orisha. Shortly after her graduation, the guards arrive to demand tax from her family. This forces her to travel to the city to come up with the money which is when she bumps into princess Amari, who herself has stolen a powerful scroll that had the potential to restore magic to the kingdom. However, Amari also happens to be the daughter of the king who orchestrated the raid. What will happen to Zelie now when they cross paths? Will she be killed by the princess just like her mother or will they team up against the evil forces? Buy Children of Blood and Bone online and unravel the mystery and action of this fantasy book.', '100.00', 3),
('978-1-8440-8447-0', 'The Thorn Birds', 'McCullough Colleen', 'birds.jpg', 'Based in the Australian sheep country, this book tells the story of three generations of one family. It is centred around Meggie Cleary who is in love with a man she can never have. Her love haunts her throughout her life, and in bleak irony, she herself is the object of Ralph de Bricassartâ€™s attentions. Ralph is a humble parish priest who becomes a part of the innermost circles of the Vatican. Ralph can never consummate his feelings for Meggie because of his affiliation with the Church and his vow of celibacy. Yet, thoughts of her continue to seduce him constantly. The story of their doomed love is a haunting tale of romance, tragedy and one familyâ€™s fortunes and misfortunes over a period of forty years.', '20.00', 5),
('978-8-1722-3563-5', 'Eleven Minutes', 'Paulo Coelho', 'eleven.jpg', 'Eleven Minutes is a 2003 novel by Brazilian novelist Paulo Coelho that recounts the experiences of a young Brazilian prostitute and her journey to self-realization through sexual experience.', '60.00', 6),
('978-8-1840-0569-1', 'Getting India Back on Track', 'Bibek Debroy', 'back.jpg', 'Getting India Back on Track is a book for how Indian policymakers can help India return to the path of sustained economic growth and development. India is fallen behind from the amazing growth rates it enjoyed in the beginning of the 21st century. To make this happen, the government of India has to bring about a lot of reforms and reflect on its policy choices across a wide range of issues. This book coincides with the 2014 Indian elections to bring up a public debate on the reforms the new government should pursue in order for them to bring India back on the path of high growth. The book comprises of seventeen concise and focused memoranda, which will offer the readers a clear picture of Indiaâ€™s future.', '24.00', 2),
('978-9-3513-6080-3', 'Beyond Religion', 'Lama Dalai', 'beyond.jpg', 'Beyond Religion: Ethics for a Whole World is a 2011 book by 14th Dalai Lama. It is about Secular ethics use in our everyday life. Those are ethics that can be used by both religious and non-religious people. There are many suggestions about getting rid of destructive emotions and helping other people', '28.00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'cfgvhb', 'gvhbnn', 'bjanksnbb', '444122', 'jknsnmxn'),
(5, 'admin', 'gvhbnn', 'de ', '', ''),
(6, '  bfd', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(7, 'admin', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(8, 'dtfgv', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(9, 'xgfv', 'xgfvb ', 'Jalandhar', '542', ''),
(10, '', '', '', '', ''),
(11, 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '1452121', 'india'),
(12, 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(13, 'admin', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(14, 'admin', 'hbcj', 'bjanksnbb', '144411', 'india'),
(15, 'admin', 'gvhbnn', 'de ', '121445', 'india'),
(16, 'ff', 'gfgf', 'gfgg', '111111', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 7, '20.00', '2019-04-09 14:36:46', 'admin', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(2, 8, '108.00', '2019-04-09 14:38:20', 'dtfgv', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(10, 9, '28.00', '2019-04-09 17:15:26', 'xgfv', 'xgfvb', 'Jalandhar', '542', ''),
(11, 10, '0.00', '2019-04-09 17:15:27', '', '', '', '', ''),
(12, 11, '65.00', '2019-04-09 17:17:13', 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '1452121', 'india'),
(13, 12, '20.00', '2019-04-10 00:55:18', 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(14, 7, '20.00', '2019-04-10 01:13:45', 'admin', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(15, 13, '78.00', '2019-04-10 02:11:20', 'admin', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(16, 14, '72.00', '2019-04-10 04:10:07', 'admin', 'hbcj', 'bjanksnbb', '144411', 'india'),
(17, 15, '84.00', '2019-04-10 04:13:05', 'admin', 'gvhbnn', 'de', '121445', 'india'),
(18, 16, '88.00', '2019-04-10 05:19:47', 'ff', 'gfgf', 'gfgg', '111111', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 1),
(6, '978-0-7303-1474-9', '88.00', 2),
(7, '978-1-611-97206-1', '0.00', 1),
(7, '978-0-321-94786-4', '20.00', 20),
(8, '978-0-321-94786-4', '20.00', 1),
(9, '978-0-7303-1474-9', '88.00', 1),
(9, '978-0-7303-1484-4', '20.00', 1),
(10, '978-9-3513-6080-3', '28.00', 1),
(12, '978-1-328-91124-7', '35.00', 1),
(12, '978-0-1434-2018-7', '30.00', 1),
(13, '978-1-8440-8447-0', '20.00', 1),
(1, '978-0-321-94786-4', '20.00', 1),
(15, '978-9-3513-6080-3', '28.00', 1),
(15, '978-0-1434-2018-7', '30.00', 1),
(15, '978-1-8440-8447-0', '20.00', 1),
(16, '978-9-3513-6080-3', '28.00', 1),
(16, '978-1-49192-706-0', '44.00', 1),
(17, '978-8-1840-0569-1', '24.00', 1),
(17, '978-8-1722-3563-5', '60.00', 1),
(18, '978-8-1840-0569-1', '24.00', 2),
(18, '978-0-321-94786-4', '20.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Penguin Random House India'),
(2, 'Penguin'),
(3, 'Macmillan Children\'s Books'),
(4, 'Mariner Books'),
(5, 'Hachette'),
(6, 'Harper'),
(7, 'Chetan Bhagat'),
(8, 'Westland');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
