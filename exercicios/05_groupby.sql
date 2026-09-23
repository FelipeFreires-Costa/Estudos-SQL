SELECT SUM(QtdePontos), COUNT(DISTINCT substr(DtCriacao, 1,10)) as qtDiasUnicos,
SUM(QtdePontos) / COUNT(DISTINCT substr(DtCriacao, 1,10)) as mediaPontosDia
FROM transacoes
WHERE QtdePontos > 0;        