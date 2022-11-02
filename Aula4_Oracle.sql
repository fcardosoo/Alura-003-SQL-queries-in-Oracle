INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1040107', 'Light - 350 ml - Melância', 'Lata',
'350 ml', 'Melancia', 4.56);

select * from tb_produtos;

INSERT INTO TB_VENDEDORES
(MATRICULA, NOME, data_admissao, PERCENTUAL_COMISSAO)
VALUES
('00233', 'Joao Geraldo da Fonseca', '01/12/2015', 0.1);

INSERT INTO TB_VENDEDORES
(MATRICULA, NOME, data_admissao, PERCENTUAL_COMISSAO)
VALUES
('00400', 'Maria do Rosario', '23/07/2012', 0.15);

INSERT INTO TB_VENDEDORES
(MATRICULA, NOME, data_admissao, PERCENTUAL_COMISSAO)
VALUES
('0010', 'Marcia Almeida', '14/12/2016', 0.18);

INSERT INTO TB_VENDEDORES
(MATRICULA, NOME, data_admissao, PERCENTUAL_COMISSAO)
VALUES
('00414', 'Carlos Moreira', '13/11/2015', 0.14);

INSERT INTO TB_VENDEDORES
(MATRICULA, NOME, data_admissao, PERCENTUAL_COMISSAO)
VALUES
('00934', 'Juvenildo Martins', '09/03/2010', 0.2);

select * from tb_vendedores;


/*Modificando valores*/
select * from TB_produtos;
update tb_produtos set embalagem = 'PET' where produto = '1040107';

select * from TB_produtos;
update tb_produtos set embalagem = 'Lata' where produto = '1040107';

update tb_vendedores set matricula = '00810' where matricula = '0010';
update tb_vendedores set percentual_comissao = 0.18 where matricula = '00233';
update tb_vendedores set percentual_comissao = 0.18 where matricula = '00400';
update tb_vendedores set percentual_comissao = 0.18 where matricula = '00414';

/*Excluir registros*/
select * from tb_produtos;
delete from tb_produtos where produto='1040107';
delete from tb_vendedores where matricula='00400';

select * from tb_produtos;
INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1040107', 'Light - 350 ml - Melância', 'Lata',
'350 ml', 'Melancia', 4.56);

/*Adicionando uma chave primária*/
delete from tb_produtos where produto ='1040107';
alter table tb_produtos add constraint pk_tb_produtos primary key (produto);
alter table tb_vendedores add constraint pk_tb_vendedores primary key (matricula);

/*Manipulando campos de data e campos lógicos*/
alter table tb_clientes add constraints pk_tb_clientes primary key (cpf);
insert into tb_clientes (cpf, nome, endereco1,
endereco2, bairro, cidade, estado, cep, data_nascimento,
idade, sexo, limite_credito, volume_compra, primeira_compra)
values
('00333434577', 'Joao da Silva', 'Rua a nr 10', NULL, 'Vila Roman',
'Três Rios', 'RJ', '22222-22', '12/10/1965', 56,'M', 100000,2000,0);

select * from tb_clientes;

/* Inserindo comando para informar o que é o MES*/
insert into tb_clientes (cpf, nome, endereco1,
endereco2, bairro, cidade, estado, cep, data_nascimento,
idade, sexo, limite_credito, volume_compra, primeira_compra)
values
('00333434577', 'Joao da Silva', 'Rua a nr 10', NULL, 'Vila Roman',
'Três Rios', 'RJ', '22222-22', TO_DATE('12/10/1965', 'DD/MM/YYYY'), 56,'M', 100000,2000,0);

/* DELETE FROM TB_CLIENTES WHERE CPF='00333434577' */
SELECT TO_CHAR(DATA_NASCIMENTO,'MM') FROM TB_CLIENTES;

/* inserindo outro registro com formato de data AMERICADO*/
insert into tb_clientes (cpf, nome, endereco1,
endereco2, bairro, cidade, estado, cep, data_nascimento,
idade, sexo, limite_credito, volume_compra, primeira_compra)
values
('00333434588', 'Carlos da Silva', 'Rua a nr 10', NULL, 'Vila Roman',
'Três Rios', 'RJ', '22222-22', TO_DATE('12/10/1965', 'MM/DD/YYYY'), 56,'M', 100000,2000,0);

/*
Nossa empresa é multinacional, e surgiu a necessidade de incluir 
duas pessoas vendedoras da filial americana, ou seja, do exterior,
cujas datas de admissão vieram no padrão americano. Além disso, 
também será necessário incluir duas pessoas vendedoras da filial
brasileira.*/

use tb_vendedores;
insert into tb_vendedores (
matricula, nome, data_admissao, percentual_comissao
) values(
'0026', 'John Wayne', TO_DATE('03/27/2019', 'MM/DD/YYYY'),.12);

insert into tb_vendedores (
matricula, nome, data_admissao, percentual_comissao
) values(
'0777', 'Katy Peterson', TO_DATE('02/04/2020', 'MM/DD/YYYY'),.1);

insert into tb_vendedores (
matricula, nome, data_admissao, percentual_comissao
) values(
'0342', 'Rodrigo Almeida', TO_DATE('18/01/2022', 'DD/MM/YYYY'),.09);

insert into tb_vendedores (
matricula, nome, data_admissao, percentual_comissao
) values(
'0729', 'Patricia Martins', TO_DATE('02/01/2022', 'DD/MM/YYYY'),.09);

select * from tb_vendedores;
select to_char(data_admissao, 'MM') from tb_vendedores;