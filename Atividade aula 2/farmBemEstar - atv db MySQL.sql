CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
ativa BOOLEAN,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Medicamentos", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Medicamentos controlados", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Higiene", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Beleza", true);

INSERT INTO tb_categorias (nome, ativa) 
VALUES ("Suplemento", true);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(500),
quantidade INT,
preco DECIMAL(8,2),  -- 000000.00
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Buscopan", "reduz cólicas", 140, 20, 1);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Paroxetina", "antidepressivo", 122, 50, 2);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Desodorante Dove", "banho", 190, 15, 3);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Esmalte Impala", "esmalte", 144, 5, 4);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Centrum", "vitamina", 111, 150, 5);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Dorflex", "relaxante muscular", 100, 20, 1);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Topiramato", "estabiliza humor", 177, 60, 2);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Shampoo Pantene", "cabelos", 124, 20, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome="beleza";


