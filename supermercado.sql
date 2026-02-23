-- create database supermercado;

-- CREATE TABLE cliente (
--id int NOT NULL,
--nose varchar(50) NOT NULL, 
--cpf varchar(11) NOT NULL, 
--CONSTRAINT pk_id_cliente PRIMARY KEY (id)
--)

--create table produto(
--d int not null,
--descricao varchar(100) not null ,
--cod_barras varchar(14),
--valor decimal(16,2)
--)

--alter table produto add constraint pk_id_produto primary key (id)

--alter table produto add column situacao boolean not null

--alter table produto alter column descricao type varchar(200)

--insert into produto (id, descricao, cod_barras, valor, situacao)
--values (2, 'cafe', '8721398123', 10.20, true)

--insert into cliente (id, nose, cpf)
--values (1, 'Carlos', 010101010-10)

--alter table cliente 
--rename column nose to nome 

--update produto set descricao = 'arroz' where ID = 2 
--update produto set valor = 20 where ID = 2

--delete from produto where id = 2

--delete from cliente where id = 1 

--delete from produto;
--insert into produto (id, descricao, cod_barras, valor, situacao )
--values (1, 'Arroz', '8721398123', 10.20, true);
--insert into produto (id, descricao, cod_barras, valor, situacao )
--values (2, 'Cafe', '8721398123', 10.20, true);
--insert into produto (id, descricao, cod_barras, valor, situacao )
--values (3, 'Macarrao', '8721398123', 10.20, true);

--select
	prod.id, prod.descricao
--from
--	produto as prod
--order by id desc

