create database db_servico_rh;

use db_servico_rh;

create table tb_user(
id bigint auto_increment,
nome varchar(255) not null,
salario float not null,
primary key(id)
);

select * from tb_user;


insert into tb_user (nome,salario) values ("jessica",8000);

alter table tb_user
add cargo varchar(255);

alter table tb_user
drop descricao;

alter table tb_user
change cargo cargo_funcao varchar(255);

update tb_user set cargo_funcao = "desenvolvedor pleno" where id = 2;