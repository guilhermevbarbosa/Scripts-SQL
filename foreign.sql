use cadastro;

alter table tb_pessoas add column curso_preferido int;
-- Referenciando a nova variável curso_preferido como chave estrangeira de cursos idcurso
alter table tb_pessoas add foreign key(curso_preferido) references cursos(idcurso);


-- JOIN

-- Dá um inner join nas tabelas para exibir de alunos e curso para mostrar o preferido de cada, exibindo somente que prefere alguma coisa
select tb_pessoas.nome, cursos.nome, cursos.ano from tb_pessoas inner join cursos on cursos.idcurso = tb_pessoas.curso_preferido;
-- Dá um left outer join nas tabelas para exibir de alunos e curso para mostrar o preferido, exibindo quem prefere ou não alguma coisa, dando enfase a esquerda (exibindo todos os alunos)
select tb_pessoas.nome, cursos.nome, cursos.ano from tb_pessoas left outer join cursos on cursos.idcurso = tb_pessoas.curso_preferido;
-- Dá um right outer join nas tabelas para exibir de alunos e curso para mostrar o preferido, exibindo quem prefere ou não alguma coisa, dando enfase a direita (exibindo todos os cursos disponíveis)
select tb_pessoas.nome, cursos.nome, cursos.ano from tb_pessoas right outer join cursos on cursos.idcurso = tb_pessoas.curso_preferido;