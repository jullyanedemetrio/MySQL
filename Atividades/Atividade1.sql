create database db_rh;

use db_rh;

Create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(50) not null,
    cargo varchar(50) not null,
    departamento varchar(50) not null, 
    salario decimal(7,2),
    primary key (id)
);

select * from tb_funcionarios;

insert into tb_funcionarios(nome, cargo, departamento, salario) Values ("Maria Silva", "Secretária", "Financeiro", 1500.00);
insert into tb_funcionarios(nome, cargo, departamento, salario) Values ("João Souza", "Analista", "Administrativo", 2700.00);
insert into tb_funcionarios(nome, cargo, departamento, salario) Values ("Ana Messias", "Gerente", "Financeiro", 3600.00);
insert into tb_funcionarios(nome, cargo, departamento, salario) Values ("Pedro Lima", "Diretor", "Recursos Humanos", 5500.00);
insert into tb_funcionarios(nome, cargo, departamento, salario) Values ("Bia Silva", "Estagiária", "Marketing", 1000.00);

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 1800.00 where id = 1;

