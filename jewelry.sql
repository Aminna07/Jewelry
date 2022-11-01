-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2022 at 05:01 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Adress` varchar(45) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(45) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(45) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Tovar` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `Name`, `Tovar`) VALUES
(1, 'Aminna', 'CartierLove');

-- --------------------------------------------------------

--
-- Table structure for table `postavshik`
--

CREATE TABLE `postavshik` (
  `id` int(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `e-mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tovar`
--

CREATE TABLE `tovar` (
  `id` int(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `RingCheck` varchar(45) NOT NULL,
  `ChainCheck` varchar(45) NOT NULL,
  `SergiCheck` varchar(45) NOT NULL,
  `Provider` varchar(45) NOT NULL,
  `Prise` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Material` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tovar`
--

INSERT INTO `tovar` (`id`, `Type`, `RingCheck`, `ChainCheck`, `SergiCheck`, `Provider`, `Prise`, `Name`, `Material`) VALUES
(1, 'Ring', 'Yes', 'No', 'No', 'Italy', '30000', 'CartierLove', 'PinkGold');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(45) NOT NULL,
  `login` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Adress` varchar(45) CHARACTER SET utf8 NOT NULL,
  `e-mail` varchar(45) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `Adress`, `e-mail`, `phone_number`) VALUES
(1, 'test', 'test', 'test', 'test', 'test'),
(2, 'Aminna', 'Aminna', 'Aminna', 'Aminna', 'Aminna'),
(3, 'gg', 'gg', 'dsg', 'regr', '3466'),
(5, 'Admin', 'Admin', 'Admin', 'Admin', 'Admin'),
(7, '2', '2', '2', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(45) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `adress` varchar(45) CHARACTER SET utf8 NOT NULL,
  `check` varchar(45) CHARACTER SET utf8 NOT NULL,
  `date` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Courier` varchar(45) CHARACTER SET utf8 NOT NULL,
  `city` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Tovar` varchar(45) CHARACTER SET utf8 NOT NULL,
  `status` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zakaz`
--

INSERT INTO `zakaz` (`id`, `Name`, `adress`, `check`, `date`, `Courier`, `city`, `Tovar`, `status`) VALUES
(1, 'Aminna', '', '', '', '', 'Aminna', '', ''),
(2, 'Aminna', 'Simf', '+', '18.10.2018', 'Alex', 'Aminna', 'CartierLove', ''),
(3, 'Aminna', 'gdfdf', '+', 'dsgsdg', 'fbd', 'Aminna', 'sdgd', 'получено');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postavshik`
--
ALTER TABLE `postavshik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `postavshik`
--
ALTER TABLE `postavshik`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
