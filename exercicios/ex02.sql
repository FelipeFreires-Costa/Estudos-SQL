select IdTransacao, DtCriacao,
strftime('%w', datetime(substr(DtCriacao,1, 19))) as data
from transacoes
where strftime('%w', datetime(substr(DtCriacao,1, 19))) in ('6','0')
order by data ASC