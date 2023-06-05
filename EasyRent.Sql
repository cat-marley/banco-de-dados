-- Tabela Propriedade
CREATE TABLE Propriedade (
  propriedade_id INT PRIMARY KEY,
  endereco VARCHAR(100),
  tipo_propriedade VARCHAR(50),
  num_quartos INT,
  num_banheiros INT
);

-- Tabela Inquilino
CREATE TABLE Inquilino (
  inquilino_id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  telefone VARCHAR(20)
);

-- Tabela ContratoAluguel
CREATE TABLE ContratoAluguel (
  contrato_id INT PRIMARY KEY,
  propriedade_id INT,
  inquilino_id INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (propriedade_id) REFERENCES Propriedade (propriedade_id),
  FOREIGN KEY (inquilino_id) REFERENCES Inquilino (inquilino_id)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
  pagamento_id INT PRIMARY KEY,
  contrato_id INT,
  valor DECIMAL(10,2),
  data_pagamento DATE,
  FOREIGN KEY (contrato_id) REFERENCES ContratoAluguel (contrato_id)
);

-- Tabela Manutencao
CREATE TABLE Manutencao (
  manutencao_id INT PRIMARY KEY,
  propriedade_id INT,
  descricao VARCHAR(200),
  status VARCHAR(50),
  FOREIGN KEY (propriedade_id) REFERENCES Propriedade (propriedade_id)
);

-- Tabela Usuario
CREATE TABLE Usuario (
  usuario_id INT PRIMARY KEY,
  nome VARCHAR(100),
  tipo_usuario VARCHAR(50)
);
