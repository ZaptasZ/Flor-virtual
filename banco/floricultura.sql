create database floricultura1
use floricultura1

create table produtos(
cod_produtos int primary key identity (1,1),
descricao varchar(100),
quantidadeEstoque int not null,
valor float not null,
)

create table clientes(
cod_cliente int primary key identity (1,1),
nome varchar(50),
endereco varchar(200),
CPF char (11),
)

create table notaFiscal(
cod_notaFiscal int primary key identity (1,1),
dataNF date,
codCliente int,

constraint fk_clientes_notaFiscal
foreign key (codCliente) references clientes(cod_cliente)
)

create table vendas(
codProdutos int,
codNF int,
quantidadeVendas int,

constraint fk_produtos_vendas
foreign key (codProdutos) references produtos(cod_produtos),

constraint fk_notaFiscal_vendas
foreign key (codNF) references notaFiscal(cod_notaFiscal)
)

insert into produtos (descricao, quantidadeEstoque, valor)
values ('girassóis', 50, 46.6)

insert into produtos (descricao, quantidadeEstoque, valor)
values ('rosas amarelas', 150, 11.5)

insert into produtos (descricao, quantidadeEstoque, valor)
values ('rosas vermelhas', 200, 12.0)

insert into produtos (descricao, quantidadeEstoque, valor)
values ('violetas', 70, 15.9)

insert into produtos (descricao, quantidadeEstoque, valor)
values ('lírio', 20, 11.9)

insert into clientes (CPF, endereco, nome)
values(23644964700, 'Moema', 'Nicolas')

insert into clientes (CPF, endereco, nome)
values(77447412180, 'Jardins', 'Cristina')

insert into clientes (CPF, endereco, nome)
values(32304764843, 'Campo Limpo', 'Renato')

insert into clientes (CPF, endereco, nome)
values(64723838473, 'Vila Mariana', 'Catarina')

insert into clientes (CPF, endereco, nome)
values(46700594162, 'Mooca', 'Francisco')

select * from clientes

select * from produtos



