
SELECT * FROM cliente;

SELECT * FROM loja;

SELECT * FROM veiculo;


SELECT * FROM cliente WHERE id = 1;

SELECT * FROM loja WHERE id = 1;

SELECT * FROM veiculo WHERE id = 1;

SELECT 
  r.id AS id_reserva,                         
  c.nome AS nome_cliente,                     
  v.modelo,
  r.data_previstaRetirada,                    
  r.data_previstaDevolucao,                   
  r.motorista                                 
FROM reserva r
JOIN cliente c ON r.id_cliente = c.id         
JOIN veiculo v ON v.modelo = v.modelo;

SELECT 
  l.id AS id_locacao,                         
  c.nome AS nome_cliente,                     
  v.modelo,
  l.data_retirada,                            
  l.data_devolucao,                           
  l.valor                                     
FROM locacao l
JOIN reserva r ON l.id_reserva = r.id         
JOIN cliente c ON r.id_cliente = c.id         
JOIN veiculo v on r.id_veiculo = v.id;

SELECT 
  p.id AS id_pagamento,                        
  c.nome AS nome_cliente,                      
  p.valor_pago,                                
  p.data_pagamento,                            
  p.forma_pagamento                            
FROM pagamento p
JOIN locacao l ON p.id_locacao = l.id          
JOIN reserva r ON l.id_reserva = r.id          
JOIN cliente c ON r.id_cliente = c.id;         
