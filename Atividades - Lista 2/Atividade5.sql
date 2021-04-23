create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert tb_categoria (descricao, disponibilidade) values ("Construção",true);
insert tb_categoria (descricao, disponibilidade) values ("Hidráulico",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
descricao varchar (255) not null,
valor decimal(10,2) not null,
qtde_produto int not null,
id_categoria bigint not null,
primary key (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

insert into tb_produtos (descricao, valor, qtde_produto, id_categoria) values ("Cimento", 27.90, 30, 1);
insert into tb_produtos (descricao, valor, qtde_produto, id_categoria) values ("Argamassa", 21.00, 30, 1);
insert into tb_produtos (descricao, valor, qtde_produto, id_categoria) values ("Chuveiro Elétrico", 109.90, 10, 2);
insert into tb_produtos (descricao, valor, qtde_produto, id_categoria) values ("Caixa D'Água", 1790.90, 5, 2);
insert into tb_produtos (descricao, valor, qtde_produto, id_categoria) values ("Tubo de Esgoto", 30.90, 30, 2);

select * from tb_produtos;

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where descricao like "C%";

select tb_produtos.descricao, valor, qtde_produto, tb_categoria.descricao as categoria
	from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;
    
select tb_produtos.descricao, valor, qtde_produto, tb_categoria.descricao as categoria
	from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
	where tb_categoria.id = 2;