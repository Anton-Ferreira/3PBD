SELECT * 
FROM cliente;

SELECT * 
FROM loja;

SELECT * 
FROM veiculo;

SELECT * 
FROM categoria_veiculo;

SELECT * 
FROM funcionario;

SELECT * 
FROM pagamento;

SELECT * 
FROM periodo_locacao;

SELECT  
v.modelo,
m.data_inicio,
m.data_fim,
m.descricao
FROM manutencao m
inner join veiculo v on m.id_veiculo = v.id;

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
inner join periodo_locacao p on r.periodo_locacao = p.id;