use sucos_vendas;
SELECT * FROM tabela_de_vendedores;

SELECT count(*) FROM tabela_de_clientes;

SELECT * FROM tabela_de_vendedores
INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

/* INNER JOIN */
use sucos_vendas;
SELECT tabela_de_vendedores.BAIRRO,	
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME
FROM tabela_de_vendedores
INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

/* LEFT JOIN */
use sucos_vendas;
SELECT tabela_de_vendedores.BAIRRO,	
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME
FROM tabela_de_vendedores
LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;


/* RIGTH JOIN */
use sucos_vendas;
SELECT tabela_de_vendedores.BAIRRO,	
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME
FROM tabela_de_vendedores
RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

/* FULL JOIN */
/* 
linguagem SQL segue o padrão ANSI, que respeita uma série de regras, mas nem todo gerenciador de banco de dados realiza 100% do que esse padrão especifica. 
O FULL JOIN está contido no padrão ANSI, porém o MySQL não suporta esse comando. Ou seja, não conseguiremos fazer o FULL JOIN no MySQL Workbench. 
Existe, no entanto, uma alternativa para o FULL JOIN que é fazer o LEFT JOIN e o RIGHT JOIN simultaneamente. 
*/
use sucos_vendas;
SELECT tabela_de_vendedores.BAIRRO,	
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME
FROM tabela_de_vendedores
FULL JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

/* CROSS JOIN */
use sucos_vendas;
SELECT tabela_de_vendedores.BAIRRO,	
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME
FROM tabela_de_vendedores, tabela_de_clientes;
