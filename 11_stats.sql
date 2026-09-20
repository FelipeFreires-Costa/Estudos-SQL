SELECT round(avg(QtdePontos),2),
min(QtdePontos) as minCarteira,
max(QtdePontos) as maxCarteira,
sum(flTwitch)
FROM clientes;
