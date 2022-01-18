-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de geração: 18/01/2022 às 14:25
-- Versão do servidor: 5.7.34
-- Versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hoog1698_cartao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '3',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `address`, `city`, `phone`, `created_at`, `updated_at`, `photo_id`, `fb_id`) VALUES
(1, 'Elisabeth Doe', 1, 'contact@lucian.host', NULL, '$2y$10$he0KpmIkdQGn8K7VcF5Hn.WB.JgDmbrgHg690rKCIaVDdDKAfMdzO', NULL, NULL, 'uJmUGVvUWQ4rCErNEOpEIOp1UfWCNp4oObae8orgWS3ziXKjUJiIgPmHk90Q', NULL, NULL, NULL, NULL, NULL, '2021-03-13 15:29:44', '2021-04-11 21:58:38', '53', '3371932529579633'),
(8, 'Karl Doeo', 2, 'sweet.themes.supp@gmail.com', NULL, '$2y$10$glenQDwxkPqvIVQ1dJIimuDkhCd.vQQtlO9lArRCgwDVAfztqe5Ri', NULL, NULL, NULL, NULL, NULL, 'Street 191', 'Bucharest', '0741395131', '2021-03-20 14:26:19', '2021-04-11 21:59:06', '85', NULL),
(9, 'Ionel Ardeleanu', 1, 'ardeleanuionel70@yahoo.com', NULL, 'eyJpdiI6ImNSUk5WRVpjRDY1Y1Q2U1doSVJHY0E9PSIsInZhbHVlIjoiNzlPM2tQNW1ISzBOdzBoSDRDT2dwRTJ4NmdVRnA2U3B4TWFodUVNWkowWT0iLCJtYWMiOiI2NzJiOGU4OTQxNGJkNDM1ZTc1NDRjYjI3YTk3Zjk1MDQ4YzAwOTM3MTk3N2IxMzM5Y2Q0ZTQzMTdmNGQzNjhjIn0=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-13 21:08:11', '2021-04-13 21:08:11', NULL, '2499414347021578');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
