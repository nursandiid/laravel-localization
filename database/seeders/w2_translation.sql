-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2021 at 06:53 AM
-- Server version: 10.3.29-MariaDB-0ubuntu0.20.10.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w2_translation`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Album 1', 'A better Blogger experience on the web', '2021-06-03 10:54:48', '2021-06-03 10:54:48'),
(2, 'Album 2', 'It’s spring cleaning time for Blogger', '2021-06-03 10:54:48', '2021-06-03 10:54:48'),
(3, 'Album 3', 'Share your unique style with new Blogger themes', '2021-06-03 10:54:48', '2021-06-03 10:54:48'),
(4, 'Album 4', 'A first few tweaks toward a better Blogger', '2021-06-03 10:54:48', '2021-06-03 10:54:48'),
(5, 'Album 5', 'More custom template flexibility', '2021-06-03 10:54:48', '2021-06-03 10:54:48'),
(6, 'Album 6', 'Keep your readers interested with the AdSense Guide to Audience Engagement', '2021-06-03 10:54:48', '2021-06-03 10:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `album_translation`
--

CREATE TABLE `album_translation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `locale` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_translation`
--

INSERT INTO `album_translation` (`id`, `album_id`, `locale`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Album 1', 'A better Blogger experience on the web', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(2, 1, 'id', 'Album 1', 'Pengalaman Blogger yang lebih baik di web', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(3, 2, 'en', 'Album 2', 'It’s spring cleaning time for Blogger', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(4, 2, 'id', 'Album 2', 'Saatnya pembersihan musim semi untuk Blogger', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(5, 3, 'en', 'Album 3', 'Share your unique style with new Blogger themes', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(6, 3, 'id', 'Album 3', 'Bagikan gaya unik Anda dengan tema Blogger baru', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(7, 4, 'en', 'Album 4', 'A first few tweaks toward a better Blogger', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(8, 4, 'id', 'Album 4', 'Beberapa penyesuaian pertama menuju Blogger yang lebih baik', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(9, 5, 'en', 'Album 5', 'More custom template flexibility', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(10, 5, 'id', 'Album 5', 'Lebih banyak fleksibilitas templat khusus', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(11, 6, 'en', 'Album 6', 'Keep your readers interested with the AdSense Guide to Audience Engagement\r\n', '2021-06-10 23:43:41', '2021-06-10 23:43:41'),
(12, 6, 'id', 'Album 6', 'Buat pembaca Anda tetap tertarik dengan Panduan AdSense untuk Keterlibatan Pemirsa', '2021-06-10 23:43:41', '2021-06-10 23:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2021_06_10_231703_create_album_table', 1),
(5, '2021_06_10_231716_create_album_translation_table', 1);

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
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_translation`
--
ALTER TABLE `album_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `album_translation`
--
ALTER TABLE `album_translation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
