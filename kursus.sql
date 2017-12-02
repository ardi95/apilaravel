-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 11:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bukutamus`
--

CREATE TABLE `bukutamus` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukutamus`
--

INSERT INTO `bukutamus` (`id`, `nama`, `alamat`, `jenis_kelamin`, `notel`, `foto`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Jefferey Goodwin', '243 Trenton Forges Apt. 705\nPort Sandyfurt, NJ 95101-6949', 'pria', '+1-291-624-2674', 'tes.jpg', NULL, NULL, NULL),
(2, 'Lucienne Swift PhD', '3609 Weissnat Divide\nNorth Aliya, RI 33517', 'pria', '+1-450-874-6234', 'tes.jpg', NULL, NULL, NULL),
(3, 'Rod Daugherty', '338 Satterfield Forges Suite 792\nWest Jordyn, IN 37704-2249', 'pria', '1-387-261-9695 x87402', 'tes.jpg', NULL, NULL, NULL),
(4, 'Pierre Reichel', '7439 Hickle Loaf\nParkerhaven, PA 21720-8733', 'pria', '+1-576-820-8603', 'tes.jpg', NULL, NULL, NULL),
(5, 'Tyra Schimmel', '1055 Odie Throughway Apt. 608\nPort Mireya, CA 44329-4599', 'pria', '(370) 722-7441', 'tes.jpg', NULL, NULL, NULL),
(6, 'Mrs. Rebeka Witting IV', '653 Myron Villages\nEast Rocioville, OR 44198', 'pria', '1-264-743-4696 x887', 'tes.jpg', NULL, NULL, NULL),
(7, 'Yadira Welch', '248 Langosh Turnpike\nBryonfurt, LA 81127-7671', 'pria', '1-826-497-2596 x47761', 'tes.jpg', NULL, NULL, NULL),
(8, 'Orlando McCullough', '3370 Kling Neck Suite 417\nSouth Ginobury, DE 35045', 'pria', '763.318.9554', 'tes.jpg', NULL, NULL, NULL),
(9, 'Arch Tremblay', '54452 Sharon Village\nWest Kelton, AL 61573', 'pria', '220-829-0456 x01475', 'tes.jpg', NULL, NULL, NULL),
(10, 'Dr. Xavier Will', '9244 Kane Lane\nSouth Jaquelinebury, WI 32907-6885', 'pria', '495.821.0066', 'tes.jpg', NULL, NULL, NULL),
(11, 'Gerald Gutkowski IV', '2318 Keebler Meadow Suite 165\nWillmouth, CA 24362', 'pria', '710-852-5802 x35710', 'tes.jpg', NULL, NULL, NULL),
(12, 'Wilfrid Funk', '53746 Ebert Oval\nEast Joanymouth, FL 18677', 'pria', '+1.513.394.7192', 'tes.jpg', NULL, NULL, NULL),
(13, 'Brock Runolfsson', '3249 Elisabeth Springs Apt. 602\nLake Violetview, IA 26243', 'pria', '372-653-0372 x5532', 'tes.jpg', NULL, NULL, NULL),
(14, 'Fatima Rippin', '68816 Deborah Islands\nMertzport, PA 36587-2977', 'pria', '1-742-352-8151', 'tes.jpg', NULL, NULL, NULL),
(15, 'Issac Lebsack', '175 Hoeger Spurs Suite 267\nLewisburgh, NC 05640', 'pria', '+1-965-945-9374', 'tes.jpg', NULL, NULL, NULL),
(16, 'Lottie Robel', '2994 Barton Centers\nKrajcikfort, TN 38457-7056', 'pria', '+1.861.475.7468', 'tes.jpg', NULL, NULL, NULL),
(17, 'Aron Wintheiser', '2652 Abbott Inlet Apt. 781\nNorth Josianeville, DE 17009-8029', 'pria', '+1.614.809.9033', 'tes.jpg', NULL, NULL, NULL),
(18, 'Yasmeen Bauch', '816 Clement Creek\nMarquardtbury, SC 67799', 'pria', '(561) 251-7296 x884', 'tes.jpg', NULL, NULL, NULL),
(19, 'Hoyt Kris', '58359 Terrell Manor\nNew Marjorieborough, MT 60693-7089', 'pria', '1-886-594-6315', 'tes.jpg', NULL, NULL, NULL),
(20, 'Mr. Chadd Gusikowski', '7035 Toney Estates\nSouth Rickey, OK 00075', 'pria', '1-369-813-4404 x380', 'tes.jpg', NULL, NULL, NULL),
(21, 'ardian', 'aaaca', 'pria', '089674256264', 'anisa.jpg', NULL, '2017-11-21 10:38:59', '2017-11-21 10:38:59');

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_11_10_231207_create_bukutamus_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ardiansyah pratama', 'ardiansyahpratama95@gmail.com', '$2y$10$RBtSuclkdG9toyznQ.Wma.v6DlYZDQiY10C8x5b0xBNJKT4ss2UwC', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukutamus`
--
ALTER TABLE `bukutamus`
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
-- AUTO_INCREMENT for table `bukutamus`
--
ALTER TABLE `bukutamus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
