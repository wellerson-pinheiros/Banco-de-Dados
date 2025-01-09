create database db_generation_game_online;


use db_generation_game_online;


drop table tb_classe;

create table tb_classe(
id bigint auto_increment,
classe varchar(50),
primary key(id)

)charset utf8 ;



create table tb_personagens(
	id_personagem bigint auto_increment,
	nome varchar(50) not null unique,
    tipo varchar(50) not null,
    ataque decimal(6,2) not null,
    primary key (id_personagem)
    
    
    );
			
        
  alter table tb_personagens
  add column tb_classe_id int;
  
  
  alter table tb_personagens
  add foreign key (tb_classe_id) references tb_classe(id);
  
  
  insert into tb_classe(classe)values 
  
  ("guerreiro"),
  ("mago"), 
  ("Arqueiro"),
  ("Elfo"),
  ("Ladrao");
  
   insert into tb_personagens (nome,tipo,ataque,tb_classe_id) values 
   ("gepeto","fogo",2200.00,1),
   ("Gorilao","Terra",3000.00,3),
   ("mercurio",'Agua',1800.00,5),
   ("GodKilla",'Agua',1300.00,1),
   ("almariJr",'terra',1000.00,2),
   ("TorTerra",'ar',3000.00,3),
   ("AVESinistra",'fogo',8000.20,2),
   ("DarkShadow",'ar',2600.00,5),
   ("Lapras",'Agua',1900.00,1);
   
   select * from tb_classe;
   select * from tb_personagens;
   select * from tb_personagens where ataque > 2000;
   select * from tb_personagens where  ataque between 1000 and 2000;
   select * from tb_personagens where nome like "%C%";
   select * from tb_personagens inner join tb_classe on tb_personagens . tb_classe_id = 3;
   SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.tb_classe_id = tb_classe.id
   WHERE tb_personagens.tb_classe_id = 3;