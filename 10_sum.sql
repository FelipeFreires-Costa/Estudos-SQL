SELECT
    SUM(QtdePontos),

SUM(CASE
    WHEN QtdePontos > 0 THEN QtdePontos
    END) as QtdePontosPos,

SUM (CASE
    WHEN QtdePontos < 0 THEN QtdePontos
    END) as QtdePontosNeg 

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY  QtdePontos 