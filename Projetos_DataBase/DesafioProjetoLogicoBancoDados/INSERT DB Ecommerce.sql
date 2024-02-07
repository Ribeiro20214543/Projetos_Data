USE Ecommerce;

-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (Nome, Endereço, CPF, CNPJ)
VALUES
    ('Cliente 1', 'Endereço 1', '11111111111', '111111111111111111'),
    ('Cliente 2', 'Endereço 2', '22222222222', '222222222222222222'),
    ('Cliente 3', 'Endereço 3', '33333333333', '333333333333333333'),
    ('Cliente 4', 'Endereço 4', '44444444444', '444444444444444444'),
    ('Cliente 5', 'Endereço 5', '55555555555', '555555555555555555'),
    ('Cliente 6', 'Endereço 6', '66666666666', '666666666666666666'),
    ('Cliente 7', 'Endereço 7', '77777777777', '777777777777777777'),
    ('Cliente 8', 'Endereço 8', '88888888888', '888888888888888888'),
    ('Cliente 9', 'Endereço 9', '99999999999', '999999999999999999'),
    ('Cliente 10', 'Endereço 10', '10101010101', '101010101010101010');

-- Inserção de dados na tabela PJ_Cliente
INSERT INTO PJ_Cliente (RazaoSocial, idCliente)
VALUES
    ('Empresa 1', 1),
    ('Empresa 2', 2),
    ('Empresa 3', 3),
    ('Empresa 4', 4),
    ('Empresa 5', 5),
    ('Empresa 6', 6),
    ('Empresa 7', 7),
    ('Empresa 8', 8),
    ('Empresa 9', 9),
    ('Empresa 10', 10);

-- Inserção de dados na tabela PF_Cliente
INSERT INTO PF_Cliente (NomeCompleto, idCliente)
VALUES
    ('Fulano 1', 1),
    ('Fulano 2', 2),
    ('Fulano 3', 3),
    ('Fulano 4', 4),
    ('Fulano 5', 5),
    ('Fulano 6', 6),
    ('Fulano 7', 7),
    ('Fulano 8', 8),
    ('Fulano 9', 9),
    ('Fulano 10', 10);

-- Inserção de dados na tabela Produto
INSERT INTO Produto (Categoria, Descrição, Valor)
VALUES
    ('Categoria 1', 'Produto 1', 10.99),
    ('Categoria 2', 'Produto 2', 20.99),
    ('Categoria 3', 'Produto 3', 30.99),
    ('Categoria 1', 'Produto 4', 15.99),
    ('Categoria 2', 'Produto 5', 25.99),
    ('Categoria 3', 'Produto 6', 35.99),
    ('Categoria 1', 'Produto 7', 12.99),
    ('Categoria 2', 'Produto 8', 22.99),
    ('Categoria 3', 'Produto 9', 32.99),
    ('Categoria 1', 'Produto 10', 18.99);

-- Inserção de dados na tabela Pagamento
INSERT INTO Pagamento (PagamentoCliente, Cartão, Bandeira, Número)
VALUES
    (1, '1234567812345678', 'Bandeira 1', '111'),
    (2, '2345678923456789', 'Bandeira 2', '222'),
    (3, '3456789034567890', 'Bandeira 3', '333'),
    (4, '4567890145678901', 'Bandeira 4', '444'),
    (5, '5678901256789012', 'Bandeira 5', '555'),
    (6, '6789012367890123', 'Bandeira 6', '666'),
    (7, '7890123478901234', 'Bandeira 7', '777'),
    (8, '8901234589012345', 'Bandeira 8', '888'),
    (9, '9012345690123456', 'Bandeira 9', '999'),
    (10, '0123456701234567', 'Bandeira 10', '000');

