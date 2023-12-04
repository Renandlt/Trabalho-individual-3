Create database Resilia;
use Resilia;
-- Criação da tabela Empresas
CREATE TABLE Empresas (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Áreas
CREATE TABLE Áreas (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Tecnologias
CREATE TABLE Tecnologias (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_area INT,
    FOREIGN KEY (id_area) REFERENCES Áreas(id)
);

-- Criação da tabela Tecnologias_Empresas
CREATE TABLE Tecnologias_Empresas (
    id_empresa INT,
    id_tecnologia INT,
    PRIMARY KEY (id_empresa, id_tecnologia),
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id),
    FOREIGN KEY (id_tecnologia) REFERENCES Tecnologias(id)
);

-- Criação da tabela Colaboradores
CREATE TABLE Colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id)
);

-- Inserção de alguns registros de exemplo
INSERT INTO Áreas (id, nome) VALUES
    (1, 'Web Development'),
    (2, 'Data'),
    (3, 'Marketing');

INSERT INTO Empresas (id, nome) VALUES
    (1, 'Empresa A'),
    (2, 'Empresa B');

INSERT INTO Tecnologias (id, nome, id_area) VALUES
    (1, 'Tecnologia 1', 1),
    (2, 'Tecnologia 2', 2),
    (3, 'Tecnologia 3', 3);

INSERT INTO Tecnologias_Empresas (id_empresa, id_tecnologia) VALUES
    (1, 1),
    (1, 2),
    (2, 3);

INSERT INTO Colaboradores (id, nome, id_empresa) VALUES
    (1, 'Colaborador 1', 1),
    (2, 'Colaborador 2', 2);

-- Verificação dos dados inseridos
SELECT * FROM Empresas;
SELECT * FROM Áreas;
SELECT * FROM Tecnologias;
SELECT * FROM Tecnologias_Empresas;
SELECT * FROM Colaboradores;
