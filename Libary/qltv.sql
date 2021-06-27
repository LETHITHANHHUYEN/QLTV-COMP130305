-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 03:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qltv`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `book_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`book_id`, `author_name`) VALUES
('60a8a5fb585c6a78469fad1f', 'Peter Armstrong'),
('60a8a5fc585c6a78469fad20', 'Peter Armstrong'),
('60a8a5fc585c6a78469fad21', 'Christian Crumlish'),
('60a8a5fc585c6a78469fad21', 'Levi Asher'),
('60a8a5fc585c6a78469fad22', 'Jamil Azher'),
('60a8a5fd585c6a78469fad23', 'Donald Belcham'),
('60a8a5fd585c6a78469fad23', 'Kyle Baley'),
('60a8a5fd585c6a78469fad24', 'Kyle Banker'),
('60a8a5fd585c6a78469fad25', 'Michael J. Barlotta'),
('60a8a5fe585c6a78469fad26', 'Michael Barlotta'),
('60a8a5fe585c6a78469fad27', 'Jason R. Weiss'),
('60a8a5fe585c6a78469fad27', 'Michael J. Barlotta'),
('60a8a5fe585c6a78469fad28', 'Jon Barrilleaux'),
('60a8a5fe585c6a78469fad29', 'Christian Bauer'),
('60a8a5fe585c6a78469fad29', 'Gavin King'),
('60a8a5ff585c6a78469fad2a', 'Christian Bauer'),
('60a8a5ff585c6a78469fad2a', 'Gavin King'),
('60a8a5ff585c6a78469fad2b', 'Christian Bauer'),
('60a8a5ff585c6a78469fad2b', 'Gavin King'),
('60a8a5ff585c6a78469fad2c', 'Shawn Bayern'),
('60a8a600585c6a78469fad2d', 'Brandon Goodin'),
('60a8a600585c6a78469fad2d', 'Clinton Begin'),
('60a8a600585c6a78469fad2d', 'Larry Meadors'),
('60a8a600585c6a78469fad2e', 'Douglas W. Bennett'),
('60a8a600585c6a78469fad2f', 'Emmanuel Bernard'),
('60a8a600585c6a78469fad2f', 'John Griffin'),
('60a8a601585c6a78469fad30', 'Bear Bibeault'),
('60a8a601585c6a78469fad30', 'Yehuda Katz'),
('60a8a601585c6a78469fad31', 'Bear Bibeault'),
('60a8a601585c6a78469fad31', 'Yehuda Katz'),
('60a8a601585c6a78469fad32', 'Kenneth P. Birman'),
('60a8a601585c6a78469fad33', 'David A. Black'),
('60a8a602585c6a78469fad34', 'David A. Black'),
('60a8a602585c6a78469fad35', 'Paul A. Boag'),
('60a8a602585c6a78469fad36', 'Daniele Bochicchio'),
('60a8a602585c6a78469fad36', 'Marco De Sanctis'),
('60a8a602585c6a78469fad36', 'Stefano Mostarda'),
('60a8a603585c6a78469fad37', 'Anthony Briggs'),
('60a8a603585c6a78469fad38', 'Richard Brooks'),
('60a8a603585c6a78469fad39', 'Barry J. Shepherd'),
('60a8a603585c6a78469fad39', 'C. Wayne Brown'),
('60a8a604585c6a78469fad3a', 'Adele Goldberg'),
('60a8a604585c6a78469fad3a', 'Margaret M. Burnett'),
('60a8a604585c6a78469fad3a', 'Ted G. Lewis'),
('60a8a604585c6a78469fad3b', 'Bear P. Cahill'),
('60a8a604585c6a78469fad3c', 'Christopher Allen'),
('60a8a604585c6a78469fad3c', 'Shannon Appelcline'),
('60a8a604585c6a78469fad3d', 'Chad A. Campbell'),
('60a8a604585c6a78469fad3d', 'John Stockton'),
('60a8a605585c6a78469fad3e', 'Naomi R. Ceder'),
('60a8a605585c6a78469fad3f', 'Tom Cervenka'),
('60a8a605585c6a78469fad40', 'Robert Chapman'),
('60a8a606585c6a78469fad41', 'editors'),
('60a8a606585c6a78469fad41', 'William R. Cockayne and Michael Zyda'),
('60a8a606585c6a78469fad42', 'Andy Piper'),
('60a8a606585c6a78469fad42', 'Arnaud Cogoluegnes'),
('60a8a606585c6a78469fad42', 'Thierry Templier'),
('60a8a606585c6a78469fad43', 'Rod Colledge'),
('60a8a607585c6a78469fad44', 'Charlie Collins'),
('60a8a607585c6a78469fad44', 'Matthias Kaeppler'),
('60a8a607585c6a78469fad44', 'Michael D. Galpin'),
('60a8a607585c6a78469fad45', 'Damian Conway'),
('60a8a607585c6a78469fad46', 'Charles Collins'),
('60a8a607585c6a78469fad46', 'Robert Cooper'),
('60a8a607585c6a78469fad47', 'Dave Crane'),
('60a8a607585c6a78469fad47', 'Eric Pascarello with Darren James'),
('60a8a608585c6a78469fad48', 'Chris Gray'),
('60a8a608585c6a78469fad48', 'Dave Crane'),
('60a8a608585c6a78469fad48', 'Joe Walker'),
('60a8a608585c6a78469fad48', 'Jord Sonneveld and Bear Bibeault with Ted Goddard'),
('60a8a608585c6a78469fad48', 'Ram Venkataraman'),
('60a8a608585c6a78469fad49', 'Bear Bibeault with Tom Locke'),
('60a8a608585c6a78469fad49', 'Dave Crane'),
('60a8a608585c6a78469fad4a', 'Chris Richardson'),
('60a8a609585c6a78469fad4b', 'David Cross'),
('60a8a609585c6a78469fad4c', 'Rob Crowther'),
('60a8a609585c6a78469fad4d', 'Dan Allen'),
('60a8a609585c6a78469fad4e', 'Eelco Hillenius'),
('60a8a609585c6a78469fad4e', 'Martijn Dashorst'),
('60a8a60a585c6a78469fad4f', 'Jeff Davis'),
('60a8a60a585c6a78469fad50', 'Chad Michael Davis'),
('60a8a60a585c6a78469fad50', 'Donald Brown'),
('60a8a60a585c6a78469fad50', 'Scott Stanlick'),
('60a8a60a585c6a78469fad51', 'Galina Landres'),
('60a8a60a585c6a78469fad51', 'Isidor Rivera'),
('60a8a60a585c6a78469fad51', 'Prakash Sankaran'),
('60a8a60a585c6a78469fad51', 'Tony DeLia'),
('60a8a60b585c6a78469fad52', 'Alan Dennis'),
('60a8a60b585c6a78469fad53', 'Hanumant Deshmukh'),
('60a8a60b585c6a78469fad53', 'Jignesh Malavia'),
('60a8a60b585c6a78469fad53', 'Matthew Scarpino'),
('60a8a60b585c6a78469fad54', 'Ken Rimple'),
('60a8a60b585c6a78469fad54', 'Srini Penchikala'),
('60a8a60b585c6a78469fad55', 'Jos Dirksen'),
('60a8a60c585c6a78469fad56', 'Dave Johnson'),
('60a8a60c585c6a78469fad57', 'Clayton Donley'),
('60a8a60c585c6a78469fad58', 'David Dossot'),
('60a8a60c585c6a78469fad58', 'John D\'Emic'),
('60a8a60d585c6a78469fad59', 'Stephen C. Drye'),
('60a8a60d585c6a78469fad59', 'William C. Wake'),
('60a8a60d585c6a78469fad5a', 'Vikram Goyal'),
('60a8a60d585c6a78469fad5b', 'Vikram Goyal'),
('60a8a60e585c6a78469fad5c', 'Vikram Goyal'),
('60a8a60e585c6a78469fad5d', 'Vikram Goyal'),
('60a8a60e585c6a78469fad5e', 'Vikram Goyal'),
('60a8a60e585c6a78469fad5f', 'Vikram Goyal'),
('60a8a60f585c6a78469fad60', 'Vikram Goyal'),
('60a8a60f585c6a78469fad61', 'Vikram Goyal'),
('60a8a60f585c6a78469fad62', 'Vikram Goyal'),
('60a8a610585c6a78469fad63', 'Vikram Goyal'),
('60a8a610585c6a78469fad64', 'Vikram Goyal'),
('60a8a610585c6a78469fad65', 'Vikram Goyal'),
('60a8a611585c6a78469fad66', 'John E. Grayson'),
('60a8a611585c6a78469fad67', 'Fergal Grimes'),
('60a8a611585c6a78469fad68', 'Glen Smith'),
('60a8a611585c6a78469fad68', 'Peter Ledbrook'),
('60a8a612585c6a78469fad69', 'Steven Gutz'),
('60a8a612585c6a78469fad6a', 'David Savage'),
('60a8a612585c6a78469fad6a', 'Karl Pauls'),
('60a8a612585c6a78469fad6a', 'Richard S. Hall'),
('60a8a612585c6a78469fad6a', 'Stuart McCulloch'),
('60a8a612585c6a78469fad6b', 'Adam Tacy'),
('60a8a612585c6a78469fad6b', 'Robert Hanson'),
('60a8a613585c6a78469fad6c', 'Daryl Harms'),
('60a8a613585c6a78469fad6c', 'Kenneth McDonald'),
('60a8a613585c6a78469fad6d', 'Yvonne M. Harryman'),
('60a8a613585c6a78469fad6e', 'Erik Hatcher'),
('60a8a613585c6a78469fad6e', 'Steve Loughran'),
('60a8a613585c6a78469fad6f', 'Erik Hatcher'),
('60a8a613585c6a78469fad6f', 'Otis Gospodnetic'),
('60a8a614585c6a78469fad70', 'Erik Hatcher'),
('60a8a614585c6a78469fad70', 'Michael McCandless'),
('60a8a614585c6a78469fad70', 'Otis Gospodnetic'),
('60a8a614585c6a78469fad71', 'Tim Hatton'),
('60a8a614585c6a78469fad72', 'Tim Hatton'),
('60a8a615585c6a78469fad73', 'Tim Hatton'),
('60a8a615585c6a78469fad74', 'Brian H. Prince'),
('60a8a615585c6a78469fad74', 'Chris Hay'),
('60a8a615585c6a78469fad75', 'Balaji D Loganathan'),
('60a8a615585c6a78469fad75', 'Vikas Hazrati'),
('60a8a616585c6a78469fad76', 'Jason Bock'),
('60a8a616585c6a78469fad76', 'Kevin Hazzard'),
('60a8a616585c6a78469fad77', 'David Sean Taylor'),
('60a8a616585c6a78469fad77', 'Peter Fischer'),
('60a8a616585c6a78469fad77', 'Richard Jacob'),
('60a8a616585c6a78469fad77', 'Stefan Hepper'),
('60a8a616585c6a78469fad77', 'Stephan Hesmer'),
('60a8a616585c6a78469fad78', 'Jack Herrington'),
('60a8a616585c6a78469fad79', 'Paul S. Hethmon');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pagec` int(11) DEFAULT NULL,
  `thumbnailUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortDescription` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longDescription` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `pagec`, `thumbnailUrl`, `shortDescription`, `longDescription`, `status`) VALUES
