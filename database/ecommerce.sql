-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 01:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`Id`, `Image`, `Name`, `Password`, `Role`, `Email`, `Mobile`, `Status`) VALUES
(10, 'WhatsApp Image 2022-01-29 at 6.45.29 PM.jpeg', 'MUHAMMAD HANI', 'hanimusani1234', 'admin', 'hanimusani7@gmail.com', '03322134291', 1),
(12, '20190814_184724.jpg', 'Sahil', 'sahil', 'employee', 'sahil@gmail.com', '03242477248', 1),
(18, 'istockphoto-947269088-612x612.jpg', 'Sameer', 'sameer', 'employee', 'sameer@gmail.com', '03352350927', 0),
(19, 'WhatsApp Image 2023-06-03 at 12.28.08 PM.jpeg', 'Muhammad Kazim', 'kazimmusani1234', 'admin', 'kazimmusani@hotmail.com', '03332312948', 1),
(20, 'WhatsApp Image 2022-12-13 at 10.18.20 PM.jpeg', 'Shayan Raza', 'shayan1234', 'employee', 'shayanrazamusani@gmail.com', '03362166829', 1),
(21, 'mh.png', 'Ali Mehdi', 'ali1234', 'employee', 'ali@gmail.com', '123455666', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Categories` varchar(255) NOT NULL,
  `Status` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Categories`, `Status`) VALUES
(11, 'Desktop Stationery Items', 1),
(12, 'Desktop Stationery Organizers', 1),
(13, 'Consumable Stationery Items', 1),
(16, 'Gift Articles', 1),
(29, 'Office Item', 1),
(64, 'Pencil & Pencil Color', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`Id`, `Name`, `Email`, `Subject`, `Message`, `Date`) VALUES
(2, 'Abid', 'abid211@gmail.com', 'Subject', 'Message', '2022-11-02 20:52:48'),
(17, 'Amir', 'amir321@gmail.com', 'Test', 'Message', '2022-11-30 10:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Tracking_Id` varchar(255) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `Payment_Type` varchar(20) NOT NULL,
  `Total_Price` float NOT NULL,
  `Payment_Status` varchar(20) NOT NULL,
  `Order_Status` int(11) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `Tracking_Id`, `User_Id`, `Email`, `Mobile`, `Address`, `City`, `Area`, `Pincode`, `Payment_Type`, `Total_Price`, `Payment_Status`, `Order_Status`, `Date`) VALUES
(40, '#1182162', 22, 'sajjadsaleem341@gmail.com', '03176122252', 'H#194', 'Karachi', 'Shahrah e Faisal', 75350, 'bank_tranfer', 4110, 'pending', 5, '2022-12-17 10:12:26'),
(41, '#2036221', 23, 'salman321@gmail.com', '03352350927', 'H#259', 'Karachi', 'GULSHAN-E-IQBAL', 75300, 'cash_on_delivery', 1460, 'success', 5, '2022-12-17 11:12:05'),
(42, '#6936952', 23, 'salman321@gmail.com', '03352350927', 'H#259', 'Karachi', 'GULSHAN-E-IQBAL', 75300, 'cash_on_delivery', 800, 'success', 5, '2022-12-17 11:12:22'),
(43, '#6742622', 22, 'sajjadsaleem341@gmail.com', '03352350927', 'H#194', 'Karachi', 'Shahrah e Faisal', 75350, 'cash_on_delivery', 300, 'success', 5, '2022-12-17 11:12:07'),
(44, '#9757372', 22, 'sajjadsaleem341@gmail.com', '0317612252', 'H#194', 'Karachi', 'Shahrah e Faisal', 75350, 'bank_tranfer', 720, 'pending', 5, '2022-12-17 11:12:45'),
(45, '#1649136', 22, 'sajjadsaleem341@gmail.com', '03176122252', 'H#194', 'Karachi', 'Shahrah e Faisal', 75350, 'bank_tranfer', 170, 'pending', 5, '2022-12-17 11:12:07'),
(46, '#8401756', 22, 'sajjadsaleem341@gmail.com', '03112656651', 'Al-Zeenat-Castle flat No B101 Soldier Bazar', 'karachi', 'soldier bazar', 74330, 'bank_tranfer', 900, 'pending', 5, '2023-06-10 03:06:47'),
(47, '#4246772', 22, 'sajjadsaleem341@gmail.com', '03322134291', '123street', 'karachi', 'as', 789, 'bank_tranfer', 1200, 'pending', 5, '2023-06-10 03:06:34'),
(48, '#5530003', 24, 'abc@gmail.com', '03322134291', '123street', 'karachi', 'soldier bazar', 789, 'cash_on_delivery', 2520, 'success', 5, '2023-06-10 04:06:42'),
(49, '#7275220', 1, 'sajjadsaleem341@gmail.com', '03112656651', 'Morning Star Montessori', 'karachi', 'soldier bazar No#3', 74330, 'bank_tranfer', 12340, 'pending', 5, '2023-06-10 07:06:38'),
(50, '#8760561', 1, 'sajjadsaleem341@gmail.com', '03112656651', 'Morning Star Montessori', 'karachi', 'soldier bazar No#3', 74330, 'cash_on_delivery', 6950, 'success', 5, '2023-06-10 07:06:09'),
(51, '#1433737', 1, 'sajjadsaleem341@gmail.com', '03112656651', 'Morning Star Montessori', 'karachi', 'soldier bazar No#3', 74330, 'cash_on_delivery', 9680, 'success', 2, '2023-06-10 07:06:22'),
(52, '#9064475', 22, 'sajjadsaleem341@gmail.com', '03112656651', 'Morning Star Montessori', 'karachi', 'soldier bazar No#3', 74330, 'paypal', 50, 'pending', 1, '2023-06-12 03:06:50'),
(53, '#4049959', 25, 'ali@gmail.com', '+92 3322134291', 'Morning Star Montessori', 'karachi', 'soldier bazar No#3', 74330, 'cash_on_delivery', 14150, 'success', 1, '2023-06-12 06:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `Id` int(11) NOT NULL,
  `Order_Id` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`Id`, `Order_Id`, `Product_Id`, `Qty`, `Price`) VALUES
