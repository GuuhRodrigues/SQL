#Queremos obter as 10 primeiras vendas do dia 01/01/2017. Qual seria o comando SQL para obter este resultado?
SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 0,10;