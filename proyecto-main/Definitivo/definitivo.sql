-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2023 a las 15:18:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `definitivo`
--
CREATE DATABASE definitivo;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Identificación` varchar(20) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Imagen` varchar(1000) NOT NULL,
  `Rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Identificación`, `Correo`, `Imagen`, `Rol`) VALUES
(31, 'luisa', '501933', 'perluysa@gmail.com', '1699471148_descarga.jpg', 'agente'),
(32, 'luisa', '501933', 'perluysa@gmail.com', 'Captura de pantalla (22).png', 'agente'),
(33, 'luisa', '501933', 'perluysa@gmail.com', '1699471219_descarga.jpg', 'agente'),
(34, 'luisa', '501933', 'perluysa@gmail.com', '1699471258_descarga.jpg', 'agente'),
(36, 'Luisa', '501933', 'pluisnys@gmail.com', '1699474606_Captura de pantalla 2023-10-31 154853.png', 'agente'),
(37, 'Luisa', '501933', 'pluisnys@gmail.com', '1699474651_descarga.jpg', 'agente'),
(38, 'kit', '501933', 'pluisnys@gmail.com', '1700330106_Captura de pantalla (21).png', 'agente'),
(40, 'kit', '501933', 'pluisnys@gmail.com', '1700403277_WhatsApp Image 2023-09-29 at 12.15.50 PM (3).jpeg', 'agente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
