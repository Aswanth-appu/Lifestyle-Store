-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 18, 2021 at 09:12 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Cannos IOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'TITAN Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Pooja Babu', 'Pooja14@gmail.com', 'pooja@14', '9988785351', 'Calicut', 'SM street (H.0)N0-32'),
(2, 'Abinav C', 'Abinav2000@gmail.com', 'abi@20', '9785678562', 'Chennai', 'Railway station Junction'),
(3, 'Akshay A K', 'Akshay24@gmail.com', 'aks@24', '8978564333', 'Kochi', 'Marine Drive'),
(4, 'Niranjan V P', 'Prince@gmail.com', 'prince@234', '8795678434', 'Trivandrum', 'Playam Market Road'),
(5, 'Ganga Das', 'ganga0512@gmail.com', 'ganga@0512', '7859687455', 'Banglore', 'Sadhandha reddy road'),
(6, 'Robin B R', 'Robee19@gmail.com', 'robee0124', '6755982366', 'Delhi', 'Chandini Chowk Gali No.4'),
(7, 'Akhil Krishna', 'Akhil05@gmail.com', 'akhil@123', '9923126677', 'Mangloor', 'Surakal NIT road'),
(8, 'Rohith K', 'Rohith123@gmail.com', 'rohith@123', '9824377648', 'Pune', 'Holl top house colony'),
(9, 'Nidheesh P', 'nidhi2002@gmail.com', 'nidhi@234', '8089994569', 'Hydrabad', 'Patel house colany'),
(10, 'Sarath', 'sarath0011@gmail.com', 'sarath@21', '9045672211', 'pune', 'Malayali Houses NO-34'),
(11, 'Sayand', 'sayand2016@gmail.com', 'sayand@99', '7980589302', 'Selam', 'Near shiva Temple');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(1, 2, 2, 'Added to cart'),
(2, 4, 9, 'Confirmed'),
(3, 4, 11, 'Added to cart'),
(4, 8, 9, 'Confirmed'),
(5, 5, 5, 'Added to cart'),
(6, 6, 5, 'Added to cart'),
(7, 1, 4, 'Confirmed'),
(8, 3, 2, 'Added to cart'),
(9, 11, 9, 'Added to cart');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
