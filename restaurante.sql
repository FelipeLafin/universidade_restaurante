CREATE TABLE Produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    qtd INTEGER NOT NULL,
    validade DATE NOT NULL,
    preco FLOAT NOT NULL
);

CREATE TABLE Lanches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    lista_de_produtos VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL
    );

CREATE TABLE Compoe (
    id_lanche INTEGER,
    id_produto INTEGER,
    PRIMARY KEY (id_lanche, id_produto),
    FOREIGN KEY (id_lanche) REFERENCES Lanches(id),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id)
);

CREATE TABLE Receitas (
    passos VARCHAR(255) NOT NULL,
    id_lanche INTEGER,
    id_produto INTEGER,
    PRIMARY KEY (id_lanche, id_produto),
    FOREIGN KEY (id_lanche) REFERENCES Lanches(id),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id)
);

INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente1', 50, '2024-12-31', 5.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente2', 30, '2024-11-15', 12.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente3', 20, '2024-11-20', 15.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente4', 40, '2024-10-10', 3.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente5', 35, '2024-10-05', 4.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente6', 25, '2025-01-01', 6.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente7', 15, '2024-11-01', 10.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente8', 20, '2024-12-15', 8.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente9', 30, '2024-10-20', 2.00);
INSERT INTO Produtos (nome, qtd, validade, preco) VALUES ('Ingrediente10', 20, '2025-02-01', 5.00);

INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4, Ingrediente5, Ingrediente6', 'Produto1');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4, Ingrediente5', 'Produto2');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4', 'Produto3');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3', 'Produto4');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2', 'Produto5');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1', 'Produto6');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4, Ingrediente5, Ingrediente6, Ingrediente7', 'Produto7');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4, Ingrediente5, Ingrediente6, Ingrediente7, Ingrediente8', 'Produto8');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4, Ingrediente5, Ingrediente6, Ingrediente7, Ingrediente8, Ingrediente9', 'Produto9');
INSERT INTO Lanches (lista_de_produtos, nome) VALUES ('Ingrediente1, Ingrediente2, Ingrediente3, Ingrediente4, Ingrediente5, Ingrediente6, Ingrediente7, Ingrediente8, Ingrediente9, Ingrediente10', 'Produto10');

INSERT INTO Compoe (id_lanche, id_produto) VALUES (1, 1);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (1, 2);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (1, 3);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (1, 4);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (1, 5);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (1, 6);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (2, 1);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (2, 2);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (2, 3);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (2, 4);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (2, 5);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (3, 1);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (3, 2);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (3, 3);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (3, 4);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (4, 1);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (4, 2);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (4, 3);
INSERT INTO Compoe (id_lanche, id_produto) VALUES (5, 1);

INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4, Passo5, Passo6', 1, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4, Passo5', 2, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4', 3, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3', 4, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2', 5, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1', 6, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4, Passo5, Passo6, Passo7', 7, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4, Passo5, Passo6, Passo7, Passo8', 8, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4, Passo5, Passo6, Passo7, Passo8, Passo9', 9, 1);
INSERT INTO Receitas (passos, id_lanche, id_produto) VALUES ('Passo1, Passo2, Passo3, Passo4, Passo5, Passo6, Passo7, Passo8, Passo9, Passo10', 10, 1);