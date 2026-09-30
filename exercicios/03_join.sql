--Do inicioi ao fim do cuso, (2025/08/25 a 2025/08/29), quantos clientes assinaram a lista de presença?
SELECT
COUNT(DISTINCT t1.IdCliente)
FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.idTransacao

LEFT JOIN produtos as t3
ON t2.idProduto = t2.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença'
AND substr(t1.DtCriacao, 1, 10) >= '2025-08-25'
AND substr(t1.DtCriacao, 1, 10) <= '2025-08-29'

