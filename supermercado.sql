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
	--prod.id, prod.descricao
--from
--	produto as prod
--order by id desc

-- drop table if exists pedidos;
--drop table if exists produtos;
--drop table if exists leads_potenciais;
--drop table if exists clientes;
 
--CREATE TABLE public.clientes (
	--id int NOT NULL,
	--nome varchar(50) NOT NULL,
	--cidade varchar(50) NULL,
	--CONSTRAINT clientes_pkey PRIMARY KEY (id)
--);
 
--CREATE TABLE public.leads_potenciais (
	--id int NOT NULL,
	--nome varchar(50) NULL,
	--email varchar(50) NULL,
	--CONSTRAINT leads_potenciais_pkey PRIMARY KEY (id)
--);
 
--CREATE TABLE public.produtos (
	--id int NOT NULL,
	--nomeproduto varchar(100) NOT NULL,
	--precopadrao numeric(10, 2) NULL,
	--CONSTRAINT produtos_pkey PRIMARY KEY (id)
--);
 
 
--CREATE TABLE public.pedidos (
	--id int NOT NULL,
	--clienteid int NULL,
	--produtoid int NULL,
	--quantidade int NULL,
	--precovenda numeric(10, 2) NULL,
	--CONSTRAINT pedidos_pkey PRIMARY KEY (id),
	--CONSTRAINT fk_cliente_pedido FOREIGN KEY (clienteid) REFERENCES public.clientes(id),
	--CONSTRAINT fk_produto_pedido FOREIGN KEY (produtoid) REFERENCES public.produtos(id)
--);
 
--INSERT INTO Produtos (Id, NomeProduto, PrecoPadrao) VALUES
--(10, 'Notebook Pro', 4500.00),
--(11, 'Rato Sem Fio', 120.00),
--(12, 'Monitor 24"', 950.00),
--(13, 'Teclado Mecânico', 350.00),
--(14, 'Webcam HD', 250.00),
--(15, 'Smartphone High', 2800.00),
--(16, 'Placa de Vídeo', 6000.00);
 
--INSERT INTO Clientes (Id, Nome, Cidade) VALUES
--(1, 'Maria Silva', 'São Paulo'),
--(2, 'João Pereira', 'Rio de Janeiro'),
--(3, 'Ana Costa', 'Curitiba'),
--(4, 'Ricardo Santos', 'Belo Horizonte'),
--(5, 'Beatriz Oliveira', 'Porto Alegre'),
--(6, 'Carlos Souza', 'Salvador'),
--(7, 'Fernanda Lima', 'Recife'),
--(8, 'Paulo Rocha', 'Brasília');
 
--INSERT INTO Pedidos (Id, ClienteID, ProdutoID, Quantidade, PrecoVenda) VALUES
--(101, 1, 10, 1, 4500.00), 
--(102, 1, 11, 2, 110.00),  
--(103, 2, 12, 1, 950.00), 
--(104, 4, 13, 1, 350.00),  
--(105, 5, 15, 1, 2800.00), 
--(106, 1, 14, 1, 250.00), 
--(107, 6, 14, 1, 250.00), 
--(108, 2, 11, 1, 120.00),  
--(109, 7, 10, 1, 4300.00); 
 
 
--INSERT INTO Leads_Potenciais (Id, Nome, Email) VALUES
--(1, 'Maria Silva', 'maria@email.com'),     
--(2, 'João Pereira', 'joao@email.com'),     
--(3, 'Roberto Alves', 'roberto@test.com'),   
--(4, 'Sónia Mendes', 'sonia@test.com'),     
--(5, 'Lucas Neto', 'lucas@test.com'),       
--(6, 'Daniela Paz', 'daniela@test.com');    

--select
	--ped.id pedido_id,
	--cli.id cliente_id,
	--cli.nome,
	--prod.nomeproduto
--from
	--pedidos ped inner join clientes cli on ped.clienteid = cli.id
	            --inner join produtos prod on prod.id = ped.produtoid
--where
	--cli.id = 1

--cli.id clienteid,
	--cli.nome,
	--ped.id pedidoid
--from
	--clientes cli left join pedidos ped on cli.id  = ped.clienteid

--select 
	--prod.id produto_id, 
	--prod.nomeproduto,
	--ped.id pedido_id
--from 
	--pedidos ped right join produtos prod on ped.produtoid = prod.id

--select 
	--prod.id produto_id, 
	--prod.nomeproduto,
	--ped.id pedido_id
--from 
	--produtos prod left join pedidos ped on ped.produtoid = prod.id
