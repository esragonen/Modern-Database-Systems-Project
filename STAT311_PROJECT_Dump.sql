-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2025 at 03:16 PM
-- Server version: 8.0.40-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `STAT311_PROJECT`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACTOR`
--

CREATE TABLE `ACTOR` (
  `Actor_ID` int NOT NULL,
  `Actor_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Actor_Surname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ACTOR`
--

INSERT INTO `ACTOR` (`Actor_ID`, `Actor_Name`, `Actor_Surname`) VALUES
(1, 'Al', 'Pacino'),
(2, 'Marlon', 'Brando'),
(3, 'Christian', 'Bale'),
(4, 'Heath', 'Ledger'),
(5, 'Elijah', 'Wood'),
(6, 'Julie', 'Delpy'),
(7, 'Ethan', 'Hawke'),
(8, 'Tom', 'Hanks'),
(9, 'Gary', 'Oldman'),
(10, 'Leonardo', 'DiCaprio'),
(11, 'Emilia', 'Clarke'),
(12, 'Sam', 'Claflin'),
(13, 'Robert', 'Pattinson'),
(14, 'Michael', 'Caine'),
(15, 'Bill', 'Skarsgard'),
(16, 'Anthony', 'Hopkins'),
(17, 'Daniel', 'Radcliffe'),
(18, 'Emma', 'Watson'),
(19, 'Tom', 'Holland'),
(20, 'Zendaya', 'Maree'),
(21, 'Tobin', 'Bell');

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS`
--