(31, 40, 1312123, 2, 1600),
(32, 40, 1121217, 1, 340),
(33, 40, 1121233, 1, 570),
(34, 41, 1232322, 1, 60),
(35, 41, 1121260, 1, 1400),
(36, 42, 1232321, 2, 60),
(37, 42, 1121212, 2, 340),
(38, 43, 1121235, 2, 150),
(39, 44, 1121236, 9, 80),
(40, 45, 1232322, 2, 60),
(41, 45, 1232327, 1, 50),
(42, 46, 6434297, 2, 250),
(43, 46, 1312120, 2, 200),
(44, 47, 1121257, 1, 1200),
(45, 48, 1232328, 30, 50),
(46, 48, 1232322, 17, 60),
(47, 49, 1232329, 6, 50),
(48, 49, 1121261, 2, 1450),
(49, 49, 1121229, 20, 100),
(50, 49, 1121212, 21, 340),
(51, 50, 1121245, 30, 185),
(52, 50, 1121239, 20, 70),
(53, 51, 1121226, 50, 120),
(54, 51, 1121215, 5, 320),
(55, 51, 1232315, 4, 220),
(56, 51, 1121249, 10, 120),
(57, 52, 1232323, 1, 50),
(58, 53, 2997205, 10, 1100),
(59, 53, 1232328, 5, 50),
(60, 53, 1121261, 2, 1450);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`Id`, `Name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Cancelled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` float NOT NULL,
  `Qty` int(11) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Short_Description` varchar(2000) NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Category_Id`, `Image`, `Name`, `Price`, `Qty`, `Description`, `Short_Description`, `Status`) VALUES
