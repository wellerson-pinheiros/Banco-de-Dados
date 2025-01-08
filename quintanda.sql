CREATE DATABASE db_quitanda;

USE db_quitanda;


CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal,
    PRIMARY KEY (id)
); 
INSERT INTO tb_produtos ( nome,quantidade,data_validade,preco) values
("Pepino",57,"2025-02-13",8.00),
("Cenoura",20,"2025-01-20",7.00),
("Cebola",60,"2025-03-07",5.00),
("Repolho",30,"2025-02-02",3.00)
;

select * from tb_produtos;


ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

