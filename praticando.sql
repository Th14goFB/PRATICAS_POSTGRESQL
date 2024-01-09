DROP TABLE produtos;
CREATE TABLE produtos (
	id SERIAL PRIMARY KEY,
	nome_produto varchar(250) NOT NULL,
	valor_produto decimal NOT NULL,
	produtos_id SERIAL
);

SELECT nome_produto as Produto,
	   valor_produto as Valor,
	   produtos_id as "chave estrangeira"
FROM produtos;

INSERT INTO produtos (nome_produto, valor_produto) VALUES('Amaciante',15.64);
INSERT INTO produtos (nome_produto, valor_produto) VALUES('Queijo',9.12);
INSERT INTO produtos (nome_produto, valor_produto) VALUES('Café',5.17);

DROP TABLE mercados;		
CREATE TABLE mercados (
	id SERIAL PRIMARY KEY,
	nome_mercado varchar (250),
	mercados_id serial not null
);

INSERT INTO mercados (nome_mercado) VALUES('Atacadão');
INSERT INTO mercados (nome_mercado) VALUES('Araújo');
INSERT INTO mercados (nome_mercado) VALUES('Mercale');

SELECT nome_mercado as "nome do mercado",
	   mercados_id as "chave estrangeira"
FROM mercados;

CREATE TABLE produto_mercado (
	
	id_mercado int not null,
	id_produto int not null,
	
	FOREIGN KEY (id_mercado) references mercados (id),
	FOREIGN KEY (id_produto) references produtos (id),
	PRIMARY KEY (id_mercado, id_produto)
);

INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (1,1);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (1,2);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (1,3);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (2,1);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (2,2);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (2,3);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (3,1);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (3,2);
INSERT INTO produto_mercado (id_produto, id_mercado) VALUES (3,3);

SELECT nome_produto as Produto, nome_mercado as "Disponível em"
FROM mercados
JOIN produto_mercado ON produto_mercado.id_mercado = mercados.id