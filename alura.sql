DROP TABLE curso;
CREATE TABLE curso(
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'CSS');
INSERT INTO curso (id, nome) VALUES (3, 'PHP');

SELECT * FROM curso;

CREATE TABLE aluno(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinicius');

SELECT * FROM aluno;
SELECT * FROM curso;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
	aluno_id INT,
	curso_id INT,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);


SELECT * FROM aluno WHERE id=1;
SELECT * FROM curso WHERE id=1;

SELECT * FROM aluno WHERE id=2;
SELECT * FROM curso WHERE id=1;
