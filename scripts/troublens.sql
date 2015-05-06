-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2015 at 06:31 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `troublens`
--

-- --------------------------------------------------------

--
-- Table structure for table `dependencia`
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
-- Dumping data for table `dependencia`
--

INSERT INTO `dependencia` (`id_dependencia`, `nombre`, `direccion`, `telefono`, `correo`, `latitud`, `longitud`, `foto`) VALUES
(1, 'Centro de bomberos', 'calle', '6462366599', 'insdim@gmail.com', '31.806876', '-116.589703', NULL),
(2, 'Centro de policias', 'calle', '6462366599', 'insdim@gmail.com', '31.80574', '-116.589477', NULL),
(3, 'CESPE', 'Calle 1ra', '64622369596', 'asda@gmail.com', '31.8586649', '-116.5930552', '6');

-- --------------------------------------------------------

--
-- Table structure for table `reportes`
--

CREATE TABLE IF NOT EXISTS `reportes` (
`id_reporte` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `coordenadas` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportes`
--

INSERT INTO `reportes` (`id_reporte`, `id_usuario`, `correo`, `coordenadas`, `foto`, `descripcion`, `titulo`, `direccion`) VALUES
(20, NULL, NULL, NULL, NULL, 'No hay agua en la colonia Fovissste', 'No hay agua', 'En mi colonia'),
(21, NULL, NULL, NULL, NULL, 'Hola', 'Hola', 'Hola');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id_usuario` int(11) NOT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `contrasena` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `correo`, `contrasena`, `foto`) VALUES
(1, 'lulu', 'lourdezcampero@hotmail.com', 'lulu', '1.jpg'),
(2, 'david', 'david@gmail.com', 'asda', '2.jpg'),
(3, 'Ã‘oÃ±o', 'yosoyelbueno@yeah.god', 'holamundo', '3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dependencia`
--
ALTER TABLE `dependencia`
 ADD PRIMARY KEY (`id_dependencia`);

--
-- Indexes for table `reportes`
--
ALTER TABLE `reportes`
 ADD PRIMARY KEY (`id_reporte`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dependencia`
--
ALTER TABLE `dependencia`
MODIFY `id_dependencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reportes`
--
ALTER TABLE `reportes`
MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
