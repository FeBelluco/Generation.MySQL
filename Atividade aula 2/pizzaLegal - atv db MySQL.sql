CREATE DATABASE db_pizza_legal;

USE db_pizza_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR(50) NOT NULL,
tipo VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (tamanho, tipo) VALUES("Grande", "Salgada"); 
INSERT INTO tb_categorias (tamanho, tipo) VALUES("Grande", "Doce");
INSERT INTO tb_categorias (tamanho, tipo) VALUES("Media", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo) VALUES("Media", "Doce");
INSERT INTO tb_categorias (tamanho, tipo) VALUES("Broto", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo) VALUES("Broto", "Doce");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_pizzas
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
borda VARCHAR(10) NOT NULL,
promocao VARCHAR(10) NOT NULL,
opcionais VARCHAR(10) NOT NULL,
preco DECIMAL(4,2),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Mozzarella", "sim", "sim", "sim", 49.99, 6);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Mozzarella", "sim", "sim", "sim", 39.99, 4);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Mozzarella", "sim", "nao", "sim", 19.99, 2);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Brigadeiro", "sim", "sim", "sim", 39.99, 5);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Brigadeiro", "sim", "sim", "sim", 29.99, 3);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Brigadeiro", "sim", "nao", "nao", 19.99, 1);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Presunto Di Parma", "sim", "sim", "sim", 69.99, 6);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Presunto Di Parma", "sim", "sim", "sim", 49.99, 4);

INSERT INTO tb_pizzas (nome, borda, promocao, opcionais, preco, categorias_id)
VALUES ("Napoletana Originale", "nao", "nao", "nao", 35.90, 2);

-- Visualiza todos os dados da tabela tb_pizzas
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";



