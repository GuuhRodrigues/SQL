# Aproveitando o exercício do vídeo anterior (maior quantidade vendida) quantos itens de venda existem para o produto '1101035' ?

#Uma Dica é que neste caso vc precisará rodar duas queries. Sendo a 1a associada a maior quantidade de produtos e a 2a com o resultado da 1a na forma de parâmetro desta 2a query

SELECT CODIGO_DO_PRODUTO, MAX(QUANTIDADE) AS MAIOR_QUANTIDADE_VENDIDA FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' GROUP BY CODIGO_DO_PRODUTO;

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS QUANTIDADE_ITENS_VENDIDOS FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' GROUP BY CODIGO_DO_PRODUTO;

