INSERT INTO Cliente (cpf, Nome, cidade, bairro, logradouro, complemento, numero, cep) VALUES
('01234567890', 'Camila Dias', 'Manaus', 'Adrianópolis', 'Rua Rio Jutaí', 'Casa 2', 606, '69000-000'),
('12345098765', 'Gustavo Henrique', 'Goiânia', 'Setor Bueno', 'Rua T-53', NULL, 707, '74210-000'),
('23456109876', 'Isabela Freitas', 'Belém', 'Nazaré', 'Travessa Quintino Bocaiúva', 'Apto 303', 808, '66000-000'),
('34567210987', 'Marcelo Vieira', 'Florianópolis', 'Centro', 'Rua Felipe Schmidt', NULL, 909, '88000-000'),
('45678321098', 'Natália Correia', 'Vitória', 'Praia do Canto', 'Avenida Dante Michelini', 'Casa 3', 1010, '29000-000'),
('56789432109', 'Otávio Gomes', 'Natal', 'Ponta Negra', 'Avenida Engenheiro Roberto Freire', NULL, 1111, '59000-000'),
('67890123456', 'Fernanda Costa', 'Brasília', 'Asa Sul', 'Quadra 102', 'Bloco C', 102, '70200-000'),
('67890543210', 'Priscila Lopes', 'Campo Grande', 'Jardim dos Estados', 'Rua Antônio Maria Coelho', 'Apto 404', 1212, '79000-000'),
('78901234567', 'Ricardo Alves', 'Salvador', 'Barra', 'Avenida Oceânica', NULL, 303, '40100-000'),
('78901654321', 'Rafael Martins', 'Cuiabá', 'Jardim América', 'Rua das Acácias', NULL, 1313, '78000-000'),
('89012345678', 'Patrícia Rocha', 'Fortaleza', 'Meireles', 'Rua Santos Dumont', 'Apto 202', 404, '60100-000'),
('90123456789', 'Bruno Carvalho', 'Recife', 'Boa Viagem', 'Avenida Boa Viagem', NULL, 505, '51000-000');


INSERT INTO telefone_cliente (cpf_cliente, telefone) VALUES
('01234567890', '61999998888'),
('12345098765', '71988887777'),
('23456109876', '81977776666'),
('34567210987', '91966665555'),
('45678321098', '61955554444'),
('56789432109', '71944443333'),
('67890123456', '81933332222'),
('67890543210', '91922221111'),
('78901234567', '61911110000'),
('78901654321', '71900009999'),
('89012345678', '81999998888'),
('90123456789', '91988887777');


INSERT INTO Funcionario (cpf, cargo, nome) VALUES
('09876543210', 'Técnico', 'Igor Fernandes'),
('10987654321', 'Técnico', 'Gabriel Souza'),
('11111111111', 'Gerente', 'Juliana Pereira'),
('21098765432', 'Técnico', 'Larissa Oliveira'),
('22222222222', 'Atendente', 'Kátia Silva'),
('32109876543', 'Gerente', 'Roberto Santos'),
('43210987654', 'Atendente', 'Mariana Costa'),
('54321098765', 'Técnico', 'Felipe Lima'),
('65432109876', 'Técnico', 'Cristina Almeida'),
('76543210987', 'Gerente', 'Daniel Ribeiro'),
('87654321098', 'Atendente', 'Eduarda Martins'),
('98765432109', 'Técnico', 'Henrique Gomes');


INSERT INTO telefone_funcionario (cpf_funcionario, telefone) VALUES
('09876543210', '61911112222'),
('10987654321', '71922223333'),
('11111111111', '81933334444'),
('21098765432', '91944445555'),
('22222222222', '61955556666'),
('32109876543', '71966667777'),
('43210987654', '81977778888'),
('54321098765', '91988889999'),
('65432109876', '61999990000'),
('76543210987', '71900001111'),
('87654321098', '81911112222'),
('98765432109', '91922223333');

INSERT INTO Pecas (id, lote, valor_unitario, quantidade, nome) VALUES
(1, 'F600', 350.0, 12, 'Câmera Xiaomi Redmi Note 10'),
(2, 'G700', 400.0, 18, 'Tela Asus ZenBook 14'),
(3, 'H800', 200.0, 25, 'Touchpad HP Pavilion 15'),
(4, 'I900', 450.0, 30, 'Bateria Lenovo ThinkPad X1'),
(5, 'J1000', 500.0, 20, 'Teclado Acer Swift 3'),
(6, 'K1100', 600.0, 15, 'Tela Microsoft Surface Laptop 4'),
(7, 'L1200', 700.0, 10, 'Câmera Huawei Mate 40 Pro'),
(8, 'M1300', 800.0, 8, 'Tela Moto G100'),
(9, 'N1400', 900.0, 5, 'Bateria Nokia 8.3'),
(10, 'O1500', 1000.0, 12, 'Teclado Toshiba Satellite Pro'),
(11, 'P1600', 1100.0, 10, 'Painel OLED Panasonic VIERA TX-55'),
(12, 'Q1700', 1200.0, 8, 'Alto-falante Philips Smart TV 4K');


