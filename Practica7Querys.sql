
-- Alumnos que tienen Promedio aprobatorio en la carrera de LSTI 

create view AlumnosAprobado  
as 
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Aprobatoria' from estudiantes
group by Matricula_id , Nombre , calificaciones 
having calificaciones > 70 

-- Alumnos que tienen Promedio reprobatorio en la Universidad

create view AlumnosReprobados
as
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Reprobatoria' from estudiantes  
group by Matricula_id , Nombre , calificaciones 
having calificaciones < 70 

-- Maestros de la facultad con mas de 30 Años
create view MaestrosViejos 
as
select Maestro_id , Nombre , avg(Edad) as 'Edad Actual' from Maestro
group by Maestro_id , Nombre , Edad 
having edad > 30



-- Jugadores y su Equipo Actual
Create view JugadoresEquipo
as
select  jugadores.Nombre , equipofutbol.Nombre  as 'Equipo Actual' 
from jugadores 
inner join equipofutbol 
on jugadores.Equipo_id = equipofutbol.Equipo_id 

-- Cantidad de Alumnos aprobados con calificacion aprobatoria en la universidad
Create view AlumnosAprobadosUni
as
select  count(Matricula_id) as 'Alumnos Aprobados' from estudiantes 
where calificaciones > 70 



-- Precio del jugador mas caro
create view JugadorCaro
as
Select    max (Precio) as JugadorMasCaro from jugadores

-- Precio del jugador mas barato
Create view JugadorBarato
as
Select    min(Precio) as JugadorMasBarato from jugadores

-- Suma Total de los precios de cada jugador del equipo PSG
Create view PrecioPS
as
select SUM(Precio) as SumaTotalJugadores from jugadores 
where Equipo_id = 9


-- Maestros y las Materias que imparten 
Create View Maestro_Materia
as
select Maestro.Nombre , Materia.Nombre as 'Materia que imparte'
from Maestro 
Inner join Materia 
on Maestro.Materia_id = Materia.Materia_id


-- Carreras con su Facultad 
Create view Carrera_Facultad
as
select  Carrera.Nombre_Carrera , Facultades.Nombre  as 'Facultad donde pertenece'
from Carrera 
inner join Facultades 
on Carrera.Facultad_id = Facultades.Facultad_id 



-- Estudiantes y Facultad donde Estudian
Create view Estudiantes_Facultad
as
select estudiantes.NombreCompleto , facultades.nombre as 'Facultad donde estudian'
from estudiantes
inner join Facultades
on estudiantes.facultad_id = Facultades.Facultad_id


-- Estudiantes y la Carrera que estudian 
Create view Estudiante_Carrera
as
select estudiantes.Nombre , Carrera.Nombre_Carrera as 'Carrera que estudian'
from estudiantes 
inner join Carrera
on estudiantes.Carrera_id = Carrera.Carrera_id


--Subconsulta
Select Nombre , Pais from jugadores where precio > (select avg(Precio) from jugadores)

