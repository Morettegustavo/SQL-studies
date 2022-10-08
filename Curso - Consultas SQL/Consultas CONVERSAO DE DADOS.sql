SELECT current_timestamp() AS RESULTADO;

SELECT concat('O dia de hoje é: ', current_timestamp());

SELECT concat('O dia de hoje é: ', 
DATE_FORMAT(current_timestamp(), '%W, %d/%m/%Y - %U'));

SELECT CONVERT(23.3, CHAR) AS RESULTADO;