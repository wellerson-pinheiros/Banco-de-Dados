create database db_pizzaria_legal;
use db_pizzaria_legal;

create table if not exists tb_categoria(

id bigint auto_increment,
categoria varchar(50) not null,
acrecimo varchar(50), 
primary key (id)
) default charset utf8; 


create table if not exists tb_pizzas(
id_pizza bigint auto_increment,
nome varchar(50),
valor decimal(6,2) not null,
descricao varchar(255),
categoria_tb_categoria varchar(50),
primary key(id_pizza),
foreign key(categoria_tb_categoria) references tb_categorias(id)
)default charset utf8 ;


insert into tb_categoria(categoria,acrecimo) values
("pizza de frango","Tomate"),
("Pizza de calabresa", "Catupiry"),
("pizza de peperone", "cebola"),
("pizza baiana","Cheder"),
("pizza de tofu","azeitona");


insert into tb_pizzas(nome,valor,descricao,categoria_tb_categoria) values
("Margherita",50.00,"pizza do sabor de margherita uma otima escolha tamanho familia", 3),
("Portuguesa", 70.00,"Uma pizza clássica e simples, feita com molho de tomate, queijo mussarela ",4),
("Frango com Catupiry",45.50, "pizza de frango com um catupiry de qualidade",1),
("Toscana",45.00, "Cheder e muita calabresa e cebola" ,2),
("Vegetariana",30.30,"Para pessoas que querem algo mais ligth sem carnes" ,5),
("Havaiana",30.30,"Novo saber delicioso" ,4),
("Pizza do Chef",100.00,"Para pessoas que querem experimentar algo novo", 3),
("BBQ Chicken",40.00,"rango grelhado, molho barbecue, cebolas roxas", 1);

select * from tb_pizzas;

select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor between 50.00 and 100;
select * from tb_pizzas where nome like "%M%";
select * from tb_pizzas inner join tb_categoria ;
SELECT * FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_pizzas.categoria_tb_categoria = tb_categoria.id
WHERE tb_pizzas.categoria_tb_categoria = 3;