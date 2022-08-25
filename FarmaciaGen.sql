CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(

	id bigint auto_increment primary key,
    tarja varchar(255),
    tipo varchar(50)
    
);

CREATE TABLE tb_produtos(
	
    id bigint auto_increment primary key,
    nome varchar(255),
    finalidade varchar(255),
    quantidade int,
    preco decimal(10,2),
    categoria_id bigint,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

); 

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tarja,tipo)VALUES("Vermelha","Comprimido");
INSERT INTO tb_categorias(tarja,tipo)VALUES("Amarela","Comprimido");
INSERT INTO tb_categorias(tarja,tipo)VALUES("Sem tarja","Comprimido");
INSERT INTO tb_categorias(tarja,tipo)VALUES("Sem tarja","liquido");
INSERT INTO tb_categorias(tarja,tipo)VALUES("Preta","Comprimido");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Dipirona", "Dor de cabeça",1,4.39,1);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Dorflex", "Dores no corpo",1,20.89,1);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Paracetamol", "Dores gerais",1,7.29,1);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Dramin", "Enjoo",30,23.01,1);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Aceclofenaco", "anti-inflamatório",1,29.99,4);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Rivotril", "Transtornos de ansiedade",1,25.55,5);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Acetilcisteína", "Tosse",1,21.90,3);
INSERT INTO tb_produtos(nome,finalidade,quantidade,preco,categoria_id)
VALUES("Ácido acetilsalicílico", "anti-inflamatório",1,19.59,2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos Where preco >= 5 AND preco <= 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id WHERE tarja = "Vermelha";