--quais clientes asssinaram a lista de presença no dia 2025/08/25?
SELECT DISTINCT t1.idCliente,
COUNT(*)

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE substr(t1.DtCriacao, 1, 10) = '2025-08-25' and t3.DescNomeProduto = 'Lista de presença'

group by t1.idCliente