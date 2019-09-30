use cadastro;
-- Fazendo a busca pelo SELECT ordenando pelo nome
SELECT * FROM cursos order by nome;
-- Fazendo a busca pelo SELECT ordenando pelo nome decrescente
SELECT * FROM cursos order by nome desc;
-- Fazendo a busca pelo SELECT ordenando pelo nome crescente
SELECT * FROM cursos order by nome asc;

-- Fazendo a busca pelo SELECT filtrando apenas os dados selecionados
SELECT nome,carga,totaulas FROM cursos order by nome;
-- Fazendo a busca pelo SELECT filtrando apenas os dados selecionados e ordenando primeiro por ano decrescente e nome crescente logo após
SELECT nome,carga,ano FROM cursos order by ano desc, nome;

-- Fazendo a busca limitando pelo ano de 2019
SELECT * FROM cursos where ano='2019' order by nome;
-- Fazendo a busca por cursos maiores ou iguais a 2019
SELECT * FROM cursos where ano >='2019' order by ano;

-- Fazendo a busca pelo nome e ano apenas, filtrando onde for entre 2016 e 2018 e depois ordenando pelo ano
SELECT nome,ano FROM cursos where ano between '2016' and '2018' order by ano;
-- Fazendo a busca de registros de apenas os anos 2016, 2018 e 2020
SELECT nome,ano FROM cursos where ano in ('2016','2018','2020') order by ano;

-- Fazendo busca por cursos que a carga horária for maior que 30 e a totalidade de aulas for menor que 20, combinando os dois parâmetros de pesquisa juntos
SELECT * FROM cursos where carga > 30 and totaulas < 20;
-- Fazendo busca por cursos que a carga horária for maior que 30 ou a totalidade de aulas for menor que 20
SELECT * FROM cursos where carga > 30 or totaulas < 20;

-- Faz a busca por cursos que comecem com p (o % substitui nenhum ou vários caracteres)
select * from cursos where nome like 'p%';
-- Faz a busca por cursos que terminem com p
select * from cursos where nome like '%p';

-- Faz a busca por cursos que contenham a letra A em qualquer posição
select * from cursos where nome like '%a%';
-- Faz a busca por cursos que não contenham a letra A em nenhuma posição
select * from cursos where nome not like '%a%';
-- Faz a busca por cursos que comecem com ph ... e terminem com p (PHP / Photoshop)
select * from cursos where nome like 'ph%p';
-- Faz a busca por cursos que comecem com ph ... e tenham p no final, mas exige que depois desse p tenha mais algum caracter
select * from cursos where nome like 'ph%p_';

-- Faz a busca de todas as nacionalidades disponíveis, mas sem repetir nenhuma
select distinct nacionalidade from tb_pessoas;

-- Faz a contagem de quantos registros tem na tabela cursos
select count(*) from cursos ;
-- Exibe qual o maior da tabela, no caso a maior carga horária
select max(carga) from cursos ;
-- Exibe qual o menor da tabela, no caso a menor carga horária
select min(carga) from cursos ;
-- Exibe qual o maior da tabela, mas com o nome também, ele exibe o primeiro, se tiver mais algum com o mesmo número, não vai exibir
select nome,max(carga) from cursos ;
-- Soma os registros selecionados
select sum(carga) from cursos ;
-- Tira a média dos valores
select avg(carga) from cursos ;

-- Agrupa cargas por sua categoria e mostra no count quanto tem de cada grupo de cargas
select carga, count(nome) from cursos group by carga;
-- Faz um select por ano e agrupa de acordo, e exibe apenas os grupos que são maiores que o ano de 2018, junto com a contagem de registros
select ano, count(*) from cursos group by ano having ano > 2018 order by count(*) desc;
-- Select de carga com contador de cursos que são de ano depois de 2015, agrupando por cargas e exibindo somente os cursos que tem carga maior que a média dos cursos
select carga, count(*) from cursos where ano > 2015 group by carga having carga> (select avg(carga) FROM cursos);