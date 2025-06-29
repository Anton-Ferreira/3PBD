SELECT *
FROM veiculo v
WHERE v.status = 'Disponível' and v.id NOT IN (
    SELECT r.id_veiculo
    FROM reserva r
    WHERE DATE('2025-07-10') BETWEEN DATE(r.Data_previstaRetirada) AND DATE(r.Data_previstaDevolucao)
)
AND v.id NOT IN (
    SELECT m.id_veiculo
    FROM manutencao m
    WHERE '2025-07-10' BETWEEN DATE(m.data_inicio) AND DATE(m.data_fim)
);

SELECT 
    v.id,
    v.modelo,
    v.placa,
    r.data_previstaRetirada,
    r.data_previstaDevolucao
FROM veiculo v
INNER JOIN reserva r ON v.id = r.id_veiculo
WHERE '2025-07-10' BETWEEN DATE(r.data_previstaRetirada) AND DATE(r.data_previstaDevolucao);
