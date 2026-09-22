SELECT IdCliente, sum(QtdePontos), COUNT(IdTransacao)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao > '2025-08-01'
GROUP BY IdCliente
--Having vai sergir para filtrar dados depois do agrupamento
HAVING sum(qtdePontos) >= 4000
ORDER BY SUM(QtdePontos) DESC
LIMIT 10