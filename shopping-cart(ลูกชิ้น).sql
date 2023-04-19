-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 01:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping-cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'ส.ขอนแก่น', NULL, NULL),
(2, 'ลูกชิ้นทิพย์', NULL, NULL),
(3, 'ทองดี', NULL, NULL),
(4, 'ลูกชิ้นหมูหุ่นดีคีโต', NULL, NULL),
(5, 'หมูสามตัว', NULL, NULL),
(6, 'หมูแชมป์', NULL, NULL),
(7, 'นายฮั้งเพ้ง', NULL, NULL),
(8, 'โกอี๊ด', NULL, NULL),
(9, 'โฮเด้ง', NULL, NULL),
(10, 'หมูเมืองทอง', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'ลูกชิ้นหมูนมสด', NULL, NULL),
(2, 'ลูกชิ้นหมูโฮเด้ง', NULL, NULL),
(3, 'ลูกชิ้นหมูคีโต', NULL, NULL),
(4, 'ลูกชิ้นเอ็นหมู', NULL, NULL),
(5, 'ลูกชิ้นเต้าหู้หมู', NULL, NULL),
(6, 'ลูกชิ้นทิพย์', NULL, NULL),
(7, 'ลูกชิ้นหมูพริกไทยดำ', NULL, NULL),
(8, 'ลูกชิ้นหมูจัมโบ้ ', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_03_023230_create_products_table', 1),
(6, '2023_02_17_020508_create_sale_table', 2),
(7, '2023_02_17_021150_create_sale_detail_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_stock` int(11) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`brand_id`, `category_id`, `product_stock`, `id`, `name`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 15, 1, 'ลูกชิ้นหมูนมสด', 69, 'อร่อย อร่อยมากกกก ต้องลอง! เป็นคำเปรยของร้านค้าลูกชิ้นหมูนมสด หมูเมืองทองร้านนี้ ซึ่งจากที่ลองไปดูรีวิวมา ก็มีหลายเสียงบอกตรงกันว่า เป็นลูกชิ้นหมูที่สด สะอาดดี รวมถึงรสชาติก็อร่อย มีความนุ่มเด้ง นัว ๆ', 'https://plusaround.com/wp-content/uploads/2022/08/Screen-Shot-2022-08-29-at-10.52.35-AM.jpg.webp', NULL, NULL),
(3, 3, 10, 2, 'ลูกชิ้นหมูโฮเด้ง', 151, 'ยี่ห้อที่มีชื่อเสียงโด่งดังเรื่องลูกชิ้นหมูที่ถ้าพูดแค่ชื่อขึ้นมา หลาย ๆ คนคงต้องร้อง อ๋อ~~ กันอย่างแน่นอน ซึ่งยี่ห้อนั้นก็คือ โฮเด้ง นั่นเองครับ (ถ้าเป็นโกเด้ง จะเป็นลูกชิ้นเนื้อเด้อ)', 'https://plusaround.com/wp-content/uploads/2022/08/Screen-Shot-2022-08-29-at-7.49.40-PM.jpg.webp', NULL, NULL),
(3, 6, 5, 3, 'ลูกชิ้นหมูคีโต', 150, 'ขายดีมาก ขายดีขนาด ขายดีจนมียอดขายทางออนไลน์ที่สูงมากถึง 4,000 ชิ้น ++ คงต้องยกให้กับยี่ห้อ “ลูกชิ้นหมูหุ่นดีคีโต” กันเลยครับ โดยยี่ห้อนี้เขาเป็นสูตรจากบุรีรัมย์เช่นกัน แต่จะมีความพิเศษกว่าตรงที่เป็นแบบคีโต ทำให้เหมาะสำหรับคนที่รักสุขภาพ', 'https://plusaround.com/wp-content/uploads/2022/08/Screen-Shot-2022-08-29-at-2.47.37-PM.jpg.webp', NULL, NULL),
(4, 1, 9, 4, 'ลูกชิ้นเอ็นหมู', 90, 'แม้จะเป็นลูกชิ้นหมูจากแบรนด์ที่อาจจะไม่คุ้นชื่อเท่าไรนัก แต่ก็เป็นที่นิยมสำหรับพ่อค้าแม่ค้าอย่างมากเลยทีเดียว เนื่องจากมีราคาย่อมเยาเพียง 90 บาท และให้ปริมาณมามากถึง 1 กิโลกรัม เลยทีเดียว', 'https://cf.shopee.co.th/file/7c509d1e07b2f52abbae02dde9d93537', NULL, NULL),
(2, 1, 12, 5, 'ลูกชิ้นเต้าหู้หมู', 69, 'ว่าด้วยลูกชิ้นหมูที่จะทำให้คุณได้รับโปรตีนจากถั่วเหลืองแบบเต็ม ก็ต้องไม่พลาดลูกชิ้นเต้าหู้หมูจากตั้งเจริญอาหารทะเลแปรรูปค่ะ โดยจุดเด่นของลูกชิ้นหมูสูตรนี้ก็คือเนื้อที่นุ่มเด้ง ลูกชิ้นมีขนาดพอดีคำ', 'https://img.my-best.in.th/product_images/c9127f442b0b8d04e46e1b040b9e5c7c.jpg?ixlib=rails-4.3.1&q=70&lossless=0&w=640&h=640&fit=clip&s=e4696deeb4a6f9063295b22b80778894', NULL, NULL),
(2, 5, 14, 6, 'ลูกชิ้นทิพย์', 84, 'นี่คือลูกชิ้นหมูเสียบไม้ชื่อดังจากแบรนด์ลูกชิ้นทิพย์ ที่ขายดีเป็นเทน้ำเทท่าเนื่องจากรสชาติที่อร่อยและความเด้งดึ๋งเคี้ยวเพลินไม่เหมือนใคร อีกทั้งยังมาพร้อมกับขนาดของลูกชิ้นที่เล็กพอดีคำ เคี้ยวง่าย เด็กกินได้ผู้ใหญ่กินดี ', 'https://img.my-best.in.th/product_images/70577518760a2af2298dc92dadcde6fc.jpg?ixlib=rails-4.3.1&q=70&lossless=0&w=640&h=640&fit=clip&s=8de7318b74537c06bccf27f7733f8a06', NULL, NULL),
(6, 4, 13, 7, 'ลูกชิ้นหมูพริกไทยดำ', 69, 'ลูกชิ้นหมูอันดับนี้ เหมาะสำหรับคนที่ชอบกินอาหารแซ่บ ๆ รสจัด ๆ โดยเฉพาะ เนื่องจากเป็นลูกชิ้นหมูสูตรพริกไทยดำ ที่แต่ละลูกอัดแน่นไปด้วยพริกไทยดำสด ๆ ช่วยให้กลิ่นหอมพร้อมรสชาติเผ็ดร้อนที่สัมผัสได้ตั้งแต่กัดคำแรก ', 'https://img.my-best.in.th/product_images/6085f8848ce4db7eb478237625ba189d.png?ixlib=rails-4.3.1&q=70&lossless=0&w=640&h=640&fit=clip&s=271c7157303a118ebb22c4fde7c56e66', NULL, NULL),
(7, 5, 18, 8, 'ลูกชิ้นหมูจัมโบ้  ', 149, 'ใครที่รู้สึกว่าการกินลูกชิ้นหมูลูกเล็กหรือขนาดทั่วไปยังไม่จุใจเต็มคำ เราขอแนะนำลูกชิ้นหมูจัมโบ้ ลูกชิ้นหมู 3 ตัว ตรา พีเจพี ห่อนี้เลยค่ะ ซึ่งอัดแน่นไปด้วยลูกชิ้นหมูลูกโต ๆ ให้คุณได้กินได้อย่างเต็มอิ่ม', 'https://img.my-best.in.th/product_images/1efd12fa5aa996cc34bd8da0830b6271.png?ixlib=rails-4.3.1&q=70&lossless=0&w=640&h=640&fit=clip&s=82b398b7dd9e9faee30f3769cd7386db', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sale_user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `sumtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `amount` int(11) NOT NULL,
  `total_price` double NOT NULL,
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
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ศุภวิชญ์', '6314421024@rbru.ac.th', NULL, '$2y$10$4lOqlCuGO4zHmwR5bMmvf.hxpS.0rPyXXR0bBEYeeSm95242PVpVC', NULL, '2023-03-12 09:27:02', '2023-03-12 09:27:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_sale_user_id_foreign` (`sale_user_id`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_detail_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_detail_pro_id_foreign` (`pro_id`);

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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_sale_user_id_foreign` FOREIGN KEY (`sale_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `sale_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_detail_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
