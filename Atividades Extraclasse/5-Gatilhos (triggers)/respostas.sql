create database empresax;

-- Questão 1

DELIMITER //


CREATE TRIGGER trigger_excluir_dependentes
BEFORE DELETE ON funcionario
FOR EACH ROW
BEGIN
    DELETE FROM dependente WHERE funcionario.matricula = dependente.matricula;
END//

DELIMITER ;

select * from funcionario;
select * from dependente;

DELETE FROM funcionario
WHERE matricula = 20250005;

-- Questão 2

DELIMITER //
CREATE TRIGGER before_delete_projeto
BEFORE DELETE ON Projeto
FOR EACH ROW
BEGIN
	DELETE FROM FuncionarioProjeto
    WHERE codProjeto = OLD.codProjeto;
	
    DELETE FROM HorasTrabalhadas
    WHERE codProjeto = OLD.codProjeto;
END//

DELIMITER ;

select * from projeto;
select * from funcionarioprojeto;
select * from Horastrabalhadas;

DELETE FROM Projeto
WHERE codProjeto = '2';

-- questao 3

DELIMITER //
CREATE TRIGGER before_insert_dependente
BEFORE INSERT ON Dependente
FOR EACH ROW
BEGIN
    DECLARE idade INT;

    -- Calcula a idade do dependente
    SET idade = TIMESTAMPDIFF(YEAR, NEW.dataNascimento, CURDATE());

    -- Verifica a regra para dependentes do sexo masculino
    IF NEW.sexo = 'M' AND idade > 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Dependentes do sexo masculino não podem ter mais de 18 anos.';
    END IF;

    -- Verifica a regra para dependentes do sexo feminino
    IF NEW.sexo = 'F' AND idade > 21 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Dependentes do sexo feminino não podem ter mais de 21 anos.';
    END IF;
END//
DELIMITER ;

select * from funcionario;

-- Dependente do sexo masculino com idade inferior ou igual a 18 anos
INSERT INTO Dependente (nome, matricula, dataNascimento, sexo, grauParentesco)
VALUES ('Filho João', '20250001', '2007-05-01', 'M', 'Filho');

-- Dependente do sexo feminino com idade inferior ou igual a 21 anos
INSERT INTO Dependente (nome, matricula, dataNascimento, sexo, grauParentesco)
VALUES ('Filha Maria', '20250001', '2004-05-01', 'F', 'Filha');

-- Dependente do sexo masculino com idade superior a 18 anos
INSERT INTO Dependente (nome, matricula, dataNascimento, sexo, grauParentesco)
VALUES ('Filho Paulo', '20250001', '2006-05-01', 'M', 'Filho'); 

-- Dependente do sexo feminino com idade superior a 21 anos
INSERT INTO Dependente (nome, matricula, dataNascimento, sexo, grauParentesco)
VALUES ('Filha Julia', '20250001', '2003-05-01', 'F', 'Filha'); 

-- questao 4

DELIMITER //

CREATE TRIGGER before_insert_funcionario
BEFORE INSERT ON Funcionario
FOR EACH ROW
BEGIN
    IF NEW.matricula = NEW.matriculaSupervisor THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Um funcionário não pode ser seu próprio supervisor.';
    END IF;
END//

CREATE TRIGGER before_update_funcionario
BEFORE UPDATE ON Funcionario
FOR EACH ROW
BEGIN
    IF NEW.matricula = NEW.matriculaSupervisor THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Um funcionário não pode ser seu próprio supervisor.';
    END IF;
END//

DELIMITER ;

INSERT INTO Funcionario (matricula, nome, endereco, sexo, salario, dataNascimento, matriculaSupervisor, codDepart)
VALUES ('FUNC001', 'Nome do Funcionário', 'Endereço', 'M', 3000.00, '1990-01-01', 'FUNC001', 1);

INSERT INTO Funcionario (matricula, nome, endereco, sexo, salario, dataNascimento, matriculaSupervisor, codDepart)
VALUES ('FUNC002', 'Outro Funcionário', 'Outro Endereço', 'F', 3500.00, '1992-05-10', 'SUP001', 2);

UPDATE Funcionario
SET matriculaSupervisor = 'FUNC002'
WHERE matricula = 'FUNC002';

-- questao 5

DELIMITER //

CREATE TRIGGER before_insert_projeto_horas
BEFORE INSERT ON Projeto
FOR EACH ROW
BEGIN
    IF NEW.horasPrevistas > 2000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: A criação do projeto foi impedida. O número de horas previstas não pode ser superior a 2000.';
    END IF;
END//

CREATE TRIGGER before_update_projeto_horas
BEFORE UPDATE ON Projeto
FOR EACH ROW
BEGIN
    IF NEW.horasPrevistas > 2000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: A atualização do projeto foi impedida. O número de horas previstas não pode ser superior a 2000.';
    END IF;
END//

DELIMITER ;

INSERT INTO Projeto (codProjeto, nome, horasPrevistas, codDepart)
VALUES (101, 'Projeto Grande', 2500, 1);
    
INSERT INTO Projeto (codProjeto, nome, horasPrevistas, codDepart)
VALUES (102, 'Projeto Médio', 1500, 2);

UPDATE Projeto
SET horasPrevistas = 2200
WHERE codProjeto = 102;

-- questao 6

DELIMITER //

CREATE TRIGGER after_insert_funcionario_projeto
AFTER INSERT ON FuncionarioProjeto
FOR EACH ROW
BEGIN
    UPDATE Funcionario
    SET salario = salario + 800.00
    WHERE matricula = NEW.matricula;
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_update_funcionario_projeto
BEFORE UPDATE ON FuncionarioProjeto
FOR EACH ROW
BEGIN
    IF NEW.dataFim IS NOT NULL AND OLD.dataFim IS NULL THEN
        UPDATE Funcionario
        SET salario = salario - 800.00
        WHERE matricula = NEW.matricula;
    END IF;
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_delete_funcionario_projeto
BEFORE DELETE ON FuncionarioProjeto
FOR EACH ROW
BEGIN
    UPDATE Funcionario
    SET salario = salario - 800.00
    WHERE matricula = OLD.matricula;
END//

DELIMITER ;
