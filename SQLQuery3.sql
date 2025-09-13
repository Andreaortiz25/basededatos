SELECT * FROM Clientes C
LEFT JOIN Destino D
ON C.CodigoDestino=D.CodigoDestino --AND C.NombreDestino=D.NombreDestino
WHERE D.CodigoDestino =335487


SELECT * FROM Clientes C
LEFT JOIN Destino D
ON C.CodigoDestino=D.CodigoDestino AND C.NombreDestino=D.NombreDestino
WHERE D.CodigoDestino =335487

SELECT * FROM vendedor

SELECT * FROM Destino

SELECT * FROM Clientes


SELECT * FROM Clientes C
INNER JOIN vendedor V
ON C.CodigoVendedor = V.CodigoVendedor
WHERE V.CodigoVendedor = 456487

INSERT INTO Clientes 
(codigodestino,codigovendedor,nombredestino,NombreCliente)
values (103625,658985,'Pasto','Esteban Ocampo Rios')


INSERT INTO Destino
VALUES
(103625,'Pasto')

INSERT INTO vendedor
VALUES
(658985,'Olga Ramirez Solis','3213604596')


UPDATE Clientes SET TelefonoCliente = '3014983265'
WHERE idCliente = 28

SELECT * FROM Clientes

ALTER TABLE clientes
add sexo varchar (15)

UPDATE Clientes set sexo = 'Femenino'
WHERE sexo is null

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
