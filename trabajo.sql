-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2019 a las 07:42:01
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `calle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_12_04_005818_create_personalinformations_table', 1),
(9, '2019_03_09_201519_direccion', 1),
(10, '2019_03_09_201549_tarjeta', 1),
(11, '2019_03_09_201559_pedido', 1),
(12, '2019_03_09_201608_carrito', 1),
(13, '2019_03_09_201616_producto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3daf19418d57de0c06c0a0951bc660ad8eca6b69dd3ed09ce12a2aacb57fd143081dd442a7d95e88', 1, 2, NULL, '[]', 0, '2019-04-05 01:42:18', '2019-04-05 01:42:18', '2019-04-19 19:42:18'),
('5b5853525d693b7408a6168b877d131934dd1d001d124d5edcb70175b1e3253d39203b9d1490e11b', 1, 5, NULL, '[]', 0, '2019-04-05 09:15:09', '2019-04-05 09:15:09', '2019-04-20 03:15:09'),
('6c44cd680668c24edf67754da7141f8c0bffe2859e0eb7c2e811daf18bb834f395d6c4230b985121', 1, 5, NULL, '[]', 0, '2019-04-05 01:42:07', '2019-04-05 01:42:07', '2019-04-19 19:42:07'),
('a19d5f2cdc50592ea068132eb39cf98fb1f14c89c03d14415e21c67cf08e3325816386757cd38320', 1, 5, NULL, '[]', 0, '2019-04-05 09:36:40', '2019-04-05 09:36:40', '2019-04-20 03:36:40'),
('b7206471910ed440e1eb4c5cddfd84e8645533168bf0849cb3018f198c8c371d15483186db6f03f5', 1, 5, NULL, '[]', 0, '2019-04-05 11:30:12', '2019-04-05 11:30:12', '2019-04-20 05:30:12'),
('c18f68ba98659fdbf58caf0b4bfcbe68bf416f4368c650e5f49fe85209c8dbf8f05a27487d11ae7d', 1, 5, NULL, '[]', 0, '2019-04-05 09:32:39', '2019-04-05 09:32:39', '2019-04-20 03:32:39'),
('dadba0331a53b2ef1b78caefd6c760af7927b034600bfb1fd7ec596c24fc1f334c28298b4cfcf2c9', 1, 5, NULL, '[]', 0, '2019-04-05 08:34:04', '2019-04-05 08:34:04', '2019-04-20 02:34:04'),
('dcefd12a2e865261f99a5b2c186cf70535d561ca63038fbb638ce2c921a5b9b0c21f3f799ac40d63', 1, 5, NULL, '[]', 0, '2019-04-05 08:32:08', '2019-04-05 08:32:08', '2019-04-20 02:32:08'),
('fc2e134282295143a2fc4a25e0371fd7a7e4539390035e2dfc9b916813f3dfd12e9949379be23d2f', 1, 5, NULL, '[]', 0, '2019-04-05 09:37:41', '2019-04-05 09:37:41', '2019-04-20 03:37:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'fKEnm0fYBkQFRVDxFN4JnsbXLQ1T2lonj0aPHEuE', 'http://localhost', 1, 0, 0, '2019-04-04 07:39:45', '2019-04-04 07:39:45'),
(2, NULL, 'Laravel Password Grant Client', 'UhpdWqZHCSFe4l3GVrl3VLV5tUzwkUsMwHogYZfS', 'http://localhost', 0, 1, 0, '2019-04-04 07:39:45', '2019-04-04 07:39:45'),
(3, 1, 'Yo', 'lHND52GibR3ae08qBnK2irJySRo4IOg0eiB69wEk', 'www.twiter.com/rewriterx_', 0, 0, 0, '2019-04-04 07:55:03', '2019-04-04 07:55:03'),
(4, NULL, 'Laravel Personal Access Client', 'bNSpQrRlXiZu9UoIHjOOUIw7yy6ksKMmRSIqu5zv', 'http://localhost', 1, 0, 0, '2019-04-05 01:40:41', '2019-04-05 01:40:41'),
(5, NULL, 'Laravel Password Grant Client', 'jP0h1KFbnqBBjPU7093WTlfE08QsRQhrZMSroRKp', 'http://localhost', 0, 1, 0, '2019-04-05 01:40:41', '2019-04-05 01:40:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-04-04 07:39:45', '2019-04-04 07:39:45'),
(2, 4, '2019-04-05 01:40:41', '2019-04-05 01:40:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('1ad60b71e8dd7e6d8a04e21b5423a0df1703c4effbf84fd9181bcf5421c463ab2227adecea502b7c', 'dadba0331a53b2ef1b78caefd6c760af7927b034600bfb1fd7ec596c24fc1f334c28298b4cfcf2c9', 0, '2019-05-05 02:34:04'),
('287f22708b5639f4723b6b8ad032e98e576e744bc539ed3a9b896615efd3def5a4f8a4b3736affe5', 'c18f68ba98659fdbf58caf0b4bfcbe68bf416f4368c650e5f49fe85209c8dbf8f05a27487d11ae7d', 0, '2019-05-05 03:32:39'),
('3a63ccfe14696af8a3990595df170f09575efcf5969ec9dadae0fe1b18f9c3f3b1be8cf1295271f4', 'a19d5f2cdc50592ea068132eb39cf98fb1f14c89c03d14415e21c67cf08e3325816386757cd38320', 0, '2019-05-05 03:36:40'),
('601ba2b708891d30e427232659ff49e3e62b8ccb6c81aadec9dac92822aee00f4f9e8580125fd19a', 'b7206471910ed440e1eb4c5cddfd84e8645533168bf0849cb3018f198c8c371d15483186db6f03f5', 0, '2019-05-05 05:30:12'),
('7bda732682616ebf58b98ea0c14f224c36c997f552c7c4da3667faebbe20c0acc10d1fef19577511', 'dcefd12a2e865261f99a5b2c186cf70535d561ca63038fbb638ce2c921a5b9b0c21f3f799ac40d63', 0, '2019-05-05 02:32:08'),
('8fca5cfada855a953ba9ff1ae116eedfd1661b754aeef5f66bc2efc4d6e76332cde61b929c515146', '6c44cd680668c24edf67754da7141f8c0bffe2859e0eb7c2e811daf18bb834f395d6c4230b985121', 0, '2019-05-04 19:42:08'),
('be2f7b0db71bba043a84fa53d9106043273211710c23f29f58314d78611ce6e3c39d7fc3d2c0649c', 'fc2e134282295143a2fc4a25e0371fd7a7e4539390035e2dfc9b916813f3dfd12e9949379be23d2f', 0, '2019-05-05 03:37:41'),
('d2e3e79e1ce6a62be423ef511fbaa7a494e3dee2bd4d55af815f0978824799b31f546d0090fd3d27', '5b5853525d693b7408a6168b877d131934dd1d001d124d5edcb70175b1e3253d39203b9d1490e11b', 0, '2019-05-05 03:15:09'),
('de807ad50535f2215ffbdc4a150f5d882e50f46f10421bb3db0fd69cb1617b0422a735396de788fc', '3daf19418d57de0c06c0a0951bc660ad8eca6b69dd3ed09ce12a2aacb57fd143081dd442a7d95e88', 0, '2019-05-04 19:42:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_carrito` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tarjeta` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalinformations`
--

