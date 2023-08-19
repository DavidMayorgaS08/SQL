create table obra_arte(
    id int not null primary key,
    titulo varchar(50) not null,
    nombre_artista varchar(50) not null,
    anio_creacion date not null,
    dimensiones varchar(50) not null,
    tecnica varchar(50) not null
)

create table comprador(
    cc int not null primary key,
    nombre varchar(50) not null,
    edad int not null,
    dinero int not null,
    direccion varchar(50) not null,
    telefono int not null
)

create table Ventas(
    id int not null primary key,
    fecha date not null,
    precio decimal(10,2) not null,
    cc_comprador int not null,
    id_obra int not null,
    foreign key(cc_comprador) references comprador(cc),
    foreign key(id_obra) references obra_arte(id)
)

create table historial(
    id int not null primary key,
    nombre_propietario varchar(50) not null,
    fecha date not null,
    id_obra int not null,
    foreign key(id_obra) references obra_arte(id)
)

create table exposiciones(
    id int not null primary key,
    cant_obras int not null
)

create table Dia_expo(
    id int not null primary key,
    fecha date not null,
    id_obras int not null,
    id_exposicion int not null,
    foreign key(id_obras) references obra_arte(id),
    foreign key(id_exposicion) references exposiciones(id)
)

create table Evento(
    id int not null primary key,
    Tipo varchar(50) not null,
    cant_Arte_expuesto int not null,
    nombre varchar(50) not null
)

create table Fecha_evento(
    id int not null primary key,
    fecha date not null,
    cant_personas int not null,
    id_evento int not null,
    id_obras int not null,
    foreign key(id_evento) references Evento(id),
    foreign key(id_obras) references obra_arte(id)
)

create table Valor_obra(
    id int not null primary key,
    fecha date not null,
    precio_anterior decimal(10,2) not null,
    precio_actual decimal(10,2) not null,
    id_obra int not null,
    foreign key(id_obra) references obra_arte(id)
)

create table Institucion(
    cc int not null primary key,
    nombre varchar(50) not null,
    direccion varchar(50) not null,
    telefono int not null
)

create table Prestamo(
    id int not null primary key,
    fecha_inicio date not null,
    fecha_final date not null,
    ubicación varchar(50) not null,
    id_obra int not null,
    cc_institucion int not null,
    foreign key(id_obra) references obra_arte(id),
    foreign key(cc_institucion) references Institucion(cc)
)


/* ingresar datos a las tablas */

/* 5 datos a tabla obra_arte */

insert into obra_arte values(1, 'La noche estrellada', 'Vincent van Gogh', '1889-06-18', '73.7 cm x 92.1 cm', 'Óleo sobre lienzo');
insert into obra_arte values(2, 'El grito', 'Edvard Munch', '1893-01-01', '91 cm x 73.5 cm', 'Óleo, temple y pastel sobre cartón');
insert into obra_arte values(3, 'La persistencia de la memoria', 'Salvador Dalí', '1931-01-01', '24 cm x 33 cm', 'Óleo sobre lienzo');
insert into obra_arte values(4, 'La joven de la perla', 'Johannes Vermeer', '1665-01-01', '44.5 cm x 39 cm', 'Óleo sobre lienzo');
insert into obra_arte values(5, 'La noche estrellada sobre el Ródano', 'Vincent van Gogh', '1888-01-01', '72.5 cm x 92 cm', 'Óleo sobre lienzo');


/* 5 datos a tabla comprador */

insert into comprador values(1254665, 'Juan', 25, 10000000, 'Calle 1 # 1-1', 356465484);
insert into comprador values(168666, 'Pedro', 30, 20000000, 'Calle 2 # 2-2', 465164621);
insert into comprador values(6546465, 'Maria', 35, 30000000, 'Calle 3 # 3-3', 321465465);
insert into comprador values(654674, 'Camila', 40, 40000000, 'Calle 4 # 4-4', 654654654);
insert into comprador values(6548946, 'Sofia', 45, 50000000, 'Calle 5 # 5-5', 12654654);


/* 15 datos a tabla Ventas*/

insert into ventas values(1, '2021-01-01', 1000000, 1254665, 1);
insert into ventas values(2, '2021-01-02', 2000000, 6546465, 1);
insert into ventas values(3, '2021-01-03', 3000000, 654674, 4);
insert into ventas values(4, '2021-01-04', 4000000, 1254665, 5);
insert into ventas values(5, '2021-01-05', 5000000, 168666, 3);
insert into ventas values(6, '2021-01-06', 6000000, 6548946, 2);
insert into ventas values(7, '2021-01-07', 7000000, 1254665, 4);
insert into ventas values(8, '2021-01-08', 8000000, 168666, 5);
insert into ventas values(9, '2021-01-09', 9000000, 1254665, 3);
insert into ventas values(10, '2021-01-10', 10000000, 6548946, 2);
insert into ventas values(11, '2021-01-11', 11000000, 168666, 1);
insert into ventas values(12, '2021-01-12', 12000000, 654674, 5);
insert into ventas values(13, '2021-01-13', 13000000, 1254665, 4);
insert into ventas values(14, '2021-01-14', 14000000, 6546465, 2);
insert into ventas values(15, '2021-01-15', 15000000, 168666, 3);


