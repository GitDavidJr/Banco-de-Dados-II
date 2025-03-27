CREATE DATABASE weekit;

USE weekit;

SELECT * FROM inscricao;

SELECT * FROM minicurso;

SELECT * FROM participante;

-- Grupo 1:

-- Questão 1:
SELECT 
    ultima_inscricao AS TipoInscricao, 
    COUNT(*) AS QuantInscricao
FROM Inscricao
GROUP BY ultima_inscricao;

-- Questão 2:

SELECT 
	p.nome AS Participante,
	m.turma AS Turma,
    m.palestrante AS Palestrante
FROM minicurso m
JOIN inscricao i ON i.codMinicurso = m.codMinicurso
JOIN participante p ON p.cpf = i.cpf
WHERE m.titulo LIKE '%Introdução ao MySQL' AND i.ultima_inscricao = "sim"
ORDER BY p.nome;

-- Questão 3:
SELECT 
	p.nome AS Participante,
    p.sexo AS Sexo,
    COUNT(*) AS QntMinicursos
FROM inscricao i
JOIN participante p ON p.cpf = i.cpf
WHERE i.ultima_inscricao = "sim"
GROUP BY p.nome
HAVING COUNT(*) > 1
ORDER BY Sexo DESC, Participante;

-- Questão 4:

SELECT p.nome
FROM participante p
WHERE p.cpf NOT IN (
		SELECT DISTINCT(cpf) 
        FROM inscricao
        WHERE ultima_inscricao = "sim"
	);
        

        
	
