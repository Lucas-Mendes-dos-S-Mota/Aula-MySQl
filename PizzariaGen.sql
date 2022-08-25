CREATE DATABASE  db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

	id bigint auto_increment primary key,
    descricao varchar(255),/*se eu da categoria doce ou salgada*/
	tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,/*minha chave estrangeira*/
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

);

SELECT * FROM tb_categorias;
 
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Salgada","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Salgada","Brotinho",false);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Salgada","Medio",true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Salgada","Medio",false);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Salgada","Grande",true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Salgada","Grande",false);

INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Doce","Grande",true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Vegetaria","Brotinho",true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("Vegana","Brotinho",false);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)
VALUES("Frango C/ Catupiry", 30.00,"tradicional",5,1);/*1 =id la de cima */

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)
VALUES("Mussarela", 40.59,"tradicional",5,2);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)
VALUES("Prestigio", 50.99,"tradicional",2,8);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)
VALUES("Lombo C/ Catupiry", 60.99,"tradicional",3,6);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)
VALUES("Brocolis C/ Catupiry", 40.99,"tradicional",4,9);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)
VALUES("Calabresa", 45.99,"tradicional",5,1);

/*estrurura de uma consulta: SELECT - CONDIÇÃO - ORDENAÇÃO*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco ASC; /*pra ter em ordem alfabetica , ASC ou DESC*/

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

/*Tras somente os sabores das pizzas com preço entre 50 e 100 reais*/
SELECT sabor FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

/*para buscar letra, nome, por frase */
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%"; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;




