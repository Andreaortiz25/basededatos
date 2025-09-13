CREATE DATABASE viajesEmily
USE viajesEmily

CREATE TABLE vendedor (
id INT IDENTITY, 
CodigoVendedor INT PRIMARY KEY,
NombreCompleto VARCHAR(50) NOT NULL,
TelefonoContacto VARCHAR(100),
)

CREATE TABLE Destino
(CodigoDestino INT PRIMARY KEY,
NombreDestino VARCHAR(50)
)

CREATE TABLE Clientes
(CodigoDestino INT FOREIGN KEY REFERENCES Destino (CodigoDestino)
,idCliente INT PRIMARY KEY IDENTITY
,NombreCliente VARCHAR(100) NOT NULL
,CodigoVendedor INT FOREIGN KEY REFERENCES vendedor (CodigoVendedor)
,TelefonoCliente VARCHAR(15)
,NombreDestino VARCHAR(50)
)


INSERT INTO vendedor
(CodigoVendedor,NombreCompleto,TelefonoContacto)
VALUES
('256789','Jesus David Moreno Rojas','3214568932'),
('456487','Sandra Ortiz Areiza','3147862354'),
('635479','Luis Medina Osorio','3026654798')
 
INSERT INTO Destino
(CodigoDestino,NombreDestino)
VALUES
(587965,'Santa Marta'),
(335487,'Cartagena'),
(657812,'San Andres'),
(364745,'Eje Cafetero')

INSERT INTO Clientes
(CodigoDestino,NombreCliente,CodigoVendedor,TelefonoCliente,NombreDestino)
VALUES
(335487,'Alejandro Morales Rojas',256789,'3176925645','Cartagena'),
(657812,'Emily Arango Ortiz',456487,'30229629630','San Andres'),
(657812,'Santiago Alejandro Arango Osorio',456487,'3192412986','San Andres'),
(587965,'Miguel Angel Ortiz Areiza',635479,'3026485697','Santa Marta'),
(364745,'Danna Maria Perez Silva',635479,'3679846654','Eje Cafetero'),
(587965,'Paola Perez Gil',256789,'3215648976','Cartagena'),
(657812,'Stella Osorio Rivas',256789,'3215698411','Eje Cafetero'),
(587965,'Jesus Ortiz Giraldo',256789,'3005268971','Cartagena'),
(587965,'Esteban Gonzales Rojas',635479,'3029654841','Cartagena'),
(587965,'Manuel Arrubla Soto',456487,'3215648976','Santa Marta'),
(657812,'Carlos Marin Rosales',456487,'3218811946','San Andres'),
(587965,'Angie Giraldo Martinez',635479,'3201589637','San Andres'),
(587965,'Olga Naranjo Perlaza',456487,'3192412986','San Andres'),
(657812,'Camilo Perez Garcia',635479,'3148569352','Cartagena'),
(335487,'Margarita Sandoval Gil',456487,'3159632859','Cartagena'),
(587965,'Juan Pablo Rojas Londoño',456487,'3056985764','Eje Cafetero'),
(657812,'Manuela Jaramillo Chaverra',635479,'3022965263','Cartagena'),
(587965,'David Osorno Lopez',456487,'3002158741','Cartagena'),
(587965,'Alvaro Angulo Cuervo',635479,'3026985416','Eje Cafetero'),
(657812,'Marta Perez Berrio',256789,'3022859631','Santa Marta'),
(335487,'Olga Lucia Murillo Berrio',456487,'3012587965','Santa Marta'),
(335487,'Adriana Lopera Arcila',256789,'3192415986','Santa Marta')

UPDATE vendedor
SET NombreCompleto = 'Emily arango ortiz'
WHERE CodigoVendedor = 256789 ;


ALTER TABLE destino
ALTER COLUMN Nombredestino VARCHAR (50) NOT NULL

SELECT * FROM Clientes c
LEFT JOIN Destino D
ON C.CodigoDestino = D.CodigoDestino
	AND C.NombreDestino = D.NombreDestino
INNER JOIN vendedor v
ON C.CodigoVendedor = V.CodigoVendedor
WHERE C.CodigoDestino = 335487

INSERT INTO destino
(CodigoDestino,NombreDestino)
VALUES (159876,'valledupar')

--DELETE FROM Clientes
--WHERE idCliente IN (21,22)
SELECT * FROM Destino

SELECT * FROM vendedor

SELECT * FROM Clientes

CREATE PROCEDURE conocer_destino 
	@Nombredestino VARCHAR(50)
	AS

BEGIN

SET NOCOUNT ON;

SELECT * FROM Clientes C
LEFT JOIN Destino D
ON C.CodigoDestino=D.CodigoDestino
WHERE D.NombreDestino = @Nombredestino

END

EXEC conocer_destino 'Santa Marta'
