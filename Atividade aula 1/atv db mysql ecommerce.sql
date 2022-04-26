create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint(5) auto_increment,
nome varchar(100) not null,
marca varchar(50) not null,
tipo varchar(50) not null,
modelo varchar(20) not null,
preço float not null,
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome, marca, tipo, modelo, preço) values("VIP", "OGF", "fluido isqueiro", "caixa", 720);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("VIP", "OGF", "fluido isqueiro", "unidade", 30);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("Chama", "OGF", "fluido isqueiro", "caixa", 936);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("Chama", "OGF", "fluido isqueiro", "unidade", 39);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("Magicard", "OGF", "segurador baralho", "caixa", 455);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("Magicard", "OGF", "segurador baralho", "unidade", 12.5);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("Faisca", "OGF", "pedra isqueiro", "caixa", 70);
insert into tb_produtos(nome, marca, tipo, modelo, preço) values("Faisca", "OGF", "pedra isqueiro", "unidade", 3.5);

select * from tb_produtos;

select * from tb_produtos where preço < 500;
select * from tb_produtos where preço > 500;

select * from tb_produtos;

update tb_produtos set preço = 75 where id = 2;

select * from tb_produtos;