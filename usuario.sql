create database usuario;
use usuario;

/*-----------------------Creación de tablas-----------------------*/
create table usuario
(
	id integer not null,
    username varchar(255) not null,
    pssword varchar(255) not null,
    primary key(id)
);

create table persona
(
 id integer,
 idUsuario integer not null,
 nombre varchar(255) not null,
 apellido varchar(255) not null,
 fechaNac date,
 primary key(id, idUsuario),
 foreign key(idUsuario) references usuario(id)
);

/*-----------------------Llenar datos-----------------------*/

insert into usuario
values(0001, 'Zitkel', 'anibala2');

insert into persona
values(1000, 0001, 'Zois', 'Ruggiero', '19970520');


insert into usuario
values(0002, 'jorgelin', 'VivaElJardin');

insert into persona
values(2000, 0002, 'Jorge', 'Bernal', '19960514');


insert into usuario
values(0003, 'Jorgatlear', 'niIdea');

insert into persona
values(3000, 0003, 'Maria', 'Santisima', '19960501');


insert into usuario
values(0004, '123Jorga', '123456');

insert into persona
values(4000, 0004, 'Luna', '!Santisima', '19960523');


insert into usuario
values(0005, 'HideOnBush', 'SosUnMancoQL');

insert into persona
values(5000, 0005, 'Faker-san', 'Faker-sama', '19960503');


insert into usuario
values(0006, 'vivaCs', 'SkinDeDarius');

insert into persona
values(6000, 0006, 'anibal-chan', 'rodriguez', '19960511');


insert into usuario
values(0007, 'trueDamar', '001002003');

insert into persona
values(7000, 0007, 'Jorgaga', 'bernala', '19960506');


insert into usuario
values(0008, 'ratre07', 'NoMeHaKeArAs');

insert into persona
values(8000, 0008, 'jorgratina', 'sisisisi', '19980509');


insert into usuario
values(0009, 'Jorgitrol', 'Aniada');

insert into persona
values(9000, 0009, 'Manuel', 'Andrada', '19940512');


insert into usuario
values(0010, 'jorgrutra07', 'yuguioh');

insert into persona
values(1000, 0010, 'Yugui', 'Oh', '19950508');


insert into usuario
values(0011, 'triglav', 'ramdon');

insert into persona
values(1100, 0011, 'Jorgtre', 'Elric', '19951004');


insert into usuario
values(0012, 'zink', '54dsad81');

insert into persona
values(1200, 0012, 'Jorguiou', 'roropiroro', '19980404');


insert into usuario
values(0013, 'jorgeNewbery', 'lomasDe145');

insert into persona
values(1300, 0013, 'Facundo', 'Schelhel', '19961021');


insert into usuario
values(0014, 'JorgelinNewbery', '145DeLomas');

insert into persona
values(1400, 0014, 'Maru', 'Neitor', '19990715');


insert into usuario
values(0015, 'SoyLaMafia01', 'MetoAtodosEnElTrabajo');

insert into persona
values(1500, 0015, 'Agustin', 'Jimenez', '19970515');



/*-----------------------Consultas-----------------------*/

#A) Devuelva los usuarios cuyo username empiece por "Jorg".

SELECT *
FROM usuario
WHERE usuario.username LIKE 'Jorg%';

#B) Devuelva la cantidad de registros de la tabla persona.

SELECT count(persona.id)
FROM PERSONA;

#C) Devuelva los usuarios cuyos nombres  de persona empiecen por "Jorg".

SELECT usuario.id
FROM usuario
INNER JOIN persona
ON persona.idUsuario = usuario.id
WHERE persona.nombre LIKE "Jorg%";

#D) Devuelva los meses en los cuales la cantidad de usuarios que cumpleen años es mayor a 10.

#MONTH(persona.fechaNac)
SELECT month(persona.fechaNac) AS mesNacimiento, count(persona.idUsuario) as cantidadCumplanieros
FROM persona
GROUP BY mesNacimiento
HAVING cantidadCumplanieros > 10;






