CREATE TABLE disciplina (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL
);

INSERT INTO disciplina (nome) VALUES ('Banco de Dados');

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    ativo BOOLEAN DEFAULT 1,
    email VARCHAR(200) UNIQUE,
    genero VARCHAR(20),
    cidade VARCHAR(50),
    pais VARCHAR(2),
    salario FLOAT CHECK (salario >= 0)
);

CREATE TABLE avaliacao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pessoa_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    categoria VARCHAR(2) CHECK (categoria IN ('P1', 'P2', 'E1', 'E2')),
    nota FLOAT CHECK (nota >= 0 AND nota <= 10),
    FOREIGN KEY (pessoa_id) REFERENCES alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id)
);

INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (2, 1, 'P1', 8.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (2, 1, 'P2', 7.0);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (2, 1, 'E1', 9.0);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (2, 1, 'E2', 8.0);

INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (3, 1, 'P1', 6.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (3, 1, 'P2', 7.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (3, 1, 'E1', 8.0);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (3, 1, 'E2', 7.0);

INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (5, 1, 'P1', 9.0);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (5, 1, 'P2', 8.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (5, 1, 'E1', 9.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (5, 1, 'E2', 9.0);

INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (6, 1, 'P1', 7.0);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (6, 1, 'P2', 6.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (6, 1, 'E1', 7.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (6, 1, 'E2', 8.0);

INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (7, 1, 'P1', 8.0);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (7, 1, 'P2', 7.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (7, 1, 'E1', 8.5);
INSERT INTO avaliacao (pessoa_id, disciplina_id, categoria, nota) VALUES (7, 1, 'E2', 9.0);

SELECT
    pessoa_id,
    (0.7 * (CASE WHEN categoria = 'P1' THEN nota ELSE 0 END) + 0.3 * (CASE WHEN categoria = 'E1' THEN nota ELSE 0 END)) AS G1,
    (0.7 * (CASE WHEN categoria = 'P2' THEN nota ELSE 0 END) + 0.3 * (CASE WHEN categoria = 'E2' THEN nota ELSE 0 END)) AS G2,
    ((0.7 * (CASE WHEN categoria = 'P1' THEN nota ELSE 0 END) + 0.3 * (CASE WHEN categoria = 'E1' THEN nota ELSE 0 END)) + (0.7 * (CASE WHEN categoria = 'P2' THEN nota ELSE 0 END) + 0.3 * (CASE WHEN categoria = 'E2' THEN nota ELSE 0 END))) / 2 AS Final
FROM avaliacao