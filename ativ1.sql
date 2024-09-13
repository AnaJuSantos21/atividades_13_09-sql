create database empresa2_1e;

#criar tabela departamento
create table departamento(
cod_dep integer PRIMARY KEY,
depnome varchar(50)
);

create table funcionario(
cod_func integer PRIMARY KEY,
cod_dep integer,
funnome varchar(100),
funnascimento date,
funsalario numeric(10,2),
foreign key(cod_dep) references departamento(cod_dep)
);

create table dependente(
cod_depen integer PRIMARY KEY,
cod_func integer,
depennome varchar(100),
foreign key(cod_func) references funcionario(cod_func)
);
