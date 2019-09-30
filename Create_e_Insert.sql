-- Comandos de CREATE e INSERT de uma tabela
CREATE DATABASE CADASTRO default character set utf8 default collate utf8_general_ci;
USE CADASTRO;

CREATE TABLE PESSOAS(
	id int not null auto_increment primary key,
	nome varchar(160) not null,
    nascimento date not null,
    sexo char(1) not null,
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) not null default 'Brasil' 
);

-- Inserindo dados de 3 maneiras
-- Passando todos as chaves por parâmetro antes dos valores
INSERT INTO PESSOAS (id, nome, nascimento, sexo, peso, altura, nacionalidade) VALUES (null, 'Guilherme', '1999-02-18', 'M', '75.8', '1.75', 'Brasil');
-- Sem passar a chave, mas passando todos os dados na ordem correta
INSERT INTO PESSOAS VALUES (null, 'Teste', '2017-07-27', 'N', '68','1.95', default);

-- Inserindo mais do que um valor de uma vez só
INSERT INTO PESSOAS VALUES 
	(null, 'Teste', '2017-07-27', 'N', '68','1.95', default),
	(null, 'Gabriela', '2007-07-27', 'F', '60','1.65', 'Brasil'),
	(null, 'Guilherme', '1999-02-18', 'M', '75.8', '1.75', 'Brasil');