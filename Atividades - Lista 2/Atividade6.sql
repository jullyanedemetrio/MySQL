create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
    descricao varchar(255) not null,
    disponibilidade boolean not null,
    primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (descricao, disponibilidade) values ("Programação", true);
insert into tb_categoria (descricao, disponibilidade) values ("Design", true);
insert into tb_categoria (descricao, disponibilidade) values ("Negócios", false);

create table tb_produto(
	id bigint auto_increment,
    descricao_produto varchar(255) not null,
    valor decimal (10,2) not null, 
    classificacao varchar(255) not null,
    id_categoria bigint not null,
    primary key (id),
    foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_produto;

insert into tb_produto (descricao_produto, valor, classificacao, id_categoria) values ("Introdução à Java", 250.00, "Básico", 1);
insert into tb_produto (descricao_produto, valor, classificacao, id_categoria) values ("Java e Orientação a Objetos ", 350.00, "Intermediário", 1);
insert into tb_produto (descricao_produto, valor, classificacao, id_categoria) values ("Introdução ao Photoshop", 250.00, "Básico", 2);
insert into tb_produto (descricao_produto, valor, classificacao, id_categoria) values ("Edição de vídeo", 650.00, "Avançado", 2);
insert into tb_produto (descricao_produto, valor, classificacao, id_categoria) values ("Gestão de Projetos", 450.00, "Básico", 3);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where descricao_produto like "%J%";

select descricao_produto as descricao, valor, classificacao, tb_categoria.descricao as categoria, tb_categoria.disponibilidade
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;
    
select descricao_produto as descricao, valor, classificacao, tb_categoria.descricao as categoria, tb_categoria.disponibilidade
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
	where tb_categoria.id = 1;
