INSERT INTO cliente (nome, cpf, email, telefone) VALUES
('João Silva', '111.111.111-11', 'joao.silva@gmail.com', '(11)99999-1111'),
('Maria Souza', '222.222.222-22', 'maria.souza@gmail.com', '(21)98888-2222'),
('Carlos Oliveira', '333.333.333-33', 'carlos.oliveira@gmail.com', '(31)97777-3333'),
('Ana Costa', '444.444.444-44', 'ana.costa@gmail.com', '(41)96666-4444');

INSERT INTO loja (telefone, endereco, estado, cidade) VALUES
('(11)1234-5678', 'Av. Paulista, 1000', 'SP', 'São Paulo'),
('(21)2345-6789', 'Rua das Laranjeiras, 500', 'RJ', 'Rio de Janeiro'),
('(31)3456-7890', 'Av. Afonso Pena, 1200', 'MG', 'Belo Horizonte'),
('(41)4567-8901', 'Rua XV de Novembro, 800', 'PR', 'Curitiba');

INSERT INTO categoria_veiculo (nome, descricao) VALUES
('Econômico', 'Veículos de baixo consumo'),
('SUV', 'Utilitário esportivo'),
('Luxo', 'Carros de alto padrão'),
('Utilitário', 'Veículos de carga e transporte');

INSERT INTO periodo_locacao (dias) VALUES
(7),
(15),
(30);

INSERT INTO veiculo (modelo, placa, valor_diaria, status, id_loja, id_categoria) VALUES
('Fiat Uno', 'ABC-1234', 100.0, 'Disponível', 1, 1),
('Honda HR-V', 'DEF-5678', 200.0, 'Disponível', 2, 2),
('BMW Série 3', 'GHI-9012', 250.0, 'Disponível', 3, 3),
('Fiorino', 'JKL-3456', 150.0, 'Disponível', 4, 4);

INSERT INTO funcionario (nome, cpf, cargo, id_loja) VALUES
('Lucas Almeida', '555.555.555-55', 'Atendente', 1),
('Fernanda Lima', '666.666.666-66', 'Gerente', 2),
('Paulo Rocha', '777.777.777-77', 'Mecânico', 3),
('Juliana Reis', '888.888.888-88', 'Vendedor', 4);

INSERT INTO reserva (id_cliente, id_veiculo, id_lojaPrevistaRetirada, id_lojaPrevistaDevolucao, periodo_locacao, Data_previstaRetirada, Data_previstaDevolucao, motorista, valor) VALUES
(1, 1, 1, 2, 1, '2025-07-01 10:00:00', '2025-07-07 10:00:00', true, 700.0),
(2, 2, 2, 3, 2, '2025-07-03 09:00:00', '2025-07-17 09:00:00', false, 3000.0),
(3, 3, 3, 4, 3, '2025-07-05 08:00:00', '2025-08-03 08:00:00', true, 7500.0),
(4, 4, 4, 1, 2, '2025-07-10 07:00:00', '2025-07-24 07:00:00', false, 2250.0);

INSERT INTO pagamento (valor_pago, data_pagamento, forma_pagamento, id_reserva) VALUES
(700.0, '2025-07-01 10:00:00', 'Cartão de Crédito', 1),
(3000.0, '2025-07-03 09:00:00', 'Cartão de Crédito', 2),
(7500.0, '2025-07-05 08:00:00', 'Cartão de Crédito', 3),
(2250.0, '2025-07-10 07:00:00', 'Cartão de Crédito', 4);

INSERT INTO manutencao (data_inicio, data_fim, descricao, id_veiculo) VALUES
('2025-05-01 08:00:00', '2025-06-02 18:00:00', 'Troca de óleo', 1),
('2025-06-27 09:00:00', '2025-06-30 17:00:00', 'Revisão geral', 2),
('2025-05-05 10:00:00', '2025-06-06 16:00:00', 'Troca de pneus', 3),
('2025-05-07 11:00:00', '2025-06-08 15:00:00', 'Alinhamento e balanceamento', 4);
