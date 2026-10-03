--CTE: COMMON TABLE EXPRESSION

--filtro uma parcela da basa, filtro outra parcela da base e depois cruza elas com o JOIN

WITH tb_cliente_primeiro_dia AS (

  SELECT DISTINCT IdCliente
  FROM transacoes
  WHERE substr(DtCriacao,1,10) = '2025-08-25'
  ),

tb_cliente_ultimo_dia AS (
  SELECT DISTINCT idCliente
  FROM transacoes
  WHERE substr(DtCriacao, 1,10) = '2025-08-29'
  ),

tb_join AS (
  SELECT t1.idCliente as primCliente,
          t2.idCliente AS ultCliente

FROM tb_cliente_primeiro_dia AS t1

LEFT JOIN tb_cliente_ultimo_dia AS t2
ON t1.idCliente = t2.idCliente
)

  SELECT count(primCliente),
          count(ultCliente)
  from tb_join
