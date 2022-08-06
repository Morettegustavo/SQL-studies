use sucos_vendas;
select * from tabela_de_produtos where SABOR = 'manga'
OR TAMANHO = '470 ML';

select * from tabela_de_produtos where SABOR = 'manga'
and TAMANHO = '470 ML';

select * from tabela_de_produtos where not(SABOR = 'manga'
and TAMANHO = '470 ML');

select * from tabela_de_produtos where not(SABOR = 'manga'
or TAMANHO = '470 ML');

select * from tabela_de_produtos where SABOR = 'manga'
and not (TAMANHO = '470 ML');

SELECT * FROM tabela_de_produtos where sabor IN ('laranja', 'manga');
SELECT * FROM tabela_de_produtos where sabor = 'laranja' OR sabor = 'Manga';

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') AND IDADE >= 20;
SELECT * FROM tabela_de_clientes WHERE (CIDADE = 'Rio de Janeiro' or CIDADE = 'São Paulo') AND IDADE >= 20;

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') AND (IDADE >= 20 AND IDADE <= 22);
