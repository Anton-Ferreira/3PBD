UPDATE cliente
SET 
  nome = 'João Silva Júnior',
  email = 'joao.junior@gmail.com',
  telefone = '(11) 99999-0000'
WHERE id = 1;

UPDATE loja SET cidade = 'Campinas' WHERE id = 1;

UPDATE categoria_veiculo SET descricao = 'Veículos com ótimo custo-benefício' WHERE id = 1;
UPDATE categoria_veiculo SET nome = 'SUV Premium' WHERE id = 2;

UPDATE veiculo SET valor_diaria = 450.0 WHERE id = 3;

UPDATE manutencao SET descricao = 'Troca de óleo, filtro e limpeza' WHERE id = 1;

UPDATE motorista SET telefone = '(11) 98888-8888' WHERE id = 1;

UPDATE periodo_locacao SET dias = 7 WHERE id = 1;

UPDATE reserva SET motorista = 0 WHERE id = 1;

UPDATE locacao SET valor = 380.0 WHERE id = 1;

UPDATE pagamento SET valor_pago = 1300.0 WHERE id = 2;

UPDATE funcionario SET nome = 'Mariana Silva Ferreira' WHERE id = 2;
