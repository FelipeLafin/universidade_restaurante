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

INSERT INTO Sala (turno, nome) VALUES ('M', 101);
INSERT INTO Sala (turno, nome) VALUES ('M', 102);
INSERT INTO Sala (turno, nome) VALUES ('M', 103);
INSERT INTO Sala (turno, nome) VALUES ('T', 201);
INSERT INTO Sala (turno, nome) VALUES ('T', 202);
INSERT INTO Sala (turno, nome) VALUES ('T', 203);
INSERT INTO Sala (turno, nome) VALUES ('N', 301);
INSERT INTO Sala (turno, nome) VALUES ('N', 302);
INSERT INTO Sala (turno, nome) VALUES ('N', 303);
INSERT INTO Sala (turno, nome) VALUES ('N', 304);

INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Matemática', 30, 1);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Física', 25, 2);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Química', 20, 3);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Biologia', 15, 4);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('História', 40, 5);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Geografia', 35, 6);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Literatura', 50, 7);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Filosofia', 45, 8);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Sociologia', 30, 9);
INSERT INTO Disciplina (nome, capacidade, sala_id) VALUES ('Inglês', 60, 10);

INSERT INTO Professor (nome, CPF) VALUES ('Professor', '12345678901');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '23456789012');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '34567890123');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '45678901234');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '56789012345');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '67890123456');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '78901234567');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '89012345678');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '90123456789');
INSERT INTO Professor (nome, CPF) VALUES ('Professor', '01234567890');

INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '11111111111');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '22222222222');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '33333333333');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '44444444444');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '55555555555');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '66666666666');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '77777777777');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '88888888888');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '99999999999');
INSERT INTO Aluno (nome, CPF) VALUES ('Aluno', '00000000000');

INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (1, 1);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (1, 2);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (2, 1);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (2, 3);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (3, 2);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (3, 4);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (4, 3);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (4, 5);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (5, 4);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (5, 6);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (6, 5);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (6, 7);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (7, 6);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (7, 8);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (8, 7);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (8, 9);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (9, 8);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (9, 10);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (10, 9);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (10, 10);

INSERT INTO Ministra (professor_id, disciplina_id) VALUES (1, 1);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (2, 2);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (3, 3);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (4, 4);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (5, 5);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (6, 6);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (7, 7);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (8, 8);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (9, 9);
INSERT INTO Ministra (professor_id, disciplina_id) VALUES (10, 10);

ALTER TABLE Professor ADD COLUMN salario REAL;

UPDATE Professor SET salario = 1000.00

ALTER TABLE Aluno ADD COLUMN sobrenome VARCHAR(100);

UPDATE Aluno SET sobrenome = 'Um' WHERE id = 1;
UPDATE Aluno SET sobrenome = 'Dois' WHERE id = 2;
UPDATE Aluno SET sobrenome = 'Tres' WHERE id = 3;
UPDATE Aluno SET sobrenome = 'Quatro' WHERE id = 4;
UPDATE Aluno SET sobrenome = 'Cinco' WHERE id = 5;
UPDATE Aluno SET sobrenome = 'Seis' WHERE id = 6;
UPDATE Aluno SET sobrenome = 'Sete' WHERE id = 7;
UPDATE Aluno SET sobrenome = 'Oito' WHERE id = 8;
UPDATE Aluno SET sobrenome = 'Nove' WHERE id = 9;
UPDATE Aluno SET sobrenome = 'Dez' WHERE id = 10;

UPDATE Professor SET salario = salario + 500 WHERE CPF LIKE '%5' OR CPF LIKE '%3' OR CPF LIKE '%8';

INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (2, 2);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (3, 1);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (4, 2);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (5, 1);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (6, 3);
INSERT INTO Matriculado (aluno_id, disciplina_id) VALUES (7, 4);

DELETE FROM Disciplina WHERE capacidade > 10 AND capacidade < 20;

ALTER TABLE Sala ADD COLUMN tamanho INTEGER;

UPDATE Sala SET tamanho = 15 WHERE id = 1;
UPDATE Sala SET tamanho = 25 WHERE id = 2;
UPDATE Sala SET tamanho = 55 WHERE id = 3;
UPDATE Sala SET tamanho = 60 WHERE id = 4;
UPDATE Sala SET tamanho = 18 WHERE id = 5;
UPDATE Sala SET tamanho = 35 WHERE id = 6;
UPDATE Sala SET tamanho = 10 WHERE id = 7;
UPDATE Sala SET tamanho = 70 WHERE id = 8;
UPDATE Sala SET tamanho = 45 WHERE id = 9;
UPDATE Sala SET tamanho = 80 WHERE id = 10;

ALTER TABLE Sala ADD COLUMN Tipo VARCHAR(20);

UPDATE Sala SET Tipo = 'GRANDE' WHERE tamanho > 50;
UPDATE Sala SET Tipo = 'PEQUENA' WHERE tamanho < 20;