INSERT INTO cliente (nome, cpf, email, telefone) VALUES
('João Silva', '123.456.789-00', 'joao.silva@gmail.com', '(11) 91234-5678'),
('Maria Oliveira', '987.654.321-00', 'maria.oliveira@yahoo.com', '(21) 99876-5432'),
('Carlos Souza', '456.789.123-00', 'carlos.souza@hotmail.com', '(31) 98765-4321'),
('Ana Santos', '789.123.456-00', 'ana.santos@gmail.com', '(41) 91234-8765');

INSERT INTO loja (telefone, endereco, estado, cidade) VALUES
('(11) 3000-0001', 'Avenida Paulista, 1000', 'SP', 'São Paulo'),
('(21) 3000-0002', 'Rua das Laranjeiras, 500', 'RJ', 'Rio de Janeiro'),
('(31) 3000-0003', 'Avenida Afonso Pena, 700', 'MG', 'Belo Horizonte'),
('(41) 3000-0004', 'Rua XV de Novembro, 200', 'PR', 'Curitiba');

INSERT INTO categoria_veiculo (nome, descricao) VALUES
('Econômico', 'Veículos de baixo custo e consumo'),
('SUV', 'Veículos utilitários esportivos'),
('Luxo', 'Veículos de alto padrão e conforto'),
('Pick-up', 'Veículos para transporte de carga');

INSERT INTO veiculo (modelo, placa, valor_diaria, status, id_loja, id_categoria) VALUES
('Fiat Uno', 'ABC-1234', 120.0, 'Disponível', 1, 1),
('Hyundai Creta', 'DEF-5678', 250.0, 'Em manutenção', 2, 2),
('BMW X1', 'GHI-9012', 400.0, 'Alugado', 3, 3),
('Toyota Hilux', 'JKL-3456', 300.0, 'Disponível', 4, 4);


INSERT INTO manutencao (data_inicio, data_fim, descricao, id_veiculo) VALUES
('2025-06-01', '2025-06-05', 'Troca de óleo e revisão', 2),
('2025-06-10', '2025-06-12', 'Troca de pneus', 3),
('2025-06-15', '2025-06-18', 'Reparo no motor', 2),
('2025-06-20', '2025-06-22', 'Alinhamento e balanceamento', 1);

INSERT INTO motorista (nome, telefone, email, cpf) VALUES
('Pedro Almeida', '(11) 91111-1111', 'pedro.almeida@gmail.com', '111.222.333-44'),
('Fernanda Costa', '(21) 92222-2222', 'fernanda.costa@yahoo.com', '555.666.777-88'),
('Roberto Lima', '(31) 93333-3333', 'roberto.lima@hotmail.com', '999.888.777-66'),
('Juliana Rocha', '(41) 94444-4444', 'juliana.rocha@gmail.com', '444.555.666-77');

INSERT INTO periodo_locacao (dias) VALUES
(7),
(15),
(30);

INSERT INTO reserva (id_cliente, id_veiculo, id_lojaPrevistaRetirada, id_lojaPrevistaDevolucao, id_periodo_locacao, data_previstaRetirada, data_previstaDevolucao, motorista) VALUES
(1, 1, 1, 2, 1, '2025-07-01 09:00:00', '2025-07-04 09:00:00', 1),
(2, 3, 2, 3, 2, '2025-07-05 10:00:00', '2025-07-10 10:00:00', 0),
(3, 4, 4, 1, 3, '2025-07-08 08:30:00', '2025-07-15 08:30:00', 1),
(4, 2, 3, 4, 2, '2025-07-12 15:00:00', '2025-07-22 15:00:00', 0);

INSERT INTO locacao (id_reserva, id_lojaRetirada, id_lojaDevolucao, data_retirada, data_devolucao, valor, id_motorista) VALUES
(1, 1, 2, '2025-07-01 09:30:00', '2025-07-04 09:45:00', 360.0, 1),
(2, 2, 3, '2025-07-05 10:15:00', '2025-07-10 10:20:00', 1250.0, NULL),
(3, 4, 1, '2025-07-08 09:00:00', '2025-07-15 09:05:00', 2100.0, 3),
(4, 3, 4, '2025-07-12 15:30:00', '2025-07-22 15:35:00', 3000.0, NULL);

INSERT INTO pagamento (valor_pago, data_pagamento, forma_pagamento, id_locacao) VALUES
(360.0, '2025-07-04 10:00:00', 'Cartão de Crédito', 1),
(1250.0, '2025-07-10 11:00:00', 'Dinheiro', 2),
(2100.0, '2025-07-15 11:30:00', 'Pix', 3),
(3000.0, '2025-07-22 16:00:00', 'Boleto', 4);

INSERT INTO funcionario (nome, cpf, cargo, id_loja) VALUES
('Lucas Martins', '321.654.987-00', 'Gerente', 1),
('Mariana Ferreira', '654.321.987-00', 'Atendente', 2),
('Gustavo Ramos', '789.456.123-00', 'Vendedor', 3),
('Patrícia Gomes', '147.258.369-00', 'Mecânico', 4);

