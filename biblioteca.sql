-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2018 a las 21:12:29
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `IDL` int(25) NOT NULL,
  `cod_libs` varchar(25) NOT NULL,
  `nom_lib` varchar(40) NOT NULL,
  `autor` varchar(40) NOT NULL,
  `anio` date NOT NULL,
  `ejemplar` int(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `carrera` varchar(40) NOT NULL,
  `estante` varchar(40) NOT NULL,
  `volumen` int(20) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`IDL`, `cod_libs`, `nom_lib`, `autor`, `anio`, `ejemplar`, `estado`, `carrera`, `estante`, `volumen`, `color`) VALUES
(1, '1A2B3C', 'Matematicas Discretas', 'Asael Vega Sanchez', '2018-06-30', 5, 'DISPONIBLE', 'ISC', '5A', 5, 'Verde'),
(2, '2AABBB', 'Mecanica de Suelos', 'Raul Eduardo Guerrero Perez', '2018-05-13', 6, 'DISPONIBLE', 'IC', '6A', 3, 'Verde'),
(3, '3AACBBB', 'Contabilidad', 'Sergio Llamas Soto', '2018-05-07', 3, 'DISPONIBLE', 'ADMON', '4B', 5, 'Verde'),
(4, '9EEECCC', 'Probabilidad', 'Daniel Axel Jacobo Bojorquez', '2018-05-18', 7, 'DISPONIBLE', 'II', '4B', 3, 'Verde'),
(5, '3AACBEE', 'Redes Inalambricas', 'Daniel Campos Rodriguez', '2018-05-22', 5, 'DISPONIBLE', 'ISC', '6A', 5, 'Verde'),
(6, '1AABCE', 'Calculo', 'Diana Elizabeth Lopez Chacon', '2018-06-12', 5, 'DISPONIBLE', 'CB', '5A', 6, 'Verde');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`IDL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `IDL` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
