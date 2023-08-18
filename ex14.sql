# Obtenha o faturamento anual da empresa. Leve em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço.

SELECT * FROM itens_notas_fiscais;
SELECT * FROM notas_fiscais;

SELECT YEAR(DATA_VENDA) AS ANO, ROUND(SUM(QUANTIDADE * PRECO), 2) AS FATURAMENTO #ROUND ARREDONDA A CASA PARA 2 CASAS DECIMAIS
FROM NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
ON A.NUMERO = B.NUMERO
GROUP BY ANO ORDER BY ANO;