-- PARTE 1

-- Crie a tabela pessoa
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

-- Insira 15 registros na tabela pessoa
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Ana', 'Silva', 1, 'ana.silva@email.com', 'Feminino', 'São Paulo', 'BR', 3500.00),
('Bruno', 'Souza', 1, 'bruno.souza@email.com', 'Masculino', 'Rio de Janeiro', 'BR', 4200.50),
('Carla', 'Oliveira', 1, 'carla.oliveira@email.com', 'Feminino', 'Belo Horizonte', 'BR', 3900.00),
('Daniel', 'Santos', 0, 'daniel.santos@email.com', 'Masculino', 'Curitiba', 'BR', 2800.00),
('Eduarda', 'Costa', 1, 'eduarda.costa@email.com', 'Feminino', 'Porto Alegre', 'BR', 4100.00),
('Felipe', 'Pereira', 1, 'felipe.pereira@email.com', 'Masculino', 'Salvador', 'BR', 3700.00),
('Gabriela', 'Rodrigues', 1, 'gabriela.rodrigues@email.com', 'Feminino', 'Fortaleza', 'BR', 3600.00),
('Henrique', 'Almeida', 0, 'henrique.almeida@email.com', 'Masculino', 'Brasília', 'BR', 3300.00),
('Isabela', 'Fernandes', 1, 'isabela.fernandes@email.com', 'Feminino', 'Recife', 'BR', 4000.00),
('João', 'Lima', 1, 'joao.lima@email.com', 'Masculino', 'Manaus', 'BR', 3200.00),
('Karen', 'Martins', 1, 'karen.martins@email.com', 'Feminino', 'Belém', 'BR', 2950.00),
('Lucas', 'Barbosa', 1, 'lucas.barbosa@email.com', 'Masculino', 'Goiânia', 'BR', 3850.00),
('Marina', 'Ribeiro', 1, 'marina.ribeiro@email.com', 'Feminino', 'Campinas', 'BR', 4100.00),
('Nicolas', 'Carvalho', 0, 'nicolas.carvalho@email.com', 'Masculino', 'Natal', 'BR', 2700.00),
('Olivia', 'Moura', 1, 'olivia.moura@email.com', 'Feminino', 'Florianópolis', 'BR', 4300.00);

-- Insira um novo registro sem especificar o salário
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais) VALUES
('Pedro', 'Gomes', 1, 'pedro.gomes@email.com', 'Masculino', 'João Pessoa', 'BR')

-- Insira um novo registro com 'BRA'
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Quésia', 'Azevedo', 1, 'quesia.azevedo@email.com', 'Feminino', 'Maceió', 'BRA', 3100.00);

-- Insira uma pessoa somente com o sobrenome
INSERT INTO pessoa (sobrenome) VALUES
('Teixeira');

-- Insira outra pessoa sem especificar o codigo
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Rafael', 'Cunha', 1, 'rafael.cunha@email.com', 'Masculino', 'Vitória', 'BR', 1500.00);

-- Insira uma pessoa com o mesmo email
INSERT INTO pessoa (nome, sobrenome, ativo, email, genero, cidade, pais, salario) VALUES
('Rafa', 'Cunhal', 1, 'rafael.cunha@email.com', 'Masculino', 'Vitória', 'BR', 1500.00);


-- PARTE 2

-- Deleta os registros com código ímpar
DELETE FROM pessoa WHERE codigo % 2 = 1;

-- Atualize o sobrenome para NULL
UPDATE pessoa SET sobrenome = NULL

-- Atualize o salário aumentando 10% para os códigos entre 5 e 9
UPDATE pessoa SET salario = salario * 1.10 WHERE codigo >= 5 AND codigo <= 9;

-- Atualiza o email para o domínio atitus.edu.br onde o domínio é email.com
UPDATE pessoa SET email = '%@atitus.edu.br' WHERE email LIKE '%@email.com';

-- Deleta os registros com email terminando em .com.br
DELETE FROM pessoa WHERE email LIKE '%.com.br';

-- Atualiza o campo ativo para falso (0) onde o código está entre 2 e 4 ou entre 10 e 13
UPDATE pessoa SET ativo = 0 WHERE codigo >= 2 AND codigo <= 4 OR codigo >= 10 AND codigo <=13
