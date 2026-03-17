SELECT * FROM Produtos

SELECT COUNT(*) QuantidadeProdutos FROM Produtos
SELECT COUNT(*) QuantidadeProdutos FROM Produtos WHERE Tamanho = 'M'

SELECT SUM(Preco) PrecoTotal FROM Produtos
SELECT SUM(Preco) PrecoTotal FROM Produtos WHERE Tamanho = 'M'

SELECT MAX(Preco) ProdutoMaisCaro FROM Produtos
SELECT MAX(Preco) ProdutoMaisCaro FROM Produtos WHERE Tamanho = 'M'

SELECT MIN(Preco) ProdutoMaisCaro FROM Produtos
SELECT MIN(Preco) ProdutoMaisCaro FROM Produtos WHERE Tamanho = 'M'

SELECT 
	Nome + ' - ' + Cor
FROM Produtos

SELECT 
	Nome + ' - ' + Cor NomeCompleto, UPPER(Nome), Cor
FROM Produtos

SELECT UPPER(Nome) Nome FROM Produtos
SELECT LOWER(Cor) Cor FROM Produtos
SELECT UPPER(Nome) Nome, LOWER(Cor) Cor FROM Produtos

ALTER TABLE Produtos
ADD DataCadastro DATETIME2

UPDATE Produtos SET DataCadastro = GETDATE()