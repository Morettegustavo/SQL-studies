use sucos_vendas;

/* TRÁS O DIA ATUAL */
SELECT CURDATE();

/* TRÁS A HORA ATUAL */
SELECT CURRENT_TIME();

/* TRÁS O DIA COM A HORA ATUAL */
SELECT CURRENT_TIMESTAMP();

/* PARA SABER APENAS O ANO */
SELECT YEAR(CURRENT_TIMESTAMP());

/* PARA SABER APENAS O DIA */
SELECT DAY(CURRENT_TIMESTAMP());

/* PARA SABER APENAS O MÊS */
SELECT MONTH(CURRENT_TIMESTAMP());

/* PARA SABER APENAS O NOME MÊS */
SELECT MONTHNAME(CURRENT_TIMESTAMP());

/* DIFERENÇAS DE DATAS */
SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2003-07-02') AS QUANTOS_DIAS_TENHO_DE_VIDA;


SELECT CURRENT_TIMESTAMP() AS DIA_HOJE,
DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;

/* Crie uma consulta que mostre o nome e a idade atual dos clientes. */
SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes;
