SELECT idCliente, SUM(QtdePontos) as totalPontos FROM transacoes
WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND qtdePontos > 0
GROUP BY IdCliente
ORDER BY totalPontos DESC
limit 1
;