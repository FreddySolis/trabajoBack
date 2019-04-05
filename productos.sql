-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2019 a las 03:18:44
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
-- Base de datos: `g2a`
--

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
(1, 'Playera TSM', 'Playera oficial del equipo Team SoloMid', 800, 'C:\\imagenes\\0ed090f8ea3394b1bd5bf585240c5f42.jpg', NULL, NULL, NULL),
(2, 'Funko pop Tracer', 'Funko del personaje de Overwatch', 300, 'C:\\imagenes\\1.jpg', NULL, NULL, NULL),
(3, 'Funko pop Mai', 'Funko del personaje de Overwatch', 300, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(4, 'Figura Goku', 'Figura de coleccion', 600, 'C:\\imagenes\\1.jpg', NULL, NULL, NULL),
(5, 'Figura Capitan America', 'Figura de coleccion', 600, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(6, 'Playera Zelda', 'Playera ofical de nintendo', 300, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(7, 'Assesins Creed: Odissey', 'Juego fisico', 1200, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(8, 'Funko pop Mercy', 'Funko del personaje de Overwatch', 300, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(9, 'Call Of Duty Black ops 4', 'Juego digital', 300, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
(10, 'Devil May cry 5 Delux edition', 'Edicion especial', 2200, 'C:\\imagenes\\2.jpg', NULL, NULL, NULL),
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
(26, 'Halo: Master chief collection', 'Paquete de halo', 800, 'C:\\imagenes\\25.jpg', '', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
