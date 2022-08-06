use sucos_vendas;
SELECT * FROM tabela_de_produtos where SABOR like '%maça%';

SELECT * FROM tabela_de_produtos where SABOR like '%maça%'
AND EMBALAGEM = 'PET';

SELECT * FROM tabela_de_produtos where SABOR like 'maça%'
AND EMBALAGEM = 'PET';

SELECT * FROM tabela_de_clientes where nome like '%mattos';
