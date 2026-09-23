SELECT
IdProduto,
SUM(vlProduto) as totalValor
FROM transacao_produto
GROUP BY IdProduto
ORDER BY totalValor DESC;