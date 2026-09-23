SELECT COUNT(IdTransacao), IdProduto FROM transacao_produto
GROUP BY IdProduto
ORDER BY COUNT(IdTransacao) DESC
LIMIT 1
;
