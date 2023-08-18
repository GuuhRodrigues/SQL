#Na tabela de notas fiscais temos o valor do imposto. 
#Já na tabela de itens temos a quantidade e o faturamento. Calcule o valor do imposto pago no ano de 2016 arredondando para o menor inteiro.

SELECT DATA_VENDA FROM notas_fiscais;

(SELECT DATA_VENDA AS IMPOSTO FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016);

SELECT DATA_VENDA AS IMPOSTO FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016 IN (SELECT SUM(QUANTIDADE * PRECO) AS FATURAMENTO FROM itens_notas_fiscais);

SELECT FLOOR(SUM((B.QUANTIDADE * B.PRECO) * A.IMPOSTO)) AS IMPOSTO_PAGO_EM_2016 
FROM notas_fiscais A
INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO 
WHERE YEAR(A.DATA_VENDA) = 2016
GROUP BY YEAR(A.DATA_VENDA); 