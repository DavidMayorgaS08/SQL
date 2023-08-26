/* Sistema de Seguimiento de Hábitos y Metas Personales
diseñaremos una base de datos para un sistema de seguimiento de hábitos y metas personales. Los usuarios podrán establecer hábitos que desean seguir diariamente y registrar su progreso. También podrán establecer metas a largo plazo y monitorear su avance. El objetivo es que los estudiantes practiquen el diseño de la base de datos, la creación de tablas y consultas SQL para manejar hábitos, progreso y metas. Datos:
Diseña el esquema completo de la base de datos con las entidades y relaciones que creas conveniente, para que se cumpla.*/



create table usuario(
    Id int not null primary key,
    Nombre varchar(50) not null,
    Correo varchar(50) not null,
    Fecha_registro date not null
);

create table habito(
    Id int not null primary key,
    Nombre varchar(50) not null,
    Descripcion varchar(50) not null
);

create table meta(
    Id int not null primary key,
    Nombre varchar(50) not null,
    Descripcion varchar(50) not null,
    Fecha_inicio date not null,
    Fecha_fin date not null
);

create table reg_diario(
    Id int not null primary key,
    Progreso int not null,
    Fecha date not null,
    Estado varchar(50) not null,
    Id_usuario int not null,
    Id_habito int not null,
    foreign key (Id_usuario) references usuario(Id),
    foreign key (Id_habito) references habito(Id)
);

create table reg_meta(
    Id int not null primary key,
    Progreso int not null,
    Id_usuario int not null,
    Id_meta int not null,
    foreign key (Id_usuario) references usuario(Id),
    foreign key (Id_meta) references meta(Id)
);


/* INSERTAR DATOS */

/* USUARIO */

insert into usuario values (1, 'Juan', 'aaaa@gmail.com', '2021-01-01');
insert into usuario values (2, 'Pedro', 'bbbb@gmail.com', '2021-01-01');
insert into usuario values (3, 'Maria', 'cccc@gmail.com', '2021-01-01');
insert into usuario values (4, 'Jose', 'dddd@gmail.com', '2021-01-01');
insert into usuario values (5, 'Luis', 'eeee@gmail.com', '2021-01-01');
insert into usuario values (6, 'Ana', 'ffff@gmail.com', '2021-01-01');


/* HABITO */

insert into habito values (1, 'Leer', 'Leer 1 hora diaria');
insert into habito values (2, 'Ejercicio', 'Ejercicio 1 hora diaria');
insert into habito values (3, 'Estudiar', 'Estudiar 1 hora diaria');
insert into habito values (4, 'Programar', 'Programar 1 hora diaria');
insert into habito values (5, 'Leer', 'Leer 30 minutos diaria');
insert into habito values (6, 'Meditar', 'Meditar 30 minutos diaria');



/* META */

insert into meta values (1, 'Leer', 'Leer 3 libros al año ', '2021-01-01', '2022-12-31');
insert into meta values (2, 'Ejercicio', 'Ejercicio 3 horas a la semana', '2021-01-01', '2022-12-31');
insert into meta values (3, 'Estudiar', 'Estudiar 12 horas a la semana', '2021-01-01', '2022-12-31');
insert into meta values (4, 'Programar', 'Programar 12 horas a la semana', '2021-01-01', '2022-12-31');
insert into meta values (5, 'Programar', 'Programar 8 horas a la semana', '2021-01-01', '2022-12-31');
insert into meta values (6, 'Correr', 'Correr 6 horas a la semana', '2021-01-01', '2022-12-31');


/* REG_DIARIO */

insert into reg_diario values (1, 38, '2021-01-01', 'Cumplido', 1, 1);
insert into reg_diario values (2, 45, '2021-01-12', 'Cumplido', 1, 2);
insert into reg_diario values (3, 50, '2021-01-13', 'Incumplido', 2, 3);
insert into reg_diario values (4, 20, '2021-01-19', 'Incumplido', 2, 4);
insert into reg_diario values (5, 55, '2021-01-11', 'Cumplido', 3, 1);
insert into reg_diario values (6, 10, '2021-02-25', 'Incumplido', 3, 2);
insert into reg_diario values (7, 47, '2021-02-14', 'Cumplido', 4, 3);
insert into reg_diario values (8, 40, '2021-02-04', 'Incumplido', 4, 4);
insert into reg_diario values (9, 50, '2021-02-02', 'Cumplido', 1, 1);
insert into reg_diario values (10, 80, '2021-03-22', 'Cumplido', 1, 2);
insert into reg_diario values (11, 50, '2021-03-12', 'Incumplido', 2, 3);
insert into reg_diario values (12, 26, '2021-03-18', 'Incumplido', 2, 4);
insert into reg_diario values (13, 50, '2021-03-13', 'Cumplido', 3, 1);
insert into reg_diario values (14, 10, '2021-03-20', 'Cumplido', 3, 2);
insert into reg_diario values (15, 50, '2021-03-15', 'Incumplido', 4, 3);
insert into reg_diario values (16, 25, '2021-03-10', 'Cumplido', 4, 4);
insert into reg_diario values (17, 50, '2021-03-10', 'Cumplido', 5, 6);
insert into reg_diario values (18, 25, '2021-03-10', 'Cumplido', 6, 5);
insert into reg_diario values (19, 50, '2021-03-10', 'Incumplido', 5, 6);
insert into reg_diario values (20, 25, '2021-03-10', 'Cumplido', 6, 5);


