CREATE DATABASE cadastro_Curso
USE cadastro_curso

CREATE TABLE cadastro (
Id INT AUTO_INCREMENT PRIMARY KEY ,
NOME VARCHAR(50) ,
IDADE INT ,
TELEFONE INT ,
EMAIL VARCHAR (25) ,
CIDADE VARCHAR (20),
ESTADO VARCHAR(2),
CURSO VARCHAR(15)
);

ALTER TABLE cadastro modify column telefone varchar(15);


--Lista todas os dados da tabelas 
SELECT * FROM cadastro;

--WHERE
SELECT * FROM cadastro WHERE estado = 'DF';  

-- WHERE com AND
SELECT * FROM cadastro WHERE estado = 'DF'  and idade >= 30;

--ORDER BY
SELECT * FROM cadastro  ORDER BY idade;

--COUNT
SELECT COUNT(*) FROM cadastro WHERE curso like '%tecno%';

--IS NULL e NOT NULL TRIM()
SELECT nome , telefone FROM cadastro WHERE CURSO IS NULL OR TRIM(CURSO) = '';
SELECT nome , telefone FROM cadastro WHERE CURSO IS NOT NULL;

--ORDER BY com DESC
SELECT * FROM cadastro  ORDER BY estado, cidade DESC

--BETWEEN - Seleciona por periodo
SELECT nome, curso FROM cadastro WHERE idade BETWEEN 15 and 40; 

--Distinct
SELECT DISTINCT curso from cadastro
