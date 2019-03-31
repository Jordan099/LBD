
-- Alumnos que tienen Promedio aprobatorio en la carrera de LSTI 
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Aprobatoria' from estudiantes where Carrera = 'LSTI'
group by Matricula_id , Nombre , calificaciones 
having calificaciones > 70 

-- Alumnos que tienen Promedio reprobatorio en la Universidad
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Reprobatoria' from estudiantes  
group by Matricula_id , Nombre , calificaciones 
having calificaciones < 70 

-- Maestros de la facultad con mas de 30 Años
select Maestro_id , Nombre , avg(Edad) as 'Edad Actual' from Maestro
group by Maestro_id , Nombre , Edad 
having edad > 30



-- Jugadores y su Equipo Actual
select  jugadores.Nombre , equipofutbol.Nombre  as 'Equipo Actual' 
from jugadores 
inner join equipofutbol 
on jugadores.Equipo_id = equipofutbol.Equipo_id 

-- Cantidad de Alumnos aprobados con calificacion aprobatoria en la universidad
select  count(Matricula_id) as 'Alumnos Aprobados' from estudiantes 
where calificaciones > 70 



-- Precio del jugador mas caro
Select    max (Precio) as JugadorMasCaro from jugadores

-- Precio del jugador mas barato
Select    min(Precio) as JugadorMasBarato from jugadores

-- Suma Total de los precios de cada jugador del equipo PSG
select SUM(Precio) as SumaTotalJugadores from jugadores 
where Equipo_id = 9


-- Maestros y las Materias que imparten 
select Maestro.Nombre , Materia.Nombre as 'Materia que imparte'
from Maestro 
Inner join Materia 
on Maestro.Materia_id = Materia.Materia_id


-- Carreras con su Facultad 
select  Carrera.Nombre_Carrera , Facultades.Nombre  as 'Facultad donde pertenece'
from Carrera 
inner join Facultades 
on Carrera.Facultad_id = Facultades.Facultad_id 



-- Estudiantes y Facultad donde Estudian
select estudiantes.NombreCompleto , facultades.nombre as 'Facultad donde estudian'
from estudiantes
inner join Facultades
on estudiantes.facultad_id = Facultades.Facultad_id


-- Estudiantes y la Carrera que estudian 
select estudiantes.Nombre , Carrera.Nombre_Carrera as 'Carrera que estudian'
from estudiantes 
inner join Carrera
on estudiantes.Carrera_id = Carrera.Carrera_id

-- Respaldo de la tabla estudiantes
select * into Respaldo_Estudiantes 
from estudiantes

-- Eliminacion del respaldo de la tabla estudiantes
drop table Respaldo_Estudiantes

-- Insertacion de los datos de la tabla maestro en la tabla Empleado 
insert into empleado (Empleado_id , nombre , Apellido_Materno , Apellido_Paterno )
select newid() , nombre , Apellido_Materno , Apellido_Paterno from Maestro

