use sucos_vendas;
SELECT DISTINCT BAIRRO FROM tabela_de_clientes;
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

/* UNION (INTERNAMENTE TEM UM DISTINCT) */
SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

/* UNION ALL (TRÁS TODOS OS REGISTROS) */
SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' as TIPO FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' as TIPO FROM tabela_de_vendedores; 

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' as TIPO FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' as TIPO FROM tabela_de_vendedores; 

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' as TIPO_CLIENTE FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' as TIPO_VENDEDOR FROM tabela_de_vendedores; 

/* --------------------------------------------------------------------- */
/* simulando um FULL JOIN */
SELECT tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME  FROM tabela_de_vendedores LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
SELECT tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME  FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;