DROP DATABASE skateshop ; 
CREATE DATABASE skateshop;
USE skateshop;



CREATE TABLE cliente ( 
  cpf VARCHAR(14) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  telefone VARCHAR(45) NOT NULL,
  PRIMARY KEY (cpf)
  );



CREATE TABLE categoria (
  id_categoria INT NOT NULL auto_increment,
  nome_categoria VARCHAR(45) NOT NULL,
  produto VARCHAR(256) NOT NULL,
  PRIMARY KEY (id_categoria)
  );




CREATE TABLE fornecedores (
  id_fornecedor INT NOT NULL auto_increment,
  nome_do_fornecedor VARCHAR(45) NOT NULL,
  CEP VARCHAR(45) not null,
  PRIMARY KEY (id_fornecedor)
  );

CREATE TABLE itens_vendidos (
  id_produto INT NOT NULL,
  valor_produto_vendido INT NOT NULL,
  nome_produto VARCHAR(45) NOT NULL,
  cliente_cpf VARCHAR(14) NOT NULL,
  PRIMARY KEY ( id_produto, cliente_cpf),
    FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf)
);



CREATE TABLE pecas (
  id_pecas INT NOT NULL auto_increment,
  valor FLOAT NOT NULL,
  categoria_id_categoria INT NOT NULL,
  fornecedores_id_fornecedor INT NOT NULL,
  PRIMARY KEY (id_pecas, categoria_id_categoria, fornecedores_id_fornecedor),
    FOREIGN KEY (categoria_id_categoria) REFERENCES categoria (id_categoria),
    FOREIGN KEY (fornecedores_id_fornecedor) REFERENCES fornecedores (id_fornecedor)
 );

CREATE TABLE itens_pedido (
  pedidos_id_nome INT NOT NULL,
  pecas_id_pecas INT NOT NULL,
  PRIMARY KEY (pedidos_id_nome, pecas_id_pecas),
    FOREIGN KEY (pedidos_id_nome)
    REFERENCES itens_vendidos ( id_produto),
    FOREIGN KEY (pecas_id_pecas)REFERENCES pecas (id_pecas)
  );
  
  
  

INSERT INTO cliente (cpf, nome, email, telefone)
VALUES
('427.450.394-15', 'Genilda Maria da Silva Queiroz', 'genildamariaqueiroz@yahoo.com.b', '(18) 3944-3584'),
('877.109.980-89', 'Otávio Novaes', 'otavin@yahoo.com.b', '(61) 2786-8851'),
('715.616.000-16', 'Alana Dias', 'alaninha@yahoo.com.b', '(82) 3556-2636'),
('596.568.230-10', 'Nathan Dias', 'nathan@yahoo.com.b', '(51) 3014-6271'),
('246.060.430-08', 'Srta. Vitória Ferreira', 'viii@yahoo.com.b', '(84) 2117-1894'),
('102.146.180-64', 'Sabrina Monteiro', 'sabrina@yahoo.com.b', '(66) 2766-4333'),
('543.982.940-74', 'Sra. Maria Vitória da Luz', 'marivi@yahoo.com.b', '(62) 2143-2959'),
('534.226.330-14', 'Eduardo das Neves', 'eduNovaes@yahoo.com.b', '(15) 2641-7167'),
('289.727.630-47', 'Dra. Milena Teixeira', 'mileninha@yahoo.com.b', '(83) 3038-7244'),
('280.185.120-51', 'Júlia Teixeira', 'juju@yahoo.com.b', '(92) 2653-0728');

INSERT INTO categoria ( nome_categoria, produto)
VALUES
( 'INICIANTE','SKATE MONTADO AHEAD INFANTIL MILITARY ALL BLUE'),
( 'INICIANTE','SKATE COMPLETO AHEAD MILITARY ALL PINK'),
( 'INICIANTE','SKATE MONTADO AHEAD INFANTIL MILITARY ALL RED'),
( 'INICIANTE','SKATE COMPLETO AHEAD INFANTIL MILITARY ALL GRENN'),
( 'INTERMEDIARIO','SHAPE ELEMENT 8.0 QUADRANT'),
( 'INTERMEDIARIO','SHAPE SANTA CRUZ 8.5 SCREAMING HAND WOOD'),
( 'INTERMEDIARIO','SHAPE NINECLOUDS 8.5 LOGO MOEDA BLACK'),
( 'PROFISSIONAL','TRUCK INDEPENDENT 139MM STAGE STANDARD 11 PAR'),
( 'PROFISSIONAL','TRUCK INDEPENDENT 144MM STAGE 11 HOLLOW SILVER - PAR'),
( 'PROFISSIONAL','RODA RICTA 53MM WIREFRAME SPARX WHITE 99A');


