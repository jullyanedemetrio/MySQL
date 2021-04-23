create database db_generation_game_online; 

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    nome_classe varchar(255) not null,
    nivel bigint not null,
    caracteristica_principal varchar(255) not null,
    primary key (id)
);

select * from tb_classe;

insert into tb_classe (nome_classe, nivel, caracteristica_principal) values ("Bárbaro", 5, "Ataque Extra");
insert into tb_classe (nome_classe, nivel, caracteristica_principal) values ("Bardo", 1, "Inspiração Bárdica");
insert into tb_classe (nome_classe, nivel, caracteristica_principal) values ("Clérigo", 10, "Intervenção Divina");
insert into tb_classe (nome_classe, nivel, caracteristica_principal) values ("Druida", 3, "Feitiço");
insert into tb_classe (nome_classe, nivel, caracteristica_principal) values ("Paladino", 7, "Ataque Extra");

create table tb_personagem(
	id bigint auto_increment, 
    nome_personagem varchar(255) not null,
    raca varchar(255) not null, 
    arma varchar(255) not null, 
    forca int not null, 
    constituicao int not null, 
    id_classe bigint not null,
    primary key (id),
    foreign key (id_classe) references tb_classe(id)
);

select * from tb_personagem;

insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Arannis", "Elfo", "Adaga", 1400, 1300, 2);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Shui", "Humano", "Espada", 900, 1500, 4);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Anton", "Gnomo", "Lança", 2300, 2400, 3);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Celg", "Gnomo", "Machado", 800, 1500, 1);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Cain", "Meio-Elfo", "Adaga", 1900, 2500, 5);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Khemed", "Humano", "Machado", 1600, 1500, 1);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Balasar", "Dragão", "Florete", 2000, 2300, 5);
insert into tb_personagem (nome_personagem, raca, arma, forca, constituicao, id_classe) values ("Adran", "Elfo", "Machado", 1500, 1400, 1);

select * from tb_personagem where forca > 2000;

select * from tb_personagem where constituicao between 1000 and 2000;

select * from tb_personagem where nome_personagem like "C%";

select nome_personagem as nome, raca, arma, tb_classe.nome_classe as classe 
	from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe;
    
select nome_personagem as nome, raca, arma, tb_classe.nome_classe as classe
	from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe
    where tb_classe.nome_classe = "Paladino";

