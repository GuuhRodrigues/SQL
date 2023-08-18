# Qual seria a consulta usando subconsulta que seria equivalente a:

SELECT X.CPF, CONTAGEM FROM
(SELECT CPF, COUNT(*) AS CONTAGEM FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000) X 
WHERE CONTAGEM > 2008; 