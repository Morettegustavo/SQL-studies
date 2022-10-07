use sucos_vendas;
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

/* nesse caso sabemos que os bairros que existem vendedores são esses quatros */
/* porém temos um problema imagine que é contratado um novo vendedor em um novo bairro */
SELECT * FROM tabela_de_clientes
WHERE BAIRRO IN('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');

/* então podemos fazer uma subconsulta para não ter que ficar adicionando os bairros manualmente */
SELECT * FROM tabela_de_clientes
WHERE BAIRRO IN(SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

 