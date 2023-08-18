# Crie uma consulta que mostre o nome e a idade atual dos clientes.

SELECT NOME, TIMESTAMPDIFF(YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS IDADE_ATUAL FROM tabela_de_clientes;