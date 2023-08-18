#Veja o ano de nascimento dos clientes e classifique-os como: Nascidos antes de 1990 são velhos,
#nascidos entre 1990 e 1995 são jovens e nascidos depois de 1995 são crianças. Liste o nome do cliente e esta classificação.
SELECT * FROM tabela_de_clientes;

SELECT NOME,
CASE
WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN 'Velhos'
WHEN YEAR(DATA_DE_NASCIMENTO) >= 1990 AND YEAR(DATA_DE_NASCIMENTO) <= 1995 THEN 'Jovens'
ELSE 'Crianças'
END AS CLASSIFICAÇÃO FROM tabela_de_clientes ORDER BY CLASSIFICAÇÃO;
