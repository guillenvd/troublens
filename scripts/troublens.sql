-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2015 a las 18:10:02
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
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE IF NOT EXISTS `dependencia` (
`id_dependencia` int(11) NOT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `direccion` varchar(75) DEFAULT NULL,
  `telefono` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `latitud` varchar(75) DEFAULT NULL,
  `longitud` varchar(20) NOT NULL,
  `foto` varchar(75) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id_dependencia`, `nombre`, `direccion`, `telefono`, `correo`, `latitud`, `longitud`, `foto`) VALUES
(1, 'Centro de bomberos', 'calle', '6462366599', 'insdim@gmail.com', '31.806876', '-116.589703', NULL),
(2, 'Centro de policias', 'calle', '6462366599', 'insdim@gmail.com', '31.80574', '-116.589477', NULL),
(3, 'CESPE', 'Calle 1ra', '64622369596', 'asda@gmail.com', '31.8586649', '-116.5930552', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE IF NOT EXISTS `reportes` (
  `id_dependencia` int(11) DEFAULT NULL,
`id_reporte` int(11) NOT NULL,
  `coordenadas` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`id_dependencia`, `id_reporte`, `coordenadas`, `foto`, `descripcion`, `titulo`, `direccion`) VALUES
(NULL, 1, NULL, '1.jpg', 'Hay un incendio en la casa de atrÃ¡s.', 'Se quemÃ³ mi casa', 'MÃ¡rtires de Rio Blanco #197'),
(NULL, 2, NULL, '2.jpg', 'No hay agua', 'No hay agua', 'Martires rio blanco #197');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id_usuario` int(11) NOT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `contrasena` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `contrasena`, `foto`) VALUES
(1, 'lulu', 'lourdezcampero@hotmail.com', 'lulu', '1.jpg'),
(2, 'david', 'david@gmail.com', 'asda', '2.jpg'),
(3, 'Ã‘oÃ±o', 'yosoyelbueno@yeah.god', 'holamundo', '3.jpg'),
(4, 'Hola', 'Hola@gmail.com', 'Hola', '4.jpg'),
(5, 'Alarez', 'lubeda@hotmail.es', 'alarez', '5.jpg'),
(6, 'Manuel Vega', 'manuelvega15@hotmail.com', '1234', '6.jpg'),
(7, 'a', 'a@hotmail.com', 'a', '7.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dependencia`
--
ALTER TABLE `dependencia`
 ADD PRIMARY KEY (`id_dependencia`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
 ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dependencia`
--
ALTER TABLE `dependencia`
MODIFY `id_dependencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