CREATE TABLE `personalinformations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `career` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `descripcion`, `precio`, `imagen`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Funko pop Tracer', 'Funko del personaje de Overwatch', 300, 'C:\\imagenes\\1.jpg', NULL, NULL, NULL),
(3, 'Funko pop Mai', 'Funko del personaje de Overwatch', 300, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(4, 'Figura Goku', 'Figura de coleccion', 600, 'C:\\imagenes\\3.jpg', NULL, NULL, NULL),
(5, 'Figura Capitan America', 'Figura de coleccion', 600, 'C:\\imagenes\\4.jpg', NULL, NULL, NULL),
(6, 'Playera Zelda', 'Playera ofical de nintendo', 300, 'C:\\imagenes\\5.jpg', NULL, NULL, NULL),
(7, 'Assesins Creed: Odissey', 'Juego fisico', 1200, 'C:\\imagenes\\6.jpg', NULL, NULL, NULL),
(8, 'Funko pop Mercy', 'Funko del personaje de Overwatch', 300, 'C:\\imagenes\\7.jpg', NULL, NULL, NULL),
(9, 'Call Of Duty Black ops 4', 'Juego digital', 300, 'C:\\imagenes\\8.jpg', NULL, NULL, NULL),
(10, 'Devil May cry 5 Delux edition', 'Edicion especial', 2200, 'C:\\imagenes\\9.jpg', NULL, NULL, NULL),
(11, 'Hitman Gold Edition', 'Edición especial del juego Hitman digital', 2200, 'C:\\imagenes\\10.jpg', '', NULL, NULL),
(12, 'Just cause 4 gold edition', 'Edicion de coleccionista de Just cause 4', 2200, 'C:\\imagenes\\11.jpg', NULL, NULL, NULL),
(13, 'Minecraft', 'Juego fisico', 600, 'C:\\imagenes\\12.jpg', NULL, NULL, NULL),
(14, 'Playera Mario bros', 'Prayera oficial de nintendo', 300, 'C:\\imagenes\\13.jpg', NULL, NULL, NULL),
(15, 'Narito Strike', 'Juego digital', 800, 'C:\\imagenes\\14.jpg', NULL, NULL, NULL),
(16, 'Playera Oficial de Origen', 'Playera oficial del equipo de Esports', 300, 'C:\\imagenes\\15.png', NULL, NULL, NULL),
(17, 'Funko Hanzo', 'Funko del personaje de overwatch', 300, 'C:\\imagenes\\16.jpg', NULL, NULL, NULL),
(18, 'Playera Fnatic', 'Playera oficial del equipo de Esports', 300, 'C:\\imagenes\\17.png', NULL, NULL, NULL),
(19, 'Rainbow Six', 'Juego digital', 800, 'C:\\imagenes\\18.png', NULL, NULL, NULL),
(20, 'Figura de coleccion Shikamaru', 'Figura de los personajes de Naruto', 600, 'C:\\imagenes\\19.jpg', NULL, NULL, NULL),
(21, 'Red Dead Redemption 2', 'Juego fisico', 1300, 'C:\\imagenes\\20.jpg', NULL, NULL, NULL),
(22, 'Resident Evil 2 Remake', 'Juego Digital', 1300, 'C:\\imagenes\\21.jpg', NULL, NULL, NULL),
(23, 'Shadow of the tomb rider', 'Jugo fisico', 1300, 'C:\\imagenes\\22.jpg', '', NULL, NULL),
(24, 'Funko pop Sombra ', 'Funko del personaje de overwatch', 300, 'C:\\imagenes\\23.png', NULL, NULL, NULL),
(25, 'South Park: Fractured but hole', 'Juego fisico', 800, 'C:\\imagenes\\24.jpg', '', NULL, NULL),
(26, 'Halo: Master chief collection', 'Paquete de halo', 800, 'C:\\imagenes\\25.jpg', '', NULL, NULL),
(27, 'Playera TSM', 'Playera oficial del equipo Team SoloMid', 800, 'dffasdasdasdf', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banco` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvv` int(11) NOT NULL,
  `expiracion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `score`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alfredo Solis Zuñiga', '173239@ids.upchiapas.edu.mx', '2019-04-05 01:34:31', '$2y$10$HqoP0PnROLu.Vblv5MrZxuMrjm6bJI25LlQ9IIHI9djvb3S1/vZuC', 0, '5SpJyspsbF', '2019-04-05 01:34:31', '2019-04-05 01:34:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personalinformations`
--
ALTER TABLE `personalinformations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personalinformations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personalinformations`
--
ALTER TABLE `personalinformations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personalinformations`
--
ALTER TABLE `personalinformations`
  ADD CONSTRAINT `personalinformations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
