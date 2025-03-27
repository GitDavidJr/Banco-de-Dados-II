CREATE DATABASE controleacademico;

use controleacademico;
-- Questao 1
select d.nome as 'Materias de Agronomia' from Disciplina d
where d.codDisciplina in (
	select m.codDisciplina from Matriculado m
    where m.matricula in (
		select a.matricula from Aluno a
        where a.codCurso in (
			select c.codCurso from Curso c
			where c.nome = "Agronomia"
        )
    )
)
order by d.nome;

-- Questão 2

select d.nome as 'Disciplina', d.cargaHoraria as 'Carga Horária', d.semestre as 'Semestre'
from disciplina d
join matriculado m on d.codDisciplina = m.codDisciplina
join aluno a on m.matricula = a.matricula
join curso c on a.codCurso = c.codCurso
where c.nome = "Agronomia"
group by d.nome
order by d.cargaHoraria;

-- Questão 3

select d.semestre as 'Semestre', count(d.nome) as 'TotalDiscAgronomia'
from disciplina d
join matriculado m on d.codDisciplina = m.codDisciplina
join aluno a on m.matricula = a.matricula
join curso c on a.codCurso = c.codCurso
where c.nome = "Agronomia"
group by d.semestre
order by d.cargaHoraria desc;

-- Questao 4

select 
    (cout(case when c.nota >= 6.0 then 1 end) * 100.0 / count(*)) as percentual_aprovacao
from Concluido c
join Disciplina d ON c.codDisciplina = d.codDisciplina
where d.nome = 'Estrutura de Dados';

-- Questão 5

select d.nome from disciplina d
join prerequisito p on p.codDisciplina = d.codDisciplina
group by d.nome
having count(*) >= 2;
