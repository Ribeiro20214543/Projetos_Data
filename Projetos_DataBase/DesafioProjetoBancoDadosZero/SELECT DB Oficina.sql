-- Recuperação simples com SELECT Statement:
SELECT * FROM Cliente;
SELECT * FROM Veiculo;
SELECT * FROM Servico;
SELECT * FROM OrdemDeServico;
SELECT * FROM ItemDeServico;

-- Filtros com WHERE Statement:
SELECT * FROM Cliente WHERE Nome = 'João';
SELECT * FROM Veiculo WHERE Marca = 'Ford';
SELECT * FROM Servico WHERE Preco > 100;
SELECT * FROM OrdemDeServico WHERE Status = 'Concluída';


-- Expressões para gerar atributos derivados:
SELECT *, Quantidade * PrecoUnitario AS ValorTotal FROM ItemDeServico;
SELECT *, YEAR(DataEntrada) AS AnoEntrada FROM OrdemDeServico;

--Ordenações dos dados com ORDER BY:
SELECT * FROM Veiculo ORDER BY Ano DESC;
SELECT * FROM Servico ORDER BY Preco ASC;
SELECT * FROM OrdemDeServico ORDER BY DataEntrada;
SELECT * FROM ItemDeServico ORDER BY PrecoUnitario DESC;

-- Condições de filtros aos grupos - HAVING Statement:
SELECT Cliente_ID, COUNT(*) AS QuantidadeOrdens FROM OrdemDeServico GROUP BY Cliente_ID HAVING COUNT(*) > 5;
SELECT Servico_ID, SUM(Quantidade) AS TotalQuantidade FROM ItemDeServico GROUP BY Servico_ID HAVING SUM(Quantidade) >= 10;

-- Junções entre tabelas para fornecer uma perspectiva mais complexa dos dados:
-- Obter todos os veículos de um determinado cliente
SELECT Cliente.Nome, Veiculo.Marca, Veiculo.Modelo
FROM Cliente
INNER JOIN Veiculo ON Cliente.ID = Veiculo.Cliente_ID
WHERE Cliente.Nome = 'João';

-- Obter todos os serviços realizados em uma ordem de serviço
SELECT OrdemDeServico.ID, Servico.Descricao
FROM OrdemDeServico
INNER JOIN ItemDeServico ON OrdemDeServico.ID = ItemDeServico.OrdemDeServico_ID
INNER JOIN Servico ON ItemDeServico.Servico_ID = Servico.ID;


