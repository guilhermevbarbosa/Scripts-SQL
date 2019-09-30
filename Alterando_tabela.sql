-- Alterando tabela pessoas
USE CADASTRO;

-- Adicionando nova coluna de profissao
ALTER TABLE PESSOAS ADD COLUMN profissao varchar(10);
-- Demonstração de DROP da coluna
ALTER TABLE PESSOAS DROP COLUMN profissao;

-- Adicionando nova coluna profissao depois da coluna nome
ALTER TABLE PESSOAS ADD COLUMN profissao varchar(10) AFTER nome;
-- Adicionando nova coluna profissao como primeira coluna
ALTER TABLE PESSOAS ADD COLUMN profissao varchar(10) FIRST;
-- Modificando o tipo da coluna profissao
ALTER TABLE PESSOAS MODIFY COLUMN profissao varchar(20);
-- Alterando o nome da coluna profissao para prof
ALTER TABLE PESSOAS CHANGE COLUMN profissao prof varchar(20);
-- Renomeando a tabela inteira
ALTER TABLE PESSOAS RENAME TO TB_PESSOAS;