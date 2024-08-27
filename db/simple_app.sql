-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 06:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Oberbrunner, Hill and Gusikowski', '2024-08-25 09:01:07', '2024-08-25 09:01:07'),
(2, 'Effertz Group', '2024-08-25 09:01:09', '2024-08-25 09:01:09'),
(3, 'Jacobi, Emmerich and Schowalter', '2024-08-25 09:01:20', '2024-08-25 09:01:20'),
(4, 'Runolfsdottir, Auer and Roob', '2024-08-25 09:01:42', '2024-08-25 09:01:42'),
(5, 'Haag Ltd', '2024-08-25 09:01:43', '2024-08-25 09:01:43'),
(6, 'Kuhn, McLaughlin and McLaughlin', '2024-08-25 09:01:48', '2024-08-25 09:01:48'),
(7, 'Stamm, Stamm and Conn', '2024-08-25 09:01:49', '2024-08-25 09:01:49'),
(8, 'Klocko, Lueilwitz and Hermann', '2024-08-25 09:01:52', '2024-08-25 09:01:52'),
(9, 'Bauch-Bergnaum', '2024-08-25 09:01:53', '2024-08-25 09:01:53'),
(10, 'Moen PLC', '2024-08-25 09:01:56', '2024-08-25 09:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `department_id`, `email`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Deron Cummings Sr.vikas', 1, 'mclaughlin.dino@example.com', '(347) 983-0585', 'public/images/n2NDKyPYkQInX3Utf2c1EYwMtphlcVTOru2wGa5O.jpg', '2024-08-25 09:01:56', '2024-08-26 01:18:16'),
(2, 'Mr. Jakob Auer Sr.vikas', 5, 'ana.pfeffervikas@example.com', '7854125478', 'public/images/ocOfCA59baVjHQfArL3GCw3ZYm5rWeKzTCPISOTf.jpg', '2024-08-25 09:01:56', '2024-08-26 00:16:30'),
(4, 'Gladyce Deckow', 4, 'jovany30@example.com', '+1-817-591-2330', 'public/images/4DJhpDXenf7zQITEIjFYst4mlI4z8V8vZwMbwAps.jpg', '2024-08-25 09:01:56', '2024-08-26 01:11:55'),
(5, 'Layne Erdman', 5, 'nsipes@example.net', '+1 (954) 712-0629', 'public/images/jH573gZAfQvnUoKNAlXnTCXQXxPXGJPBLsp6FgXr.jpg', '2024-08-25 09:01:56', '2024-08-26 01:18:31'),
(6, 'Robert Botsford', 6, 'dillan.gusikowski@example.net', '301.469.4957', 'public/images/nuar2nVgpCj3QCT1NfHKjjXdtBvwG8bOAEkmNVvd.jpg', '2024-08-25 09:01:56', '2024-08-26 01:18:42'),
(7, 'Robyn Gorczany', 7, 'halie.okuneva@example.net', '1-641-514-4417', '35ed697bd9d67504ff058bfc55d622c4.png', '2024-08-25 09:01:56', '2024-08-25 09:01:56'),
(8, 'Jeromy Hermann I', 8, 'luz18@example.org', '1-601-752-2846', 'd2fe8f47771bf9391311d1308c3362cb.png', '2024-08-25 09:01:56', '2024-08-25 09:01:56'),
(9, 'Anthony Stoltenberg', 9, 'taylor36@example.org', '551.443.3903', 'public/images/78IDQGMU4VGhPxglSFhqUdelkMqDrAz2EToHh32h.jpg', '2024-08-25 09:01:56', '2024-08-26 01:20:53'),
(10, 'Pratyush Pandey', 10, 'pratyush12@example.net', '681-459-4029', 'public/images/CDV6uDRzrzIzxFC1QYp7DIeHoYI9lQX7ONkTDrF8.jpg', '2024-08-25 09:01:56', '2024-08-26 01:23:03'),
(11, 'Vikas Pandey', 3, 'vikas12@gmail.com', '8745214587', 'public/images/oB7J6RkfeYNX6VMVXeYjEYFJxtsOdvI1AXOvBxOd.jpg', '2024-08-25 23:20:44', '2024-08-26 01:19:45'),
(12, 'Ria gupta', 6, 'ria12@gmail.com', '7896541254', 'public/images/2Zs8scaT0L6l5rcPAsY6Upkh1QQGDprp79Q7bmSq.jpg', '2024-08-25 23:21:20', '2024-08-25 23:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2019_08_19_000000_create_failed_jobs_table', 1),
(56, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(57, '2024_08_25_073738_create_departments_table', 1),
(58, '2024_08_25_073945_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vikas Pandey', 'starvikass@gmail.com', 'active', NULL, '$2y$10$xfVFrWN0BbyGBYlW1lGEGO0dQb2ryXl6dwJ6Zq3D54O6T2tNN8XOG', 'rmt6f5ShKdBhmENhNHYLtC2xM3IKM7BCWrNU4AP7fVrRgZehr5NuYYDZwkho', '2024-08-25 02:18:57', '2024-08-25 02:18:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_department_id_foreign` (`department_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
