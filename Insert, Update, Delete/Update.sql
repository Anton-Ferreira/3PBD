UPDATE cliente SET telefone = '(11) 90000-1234' WHERE id = 1;
UPDATE cliente SET email = 'novo.email@maria.com' WHERE id = 2;

UPDATE loja SET cidade = 'Campinas' WHERE id = 1;
UPDATE loja SET telefone = '(21) 95555-5555' WHERE id = 2;

UPDATE categoria_veiculo SET descricao = 'Veículos com ótimo custo-benefício' WHERE id = 1;
UPDATE categoria_veiculo SET nome = 'SUV Premium' WHERE id = 2;

UPDATE veiculo SET status = 'Reservado' WHERE id = 1;
UPDATE veiculo SET valor_diaria = 450.0 WHERE id = 3;

UPDATE manutencao SET descricao = 'Troca de óleo, filtro e limpeza' WHERE id = 1;
UPDATE manutencao SET data_fim = '2025-06-19' WHERE id = 3;

UPDATE motorista SET telefone = '(11) 98888-8888' WHERE id = 1;
UPDATE motorista SET email = 'novo.email.roberto@gmail.com' WHERE id = 3;

UPDATE periodo_locacao SET dias = 4 WHERE id = 1;
UPDATE periodo_locacao SET dias = 8 WHERE id = 3;

UPDATE reserva SET motorista = 0 WHERE id = 1;
UPDATE reserva SET data_previstaDevolucao = '2025-07-05 10:00:00' WHERE id = 2;

UPDATE locacao SET valor = 380.0 WHERE id = 1;
UPDATE locacao SET id_motorista = 2 WHERE id = 2;

UPDATE pagamento SET forma_pagamento = 'Cartão de Débito' WHERE id = 1;
UPDATE pagamento SET valor_pago = 1300.0 WHERE id = 2;

UPDATE funcionario SET cargo = 'Supervisor' WHERE id = 1;
UPDATE funcionario SET nome = 'Mariana Silva Ferreira' WHERE id = 2;
