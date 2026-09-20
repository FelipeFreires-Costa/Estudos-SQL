SELECT IdCliente, QtdePontos,

CASE
  WHEN QtdePontos BETWEEN 0 and 500 THEN 'Ponei'
  WHEN QtdePontos BETWEEN 501 and 1000 THEN 'Ponei Premium'
  WHEN QtdePontos BETWEEN 1001 and 5000 THEN 'Mago aprendiz'
  WHEN QtdePontos BETWEEN 5001 and 10000 THEN 'Mago mestre '
  ELSE 'mago supremo'
END as categoriaDePontos

FROM clientes

ORDER BY qtdePontos DESC;