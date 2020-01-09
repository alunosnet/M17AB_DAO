create table Seguranca(
	id int identity primary key,
	descricao varchar(100) not null
)

create table Recluso(
	id int identity primary key,
	nome varchar(100) not null,
	data_nascimento date not null,
	genero varchar(1),
	altura_cm int,
	peso int,
	id_seguranca int references Seguranca(id),
	fotografia varbinary(max)
)

