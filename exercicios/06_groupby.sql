SELECT
strftime('%w', substr(DtCriacao,1,10)) as diaSemana,
COUNT(DISTINCT IdTransacao) as qtdePontos
FROM transacoes
WHERE substr(DtCriacao,1,4) = '2025'
GROUP BY 1
order by qtdePontos DESC
;