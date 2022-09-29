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

create table cliente(
	dni int primary key,
	apellido varchar(45) not null,
	nombre varchar(45)not null,
	calle_idcalle int not null,
	localidad_idlocalidad int not null,
	provincia_idprovincia int not null,
	numero_calle int not null,
    
	foreign key (calle_idcalle) references calle(id_calle),
	foreign key (localidad_idlocalidad) references localidad(id_localidad),
	foreign key (provincia_idprovincia) references provincia(id_provincia)
);

create table cliente_tiene_obra_social(
	cliente_dni int primary key,
	obra_social_codigo int not null,
	nro_afiliado int not null,
	foreign key (cliente_dni) references cliente(dni)
);

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

-- Insertamos los datos de los clientes
insert into cliente values(12345678, "Belgrano", "Manuel", 1,1,1,2345);
insert into cliente values(23456789, "Saavedra", "Cornelio",1,1,1,1234);
insert into cliente values(44444444, "Moreno", "Mariano", 3,3,1,3333);
insert into cliente values(33333333, "Larrea", "Juan", 4,2,2,2345);
insert into cliente values(22222222, "Moreno", "Manuel", 4,2,2,7777);

-- Insertamos los datos a clientes con obra social
insert into cliente_tiene_obra_social values (22222222, 2, 11223344);
insert into cliente_tiene_obra_social values (33333333, 2, 33445566);
insert into cliente_tiene_obra_social values (44444444, 2, 12356987);
insert into cliente_tiene_obra_social values (12345678, 1, 87654321);

-- Mostramos todos los datos de los clientes
select * from cliente;

-- Mostramos dni y apellido de todos los clientes
select dni,apellido from cliente;

-- Mostramos nombre y apellido de cliente con dni 12345678
select apellido,nombre from cliente where dni=12345678;

-- Mostramos todos los clientes que se apelliden saavedra
select * from cliente where cliente.apellido="Saavedra";

-- Mostramos todos los clientes que vivan en av 9 de julio
select * from cliente where calle_idcalle=1;

-- Mostramos todos los clientes que vivan en av 9 de julio y en el la direccion 2345
select * from cliente where calle_idcalle=1 and numero_calle=2345;

-- Mostramos todos los clientes que vivan en av 9 de julio o en la calle Mitre
select * from cliente where calle_idcalle=1 or calle_idcalle=3;

-- Mostramos todos los clientes con sus respectivas direcciones usando inner join
select c.dni, c.apellido, c.nombre, ca.nombre, c.numero_calle from cliente c inner join calle ca on c.calle_idcalle=ca.id_calle;

-- Inner join con filtro por nombre de localidad
select c.dni, c.apellido, c.nombre, l.nombre  as Localidad from cliente c inner join localidad l on c.localidad_idlocalidad=l.id_localidad where l.nombre="Avellaneda";

-- Mostramos todos los registros de la izquierda y de la derecha solo los que participan de la relacion
select ca.nombre as calle, dni, apellido, c.nombre from calle ca left join cliente c on ca.id_calle=c.calle_idcalle;

-- Mostramos todos los registros de la derecha y de la izuierda solo los que participan de la relacion
select cos.nro_afiliado, dni, apellido, c.nombre from cliente_tiene_obra_social cos right join cliente c on c.dni=cos.cliente_dni;

-- Mostramos todos los registros de la derecha y de la izuierda solo los que participan de la relacion mediante una consulta diferente
select cos.nro_afiliado, dni, apellido, c.nombre from cliente c left join cliente_tiene_obra_social cos on c.dni=cos.cliente_dni;

-- Mostramos clientes sin obra social
select cos.nro_afiliado, dni, apellido, c.nombre from cliente c
left join cliente_tiene_obra_social cos on c.dni=cos.cliente_dni
where isnull(cos.nro_afiliado);

-- Eliminacion de las 3 tablas
drop table cliente_tiene_obra_social;
drop table cliente;
drop table provincia;
drop table localidad;
drop table calle;
