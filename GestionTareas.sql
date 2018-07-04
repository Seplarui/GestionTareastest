-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-07-2018 a las 19:45:13
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `GestionTareas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TAREAS`
--

CREATE TABLE `TAREAS` (
  `IDTAREA` int(9) NOT NULL,
  `NOMBRE_TAREA` varchar(50) NOT NULL,
  `TIEMPO_TAREA` date NOT NULL,
  `FECHA_INICIO` date NOT NULL,
  `FECHA_FIN` date NOT NULL,
  `IDESTADO` int(9) NOT NULL,
  `DESCRIPCION_TAREA` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TAREASESTADOS`
--

CREATE TABLE `TAREASESTADOS` (
  `IDESTADO` int(9) NOT NULL,
  `ESTADO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `TAREASESTADOS`
--

INSERT INTO `TAREASESTADOS` (`IDESTADO`, `ESTADO`) VALUES
(1, 'ANULADA'),
(2, 'ESPERA'),
(3, 'RESUELTA'),
(4, 'PROGRESO'),
(5, 'CERRADA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `TAREAS`
--
ALTER TABLE `TAREAS`
  ADD PRIMARY KEY (`IDTAREA`);

--
-- Indices de la tabla `TAREASESTADOS`
--
ALTER TABLE `TAREASESTADOS`
  ADD PRIMARY KEY (`IDESTADO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `TAREAS`
--
ALTER TABLE `TAREAS`
  MODIFY `IDTAREA` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `TAREASESTADOS`
--
ALTER TABLE `TAREASESTADOS`
  MODIFY `IDESTADO` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
