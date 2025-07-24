-- Questão 01

SELECT DISTINCT c.Nome, c.cpf, tc.telefone
FROM Servico s
JOIN Orcamento o ON s.id_orcamento = o.id
JOIN Cliente c ON o.cpf_cliente = c.cpf
JOIN telefone_cliente tc ON tc.cpf_cliente = c.cpf
WHERE MONTH(s.data_conclusao) = 6 AND YEAR(s.data_conclusao) = 2024;

-- Questão 02

SELECT MONTH(data_conclusao) AS mes, COUNT(*) AS total_servicos
FROM Servico
WHERE YEAR(data_conclusao) = 2024
GROUP BY mes
ORDER BY total_servicos DESC;

-- Questão 03

SELECT 
    s.id AS servico_id,
    s.status,
    o.valor AS orcamento_valor,
    o.descricao_problema,
    f.nome AS funcionario,
    f.cpf AS funcionario_cpf
FROM Servico s
JOIN Orcamento o ON s.id_orcamento = o.id
JOIN Funcionario f ON s.cpf_funcionario = f.cpf
WHERE s.status = 'Entregue';

-- Questão 04

SELECT f.nome, f.cpf, COUNT(*) AS total_servicos
FROM Servico s
JOIN Funcionario f ON s.cpf_funcionario = f.cpf
WHERE YEAR(s.data_conclusao) = 2024
GROUP BY f.nome, f.cpf
HAVING COUNT(*) = (
    SELECT MAX(contagem)
    FROM (
        SELECT COUNT(*) AS contagem
        FROM Servico
        WHERE YEAR(data_conclusao) = 2024
        GROUP BY cpf_funcionario
    ) AS subconsulta
)
ORDER BY total_servicos DESC;

-- Questão 05

SELECT 
    AVG(DATEDIFF(data_conclusao, data_inicio)) AS media_dias
FROM Servico
WHERE status = 'Entregue'
  AND data_inicio IS NOT NULL
  AND data_conclusao IS NOT NULL;
