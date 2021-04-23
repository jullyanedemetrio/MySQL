create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    descricao varchar(255) not null, 
    prescricao_obrigatoria boolean not null,
    primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (descricao, prescricao_obrigatoria) values ("Medicamento", false);
insert into tb_categoria (descricao, prescricao_obrigatoria) values ("Medicamento Controlado", true);
insert into tb_categoria (descricao, prescricao_obrigatoria) values ("Cosmético", false);
insert into tb_categoria (descricao, prescricao_obrigatoria) values ("Perfumaria", false);
insert into tb_categoria (descricao, prescricao_obrigatoria) values ("Curativo", false);

create table tb_produtos(
	id bigint auto_increment,
    descricao_produto varchar(255) not null, 
    marca varchar(255) not null,
    quantidade varchar(255) not null,
    valor decimal(10,2) not null,
    id_categoria bigint not null,
    primary key (id),
    foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_produtos;

insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Omeoprazol", "Teuto", "28 Cápsulas", 15.99, 1);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Ibuprofeno", "Aché", "20 Comprimidos", 20.00, 1);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Hidratante Facial", "Nivea", "1 Unidade", 29.90, 3);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Batom", "Revlon", "1 Unidade", 56.50, 3);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Shampoo", "Seda", "1 Unidade", 8.90, 4);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Condicionador", "Pantene", "1 Unidade", 7.50, 4);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Gaze", "Needs", "10 Unidades", 3.00, 5);
insert into tb_produtos (descricao_produto, marca, quantidade, valor, id_categoria) values ("Esparadrapo", "Needs", "1 Unidade", 4.90, 5);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where descricao_produto like "B%";

select descricao_produto as descricao, marca, quantidade, valor, tb_categoria.descricao as categoria
	from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;
  
select descricao_produto as descricao, marca, quantidade, valor, tb_categoria.descricao as categoria
	from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
    where tb_categoria.id = 3;