SELECT COUNT(DISTINCT idCliente)

FROM transacoes
WHERE DtCriacao >= '2025-07-01' and DtCriacao < '2025-08-01';