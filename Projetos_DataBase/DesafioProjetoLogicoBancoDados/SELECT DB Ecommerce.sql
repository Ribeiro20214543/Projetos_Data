USE Ecommerce;

-- Quantos pedidos foram feitos por cada cliente?
SELECT C.idCliente, C.Nome, COUNT(PC.idPedido) AS TotalPedidos
FROM Cliente C
LEFT JOIN PedidoCliente PC ON C.idCliente = PC.idCliente
GROUP BY C.idCliente, C.Nome;

-- Algum vendedor também é fornecedor?
SELECT V.Nome AS NomeVendedor, F.RazaoSocial AS RazaoSocialFornecedor
FROM Vendedor V
INNER JOIN Fornecedor F ON V.idFornecedor = F.idFornecedor;

-- Relação de produtos, fornecedores e estoques
SELECT P.idProduto, P.Descrição AS DescricaoProduto, F.RazaoSocial AS RazaoSocialFornecedor, E.Local AS LocalEstoque
FROM Produto P
INNER JOIN ProdutoFornecedor PF ON P.idProduto = PF.idProduto
INNER JOIN Fornecedor F ON PF.idFornecedor = F.idFornecedor
INNER JOIN FornecedorEstoque FE ON F.idFornecedor = FE.idFornecedor
INNER JOIN Estoque E ON FE.idEstoque = E.idEstoque;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT F.RazaoSocial AS RazaoSocialFornecedor, P.Descrição AS DescricaoProduto
FROM Fornecedor F
INNER JOIN ProdutoFornecedor PF ON F.idFornecedor = PF.idFornecedor
INNER JOIN Produto P ON PF.idProduto = P.idProduto;
