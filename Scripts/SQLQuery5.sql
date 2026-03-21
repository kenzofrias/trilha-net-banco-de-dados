SELECT * FROM Produtos WHERE Nome = 'NOVO PRODUTO PROCEDURE'
INSERT INTO Produtos (Nome, Cor, Preco, Tamanho, Genero, DataCadastro) VALUES ('Nome', 'Cor', 0, 'G', 'M', GETDATE())

ALTER TABLE Produtos
ADD UNIQUE(Nome)

------------------------------------------
SELECT * FROM Produtos

ALTER TABLE Produtos
ADD CONSTRAINT CK_Genero CHECK(Genero = 'U' OR Genero = 'M' OR Genero = 'F')
INSERT INTO Produtos (Nome, Cor, Preco, Tamanho, Genero, DataCadastro) VALUES ('Produto', 'Cor', 0, 'G', 'Z', GETDATE())

ALTER TABLE Produtos
DROP CONSTRAINT UQ__Produtos__7D8FE3B2A2E65528

ALTER TABLE Produtos
ADD DEFAULT GETDATE() FOR DataCadastro

CREATE PROCEDURE ObterProdutosPorTamanho
@Tamanho varchar(5)

AS

SELECT * FROM Produtos WHERE Tamanho = @Tamanho

EXEC ObterProdutosPorTamanho 'M'

EXEC InserirNovoProduto
'NOVO PRODUTO PROCEDURE',
'Amarelo',
22.90,
'M',
'M'

--CREATE PROCEDURE InserirNovoProduto
--@Nome varchar(255),
--@Cor varchar(50),
--@Preco decimal,
--@Tamanho varchar(5),
--@Genero char(1)

--AS

--INSERT INTO Produtos (Nome, Cor, Preco, Tamanho, Genero) VALUES (@Nome,@Cor,@Preco,@Tamanho,@Genero)

SELECT Nome, Preco, dbo.CalcularDesconto(Preco,10) PrecoComDesconto
FROM Produtos WHERE Tamanho = 'M'

CREATE FUNCTION CalcularDesconto(@Preco DECIMAL(13,2), @Porcentagem INT)
RETURNS DECIMAL(13,2)

BEGIN
	RETURN @Preco - @Preco/100 * @Porcentagem
END