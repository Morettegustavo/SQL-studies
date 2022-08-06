USE sucos_vendas;
SELECT embalagem, tamanho FROM tabela_de_produtos;
SELECT DISTINCT embalagem, tamanho FROM	tabela_de_produtos
WHERE SABOR = 'Laranja';

SELECT DISTINCT bairro from tabela_de_clientes where cidade = 'rio de janeiro';