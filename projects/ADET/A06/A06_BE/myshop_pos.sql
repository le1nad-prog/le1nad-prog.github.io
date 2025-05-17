-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 01:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(5) NOT NULL,
  `categoryName` varchar(20) NOT NULL,
  `categoryImage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`, `categoryImage`) VALUES
(1, 'Flowers', 'flower.png'),
(2, 'Arrangements', 'arrangement.png'),
(3, 'Plants & Seeds', 'plant.png'),
(4, 'Pots', 'pot.png'),
(5, 'Soils & Fertlizer', 'fertilizer.png'),
(6, 'Gardening Tools', 'gardening.png'),
(7, 'PlantCare', 'plant care.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(5) NOT NULL,
  `categoryID` int(5) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productImage` varchar(20) NOT NULL,
  `productPrice` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productName`, `productImage`, `productPrice`) VALUES
(1, 1, 'Tulip Pink', 'flower1.png', '100.00'),
(2, 1, 'Tulip Yellow', 'flower2.png', '100.00'),
(3, 1, 'Tulip Violet', 'flower3.png', '100.00'),
(4, 1, 'Rose Pink', 'flower4.png', '50.00'),
(5, 1, 'Rose Red', 'flower5.png', '80.00'),
(6, 1, 'Rose Yellow', 'flower6.png', '80.00'),
(7, 1, 'Lilies White', 'flower7.png', '80.00'),
(8, 1, 'Lilies Orange ', 'flower8.png', '120.00'),
(9, 1, 'Lilies Pink', 'flower9.png', '120.00'),
(10, 1, 'Orchids White', 'flower10.png', '50.00'),
(11, 1, 'Orchids Purple', 'flower11.png', '100.00'),
(12, 1, 'Orchids Blue', 'flower12.png', '100.00'),
(13, 1, 'Carnations White', 'flower13.png', '30.00'),
(14, 1, 'Carnations Pink', 'flower14.png', '60.00'),
(15, 1, 'Carnations Red', 'flower15.png', '60.00'),
(16, 1, 'Daisies White', 'flower16.png', '20.00'),
(17, 1, 'Daisies Pink', 'flower17.png', '40.00'),
(18, 1, 'Daisies Yellow', 'flower18.png', '40.00'),
(19, 1, 'Sunflower Yellow', 'flower19.png', '60.00'),
(20, 1, 'Sunflower Orange', 'flower20.png', '100.00'),
(21, 1, 'Sunflower Brown', 'flower21.png', '100.00'),
(22, 1, 'Chrysanthemums White', 'flower22.png', '20.00'),
(23, 1, 'Chrysanthemums Yellow', 'flower23.png', '50.00'),
(24, 1, 'Chrysanthemums Purple', 'flower24.png', '50.00'),
(25, 1, 'Hydrangeas White', 'flower25.png', '100.00'),
(26, 1, 'Hydrangeas Pink', 'flower26.png', '100.00'),
(27, 1, 'Hydrangeas Blue', 'flower27.png', '200.00'),
(28, 1, 'Irises White ', 'flower28.png', '100.00'),
(29, 1, 'Irises Blue ', 'flower29.png', '150.00'),
(30, 1, 'Irises Purple', 'flower30.png', '150.00'),
(31, 2, 'Classic Rose Bouquet', 'arrangement1.png', '1200.00'),
(32, 2, 'Sunshine Surprise', 'arrangement2.png', '850.00'),
(33, 2, 'Tulip Charm', 'arrangement3.png', '1500.00'),
(34, 2, 'Mixed Peonies in Glass Vase', 'arrangement4.png', '1800.00'),
(35, 2, 'Lily & Carnation Basket', 'arrangement5.png', '1500.00'),
(36, 2, 'Boxed Hydrangeas & Roses', 'arrangement6.png', '2000.00'),
(37, 2, 'White Rose Corsage', 'arrangement7.png', '250.00'),
(38, 2, 'Babys Breath Crown', 'arrangement8.png', '700.00'),
(39, 2, 'Single Orchid Stem', 'arrangement9.png', '350.00'),
(40, 2, '12 Red Roses Bouquet', 'arrangement10.png', '1500.00'),
(41, 2, 'Heart-Shaped Tulip Box', 'arrangement11.png', '700.00'),
(42, 2, 'Rose & Lily Combo', 'arrangement12.png', '1600.00'),
(43, 2, 'Daisy Birthday Bouquet', 'arrangement13.png', '1000.00'),
(44, 2, 'Pastel Carnations for Mom', 'arrangement14.png', '1200.00'),
(45, 2, 'Blue & White Arrangement', 'arrangement15.png', '1300.00'),
(46, 2, 'White Lily Wreath', 'arrangement16.png', '3000.00'),
(47, 2, 'Sunflower Vase', 'arrangement17.png', '1400.00'),
(48, 2, 'Pink Tulip Wrap', 'arrangement18.png', '1100.00'),
(49, 3, 'Snake Plant', 'plant1.png', '350.00'),
(50, 3, 'Peace Lily', 'plant2.png', '400.00'),
(51, 3, 'Pothos (Devils Ivy)', 'plant3.png', '250.00'),
(52, 3, 'Succulent (Echeveria)', 'plant4.png', '150.00'),
(53, 3, 'Jade Plant', 'plant5.png', '200.00'),
(54, 3, 'Ball Cactus', 'plant6.png', '180.00'),
(55, 3, 'Bougainvillea', 'plant7.png', '300.00'),
(56, 3, 'Rose Bush', 'plant8.png', '450.00'),
(57, 3, 'Calamansi Plant', 'plant9.png', '350.00'),
(58, 3, 'Lemon Tree (young)', 'plant10.png', '600.00'),
(59, 3, 'Guava Plant', 'plant11.png', '400.00'),
(60, 3, 'Basil Seeds', 'plant12.png', '120.00'),
(61, 3, 'Mint Seeds', 'plant13.png', '130.00'),
(62, 3, 'Bell Pepper Seeds', 'plant14.png', '50.00'),
(63, 3, 'Aloe Vera', 'plant15.png', '180.00'),
(64, 3, 'Sunflower Seeds', 'plant16.png', '120.00'),
(65, 3, 'Lettuce Seeds', 'plant17.png', '45.00'),
(66, 3, 'Tomato Seeds', 'plant18.png', '50.00'),
(67, 4, 'SOJABÖNA', 'pot1.png', '80.00'),
(68, 4, 'BUSKVERK', 'pot2.png', '30.00'),
(69, 4, 'FRIDFULL', 'pot3.png', '250.00'),
(70, 4, 'PERSILLADE', 'pot4.png', '1290.00'),
(71, 4, 'DAIDAI', 'pot5.png', '50.00'),
(72, 4, 'NYPON', 'pot6.png', '80.00'),
(73, 4, 'HONUNGSPALM', 'pot7.png', '390.00'),
(74, 4, 'BITTERGURKA', 'pot8.png', '690.00'),
(75, 4, 'FJÄRILSBUSKE', 'pot9.png', '390.00'),
(76, 4, 'HASSELBUKETT', 'pot10.png', '690.00'),
(77, 4, 'GRADVIS', 'pot11.png', '400.00'),
(78, 4, 'KLOTLÖNN', 'pot12.png', '30.00'),
(79, 5, 'Loam Soil', 'fertilizer1.png', '100.00'),
(80, 5, 'Garden Soil', 'fertilizer2.png', '90.00'),
(81, 5, 'Rice Hull', 'fertilizer3.png', '70.00'),
(82, 5, 'Potting Mix', 'fertilizer4.png', '120.00'),
(83, 5, 'Coco Peat', 'fertilizer5.png', '80.00'),
(84, 5, 'Vermicast', 'fertilizer6.png', '150.00'),
(85, 5, 'Compost Soil', 'fertilizer7.png', '100.00'),
(86, 5, 'Seaweed Fertilizer', 'fertilizer8.png', '150.00'),
(87, 5, 'Organic Fertilizer', 'fertilizer9.png', '110.00'),
(88, 5, 'Urea 46-0-0', 'fertilizer10.png', '110.00'),
(89, 5, 'Compost Tea', 'fertilizer11.png', '160.00'),
(90, 5, 'Calcium Nitrate', 'fertilizer12.png', '130.00'),
(91, 6, 'Hand Trowel', 'gardening1.png', '120.00'),
(92, 6, 'Hand Fork', 'gardening2.png', '130.00'),
(93, 6, 'Pruning Shears', 'gardening3.png', '180.00'),
(94, 6, 'Garden Gloves', 'gardening4.png', '100.00'),
(95, 6, 'Watering Can', 'gardening5.png', '200.00'),
(96, 6, 'Spray Bottle', 'gardening6.png', '80.00'),
(97, 6, 'Transplanter Tool', 'gardening7.png', '110.00'),
(98, 6, 'Weeder Tool', 'gardening8.png', '100.00'),
(99, 6, 'Soil pH Meter', 'gardening9.png', '250.00'),
(100, 6, 'Garden Rake', 'gardening10.png', '160.00'),
(101, 6, 'Hose with Nozzle', 'gardening11.png', '300.00'),
(102, 6, 'Plant Labels & Market Set', 'gardening12.png', '90.00'),
(103, 7, 'Leaf Shine Spray', 'plantcare1.png', '150.00'),
(104, 7, 'Neem Oil Insecticide', 'plantcare2.png', '120.00'),
(105, 7, 'Plant Vitamins', 'plantcare3.png', '130.00'),
(106, 7, 'Plant Support Clips', 'plantcare4.png', '90.00'),
(107, 7, 'Moss Pole', 'plantcare5.png', '180.00'),
(108, 7, 'Self-Watering Spikes', 'plantcare6.png', '100.00'),
(109, 7, 'Watering Globe', 'plantcare7.png', '95.00'),
(110, 7, 'Humidity Tray', 'plantcare8.png', '140.00'),
(111, 7, 'Fungicide Spray', 'plantcare9.png', '110.00'),
(112, 7, 'Organic Pest Repellent Granules', 'plantcare10.png', '120.00'),
(113, 7, 'Digital Thermometer', 'plantcare11.png', '270.00'),
(114, 7, 'Plant Training Wire', 'plantcare12.png', '85.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
