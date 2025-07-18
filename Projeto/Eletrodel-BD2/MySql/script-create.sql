/* esquema-logico: */

CREATE TABLE Cliente (
    cpf VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    complemento VARCHAR(100),
    numero INT UNSIGNED NOT NULL,
    cep VARCHAR(100) NOT NULL
);

CREATE TABLE Orcamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf_cliente VARCHAR(11),
    numero_serie_aparelho INTEGER UNSIGNED,
    valor DECIMAL(10,2) UNSIGNED NOT NULL,
    prazo VARCHAR(100) NOT NULL,
    data DATE,
    descricao_problema VARCHAR(100) NOT NULL
);

CREATE TABLE Aparelho (
    numero_serie INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_modelo INT,
    tipo ENUM('Televisao', 'Celular', 'Notebook')
);

CREATE TABLE Modelo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_marca INT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Marca (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_orcamento INT,
    cpf_funcionario VARCHAR(11),
    tipo_servico INT,
    data_inicio DATE,
    data_conclusao DATE,
    data_conclusao_prevista DATE,
    status ENUM('Pendente', 'Pago', 'Cancelado', 'Enviado', 'Entregue') NOT NULL,
    valor_total DECIMAL(10,2) UNSIGNED NOT NULL,
    descricao_solucao VARCHAR(100)
);

CREATE TABLE Pecas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lote VARCHAR(30),
    valor_unitario DECIMAL(10,2) UNSIGNED NOT NULL,
    quantidade SMALLINT UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Funcionario (
    cpf VARCHAR(11) PRIMARY KEY,
    cargo VARCHAR(100) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Tipo_servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf_funcionario VARCHAR(11),
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE telefone_cliente (
    cpf_cliente VARCHAR(11),
    telefone VARCHAR(20),
    PRIMARY KEY (cpf_cliente, telefone)
);

CREATE TABLE telefone_funcionario (
    cpf_funcionario VARCHAR(11),
    telefone VARCHAR(20),
    PRIMARY KEY (cpf_funcionario, telefone)
);

CREATE TABLE itensPecas (
    id_servico INT AUTO_INCREMENT,
    id_peca INT,
    qtd SMALLINT UNSIGNED NOT NULL,
    valor DECIMAL(10,2) UNSIGNED NOT NULL,
    PRIMARY KEY (id_servico, id_peca)
);
 
ALTER TABLE Orcamento ADD CONSTRAINT FK_Orcamento_2
    FOREIGN KEY (cpf_cliente)
    REFERENCES Cliente (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE Orcamento ADD CONSTRAINT FK_Orcamento_3
    FOREIGN KEY (numero_serie_aparelho)
    REFERENCES Aparelho (numero_serie)
    ON DELETE RESTRICT;
 
ALTER TABLE Aparelho ADD CONSTRAINT FK_Aparelho_2
    FOREIGN KEY (id_modelo)
    REFERENCES Modelo (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Modelo ADD CONSTRAINT FK_Modelo_2
    FOREIGN KEY (id_marca)
    REFERENCES Marca (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Servico ADD CONSTRAINT FK_Servico_2
    FOREIGN KEY (id_orcamento)
    REFERENCES Orcamento (id)
    ON DELETE CASCADE;
 
ALTER TABLE Servico ADD CONSTRAINT FK_Servico_3
    FOREIGN KEY (cpf_funcionario)
    REFERENCES Funcionario (cpf)
    ON DELETE CASCADE;
 
ALTER TABLE Servico ADD CONSTRAINT FK_Servico_4
    FOREIGN KEY (tipo_servico)
    REFERENCES Tipo_servico (id)
    ON DELETE RESTRICT;
 
 
ALTER TABLE Tipo_servico ADD CONSTRAINT FK_Tipo_servico_2
    FOREIGN KEY (cpf_funcionario)
    REFERENCES Funcionario (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE telefone_cliente ADD CONSTRAINT FK_telefone_cliente_2
    FOREIGN KEY (cpf_cliente)
    REFERENCES Cliente (cpf);
 
ALTER TABLE telefone_funcionario ADD CONSTRAINT FK_telefone_funcionario_2
    FOREIGN KEY (cpf_funcionario)
    REFERENCES Funcionario (cpf);
 
ALTER TABLE itensPecas ADD CONSTRAINT FK_itensPecas_1
    FOREIGN KEY (id_servico)
    REFERENCES Servico (id);
 
ALTER TABLE itensPecas ADD CONSTRAINT FK_itensPecas_2
    FOREIGN KEY (id_peca)
    REFERENCES Pecas (id);