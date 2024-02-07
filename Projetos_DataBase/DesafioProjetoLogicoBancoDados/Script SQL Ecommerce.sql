CREATE DATABASE Ecommerce;
USE Ecommerce;

-- CLIENTE
CREATE TABLE Cliente(
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45),
    Endereço VARCHAR(45),
    CPF CHAR(11),
    CNPJ VARCHAR(18),
    CONSTRAINT unique_cpf_cliente UNIQUE (CPF),
    CONSTRAINT unique_cnpj_cliente UNIQUE (CNPJ)
);

DESC Cliente;

-- PJ_CLIENTE
CREATE TABLE PJ_Cliente(
    idPJ INT AUTO_INCREMENT PRIMARY KEY,
    RazaoSocial VARCHAR(45),
    idCliente INT,
    CONSTRAINT fk_pj_cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

DESC PJ_Cliente;

-- PF_CLIENTE
CREATE TABLE PF_Cliente(
    idPF INT AUTO_INCREMENT PRIMARY KEY,
    NomeCompleto VARCHAR(45),
    idCliente INT,
    CONSTRAINT fk_pf_cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

DESC PF_Cliente;

-- PRODUTO
CREATE TABLE Produto(
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    Categoria VARCHAR(45),
    Descrição VARCHAR(45),
    Valor FLOAT
);

DESC Produto;

-- PAGAMENTO
CREATE TABLE Pagamento(
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    PagamentoCliente INT,
    Cartão VARCHAR(45),
    Bandeira VARCHAR(45),
    Número VARCHAR(45),
    CONSTRAINT fk_pagamento_cliente FOREIGN KEY (PagamentoCliente) REFERENCES Cliente(idCliente)
);

DESC Pagamento;

-- ENTREGA
CREATE TABLE Entrega(
    idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    StatusEntrega BOOL,
    CodigoRastreio VARCHAR(45),
    DataEntrega DATE
);

DESC Entrega;

-- PEDIDO
CREATE TABLE Pedido(
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    StatusPedido BOOL DEFAULT FALSE,
    Frete FLOAT,
    Descrição VARCHAR(45),
    idEntrega INT,
    CONSTRAINT fk_entrega FOREIGN KEY (idEntrega) REFERENCES Entrega(idEntrega)
);

DESC Pedido;

-- ESTOQUE
CREATE TABLE Estoque(
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    Local VARCHAR(45)
);

DESC Estoque;

-- PRODUTOS EM ESTOQUE
CREATE TABLE EstoqueProduto(
    idProduto INT,
    idEstoque INT,
    Quantidade FLOAT,
    CONSTRAINT fk_estoque_produto_produto FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    CONSTRAINT fk_estoque_produto_estoque FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque),
    PRIMARY KEY (idProduto, idEstoque)
);

DESC EstoqueProduto;

-- FORNECEDOR
CREATE TABLE Fornecedor(
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    RazaoSocial VARCHAR(45),
    CPF CHAR(11),
    CNPJ VARCHAR(18),
    CONSTRAINT unique_cpf_fornecedor UNIQUE (CPF),
    CONSTRAINT unique_cnpj_fornecedor UNIQUE (CNPJ)
);

DESC Fornecedor;

-- VENDEDOR
CREATE TABLE Vendedor(
    idVendedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45),
    idFornecedor INT,
    CONSTRAINT fk_vendedor_fornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

DESC Vendedor;

-- RELAÇÃO FORNECEDOR E ESTOQUE
CREATE TABLE FornecedorEstoque(
    idFornecedor INT,
    idEstoque INT,
    CONSTRAINT fk_fornecedor_estoque_fornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor),
    CONSTRAINT fk_fornecedor_estoque_estoque FOREIGN KEY (idEstoque) REFERENCES Estoque(idEstoque),
    PRIMARY KEY (idFornecedor, idEstoque)
);

DESC FornecedorEstoque;

-- RELAÇÃO PRODUTO E FORNECEDOR
CREATE TABLE ProdutoFornecedor(
    idProduto INT,
    idFornecedor INT,
    CONSTRAINT fk_produto_fornecedor_produto FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    CONSTRAINT fk_produto_fornecedor_fornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor),
    PRIMARY KEY (idProduto, idFornecedor)
);

DESC ProdutoFornecedor;

-- RELAÇÃO PEDIDO E CLIENTE
CREATE TABLE PedidoCliente(
    idPedido INT,
    idCliente INT,
    CONSTRAINT fk_pedido_cliente_pedido FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    CONSTRAINT fk_pedido_cliente_cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    PRIMARY KEY (idPedido, idCliente)
);

DESC PedidoCliente;

-- RELAÇÃO PEDIDO E PRODUTO
CREATE TABLE PedidoProduto(
    idPedido INT,
    idProduto INT,
    Quantidade FLOAT,
    CONSTRAINT fk_pedido_produto_pedido FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    CONSTRAINT fk_pedido_produto_produto FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    PRIMARY KEY (idPedido, idProduto)
);

DESC PedidoProduto;

