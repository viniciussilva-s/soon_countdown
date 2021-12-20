-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Dez-2021 às 17:06
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `count_down`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `releaseDate` date DEFAULT NULL,
  `releaseTime` time DEFAULT NULL,
  `initialDate` date DEFAULT NULL,
  `initialTime` time DEFAULT NULL,
  `releaseUrl` varchar(255) DEFAULT '0',
  `countingType` int(11) DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='releaseDate\r\nreleaseTime\r\ninitialDate\r\ninitialTime\r\nreleaseUrl\r\ncountingType';

--
-- Extraindo dados da tabela `counters`
--

INSERT INTO `counters` (`id`, `releaseDate`, `releaseTime`, `initialDate`, `initialTime`, `releaseUrl`, `countingType`, `updated_at`, `created_at`) VALUES
(1, '2021-12-29', '10:10:00', NULL, NULL, 'https://www.google.com', 0, '2021-10-10 01:26:46', '2021-10-08 23:06:59'),
(2, '2021-12-29', '10:10:00', NULL, NULL, 'https://www.google.com', 0, '2021-10-08 23:17:10', '2021-10-08 23:17:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `newsletter` varchar(255) DEFAULT NULL,
  `submit_button` varchar(255) DEFAULT NULL,
  `copyrights` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `favicon_image` varchar(255) DEFAULT NULL,
  `theme_logo` varchar(255) DEFAULT NULL,
  `counter_message` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) NOT NULL DEFAULT 'UTC',
  `meta_description` text DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `general_settings`
--

INSERT INTO `general_settings` (`id`, `created_at`, `updated_at`, `main_heading`, `sub_heading`, `newsletter`, `submit_button`, `copyrights`, `page_name`, `meta_keywords`, `meta_author`, `favicon_image`, `theme_logo`, `counter_message`, `timezone`, `meta_description`, `views`) VALUES
(1, '2021-10-09 02:06:59', '2021-11-24 02:56:39', 'Coming soon', 'subheading subheading subheading', 'Subscribe to our newsletter to know when we launch our website', 'Notify me', '2021 Ionichub.co All rights reserved.', 'Coming soon counter', 'IonicCounter countdown counter', 'Ionichub', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', 'UTC', 'Meta description\r\nMeta description', 46),
(2, '2021-10-09 02:17:10', '2021-10-09 02:17:10', 'Coming soon', NULL, 'Subscribe to our newsletter to know when we launch our website', 'Notify me', '2021 Ionichub.co All rights reserved.', 'Coming soon counter', 'IonicCounter countdown counter', 'Ionichub', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.', 'UTC', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_04_104455_create_themes_table', 1),
(5, '2021_06_04_105033_create_theme_images_table', 1),
(6, '2021_06_04_105324_create_social_links_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `social_links`
--

CREATE TABLE `social_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `social_links`
--

INSERT INTO `social_links` (`id`, `created_at`, `updated_at`, `title`, `url`) VALUES
(1, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'facebookUrl', 'https://www.facebook.com/vomo'),
(2, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'twitterUrl', 'https://www.twitter.com'),
(3, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'instagramUrl', 'https://www.instagram.com'),
(4, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'youtubeUrl', 'https://www.youtube.com'),
(5, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'vimeoUrl', 'https://www.vimeo.com'),
(6, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'linkedinUrl', 'https://www.linkedin.com'),
(7, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'behanceUrl', 'https://www.behance.com'),
(8, '2021-10-09 02:06:59', '2021-10-10 04:26:56', 'pinterestUrl', 'https://www.pinterest.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `social_theme`
--

CREATE TABLE `social_theme` (
  `id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL DEFAULT 0,
  `social_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `themes`
--

INSERT INTO `themes` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Space Theme', 1, '2021-10-09 02:06:59', '2021-10-10 04:40:17'),
(2, 'Geometric Theme', 0, '2021-10-09 02:06:59', '2021-10-10 04:40:17'),
(3, 'Minimal Theme', 0, '2021-10-09 02:06:59', '2021-10-10 04:40:17'),
(4, 'Forest Theme', 0, '2021-10-09 02:06:59', '2021-10-10 04:40:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `theme_images`
--

CREATE TABLE `theme_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `gradient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `theme_images`
--

INSERT INTO `theme_images` (`id`, `image`, `active`, `gradient`, `created_at`, `updated_at`, `theme_id`) VALUES
(1, 'theme-2-bg.jpg', 1, NULL, '2021-10-09 02:06:59', '2021-10-09 02:06:59', 2),
(2, 'theme-4-bg.jpg', 1, NULL, '2021-10-09 02:06:59', '2021-10-09 02:06:59', 4),
(3, 'theme-1-bg-1.jpg', 1, NULL, '2021-10-09 02:06:59', '2021-10-09 02:06:59', 1),
(4, 'theme-1-bg-2.jpg', 0, NULL, '2021-10-09 02:06:59', '2021-10-09 02:06:59', 1),
(5, 'theme-1-bg-3.jpg', 0, NULL, '2021-10-09 02:06:59', '2021-10-09 02:06:59', 1),
(6, 'theme-1-bg-4.jpg', 0, NULL, '2021-10-09 02:06:59', '2021-10-09 02:06:59', 1),
(7, NULL, 0, '#06BEB6 40%, #48B1BF', '2021-10-09 02:06:59', '2021-10-09 02:06:59', 3),
(8, NULL, 0, '#B993D6 40%, #8CA6DB', '2021-10-09 02:06:59', '2021-10-09 02:06:59', 3),
(9, NULL, 0, '#FE7378 40%, #FE977B', '2021-10-09 02:06:59', '2021-10-09 02:06:59', 3),
(10, NULL, 0, '#E53935 40%, #E35D5B', '2021-10-09 02:06:59', '2021-10-09 02:06:59', 3),
(11, NULL, 0, '#76B852 40%, #8DC26F', '2021-10-09 02:06:59', '2021-10-09 02:06:59', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `full_name`, `user_name`, `security_key`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jason doe', 'Json doe', 'ab5Ea7jZZa3F3jqZRgg8bHtSts37meq28t3AiTFdJMximbNgElfbX6B07PbhgsHta2LT15NvgCDKZXQZvIulj6SHFn8oCsPw8LVPTu5SiQbCDQvde1E1DehSU6DUcoMHCpMvlqzxjj9Q1eDCwOLNsN', 'admin@admin.com', '2021-10-09 01:52:49', '$2y$10$k3UCuy6RpgHAwQTzCwh5AepM4jnv/eZX/7..4uopDkHgAagUiAW0.', 1, NULL, '2021-10-09 01:52:50', '2021-10-09 01:52:50');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `social_theme`
--
ALTER TABLE `social_theme`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `theme_images`
--
ALTER TABLE `theme_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_images_theme_id_foreign` (`theme_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `social_theme`
--
ALTER TABLE `social_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `theme_images`
--
ALTER TABLE `theme_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `theme_images`
--
ALTER TABLE `theme_images`
  ADD CONSTRAINT `theme_images_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
