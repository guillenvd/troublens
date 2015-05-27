-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2015 a las 09:40:43
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `troublens`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE IF NOT EXISTS `reportes` (
  `tipo` int(11) DEFAULT NULL,
`id_reporte` int(11) NOT NULL,
  `coordenadas` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`tipo`, `id_reporte`, `coordenadas`, `foto`, `descripcion`, `titulo`, `direccion`) VALUES
(6, 1, NULL, '1.jpg', 'Hay muchos baches en la calle Ensenada y las perpendiculares a ella: Mártires de Rio Blanco y Mártires de Cananea.', 'Baches en Fovissste IV', 'Calle Ensenada y reforma'),
(2, 2, NULL, '2.jpg', 'No hay agua desde el martes, ya han pasado cinco días y CESPE no sabe decir cual es el problema.', 'No hay agua en Valle verde', 'Calle sin nombre y Ambar'),
(2, 3, NULL, '3.jpg', 'CESPE recomienda tomar precauciones desde este miércoles por arreglo de tuberías en la zona centro de la ciudad.', '¡Tomar precauciones!', 'Centro de la ciudad'),
(1, 4, NULL, '4.jpg', 'Ocurrió un intento de incendio en el cañon. Favor abstenerse de tirar cualquier materia que pudiese ser flamable a reación con el viento.', 'Cuidado con los vientos de san', 'Cañon de doña petra'),
(5, 5, NULL, '5.jpg', 'Nadie acudió en los primeros 20 minutos después del choque.', 'Hubo un choque en la reforma', 'Carretera transpenisular y calle 11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
 ADD PRIMARY KEY (`id_reporte`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
