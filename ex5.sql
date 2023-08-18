# Desafio: Vamos excluir as notas fiscais (Apenas o cabeçalho) cujos clientes tenham a idade menor ou igual a 18 anos.
SELECT * FROM NOTAS;

SELECT A.NUMERO FROM NOTAS A
INNER JOIN CLIENTES B ON A.CPF = B.CPF
WHERE B.IDADE <= 18;

DELETE NOTAS FROM NOTAS
INNER JOIN CLIENTES ON NOTAS.CPF = CLIENTES.CPF
WHERE CLIENTES.IDADE <= 18;