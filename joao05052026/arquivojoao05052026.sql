CREATE SCHEMA IF NOT EXISTS mydb;
SET search_path TO mydb;

CREATE TABLE Medico (
    CRM INT PRIMARY KEY,
    nome_med VARCHAR(45),
    ender_med VARCHAR(45),
    cidade_med VARCHAR(45),
    uf_med CHAR(2)
);

CREATE TABLE Paciente (
    cod_pac INT PRIMARY KEY,
    nome_pac VARCHAR(45),
    ender_pac VARCHAR(45),
    cidade_pac VARCHAR(45),
    uf_pac CHAR(2),
    fone_pac VARCHAR(15)
);

CREATE TABLE FoneMedico (
    Medico_CRM INT NOT NULL,
    fone VARCHAR(15) NOT NULL,
    PRIMARY KEY (Medico_CRM, fone),
    FOREIGN KEY (Medico_CRM) REFERENCES Medico(CRM)
);

CREATE TABLE Especialidade (
    codesp INT PRIMARY KEY,
    especialidade VARCHAR(45)
);

CREATE TABLE Consulta (
    data DATE NOT NULL,
    hora TIME NOT NULL,
    Medico_CRM INT NOT NULL,
    Paciente_cod_pac INT NOT NULL,
    historico VARCHAR(100),
    PRIMARY KEY (data, hora, Medico_CRM, Paciente_cod_pac),
    FOREIGN KEY (Medico_CRM) REFERENCES Medico(CRM),
    FOREIGN KEY (Paciente_cod_pac) REFERENCES Paciente(cod_pac)
);

CREATE TABLE EspMedico (
    Medico_CRM INT NOT NULL,
    Especialidade_codesp INT NOT NULL,
    PRIMARY KEY (Medico_CRM, Especialidade_codesp),
    FOREIGN KEY (Medico_CRM) REFERENCES Medico(CRM),
    FOREIGN KEY (Especialidade_codesp) REFERENCES Especialidade(codesp)
);



INSERT INTO Medico (CRM, nome_med, ender_med, cidade_med, uf_med)
VALUES
(1000, 'Maria das Dores', 'Rua das Acacias', 'Chapecó', 'SC'),
(1001, 'João da Silva', 'Rua dos Coqueiros', 'Xaxim', 'SC'),
(1002, 'Ana Paula Padrão', 'Rua São Paulo', 'Chapecó', 'SC'),
(1003, 'Flavio Bohr', 'Rua São João', 'Xanxerê', 'SC');

INSERT INTO Paciente (cod_pac, nome_pac, ender_pac, cidade_pac, uf_pac, fone_pac)
VALUES
(1, 'Maria Ana Soares', 'Av. Getulio Vargas', 'Chapecó', 'SC', '32388888'),
(2, 'Carlos Abrahao', 'Av. Fernando Machado', 'Chapecó', 'SC', '3234598'),
(3, 'Pedro Pereira', 'Rua do Comercio', 'Xaxim', 'SC', '3222020');

INSERT INTO Especialidade (codesp, especialidade)
VALUES
(100, 'Otorrinolaringologista'),
(101, 'Ortopedista'),
(102, 'Pediatra'),
(103, 'Gastroenterologista'),
(104, 'Cirurgião'),
(105, 'Clínico Geral');

INSERT INTO FoneMedico (Medico_CRM, fone)
VALUES
(1000, '99875665'),
(1001, '98766060'),
(1001, '99972309'),
(1002, '3232120'),
(1003, '3249087');

INSERT INTO EspMedico (Medico_CRM, Especialidade_codesp)
VALUES
(1000, 105), -- Clínico Geral
(1001, 101), -- Ortopedista
(1002, 102), -- Pediatra
(1003, 103); -- Gastroenterologista

INSERT INTO Consulta
(data, hora, historico, Medico_CRM, Paciente_cod_pac)
VALUES
('2000-01-05', '14:00', 'Fratura de omoplata', 1001, 1),
('2000-05-30', '09:00', 'Refluxo', 1002, 3),
('2000-11-10', '13:15', 'Pé direito quebrado', 1001, 1),
('2000-11-22', '08:00', 'Apresenta dores de cabeça', 1000, 1);



