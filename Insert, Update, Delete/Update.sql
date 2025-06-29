UPDATE cliente
SET telefone = '(11)98888-0000'
WHERE id = 1;

UPDATE loja
SET cidade = 'São Bernardo do Campo'
WHERE id = 1;

UPDATE pagamento
SET valor_pago = 720
WHERE id = 1;

UPDATE veiculo
SET status = 'Em manutenção'
WHERE id = 2;

UPDATE manutencao
SET descricao = 'Troca de freios'
WHERE id = 1;

UPDATE reserva
SET id_lojaPrevistaRetirada = 2
WHERE id = 1;

UPDATE categoria_veiculo
SET descricao = 'Veículos com excelente custo-benefício'
WHERE id = 1;

UPDATE periodo_locacao
SET dias = 25
WHERE id = 1;

UPDATE funcionario
SET cargo = 'Supervisor'
WHERE id = 1;