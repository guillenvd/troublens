DROP TABLE dependencia;

CREATE TABLE `dependencia` (
  `id_dependencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) DEFAULT NULL,
  `direccion` varchar(75) DEFAULT NULL,
  `telefono` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `latitud` varchar(75) DEFAULT NULL,
  `longitud` varchar(20) NOT NULL,
  `foto` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_dependencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO dependencia VALUES("1","Centro de bomberos","calle","6462366599","insdim@gmail.com","31.867924","-116.6140807","bomberos");
INSERT INTO dependencia VALUES("2","CESPE","Calle 1ra","64622369596","asda@gmail.com","31.8586649","-116.5930552","cespe");
INSERT INTO dependencia VALUES("3","Centro de policias","calle","6462366599","insdim@gmail.com","31.868306","-116.613918","policias");



DROP TABLE reportes;

CREATE TABLE `reportes` (
  `tipo` int(11) DEFAULT NULL,
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `coordenadas` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO reportes VALUES("4","2","","2.jpg","Se fue la luz en mi colonia.","CFE","Direccion x de la calle x");
INSERT INTO reportes VALUES("5","3","","3.jpg","Muy aparatoso","Choque en la calle delante","Delante y reforma");
INSERT INTO reportes VALUES("2","4","","4.jpg","No hay agua desde el martes","Se fue el agua","Martires de Rio Blanco");



DROP TABLE usuarios;

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(75) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `contrasena` varchar(75) DEFAULT NULL,
  `foto` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




