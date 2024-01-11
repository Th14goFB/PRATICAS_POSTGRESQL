/*----------------------------------------------------------*/

DROP TABLE pessoa;
CREATE TABLE pessoa (
	id SERIAL primary key,
	nome varchar(255),
	contatos_id SERIAL
);

DROP TABLE contatos;
CREATE TABLE contatos (
	id SERIAL primary key,
	email varchar(255),
	telefone char(15),
	id_pessoa SERIAL,
	id_endereco SERIAL,
	FOREIGN KEY id_pessoa REFERENCES pessoa(id)
	FOREIGN KEY id_endereco REFERENCES endereco(id)
);

DROP TABLE endereco;
CREATE TABLE endereco(
	id serial PRIMARY KEY,
	rua varchar(255),
	bairro varchar(255),
	CEP char(8),
	numero varchar(255),
	contatos_id serial
);

/*----------------------------------------------------------*/

SELECT * FROM pessoa;
SELECT * FROM contatos;
SELECT * FROM endereco;

SELECT nome as "Nome do indivíduo",
	   email as "Email para contato",
	   telefone as "Telefone para contato",
	   rua as "Rua",
	   bairro as "Bairro",
	   CEP "CEP",
	   numero "Número da casa"
FROM contatos
JOIN pessoa on id_pessoa = pessoa.id
JOIN endereco on contatos_id = contatos.id

/*--------------------------- pessoa -------------------------------*/

INSERT INTO pessoa (nome)
	VALUES ('Thiago Fernandes Bezerra');

INSERT INTO pessoa (nome)
	VALUES ('Gustavo Carrilho de Oliveira');
	
/*------------------------------ contatos ----------------------------*/

INSERT INTO contatos (email, telefone)
	VALUES ('thiago.fernandesbez@gmail.com', 
			'6899451243');
			
INSERT INTO contatos (email, telefone) 
	VALUES ('gustavo123@gmail.com', 
			'6832236471');
			
/*------------------------ endereco ----------------------------------*/

INSERT INTO endereco (rua, bairro, CEP, numero) 
	VALUES ('Vírgilio de Lima', '6 de Agosto', '12345678', '12');
	
INSERT INTO endereco (rua, bairro, CEP, numero) 
	VALUES ('Dom Bosco', 'Bosque', '45678910', '48');
			