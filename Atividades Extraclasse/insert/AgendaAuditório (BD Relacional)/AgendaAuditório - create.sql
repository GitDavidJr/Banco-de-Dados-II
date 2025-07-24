-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

DROP DATABASE IF EXISTS AgendaAuditorio;

CREATE DATABASE AgendaAuditorio;
USE AgendaAuditorio;

CREATE TABLE Equipamento (
tombo TINYINT UNSIGNED PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
status ENUM ("disponível", "não disponível") NOT NULL,
dataHoraAtualizacaoStatus DATETIME NOT NULL,
codAdm TINYINT UNSIGNED NOT NULL
);

CREATE TABLE EquipamentoReservado (
codReserva SMALLINT UNSIGNED NOT NULL,
tombo TINYINT UNSIGNED NOT NULL,
PRIMARY KEY(tombo,codReserva),
FOREIGN KEY(tombo) REFERENCES Equipamento (tombo)
);

CREATE TABLE ReservaAuditorio (
codReserva SMALLINT UNSIGNED PRIMARY KEY,
motivo VARCHAR(200) NOT NULL,
horaFinal TIME NOT NULL,
horaInicial TIME NOT NULL,
status ENUM("solicitado", "reservado", "cancelado") NOT NULL,
data DATE NOT NULL,
dataHoraSolicitacao DATETIME NOT NULL,
siape TINYINT UNSIGNED
);

CREATE TABLE Servidor (
siape TINYINT UNSIGNED PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
email VARCHAR(200) NOT NULL
);

CREATE TABLE ServidorTelefone (
siape TINYINT UNSIGNED,
telefone CHAR(11),
PRIMARY KEY(telefone,siape),
FOREIGN KEY(siape) REFERENCES Servidor (siape)
);

CREATE TABLE Administrador (
codAdm TINYINT UNSIGNED PRIMARY KEY,
nome VARCHAR(200) NOT NULL, 
login VARCHAR(20) NOT NULL,
senha VARCHAR(20) NOT NULL
);

ALTER TABLE Equipamento ADD FOREIGN KEY(codAdm) REFERENCES Administrador (codAdm);
ALTER TABLE EquipamentoReservado ADD FOREIGN KEY(codReserva) REFERENCES ReservaAuditorio (codReserva);
ALTER TABLE ReservaAuditorio ADD FOREIGN KEY(siape) REFERENCES Servidor (siape);