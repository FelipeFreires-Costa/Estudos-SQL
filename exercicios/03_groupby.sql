SELECT IdCliente,COUNT(*),  COUNT(DISTINCT IdTransacao), DtCriacao  FROM transacoes
WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'
GROUP BY idCliente
ORDER BY COUNT(DISTINCT IdTransacao) DESC
limit 1
;