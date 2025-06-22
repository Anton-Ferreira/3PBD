CREATE DATABASE locadora_fallscar;
USE locadora_fallscar;

CREATE TABLE cliente (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  cpf VARCHAR(50),
  email VARCHAR(150),
  telefone VARCHAR(25)
);

CREATE TABLE loja (
  id INT AUTO_INCREMENT PRIMARY KEY,
  telefone VARCHAR(25),
  endereco VARCHAR(250),
  estado VARCHAR(50),
  cidade VARCHAR(50)
);

CREATE TABLE categoria_veiculo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(250)
);

CREATE TABLE veiculo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  modelo VARCHAR(50),
  placa VARCHAR(25),
  valor_diaria FLOAT,
  status VARCHAR(50),
  id_loja INT,
  id_categoria INT,
  FOREIGN KEY (id_loja) REFERENCES loja(id),
  FOREIGN KEY (id_categoria) REFERENCES categoria_veiculo(id)
);

CREATE TABLE manutencao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_inicio DATE,
  data_fim DATE,
  descricao VARCHAR(250),
  id_veiculo INT,
  FOREIGN KEY (id_veiculo) REFERENCES veiculo(id)
);

CREATE TABLE motorista (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  telefone VARCHAR(20),
  email VARCHAR(100),
  cpf VARCHAR(20)
);

CREATE TABLE periodo_locacao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  dias INT
);

CREATE TABLE reserva (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_veiculo INT,
  id_lojaPrevistaRetirada INT,
  id_lojaPrevistaDevolucao INT,
  id_periodo_locacao INT,
  data_previstaRetirada TIMESTAMP NULL,
  data_previstaDevolucao TIMESTAMP NULL,
  motorista TINYINT(1),
  FOREIGN KEY (id_cliente) REFERENCES cliente(id),
  FOREIGN KEY (id_veiculo) REFERENCES veiculo(id),
  FOREIGN KEY (id_lojaPrevistaRetirada) REFERENCES loja(id),
  FOREIGN KEY (id_lojaPrevistaDevolucao) REFERENCES loja(id),
  FOREIGN KEY (id_periodo_locacao) REFERENCES periodo_locacao(id)
);

CREATE TABLE locacao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_reserva INT,
  id_lojaRetirada INT,
  id_lojaDevolucao INT,
  data_retirada TIMESTAMP NULL,
  data_devolucao TIMESTAMP NULL,
  valor FLOAT,
  id_motorista INT,
  FOREIGN KEY (id_reserva) REFERENCES reserva(id),
  FOREIGN KEY (id_lojaRetirada) REFERENCES loja(id),
  FOREIGN KEY (id_lojaDevolucao) REFERENCES loja(id),
  FOREIGN KEY (id_motorista) REFERENCES motorista(id)
);

CREATE TABLE pagamento (
  id INT AUTO_INCREMENT PRIMARY KEY,
  valor_pago FLOAT,
  data_pagamento TIMESTAMP NULL,
  forma_pagamento VARCHAR(50),
  id_locacao INT,
  FOREIGN KEY (id_locacao) REFERENCES locacao(id)
);

CREATE TABLE funcionario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150),
  cpf VARCHAR(20),
  cargo VARCHAR(50),
  id_loja INT,
  FOREIGN KEY (id_loja) REFERENCES loja(id)
);
