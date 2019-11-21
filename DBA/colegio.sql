-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2019 a las 06:58:55
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `nombre`, `user_id`, `profesor_id`, `created_at`, `updated_at`) VALUES
(1, 'Matemática', 1, 3, '2019-11-19 10:03:47', '2019-11-20 10:39:50'),
(2, 'Ing. de Software', 1, 2, '2019-11-19 10:08:52', '2019-11-20 10:40:12'),
(3, 'Literatura', 1, 3, '2019-11-20 08:40:58', '2019-11-20 10:40:17'),
(4, 'Electricidad Básica', NULL, 2, '2019-11-20 10:19:25', '2019-11-20 10:19:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacions`
--

CREATE TABLE `calificacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asignatura_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `calificacion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `padre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asignatura_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `user_id`, `padre_id`, `asignatura_id`, `created_at`, `updated_at`) VALUES
(1, 'estudiante1', 12, 1, 1, '2019-11-20 09:43:49', '2019-11-20 09:43:49');

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
(3, '2019_11_13_065245_create_padres_table', 1),
(4, '2019_11_19_032344_create_tipousers_table', 2),
(5, '2019_11_19_032926_add_user_columns', 3),
(6, '2019_11_19_033840_create_profesors_table', 4),
(7, '2019_11_19_034010_create_asignaturas_table', 5),
(8, '2019_11_19_034343_create_calificacions_table', 6),
(9, '2019_11_20_051416_add_columns_profesor', 7),
(10, '2019_11_20_052801_create_padres_table', 8),
(11, '2019_11_20_052857_create_estudiantes_table', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `padres`
--

INSERT INTO `padres` (`id`, `nombre`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'padre1', 9, '2019-11-20 09:39:24', '2019-11-20 09:39:24');

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
-- Estructura de tabla para la tabla `profesors`
--

CREATE TABLE `profesors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesors`
--

INSERT INTO `profesors` (`id`, `nombre`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'Alexander Hilario', '2019-11-20 09:22:55', '2019-11-20 09:22:55', 4),
(3, 'Profesor1', '2019-11-20 09:36:42', '2019-11-20 09:36:42', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousers`
--

CREATE TABLE `tipousers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipousers`
--

INSERT INTO `tipousers` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2019-11-19 09:00:00', '2019-11-19 06:00:00'),
(2, 'Profesor', '2019-11-19 09:00:00', '2019-11-19 04:00:00'),
(3, 'Padres', '2019-11-19 04:00:00', '2019-11-19 04:00:00'),
(4, 'Estudiantes', '2019-11-20 04:00:00', '2019-11-20 04:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipouser_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `tipouser_id`) VALUES
(1, 'OSWALDO MOLINA', 'oswaldomp19@hotmail.com', NULL, '$2y$10$5.PGI4ccqLANawqprI1zLeXbkfL16v3yXOQaFbQZXu2rqFTIG69oq', 'JRKd8e47HUIoWcwiy3Uy5O9PZVMpUQebDnO6H9ijowFFMEEKGnIb3Cf9vPEK', '2019-11-19 08:18:30', '2019-11-19 08:18:30', 1),
(4, 'Alexander Hilario', 'ing.alexander875@gmail.com', NULL, '$2y$10$W3U4FpqcnQG/xXl2xYYDb.on9rXmS3V7AjeApxglOpRdbg2cxeaXK', NULL, '2019-11-20 09:22:54', '2019-11-20 09:22:54', 4),
(5, 'admin', 'admin@gmail.com', NULL, '$2y$10$CHzWXPDzx/TKasSu9j1.9OX/S/jBAk9GWajQs.RfqAiPFbmWV2OX.', NULL, '2019-11-20 09:33:04', '2019-11-20 09:33:04', 1),
(7, 'Profesor1', 'profesor@gmail.com', NULL, '$2y$10$n92x99sUejdLCfJCAcyCVe3f7ia8ap5/FNhxRpPBLMob.E3/VYO5i', NULL, '2019-11-20 09:36:42', '2019-11-20 09:36:42', 2),
(9, 'padre1', 'padre1@gmail.com', NULL, '$2y$10$FX9OfUAOsqh3LyjATPj4luYhMx/A0cx.wr5XesgAB3bbhnchga2DO', NULL, '2019-11-20 09:39:24', '2019-11-20 09:39:24', 3),
(12, 'estudiante1', 'estudiante@gmail.com', NULL, '$2y$10$jQQJhWE9Q8O.JMXyunxfkuaf6T8gI3X1KAOxpEQ50CDqCFusS.6eW', NULL, '2019-11-20 09:43:48', '2019-11-20 09:43:48', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignaturas_user_id_foreign` (`user_id`),
  ADD KEY `asignaturas_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calificacions_asignatura_id_foreign` (`asignatura_id`),
  ADD KEY `calificacions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiantes_user_id_foreign` (`user_id`),
  ADD KEY `estudiantes_padre_id_foreign` (`padre_id`),
  ADD KEY `asignatura_id` (`asignatura_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `padres_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `profesors`
--
ALTER TABLE `profesors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesors_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `tipousers`
--
ALTER TABLE `tipousers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_tipouser_id_foreign` (`tipouser_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `profesors`
--
ALTER TABLE `profesors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipousers`
--
ALTER TABLE `tipousers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`),
  ADD CONSTRAINT `asignaturas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `calificacions`
--
ALTER TABLE `calificacions`
  ADD CONSTRAINT `calificacions_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `calificacions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `estudiantes_padre_id_foreign` FOREIGN KEY (`padre_id`) REFERENCES `padres` (`id`),
  ADD CONSTRAINT `estudiantes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `padres`
--
ALTER TABLE `padres`
  ADD CONSTRAINT `padres_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `profesors`
--
ALTER TABLE `profesors`
  ADD CONSTRAINT `profesors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tipouser_id_foreign` FOREIGN KEY (`tipouser_id`) REFERENCES `tipousers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
