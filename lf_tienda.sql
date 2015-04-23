-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-04-2015 a las 14:03:01
-- Versión del servidor: 10.0.17-MariaDB-log
-- Versión de PHP: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lf_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'porro', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'ipsa', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'earum', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_04_22_045029_create_categorias_table', 1),
('2015_04_22_045126_create_productos_table', 1),
('2015_04_22_045237_create_compras_table', 1),
('2015_04_22_045411_create_producto_compra_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(10) unsigned NOT NULL,
  `categoria_id` int(10) unsigned NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) DEFAULT '0',
  `precio` double(8,2) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `stock`, `precio`, `imagen`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'pariatur', 5, 519.37, 'http://lorempixel.com/640/480/?98099', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 1, 'dolores', 24, 798.22, 'http://lorempixel.com/640/480/?82806', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 1, 'perspiciatis', 65, 116.34, 'http://lorempixel.com/640/480/?45288', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 3, 'sunt', 28, 276.39, 'http://lorempixel.com/640/480/?39780', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 1, 'facilis', 75, 929.58, 'http://lorempixel.com/640/480/?67117', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 3, 'ut', 56, 71.49, 'http://lorempixel.com/640/480/?69781', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 1, 'facere', 81, 9.72, 'http://lorempixel.com/640/480/?55056', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 2, 'saepe', 51, 62.24, 'http://lorempixel.com/640/480/?94641', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 1, 'in', 71, 569.80, 'http://lorempixel.com/640/480/?65129', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 1, 'corporis', 53, 989.61, 'http://lorempixel.com/640/480/?36046', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(11, 1, 'est', 15, 945.87, 'http://lorempixel.com/640/480/?14574', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, 1, 'aut', 0, 871.40, 'http://lorempixel.com/640/480/?23357', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(13, 1, 'provident', 46, 114.11, 'http://lorempixel.com/640/480/?91274', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 1, 'quia', 88, 398.93, 'http://lorempixel.com/640/480/?84915', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 3, 'est', 92, 837.58, 'http://lorempixel.com/640/480/?97210', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 2, 'nostrum', 89, 781.28, 'http://lorempixel.com/640/480/?72679', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(17, 3, 'libero', 76, 556.29, 'http://lorempixel.com/640/480/?71304', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 1, 'cupiditate', 65, 283.31, 'http://lorempixel.com/640/480/?49950', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(19, 1, 'assumenda', 43, 306.43, 'http://lorempixel.com/640/480/?32034', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, 2, 'est', 19, 552.51, 'http://lorempixel.com/640/480/?18750', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, 1, 'vel', 46, 113.31, 'http://lorempixel.com/640/480/?36774', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 1, 'consequatur', 13, 225.81, 'http://lorempixel.com/640/480/?63643', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 3, 'molestias', 17, 666.54, 'http://lorempixel.com/640/480/?53716', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 2, 'aliquid', 28, 826.71, 'http://lorempixel.com/640/480/?99371', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 1, 'voluptas', 70, 631.21, 'http://lorempixel.com/640/480/?85370', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_compra`
--

CREATE TABLE IF NOT EXISTS `producto_compra` (
  `id` int(10) unsigned NOT NULL,
  `producto_id` int(10) unsigned NOT NULL,
  `compra_id` int(10) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `producto_compra`
--
ALTER TABLE `producto_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_compra_producto_id_foreign` (`producto_id`),
  ADD KEY `producto_compra_compra_id_foreign` (`compra_id`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `producto_compra`
--
ALTER TABLE `producto_compra`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `producto_compra`
--
ALTER TABLE `producto_compra`
  ADD CONSTRAINT `producto_compra_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `producto_compra_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
