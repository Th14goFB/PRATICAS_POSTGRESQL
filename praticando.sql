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
	FOREIGN KEY id_pessoa REFERENCES pessoa(id);
	ON UPDATE CASCADE
);

SELECT * FROM pessoa;

SELECT nome as "Nome do indivíduo",
	   email as "Email para contato",
	   telefone as "Telefone para contato"
FROM contatos
INNER JOIN pessoa on id_pessoa = pessoa.id

INSERT INTO pessoa (nome) 
	VALUES ('Thiago Fernandes Bezerra')

INSERT INTO pessoa (nome) 
	VALUES ('Gustavo Carrilho de Oliveira')

INSERT INTO contatos (email, telefone) 
	VALUES ('thiago.fernandesbez@gmail.com', 
			'6899451243');
			
INSERT INTO contatos (email, telefone) 
	VALUES ('gustavo123@gmail.com', 
			'6832236471')