INSERT INTO fornecedores (nome_do_fornecedor,CEP)
VALUES
('Felipe Martins','58808-255'),
('Mirella Sales','59114-071'),
('Caio Costa','69550-625'),
('Lorenzo Nogueira','94190-500'),
('Ana Laura da Mata','58700-390'),
('Daniela Fernandes','85858-250'),
('Marcela Rocha','64013-548'),
('Agatha Barros','64020-635'),
('Maitê Mendes','50110-735'),
('Júlia Ramos','29101-568');





  /*
INSERT INTO itens_vendidos (id_produto, valor_produto_vendido, nome_produto )
VALUES
(1,2,'SHAPE AHEAD 8.0 TIE DYE CLOUD');
*/

UPDATE cliente SET nome='Genilda Maria da Silva Keirox' WHERE cpf ='427.450.394-15';
UPDATE cliente SET email='newotavin@yahoo.com.b' WHERE cpf ='877.109.980-89';
UPDATE cliente SET email='alaninha157@yahoo.com.b' WHERE cpf = '715.616.000-16';
UPDATE cliente SET telefone='(47) 3686-2636' WHERE cpf = '280.185.120-51';
UPDATE cliente SET telefone='(11) 7854-5984' WHERE cpf = '289.727.630-47';

UPDATE categoria SET nome_categoria='PROFISSIONAL' WHERE id_categoria =2;
UPDATE categoria SET nome_categoria='INTERMEDIARIO' WHERE id_categoria =3;
UPDATE categoria SET nome_categoria='INICIANTE' WHERE id_categoria =7;
UPDATE categoria SET nome_categoria='PROFISSIONAL' WHERE id_categoria =6;
UPDATE categoria SET nome_categoria='INTERMEDIARIO' WHERE id_categoria =5;

UPDATE fornecedores SET nome_do_fornecedor='Pedro Martins' WHERE id_fornecedor=1;
UPDATE fornecedores SET nome_do_fornecedor='Carlos Alberto' WHERE id_fornecedor=4;
UPDATE fornecedores SET CEP='68850-115' WHERE id_fornecedor=8;
UPDATE fornecedores SET CEP='48850-835' WHERE id_fornecedor=10;
UPDATE fornecedores SET nome_do_fornecedor='Alrbet Albin' WHERE id_fornecedor=6;

DELETE FROM categoria WHERE id_categoria=6;
DELETE FROM categoria WHERE id_categoria=3;
DELETE FROM categoria WHERE id_categoria=2;
DELETE FROM categoria WHERE id_categoria=18;
DELETE FROM categoria WHERE id_categoria=7;

DELETE FROM fornecedores WHERE id_fornecedor=4;
DELETE FROM fornecedores WHERE id_fornecedor=3;
DELETE FROM fornecedores WHERE id_fornecedor=2;
DELETE FROM fornecedores WHERE id_fornecedor=6;
DELETE FROM fornecedores WHERE id_fornecedor=7;

DELETE FROM cliente WHERE cpf ='427.450.394-15';
DELETE FROM cliente WHERE cpf ='877.109.980-89';
DELETE FROM cliente WHERE cpf = '715.616.000-16';
DELETE FROM cliente WHERE cpf = '280.185.120-51';
DELETE FROM cliente WHERE cpf = '289.727.630-47';

select * from fornecedores ORDER BY id_fornecedor;
select * from categoria ORDER BY id_categoria;
select * from cliente ORDER BY cpf;


select * from fornecedores WHERE id_fornecedor=8;

select * from cliente WHERE cpf = '543.982.940-74';

select * from categoria WHERE id_categoria=1;