CREATE TABLE `ADDRESS` (
  `Address_ID` int NOT NULL,
  `Address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `District` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Phone` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `City_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ADDRESS`
--

INSERT INTO `ADDRESS` (`Address_ID`, `Address`, `District`, `Phone`, `City_ID`) VALUES
(101, 'İstiklal Caddesi No:45', 'Beyoğlu', '2125551234', 1),
(102, 'Bağdat Caddesi No:12', 'Kadıköy', '2164567890', 2),
(103, 'Cumhuriyet Mahallesi 123. Sokak No:5', 'Yenimahalle', '3123456789', 3),
(104, 'Atatürk Bulvarı No:18', 'Konak', '2324567890', 4),
(105, 'Sakarya Caddesi No:9', 'Odunpazarı', '2225678901', 5),
(106, 'Kazım Karabekir Caddesi No:3', 'Melikgazi', '3527890123', 6),
(107, 'Mevlana Caddesi No:22', 'Karatay', '3325678901', 7),
(108, 'Çırağan Caddesi No:15', 'Beşiktaş', '2126789012', 1),
(109, 'Alsancak Mahallesi Kordon Sokak No:7', 'Konak', '2326789012', 4),
(110, 'Gazipaşa Caddesi No:11', 'Antakya', '3265678901', 8),
(111, 'İnönü Caddesi No:25', 'Tepebaşı', '2224567890', 5),
(112, 'Çankaya Caddesi No:8', 'Çankaya', '3121234567', 3),
(113, 'Yeşilköy Mahallesi No:45', 'Bakırköy', '2127890123', 1),
(114, 'Kayalıpark Mahallesi No:2', 'Selçuklu', '3324567890', 7),
(115, 'Piri Reis Mahallesi No:14', 'Yenişehir', '3241234567', 9),
(116, 'Mithatpaşa Caddesi No:55', 'Bornova', '2323456789', 4),
(117, 'Osmanlı Bulvarı No:18', 'Başakşehir', '2125678901', 10),
(118, 'Cumhuriyet Caddesi No:6', 'Talas', '3523456789', 6),
(119, 'Ağrı Dağı Caddesi No:9', 'Doğubayazıt', '4721234567', 11),
(120, 'Pamukkale Mahallesi No:10', 'Pamukkale', '2585678901', 12),
(121, 'Kaleiçi Sokak No:22', 'Muratpaşa', '2427890123', 13),
(122, 'Karşıyaka Mahallesi No:19', 'Karşıyaka', '2326789012', 4),
(123, 'Yalı Caddesi No:4', 'Dikili', '2323456789', 4),
(124, 'Huzur Mahallesi No:7', 'Nilüfer', '2241234567', 14),
(125, 'Fuar Caddesi No:2', 'Yenişehir', '4125678901', 15),
(126, 'Altınkum Mahallesi No:11', 'Didim', '2561234567', 16),
(127, 'Zeytinlik Caddesi No:29', 'Tarsus', '3246789012', 17),
(128, 'Kale Mahallesi No:6', 'Alanya', '2421234567', 13),
(129, 'Barbaros Bulvarı No:17', 'Kaş', '2425678901', 13),
(130, 'Güzeloba Mahallesi No:24', 'Lara', '2427890123', 13),
(131, 'Denizevleri Mahallesi No:7', 'Atakum', '3624567890', 18),
(132, 'Cumhuriyet Mahallesi No:10', 'Atakum', '3621234567', 18);

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORY`
--

CREATE TABLE `CATEGORY` (
  `Category_ID` int NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CATEGORY`
--

INSERT INTO `CATEGORY` (`Category_ID`, `Name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Horror'),
(5, 'Sci-Fi'),
(6, 'Romance'),
(7, 'Thriller'),
(8, 'Documentary'),
(9, 'Fantasy'),
(10, 'Adventure'),
(11, 'Biography'),
(12, 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `CITY`
--

CREATE TABLE `CITY` (
  `City_ID` int NOT NULL,
  `City` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CITY`
--

INSERT INTO `CITY` (`City_ID`, `City`) VALUES
(1, 'İstanbul'),
(2, 'Ankara'),
(3, 'İzmir'),
(4, 'Antalya'),
(5, 'Eskişehir'),
(6, 'Kayseri'),
(7, 'Konya'),
(8, 'Hatay'),
(9, 'Mersin'),
(10, 'İstanbul (Avrupa)'),
(11, 'Ağrı'),
(12, 'Denizli'),
(13, 'Antalya (Merkez)'),
(14, 'Bursa'),
(15, 'Diyarbakır'),
(16, 'Aydın'),
(17, 'Tarsus'),
(18, 'Samsun');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `Customer_ID` int NOT NULL,
  `Store_ID` int NOT NULL,
  `Address_ID` int NOT NULL,
  `First_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Last_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Activebool` tinyint(1) NOT NULL,
  `Create_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`Customer_ID`, `Store_ID`, `Address_ID`, `First_Name`, `Last_Name`, `Email`, `Activebool`, `Create_Date`) VALUES
(1, 1, 101, 'Ahmet', 'Yılmaz', 'ahmet.yilmaz@hotmail.com', 1, '2023-01-15'),
(2, 1, 102, 'Mehmet', 'Kaya', 'mehmet.kaya@gmail.com', 1, '2023-02-20'),
(3, 2, 103, 'Ali', 'Demir', 'ali.demir@hotmail.com', 0, '2023-03-10'),
(4, 2, 104, 'Elif', 'Çelik', 'elif.celik@gmail.com', 1, '2023-04-05'),
(5, 1, 105, 'Ayşe', 'Duru', 'ayse.duru@hotmail.com', 1, '2023-05-14'),
(6, 2, 106, 'Can', 'Yıldız', 'can.yildiz@gmail.com', 1, '2023-06-01'),
(7, 1, 107, 'Fatma', 'Aslan', 'fatma.aslan@hotmail.com', 1, '2023-06-18'),
(8, 1, 108, 'Veli', 'Çetin', 'veli.cetin@gmail.com', 1, '2023-07-10'),
(9, 2, 109, 'Zeynep', 'Öztürk', 'zeynep.ozturk@hotmail.com', 1, '2023-07-25'),
(10, 1, 110, 'Murat', 'Kurt', 'murat.kurt@gmail.com', 0, '2023-08-05'),
(11, 2, 111, 'Büşra', 'Güzel', 'busra.guzel@hotmail.com', 1, '2023-08-20'),
(12, 1, 112, 'Seda', 'Eren', 'seda.eren@gmail.com', 1, '2023-09-01'),
(13, 1, 113, 'Burak', 'Sarı', 'burak.sari@hotmail.com', 0, '2023-09-10'),
(14, 2, 114, 'Okan', 'Polat', 'okan.polat@gmail.com', 1, '2023-09-25'),
(15, 2, 115, 'Aylin', 'Kara', 'aylin.kara@hotmail.com', 1, '2023-10-01'),
(16, 1, 116, 'Emre', 'Büyükgüngör', 'emre.buyukgungor@gmail.com', 1, '2023-10-15'),
(17, 1, 117, 'Derya', 'Yılmazer', 'derya.yilmazer@hotmail.com', 1, '2023-10-20'),
(18, 2, 118, 'Burcu', 'Arslan', 'burcu.arslan@gmail.com', 1, '2023-11-01'),
(19, 1, 119, 'Onur', 'Özdemir', 'onur.ozdemir@hotmail.com', 1, '2023-11-10'),
(20, 1, 120, 'Selin', 'Yıldırım', 'selin.yildirim@gmail.com', 1, '2023-11-25'),
(21, 2, 121, 'Tolga', 'Aydın', 'tolga.aydin@hotmail.com', 1, '2023-12-01'),
(22, 1, 122, 'Kemal', 'Tuna', 'kemal.tuna@gmail.com', 0, '2023-12-10'),
(23, 2, 123, 'Berk', 'Karaca', 'berk.karaca@hotmail.com', 1, '2023-12-15'),
(24, 1, 124, 'Deniz', 'Kucuk', 'deniz.kucuk@gmail.com', 1, '2023-12-20'),
(25, 2, 125, 'Hüseyin', 'Güler', 'huseyin.guler@hotmail.com', 1, '2023-12-25'),
(26, 1, 126, 'Merve', 'Sönmez', 'merve.sonmez@gmail.com', 1, '2024-01-01'),
(27, 1, 127, 'Nihal', 'Bölükbaşı', 'nihal.bolukbasi@hotmail.com', 1, '2024-01-10'),
(28, 2, 128, 'Tuncay', 'Erdoğan', 'tuncay.erdogan@gmail.com', 1, '2024-01-20'),
(29, 2, 129, 'Serap', 'Tosun', 'serap.tosun@hotmail.com', 1, '2024-01-25'),
(30, 1, 130, 'Yusuf', 'Taş', 'yusuf.tas@gmail.com', 1, '2024-02-01'),
(31, 1, 131, 'Aylin', 'Demirtaş', 'aylin.demirtas@hotmail.com', 1, '2024-02-10'),
(32, 2, 132, 'Sibel', 'Çiçek', 'sibel.cicek@gmail.com', 1, '2024-02-20'),
(33, 2, 132, 'Zafer', 'Mert', 'zafer.mert@hotmail.com', 1, '2024-02-25'),
(34, 1, 131, 'Elif', 'Köksal', 'elif.koksal@gmail.com', 1, '2024-03-01'),
(35, 1, 127, 'Vildan', 'Tuna', 'vildan.tuna@hotmail.com', 1, '2024-03-10'),
(36, 2, 120, 'Feyza', 'Yaralı', 'feyza.yarali@gmail.com', 1, '2024-03-15'),
(37, 2, 101, 'Ozan', 'Şahin', 'ozan.sahin@hotmail.com', 1, '2024-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `FILM`
--

CREATE TABLE `FILM` (
  `Film_ID` int NOT NULL,
  `Title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FILM`
--

INSERT INTO `FILM` (`Film_ID`, `Title`) VALUES
(1, 'The Godfather'),
(2, 'The Dark Knight'),
(3, 'The Lord of the Rings: The Return of the King'),
(4, 'Before Sunrise'),
(5, 'Catch Me If You Can'),
(6, 'Me Before You'),
(7, 'Tenet'),
(8, 'IT'),
(9, 'The Silence of the Lambs'),
(10, 'Harry Potter and the Order of the Phoenix'),
(11, 'Spiderman: Homecoming'),
(12, 'Jigsaw X');

-- --------------------------------------------------------

--
-- Table structure for table `FILM_ACTOR`
--

CREATE TABLE `FILM_ACTOR` (
  `Film_ID` int NOT NULL,
  `Actor_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FILM_ACTOR`
--

INSERT INTO `FILM_ACTOR` (`Film_ID`, `Actor_ID`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 8),
(2, 9),
(10, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(2, 14),
(7, 14),
(8, 15),
(9, 16),
(10, 17),
(10, 18),
(11, 19),
(11, 20),
(12, 21);

-- --------------------------------------------------------

--
-- Table structure for table `FILM_CATEGORY`
--

CREATE TABLE `FILM_CATEGORY` (
  `Film_ID` int NOT NULL,
  `Category_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FILM_CATEGORY`
--

INSERT INTO `FILM_CATEGORY` (`Film_ID`, `Category_ID`) VALUES
(1, 1),
(1, 3),
(1, 12),
(2, 1),
(2, 5),
(2, 7),
(3, 9),
(3, 10),
(4, 2),
(4, 6),
(5, 1),
(5, 2),
(5, 10),
(6, 3),
(6, 6),
(7, 1),
(7, 5),
(7, 10),
(7, 12),
(8, 4),
(8, 7),
(9, 4),
(9, 7),
(10, 3),
(10, 9),
(10, 10),
(11, 1),
(11, 2),
(11, 9),
(12, 4),
(12, 7);

-- --------------------------------------------------------

--
-- Table structure for table `INVENTORY`
--

CREATE TABLE `INVENTORY` (
  `Inventory_ID` int NOT NULL,
  `Film_ID` int NOT NULL,
  `Store_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `INVENTORY`
--

INSERT INTO `INVENTORY` (`Inventory_ID`, `Film_ID`, `Store_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 3, 2),
(5, 4, 2),
(6, 5, 1),
(7, 5, 2),
(8, 6, 2),
(9, 7, 1),
(10, 7, 2),
(11, 8, 2),
(12, 9, 1),
(13, 10, 2),
(14, 11, 1),
(15, 11, 2),
(16, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `Payment_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Staff_ID` int NOT NULL,
  `Rental_ID` int NOT NULL,
  `Payment_Date` date NOT NULL,
  `Amount` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`Payment_ID`, `Customer_ID`, `Staff_ID`, `Rental_ID`, `Payment_Date`, `Amount`) VALUES
(1, 1, 1, 1, '2024-01-05', '104.99'),
(2, 2, 2, 2, '2024-01-14', '112.50'),
(3, 3, 1, 3, '2024-01-26', '176.50'),
(4, 4, 1, 4, '2024-02-03', '65.00'),
(5, 5, 2, 5, '2024-02-17', '158.50'),
(6, 6, 2, 6, '2024-02-28', '102.50'),
(7, 7, 3, 7, '2024-02-28', '134.99'),
(8, 8, 3, 8, '2024-03-07', '195.00'),
(9, 9, 4, 9, '2024-03-15', '88.40'),
(10, 10, 4, 10, '2024-03-29', '149.99'),
(11, 11, 5, 11, '2024-03-29', '171.50'),
(12, 12, 6, 12, '2024-04-02', '127.50'),
(13, 13, 6, 13, '2024-04-27', '105.00'),
(14, 14, 5, 14, '2024-05-05', '183.50'),
(15, 15, 7, 15, '2024-05-30', '92.50'),
(16, 15, 4, 16, '2024-06-09', '67.50'),
(17, 16, 4, 17, '2024-06-18', '163.49'),
(18, 17, 5, 18, '2024-06-26', '122.50'),
(19, 18, 6, 19, '2024-07-07', '110.00'),
(20, 18, 6, 20, '2024-07-14', '148.50'),
(21, 19, 7, 21, '2024-07-29', '94.99'),
(22, 20, 7, 22, '2024-08-05', '119.99'),
(23, 21, 7, 23, '2024-08-16', '180.00'),
(24, 22, 5, 24, '2024-08-30', '56.50'),
(25, 23, 7, 25, '2024-09-03', '162.50'),
(26, 23, 7, 26, '2024-09-15', '78.50'),
(27, 23, 7, 27, '2024-09-27', '140.00'),
(28, 24, 7, 28, '2024-10-05', '176.50'),
(29, 25, 8, 29, '2024-10-19', '97.50'),
(30, 26, 8, 30, '2024-10-30', '156.50'),
(31, 27, 9, 31, '2024-11-04', '165.00'),
(32, 28, 8, 32, '2024-11-16', '125.00'),
(33, 29, 9, 33, '2024-11-16', '191.50'),
(34, 30, 9, 34, '2024-11-27', '69.99'),
(35, 31, 9, 35, '2024-11-27', '139.99'),
(36, 31, 9, 36, '2024-11-27', '81.50'),
(37, 32, 2, 37, '2024-12-07', '150.00'),
(38, 33, 2, 38, '2024-12-07', '153.50'),
(39, 34, 1, 39, '2024-12-15', '113.50'),
(40, 34, 4, 40, '2024-12-15', '92.50'),
(41, 36, 5, 41, '2024-12-27', '185.00'),
(42, 37, 7, 42, '2024-12-27', '74.99'),
(43, 2, 6, 43, '2024-05-21', '122.50'),
(44, 8, 3, 44, '2024-01-02', '145.99'),
(45, 33, 8, 45, '2024-04-09', '170.30'),
(46, 25, 2, 46, '2024-02-26', '85.75'),
(47, 14, 9, 47, '2024-07-03', '155.40'),
(48, 18, 5, 48, '2024-06-23', '100.60'),
(49, 19, 3, 49, '2024-08-13', '178.90'),
(50, 21, 4, 50, '2024-09-01', '162.25'),
(51, 3, 2, 51, '2024-04-25', '110.50'),
(52, 26, 6, 52, '2024-02-03', '140.99'),
(53, 30, 1, 53, '2024-07-12', '190.00'),
(54, 15, 9, 54, '2024-06-11', '120.80'),
(55, 9, 7, 55, '2024-03-07', '145.20'),
(56, 11, 5, 56, '2024-01-12', '135.65'),
(57, 17, 8, 57, '2024-05-14', '155.50');

-- --------------------------------------------------------

--
-- Table structure for table `RENTAL`
--

CREATE TABLE `RENTAL` (
  `Rental_ID` int NOT NULL,
  `Inventory_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Staff_ID` int NOT NULL,
  `Return_Date` date NOT NULL,
  `Rental_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RENTAL`
--

INSERT INTO `RENTAL` (`Rental_ID`, `Inventory_ID`, `Customer_ID`, `Staff_ID`, `Return_Date`, `Rental_Date`) VALUES
(1, 1, 1, 1, '2024-01-15', '2024-01-05'),
(2, 4, 2, 2, '2024-01-17', '2024-01-14'),
(3, 3, 3, 1, '2024-02-19', '2024-01-26'),
(4, 6, 4, 1, '2024-02-15', '2024-02-03'),
(5, 4, 5, 2, '2024-03-15', '2024-02-17'),
(6, 5, 6, 2, '2024-03-05', '2024-02-28'),
(7, 1, 7, 3, '2024-03-10', '2024-02-28'),
(8, 2, 8, 3, '2024-03-14', '2024-03-07'),
(9, 5, 9, 4, '2024-03-21', '2024-03-15'),
(10, 5, 10, 4, '2024-04-07', '2024-03-29'),
(11, 2, 11, 5, '2024-04-11', '2024-03-29'),
(12, 7, 12, 6, '2024-04-09', '2024-04-02'),
(13, 1, 13, 5, '2024-05-02', '2024-04-27'),
(14, 7, 14, 6, '2024-05-11', '2024-05-05'),
(15, 2, 15, 7, '2024-06-18', '2024-05-30'),
(16, 8, 15, 4, '2024-06-17', '2024-06-09'),
(17, 1, 16, 5, '2024-06-21', '2024-06-18'),
(18, 8, 17, 4, '2024-06-28', '2024-06-26'),
(19, 3, 18, 5, '2024-07-16', '2024-07-07'),
(20, 8, 18, 6, '2024-07-19', '2024-07-14'),
(21, 3, 19, 7, '2024-08-05', '2024-07-29'),
(22, 3, 20, 7, '2024-08-07', '2024-08-05'),
(23, 3, 21, 7, '2024-08-23', '2024-08-16'),
(24, 6, 22, 5, '2024-09-04', '2024-08-30'),
(25, 6, 23, 7, '2024-09-08', '2024-09-03'),
(26, 6, 23, 7, '2024-09-25', '2024-09-15'),
(27, 9, 23, 7, '2024-10-02', '2024-09-27'),
(28, 9, 24, 7, '2024-10-10', '2024-10-05'),
(29, 8, 25, 8, '2024-10-24', '2024-10-19'),
(30, 10, 26, 8, '2024-11-05', '2024-10-30'),
(31, 12, 27, 9, '2024-11-16', '2024-11-04'),
(32, 11, 28, 8, '2024-11-23', '2024-11-16'),
(33, 12, 29, 9, '2024-11-30', '2024-11-16'),
(34, 12, 30, 9, '2024-12-04', '2024-11-27'),
(35, 12, 31, 9, '2024-12-06', '2024-11-27'),
(36, 14, 31, 9, '2024-12-07', '2024-11-27'),
(37, 13, 32, 2, '2024-12-11', '2024-12-07'),
(38, 15, 33, 2, '2024-12-17', '2024-12-07'),
(39, 14, 34, 1, '2024-12-21', '2024-12-15'),
(40, 16, 34, 4, '2024-12-23', '2024-12-15'),
(41, 14, 36, 5, '2024-12-29', '2024-12-27'),
(42, 14, 37, 7, '2024-12-30', '2024-12-27'),
(43, 13, 2, 6, '2024-06-18', '2024-05-21'),
(44, 5, 8, 3, '2024-02-05', '2024-01-02'),
(45, 7, 33, 8, '2024-05-01', '2024-04-09'),
(46, 4, 25, 2, '2024-03-12', '2024-02-26'),
(47, 6, 14, 9, '2024-07-30', '2024-07-03'),
(48, 1, 18, 5, '2024-07-14', '2024-06-23'),
(49, 16, 19, 3, '2024-09-12', '2024-08-13'),
(50, 8, 21, 4, '2024-09-15', '2024-09-01'),
(51, 14, 3, 2, '2024-05-14', '2024-04-25'),
(52, 7, 26, 6, '2024-02-28', '2024-02-03'),
(53, 10, 30, 1, '2024-08-05', '2024-07-12'),
(54, 12, 15, 9, '2024-06-25', '2024-06-11'),
(55, 4, 9, 7, '2024-04-01', '2024-03-07'),
(56, 3, 11, 5, '2024-02-10', '2024-01-12'),
(57, 6, 17, 8, '2024-06-10', '2024-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `STAFF`
--

CREATE TABLE `STAFF` (
  `Staff_ID` int NOT NULL,
  `Staff_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Staff_Surname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Store_ID` int NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `STAFF`
--

INSERT INTO `STAFF` (`Staff_ID`, `Staff_Name`, `Staff_Surname`, `Store_ID`, `Email`, `Username`) VALUES
(1, 'Ali', 'Özdemir', 1, 'ali.özdemir@dvdrental.com', 'aliozdmr'),
(2, 'Melisa', 'Çepni', 2, 'melisa.cepni@dvdrental.com', 'melisacepni'),
(3, 'Esra', 'Gönen', 1, 'esra.gonen@dvdrental.com', 'esragonen'),
(4, 'Ayşe', 'Aktaş', 2, 'ayse.aktas@dvdrental.com', 'ayseaktas'),
(5, 'Büşra', 'Gökçen', 1, 'busra.gokcen@dvdrental.com', 'busragkcn'),
(6, 'Furkan', 'Karatoprak', 2, 'furkan.karatoprak@dvdrental.com', 'frknkrtprk'),
(7, 'Hande', 'Çepni', 1, 'hande.cepni@dvdrental.com', 'handecepni'),
(8, 'Aişe', 'Uygunol', 2, 'aise.uygunol@dvdrental.com', 'aiseygnl'),
(9, 'Düzgün', 'Bulut', 1, 'düzgün.bulut@dvdrental.com', 'duzgunblt');

-- --------------------------------------------------------

--
-- Table structure for table `STORE`
--

CREATE TABLE `STORE` (
  `Store_ID` int NOT NULL,
  `Manager_Staff_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `STORE`
--

INSERT INTO `STORE` (`Store_ID`, `Manager_Staff_ID`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACTOR`
--
ALTER TABLE `ACTOR`
  ADD PRIMARY KEY (`Actor_ID`);

--
-- Indexes for table `ADDRESS`
--
ALTER TABLE `ADDRESS`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `City_ID` (`City_ID`);

--
-- Indexes for table `CATEGORY`
--
ALTER TABLE `CATEGORY`
  ADD PRIMARY KEY (`Category_ID`),
  ADD UNIQUE KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `CITY`
--
ALTER TABLE `CITY`
  ADD PRIMARY KEY (`City_ID`),
  ADD UNIQUE KEY `City_ID` (`City_ID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Store_ID` (`Store_ID`),
  ADD KEY `Address_ID` (`Address_ID`);

--
-- Indexes for table `FILM`
--
ALTER TABLE `FILM`
  ADD PRIMARY KEY (`Film_ID`),
  ADD UNIQUE KEY `Film_ID` (`Film_ID`);

--
-- Indexes for table `FILM_ACTOR`
--
ALTER TABLE `FILM_ACTOR`
  ADD KEY `Actor_ID` (`Actor_ID`),
  ADD KEY `Film_ID` (`Film_ID`);

--
-- Indexes for table `FILM_CATEGORY`
--
ALTER TABLE `FILM_CATEGORY`
  ADD KEY `Category_ID` (`Category_ID`),
  ADD KEY `Film_ID` (`Film_ID`);

--
-- Indexes for table `INVENTORY`
--
ALTER TABLE `INVENTORY`
  ADD PRIMARY KEY (`Inventory_ID`),
  ADD KEY `Film_ID` (`Film_ID`),
  ADD KEY `Store_ID` (`Store_ID`);

--
-- Indexes for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Rental_ID` (`Rental_ID`);

--
-- Indexes for table `RENTAL`
--
ALTER TABLE `RENTAL`
  ADD PRIMARY KEY (`Rental_ID`),
  ADD KEY `Inventory_ID` (`Inventory_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `STAFF`
--
ALTER TABLE `STAFF`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD UNIQUE KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Store_ID` (`Store_ID`);

--
-- Indexes for table `STORE`
--
ALTER TABLE `STORE`
  ADD PRIMARY KEY (`Store_ID`),
  ADD UNIQUE KEY `Store_ID` (`Store_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADDRESS`
--
ALTER TABLE `ADDRESS`
  ADD CONSTRAINT `ADDRESS_ibfk_1` FOREIGN KEY (`City_ID`) REFERENCES `CITY` (`City_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD CONSTRAINT `CUSTOMER_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `STORE` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ibfk_2` FOREIGN KEY (`Address_ID`) REFERENCES `ADDRESS` (`Address_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FILM_ACTOR`
--
ALTER TABLE `FILM_ACTOR`
  ADD CONSTRAINT `FILM_ACTOR_ibfk_1` FOREIGN KEY (`Actor_ID`) REFERENCES `ACTOR` (`Actor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FILM_ACTOR_ibfk_2` FOREIGN KEY (`Film_ID`) REFERENCES `FILM` (`Film_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FILM_CATEGORY`
--
ALTER TABLE `FILM_CATEGORY`
  ADD CONSTRAINT `FILM_CATEGORY_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `CATEGORY` (`Category_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FILM_CATEGORY_ibfk_2` FOREIGN KEY (`Film_ID`) REFERENCES `FILM` (`Film_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INVENTORY`
--
ALTER TABLE `INVENTORY`
  ADD CONSTRAINT `INVENTORY_ibfk_1` FOREIGN KEY (`Film_ID`) REFERENCES `FILM` (`Film_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `INVENTORY_ibfk_2` FOREIGN KEY (`Store_ID`) REFERENCES `STORE` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD CONSTRAINT `PAYMENT_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PAYMENT_ibfk_2` FOREIGN KEY (`Staff_ID`) REFERENCES `STAFF` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PAYMENT_ibfk_3` FOREIGN KEY (`Rental_ID`) REFERENCES `RENTAL` (`Rental_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RENTAL`
--
ALTER TABLE `RENTAL`
  ADD CONSTRAINT `RENTAL_ibfk_1` FOREIGN KEY (`Inventory_ID`) REFERENCES `INVENTORY` (`Inventory_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RENTAL_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RENTAL_ibfk_3` FOREIGN KEY (`Staff_ID`) REFERENCES `STAFF` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `STAFF`
--
ALTER TABLE `STAFF`
  ADD CONSTRAINT `STAFF_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `STORE` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