(1121210, 11, 'h3.jpg', 'Punch Machines', 350, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121211, 11, 'st4.jpg', 'Stapler', 320, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121212, 11, 'st5.jpg', 'Stapler', 340, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121213, 11, 'st6.jpg', 'Stapler', 350, 60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121214, 11, 'st1.jpg', 'Stapler', 350, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121215, 11, 'h6.jpg', 'Punch Machines', 320, 60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121216, 11, 'h5.jpg', 'Punch Machines', 330, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121217, 11, 'h4.jpg', 'Punch Machines', 340, 101, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121218, 11, 'h1.jpg', 'Punch Machines', 350, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121219, 11, 'h2.jpg', 'Punch Machines', 350, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121220, 11, 't10.jpg', 'Sticky Tapes', 80, 120, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121221, 11, 't9.jpg', 'Sticky Tapes', 100, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121222, 11, 't8.jpg', 'Sticky Tapes', 90, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.\r\n', 1),
(1121223, 11, 't7.jpg', 'Sticky Tapes', 120, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121224, 11, 't6.jpg', 'Sticky Tapes', 100, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121225, 11, 't5.jpg', 'Sticky Tapes', 120, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121226, 11, 't4.jpg', 'Sticky Tapes', 120, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121227, 11, 't3.jpg', 'Sticky Tapes', 100, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121228, 11, 't2.jpg', 'Sticky Tapes', 100, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121229, 11, 't1.jpg', 'Sticky Tapes', 100, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121230, 11, 'd2.jpg', 'Tape Dispenser', 540, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121231, 11, 'd3.jpg', 'Tape Dispenser', 550, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121232, 11, 'd1.jpg', 'Tape Dispenser', 560, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121233, 11, 'd4.jpg', 'Tape Dispenser', 570, 101, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121234, 11, 'g5.jpg', 'Glue', 50, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121235, 11, 'g9.jpg', 'Glue', 150, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121236, 11, 'g8.jpg', 'Glue', 80, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121237, 11, 'g7.jpg', 'Glue', 75, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121238, 11, 'g6.jpg', 'Glue', 70, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121239, 11, 'g5.jpg', 'Glue', 70, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121240, 11, 'g4.jpg', 'Glue', 75, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121241, 11, 'g3.jpg', 'Glue', 70, 80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121242, 11, 'g2.jpg', 'Glue', 60, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121243, 11, 'g1.jpg', 'Glue', 60, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121244, 11, 's6.jpg', 'Scissors', 180, 40, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121245, 11, 's2.jpg', 'Scissors', 185, 130, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121246, 11, 's7.jpg', 'Scissors', 150, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121247, 11, 's8.jpg', 'Scissors', 180, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121248, 11, 's5.jpg', 'Scissors', 160, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121249, 11, 's4.jpg', 'Scissors', 120, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121250, 11, 's1.jpg', 'Scissors', 130, 60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 0),
(1121251, 11, 's3.jpg', 'Scissors', 140, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 0),
(1121252, 11, 'c1.jpg', 'Calculator', 1050, 30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 0),
(1121253, 11, 'c8.jpg', 'Calculator', 1100, 20, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 0),
(1121254, 11, 'c4.jpg', 'Calculator', 1150, 30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121255, 11, 'c6.jpg', 'Calculator', 1050, 15, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 0),
(1121256, 11, 'c9.jpg', 'Calculator', 1200, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1);
INSERT INTO `product` (`Id`, `Category_Id`, `Image`, `Name`, `Price`, `Qty`, `Description`, `Short_Description`, `Status`) VALUES
(1121257, 11, 'c10.jpg', 'Calculator', 1200, 10, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121258, 11, 'c8.jpg', 'Calculator', 1250, 15, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121259, 11, 'c5.jpg', 'Calculator', 1300, 18, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 0),
(1121260, 11, 'c7.jpg', 'Calculator', 1400, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1121261, 11, 'c3.jpg', 'Calculator', 1450, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232310, 12, 'cl2.jpg', 'Paper Clip', 50, 30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232311, 12, 'cl1.jpg', 'Paper Clip', 50, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232312, 12, 'w3.jpg', 'Waste buckets', 180, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232313, 12, 'w2.jpg', 'Waste buckets', 190, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232314, 12, 'w1.jpg', 'Waste buckets', 210, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232315, 12, 'w4.jpg', 'Waste buckets', 220, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232320, 12, 'dt1.jpg', 'Pen Cups', 60, 30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232321, 12, 'dt5.jpg', 'Pen Cups', 60, 20, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232322, 12, 'dt4.jpg', 'Pen Cups', 60, 120, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232323, 29, 'dt3.jpg', 'Pen Cups', 50, 20, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232324, 29, 'dt2.jpg', 'Pen Cups', 120, 15, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232325, 12, 'cl7.jpg', 'Paper Clip', 50, 120, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232326, 12, 'cl4.jpg', 'Paper Clip', 60, 100, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232327, 29, 'cl3.jpg', 'Paper Clip', 50, 51, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232328, 29, 'cl6.jpg', 'Paper Clip', 50, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1232329, 12, 'cl5.jpg', 'Paper Clip', 50, 50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1312120, 13, 'i2.jpg', 'Ink Cartridges', 200, 200, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1312121, 13, 'i3.jpg', 'Ink Cartridges', 1200, 160, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1312122, 13, 'i4.jpg', 'Ink Cartridges', 1080, 60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1312123, 13, 'i1.jpg', 'Ink Cartridges', 1600, 60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum scelerisque mauris vitae nulla porttitor, non tempus arcu dapibus. Etiam gravida orci et mauris sodales condimentum. Nulla interdum maximus ligula, et pharetra est posuere congue.', 1),
(1612501, 16, 'istockphoto-185028384-612x612.jpg', 'Crystal', 850, 12, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 0),
(2953403, 29, 'download.jpg', 'SUPER PVC Plastic A4', 600, 100, '', '', 1),
(2988568, 29, 'download (1).jpg', 'Mind Reader Mind Reader Three-tiered Desk', 2500, 55, '', '', 1),
(2997205, 29, 'images.jpg', 'Wholesale Office Files,Office Files Manufacturer', 1100, 100, '', '', 1),
(6434297, 64, 'p2.jpg', 'Crayola Colored Pencil Set', 250, 50, '', 'Crayola Colored Pencil Set, Assorted Colors, 12 Count, School Supplies, Beginner Child - http://localhost/ArtArena/index.php', 1),
(6465327, 64, 'p3.jpg', 'NATARAJ PENCIL 621', 100, 50, '', 'NATARAJ PENCIL 621 (1 PACKET = 10 PENCIL)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Email`, `Password`, `Mobile`, `Date`) VALUES
(1, 'Kashif', 'kashif321@gmail.com', 'kashif321', '32165498700', '2022-11-01 00:18:40'),
(22, 'Sajjad', 'sajjadsaleem341@gmail.com', 'sajjad125', '03112656651', '2022-12-01 01:36:29'),
(23, 'Salman', 'salman321@gmail.com', 'salman321', '65498732112', '2022-12-02 01:09:58'),
(24, 'shayan', 'shayan@gmail.com', 'shayana1234', '0101010', '2023-06-10 03:44:11'),
(25, 'Ali', 'ali@gmail.com', 'ali1234', '0000000000000', '2023-06-12 06:47:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD KEY `Category_Id` (`Category_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category_Id`) REFERENCES `categories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
