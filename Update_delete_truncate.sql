-- Criando nova tabela de cursos
CREATE TABLE IF NOT EXISTS cursos(
    nome varchar(160) not null unique,
    descricao text not null,
    carga int unsigned not null,
    total_aulas int not null,
    ano year not null default '2019'
);

-- Adicionando cova coluna id_cursos como primeiro dado da tabela, é a primary key
ALTER TABLE cursos ADD COLUMN id_cursos int not null auto_increment primary key first;

-- Inserindo dados, sendo alguns incorretos para modificação
INSERT INTO cursos VALUES
	('1','HTML4','Curso de HTML5', '40','37','2014'),
    ('2','Algoritmos','Lógica de Programação','20','15','2014'),
    ('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
    ('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
    ('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
    ('6','MySQL','Banco de Dados MySQL','30','15','2016'),
    ('7','Word','Curso completo de Word','40','30','2016'),
    ('8','Sapateado','Danças Rítmicas','40','30','2018'),
    ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
    ('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

-- Dando update no nome HTML4 para HTML5 onde o id_cursos for 1
update cursos set nome='HTML 5' where id_cursos='1';
-- Dando update em mais de um valor ao mesmo tempo
update cursos set nome='PHP', ano='2019' where id_cursos='4';
-- Deletando o registro de ID 8
delete from cursos where id_cursos='8';