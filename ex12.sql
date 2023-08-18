#Quais foram os clientes que fizeram mais de 2000 compras em 2016?
SELECT * FROM notas_fiscais;

SELECT CPF, COUNT(*) AS COMPRAS_MAIOR_2000 FROM notas_fiscais 
WHERE DATA_VENDA LIKE "2016%" 
GROUP BY CPF 
HAVING COUNT(*) > 2000;