use farmacia;

-- Creacion de las 3 tablas
create table provincia(
	id_provincia int not null,
	nombre varchar(45) not null,
	primary key (id_provincia)
);

create table localidad(
	id_localidad int not null,
	nombre varchar(45) not null,
	primary key (id_localidad)
);

create table calle(
	id_calle int not null,
	nombre varchar(45) not null,
	primary key (id_calle)
);

-- Eliminacion de las 3 tablas
drop table provincia;
drop table localidad;
drop table calle;

-- Creacion NUEVAMENTE de las 3 tablas
create table provincia(
	id_provincia int not null,
	nombre varchar(45) not null,
	primary key (id_provincia)
);

create table localidad(
	id_localidad int not null,
	nombre varchar(45) not null,
	primary key (id_localidad)
);

create table calle(
	id_calle int not null,
	nombre varchar(45) not null,
	primary key (id_calle)
);

-- Renombramiento de los nombres de las tablas y retorno a los nombres originales
alter table provincia rename to region;
alter table localidad rename to partido;
alter table calle rename to avenida;

alter table region rename to provincia;
alter table partido rename to localidad;
alter table avenida rename to calle;

-- Renombramiento de los nombres de una columna de cada tabla y retorno a los nombres originales
alter table provincia change column nombre nomb_calle varchar(100);
alter table provincia change column nomb_calle nombre varchar(45) not null;
alter table localidad change column nombre nomb_localidad varchar(100);
alter table localidad change column nomb_localidad nombre varchar(45) not null;
alter table calle change column nombre nomb_avenida varchar(100);
alter table calle change column nomb_avenida nombre varchar(45) not null;

-- Insertamiento de los datos salocitados:
insert into provincia values(1, 'Buenos Aires');
insert into provincia values(2, 'CABA');

insert into localidad values(1, 'Lanús');
insert into localidad values(2, 'Pompeya');
insert into localidad values(3, 'Avellaneda');

insert into calle values (1, '9 de Julio');
insert into calle values (2, 'Hipólito Yrigoyen)');
insert into calle values (3, 'Mitre');
insert into calle values (4, 'Sáenz');

-- Consultamos los registos insertados
select * from provincia;
select * from localidad;
select * from calle;