('60a8a5fb585c6a78469fad1f', 'Flexible Rails', 592, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/armstrong.jpg', '\"Flexible Rails created a standard to which I hold other technical books. You definitely get your money\'s worth.\"', NULL, 'Available'),
('60a8a5fc585c6a78469fad20', 'Hello! Flex 4', 258, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/armstrong3.jpg', 'Hello! Flex 4 progresses through 26 self-contained examples selected so you can progressively master Flex. They vary from small one-page apps, to a 3D rotating haiku, to a Connect Four-like game. And in the last chapter you\'ll learn to build a full Flex application called SocialStalkr   a mashup that lets you follow your friends by showing their tweets on a Yahoo map.', NULL, 'Available'),
('60a8a5fc585c6a78469fad21', 'Coffeehouse', 316, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/asher.jpg', 'Coffeehouse is an anthology of stories, poems and essays originally published on the World Wide Web.', NULL, 'Available'),
('60a8a5fc585c6a78469fad22', 'Team Foundation Server 2008 in Action', 344, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/azher.jpg', '', NULL, 'Available'),
('60a8a5fd585c6a78469fad23', 'Brownfield Application Development in .NET', 550, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/baley.jpg', 'Brownfield Application Development in .Net shows you how to approach legacy applications with the state-of-the-art concepts, patterns, and tools you\'ve learned to apply to new projects. Using an existing application as an example, this book guides you in applying the techniques and best practices you need to make it more maintainable and receptive to change.', NULL, 'Unavailable'),
('60a8a5fd585c6a78469fad24', 'MongoDB in Action', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/banker.jpg', 'MongoDB In Action is a comprehensive guide to MongoDB for application developers. The book begins by explaining what makes MongoDB unique and describing its ideal use cases. A series of tutorials designed for MongoDB mastery then leads into detailed examples for leveraging MongoDB in e-commerce, social networking, analytics, and other common applications.', NULL, 'Unavailable'),
('60a8a5fd585c6a78469fad25', 'Distributed Application Development with PowerBuilder 6.0', 504, '', '', NULL, 'Available'),
('60a8a5fe585c6a78469fad26', 'Jaguar Development with PowerBuilder 7', 550, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/barlotta2.jpg', 'Jaguar Development with PowerBuilder 7 is the definitive guide to distributed application development with PowerBuilder. It is the only book dedicated to preparing PowerBuilder developers for Jaguar applications and has been approved by Sybase engineers and product specialists who build the tools described in the book.', NULL, 'Unavailable'),
('60a8a5fe585c6a78469fad27', 'Taming Jaguar', 362, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/barlotta3.jpg', '', NULL, 'Unavailable'),
('60a8a5fe585c6a78469fad28', '3D User Interfaces with Java 3D', 520, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/barrilleaux.jpg', '', NULL, 'Available'),
('60a8a5fe585c6a78469fad29', 'Hibernate in Action', 400, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bauer.jpg', '\"2005 Best Java Book!\" -- Java Developer\'s Journal', NULL, 'Available'),
('60a8a5ff585c6a78469fad2a', 'Hibernate in Action (Chinese Edition)', 400, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bauer-cn.jpg', '', NULL, 'Available'),
('60a8a5ff585c6a78469fad2b', 'Java Persistence with Hibernate', 880, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bauer2.jpg', '\"...this book is the ultimate solution. If you are going to use Hibernate in your application, you have no other choice, go rush to the store and get this book.\" --JavaLobby', NULL, 'Available'),
('60a8a5ff585c6a78469fad2c', 'JSTL in Action', 480, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bayern.jpg', '', NULL, 'Available'),
('60a8a600585c6a78469fad2d', 'iBATIS in Action', 384, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/begin.jpg', '   Gets new users going and gives experienced users in-depth coverage of advanced features.       Jeff Cunningham, The Weather Channel Interactive', NULL, 'Available'),
('60a8a600585c6a78469fad2e', 'Designing Hard Software', 350, '', '\"This book is well written ... The author does not fear to be controversial. In doing so, he writes a coherent book.\" --Dr. Frank J. van der Linden, Phillips Research Laboratories', NULL, 'Available'),
('60a8a600585c6a78469fad2f', 'Hibernate Search in Action', 488, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bernard.jpg', '\"A great resource for true database independent full text search.\" --Aaron Walker, base2Services', NULL, 'Available'),
('60a8a601585c6a78469fad30', 'jQuery in Action', 376, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bibeault.jpg', '\"The best-thought-out and researched piece of literature on the jQuery library.\" --From the forward by John Resig, Creator of jQuery', NULL, 'Available'),
('60a8a601585c6a78469fad31', 'jQuery in Action, Second Edition', 488, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bibeault2.jpg', 'jQuery in Action, Second Edition is a fast-paced introduction to jQuery that will take your JavaScript programming to the next level. An in-depth rewrite of the bestselling first edition, this edition provides deep and practical coverage of the latest jQuery and jQuery UI releases. The book\'s unique \"lab pages\" anchor the explanation of each new concept in a practical example. You\'ll learn how to traverse HTML documents, handle events, perform animations, and add Ajax to your web pages. This comprehensive guide also teaches you how jQuery interacts with other tools and frameworks and how to build jQuery plugins. ', NULL, 'Available'),
('60a8a601585c6a78469fad32', 'Building Secure and Reliable Network Applications', 591, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/birman.jpg', '\"... tackles the difficult problem of building reliable distributed computing systems in a way that not only presents the principles but also describes proven practical solutions.\" --John Warne, BNR Europe', NULL, 'Available'),
('60a8a601585c6a78469fad33', 'Ruby for Rails', 532, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/black.jpg', 'The word is out: with Ruby on Rails you can build powerful Web applications easily and quickly! And just like the Rails framework itself, Rails applications are Ruby programs. That means you can   t tap into the full power of Rails unless you master the Ruby language.', NULL, 'Available'),
('60a8a602585c6a78469fad34', 'The Well-Grounded Rubyist', 520, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/black2.jpg', 'What would appear to be the most complex topic of the book is in fact surprisingly easy to assimilate, and one realizes that the efforts of the author to gradually lead us to a sufficient knowledge of Ruby in order to tackle without pain the most difficult subjects, bears its fruit.       Eric Grimois, Developpez.com', NULL, 'Available'),
('60a8a602585c6a78469fad35', 'Website Owner\'s Manual', 296, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/boag.jpg', 'Website Owner\'s Manual helps you form a vision for your site, guides you through the process of selecting a web design agency, and gives you enough background information to make intelligent decisions throughout the development process. This book provides a jargon-free overview of web design, including accessibility, usability, online marketing, and web development techniques. You\'ll gain a practical understanding of the technologies, processes, and ideas that drive a successful website.', NULL, 'Available'),
('60a8a602585c6a78469fad36', 'ASP.NET 4.0 in Practice', 504, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/bochicchio.jpg', 'ASP.NET 4.0 in Practice contains real world techniques from well-known professionals who have been using ASP.NET since the first previews.', NULL, 'Available'),
('60a8a603585c6a78469fad37', 'Hello! Python', 350, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/briggs.jpg', 'Hello! Python fully covers the building blocks of Python programming and gives you a gentle introduction to more advanced topics such as object oriented programming, functional programming, network programming, and program design. New (or nearly new) programmers will learn most of what they need to know to start using Python immediately.', NULL, 'Available'),
('60a8a603585c6a78469fad38', 'PFC Programmer\'s Reference Manual', 368, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/brooks.jpg', '', NULL, 'Available'),
('60a8a603585c6a78469fad39', 'Graphics File Formats', 484, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/brown.jpg', '', NULL, 'Available'),
('60a8a604585c6a78469fad3a', 'Visual Object Oriented Programming', 280, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/burnett.jpg', '', NULL, 'Available'),
('60a8a604585c6a78469fad3b', 'iOS in Practice', 325, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/cahill.jpg', '', NULL, 'Available'),
('60a8a604585c6a78469fad3c', 'iPhone in Action', 472, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/callen.jpg', '   There is not another iPhone title that does such a great coverage of both Web and SDK topics under one roof, thus providing a well-rounded developer education.       Vladimir Pasman, Cocoacast.com', NULL, 'Available'),
('60a8a604585c6a78469fad3d', 'Silverlight 2 in Action', 400, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/campbell.jpg', '   Silverlight 2 in Action gives you a solid, well-thought out and coherent foundation for building RIA web applications, and provides you with lots of technical details without ever becoming cloudy.       Golo Roden, author, trainer and speaker for .NET technologies', NULL, 'Available'),
('60a8a605585c6a78469fad3e', 'The Quick Python Book, Second Edition', 360, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/ceder.jpg', 'This revision of Manning\'s popular The Quick Python Book offers a clear, crisp introduction to the elegant Python programming language and its famously easy-to-read syntax. Written for programmers new to Python, this updated edition covers features common to other languages concisely, while introducing Python\'s comprehensive standard functions library and unique features in detail.', NULL, 'Available'),
('60a8a605585c6a78469fad3f', 'Internet and Intranet Applications with PowerBuilder 6', 390, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/cervenka.jpg', '', NULL, 'Available'),
('60a8a605585c6a78469fad40', 'Practical Methods for Your Year 2000 Problem', 236, '', 'Practical Methods for Your Year 2000 Problem gives the Year 2000 project team a step-by-step methodology for addressing the Year 2000 problem.', NULL, 'Available'),
('60a8a606585c6a78469fad41', 'Mobile Agents', 320, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/cockayne.jpg', 'Mobile Agents is the first book to give the reader the ability to create and use powerful mobile agents on the Internet.', NULL, 'Available'),
('60a8a606585c6a78469fad42', 'Spring Dynamic Modules in Action', 450, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/cogoluegnes.jpg', 'Spring Dynamic Modules in Action introduces Spring DM and OSGi to Java EE developers and architects. It presents the fundamental concepts of OSGi-based apps and maps them to the familiar ideas of the Spring framework. Then, it engages you with the techniques and concepts you\'ll need to develop stable, flexible enterprise apps. You\'ll learn how to embed a Spring container inside an OSGi bundle, and how Spring DM lets you blend Spring strengths like dependency injection with OSGi-based services. Along the way, you\'ll see how Spring DM handles data access and web-based components, and you\'ll explore topics like unit testing and configuration in an OSGi-based environment.', NULL, 'Available'),
('60a8a606585c6a78469fad43', 'SQL Server 2008 Administration in Action', 468, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/colledge.jpg', '', NULL, 'Available'),
('60a8a607585c6a78469fad44', 'Android in Practice', 500, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/collins.jpg', 'Android in Practice is treasure trove of Android goodness, with over 100 tested, ready-to-use techniques including complete end-to-end example applications and practical tips for real world mobile application developers. Written by real world Android developers, this book addresses the trickiest questions raised in forums and mailing lists. Using an easy-to-follow problem/solution/discussion format, it dives into important topics not covered in other Android books, like advanced drawing and graphics, testing and instrumentation, building and deploying applications, using alternative languages, and native development.', NULL, 'Available'),
('60a8a607585c6a78469fad45', 'Object Oriented Perl', 512, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/conway.jpg', '', NULL, 'Available'),
('60a8a607585c6a78469fad46', 'GWT in Practice', 376, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/cooper.jpg', '', NULL, 'Available'),
('60a8a607585c6a78469fad47', 'Ajax in Action', 680, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/crane.jpg', '', NULL, 'Available'),
('60a8a608585c6a78469fad48', 'Ajax in Practice', 536, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/crane2.jpg', '', NULL, 'Available'),
('60a8a608585c6a78469fad49', 'Prototype and Scriptaculous in Action', 544, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/crane3.jpg', '', NULL, 'Available'),
('60a8a608585c6a78469fad4a', 'POJOs in Action', 592, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/crichardson.jpg', '\"POJOs in Action is required reading for battle-weary EJB developers and for new developers who want to avoid the sins of the fathers by using lightweight frameworks.    -- C# Online.NET', NULL, 'Available'),
('60a8a609585c6a78469fad4b', 'Data Munging with Perl', 304, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/cross.jpg', '', NULL, 'Available'),
('60a8a609585c6a78469fad4c', 'Hello! HTML5 & CSS3', 325, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/crowther.jpg', 'Quick and Easy HTML5 and CSS3 is written for the web designer or developer who wants a fast, example-oriented introduction to the new HTML and CSS features. After a quick review of the basics, you\'ll turn to what\'s new. Start by learning to apply important new elements and attributes by building your first real HTML5 pages. You\'ll then take a quick tour through the new APIs: Form Validation, Canvas, Drag & Drop, Geolocation and Offline Applications. You\'ll also discover how to include video and audio on your pages without plug-ins, and how to draw interactive vector graphics with SVG.', NULL, 'Available'),
('60a8a609585c6a78469fad4d', 'Seam in Action', 624, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dallen.jpg', 'Seam in Action goes into great detail on the ways in which Seam helps reduce the burden of integration with different technologies such as Hibernate and JSF, allowing the developer to focus on the core business objective at hand.       Shobana Jayaraman, Digital Infrastructure Analyst, University of Texas Southwestern Medical Center Library, The Tech Static', NULL, 'Available'),
('60a8a609585c6a78469fad4e', 'Wicket in Action', 392, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dashorst.jpg', '', NULL, 'Available'),
('60a8a60a585c6a78469fad4f', 'Open Source SOA', 448, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/davis.jpg', '', NULL, 'Available'),
('60a8a60a585c6a78469fad50', 'Struts 2 in Action', 432, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dbrown.jpg', '', NULL, 'Available'),
('60a8a60a585c6a78469fad51', 'Essential Guide to Peoplesoft Development and Customization', 1101, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/delia.jpg', '', NULL, 'Available'),
('60a8a60b585c6a78469fad52', '.NET Multithreading', 360, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dennis.jpg', '', NULL, 'Available'),
('60a8a60b585c6a78469fad53', 'SCWCD Exam Study Kit Second Edition', 560, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/deshmukh2.jpg', '', NULL, 'Available'),
('60a8a60b585c6a78469fad54', 'Spring Roo in Action', 500, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/rimple.jpg', '', NULL, 'Available'),
('60a8a60b585c6a78469fad55', 'SOA Governance in Action', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dirksen.jpg', '', NULL, 'Available'),
('60a8a60c585c6a78469fad56', 'RSS and Atom in Action', 400, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dmjohnson.jpg', '', NULL, 'Available'),
('60a8a60c585c6a78469fad57', 'LDAP Programming, Management and Integration', 352, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/donley.jpg', '', NULL, 'Available'),
('60a8a60c585c6a78469fad58', 'Mule in Action', 432, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/dossot.jpg', '', NULL, 'Available'),
('60a8a60d585c6a78469fad59', 'Java Foundation Classes', 1088, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/drye.jpg', '', NULL, 'Available'),
('60a8a60d585c6a78469fad5a', 'Managing Components with Modeler', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal11.jpg', '', NULL, 'Available'),
('60a8a60d585c6a78469fad5b', 'Command-line Processing with CLI', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal12.jpg', '', NULL, 'Available'),
('60a8a60e585c6a78469fad5c', 'Understanding and Using Chain', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal13.jpg', '', NULL, 'Available'),
('60a8a60e585c6a78469fad5d', 'Working with the Logging and Discovery Components', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal14.jpg', '', NULL, 'Available'),
('60a8a60e585c6a78469fad5e', 'Uploading files with FileUpload', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal2.jpg', '', NULL, 'Available'),
('60a8a60e585c6a78469fad5f', 'Handling Protocols with the Net Component', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal3.jpg', '', NULL, 'Available'),
('60a8a60f585c6a78469fad60', 'XML Parsing with Digester', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal4.jpg', '', NULL, 'Available'),
('60a8a60f585c6a78469fad61', 'JXPath and Betwixt: Working with XML', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal5.jpg', '', NULL, 'Available'),
('60a8a60f585c6a78469fad62', 'Validating Data with Validator', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal6.jpg', '', NULL, 'Available'),
('60a8a610585c6a78469fad63', 'Enhancing Java Core Libraries with Collections', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal7.jpg', '', NULL, 'Available'),
('60a8a610585c6a78469fad64', 'Enhancing Java Core Libraries with BeanUtils and Lang', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal8.jpg', '', NULL, 'Available'),
('60a8a610585c6a78469fad65', 'Pool and DBCP: Creating and Using Object Pools', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/goyal9.jpg', '', NULL, 'Available'),
('60a8a611585c6a78469fad66', 'Python and Tkinter Programming', 688, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/grayson.jpg', '', NULL, 'Available'),
('60a8a611585c6a78469fad67', 'Microsoft.NET for Programmers', 386, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/grimes.jpg', '', NULL, 'Available'),
('60a8a611585c6a78469fad68', 'Grails in Action', 520, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/gsmith.jpg', 'Grails in Action is a comprehensive guide to the Grails framework. First, the basics: the domain model, controllers, views, and services. Then, the fun! Dive into a Twitter-style app with features like AJAX/JSON, animation, search, wizards   even messaging and Jabber integration. Along the way, you\'ll discover loads of great plugins that\'ll make your app shine. Learn to integrate with existing Java systems using Spring and Hibernate. You\'ll need basic familiarity with Java and the web.', NULL, 'Available'),
('60a8a612585c6a78469fad69', 'Up to Speed with Swing, Second Edition', 560, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/gutz2.jpg', 'Now in its Second Edition, Up to Speed with Swing is for you if you want to get on the fast track to Java Swing. The second edition has been extensively updated to cover Java 1.2 with additional code examples and illustrations.', NULL, 'Available'),
('60a8a612585c6a78469fad6a', 'OSGi in Action', 576, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hall.jpg', 'OSGi in Action is a comprehensive guide to OSGi with two primary goals. First, it provides a clear introduction to OSGi concepts with examples that are relevant both for architects and developers. The central idea of OSGi is modularity, so you start by learning about OSGi bundles. You\'ll then see how OSGi handles module lifecycles and follow up with how it promotes service-oriented interaction among application components.', NULL, 'Available'),
('60a8a612585c6a78469fad6b', 'GWT in Action', 632, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hanson.jpg', '', NULL, 'Available'),
('60a8a613585c6a78469fad6c', 'The Quick Python Book', 444, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/harms.jpg', '', NULL, 'Available'),
('60a8a613585c6a78469fad6d', 'SharePoint 2010 Site Owner\'s Manual', 300, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/harryman.jpg', 'SharePoint 2010 Site Owner\'s Manual starts by assuming you already have SharePoint installed on your system and are looking for ways to solve the problems you face every day in your organization. You\'ll learn to determine what type of SharePoint installation you have   Microsoft Office SharePoint Server (MOSS), Windows SharePoint Services (WSS), the \"Fabulous 40\" templates   and what features are at your disposal. Once you know the lay of the land, you\'ll discover what you can do yourself, when you need to call in some help, and when you should leave it to the developers.', NULL, 'Available'),
('60a8a613585c6a78469fad6e', 'Java Development with Ant', 672, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hatcher.jpg', 'The most widely used build tool for Java projects, Ant is cross-platform, extensible, simple, and fast. It scales from small personal projects to large, multi-team J2EE projects. And, most important, it\'s easy to learn.', NULL, 'Available'),
('60a8a613585c6a78469fad6f', 'Lucene in Action', 456, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hatcher2.jpg', '', NULL, 'Available'),
('60a8a614585c6a78469fad70', 'Lucene in Action, Second Edition', 532, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hatcher3.jpg', 'With clear writing, reusable examples, and unmatched advice on best practices, Lucene in Action is still the definitive guide to developing with Lucene.', NULL, 'Available'),
('60a8a614585c6a78469fad71', 'PowerBuilder 6.0 Questions & Answers', 446, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hatton.jpg', 'If you\'d like to learn PowerBuilder--or enhance your skills-- this book is for you. Its hands-on approach will show you how to write real code. Each section takes a specific \"How do I \" topic and answers commonly asked questions in an easy-to-understand, conversational manner. It then shows you how the same technique can be used over and over again to decrease your overall code-writing time.', NULL, 'Available'),
('60a8a614585c6a78469fad72', 'The Awesome Power of PowerJ', 378, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hatton2.jpg', 'The Awesome Power of PowerJ shows you how you can write Java programs the very first day with PowerJ, even if you don\'t know Java. Through a hands-on approach that makes liberal use of figures and code snippets, you will learn how to use PowerJ to build effective Java applets and applications.', NULL, 'Available'),
('60a8a615585c6a78469fad73', 'The Awesome Power of Power++', 416, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hatton3.jpg', 'The Awesome Power of Power++ is for the beginning to intermediate Power++ programmer. It assumes that you have little or no knowledge of the C++ language but that you do know programming constructs. The purpose is to teach you how to use Power++ to build C++ applets and applications even if you are not a C++ expert. To this end it takes a hands-on approach and makes liberal use of figures and code snippets.', NULL, 'Available'),
('60a8a615585c6a78469fad74', 'Azure in Action', 425, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hay.jpg', 'Azure in Action is a fast-paced tutorial intended for architects and developers looking to develop on Windows Azure and the Windows Azure Platform. It\'s designed both for readers new to cloud concepts and for those familiar with cloud development but new to Azure. After a quick walk through the basics, it guides you all the way from your first app through more advanced concepts of the Windows Azure Platform.', NULL, 'Available'),
('60a8a615585c6a78469fad75', 'Distributed Agile in Action', 325, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hazrati.jpg', 'Distributed Agile in Action is the first book to directly address the unique task of going Agile in a distributed team. Rather than rehashing Agile theories, this book supplies the practical examples and step by step advice you need to help your distributed teams adopt and embrace Agile principles. It\'s a distilled and carefully organized learning aid for working in a distributed Agile environment, with in-depth focus on how to approach three critical components of development-People, Process and Technology.', NULL, 'Available'),
('60a8a616585c6a78469fad76', 'Metaprogramming in .NET', 0, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hazzard.jpg', '', NULL, 'Available'),
('60a8a616585c6a78469fad77', 'Portlets and Apache Portals', 500, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hepper.jpg', 'Portlets and Apache Portals was not published by Manning, but the manuscript is available for download from our website \"as is.\"', NULL, 'Available'),
('60a8a616585c6a78469fad78', 'Code Generation in Action', 350, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/herrington.jpg', 'Code Generation In Action covers building database access, user interface, remote procedure, test cases, and business logic code as well as code for other key system functions.', NULL, 'Available'),
('60a8a616585c6a78469fad79', 'Illustrated Guide to HTTP', 400, 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hethmon.jpg', '', NULL, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `book_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`book_id`, `category`) VALUES
('60a8a5fb585c6a78469fad1f', 'Web Development'),
('60a8a5fc585c6a78469fad20', 'Internet'),
('60a8a5fc585c6a78469fad21', 'Miscellaneous'),
('60a8a5fc585c6a78469fad22', 'Microsoft .NET'),
('60a8a5fd585c6a78469fad23', 'Microsoft'),
('60a8a5fd585c6a78469fad24', 'Next Generation Databases'),
('60a8a5fd585c6a78469fad25', 'PowerBuilder'),
('60a8a5fe585c6a78469fad26', 'Client-Server'),
('60a8a5fe585c6a78469fad26', 'PowerBuilder'),
('60a8a5fe585c6a78469fad27', 'PowerBuilder'),
('60a8a5fe585c6a78469fad28', 'Computer Graphics'),
('60a8a5fe585c6a78469fad28', 'Java'),
('60a8a5fe585c6a78469fad29', 'Java'),
('60a8a5ff585c6a78469fad2a', 'Java'),
('60a8a5ff585c6a78469fad2b', 'Java'),
('60a8a5ff585c6a78469fad2c', 'Internet'),
('60a8a600585c6a78469fad2d', 'Web Development'),
('60a8a600585c6a78469fad2e', 'Object-Oriented Programming'),
('60a8a600585c6a78469fad2e', 'S'),
('60a8a600585c6a78469fad2f', 'Java'),
('60a8a601585c6a78469fad30', 'Web Development'),
('60a8a601585c6a78469fad31', 'Java'),
('60a8a601585c6a78469fad32', 'Networking'),
('60a8a601585c6a78469fad32', 'Theory'),
('60a8a601585c6a78469fad33', 'Web Development'),
('60a8a602585c6a78469fad34', 'Programming'),
('60a8a602585c6a78469fad35', 'Internet'),
('60a8a602585c6a78469fad36', 'Microsoft .NET'),
('60a8a603585c6a78469fad37', 'Python'),
('60a8a603585c6a78469fad38', 'PowerBuilder'),
('60a8a603585c6a78469fad39', 'Computer Graphics'),
('60a8a604585c6a78469fad3a', 'Programming'),
('60a8a604585c6a78469fad3b', 'Mobile Technology'),
('60a8a604585c6a78469fad3c', 'Web Development'),
('60a8a604585c6a78469fad3d', 'Microsoft .NET'),
('60a8a605585c6a78469fad3e', 'Python'),
('60a8a605585c6a78469fad3f', 'PowerBuilder'),
('60a8a605585c6a78469fad40', 'Business'),
('60a8a606585c6a78469fad41', 'Internet'),
('60a8a606585c6a78469fad42', 'Java'),
('60a8a606585c6a78469fad43', 'Microsoft'),
('60a8a607585c6a78469fad44', 'Mobile Technology'),
('60a8a607585c6a78469fad45', 'Object-Oriented Programming'),
('60a8a607585c6a78469fad45', 'P'),
('60a8a607585c6a78469fad46', 'Web Development'),
('60a8a607585c6a78469fad47', 'Internet'),
('60a8a607585c6a78469fad47', 'XML'),
('60a8a608585c6a78469fad48', 'Web Development'),
('60a8a608585c6a78469fad49', 'Web Development'),
('60a8a608585c6a78469fad4a', 'Java'),
('60a8a609585c6a78469fad4b', 'Perl'),
('60a8a609585c6a78469fad4c', 'Internet'),
('60a8a609585c6a78469fad4d', 'Java'),
('60a8a609585c6a78469fad4e', 'Web Development'),
('60a8a60a585c6a78469fad4f', 'Java'),
('60a8a60a585c6a78469fad50', 'Java'),
('60a8a60a585c6a78469fad51', 'Client-Server'),
('60a8a60b585c6a78469fad52', 'Internet'),
('60a8a60b585c6a78469fad52', 'Microsoft .NET'),
('60a8a60b585c6a78469fad53', 'Internet'),
('60a8a60b585c6a78469fad54', 'Java'),
('60a8a60b585c6a78469fad55', 'java'),
('60a8a60c585c6a78469fad56', 'Internet'),
('60a8a60c585c6a78469fad57', 'Internet'),
('60a8a60c585c6a78469fad58', 'Java'),
('60a8a60c585c6a78469fad58', 'Software Engineering'),
('60a8a60d585c6a78469fad59', 'Java'),
('60a8a60d585c6a78469fad5a', 'Java'),
('60a8a60d585c6a78469fad5b', 'Java'),
('60a8a60e585c6a78469fad5c', 'Java'),
('60a8a60e585c6a78469fad5d', 'Java'),
('60a8a60e585c6a78469fad5e', 'Java'),
('60a8a60e585c6a78469fad5f', 'Java'),
('60a8a60f585c6a78469fad60', 'Java'),
('60a8a60f585c6a78469fad61', 'Java'),
('60a8a60f585c6a78469fad62', 'Java'),
('60a8a610585c6a78469fad63', 'Java'),
('60a8a610585c6a78469fad64', 'Java'),
('60a8a610585c6a78469fad65', 'Java'),
('60a8a611585c6a78469fad66', 'Python'),
('60a8a611585c6a78469fad67', 'Microsoft .NET'),
('60a8a611585c6a78469fad68', 'Java'),
('60a8a612585c6a78469fad69', 'Java'),
('60a8a612585c6a78469fad6a', 'Internet'),
('60a8a612585c6a78469fad6b', 'Internet'),
('60a8a612585c6a78469fad6b', 'Java'),
('60a8a613585c6a78469fad6c', 'Python'),
('60a8a613585c6a78469fad6d', 'Microsoft .NET'),
('60a8a613585c6a78469fad6e', 'Internet'),
('60a8a613585c6a78469fad6e', 'Java'),
('60a8a613585c6a78469fad6f', 'Java'),
('60a8a614585c6a78469fad70', 'Java'),
('60a8a614585c6a78469fad70', 'Open Source'),
('60a8a614585c6a78469fad71', 'PowerBuilder'),
('60a8a614585c6a78469fad72', 'Java'),
('60a8a615585c6a78469fad73', 'PowerBuilder'),
('60a8a615585c6a78469fad74', 'Microsoft .NET'),
('60a8a615585c6a78469fad75', 'Software Engineering'),
('60a8a616585c6a78469fad76', 'Microsoft/.NET'),
('60a8a616585c6a78469fad77', 'Java'),
('60a8a616585c6a78469fad78', 'Programming'),
('60a8a616585c6a78469fad79', 'Internet');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuon`
--

CREATE TABLE `phieumuon` (
  `pm_id` int(255) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaymuon` date NOT NULL,
  `ngaytra` date DEFAULT NULL,
  `tinhtrang` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieumuon`
--

INSERT INTO `phieumuon` (`pm_id`, `user`, `book_id`, `ngaymuon`, `ngaytra`, `tinhtrang`) VALUES
(97, 'admin', '60a8a5fb585c6a78469fad1f', '2021-06-26', '2021-06-30', 'Đang mượn'),
(98, 'anh', '60a8a5fc585c6a78469fad20', '2021-06-26', '2021-06-30', 'Đang mượn'),
(99, 'anh', '60a8a5fc585c6a78469fad22', '2021-06-26', '2021-06-30', 'Đang mượn'),
(100, 'anh', '60a8a5fd585c6a78469fad24', '2021-06-26', NULL, 'Đang mượn'),
(101, 'anh', '60a8a5fe585c6a78469fad26', '2021-06-26', NULL, 'Đang mượn'),
(102, 'anh', '60a8a5fe585c6a78469fad27', '2021-06-26', NULL, 'Đang mượn'),
(105, 'anh', '60a8a5fc585c6a78469fad21', '2021-06-26', '2021-06-30', 'Đang mượn'),
(106, 'anh', '60a8a5fd585c6a78469fad23', '2021-06-26', NULL, 'Đang mượn');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngsinh` date NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(15) NOT NULL,
  `type` int(15) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`username`, `password`, `hoten`, `ngsinh`, `email`, `phone`, `type`) VALUES
('admin', '123456', 'admin', '2001-01-01', 'admin123456@gmail.com', 969680680, 0),
('anh', 'anh123', 'Nguyễn Anh', '1999-01-01', 'anh123456@gmail.com', 293428395, 1),
('dong', 'dong123', 'nguyễn đông', '2001-01-01', 'dong123456@gmail.com', 842674217, 1),
('hao', 'hao123', 'lê hảo', '2001-09-01', 'hao123456@gmail.com', 985537124, 1),
('hoa', 'hoa123', 'bùi hoa', '2002-01-01', 'hoa123456@gmail.com', 923568454, 1),
('huyen', 'huyen123', 'lê huyền', '2001-11-03', 'huyen123456@gmail.com', 983672531, 1),
('man', 'man123', 'tăng mẫn', '2001-12-03', 'man123456@gmail.com', 329484289, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`book_id`,`author_name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`book_id`,`category`);

--
-- Indexes for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD PRIMARY KEY (`pm_id`,`user`,`book_id`),
  ADD KEY `fk_thanhvienphieumuon` (`user`),
  ADD KEY `fk_booksphieumuon` (`book_id`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phieumuon`
--
ALTER TABLE `phieumuon`
  MODIFY `pm_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `FK_booksauthor` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_bookscategories` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD CONSTRAINT `fk_booksphieumuon` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_thanhvienphieumuon` FOREIGN KEY (`user`) REFERENCES `thanhvien` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
