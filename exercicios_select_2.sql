use cadastro;

select * from tb_pessoas;

select * from tb_pessoas where sexo = 'F';

select * from tb_pessoas where nascimento between '2000-01-01' and '2015-12-31' order by nascimento desc;

select * from tb_pessoas where sexo = 'M' and profissao = 'programador';

select * from tb_pessoas where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'j%' ;

select nome, nacionalidade from tb_pessoas where sexo = 'M' and nacionalidade != 'Brasil' and peso < 100 and nome like '%Silva%';

select max(altura) from tb_pessoas where sexo = 'M' and nacionalidade = 'Brasil';

select avg(peso) from tb_pessoas;

select min(peso) from tb_pessoas where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

select count(*) from tb_pessoas where sexo = 'F' and altura > '1.90';