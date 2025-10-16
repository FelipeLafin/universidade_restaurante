CREATE TABLE pessoa (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    ativo BOOLEAN DEFAULT 1,
    email VARCHAR(200) UNIQUE,
    genero VARCHAR(20),
    cidade VARCHAR(50),
    pais VARCHAR(2),
    salario FLOAT CHECK (salario >= 0)
);

INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Um', 1, 'pessoa1@gmail.com', 'Feminino', 'São Paulo', 'BR', 3500.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Dois', 1, 'pessoa2@gmail.com', 'Masculino', 'Rio de Janeiro', 'BR', 4200.50);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Tres', 1, 'pessoa3@gmail.com', 'Feminino', 'Belo Horizonte', 'BR', 3900.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Quatro', 0, 'pessoa4@gmail.com', 'Masculino', 'Curitiba', 'BR', 2800.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Cinco', 1, 'pessoa5@gmail.com', 'Feminino', 'Porto Alegre', 'BR', 4100.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Seis', 1, 'pessoa6@gmail.com', 'Masculino', 'Salvador', 'BR', 3700.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Sete', 1, 'pessoa7@gmail.com', 'Feminino', 'Fortaleza', 'BR', 3600.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Oito', 0, 'pessoa8@gmail.com', 'Masculino', 'Brasília', 'BR', 3300.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Nove', 1, 'pessoa9@gmail.com', 'Feminino', 'Recife', 'BR', 4000.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Dez', 1, 'pessoa10@gmail.com', 'Masculino', 'Manaus', 'BR', 3200.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Onze', 1, 'pessoa11@gmail.com', 'Feminino', 'Belém', 'BR', 2950.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Doze', 1, 'pessoa12@gmail.com', 'Masculino', 'Goiânia', 'BR', 3850.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Treze', 1, 'pessoa13@gmail.com', 'Feminino', 'Campinas', 'BR', 4100.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Quatorze', 0, 'pessoa14@gmail.com', 'Masculino', 'Natal', 'BR', 2700.00);
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES ('Pessoa', 'Quinze', 1, 'pessoa15@gmail.com', 'Feminino', 'Florianópolis', 'BR', 4300.00);

INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais) VALUES
('Pessoa', 'Dezesseis', 1, 'pessoa16@gmail.com', 'Masculino', 'João Pessoa', 'BR');

INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Pessoa', 'Dezessete', 1, 'pessoa17@gmail.com', 'Feminino', 'Maceió', 'BRA', 3100.00);

INSERT INTO pessoa (sobrenome) VALUES
('Teixeira');

INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Pessoa', 'Dezoito', 1, 'pessoa18@gmail.com', 'Masculino', 'Vitória', 'BR', 1500.00);

INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Pessoa', 'Dezenove', 1, 'pessoa19@gmail.com', 'Masculino', 'Vitória', 'BR', 1500.00);

DELETE FROM pessoa WHERE codigo % 2 = 1;

UPDATE pessoa SET sobrenome = NULL;

UPDATE pessoa SET salario = salario * 1.10 WHERE codigo >= 5 AND codigo <= 9;

UPDATE pessoa SET email = nome || sobrenome || '@atitus.edu.br' WHERE email LIKE '%@gmail.com';

DELETE FROM pessoa WHERE email LIKE '%.com.br';

UPDATE pessoa SET ativo = 0 WHERE codigo >= 2 AND codigo <= 4 OR codigo >= 10 AND codigo <=13;

SELECT * FROM pessoa;