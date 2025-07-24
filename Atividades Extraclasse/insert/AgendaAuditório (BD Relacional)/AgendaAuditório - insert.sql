-- ====================
-- Tabela Administrador
-- ====================
INSERT INTO Administrador (codAdm, nome, login, senha) VALUES
('1', 'Pablo Freire Matos', 'pablo', 'matos'),
('2', 'Liojes de Oliveira Carneiro', 'Liojes', 'Carneiro');

-- ===============
-- Tabela Servidor
-- ===============
INSERT INTO Servidor (siape, nome, email) VALUES
('1', 'Marcélia Porto Rocha', 'murilo@gmail.com'),
('2', 'Gutemberg Júnior', 'gutemberg@hotmail.com'),
('3', 'Paulo Zainer de Oliveira Barbosa', 'paulo@gmail.com'),
('4', 'José Roberto Azevedo', 'zeazevedo@gmail.com'),
('5', 'Carlos Matheus Rodrigues', 'carmatro@gmail.com');

-- ===============
-- Tabela Telefone
-- ===============
INSERT INTO ServidorTelefone (siape, telefone) VALUES
('1', '77999984511'),
('1', '77988112622'),
('2', '77998552233'),
('2', '77991657844'),
('2', '77988554355'),
('3', '77988445566');
	
-- =======================
-- Tabela ReservaAuditorio
-- =======================
INSERT INTO ReservaAuditorio (codReserva, motivo, data, status, horaInicial, horaFinal, dataHoraSolicitacao, siape) VALUES
(1, 'Reserva Pessoal', '2019-10-05', 'reservado', '10:00', '12:00',  curdate(), 1),
(2, 'Reserva Pessoal', '2019-10-05', 'reservado', '14:00', '18:00', curdate(), 1),
(3, 'Reserva Pessoal', '2019-10-06', 'reservado', '08:00', '12:00', curdate(), 1),
(4, 'Reserva Pessoal', '2019-10-06', 'reservado', '14:00', '18:00', now(), 2),
(5, 'Reserva Pessoal', '2019-10-07', 'reservado', '08:00', '18:00', now(), 2),
(6, 'Reserva Pessoal', '2019-10-10', 'solicitado', '08:00', '11:00', now(), NULL),
(7, 'Reserva Pessoal', '2019-10-09', 'reservado', '08:00', '10:00', now(), 4),
(8, 'Reserva Pessoal', '2019-10-12', 'reservado', '08:00', '10:00', now(), 4),
(9, 'Reserva Pessoal', '2019-10-13', 'reservado', '08:00', '10:00', now(), 4),
(10, 'Reserva Pessoal', '2019-10-14', 'reservado', '08:00', '10:00', now(), 4),
(11, 'Reserva Pessoal', '2019-10-15', 'reservado', '08:00', '10:00', now(), 4),
(12, 'Reserva Pessoal', '2019-10-19', 'reservado', '14:00', '18:00', now(), 5),
(13, 'Reserva Pessoal', '2019-10-20', 'reservado', '14:00', '18:00', now(), 5),
(14, 'Reserva Pessoal', '2019-10-21', 'reservado', '14:00', '18:00', now(), 5),
(15, 'Reserva Pessoal', '2019-10-22', 'reservado', '14:00', '18:00', now(), 5),
(16, 'Reserva Pessoal', '2019-10-22', 'reservado', '14:00', '18:00', now(), 5),
(17, 'Reserva Pessoal', '2019-10-23', 'reservado', '13:30', '15:30', now(), 1);

-- ==================
-- Tabela Equipamento
-- ==================
INSERT INTO Equipamento (tombo, nome, status, dataHoraAtualizacaoStatus, codAdm) VALUES
(1, 'Data Show', 'disponível', now(), 1),
(2, 'Lousa Digital', 'disponível', now(), 1),
(3, 'Microfone', 'disponível', now(), 1),
(4, 'Caixa de Som', 'não disponível', now(), 1),
(5, 'Quadro Branco', 'não disponível', now(), 2),
(6, 'Notebook', 'disponível', now(), 1);

-- ===========================
-- Tabela EquipamentoReservado
-- ===========================
INSERT INTO EquipamentoReservado (codReserva, tombo) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(7, 1),
(8, 2),
(12, 1),
(13, 2),
(14, 3),
(17, 6);
