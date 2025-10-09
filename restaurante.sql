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

INSERT INTO Produtos (nome, qtd, validade, preco) VALUES
('Pão de Forma', 50, '2024-12-31', 5.00),
('Presunto', 30, '2024-11-15', 12.00),
('Queijo', 20, '2024-11-20', 15.00),
('Alface', 40, '2024-10-10', 3.00),
('Tomate', 35, '2024-10-05', 4.00)