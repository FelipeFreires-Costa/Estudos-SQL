SELECT IdTransacao, QtdePontos,
CASE
    WHEN qtdePontos < 10 THEN 'baixo'
    WHEN QtdePontos <= 500 THEN 'médio'
    WHEN QtdePontos >= 500 THEN 'alto'
END as categoria
FROM transacoes;