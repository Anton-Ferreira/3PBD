SELECT * FROM cliente WHERE id = 1;

SELECT * FROM loja WHERE id = 1;

SELECT * FROM veiculo WHERE id = 1;

SELECT * FROM categoria_veiculo WHERE id = 1;

SELECT * FROM funcionario WHERE id = 1;

SELECT * FROM pagamento WHERE id = 1;

SELECT * FROM periodo_locacao WHERE id = 1;

SELECT  
v.modelo,
m.data_inicio,
m.data_fim,
m.descricao
FROM manutencao m
inner join veiculo v on m.id_veiculo = v.id
WHERE m.id = 1;

SELECT  
c.nome,
v.modelo,
r.id_lojaPrevistaRetirada,
r.id_lojaPrevistaDevolucao,
p.dias,
r.Data_previstaRetirada,
r.Data_previstaDevolucao,
r.motorista,
r.valor
FROM reserva r
inner join cliente c on r.id_cliente = c.id
inner join veiculo v on r.id_veiculo = v.id
inner join periodo_locacao p on r.periodo_locacao = p.id
WHERE r.id=1;