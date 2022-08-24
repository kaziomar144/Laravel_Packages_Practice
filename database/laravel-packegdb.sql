-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- হোষ্ট: 127.0.0.1
-- তৈরী করতে ব্যবহৃত সময়: আগ 24, 2022 at 09:47 AM
-- সার্ভার সংস্করন: 10.4.20-MariaDB
-- পিএইছপির সংস্করন: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ডাটাবেইজ: `dompdf`
--

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `salary`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Tahsan', 'tahsan123@gmail.com', '01701029783', '35000', 'Web developer', NULL, NULL),
(2, 'Tanjim', 'tanjim121@gmail.com', '01731773434', '22000', 'Accounting', NULL, NULL),
(3, 'Sakib', 'sakib123@gmail.com', '01833434345', '14500', 'Officer', NULL, NULL),
(4, 'Rahi', 'rahi33@gmail.com', '01938444347', '30000', 'Manager', NULL, NULL),
(5, 'Jahir', 'jahir123@gmail.com', '01701092373', '12000', 'officer', NULL, NULL),
(6, 'Rakib', 'rakib234@yahoo.com', '01844343453', '15000', 'Marketing officer\r\n', NULL, NULL),
(7, 'Sofiq', 'sofiq333@gmail.com', '01634347384', '10000', 'marketing', NULL, NULL);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `failed_jobs`
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
-- টেবলের জন্য টেবলের গঠন `likeable_likes`
--

CREATE TABLE `likeable_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `likeable_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `likeable_likes`
--

INSERT INTO `likeable_likes` (`id`, `likeable_id`, `likeable_type`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '1', 'App\\Models\\User', '11', '2022-08-08 21:58:09', '2022-08-08 21:58:09'),
(4, '2', 'App\\Models\\User', '11', '2022-08-08 21:58:57', '2022-08-08 21:58:57'),
(5, '3', 'App\\Models\\User', '11', '2022-08-08 21:59:09', '2022-08-08 21:59:09'),
(6, '11', 'App\\Models\\User', '11', '2022-08-08 22:00:29', '2022-08-08 22:00:29'),
(64, '8', 'App\\Models\\User', '12', '2022-08-09 01:40:20', '2022-08-09 01:40:20'),
(65, '11', 'App\\Models\\User', '13', '2022-08-09 01:41:34', '2022-08-09 01:41:34'),
(67, '12', 'App\\Models\\User', '13', '2022-08-09 01:41:55', '2022-08-09 01:41:55'),
(94, '2', 'App\\Models\\User', '13', '2022-08-09 02:53:00', '2022-08-09 02:53:00'),
(110, '3', 'App\\Models\\User', '13', '2022-08-09 02:53:53', '2022-08-09 02:53:53'),
(111, '1', 'App\\Models\\User', '12', '2022-08-24 01:45:58', '2022-08-24 01:45:58'),
(112, '2', 'App\\Models\\User', '12', '2022-08-24 01:46:01', '2022-08-24 01:46:01'),
(113, '3', 'App\\Models\\User', '12', '2022-08-24 01:46:03', '2022-08-24 01:46:03'),
(114, '4', 'App\\Models\\User', '12', '2022-08-24 01:46:05', '2022-08-24 01:46:05'),
(115, '5', 'App\\Models\\User', '12', '2022-08-24 01:46:06', '2022-08-24 01:46:06'),
(116, '6', 'App\\Models\\User', '12', '2022-08-24 01:46:09', '2022-08-24 01:46:09'),
(117, '7', 'App\\Models\\User', '12', '2022-08-24 01:46:11', '2022-08-24 01:46:11'),
(118, '10', 'App\\Models\\User', '12', '2022-08-24 01:46:13', '2022-08-24 01:46:13'),
(120, '12', 'App\\Models\\User', '12', '2022-08-24 01:46:19', '2022-08-24 01:46:19');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `likeable_like_counters`
--

CREATE TABLE `likeable_like_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `likeable_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `likeable_like_counters`
--

