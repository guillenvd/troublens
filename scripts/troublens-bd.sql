-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2015 a las 19:16:44
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: 'troublens'
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'dependencia'
--

CREATE TABLE IF NOT EXISTS dependencia (
  id_dependencia int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(75) DEFAULT NULL,
  direccion varchar(75) DEFAULT NULL,
  telefono varchar(75) DEFAULT NULL,
  correo varchar(75) DEFAULT NULL,
  latitud varchar(75) DEFAULT NULL,
  longitud varchar(20) NOT NULL,
  foto varchar(75) DEFAULT NULL,
  PRIMARY KEY (id_dependencia)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla 'dependencia'
--

INSERT INTO dependencia (id_dependencia, nombre, direccion, telefono, correo, latitud, longitud, foto) VALUES
(1, 'Centro de bomberos', 'calle', '6462366599', 'insdim@gmail.com', '31.806876', '-116.589703', NULL),
(2, 'Centro de policias', 'calle', '6462366599', 'insdim@gmail.com', '31.80574', '-116.589477', NULL),
(3, 'CESPE', 'Calle 1ra', '64622369596', 'asda@gmail.com', '31.8586649', '-116.5930552', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'reportes'
--

CREATE TABLE IF NOT EXISTS reportes (
  id_reporte int(11) NOT NULL,
  id_usuario int(11) DEFAULT NULL,
  correo varchar(75) DEFAULT NULL,
  coordenadas varchar(75) DEFAULT NULL,
  foto varchar(75) DEFAULT NULL,
  descripcion varchar(150) DEFAULT NULL,
  PRIMARY KEY (id_reporte)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'usuarios'
--

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(75) DEFAULT NULL,
  correo varchar(75) DEFAULT NULL,
  contrasena varchar(75) DEFAULT NULL,
  foto varchar(75) DEFAULT NULL,
  PRIMARY KEY (id_usuario)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla 'usuarios'
--

INSERT INTO usuarios (id_usuario, nombre, correo, contrasena, foto) VALUES
(1, 'lulu', 'lourdezcampero@hotmail.com', 'lulu', '1.jpg'),
(2, 'david', 'david@gmail.com', 'asda', '2.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
