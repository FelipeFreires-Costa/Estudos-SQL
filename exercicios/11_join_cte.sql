-- quem começou a assistir o curso no primeiro dia em media assistiu quantas aulas?
WITH tb_prim_dia as (

  SELECT DISTINCT IdCliente
  FROM transacoes
  WHERE substr(dtCriacao,1,10) = '2025-08-25'

  ),

  tb_dias_curso AS (
    SELECT DISTINCT IdCliente, substr(dtCriacao,1,10) AS presenteDia
    FROM transacoes 
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    ORDER BY idCliente, presenteDia
  )

SELECT t1.idCliente, count(DISTICT t2.presenteDia FROM tb_prim_dia as t1

LEFT JOIN tb_dias_curso as t2
ON t1.idCliente = t2.idCliente
