create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT(5) AUTO_INCREMENT,
race VARCHAR(40) NOT NULL,
abilities VARCHAR(40) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (race, abilities) VALUES("Dwarf", "Berserker");
INSERT INTO tb_classes (race, abilities) VALUES("Elf", "Ranged");
INSERT INTO tb_classes (race, abilities) VALUES("Orc", "Rage"); 
INSERT INTO tb_classes (race, abilities) VALUES("Human", "Tenacity"); 
INSERT INTO tb_classes (race, abilities) VALUES("Mage", "Spells");
INSERT INTO tb_classes (race, abilities) VALUES("Hobbit", "Invisibility");
INSERT INTO tb_classes (race, abilities) VALUES("Evil Magician", "Spells");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
attack INT,
defense INT,
magic INT,
speed INT,
equip VARCHAR(100),
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Gimli", 2500, 3500, 1000, 500, "Axe", 1);
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Legolas", 3000, 1000, 500, 3000, "Bow", 2);
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Lurtz", 3500, 1500, 500, 2000, "Hammer", 3); 
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Aragorn", 2500, 2000, 1000, 2000, "Sword", 4); 
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Gandalf", 1000, 1000, 4000, 1500, "Wand", 5);
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Frodo", 1500, 2000, 500, 3500, "Ring", 6);
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Sauron", 7500, 7500, 7500, 7500, "Full Set", 7);
INSERT INTO tb_personagens (nome, attack, defense, magic, speed, equip, classes_id) VALUES("Samwise", 1500, 2500, 500, 3000, "Sword", 6);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE attack > 2000;

SELECT * FROM tb_personagens WHERE attack BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
-- Vou inserir mais um select, pois o exercício pediu uma letra que nenhum dos meus personagens possui
SELECT * FROM tb_personagens WHERE nome LIKE "%o%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens RIGHT JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.abilities = "Ranged";
