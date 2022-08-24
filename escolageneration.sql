/*Exemplo Comentario*/

/**
Exemplo Comentario de bloco
*/

/*cOMANDO DE CRIAÇÃO de banco de dados*/
CREATE DATABASE db_escola_generation; /*nome de banco de dados sempre minusculo separando sempre com _ nunca usar espaço*/

/*Seleciona o banco de dado a ser usado*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
	
    /*Atributos*/
	id bigint auto_increment primary key,
	nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(4,2)/*não esta passando a nota so informanso a quantidade de numeros a ser usado*/
    
);

SELECT * FROM tb_alunes;/*estou disendo pra me trazer todos os resultados*/

/*Inserir dados na tabela (8 registros)*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Lucas Mendes", "1999-02-13", 57, 9.9);/*melhor so subistituir ou copiar e rodar um por  um*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Karol", "1997-03-22", 57, 10);/*posso so usar um insert*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Lopes", "1997-09-17", 57, 5);

/*Seleciona todos os dados da tabela de alunes*/
SELECT * FROM tb_alunes;

/*Seleciona todos da tabela de alunes ONDE a nota for maior que 7*/
SELECT * FROM tb_alunes WHERE nota > 7;/* o * puxa tudo*/

SELECT * FROM tb_alunes WHERE nota < 7 ;/*LIMIT 100*//*Serve para limitar bem usual em empressas*//*AND id=1*/

/*UMA ATUALIZAÇÃO*/
UPDATE tb_alunes SET nota = 7 WHERE id=3; 

/*------------------------------------------------------------------------------------------------------*/ 

CREATE DATABASE  db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

	id bigint auto_increment primary key,
	nome varchar(255),
    tipo_de_produto varchar (255),
    sessao int,
    preço decimal (10,2)
    
);
	SELECT * FROM tb_produtos;
    
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("Coala","DPH",11 ,11.88);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("Caballo Loco","Vinho",10 ,473.59);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("Blue Lbel", "Whisky", 10, 899.00);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("Royal Salute", "Whisky", 10, 1109.00);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("Arroz Camil", "Grãos", 13, 23.99);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("LINDT", "Chocolate", 17, 42.29);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("Ben & Jerrys", "Sorvete", 22, 54.99);
    INSERT INTO tb_produtos(nome,tipo_de_produto,sessao,preço)VALUES("PHEBO", "Sabonete", 12, 4.99);
    
    SELECT * FROM tb_produtos;
    
    alter table tb_produtos modify column preço decimal (10,2);/* la no inicio da minha tabelha coloquei "preço decimal (4,2)" mas não estava aceitando por ter numeros maiores que o permitido logo em seguida fiz a alteração para aceitar mais numeros*/
	
	SELECT * FROM tb_produtos WHERE preço > 500;
    
    SELECT * FROM tb_produtos WHERE preço < 500;
    
    UPDATE tb_produtos SET preço = 15.99 WHERE id=1;
    
    SELECT * FROM tb_produtos;

/*--------------------------------------------------------------------------------------------------------------------------*/

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	
    id bigint auto_increment primary key,
    nome varchar(255),
    cargo varchar(255),
    numero_cracha int,
    salario decimal(10,2)

);

INSERT INTO tb_colaboradores(nome,cargo,numero_cracha,salario)VALUES("Wesley Coutinho", "Senior", 1, 5570.00);
INSERT INTO tb_colaboradores(nome,cargo,numero_cracha,salario)VALUES("Bruno Rafael", "Pleno", 2, 4866.00);
INSERT INTO tb_colaboradores(nome,cargo,numero_cracha,salario)VALUES("Lucas Mendes", "Junior", 3, 1999.00);
INSERT INTO tb_colaboradores(nome,cargo,numero_cracha,salario)VALUES("Mateus Mota", "Estagiario", 4, 1133.00);
INSERT INTO tb_colaboradores(nome,cargo,numero_cracha,salario)VALUES("Jessíca Ribeiro", "Estagiaria", 5, 1133.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = "Junior" WHERE id=5;

UPDATE tb_colaboradores SET salario = 1999 WHERE id=5;
