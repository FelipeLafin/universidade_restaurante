-- Retorne todas as pessoas ordenado pelo salário, do maior para o menor
SELECT * FROM pessoa ORDER BY salario DESC;

-- Retorne quem tem salário > 1200
SELECT * FROM pessoa WHERE salario > 1200;

-- Traga somente as pessoas com email ‘@atitus.edu.br’
SELECT * FROM pessoa WHERE email LIKE '%@atitus.edu.br';

-- Retorne somente pessoas do gênero Feminino
    -- > Se os dados foram cadastrados como M/F, traga os valores por extenso
SELECT * FROM pessoa WHERE genero = 'Feminino';

-- Traga a coluna Codigo e uma nova coluna NomeCompleto
SELECT codigo, nome || ' ' || sobrenome AS NomeCompleto FROM pessoa;

-- Retorne as pessoas com sobrenome ‘Silva’ que moram no pais ‘BR’
SELECT * FROM pessoa WHERE sobrenome = 'Silva' AND pais = 'BR';

-- Retorne o Código da última pessoa cadastrada
SELECT codigo FROM pessoa ORDER BY codigo DESC LIMIT 1;

-- Selecione todas as cidades distintas cadastradas
SELECT DISTINCT cidade FROM pessoa;