DROP TABLE usuarios;
DROP TABLE reportes;
DROP TABLE dependencia;
CREATE TABLE usuarios (
	id_usuario 	INT PRIMARY KEY, 
	nombre 		VARCHAR(75),
	correo 		VARCHAR(75),
	contrasena 	VARCHAR(75),
	foto		VARCHAR(75)
);
CREATE TABLE reportes(
	id_reporte 	INT PRIMARY KEY,
	id_usuario 	INT,
	correo 		VARCHAR(75),
	coordenadas VARCHAR(75),
	foto		VARCHAR(75),
	descripcion VARCHAR(150)
);
CREATE TABLE dependencia(
	id_dependencia INT PRIMARY KEY,
	nombre 		VARCHAR(75), 
	direccion 	VARCHAR(75),
	telefono 	VARCHAR(75),
	correo 		VARCHAR(75),
	coordenadas VARCHAR(75),
	foto	 	VARCHAR(75)
); 