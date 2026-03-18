SELECT * FROM Clientes WHERE Id = 3
SELECT * FROM Enderecos WHERE IdCliente = 3

INSERT INTO Enderecos VALUES (3, 'Rua de Teste', 'Teste', 'Testando', 'TE')

SELECT * 
FROM Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente 
WHERE Clientes.Id = 5