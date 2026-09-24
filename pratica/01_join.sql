SELECT COUNT(distinct t1.IdTransacao), t2.DescCategoriaProduto
FROM transacao_produto  AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

GROUP BY t2.DescCategoriaProduto
ORDER BY COUNT(distinct t1.IdTransacao) DESC