-- Inserção de dados na tabela Entrega
INSERT INTO Entrega (StatusEntrega, CodigoRastreio, DataEntrega)
VALUES
    (1, 'ABC123', '2023-01-01'),
    (1, 'DEF456', '2023-02-02'),
    (0, 'GHI789', '2023-03-03'),
    (1, 'JKL012', '2023-04-04'),
    (0, 'MNO345', '2023-05-05'),
    (1, 'PQR678', '2023-06-06'),
    (1, 'STU901', '2023-07-07'),
    (0, 'VWX234', '2023-08-08'),
    (1, 'YZA567', '2023-09-09'),
    (0, 'BCD890', '2023-10-10');

-- Inserção de dados na tabela Pedido
INSERT INTO Pedido (StatusPedido, Frete, Descrição, idEntrega)
VALUES
    (1, 10.0, 'Descrição 1', 1),
    (1, 15.0, 'Descrição 2', 2),
    (0, 20.0, 'Descrição 3', 3),
    (1, 10.0, 'Descrição 4', 4),
    (0, 15.0, 'Descrição 5', 5),
    (1, 20.0, 'Descrição 6', 6),
    (1, 10.0, 'Descrição 7', 7),
    (0, 15.0, 'Descrição 8', 8),
    (1, 20.0, 'Descrição 9', 9),
    (1, 10.0, 'Descrição 10', 10);

-- Inserção de dados na tabela Estoque
INSERT INTO Estoque (Local)
VALUES
    ('Local 1'),
    ('Local 2'),
    ('Local 3'),
    ('Local 4'),
    ('Local 5'),
    ('Local 6'),
    ('Local 7'),
    ('Local 8'),
    ('Local 9'),
    ('Local 10');

-- Inserção de dados na tabela EstoqueProduto
INSERT INTO EstoqueProduto (idProduto, idEstoque, Quantidade)
VALUES
    (1, 1, 100),
    (2, 2, 200),
    (3, 3, 300),
    (4, 4, 150),
    (5, 5, 250),
    (6, 6, 350),
    (7, 7, 120),
    (8, 8, 220),
    (9, 9, 320),
    (10, 10, 180);

-- Inserção de dados na tabela Fornecedor
INSERT INTO Fornecedor (RazaoSocial, CPF, CNPJ)
VALUES
    ('Fornecedor 1', '11111111111', '111111111111111'),
    ('Fornecedor 2', '22222222222', '222222222222222'),
    ('Fornecedor 3', '33333333333', '333333333333333'),
    ('Fornecedor 4', '44444444444', '444444444444444'),
    ('Fornecedor 5', '55555555555', '555555555555555'),
    ('Fornecedor 6', '66666666666', '666666666666666'),
    ('Fornecedor 7', '77777777777', '777777777777777'),
    ('Fornecedor 8', '88888888888', '888888888888888'),
    ('Fornecedor 9', '99999999999', '999999999999999'),
    ('Fornecedor 10', '10101010101', '101010101010101010');

-- Inserção de dados na tabela Vendedor
INSERT INTO Vendedor (Nome, idFornecedor)
VALUES
    ('Vendedor 1', 1),
    ('Vendedor 2', 2),
    ('Vendedor 3', 3),
    ('Vendedor 4', 4),
    ('Vendedor 5', 5),
    ('Vendedor 6', 6),
    ('Vendedor 7', 7),
    ('Vendedor 8', 8),
    ('Vendedor 9', 9),
    ('Vendedor 10', 10);

-- Inserção de dados na tabela FornecedorEstoque
INSERT INTO FornecedorEstoque (idFornecedor, idEstoque)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserção de dados na tabela ProdutoFornecedor
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserção de dados na tabela PedidoCliente
INSERT INTO PedidoCliente (idPedido, idCliente)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserção de dados na tabela PedidoProduto
INSERT INTO PedidoProduto (idPedido, idProduto, Quantidade)
VALUES
    (1, 1, 5),
    (2, 2, 10),
    (3, 3, 15),
    (4, 4, 3),
    (5, 5, 8),
    (6, 6, 12),
    (7, 7, 6),
    (8, 8, 9),
    (9, 9, 20),
    (10, 10, 4);
