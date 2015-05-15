-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2015 a las 20:25:47
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

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
  `id_dependencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) DEFAULT NULL,
  `direccion` varchar(75) DEFAULT NULL,
  `telefono` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `latitud` varchar(75) DEFAULT NULL,
  `longitud` varchar(20) NOT NULL,
  `foto` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_dependencia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id_dependencia`, `nombre`, `direccion`, `telefono`, `correo`, `latitud`, `longitud`, `foto`) VALUES
(1, 'Centro de bomberos', 'calle', '6462366599', 'insdim@gmail.com', '31.806876', '-116.589703', 'bomberos'),
(2, 'CESPE', 'Calle 1ra', '64622369596', 'asda@gmail.com', '31.8586649', '-116.5930552', 'cespe'),
(3, 'Centro de policias', 'calle', '6462366599', 'insdim@gmail.com', '31.80574', '-116.589477', 'policias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE IF NOT EXISTS `reportes` (
  `tipo` int(11) DEFAULT NULL,
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `coordenadas` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`tipo`, `id_reporte`, `coordenadas`, `foto`, `descripcion`, `titulo`, `direccion`) VALUES
(2, 1, NULL, '1.jpg', 'Hay un incendio en la casa de atrÃ¡s.', 'Se quemá mi casa', 'Mátires de Rio Blanco #197'),
(3, 2, NULL, '2.jpg', 'No hay agua', 'No hay agua', 'Martires rio blanco #197'),
(2, 3, NULL, 'nope.jpg', 'Descripción', 'Titulo1', 'Dirección'),
(3, 4, NULL, 'nope.jpg', 'Descripción', 'Lluvia', 'Dirección'),
(3, 5, NULL, '5.jpg', 'Descripción', 'Lluvia', 'Dirección');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `contrasena` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
