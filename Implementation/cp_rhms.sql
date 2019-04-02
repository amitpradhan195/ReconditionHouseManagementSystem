-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2019 at 02:43 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp_rhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_02_13_052712_create_tbl_user_type_table', 1),
(3, '2014_10_12_000000_create_users_table', 2),
(8, '2019_02_13_053426_create_tbl_item_table', 3),
(10, '2019_03_14_050952_create_tbl_expired_booking_table', 5),
(11, '2019_02_13_054047_create_tbl_booking_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `bookingId` int(10) UNSIGNED NOT NULL,
  `bookingDate` datetime NOT NULL,
  `expireDate` datetime NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `itemId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`bookingId`, `bookingDate`, `expireDate`, `userId`, `itemId`, `created_at`, `updated_at`) VALUES
(6, '2019-03-14 18:38:31', '2019-03-16 18:38:31', 6, 18, '2019-03-14 07:08:31', '2019-03-14 07:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expired_booking`
--

CREATE TABLE `tbl_expired_booking` (
  `id` int(10) UNSIGNED NOT NULL,
  `expiredDate` datetime NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `itemId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_expired_booking`
--

INSERT INTO `tbl_expired_booking` (`id`, `expiredDate`, `userId`, `itemId`, `created_at`, `updated_at`) VALUES
(1, '2019-03-14 08:15:41', 6, 18, '2019-03-14 02:30:41', '2019-03-14 02:30:41'),
(2, '2019-03-14 08:30:55', 6, 20, '2019-03-14 02:45:55', '2019-03-14 02:45:55'),
(3, '2019-03-14 15:00:14', 6, 17, '2019-03-14 03:30:14', '2019-03-14 03:30:14'),
(4, '2019-03-14 18:23:44', 6, 19, '2019-03-14 06:53:44', '2019-03-14 06:53:44'),
(5, '2019-03-14 18:24:31', 6, 19, '2019-03-14 06:54:31', '2019-03-14 06:54:31'),
(6, '2019-03-14 18:27:33', 6, 19, '2019-03-14 06:57:33', '2019-03-14 06:57:33'),
(7, '2019-03-14 18:28:34', 6, 19, '2019-03-14 06:58:34', '2019-03-14 06:58:34'),
(8, '2019-03-14 18:37:26', 6, 17, '2019-03-14 07:07:26', '2019-03-14 07:07:26'),
(9, '2019-03-14 18:41:38', 6, 18, '2019-03-14 07:11:38', '2019-03-14 07:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `itemId` int(10) UNSIGNED NOT NULL,
  `itemType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` int(11) NOT NULL,
  `cylinder` int(11) NOT NULL,
  `noOfGears` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `frontBrake` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rearBrake` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ABS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelYear` year(4) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`itemId`, `itemType`, `brand`, `modelName`, `cc`, `cylinder`, `noOfGears`, `mileage`, `frontBrake`, `rearBrake`, `fuelType`, `ABS`, `price`, `img`, `modelYear`, `description`, `created_at`, `updated_at`) VALUES
(17, 'Sports', 'Suzuki', 'Hayabusa', 1300, 2, 6, 25, 'Disc', 'Disc', 'Petrol', 'Available', 5000000, 'itemImages/FZ-25.jpg', 2013, 'It\'s Fantastic.', '2019-03-05 06:49:32', '2019-03-05 06:49:32'),
(18, 'Cruiser', 'Bajaj', 'Avenger', 220, 1, 5, 40, 'Disc', 'Drum', 'Petrol', 'Not Available', 280000, 'itemImages/200 NS.jpg', 2016, 'It\'s Nice.', '2019-03-05 06:51:43', '2019-03-05 06:51:43'),
(19, 'Dirt', 'Honda', 'CBR 1000RR', 300, 1, 6, 20, 'Disc', 'Disc', 'Petrol', 'Not Available', 600000, 'itemImages/R1.jpg', 2018, 'It\'s Fire.', '2019-03-05 06:55:50', '2019-03-05 06:55:50'),
(20, 'Sports', 'Bajaj', 'Pulsar', 150, 1, 5, 40, 'Disc', 'Drum', 'Petrol', 'Not Available', 230000, 'itemImages/FZ-25.jpg', 2015, 'asadsd', '2019-03-05 07:00:51', '2019-03-05 07:00:51'),
(22, 'Sports', 'Bajaj', '200 NS', 200, 1, 6, 35, 'Disc', 'Disc', 'Petrol', 'Not Available', 310000, 'itemImages/200 NS.jpg', 2015, 'sadads', '2019-03-05 07:43:26', '2019-03-05 07:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` enum('Male','Female','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `userTypeId` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `firstName`, `lastName`, `Gender`, `address`, `contactNo`, `email`, `dateOfBirth`, `userTypeId`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', '$2y$10$pdhbs454yOkIOwCxSDzsB.lkuE2jKYuivgU4dtVehdEaDSkCov/FG', 'Amit', 'Pradhan', 'Male', 'BTM', '9817971463', 'amitpradhan195@gmail.com', '1997-09-29', 1, 'uAd2NOYvwMmSTYfnZTg39WwAR99OAcXBd52cJNQvQipIWxVduA8h61hJpGRo', '2019-02-21 09:51:10', '2019-02-28 07:47:04'),
(5, 'gagan', '$2y$10$fo79RrJNKAxAcZb2eGE0IOC6lhuEZW0YB3ZMwCam0enxK2nFzZtgy', 'Gagan', 'Dangol', 'Male', 'BTM', '984545621316', 'grozendangol@gmail.com', '1998-02-09', 2, 'Nens4UQyOllNmtECMxxk6m5ClMGLQHaSrzrEgI6HtrDX0mrGzsa15YaGLoxw', '2019-02-22 07:51:23', '2019-02-22 07:51:23'),
(6, 'anish', '$2y$10$K2jtS3wZ9g1Ibm/meMcha.iN7Xk1LLQyHTkfzc4T0e7RYRkbgwSkq', 'anish', 'budathoki', 'Male', 'kirtipur', '9836532223', 'anish@gmail.com', '1998-04-25', 2, 'TGQgVTkSkrhSSnd5sgpftdZMidG6LzoVuGLShtB2vXufkHWUbSVvErp1lCnX', '2019-02-23 09:53:12', '2019-03-14 05:25:03'),
(7, 'saugat', '$2y$10$cVpe/dNkMZrYT7aallBN1OCJK5zeKum4AN5ej4ixHD2jnmyTTQ2ga', 'saugat', 'kc', 'Male', 'kirtipur', '9875461512', 'saugatkc@gmail.com', '1997-09-19', 2, 'fqApOLb64zExsUjQs2kgMq1DvqMI1xZgz7g5Td5JGLT6k7u11tSxiLGFIzXl', '2019-02-23 10:18:28', '2019-02-23 10:18:28'),
(9, 'dawa', '$2y$10$fQ.h5N5tM99XRkvAzTXEOOrxoSYAzZF.SckDjD3kOL7ADGsm7qZiW', 'dawa', 'sherpa', 'Male', 'ktm', '9844124578', 'dawa@gmail.com', '1995-04-06', 2, 'Ilsdbc2F5iRzmBqUBkNG7ETEwbhhYgr8fYwuJeB1ax0m4d00Qga8UfXMYGA9', '2019-02-24 00:58:58', '2019-03-02 23:02:54'),
(10, 'sadina', '$2y$10$GlYoaOzvbSEvqk0ejeMc/uF4CUOdDwVZ8GY48lB/agFA2NB89h5J.', 'sadina', 'magar', 'Female', 'Sunsari', '9846545465', 'sadina@gmail.com', '1999-05-07', 2, '4yqH3CmBxvraE9Po0mCgmowElV2uvmY2dtsjk7qbc2Wc9AmBmvClx9rxbNqY', '2019-02-24 01:03:39', '2019-02-24 01:03:39'),
(11, 'daisyna', '$2y$10$TlZCoMwOc96e1KgepzhrMeGYj5VsIZvXoIORQ9FcExMoibRZVXtKu', 'daisyn', 'shrestha', 'Female', 'KTM', '9878543245', 'daisyna@gmail.com', '1999-06-04', 2, 'iW4xZkFTluPH8gEGyY8hDgpg4j9UKVaTLbNCe9mHEJ1wFtvHd4Hzh5aVAWKj', '2019-02-24 01:05:26', '2019-02-24 01:05:26'),
(20, 'ashish', '$2y$10$EwIaX6.G2co/0TsQ3BO4mukUP2.o2WqulB2aU2JY6VsC3VeUFYnbu', 'Ashish', 'pokhrel', 'Male', 'Morang', '9836532223', 'ashish@gmail.com', '1997-03-09', 2, 'K0jNxER7YZHnAj9dVreNMLj06EMWrmQDLNsC2MyRFRTPMrf9VYJMrUYh74j9', '2019-02-28 09:49:29', '2019-02-28 09:49:29'),
(21, 'simran', '$2y$10$Z7nSkizWWVc3eV8gsi/4WOT3HffOy/zcH5Z03sgevM9Cb97aVofEi', 'simran', 'shah', 'Female', 'itahri', '9803933811', 'simran@gmail.com', '2022-06-08', 2, 'IVbgiNkwNZ5KRX2ddCOxU2pNGuFDFCubbe4Lyq8zvmaMFqDDLlWTULRRaxMs', '2019-02-28 20:35:15', '2019-02-28 23:26:03'),
(22, 'bibek', '$2y$10$MLBw8Guprpz9j67pGl2cxOb1CmABYDwI74z0MpbsAQbSuJmlXin3m', 'Bibek', 'Dahal', 'Male', 'New Baneshwar', '9812454324', 'bibek@gmail.com', '2021-04-05', 2, 'h5w8Omr1jd6rLIQXkkT5t3ja2L7D182zCeepYr92lxXSSRcPbFIXyCJIS8Yl', '2019-02-28 23:27:02', '2019-02-28 23:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usertype`
--

CREATE TABLE `tbl_usertype` (
  `userTypeId` int(10) UNSIGNED NOT NULL,
  `userType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_usertype`
--

INSERT INTO `tbl_usertype` (`userTypeId`, `userType`, `created_at`, `updated_at`) VALUES
(1, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'user', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`bookingId`),
  ADD KEY `tbl_booking_userid_foreign` (`userId`),
  ADD KEY `tbl_booking_itemid_foreign` (`itemId`);

--
-- Indexes for table `tbl_expired_booking`
--
ALTER TABLE `tbl_expired_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_expired_booking_userid_foreign` (`userId`),
  ADD KEY `tbl_expired_booking_itemid_foreign` (`itemId`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_users_username_unique` (`username`),
  ADD UNIQUE KEY `tbl_users_email_unique` (`email`),
  ADD KEY `tbl_users_usertypeid_foreign` (`userTypeId`);

--
-- Indexes for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  ADD PRIMARY KEY (`userTypeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookingId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_expired_booking`
--
ALTER TABLE `tbl_expired_booking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `itemId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  MODIFY `userTypeId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `tbl_booking_itemid_foreign` FOREIGN KEY (`itemId`) REFERENCES `tbl_items` (`itemId`),
  ADD CONSTRAINT `tbl_booking_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_expired_booking`
--
ALTER TABLE `tbl_expired_booking`
  ADD CONSTRAINT `tbl_expired_booking_itemid_foreign` FOREIGN KEY (`itemId`) REFERENCES `tbl_items` (`itemId`),
  ADD CONSTRAINT `tbl_expired_booking_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`id`);

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_usertypeid_foreign` FOREIGN KEY (`userTypeId`) REFERENCES `tbl_usertype` (`userTypeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
