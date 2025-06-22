--Carros livres

SET @data_alvo = '2025-06-25';

SELECT v.id, v.modelo, v.placa, v.status
FROM veiculo v
WHERE v.status = 'Disponível'
AND v.id NOT IN (
    -- Veículos que estão reservados no dia
    SELECT r.id_veiculo
    FROM reserva r
    WHERE @data_alvo BETWEEN DATE(r.data_previstaRetirada) AND DATE(r.data_previstaDevolucao)
)
AND v.id NOT IN (
    -- Veículos em manutenção no dia
    SELECT m.id_veiculo
    FROM manutencao m
    WHERE @data_alvo BETWEEN m.data_inicio AND m.data_fim
);


--Carros reservados

SET @data_alvo = '2025-06-25';

SELECT v.id, v.modelo, v.placa, r.data_previstaRetirada, r.data_previstaDevolucao
FROM veiculo v
INNER JOIN reserva r ON v.id = r.id_veiculo
WHERE @data_alvo BETWEEN DATE(r.data_previstaRetirada) AND DATE(r.data_previstaDevolucao);