INSERT INTO Marca (nome) VALUES
('Xiaomi'),
('Asus'),
('HP'),
('Lenovo'),
('Acer'),
('Microsoft'),
('Huawei'),
('Motorola'),
('Nokia'),
('Toshiba'),
('Panasonic'),
('Philips');

INSERT INTO Modelo (id_marca, nome) VALUES
((SELECT id FROM Marca WHERE nome = 'Xiaomi'), 'Redmi Note 10'),
((SELECT id FROM Marca WHERE nome = 'Asus'), 'ZenBook 14'),
((SELECT id FROM Marca WHERE nome = 'HP'), 'Pavilion 15'),
((SELECT id FROM Marca WHERE nome = 'Lenovo'), 'ThinkPad X1'),
((SELECT id FROM Marca WHERE nome = 'Acer'), 'Swift 3'),
((SELECT id FROM Marca WHERE nome = 'Microsoft'), 'Surface Laptop 4'),
((SELECT id FROM Marca WHERE nome = 'Huawei'), 'Mate 40 Pro'),
((SELECT id FROM Marca WHERE nome = 'Motorola'), 'Moto G100'),
((SELECT id FROM Marca WHERE nome = 'Nokia'), 'Nokia 8.3'),
((SELECT id FROM Marca WHERE nome = 'Toshiba'), 'Satellite Pro'),
((SELECT id FROM Marca WHERE nome = 'Panasonic'), 'VIERA TX-55'),
((SELECT id FROM Marca WHERE nome = 'Philips'), 'Smart TV 4K');

INSERT INTO Aparelho (id_modelo, tipo) VALUES
((SELECT id FROM Modelo WHERE nome = 'Redmi Note 10'), 'Celular'),
((SELECT id FROM Modelo WHERE nome = 'ZenBook 14'), 'Notebook'),
((SELECT id FROM Modelo WHERE nome = 'Pavilion 15'), 'Notebook'),
((SELECT id FROM Modelo WHERE nome = 'ThinkPad X1'), 'Notebook'),
((SELECT id FROM Modelo WHERE nome = 'Swift 3'), 'Notebook'),
((SELECT id FROM Modelo WHERE nome = 'Surface Laptop 4'), 'Notebook'),
((SELECT id FROM Modelo WHERE nome = 'Mate 40 Pro'), 'Celular'),
((SELECT id FROM Modelo WHERE nome = 'Moto G100'), 'Celular'),
((SELECT id FROM Modelo WHERE nome = 'Nokia 8.3'), 'Celular'),
((SELECT id FROM Modelo WHERE nome = 'Satellite Pro'), 'Notebook'),
((SELECT id FROM Modelo WHERE nome = 'VIERA TX-55'), 'Televisao'),
((SELECT id FROM Modelo WHERE nome = 'Smart TV 4K'), 'Televisao');

