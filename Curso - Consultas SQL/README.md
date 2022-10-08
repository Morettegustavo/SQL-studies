# Consultas SQL: avançando no SQL com MySQL
*** 
![sql-250](https://user-images.githubusercontent.com/88351614/183251496-0653f79e-ee69-41c2-86c6-8443a91d6ce8.png)
* **`Meus estudos de SQL, utilizando MYSQL.`**
# Cursos
***
- [x] Consultas SQL: avançando no SQL com MySQL
* Pagine seus dados com LIMIT
* Filtre consultas com HAVING
* Entenda a diferença entre o LEFT e RIGHT JOIN
* Saiba usar Sub-Queries
* Use funções do MySQL
* Ordene os seus dados usando o ORDER BY
* Agrupe dados com GROUP BY

# Comandos e sintaxes aprendidas durante curso
***
### BETWEEN
* Para fazermos consultar um campo com o type float pelo select temos que usar o BETWEEN.
```
SELECT * FROM tabela_de_produtos WHERE PRECO_DDE_LISTA BETWEEN 19.50 AND 19.52;
```
> Ele pegará todos os valores entre 19.50 - 19.52
<hr>

### IN
* IN significa contido em.
```
SELECT * FROM tabela_de_produtos WHERE sabor IN ('laranja', 'manga');
SELECT * FROM tabela_de_produtos WHERE sabor = 'laranja' OR sabor = 'Manga';
```
> É a mesma coisa, mas além de ficar listando um por um, se coloca o IN
<hr>

### AS
* “AS” é como se fosse um apelido
<hr>

### DISTINCT
*  Irá retornar somente linhas com valores diferentes.
```
SELECT DISTINCT * FROM TABELA
```
<hr>

### LIMIT
* LIMIT - Limita o número de linhas exibidas.
```
// Nesse caso ele vai trazer 4 registros
SELECT * FROM TABELA LIMIT 4

// Nesse caso ele vai partir dá linha 2 contando 3 registros;
SELECT * FROM TABELA LIMIT 2,3
```
> O MySQL sempre considera a primeira linha como 0
<hr>

### ORDER BY
* Apresenta o resultado dá consulta ordenado pelo campo determinado no ORDER BY.
```
SELECT * FROM TAB ORDER BY CAMPO
```
> Podemos determinar a direção da ordenação: ASC (Ascendente) DESC (Descendente)
<hr>

### GROUP BY
* Apresenta o resultado agrupando valores numéricos por chave de critério.
* Ex: Queremos agrupar pelo campo X e somar os valores em Y.
```
SELECT X, SUM(Y) FROM TAB GROUP BY X
```
> Sintaxe
```
SELECT <campo> FROM TAB GROUP BY CAMPO
```
<hr>

### SUM, MAX, MIN, AVG, COUNT
* SUM: SOMA
```
SELECT X, SUM(Y) FROM TAB GROUP BY X
```

* MAX: MÁXIMO
```
SELECT X, MAX(Y) FROM TAB GROUP BY X
```

* MIN: MÍNIMO
```
SELECT X, MIN(Y) FROM TAB GROUP BY X
```

* AVG: MÉDIA
```
SELECT X, AVG(Y) FROM TAB GROUP BY X
```

* COUNT: CONTA OCORRÊNCIAS
```
SELECT X, COUNT(Y) FROM TAB GROUP BY X
```
<hr>

### HAVING
* O HAVING é uma condição (Filtro) que se aplica ao resultado de uma agregação.
```
SELECT X, SUM(Y) FROM tab GROUP BY X HAVING SUM(Y) >= 6;
```
<hr>

### CASE
* Fazemos um teste em um ou mais campos e, dependendo do resultado, teremos um ou outro valor.
```
SELECT X,
CASE
    WHEN Y>=8 AND Y<=10 THEN 'OTIMO'
    WHEN Y>=7 AND Y<8 THEN 'BOM'
    WHEN Y>5 AND Y<7 THEN 'MEDIO'
    ELSE 'RUIM'
END
FROM tabela;
```
<hr>

### INNER JOIN
* INNER JOIN é responsável por retornar somente os registros que têm correspondência nas duas tabelas.
```
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA A
INNER JOIN TABELA_DIREITA B
ON A.IDENTIFICADOR = B.IDENTIFICADOR;
```
<hr>

### LEFT JOIN
* Left, em inglês, significa "esquerda" e, no nosso contexto, representa a primeira tabela, à esquerda, a que vem antes do comando JOIN. Com essa consulta, trará todos os elementos da tabela A e somente os correspondentes da tabela B.
```
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA A
LEFT JOIN TABELA_DIREITA B
ON A.IDENTIFICADOR = B.IDENTIFICADOR;
```
<hr>

### RIGTH JOIN
* RIGHT JOIN, que trará todos os elementos da tabela da direita (ou seja, a que vem depois do comando JOIN) e somente os correspondentes da esquerda.
```
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA A
RIGHT JOIN TABELA_DIREITA B
ON A.IDENTIFICADOR = B.IDENTIFICADOR;
```
<hr>

### FULL JOIN
* FULL JOIN, Retorna todos os registros de todas as tabelas
```
SELECT A.NOME, B.HOBBY FROM 
TABELA_ESQUERDA A
FULL JOIN TABELA_DIREITA B
ON A.IDENTIFICADOR = B.IDENTIFICADOR;
```
> O MySQL não tem suporte para utilizar o FULL JOIN, mas podemos simular isso fazendo uma consulta com RIGTH JOIN e LEFT JOIN, juntando essas duas consultas.
<hr>

### CROSS JOIN
* O CROSS JOIN executa uma operação mais complexa, em que todos os itens de uma tabela estarão associados a cada item da outra.
```
FROM tabela1 AS t
CROSS JOIN tabela2 AS tp
WHERE t.id = 1 OR tp.id = 1; 
```
> Se a tabela 2 tem 7 itens e a tabela 1 tem apenas 2, cada um dos dois itens da tabela 1 será representado 7 vezes na nova tabela (com relação com todos os itens da tabela 2).
<hr>

### UNION
* UNION, responsável por juntar duas consultas.
* Há uma restrição para esse comando: é necessário que as tabelas que serão unidas tenham o mesmo número e tipo de campo.
```
SELECT declaração_1
UNION [ALL}
SELECT declaração_2
UNION [ALL}
SELECT declaração_3 ...
[ORDER BY colunas]
```
> Executando o UNION simples, o DISTINCT automaticamente será aplicado, de forma que os registros iguais também serão unidos.
<hr>

### UNION ALL
* Se nosso objetivo seja unir sem aplicar o DISTINCT, então utilizaremos a cláusula UNION ALL:
<hr>

### SUBCONSULTAS
```
SELECT X, Y FROM tab1
WHERE Y IN (SELECT Y FROM tab2);
```
> Dessa forma, vamos filtrar registros cujo Y esteja dentro do conjunto de valores resultantes da subconsulta SELECT Y FROM tab2 (que, por sua vez, retorna todos os valores da tabela 2). Teremos uma consulta dentro de outra — ou seja, uma subconsulta. 
<hr>

### VISÃO
* Visão, que é uma tabela lógica, resultado de uma consulta. Ao realizar uma query (seja simples ou complexa) podemos salvá-la com um nome (por exemplo, "V") e mais tarde referenciar essa visão como se fosse uma tabela (SELECT * FROM V).
* As visões (ou views) são bastante úteis quando precisamos disponibilizar parte do nosso banco de dados para uma pessoa externa, pois criamos uma tabela lógica com limites que garantam a segurança das informações e concedemos acesso somente a essa visão.

Como exemplo, usaremos uma tabela com o campo "X" com letras e o campo "Y" com números:


| X  | Y |
| ------------- | ------------- |
| A  | 2  |
| A  | 1  |
| B  | 2  |
| B  | 3  |
| B  | 1  |
| C  | 1  |
| C  | 5  |
| C  | 2  |
| D  | 4  |

> Vamos supor que fizemos a seguinte seleção, que agupa os valores iguais de "X" e traz a soma dos respectivos "Y":
```
SELECT X, SUM(Y) as NEW_Y FROM tab1 GROUP BY X;
```
> E obtemos um retorno que chamaremos de tabela 2:

| X  | NEW_Y |
| ------------- | ------------- |
| A  | 3  |
| B  | 6  |
| C  | 8  |
| D  | 4  |

> Daremos um nome a esse SELECT que executamos, criando uma visão chamada "VW_VIEW". Então, se rodarmos SELECT * FROM VW_VIEW, teremos como retorno o resultado de SELECT X, SUM(Y) as NEW_Y FROM tab1 GROUP BY X (a tabela 2). Ou seja, é como se essa view fosse uma subconsulta.
<hr>

### FUNÇÕES DO MYSQL
> Funções são nelas que residem as maiores diferenças entre os vários bancos que utilizam SQL. Estamos conhecendo essa linguagem usando o MySQL. A maior parte do que aprendemos até agora (como DISTINCT e JOIN) é muito parecido ou igual entre o MySQL, o Oracle ou o SQL Server, por exemplo, citando os três principais bancos relacionais do mercado.
#### Classificação em trẽs grandes grupos:
1. Funções escalares (utilizam textos)
2. Funções de data (manipulam datas)
3. Funções matemáticas (realizam operações entre campos float ou inteiros na nossa base de dados)
#### Funções de string
> Existem muitas funções de string
```
/* REMOVE OS ESPAÇOS DO INICIO */
SELECT LTRIM('     OLÁ') AS RESULTADO;

/* REMOVE OS ESPAÇOS DO FINAL */
SELECT RTRIM('OLÁ     ') AS RESULTADO;

/* REMOVE OS ESPAÇOS DO INICIO E FINAL */
SELECT TRIM('    OLÁ    ') AS RESULTADO;

/* CONCATENANDO */
SELECT CONCAT('OLÁ', ' ', 'TUDO BEM', '?') AS RESULTADO;

/* DEIXA TUDO EM MAIUSCULO */
SELECT UPPER('olá tudo bem?') AS RESULTADO;

/* DEIXA TUDO EM MINUSCULO */
SELECT LOWER('OLÁ TUDO BEM?') AS RESULTADO;

/* ACHAR UMA STRING DENTRO DE OUTRA STRING */
SELECT SUBSTRING('OLÁ, TUDO BEM?', 6) AS RESULTADO;
SELECT SUBSTRING('OLÁ, TUDO BEM?', 6, 4) AS RESULTADO;
```
> Perda de tempo colocar todas as funções aqui, só procurar na documentação
* [Documentação oficial](https://dev.mysql.com/doc/)
* [Documentação dá w3schools (mais simples na minha opinião)](https://www.w3schools.com/mysql/mysql_ref_functions.asp)
<hr>

# Certificado
***
![certificacao](https://user-images.githubusercontent.com/88351614/194725769-9f669518-5c7f-4ad5-b46e-579a21f09aa9.jpeg)




