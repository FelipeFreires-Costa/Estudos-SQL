--quais clientes mais perderam pontos por LOVERS
SELECT  t1.idCliente,
        SUM(t1.QtdePontos) as totalPontos

FROM transacoes as t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
on t2.IdProduto = t3.IdProduto

WHERE t3.DescCategoriaProduto = 'lovers' AND t1.QtdePontos < 0

GROUP BY t1.idCliente

ORDER BY SUM(t1.QtdePontos) ASC

LIMIT 5