-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-06-2022 a las 16:39:57
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dato_personal`
--

CREATE TABLE `dato_personal` (
  `id` bigint(20) NOT NULL,
  `imagen_perfil_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_perfil_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_portada_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_portada_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profesion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_git_hub` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `imagen_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lugar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `imagen_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lugar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `periodo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_habilidad`
--

CREATE TABLE `grupo_habilidad` (
  `id` bigint(20) NOT NULL,
  `grupo_habilidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `id` bigint(20) NOT NULL,
  `habilidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_grupo_habilidad` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` bigint(20) NOT NULL,
  `anio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_proyecto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `programa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repositorio_git` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagina_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dato_personal`
--
ALTER TABLE `dato_personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_habilidad`
--
ALTER TABLE `grupo_habilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dato_personal`
--
ALTER TABLE `dato_personal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `grupo_habilidad`
--
ALTER TABLE `grupo_habilidad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
