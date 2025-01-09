 create database db_farmacia_bem_estar;
 
 use db_farmacia_bem_estar;
 
 
 create table tb_categorias (
 id bigint auto_increment,
 categorias varchar(255) not null,
 descricao varchar(255),
 primary key(id)
 ) default charset utf8;
 
 create table tb_produtos (
 id_produtos bigint auto_increment,
 nome_produto varchar(50),
 preco decimal(8,2) not null,
 quantidade_comprimido int not null,
 id_categorias bigint,
 primary key(id_produtos),
 foreign key(id_categorias) references tb_categoria(id)
 )default charset utf8;
 
 
 insert into tb_categorias (categorias,descricao)values
 ("hipertencao","A hipertensão é a condição em que a pressão arterial está constantemente elevada, aumentando o risco de doenças cardíacas e derrames."),
 ("diabetes","A diabetes tipo 1 é uma doença autoimune onde o corpo não produz insulina suficiente para regular o açúcar no sangue."),
 ("controlado","Medicamento controlado é aquele que, devido ao seu potencial de dependência ou efeitos colaterais, requer prescrição médica e controle rigoroso."),
 ("Asma","A asma é uma condição crônica que causa inflamação e estreitamento das vias respiratórias, dificultando a respiração."),
 ("colesterol", "O colesterol é uma substância gordurosa essencial para o corpo, mas níveis elevados podem aumentar o risco de doenças cardíacas");
 
 
 insert into tb_produtos (nome_produto,preco,quantidade_comprimido,id_categorias) values
 ("Glifage", 7.90, 30, 2),
 ("Rosuvastatina", 43.00, 30,5),
 ("Aerolyn", 32.00,120,4),
 ("Enalapril", 15.00,15,1),
 ("Enalapril", 30.00,30,1),
 ("Gardenal", 7.90, 20, 3),
 ("depakene", 130.00,60,3),
 ("Losartana", 5.00,30,1);
 
 
 
 select * from tb_produtos where preco >= 50.00;
 select * from tb_produtos where preco between 5.00 and 60.00;
 select * from tb_produtos where nome_produto like "%c%";
 select * from tb_produtos inner join tb_categorias on tb_produtos.id_categorias = tb_categorias.id;
  select * from tb_produtos inner join tb_categorias on tb_produtos.id_categorias = tb_categorias.id where id_categorias = 4;