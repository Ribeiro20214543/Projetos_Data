-- Criação do banco de dados "oficina"
CREATE DATABASE oficina;

-- Utilização do banco de dados "oficina"
USE oficina;

-- Tabela Cliente: armazena informações dos clientes da oficina
CREATE TABLE Cliente (
  ID INT PRIMARY KEY, -- Identificador único do cliente
  Nome VARCHAR(100), -- Nome do cliente
  Endereco VARCHAR(200), -- Endereço do cliente
  Telefone VARCHAR(20) -- Número de telefone do cliente
);

-- Tabela Veiculo: armazena informações dos veículos dos clientes
CREATE TABLE Veiculo (
  ID INT PRIMARY KEY, -- Identificador único do veículo
  Marca VARCHAR(50), -- Marca do veículo
  Modelo VARCHAR(50), -- Modelo do veículo
  Ano INT, -- Ano de fabricação do veículo
  Placa VARCHAR(20), -- Placa do veículo
  Cliente_ID INT, -- Chave estrangeira para relacionar o veículo ao cliente correspondente
  FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID) -- Restrição de chave estrangeira para garantir a integridade referencial
);

-- Tabela Servico: armazena informações dos serviços oferecidos pela oficina
CREATE TABLE Servico (
  ID INT PRIMARY KEY, -- Identificador único do serviço
  Descricao VARCHAR(200), -- Descrição do serviço
  Preco DECIMAL(10, 2) -- Preço do serviço
);

-- Tabela OrdemDeServico: armazena informações das ordens de serviço
CREATE TABLE OrdemDeServico (
  ID INT PRIMARY KEY, -- Identificador único da ordem de serviço
  DataEntrada DATE, -- Data de entrada da ordem de serviço
  DataSaida DATE, -- Data de saída da ordem de serviço
  Status VARCHAR(50), -- Status da ordem de serviço (em andamento, concluída, etc.)
  Cliente_ID INT, -- Chave estrangeira para relacionar a ordem de serviço ao cliente correspondente
  FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID) -- Restrição de chave estrangeira para garantir a integridade referencial
);

-- Tabela ItemDeServico: armazena informações dos itens de serviço solicitados em uma ordem de serviço
CREATE TABLE ItemDeServico (
  ID INT PRIMARY KEY, -- Identificador único do item de serviço
  Quantidade INT, -- Quantidade do item de serviço
  PrecoUnitario DECIMAL(10, 2), -- Preço unitário do item de serviço
  OrdemDeServico_ID INT, -- Chave estrangeira para relacionar o item de serviço à ordem de serviço correspondente
  Servico_ID INT, -- Chave estrangeira para relacionar o item de serviço ao serviço correspondente
  FOREIGN KEY (OrdemDeServico_ID) REFERENCES OrdemDeServico(ID), -- Restrição de chave estrangeira para garantir a integridade referencial
  FOREIGN KEY (Servico_ID) REFERENCES Servico(ID) -- Restrição de chave estrangeira para garantir a integridade referencial
);
