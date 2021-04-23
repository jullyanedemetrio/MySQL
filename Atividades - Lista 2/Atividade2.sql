create database db_pizzaria_legal; 

use db_pizzaria_legal;

create table tb_categoria (
	id bigint auto_increment,
    descricao varchar(255) not null, 
    disponibilidade boolean not null,
    primary key (id)
); 

select * from tb_categoria;

insert into tb_categoria (descricao, disponibilidade) values ("Pizza Salgada", true);
insert into tb_categoria (descricao, disponibilidade) values ("Pizza Doce", true);
insert into tb_categoria (descricao, disponibilidade) values ("Pizza Meio a Meio", true);
insert into tb_categoria (descricao, disponibilidade) values ("Sobremesa", false);
insert into tb_categoria (descricao, disponibilidade) values ("Bebidas", false);

create table tb_pizza (
	id bigint auto_increment,
    sabor varchar(255) not null, 
    tamanho varchar(255) not null, 
    tipo_massa varchar(255) not null, 
    borda_creamcheese boolean not null, 
    valor decimal(10,2) not null, 
    categoria_id bigint not null, 
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    );
    
select * from tb_pizza;
    
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Calabresa", "Média", "Tradicional", true, 20.99, 1);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Mussarela", "Grande", "Integral", true, 30.99, 1);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Brócolis & Atum", "Gigante", "Integral", false, 50.99, 3);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Margherita", "Grande", "Tradicional", true, 30.99, 1);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Chocolate", "Brotinho", "Tradicional", false, 18.99, 2);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Morango", "Brotinho", "Tradicional", false, 18.99, 2);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Beijinho", "Brotinho", "Tradicional", false, 18.99, 2);
insert into tb_pizza (sabor, tamanho, tipo_massa, borda_creamcheese, valor, categoria_id) values ("Banana", "Brotinho", "Integral", false, 18.99, 2);

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where sabor like "C%";

select sabor, tamanho, tipo_massa, borda_creamcheese, valor, tb_categoria.descricao as categoria
	from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select sabor, tamanho, tipo_massa, borda_creamcheese, valor, tb_categoria.descricao as categoria
	from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tb_categoria.id = 2;