INSERT INTO `likeable_like_counters` (`id`, `likeable_id`, `likeable_type`, `count`) VALUES
(3, '1', 'App\\Models\\User', 2),
(4, '2', 'App\\Models\\User', 3),
(5, '3', 'App\\Models\\User', 3),
(6, '11', 'App\\Models\\User', 2),
(18, '12', 'App\\Models\\User', 2),
(20, '8', 'App\\Models\\User', 1),
(29, '4', 'App\\Models\\User', 1),
(30, '5', 'App\\Models\\User', 1),
(31, '6', 'App\\Models\\User', 1),
(32, '7', 'App\\Models\\User', 1),
(33, '10', 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_19_102023_create_employees_table', 1),
(6, '2021_11_20_171238_create_students_table', 2),
(7, '2021_11_26_145312_create_products_table', 3),
(8, '2021_11_27_173446_create_yajras_table', 4),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 5),
(10, '2022_01_02_162854_create_sessions_table', 5),
(11, '2016_02_07_000000_create_likeable_tables', 6);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Phone', NULL, NULL),
(2, 'Tablet', NULL, NULL),
(3, 'Laptop', NULL, NULL),
(4, 'Power Bank', NULL, NULL),
(5, 'Watch', NULL, NULL),
(6, 'Television', NULL, NULL),
(7, 'Freeze', NULL, NULL),
(8, 'Headphones', NULL, NULL);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tUHKLyDIZFyHHffhL5O8rKdJoIopjpLu2OwNXMum', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYnA0YUpvYVlacmg0TEk2aWM1YXRJRmx6ZUJqWTBMWm15c1lZMzFrMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycz9fdG9rZW49YnA0YUpvYVlacmg0TEk2aWM1YXRJRmx6ZUJqWTBMWm15c1lZMzFrMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR6Lm95emVrQUlXLlpoZ0tKdzV1aDl1Rm5HazdSRUpNdlp3YWVtMDdZam9SbFVXbkFsUTdHUyI7fQ==', 1661327179);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `students`
--

