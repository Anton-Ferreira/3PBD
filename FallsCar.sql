CREATE DATABASE FallsCar;
USE FallsCar;

CREATE TABLE cliente (
  id int auto_increment primary key,
  nome varchar(150),
  cpf varchar(50),
  email varchar(150),
  telefone varchar(25)
);

CREATE TABLE loja (
  id int auto_increment primary key,
  telefone varchar(25),
  endereco varchar(250),
  estado varchar(50),
  cidade varchar(50)
);

CREATE TABLE pagamento (
  id int auto_increment primary key,
  valor_pago float,
  data_pagamento datetime,
  forma_pagamento varchar(50),
  id_reserva int NOT NULL
);

CREATE TABLE veiculo (
  id int auto_increment primary key,
  modelo varchar(50),
  placa varchar(25),
  valor_diaria float,
  status varchar(50),
  id_loja int NOT NULL,
  id_categoria int
);

CREATE TABLE manutencao (
  id int auto_increment primary key,
  data_inicio datetime,
  data_fim datetime,
  descricao varchar(250),
  id_veiculo int NOT NULL
);

CREATE TABLE reserva (
  id int auto_increment primary key,
  id_cliente int NOT NULL,
  id_veiculo int NOT NULL,
  id_lojaPrevistaRetirada int NOT NULL,
  id_lojaPrevistaDevolucao int NOT NULL,
  periodo_locacao int NOT NULL,
  Data_previstaRetirada datetime,
  Data_previstaDevolucao datetime,
  motorista boolean,
  valor float
);

CREATE TABLE funcionario (
  id int auto_increment primary key,
  nome varchar(150),
  cpf varchar(20),
  cargo varchar(50),
  id_loja int NOT NULL
);

CREATE TABLE categoria_veiculo (
  id int auto_increment primary key,
  nome varchar(50),
  descricao varchar(250)
);

CREATE TABLE periodo_locacao (
  id int auto_increment primary key,
  dias int
);

ALTER TABLE `pagamento` ADD FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id`);

ALTER TABLE `veiculo` ADD FOREIGN KEY (`id_loja`) REFERENCES `loja` (`id`);

ALTER TABLE `veiculo` ADD FOREIGN KEY (`id_categoria`) REFERENCES `categoria_veiculo` (`id`);

ALTER TABLE `manutencao` ADD FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id`);

ALTER TABLE `reserva` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);

ALTER TABLE `reserva` ADD FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id`);

ALTER TABLE `reserva` ADD FOREIGN KEY (`id_lojaPrevistaRetirada`) REFERENCES `loja` (`id`);

ALTER TABLE `reserva` ADD FOREIGN KEY (`id_lojaPrevistaDevolucao`) REFERENCES `loja` (`id`);

ALTER TABLE `reserva` ADD FOREIGN KEY (`periodo_locacao`) REFERENCES `periodo_locacao` (`id`);

ALTER TABLE `funcionario` ADD FOREIGN KEY (`id_loja`) REFERENCES `loja` (`id`);

