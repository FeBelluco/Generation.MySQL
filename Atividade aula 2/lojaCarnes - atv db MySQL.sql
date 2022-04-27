-- MySQL Script generated by MySQL Workbench
-- Tue Apr 26 22:59:12 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cidade_das_carnes` DEFAULT CHARACTER SET utf8 ;
USE `db_cidade_das_carnes` ;

-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_categorias` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_produtos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `quantidade` INT NULL,
  `preco` DECIMAL(4,2) NOT NULL,
  `fabricante` VARCHAR(50) NULL,
  `tb_categorias_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_categorias_idx` (`tb_categorias_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categorias`
    FOREIGN KEY (`tb_categorias_id`)
    REFERENCES `db_cidade_das_carnes`.`tb_categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- inserir registros na tb_categoria
INSERT INTO tb_categorias (tipo) VALUES("carne BOVINA");
INSERT INTO tb_categorias (tipo) VALUES("carne SUINA");
INSERT INTO tb_categorias (tipo) VALUES("carne EXOTICA");
INSERT INTO tb_categorias (tipo) VALUES("produtos para churrasco");

select * from tb_categorias;

-- inserir registro na tb_produtos
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("Picanha", 10, 99.00, "Friboi", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("Ancho", 15, 80.00, "Maturata", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("Panceta", 35, 18.99, "Cidade Carnes", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("Pernil", 20, 29.99, "Cidade Carnes", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("File Jacare", 9, 99.99, "Cidade Carnes", 3);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("File Avestruz", 4, 95.00, "Cidade Carnes", 3);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("Pao de Alho", 22, 12.00, "Tirolez", 4);
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, tb_categorias_id) VALUES("Sal Grosso", 35, 8.99, "Lebre", 4);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.tb_categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.tb_categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "carne EXOTICA";

