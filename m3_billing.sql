-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 12:47 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m3_billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `create_bill`
--

CREATE TABLE `create_bill` (
  `id` int(11) NOT NULL,
  `invoice` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `create_catergory`
--

CREATE TABLE `create_catergory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `catergory_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `create_customer`
--

CREATE TABLE `create_customer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `gst_number` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `catergory_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `create_delivery_boy`
--

CREATE TABLE `create_delivery_boy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `address` text NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `create_item`
--

CREATE TABLE `create_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `no_of_units` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `group_name` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `business_name` varchar(250) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `aadhar_card` bigint(20) NOT NULL,
  `registration_date` varchar(250) NOT NULL,
  `otp` int(11) NOT NULL,
  `otp_verification` int(11) NOT NULL,
  `flat_no` varchar(250) NOT NULL,
  `buidling_street_address` text NOT NULL,
  `area` varchar(250) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `fk_sub_state` (`state_id`);

--
-- Indexes for table `create_bill`
--
ALTER TABLE `create_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_createbill` (`customer_id`);

--
-- Indexes for table `create_catergory`
--
ALTER TABLE `create_catergory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_catergory` (`user_id`);

--
-- Indexes for table `create_customer`
--
ALTER TABLE `create_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_create_customer` (`user_id`),
  ADD KEY `fk_create_catergory` (`catergory_id`),
  ADD KEY `fk_grp_id` (`group_id`),
  ADD KEY `fk_state_id` (`state_id`),
  ADD KEY `fk_city_id` (`city_id`);

--
-- Indexes for table `create_delivery_boy`
--
ALTER TABLE `create_delivery_boy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_create_delivery_boy` (`user_id`),
  ADD KEY `fk_state_id_delivery` (`state_id`),
  ADD KEY `fk_city_id_delivery` (`city_id`);

--
-- Indexes for table `create_item`
--
ALTER TABLE `create_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_create_item` (`user_id`),
  ADD KEY `fk_state_id_create_item` (`state_id`),
  ADD KEY `fk_city_id_create_item` (`city_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_create_group` (`user_id`),
  ADD KEY `fk_state_id_grp` (`state_id`),
  ADD KEY `fk_city_id_grp` (`city_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_register` (`user_type`),
  ADD KEY `fk_state` (`state_id`),
  ADD KEY `fk_city` (`city_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vacation` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `create_bill`
--
ALTER TABLE `create_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `create_catergory`
--
ALTER TABLE `create_catergory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `create_customer`
--
ALTER TABLE `create_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `create_delivery_boy`
--
ALTER TABLE `create_delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `create_item`
--
ALTER TABLE `create_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_sub_state` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `create_bill`
--
ALTER TABLE `create_bill`
  ADD CONSTRAINT `fk_createbill` FOREIGN KEY (`customer_id`) REFERENCES `create_customer` (`id`);

--
-- Constraints for table `create_catergory`
--
ALTER TABLE `create_catergory`
  ADD CONSTRAINT `fk_catergory` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `create_customer`
--
ALTER TABLE `create_customer`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `fk_create_catergory` FOREIGN KEY (`catergory_id`) REFERENCES `create_catergory` (`id`),
  ADD CONSTRAINT `fk_create_customer` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  ADD CONSTRAINT `fk_grp_id` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `create_delivery_boy`
--
ALTER TABLE `create_delivery_boy`
  ADD CONSTRAINT `fk_city_id_delivery` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `fk_create_delivery_boy` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  ADD CONSTRAINT `fk_state_id_delivery` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `create_item`
--
ALTER TABLE `create_item`
  ADD CONSTRAINT `fk_city_id_create_item` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `fk_create_item` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  ADD CONSTRAINT `fk_state_id_create_item` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `fk_city_id_grp` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `fk_create_group` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  ADD CONSTRAINT `fk_state_id_grp` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `fk_register` FOREIGN KEY (`user_type`) REFERENCES `user_types` (`id`),
  ADD CONSTRAINT `fk_state` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `vacation`
--
ALTER TABLE `vacation`
  ADD CONSTRAINT `fk_vacation` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
