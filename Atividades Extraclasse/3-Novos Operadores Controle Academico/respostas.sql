
-- Questão 1
select a.nome from aluno a
left join alunotelefone b on a.matricula = b.matricula
where b.nroTelefone is null;

select a.nome from aluno a
where not exists (
					select 1 from alunotelefone b
                    where b.matricula = a.matricula
				 ) ;
                 
select nome from aluno
where matricula <> all (select matricula from alunotelefone);

-- Questão 2
select distinct d.nome from disciplina d
join matriculado m on d.codDisciplina = m.codDisciplina
join aluno a on a.matricula = m.matricula
join curso c on a.codCurso = c.codCurso
where c.nome = 'Sistemas de Informação'
and exists (
			select 1 from prerequisito p
            where p.codDisciplina = d.codDisciplina
		   )
order by d.nome;

select distinct d.nome from disciplina d
join matriculado m on d.codDisciplina = m.codDisciplina
join aluno a on a.matricula = m.matricula
join curso c on a.codCurso = c.codCurso
where c.nome = 'Sistemas de Informação'
and d.codDisciplina = any (
			select p.codDisciplina from prerequisito p
		   )
order by d.nome;

-- Questão 3
SELECT 
	(COUNT(CASE 
		WHEN b.matricula IS NULL THEN 1 
		END) * 100.0) / (SELECT COUNT(*) FROM aluno) AS percentual_sem_telefone
FROM aluno a
LEFT JOIN alunotelefone b ON a.matricula = b.matricula;

SELECT 
	(COUNT(*) * 100.0) / (SELECT COUNT(*) FROM aluno) AS percentual_sem_telefone
FROM aluno a
WHERE NOT EXISTS (
    SELECT 1 
    FROM alunotelefone b 
    WHERE b.matricula = a.matricula
);

-- Questão 4

select a.nome, avg(c.nota), cu.nome from aluno a
join concluido c on a.matricula = c.matricula
join curso cu on a.codCurso = cu.codCurso
group by a.matricula
having avg(c.nota) > all (
	select avg(c.nota) from concluido c
    join aluno a on c.matricula = a.matricula
    join matriculado m on a.matricula = m.matricula
    join disciplina d on m.codDisciplina = d.codDisciplina
    where d.nome = 'Estrutura de Dados'
    group by a.matricula
);
