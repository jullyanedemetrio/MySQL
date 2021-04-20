create database db_escola;

use db_escola; 

create table tb_alunos (
	id bigint auto_increment, 
    nome varchar(50) not null,
    modalidade varchar(50) not null, 
    periodo varchar(50) not null, 
    nota decimal (10, 2), 
    primary key (id)
);

select * from tb_alunos;

insert into tb_alunos (nome, modalidade, periodo, nota) values ("Maria Silva", "Presencial", "Matutino", 7.3);
insert into tb_alunos (nome, modalidade, periodo, nota) values ("João Souza", "EAD", "Noturno", 5.6); 
insert into tb_alunos (nome, modalidade, periodo, nota) values ("Ana Messias", "Presencial", "Diurno", 10);
insert into tb_alunos (nome, modalidade, periodo, nota) values ("Pedro Lima", "Presencial", "Matutino", 3.3);
insert into tb_alunos (nome, modalidade, periodo, nota) values ("Bia Silva", "Presencial", "Noturno", 8.4);

select * from tb_alunos where nota > 7; 
select * from tb_alunos where nota < 7;

update tb_alunos set modalidade = "EAD" where id = 4;