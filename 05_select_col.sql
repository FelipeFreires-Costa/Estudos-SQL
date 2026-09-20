SELECT IdCliente,
strftime('%w', datetime(substr(DtCriacao,1, 19))) as diaSemana
from clientes;