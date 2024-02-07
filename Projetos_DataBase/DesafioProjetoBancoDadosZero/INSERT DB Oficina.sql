-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (ID, Nome, Endereco, Telefone)
VALUES
  (1, 'João', 'Rua A, 123', '1111111111'),
  (2, 'Maria', 'Rua B, 456', '2222222222'),
  (3, 'Carlos', 'Rua C, 789', '3333333333'),
  (4, 'Ana', 'Rua D, 987', '4444444444'),
  (5, 'Pedro', 'Rua E, 654', '5555555555'),
  (6, 'Mariana', 'Rua F, 321', '6666666666'),
  (7, 'Lucas', 'Rua G, 654', '7777777777'),
  (8, 'Laura', 'Rua H, 987', '8888888888'),
  (9, 'Fernando', 'Rua I, 654', '9999999999'),
  (10, 'Juliana', 'Rua J, 321', '1010101010');

-- Inserção de dados na tabela Veiculo
INSERT INTO Veiculo (ID, Marca, Modelo, Ano, Placa, Cliente_ID)
VALUES
  (1, 'Ford', 'Focus', 2015, 'ABC123', 1),
  (2, 'Chevrolet', 'Onix', 2019, 'DEF456', 2),
  (3, 'Volkswagen', 'Gol', 2017, 'GHI789', 3),
  (4, 'Fiat', 'Uno', 2016, 'JKL012', 4),
  (5, 'Renault', 'Sandero', 2018, 'MNO345', 5),
  (6, 'Toyota', 'Corolla', 2020, 'PQR678', 6),
  (7, 'Honda', 'Civic', 2017, 'STU901', 7),
  (8, 'Hyundai', 'HB20', 2019, 'VWX234', 8),
  (9, 'Nissan', 'Versa', 2016, 'YZA567', 9),
  (10, 'Mitsubishi', 'Lancer', 2017, 'BCD890', 10);

-- Inserção de dados na tabela Servico
INSERT INTO Servico (ID, Descricao, Preco)
VALUES
  (1, 'Troca de óleo', 100.00),
  (2, 'Balanceamento de rodas', 50.00),
  (3, 'Alinhamento de direção', 80.00),
  (4, 'Troca de pneus', 200.00),
  (5, 'Revisão geral', 300.00),
  (6, 'Limpeza de ar-condicionado', 120.00),
  (7, 'Troca de pastilhas de freio', 150.00),
  (8, 'Troca de amortecedores', 500.00),
  (9, 'Reparo no motor', 1000.00),
  (10, 'Troca de bateria', 200.00);

-- Inserção de dados na tabela OrdemDeServico
INSERT INTO OrdemDeServico (ID, DataEntrada, DataSaida, Status, Cliente_ID)
VALUES
  (1, '2023-01-10', '2023-01-12', 'Concluída', 1),
  (2, '2023-02-15', NULL, 'Em andamento', 2),
  (3, '2023-03-20', '2023-03-22', 'Concluída', 3),
  (4, '2023-04-25', NULL, 'Em andamento', 4),
  (5, '2023-05-30', '2023-06-02', 'Concluída', 5),
  (6, '2023-06-05', NULL, 'Em andamento', 6),
  (7, '2023-07-10', NULL, 'Em andamento', 7),
  (8, '2023-08-15', '2023-08-18', 'Concluída', 8),
  (9, '2023-09-20', NULL, 'Em andamento', 9),
  (10, '2023-10-25', '2023-10-27', 'Concluída', 10);

-- Inserção de dados na tabela ItemDeServico
INSERT INTO ItemDeServico (ID, Quantidade, PrecoUnitario, OrdemDeServico_ID, Servico_ID)
VALUES
  (1, 2, 100.00, 1, 1),
  (2, 4, 50.00, 1, 2),
  (3, 1, 80.00, 2, 3),
  (4, 2, 200.00, 3, 4),
  (5, 1, 300.00, 3, 5),
  (6, 3, 120.00, 4, 6),
  (7, 2, 150.00, 5, 7),
  (8, 4, 500.00, 6, 8),
  (9, 1, 1000.00, 7, 9),
  (10, 2, 200.00, 8, 10);
