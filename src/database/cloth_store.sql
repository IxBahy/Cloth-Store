-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2022 at 09:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloth_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `prod_count`, `created_at`, `updated_at`) VALUES
(1, 'shoes', 'shoes.jpg', 4, '2022-10-23 15:34:05', NULL),
(2, 'shirt', 'shirt.jpg', 4, '2022-10-23 15:34:05', NULL),
(3, 'pants', 'pants.jpg', 4, '2022-10-23 15:34:05', NULL),
(4, 'hoodie', 'hoodie.jpg', 4, '2022-10-23 15:34:05', NULL);

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
(4, '2022_10_22_095113_create_products_table', 2),
(5, '2022_10_22_095811_create_categories_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` int(20) UNSIGNED NOT NULL,
  `describtion` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `category`, `describtion`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Air Jordan', 500, 1, 'Jordan Brand flipped one of its original Air Jordan 4 colorways for the Air Jordan 4 Military Black.\nPulling its color-blocked style from the Air Jordan 4 Military Blue, the Air Jordan 4 Military Black features a smooth white leather upper with a light grey Durabuck toe wrap and netted TPU inserts. 	Military Black eyelets, heel tabs, and underlays add a stark contrast to the upper. At the base, a white, black, and light grey sole with a visible Air unit completes the design.', 'shoes-1.jpg', '2022-10-23 15:09:50', NULL),
(2, 'Adidas white stan smith', 400, 1, 'Jordan Brand flipped one of its original Air Jordan 4 colorways for the Air Jordan 4 Military Black.\r\nPulling its color-blocked style from the Air Jordan 4 Military Blue, the Air Jordan 4 Military Black features a smooth white leather upper with a light grey Durabuck toe wrap and netted TPU inserts. 	Military Black eyelets, heel tabs, and underlays add a stark contrast to the upper. At the base, a white, black, and light grey sole with a visible Air unit completes the design.\r\n', 'shoes-3.jpg', '2022-10-23 15:09:50', NULL),
(3, 'Adidas white run', 350, 1, 'Jordan Brand flipped one of its original Air Jordan 4 colorways for the Air Jordan 4 Military Black.\r\nPulling its color-blocked style from the Air Jordan 4 Military Blue, the Air Jordan 4 Military Black features a smooth white leather upper with a light grey Durabuck toe wrap and netted TPU inserts. 	Military Black eyelets, heel tabs, and underlays add a stark contrast to the upper. At the base, a white, black, and light grey sole with a visible Air unit completes the design.\r\n', 'shoes-2.jpg', '2022-10-23 15:09:50', NULL),
(4, 'S.W.C', 420, 1, 'Jordan Brand flipped one of its original Air Jordan 4 colorways for the Air Jordan 4 Military Black.\r\nPulling its color-blocked style from the Air Jordan 4 Military Blue, the Air Jordan 4 Military Black features a smooth white leather upper with a light grey Durabuck toe wrap and netted TPU inserts. 	Military Black eyelets, heel tabs, and underlays add a stark contrast to the upper. At the base, a white, black, and light grey sole with a visible Air unit completes the design.\r\n', 'shoes-4.jpg', '2022-10-23 15:09:50', NULL),
(5, 'Regular Fit Linen trousers', 700, 3, 'Regular-fit trousers in airy linen with covered elastication and a concealed drawstring at the waist. Fake fly, discreet side pockets and a welt back pocket.', 'pants-1.jpg', NULL, NULL),
(6, 'Regular Fit cargo black trousers', 650, 3, 'Regular-fit trousers in airy linen with covered elastication and a concealed drawstring at the waist. Fake fly, discreet side pockets and a welt back pocket.', 'pants-2.jpg', NULL, NULL),
(7, 'loose Fit Linen  trousers', 650, 3, 'Regular-fit trousers in airy linen with covered elastication and a concealed drawstring at the waist. Fake fly, discreet side pockets and a welt back pocket.', 'pants-3.jpg', NULL, NULL),
(8, 'Regular Fit Linen black trousers', 580, 3, 'Regular-fit trousers in airy linen with covered elastication and a concealed drawstring at the waist. Fake fly, discreet side pockets and a welt back pocket.', 'pants-4.jpg', NULL, NULL),
(9, 'loose Fit Cotton T-shirt black', 300, 2, 'Regular Fit T-shirt in soft cotton jersey. Round neckline with a narrow, ribbed trim and short sleeves with sewn-in turn-ups. Slightly longer and rounded at the back.', 'shirt-1.jpg', NULL, NULL),
(10, 'loose Fit Cotton T-shirt white', 320, 2, 'Regular Fit T-shirt in soft cotton jersey. Round neckline with a narrow, ribbed trim and short sleeves with sewn-in turn-ups. Slightly longer and rounded at the back.', 'shirt-2.jpg', NULL, NULL),
(11, 'loose Fit Cotton T-shirt coffe', 370, 2, 'Regular Fit T-shirt in soft cotton jersey. Round neckline with a narrow, ribbed trim and short sleeves with sewn-in turn-ups. Slightly longer and rounded at the back.', 'shirt-3.jpg', NULL, NULL),
(12, 'loose Fit Cotton T-shirt melon', 330, 2, 'Regular Fit T-shirt in soft cotton jersey. Round neckline with a narrow, ribbed trim and short sleeves with sewn-in turn-ups. Slightly longer and rounded at the back.', 'shirt-4.jpg', NULL, NULL),
(13, 'Hoodie off white ', 800, 4, 'Hoodie in sweatshirt fabric made from a cotton blend with a soft brushed inside. Jersey-lined, drawstring hood, a kangaroo pocket and a ribbed panel down each side. Dropped shoulders, long sleeves        and ribbing at the cuffs and hem.', 'hoodie-1.jpg', NULL, NULL),
(14, 'Hoodie light gray ', 820, 4, 'Hoodie in sweatshirt fabric made from a cotton blend with a soft brushed inside. Jersey-lined, drawstring hood, a kangaroo pocket and a ribbed panel down each side. Dropped shoulders, long sleeves        and ribbing at the cuffs and hem.', 'hoodie-2.jpg', NULL, NULL),
(15, 'Hoodie purple ', 830, 4, 'Hoodie in sweatshirt fabric made from a cotton blend with a soft brushed inside. Jersey-lined, drawstring hood, a kangaroo pocket and a ribbed panel down each side. Dropped shoulders, long sleeves        and ribbing at the cuffs and hem.', 'hoodie-3.jpg', NULL, NULL),
(16, 'Hoodie black ', 860, 4, 'Hoodie in sweatshirt fabric made from a cotton blend with a soft brushed inside. Jersey-lined, drawstring hood, a kangaroo pocket and a ribbed panel down each side. Dropped shoulders, long sleeves        and ribbing at the cuffs and hem.', 'hoodie-4.jpg', NULL, NULL);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_FK` (`category`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category_FK` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