/* 10 datos a tabla historial*/

insert into historial values(1, 'Juan', '2021-01-01', 1);
insert into historial values(2, 'Pedro', '2021-01-02', 2);
insert into historial values(3, 'Maria', '2021-01-03', 3);
insert into historial values(4, 'Luis', '2021-01-04', 4);
insert into historial values(5, 'Ana', '2021-01-05', 5);
insert into historial values(6, 'Juan', '2021-01-06', 3);
insert into historial values(7, 'Pedro', '2021-01-07', 2);
insert into historial values(8, 'Maria', '2021-01-08', 1);
insert into historial values(9, 'Luis', '2021-01-09', 5);
insert into historial values(10, 'Ana', '2021-01-10', 4);


/* 5 datos a tabla exposiciones*/

insert into exposiciones values(1, 15);
insert into exposiciones values(2, 12);
insert into exposiciones values(3, 10);
insert into exposiciones values(4, 16);
insert into exposiciones values(5, 14);


/* 15 datos a tabla Dia_expo*/

insert into Dia_expo values(1, '2021-01-01', 1, 1);
insert into Dia_expo values(2, '2021-01-02', 3, 2);
insert into Dia_expo values(3, '2021-01-03', 5, 3);
insert into Dia_expo values(4, '2021-01-04', 4, 4);
insert into Dia_expo values(5, '2021-01-05', 2, 5);
insert into Dia_expo values(6, '2021-01-06', 1, 5);
insert into Dia_expo values(7, '2021-01-07', 3, 4);
insert into Dia_expo values(8, '2021-01-08', 5, 3);
insert into Dia_expo values(9, '2021-01-09', 4, 2);
insert into Dia_expo values(10, '2021-01-10', 2, 1);
insert into Dia_expo values(11, '2021-01-11', 1, 2);
insert into Dia_expo values(12, '2021-01-12', 3, 3);
insert into Dia_expo values(13, '2021-01-13', 5, 4);
insert into Dia_expo values(14, '2021-01-14', 4, 5);
insert into Dia_expo values(15, '2021-01-15', 2, 1);


/* 5 datos a tabla Evento*/

insert into Evento (id, Tipo, cant_Arte_expuesto, nombre) values(1, 'Presencial', 15, 'Exposicion 1');
insert into Evento (id, Tipo, cant_Arte_expuesto, nombre) values(2, 'Virtual', 12, 'Exposicion 2');
insert into Evento (id, Tipo, cant_Arte_expuesto, nombre) values(3, 'Presencial', 10, 'Exposicion 3');
insert into Evento (id, Tipo, cant_Arte_expuesto, nombre) values(4, 'Virtual', 16, 'Exposicion 4');
insert into Evento (id, Tipo, cant_Arte_expuesto, nombre) values(5, 'Presencial', 14, 'Exposicion 5');


/* 15 datos a tabla Fecha_evento*/

insert into Fecha_evento values(1, '2021-01-01', 20, 4, 1);
insert into Fecha_evento values(2, '2021-01-02', 30, 3, 2);
insert into Fecha_evento values(3, '2021-01-03', 10, 2, 3);
insert into Fecha_evento values(4, '2021-01-04', 23, 3, 4);
insert into Fecha_evento values(5, '2021-01-05', 15, 4, 5);
insert into Fecha_evento values(6, '2021-01-06', 20, 2, 5);
insert into Fecha_evento values(7, '2021-01-07', 30, 3, 4);
insert into Fecha_evento values(8, '2021-01-08', 10, 4, 3);
insert into Fecha_evento values(9, '2021-01-09', 23, 2, 2);
insert into Fecha_evento values(10, '2021-01-10', 15, 3, 1);
insert into Fecha_evento values(11, '2021-01-11', 20, 4, 2);
insert into Fecha_evento values(12, '2021-01-12', 30, 3, 3);
insert into Fecha_evento values(13, '2021-01-13', 10, 2, 4);
insert into Fecha_evento values(14, '2021-01-14', 23, 3, 5);
insert into Fecha_evento values(15, '2021-01-15', 15, 4, 1);


/* 10 datos a la tabla Valor_obra*/

insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(1, '2021-01-01', 1000000, 2000000, 1);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(2, '2021-01-02', 2000000, 3000000, 5);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(3, '2021-01-03', 3000000, 4000000, 3);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(4, '2021-01-04', 4000000, 5000000, 1);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(5, '2021-01-05', 5000000, 6000000, 4);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(6, '2021-01-06', 6000000, 7000000, 2);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(7, '2021-01-07', 7000000, 8000000, 4);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(8, '2021-01-08', 8000000, 9000000, 1);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(9, '2021-01-09', 9000000, 10000000, 3);
insert into Valor_obra (id, fecha, precio_anterior, precio_actual, id_obra) values(10, '2021-01-10', 10000000, 11000000, 2);


/*5 datos a la tabla Institucion*/

insert into Institucion (cc, nombre, direccion, telefono) values(1753543, 'Museo de Arte Moderno', 'Calle 1 # 1-1', 1234567);
insert into Institucion (cc, nombre, direccion, telefono) values(245453, 'Museo de Arte Contemporaneo', 'Calle 2 # 2-2', 1234568);
insert into Institucion (cc, nombre, direccion, telefono) values(1534533, 'Museo de Arte Clasico', 'Calle 3 # 3-3', 1234569);
insert into Institucion (cc, nombre, direccion, telefono) values(148774, 'Museo de Arte Antiguo', 'Calle 4 # 4-4', 1234560);
insert into Institucion (cc, nombre, direccion, telefono) values(14895555, 'Museo de Arte Moderno', 'Calle 5 # 5-5', 1234561);


/* 15 datos a la tabla Prestamo*/

insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(1, '2021-01-01', '2021-01-15', 'Calle 1 # 1-1', 1, 1753543);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(2, '2021-01-02', '2021-01-16', 'Calle 2 # 2-2', 1, 14895555);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(3, '2021-01-03', '2021-01-17', 'Calle 3 # 3-3', 2, 1534533);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(4, '2021-01-04', '2021-01-18', 'Calle 4 # 4-4', 3, 1753543);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(5, '2021-01-05', '2021-01-19', 'Calle 5 # 5-5', 1, 1534533);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(6, '2021-01-06', '2021-01-20', 'Calle 1 # 1-1', 5, 1753543);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(7, '2021-01-07', '2021-01-21', 'Calle 2 # 2-2', 1, 14895555);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(8, '2021-01-08', '2021-01-22', 'Calle 3 # 3-3', 2, 1753543);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(9, '2021-01-09', '2021-01-23', 'Calle 4 # 4-4', 3, 1534533);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(10, '2021-01-10', '2021-01-24', 'Calle 5 # 5-5', 4, 14895555);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(11, '2021-01-11', '2021-01-25', 'Calle 1 # 1-1', 2, 1753543);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(12, '2021-01-12', '2021-01-26', 'Calle 2 # 2-2', 3, 14895555);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(13, '2021-01-13', '2021-01-27', 'Calle 3 # 3-3', 4, 1534533);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(14, '2021-01-14', '2021-01-28', 'Calle 4 # 4-4', 5, 14895555);
insert into Prestamo (id, fecha_inicio, fecha_final, ubicación, id_obra, cc_institucion) values(15, '2021-01-15', '2021-01-29', 'Calle 5 # 5-5', 1, 14895555);


/* Consultas */

/*Listar todas la obras de arte*/

select * from obra_arte;


/*Listar todas las obras de arte utilizadas en la exposición 1*/

select * from obra_arte where id in (select id_obras from Dia_expo where id_exposicion = 1);


/*listar las obras de arte vendidas con el nombre del comprador y la fecha de ventas*/

select o.titulo, v.fecha, c.nombre 
from obra_arte o, ventas v, comprador c 
where v.cc_comprador = c.cc and v.id_obra = o.id;


/*Listar en que eventos a estado involucada la obra de arte con id 3*/

select nombre from Evento where id in (select id_evento from Fecha_evento where id_obras = 3);


/*Listar la informacion de las obras de arte y sus compradores cuyo precio de venta fue mayor a 3000000 y menor a 9000000*/

select o.id, o.titulo, o.nombre_artista, o.anio_creacion, o.dimensiones, o.tecnica, c.nombre
from obra_arte o, comprador c, ventas v
where v.id_obra = o.id and v.cc_comprador = c.cc and v.precio > 3000000 and v.precio < 9000000;


/*Listar las compras con el nombre de la obra apartir del registro nuemro 3 hasta el 8*/

select titulo from obra_arte where id in (select id_obra from ventas where id > 3 and id < 8);


/*Listar las obras de arte que contengan la frase "el" en su titulo*/

select titulo from obra_arte where titulo like '%el%';