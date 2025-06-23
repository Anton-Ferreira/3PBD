SELECT v.id,
v.modelo,
v.placa,
v.valor_diaria
FROM veiculo v
WHERE 
  v.id NOT IN (
    SELECT r.id_veiculo
    FROM reserva r
    WHERE DATE('2025-07-06') BETWEEN DATE(r.data_previstaRetirada) AND DATE(r.data_previstaDevolucao)
  )
  
  AND v.id NOT IN (
    SELECT m.id_veiculo
    FROM manutencao m
    WHERE DATE('2025-07-06') BETWEEN DATE(m.data_inicio) AND DATE(m.data_fim)
  );



 SELECT 
    v.id,
    v.modelo,
    v.placa,
    r.data_previstaRetirada,
    r.data_previstaDevolucao
FROM 
    veiculo v
JOIN 
    reserva r ON v.id = r.id_veiculo
WHERE 
    '2025-07-01' BETWEEN DATE(r.data_previstaRetirada) AND DATE(r.data_previstaDevolucao);



SELECT 
    v.id,
    v.modelo,
    v.placa,
    v.valor_diaria,
    r.data_previstaRetirada,
    r.data_previstaDevolucao
FROM 
    veiculo v
INNER JOIN 
    reserva r ON v.id = r.id_veiculo;

