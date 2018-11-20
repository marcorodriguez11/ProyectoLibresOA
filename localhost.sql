-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-02-2018 a las 22:04:40
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.0.26
/*---------------------------------------------------------CREACION DE LA BASE----------------------------
------------------------------------------------------ DATOS DE LA BASE DE DATOS 
-- NOBRE DE LA BASE DE DATOS: id4680574_libres
-- SERVIDOR: localhost
-- NOMBRE DEL USUARIO: id4680574_clientes
-- PASSWORD: 12345678
-- USER DAVID ALEXIS KEVIN :V
----------------------------------------------------------------------------------------------------------*/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id4680574_libres`
--
CREATE DATABASE IF NOT EXISTS `id4680574_libres` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id4680574_libres`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TComentarios`
--

CREATE TABLE `TComentarios` (
  `IdCommit` int(11) NOT NULL,
  `NombreOA` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autorCommit` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TDepartamentos`
--

CREATE TABLE `TDepartamentos` (
  `IdDepartamento` int(11) NOT NULL,
  `NombreDepartamento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TDepartamentos`
--

INSERT INTO `TDepartamentos` (`IdDepartamento`, `NombreDepartamento`) VALUES
(1, 'Física (DF)'),
(2, 'Matemática (DM)'),
(3, 'Ciencias Administrativas (DEPCA)'),
(4, 'Estudios Organizacionales Desarrollo Humano (DESODEH)'),
(5, 'Ingeniería Civil y Ambiental (DICA)'),
(6, 'Automatización y Control Industrial (DACI)'),
(7, 'Energía Eléctrica (DEE)'),
(8, 'Electrónica, Telecomunicaciones y Redes de Información (DETRI)'),
(9, 'Geología (DG)\r\n'),
(10, 'Petróleos (DP)'),
(11, 'Ingeniería Mecánica (DIM)'),
(12, 'Materiales (DMT)'),
(13, 'Ingeniería Química (DIQ)'),
(14, 'Ciencias de Alimentos y Biotecnología (DECAB)'),
(15, 'Ciencias Nucleares (DCN)'),
(16, 'Metalurgia Extractiva (DEMEX)'),
(17, ' Informática y Ciencias de la Computación (DICC)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TFacultades`
--

CREATE TABLE `TFacultades` (
  `IdFacultad` int(11) NOT NULL,
  `NombreFacultad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TFacultades`
--

INSERT INTO `TFacultades` (`IdFacultad`, `NombreFacultad`) VALUES
(2, 'Ciencias'),
(3, 'Ciencias Administrativas'),
(4, 'Ing. Civil & Ambiental'),
(5, 'Ing. Eléctrica y Electrónica'),
(6, 'Geología y Petróleos'),
(7, 'Ing. Mecanica'),
(8, 'Ing. Química y Agroindustrial'),
(9, 'Ing. Sistemas'),
(10, 'ESFOT'),
(11, 'Formación Básica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TObjetosAprendizaje`
--

CREATE TABLE `TObjetosAprendizaje` (
  `IdOA` int(11) NOT NULL,
  `NombreOA` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Institucion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Autor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fecha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archivo` longblob,
  `nombreArchivo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tamanioArchivo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipoArchivo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TUsuarios`
--

CREATE TABLE `TUsuarios` (
  `IdUser` int(11) NOT NULL,
  `NombreUser` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PassUser` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PassAdmin` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cedula` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nombres` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellidos` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Departamento` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Facultad` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Correo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rol` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TUsuarios`
--

INSERT INTO `TUsuarios` (`IdUser`, `NombreUser`, `PassUser`, `PassAdmin`, `Cedula`, `Nombres`, `Apellidos`, `Departamento`, `Facultad`, `Correo`, `Rol`) VALUES
(1, 'admin', '', 'admin', '', 'Administrador', 'Administrador', '', '', '', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TComentarios`
--
ALTER TABLE `TComentarios`
  ADD PRIMARY KEY (`IdCommit`);

--
-- Indices de la tabla `TDepartamentos`
--
ALTER TABLE `TDepartamentos`
  ADD PRIMARY KEY (`IdDepartamento`);

--
-- Indices de la tabla `TFacultades`
--
ALTER TABLE `TFacultades`
  ADD PRIMARY KEY (`IdFacultad`);

--
-- Indices de la tabla `TObjetosAprendizaje`
--
ALTER TABLE `TObjetosAprendizaje`
  ADD PRIMARY KEY (`IdOA`);

--
-- Indices de la tabla `TUsuarios`
--
ALTER TABLE `TUsuarios`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `TComentarios`
--
ALTER TABLE `TComentarios`
  MODIFY `IdCommit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `TDepartamentos`
--
ALTER TABLE `TDepartamentos`
  MODIFY `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `TFacultades`
--
ALTER TABLE `TFacultades`
  MODIFY `IdFacultad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `TObjetosAprendizaje`
--
ALTER TABLE `TObjetosAprendizaje`
  MODIFY `IdOA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `TUsuarios`
--
ALTER TABLE `TUsuarios`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
