CREATE DATABASE db_generation_game_online;

USE db_generation_game_oline;

CREATE TABLE tb_classes(
	
    id bigint auto_increment primary key ,
    nome varchar(255),
    tipo varchar(255)
    
);

CREATE TABLE tb_personagens(
	
    id bigint auto_increment primary key,
    emblemas varchar (255),
    feitiço varchar (255),
    quantidade_equip int,
    poder_defesa int,
    poder_ataque int,
    classes_id bigint,
    
    FOREIGN KEY  (classes_id) REFERENCES tb_classes(id)
    
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(nome,tipo)VALUES("Xborg", "Soldado");
INSERT INTO tb_classes(nome,tipo)VALUES("Saber", "Assasino");
INSERT INTO tb_classes(nome,tipo)VALUES("Clint", "Atirador");
INSERT INTO tb_classes(nome,tipo)VALUES("Eudora", "Mago");
INSERT INTO tb_classes(nome,tipo)VALUES("Tigreal", "Tank");
INSERT INTO tb_classes(nome,tipo)VALUES("Rafaela", "Suporte");
INSERT INTO tb_classes(nome,tipo)VALUES("Alucard", "Soldado/Assasino");
INSERT INTO tb_classes(nome,tipo)VALUES("Franco", "Tank/Suporte");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Soldado","Flash",5,5000,3000,1);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Assasino","Caçar",5,3500,5000,2);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Atirador","Flash",5,3000,6000,3);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Magico","Tiro Flamejante",5,4000,9000,4);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Tank","Égide",5,10000,4000,5);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Suporte","Revitalizar",5,4000,1000,6);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Físico","Inspirar",5,5000,10000,7);

INSERT INTO tb_personagens(emblemas,feitiço,quantidade_equip,poder_defesa,poder_ataque,classes_id)
VALUES("Tank","Petrificar",5,9000,5000,8);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_classes WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

