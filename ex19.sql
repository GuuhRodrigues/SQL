#Queremos construir um SQL cujo resultado seja, para cada cliente:

#“O cliente João da Silva faturou 120000 no ano de 2016”.

#Somente para o ano de 2016.

SELECT CONCAT('O cliente ', A.NOME, ' faturou R$', FLOOR(SUM(B.QUANTIDADE * B.PRECO)), ' no ano de ', YEAR(C.DATA_VENDA)) AS RESULTADO 
FROM tabela_de_clientes A
INNER JOIN notas_fiscais C 
ON A.CPF = C.CPF 
INNER JOIN itens_notas_fiscais B 
ON C.NUMERO = B.NUMERO
WHERE YEAR(C.DATA_VENDA) = 2016
GROUP BY A.NOME ORDER BY A.NOME;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
