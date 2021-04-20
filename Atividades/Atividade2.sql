create database db_ecommerce;

use db_ecommerce;

create table tb_marcas(
	id bigint auto_increment,
    marca varchar(50) not null,
    primary key (id)
);

select * from tb_marcas;

insert into tb_marcas (marca) value ("Nike");
insert into tb_marcas (marca) value ("Adidas");
insert into tb_marcas (marca) value ("Puma");
insert into tb_marcas (marca) value ("Reebok");

create table tb_produtos(
	id bigint auto_increment,
    descricao varchar(50) not null,
    preco decimal(10,2),
    novo boolean not null, 
    marca_id bigint not null,
    primary key (id),
    foreign key (marca_id) references tb_marcas (id)
);

select * from tb_produtos;

insert into tb_produtos (descricao, preco, novo, marca_id) values ("Camisa", 150.90, true, 1);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Short", 80.99, true, 3);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Jaqueta", 560.00, false, 2);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Saia", 230.90, true, 2);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Tênis", 999.99, false, 4);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Calça", 100.90, true, 1);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Blusa", 500.90, true, 3);
insert into tb_produtos (descricao, preco, novo, marca_id) values ("Tênis", 630.90, true, 4);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 1429.99 where id = 5;