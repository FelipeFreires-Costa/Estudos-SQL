--Cliente mais antigos, tem mais frequencia de transaçao?
SELECT t1.idCliente,
CAST(julianday('now') - julianday(substr(t1.DtCriacao,1, 19)) AS INT) as IdadeBase,
COUNT(t2.IdTransacao)

FROM clientes as t1

LEFT JOIN transacoes as t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente, IdadeBase