/* REG_META */

insert into reg_meta values (1, 38, 1, 1);
insert into reg_meta values (2, 45, 1, 2);
insert into reg_meta values (3, 50, 2, 3);
insert into reg_meta values (4, 20, 2, 4);
insert into reg_meta values (5, 55, 3, 1);
insert into reg_meta values (6, 10, 3, 2);
insert into reg_meta values (7, 47, 4, 3);
insert into reg_meta values (8, 40, 4, 4);
insert into reg_meta values (9, 50, 1, 1);
insert into reg_meta values (10, 80, 1, 2);
insert into reg_meta values (11, 50, 2, 3);
insert into reg_meta values (12, 26, 2, 4);
insert into reg_meta values (13, 50, 3, 1);
insert into reg_meta values (14, 10, 3, 2);
insert into reg_meta values (15, 50, 4, 3);
insert into reg_meta values (16, 25, 4, 4);
insert into reg_meta values (17, 50, 5, 5);
insert into reg_meta values (18, 25, 4, 6);
insert into reg_meta values (19, 50, 5, 1);
insert into reg_meta values (20, 25, 6, 2);




/* CONSULTAS */


/* Consultas Básicas */

/*Muestra todos los hábitos establecidos por el usuario con id 1*/

select h.Nombre from habito h inner join reg_diario r on h.Id = r.Id_habito where r.Id_usuario = 1;

/* Encuentra los usuarios que han completado sus hábitos hoy.*/

select * from reg_diario where Estado = 'Cumplido';

/* Muestra las metas que están en progreso (progreso < 100%).*/

select * from reg_meta where Progreso < 100;


/* Consultas con JOIN */

/* Muestra los nombres de usuario junto con sus hábitos completados hoy.*/

select u.Nombre, h.Nombre from usuario u inner join reg_diario r on u.Id = r.Id_usuario inner join habito h on r.Id_habito = h.Id where r.Estado = 'Cumplido';

/* Encuentra los hábitos que ningún usuario ha completado todavía.*/

select r.Id_usuario, h.Nombre from habito h left join reg_diario r on h.Id = r.Id_habito where r.Estado = 'Incumplido';

/* Muestra el progreso actual de cada meta junto con el nombre del usuario.*/

select u.Nombre, m.Nombre, r.Progreso from usuario u inner join reg_meta r on u.Id = r.Id_usuario inner join meta m on r.Id_meta = m.Id;

/* Encuentra los usuarios que no han establecido ningún hábito.*/

select u.Nombre from usuario u left join reg_diario r on u.Id = r.Id_usuario where r.Id_usuario is null;


/* Consultas Agregadas */

/* Calcular el promedio del progreso de la tabla reg_meta.*/

SELECT AVG(progreso) AS promedio FROM reg_meta;

/* Muestra el hábito más popular (el que más usuarios tienen establecido).*/

select h.Nombre, count(r.Id_usuario) as cantidad from habito h inner join reg_diario r on h.Id = r.Id_habito group by h.Nombre order by cantidad desc limit 1;

/* Encuentra el usuario con el mayor número de hábitos completados.*/

select u.Nombre, count(r.Id_habito) as cantidad from usuario u inner join reg_diario r on u.Id = r.Id_usuario where r.Estado = 'Cumplido' group by u.Nombre order by cantidad desc limit 1;

/* Calcula la cantidad total de hábitos establecidos por cada usuario.*/

select u.Nombre, count(r.Id_habito) as cantidad from usuario u inner join reg_diario r on u.Id = r.Id_usuario group by u.Nombre order by cantidad desc;


/* Ordenamiento y Limitación */

/* Muestra los 5 usuarios con el progreso más alto en sus metas.*/

select u.Nombre, r.Progreso from usuario u inner join reg_meta r on u.Id = r.Id_usuario order by r.Progreso desc limit 5;

/* Muestra los 10 hábitos menos populares.*/

select h.Nombre, count(r.Id_usuario) as cantidad from habito h inner join reg_diario r on h.Id = r.Id_habito group by h.Nombre order by cantidad asc limit 10;

/* Muestra las metas en orden ascendente de fecha de inicio.*/

select * from meta order by Fecha_inicio asc;


/* Actualizaciones y Eliminaciones */

/* Actualiza el progreso de una meta específica.*/

update reg_meta set Progreso = 100 where Id = 1;

/* Marca un hábito como completado para un usuario en particular.*/

update reg_diario set Estado = 'Cumplido' where Id = 3;

/* Elimina un registro de hábito completado.*/

delete from reg_diario where Id = 3;


/* Consultas Avanzadas */

/* Muestea a los usuarios que han completado todos sus hábitos.*/

select u.Nombre from usuario u inner join reg_diario r on u.Id = r.Id_usuario where r.Estado = 'Cumplido' group by u.Nombre having count(r.Id_habito) = (select count(Id) from habito);

/* Muestra las metas que tienen un progreso superior al promedio.*/

select * from reg_meta where Progreso > (select AVG(Progreso) from reg_meta);

/* Encuentra los hábitos que más de la mitad de los usuarios han completado.*/

select h.Nombre, count(r.Id_usuario) as cantidad from habito h inner join reg_diario r on h.Id = r.Id_habito group by h.Nombre having count(r.Id_usuario) > (select count(Id) from usuario)/2;