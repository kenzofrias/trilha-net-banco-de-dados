--SELECT * FROM Clientes
--WHERE Nome = 'Jose'
--WHERE Nome LIKE '%G%'
--ORDER BY Nome, Sobrenome

--Inserir informações indicando a coluna
INSERT INTO Clientes (Nome, Sobrenome, Email, AceitaComunicados, DataCadastro)
VALUES ('Kenzo', 'Friás', 'email@email.com', 1, GETDATE())

--Inserir informações sem indicar as colunas
INSERT INTO Clientes VALUES ('Gabriel', 'Oliveira', 'email@email.com', 0, GETDATE())

SELECT * FROM Clientes WHERE Id = 1003

UPDATE Clientes 
SET Email = 'emailnovo@gmail.com',
	AceitaComunicados = 0
WHERE Id = 1003

SELECT * FROM Clientes WHERE Id = 1003

SELECT * FROM Clientes WHERE Nome = 'Alan'
DELETE FROM Clientes WHERE Id = 407
SELECT * FROM Clientes WHERE Id = 407