#Faça uma consulta listando o nome do cliente e o endereço completo (Com rua, bairro, cidade e estado).

SELECT CONCAT(NOME, '( ', ENDERECO_1, ', ', BAIRRO, ', ', CIDADE, ', ', ESTADO, ' )') FROM tabela_de_clientes;