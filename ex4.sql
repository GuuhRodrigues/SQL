#Podemos observar que os vendedores possuem bairro associados a eles. 
#Vamos aumentar em 30% o volume de compra dos clientes que possuem, em seus endereços bairros onde os vendedores possuam escritórios

SELECT * FROM CLIENTES;

SELECT A.CPF FROM CLIENTES A
INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO;

UPDATE CLIENTES A
INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO
SET A.VOLUME_COMPRA = A.VOLUME_COMPRA * 1.30;