INSERT INTO Tipo_servico (nome, cpf_funcionario) VALUES
('Substituição de câmera', '65432109876'),
('Substituição de tela', '76543210987'),
('Troca de bateria', '65432109876'),
('Reparo de teclado', '09876543210'),
('Reparo de som', '76543210987'),
('Reparo de Wi-Fi', '65432109876'),
('Reinstalação do sistema operacional', '76543210987'),
('Troca de carregador', '87654321098'),
('Limpeza interna', '98765432109'),
('Atualização de firmware', '09876543210'),
('Reparo de placa-mãe', '10987654321'),
('Substituição de alto-falante', '21098765432');

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('67890123456', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Redmi Note 10') AND tipo = 'Celular'), 600.0, '6 dias', '2024-06-20', 'Problema com a câmera');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '65432109876', (SELECT id FROM Tipo_servico WHERE nome = 'Substituição de câmera'), '2024-06-20', '2024-06-25', '2024-06-27', 'Entregue', 600.0, 'Substituição da câmera');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 1, 1, 350.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('78901234567', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'ZenBook 14') AND tipo = 'Notebook'), 700.0, '8 dias', '2024-06-18', 'Tela não liga');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '76543210987', (SELECT id FROM Tipo_servico WHERE nome = 'Substituição de tela'), '2024-06-18', '2024-06-23', '2024-06-25', 'Pago', 700.0, 'Reparo da tela');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 2, 1, 400.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('89012345678', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Pavilion 15') AND tipo = 'Notebook'), 850.0, '9 dias', '2024-06-16', 'Problema com o touchpad');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '65432109876', (SELECT id FROM Tipo_servico WHERE nome = 'Troca de bateria'), '2024-06-16', '2024-06-21', '2024-06-23', 'Entregue', 850.0, 'Reparo do touchpad');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 3, 1, 200.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('90123456789', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'ThinkPad X1') AND tipo = 'Notebook'), 950.0, '10 dias', '2024-06-14', 'Problema com o sistema operacional');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '09876543210', (SELECT id FROM Tipo_servico WHERE nome = 'Reparo de teclado'), '2024-06-14', '2024-06-19', '2024-06-21', 'Cancelado', 950.0, 'Reinstalação do sistema operacional');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 4, 1, 450.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('01234567890', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Swift 3') AND tipo = 'Notebook'), 1100.0, '12 dias', '2024-06-12', 'Problema com a bateria');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '76543210987', (SELECT id FROM Tipo_servico WHERE nome = 'Reparo de som'), '2024-06-12', '2024-06-17', '2024-06-19', 'Pago', 1100.0, 'Troca da bateria');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 5, 1, 500.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('12345098765', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Surface Laptop 4') AND tipo = 'Notebook'), 1300.0, '14 dias', '2024-06-10', 'Problema com a tela');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '65432109876', (SELECT id FROM Tipo_servico WHERE nome = 'Reparo de Wi-Fi'), '2024-06-10', '2024-06-15', '2024-06-17', 'Entregue', 1300.0, 'Substituição da tela');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 6, 1, 600.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('23456109876', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Mate 40 Pro') AND tipo = 'Celular'), 1400.0, '15 dias', '2024-06-08', 'Problema com o som');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '76543210987', (SELECT id FROM Tipo_servico WHERE nome = 'Reinstalação do sistema operacional'), '2024-06-08', '2024-06-13', '2024-06-15', 'Pago', 1400.0, 'Reparo do som');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 7, 1, 700.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('34567210987', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Moto G100') AND tipo = 'Celular'), 1500.0, '16 dias', '2024-06-06', 'Problema com o Wi-Fi');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '87654321098', (SELECT id FROM Tipo_servico WHERE nome = 'Troca de carregador'), '2024-06-06', '2024-06-11', '2024-06-13', 'Entregue', 1500.0, 'Reparo do Wi-Fi');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 8, 1, 800.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('45678321098', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Nokia 8.3') AND tipo = 'Celular'), 1600.0, '17 dias', '2024-06-04', 'Problema com o carregador');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '98765432109', (SELECT id FROM Tipo_servico WHERE nome = 'Limpeza interna'), '2024-06-04', '2024-06-09', '2024-06-11', 'Cancelado', 1600.0, 'Troca do carregador');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 9, 1, 900.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('56789432109', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Satellite Pro') AND tipo = 'Notebook'), 1700.0, '18 dias', '2024-06-02', 'Problema com o teclado');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '09876543210', (SELECT id FROM Tipo_servico WHERE nome = 'Atualização de firmware'), '2024-06-02', '2024-06-07', '2024-06-09', 'Pago', 1700.0, 'Reparo do teclado');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 10, 1, 1000.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('67890543210', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'VIERA TX-55') AND tipo = 'Televisao'), 1800.0, '19 dias', '2024-06-01', 'Problema com a tela');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '10987654321', (SELECT id FROM Tipo_servico WHERE nome = 'Reparo de placa-mãe'), '2024-06-01', '2024-06-06', '2024-06-08', 'Entregue', 1800.0, 'Substituição da tela');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 11, 1, 1100.0);

INSERT INTO Orcamento (cpf_cliente, numero_serie_aparelho, valor, prazo, data, descricao_problema) VALUES
('78901654321', (SELECT numero_serie FROM Aparelho WHERE id_modelo = (SELECT id FROM Modelo WHERE nome = 'Smart TV 4K') AND tipo = 'Televisao'), 1900.0, '20 dias', '2024-05-30', 'Problema com o som');

SET @last_orcamento_id = LAST_INSERT_ID();
INSERT INTO Servico (id_orcamento, cpf_funcionario, tipo_servico, data_inicio, data_conclusao, data_conclusao_prevista, status, valor_total, descricao_solucao) VALUES
(@last_orcamento_id, '21098765432', (SELECT id FROM Tipo_servico WHERE nome = 'Substituição de alto-falante'), '2024-05-30', '2024-06-04', '2024-06-06', 'Pago', 1900.0, 'Reparo do som');

SET @last_servico_id = LAST_INSERT_ID();
INSERT INTO itensPecas (id_servico, id_peca, qtd, valor) VALUES
(@last_servico_id, 12, 1, 1200.0);