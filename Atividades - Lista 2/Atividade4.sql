create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert tb_categoria (descricao, disponibilidade) values ("Bovino",true);
insert tb_categoria (descricao, disponibilidade) values ("Suíno",true);
insert tb_categoria (descricao, disponibilidade) values ("Aves",true);
insert tb_categoria (descricao, disponibilidade) values ("Pescado",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(10,2) not null,
qtProduto int not null,
id_categoria bigint not null,
primary key (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Picanha",30.00,20,1);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Coxão Duro",20.00,20,1);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Lombo",15.00,20,2);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Barriga",10.00,20,2);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Peito",12.00,20,3);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Sobrecoxa",15.00,20,3);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Filé",40.00,20,4);
insert tb_produtos (nome, preco, qtProduto, id_categoria) values ("Posta",45.00,20,4);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "C%";

select nome as descricao, preco, tb_categoria.descricao as categoria
	from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;
    
select nome as descricao, preco, tb_categoria.descricao as categoria
	from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
	where tb_categoria.id = 4;