use sys;

create table actores (
codigo INTEGER PRIMARY KEY,
nombre VARCHAR(40), 
fecha DATE,
nacionalidad VARCHAR(20),
cod_personaje INTEGER
);  

create DATABASE alumnos CHARACTER SET Latin1 COLLATE latin1_spanish_ci;

create table pelicula(
isbn varchar(7) PRIMARY KEY,
titulo VARCHAR(50),
director VARCHAR(50),
precio NUMERIC(4,2)
);

CREATE TABLE perdedores(
	codigo INTEGER PRIMARY KEY,
    nombre VARCHAR(50),
    isbn_pelicula VARCHAR(7),
    FOREIGN KEY (isbn_pelicula) REFERENCES pelicula(isbn)
    );


CREATE TABLE IF NOT EXISTS BULTOS(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    estado ENUM('Pendiente','Entregado','Rechazado')
    )
    COMMENT = 'ES LA TABLA DE BULTOS',
    AUTO_INCREMENT=100,
    MAX_ROWS=50;
    	
DESCRIBE actores;

alter TABLE actores DROP PRIMARY KEY;
ALTER TABLE actores DROP nacionalidad;
ALTER TABLE actores ADD COLUMN nacionalidad VARCHAR(20) PRIMARY KEY FIRST;

CREATE DATABASE VUELOS CHARACTER SET latin1 COLLATE latin1_spanish_ci;d

USE VUELOS;

CREATE TABLE clientes (
	id INTEGER PRIMARY KEY  AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    direccion VARCHAR(150)
    );

CREATE TABLE viajes(
	id INTEGER PRIMARY KEY  AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(50),
    descripcion VARCHAR(150),
    codigocliente INTEGER, 
    FOREIGN KEY(codigocliente) REFERENCES clientes(id)
    );


    
    