INSERT INTO `students` (`id`, `name`, `profileimage`, `created_at`, `updated_at`) VALUES
(3, 'Rafi', '1637776025.png', '2021-11-20 12:33:59', '2021-11-24 11:47:05'),
(4, 'Omar', '1637433382.jpg', '2021-11-20 12:36:22', '2021-11-20 12:36:22'),
(5, 'Tahsan', '1637433456.jpg', '2021-11-20 12:37:36', '2021-11-20 12:37:36'),
(6, 'Omar', '1637433597.jpg', '2021-11-20 12:39:57', '2021-11-20 12:39:57'),
(7, 'Tahsan', '1637433866.jpg', '2021-11-20 12:44:26', '2021-11-20 12:44:26'),
(8, 'Tahsan', '1637433902.jpg', '2021-11-20 12:45:02', '2021-11-20 12:45:02'),
(9, 'Omar kazi faruk', '1637774966.png', '2021-11-20 12:45:35', '2021-11-24 11:29:26'),
(10, 'Rafi', '1637434015.jpg', '2021-11-20 12:46:55', '2021-11-20 12:46:55'),
(11, 'hasan', '1637773947.jpg', '2021-11-24 11:12:27', '2021-11-24 11:12:27'),
(12, 'Tahsandgfdg', '1637775054.png', '2021-11-24 11:30:54', '2021-11-24 11:30:54'),
(14, 'Rafi', '1637775604.png', '2021-11-24 11:40:04', '2021-11-24 11:40:04');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ursula Senger', 'clovis37@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WqG3nTbfke', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(2, 'Derick Bechtelar', 'pkirlin@example.net', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '58iqk3bZjy', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(3, 'Felicia Lowe', 'dawson.conn@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ah0c0tydiC', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(4, 'Mr. Herman Kshlerin MD', 'goyette.everardo@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '6rxasQ6C7h', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(5, 'Prof. Dejuan Nolan', 'herman.filiberto@example.com', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'j2ZjFbxQ3x', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(6, 'Prof. Gregg Moen DVM', 'christy74@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'UgMFVbKExo', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(7, 'Adrien Roob', 'simone.larkin@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qqNMANc4AA', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(8, 'Mr. Ryder Wunsch V', 'twuckert@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'mKlVjaInkT', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(9, 'Derick Casper', 'deion.heller@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8RSHcSnPAm', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(10, 'Prof. Christine Ondricka I', 'sdach@example.org', '2022-07-17 08:53:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'sqLHQQXGYa', '2022-07-17 08:53:43', '2022-07-17 08:53:43'),
(11, 'Kazi Omar Faruk', 'softeng.kaziomar@gmail.com', NULL, '$2y$10$JVnq3dZlEwt7thYTb.Ee9u8yARqkUiiC/1GvlxphUkcxwBkCg5Cne', NULL, NULL, NULL, '2022-08-08 09:27:55', '2022-08-08 09:27:55'),
(12, 'Tahsan Tanjim', 'tahsan123@gmail.com', NULL, '$2y$10$z.oyzekAIW.ZhgKJw5uh9uFnGk7REJMvZwaem07YjoRlUWnAlQ7GS', NULL, NULL, NULL, '2022-08-08 22:01:45', '2022-08-11 04:48:45'),
(13, 'Tahsan Omar', 'kaziomar.se24@gmail.com', NULL, '$2y$10$R//Q5izRQuJTpipsgpcX9.lmqAJ5LO1dseqvB/uGOlB6.592kTmPG', NULL, NULL, NULL, '2022-08-09 01:41:13', '2022-08-09 01:41:13');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `yajras`
--

CREATE TABLE `yajras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `yajras`
--

INSERT INTO `yajras` (`id`, `name`, `email`, `phone`, `salary`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Anne Kemmer', 'prohaska.kyla@yahoo.com', '605.763.7827', '42603.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(2, 'Dr. Lorenz Volkman', 'zena70@yahoo.com', '(458) 692-3886', '31503.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(3, 'Dr. Donald Prosacco Sr.', 'howard.nikolaus@kiehn.com', '612.830.3046', '35803.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(4, 'Brady Rodriguez Jr.', 'tgleason@yahoo.com', '+1.920.793.7474', '34020.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(5, 'Mr. Sammie Toy', 'freida23@bashirian.biz', '+1-380-337-4889', '30456.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(6, 'Monte Moen', 'hammes.taurean@yahoo.com', '+1.715.888.2796', '40945.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(7, 'Archibald Pfannerstill', 'sgorczany@hessel.com', '+1.520.681.4281', '43372.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(8, 'Moses Schroeder', 'wintheiser.enrico@conroy.org', '+1-209-846-1954', '48977.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(9, 'Kyra Gleason III', 'blittle@yahoo.com', '+1 (765) 425-8843', '36754.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(10, 'Matilda Kshlerin', 'bethel79@yahoo.com', '907.683.4407', '45898.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(11, 'Rafaela Kautzer', 'qdach@hotmail.com', '+1 (318) 924-9090', '45188.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(12, 'Dr. Verla Davis I', 'leora.huels@fahey.com', '920.495.6731', '42524.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(13, 'Mr. Francis Kunde III', 'bzboncak@schmidt.com', '1-562-905-9502', '45104.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(14, 'Leanna Grimes', 'cummings.arvel@hotmail.com', '(443) 584-0062', '34700.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(15, 'Everardo Cole', 'griffin.bins@hotmail.com', '1-540-285-5399', '32318.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(16, 'Laurie Keeling', 'zwehner@gmail.com', '(559) 260-1006', '30089.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(17, 'Tito Swaniawski', 'chauncey89@grady.net', '1-617-789-7709', '31655.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(18, 'Elisabeth Stracke', 'pete61@hauck.com', '(512) 661-7973', '49075.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(19, 'Orrin Gaylord', 'kip59@tromp.com', '+1-364-296-0067', '30314.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(20, 'Eva Goyette', 'okon.xavier@crona.biz', '813-894-3062', '40065.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(21, 'Ms. Melyna Schowalter', 'vbogan@jenkins.com', '(760) 384-8915', '38215.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(22, 'Susan Beatty', 'sydney96@gmail.com', '+1-857-631-7120', '35063.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(23, 'Samara Lebsack', 'weber.dewayne@mclaughlin.biz', '(540) 654-0439', '30425.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(24, 'Piper Stiedemann III', 'bruen.jason@hotmail.com', '+1-762-871-7563', '39847.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(25, 'Waldo Weissnat', 'antwan.beier@berge.biz', '605-391-8937', '44502.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(26, 'Stephen Jacobs II', 'kgutkowski@muller.com', '650-757-1984', '41453.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(27, 'Prof. Seth Wuckert III', 'hmorissette@hotmail.com', '1-980-768-4465', '38941.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(28, 'Prof. Jaylon Feest', 'lance.stokes@gmail.com', '+1 (442) 604-6855', '36796.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(29, 'Hildegard Smith', 'carmen.cronin@gmail.com', '+1.331.546.5014', '42407.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(30, 'Prof. Thalia Pfannerstill III', 'joy62@yahoo.com', '+1-630-404-0183', '37643.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(31, 'Cortney Brekke DDS', 'stark.emilia@bashirian.com', '1-802-354-7628', '34464.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(32, 'Cordelia Bahringer', 'nbraun@stiedemann.com', '(484) 270-6533', '49399.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(33, 'Dr. Nico Von DDS', 'predovic.dalton@gmail.com', '(419) 306-9835', '30750.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(34, 'Prof. Lamar Eichmann DVM', 'cmckenzie@kiehn.biz', '1-820-575-8309', '43938.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(35, 'Mr. Hazle Rosenbaum MD', 'meta00@reynolds.com', '1-938-264-0795', '47638.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(36, 'Dr. Austen Blick', 'gwalsh@murazik.net', '772-622-3192', '41517.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(37, 'Deshaun Schamberger', 'mwyman@hamill.biz', '+1.541.602.7565', '30389.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(38, 'Dave Champlin', 'gschneider@goldner.com', '616.575.6762', '37207.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(39, 'Maymie Ward', 'albina.cole@hotmail.com', '(680) 218-2403', '40674.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(40, 'Mr. Javon Goodwin MD', 'crist.earnest@bergstrom.com', '+1.803.588.6889', '37465.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(41, 'Mr. Issac Abernathy', 'vivianne.erdman@yahoo.com', '+15863350942', '48100.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(42, 'Ms. Berniece Sauer', 'earl.spinka@yahoo.com', '442.678.4518', '42755.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(43, 'Serena Schultz', 'nikki44@gmail.com', '1-510-523-2565', '38488.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(44, 'Everette Kertzmann', 'michale.labadie@hotmail.com', '828.699.5924', '48367.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(45, 'Bailey Nolan I', 'owitting@cole.org', '984-594-5216', '35169.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(46, 'Prof. Elvera Batz', 'mwaters@gmail.com', '972-628-1947', '44020.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(47, 'Reagan Bashirian Sr.', 'posinski@hotmail.com', '(585) 759-4489', '32405.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(48, 'Ms. Opal Adams Sr.', 'cblock@gmail.com', '1-870-924-3016', '42353.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(49, 'Giles Padberg', 'bette.dietrich@gmail.com', '(651) 302-8374', '39330.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(50, 'Lucio Rau', 'scarlett33@gmail.com', '+1.316.756.6305', '39508.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(51, 'Ms. Elvera Aufderhar', 'alford18@yahoo.com', '1-234-320-6651', '49962.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(52, 'Marielle Stark', 'yvonne02@franecki.com', '(660) 462-6409', '37726.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(53, 'Dee Little MD', 'darien30@heidenreich.com', '+18658313191', '49518.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(54, 'Dr. Dax Huels', 'wstamm@wolff.com', '+1-602-694-6062', '44856.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(55, 'Dr. Kamren Upton II', 'mcclure.florian@keeling.biz', '+19257469410', '39566.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(56, 'Van Walsh', 'theo04@harber.com', '520.328.4155', '34567.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(57, 'Ebony Gaylord', 'electa.altenwerth@lindgren.com', '539.671.7787', '44229.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(58, 'Jayson Ortiz', 'janessa11@yahoo.com', '+1-808-853-9293', '36692.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(59, 'Rowena Medhurst', 'talia11@hotmail.com', '+1.424.932.4818', '34027.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(60, 'Miss Freda Huels IV', 'adolphus96@hotmail.com', '445-663-8655', '30703.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(61, 'Jeanie Kiehn', 'amari.lemke@jacobi.net', '+13857055797', '45907.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(62, 'Sunny Paucek', 'daniela56@yahoo.com', '+1-248-330-6349', '44790.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(63, 'Cruz Thompson DDS', 'orrin75@gmail.com', '657.613.9953', '36314.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(64, 'Easton Lehner', 'leopoldo.kihn@dach.com', '+1 (979) 249-5375', '35299.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(65, 'Madelyn Bergnaum', 'haylee86@gmail.com', '1-843-983-6056', '45201.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(66, 'Walker Spinka', 'ebogan@schaefer.com', '1-818-706-5956', '46445.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(67, 'Cassandre Morar', 'price.violette@gmail.com', '+1 (931) 403-5026', '39027.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(68, 'Aaliyah DuBuque', 'willms.eudora@gmail.com', '920-632-9413', '33231.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(69, 'Nathaniel Wuckert', 'alba.sanford@champlin.net', '+14588977907', '30889.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(70, 'Marilie Lind', 'abbott.daryl@hotmail.com', '480.951.1303', '36602.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(71, 'May King', 'pink.cassin@hotmail.com', '878-693-1646', '46867.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(72, 'Evert Wintheiser V', 'lavinia22@cassin.net', '+1.516.876.1080', '34308.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(73, 'Mr. Jaiden Veum I', 'ypouros@kunze.com', '+1 (847) 447-4889', '40295.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(74, 'Erwin Hansen', 'beaulah34@gmail.com', '1-570-518-0205', '48855.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(75, 'Miss Kasey Brakus V', 'rory50@hotmail.com', '+1 (843) 994-4033', '33051.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(76, 'Dr. Nichole Oberbrunner', 'shanon.abernathy@wuckert.com', '205-796-4745', '40439.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(77, 'Elissa Stamm DDS', 'kunze.regan@gmail.com', '(208) 982-1246', '49120.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(78, 'Dr. Taylor Collier', 'zhintz@yahoo.com', '+1 (979) 260-6665', '46260.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(79, 'Mrs. Ayla Bode Sr.', 'kovacek.cathrine@renner.com', '+1.440.462.2507', '44520.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(80, 'Graham Crona', 'adolf72@ankunding.com', '1-283-358-4158', '42090.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(81, 'Dannie Pfeffer', 'gerard77@gmail.com', '678-243-1349', '48088.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(82, 'Miss Daniela Emmerich', 'mueller.marlee@kuhic.com', '+1.806.521.4343', '30966.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(83, 'Mya Hudson IV', 'jaden65@gmail.com', '+1.563.778.7088', '48668.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(84, 'Dino Mosciski', 'parker.esperanza@pagac.net', '1-786-740-6404', '43668.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(85, 'Anderson Boyer', 'dino.gutmann@gmail.com', '+1.725.734.0163', '46448.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(86, 'Raegan Walker', 'mosciski.albert@hickle.net', '1-229-724-3826', '47099.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(87, 'Dr. Rudy Luettgen III', 'mathew88@yahoo.com', '+1 (661) 309-5925', '37083.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(88, 'Kelli Lebsack MD', 'ahuel@kertzmann.com', '1-820-521-7857', '33295.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(89, 'Jodie Reichel II', 'pascale.frami@yahoo.com', '(862) 462-2171', '38484.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(90, 'Mabelle Breitenberg', 'tyrique.christiansen@hotmail.com', '915-923-3423', '37233.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(91, 'Eliza Reichel', 'vbatz@rempel.com', '863-943-5964', '38979.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(92, 'Isai Dicki', 'lupe.grimes@dibbert.com', '+1.445.622.0744', '48206.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(93, 'Mrs. Duane Gutmann', 'yebert@stark.com', '1-651-370-2254', '36599.00', 'Sales', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(94, 'Chester Smith', 'jacklyn.erdman@fay.org', '520-376-4510', '37532.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(95, 'Dr. Johanna Fritsch III', 'jbayer@lowe.com', '479.908.3623', '45046.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(96, 'Vallie Koss', 'nathaniel01@langworth.com', '(480) 259-3895', '48974.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(97, 'Odie Boyle', 'aletha81@stehr.biz', '915.538.8816', '42713.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(98, 'Justen Nader', 'shyann61@yahoo.com', '248-781-6981', '30402.00', 'Marketing', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(99, 'Ray Rau', 'allison.bruen@hotmail.com', '+1-734-856-4070', '41283.00', 'Accounting', '2021-11-27 11:56:11', '2021-11-27 11:56:11'),
(100, 'Asa Emmerich', 'abigale.pouros@gmail.com', '770-310-1312', '44629.00', 'Quality', '2021-11-27 11:56:11', '2021-11-27 11:56:11');

--
-- স্তুপকৃত টেবলের ইনডেক্স
--

--
-- টেবিলের ইনডেক্সসমুহ `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- টেবিলের ইনডেক্সসমুহ `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- টেবিলের ইনডেক্সসমুহ `likeable_likes`
--
ALTER TABLE `likeable_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likeable_likes_unique` (`likeable_id`,`likeable_type`,`user_id`),
  ADD KEY `likeable_likes_user_id_index` (`user_id`);

--
-- টেবিলের ইনডেক্সসমুহ `likeable_like_counters`
--
ALTER TABLE `likeable_like_counters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likeable_counts` (`likeable_id`,`likeable_type`);

--
-- টেবিলের ইনডেক্সসমুহ `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- টেবিলের ইনডেক্সসমুহ `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- টেবিলের ইনডেক্সসমুহ `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- টেবিলের ইনডেক্সসমুহ `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- টেবিলের ইনডেক্সসমুহ `yajras`
--
ALTER TABLE `yajras`
  ADD PRIMARY KEY (`id`);

--
-- স্তুপকৃত টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT)
--

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `likeable_likes`
--
ALTER TABLE `likeable_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `likeable_like_counters`
--
ALTER TABLE `likeable_like_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `yajras`
--
ALTER TABLE `yajras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
