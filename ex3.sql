# Atualize o endereço do cliente com cpf 19290992743 para R. Jorge Emílio 23 o bairro para Santo Amaro, a cidade para São Paulo, o estado para SP e o CEP para 8833223.

SELECT * FROM clientes WHERE CPF = '19290992743';

UPDATE clientes SET ENDERECO = 'R. Jorge Emílio 23', BAIRRO = 'Santo Amaro', CIDADE = 'São Paulo', ESTADO = 'SP', CEP = '8833223';


