-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 29, 2020 at 10:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crona`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `recovered` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `confirmed`, `deaths`, `recovered`, `created_at`, `updated_at`) VALUES
(1, 'Mainland China', 79251, 2835, 39113, '2020-02-28 18:03:37', '2020-02-29 05:33:55'),
(2, 'South Korea', 3150, 17, 27, '2020-02-28 18:03:37', '2020-02-29 05:33:55'),
(3, 'Italy', 889, 21, 46, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(4, 'Others', 705, 6, 10, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(5, 'Iran', 388, 34, 73, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(6, 'Japan', 234, 5, 32, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(7, 'Hong Kong', 94, 2, 30, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(8, 'Singapore', 96, 0, 69, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(9, 'US', 64, 0, 7, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(10, 'France', 57, 2, 11, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(11, 'Germany', 48, 0, 16, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(12, 'Kuwait', 45, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(13, 'Thailand', 41, 0, 28, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(14, 'Bahrain', 38, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(15, 'Taiwan', 39, 1, 9, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(16, 'Spain', 32, 0, 2, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(17, 'Australia', 25, 0, 11, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(18, 'Malaysia', 25, 0, 18, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(19, 'UK', 20, 0, 8, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(20, 'United Arab Emirates', 19, 0, 5, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(21, 'Vietnam', 16, 0, 16, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(22, 'Canada', 15, 0, 6, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(23, 'Macau', 10, 0, 8, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(24, 'Switzerland', 8, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(25, 'Sweden', 11, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(26, 'Iraq', 8, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(27, 'Norway', 6, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(28, 'Croatia', 5, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(29, 'Israel', 7, 0, 1, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(30, 'Oman', 6, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(31, 'Greece', 4, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(32, 'India', 3, 0, 3, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(33, 'Philippines', 3, 1, 1, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(34, 'Romania', 3, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(35, 'Austria', 6, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(36, 'Finland', 3, 0, 1, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(37, 'Russia', 2, 0, 2, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(38, 'Pakistan', 2, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(39, 'Lebanon', 4, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(40, 'Afghanistan', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(41, 'Nepal', 1, 0, 1, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(42, 'Lithuania', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(43, 'Cambodia', 1, 0, 1, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(44, 'Georgia', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(45, 'North Ireland', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(46, 'Nigeria', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(47, 'Algeria', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(48, 'Iceland', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(49, 'Belgium', 1, 0, 1, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(50, 'San Marino', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(51, 'Netherlands', 2, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(52, 'Denmark', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(53, ' Azerbaijan', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(54, 'North Macedonia', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(55, 'Belarus', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(56, 'New Zealand', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(57, 'Brazil', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(58, 'Estonia', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(59, 'Mexico', 2, 0, 0, '2020-02-28 18:03:37', '2020-02-29 03:59:12'),
(60, 'Egypt', 1, 0, 1, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(61, 'Azerbaijan', 1, 0, 0, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(62, 'Sri Lanka', 1, 0, 1, '2020-02-28 18:03:37', '2020-02-28 18:03:37'),
(63, 'Monaco', 1, 0, 0, '2020-02-29 03:59:12', '2020-02-29 03:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_28_203843_create_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
