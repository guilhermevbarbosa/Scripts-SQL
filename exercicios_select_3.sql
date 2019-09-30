use cadastro;

select profissao, count(*) from tb_pessoas group by profissao;

select sexo, count(*) from tb_pessoas where nascimento > '2005-01-01' group by sexo;

select nacionalidade, count(*) from tb_pessoas where nacionalidade != 'Brasil' group by nacionalidade having count(*) > 3;

select altura, count(*) from tb_pessoas where peso > 100 group by altura having altura> (select avg(altura) from tb_pessoas);