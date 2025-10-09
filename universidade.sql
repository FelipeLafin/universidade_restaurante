-- SQLite
CREATE TABLE Aluno (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL
);

CREATE TABLE Disciplina (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    capacidade INTEGER NOT NULL,
    sala_id INTEGER NOT NULL,
    FOREIGN KEY (sala_id) REFERENCES Sala(id)
);

CREATE TABLE Sala (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    turno VARCHAR(1) NOT NULL,
    nome INTEGER NOT NULL,
    UNIQUE(turno, nome)
);

CREATE TABLE Matriculado (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    aluno_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplina(id)
);

CREATE TABLE Ministra (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    professor_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES Professor(id),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplina(id)
);

CREATE TABLE Professor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL
);

INSERT INTO Sala (turno, nome) VALUES
('M', 101),
('M', 102),
('T', 201),
('T', 202),
('N', 301);

INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES
('Matemática', 30, 1),
('Física', 25, 2),
('Química', 20, 3),
('Biologia', 15, 4),
('História', 40, 5)