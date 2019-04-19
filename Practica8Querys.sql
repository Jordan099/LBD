
-- Alumnos que tienen Promedio aprobatorio en la carrera de LSTI 

create procedure AlumnosAprobados 
@matricula_id int , 
@nombre varchar , 
@calificaciones int 
as
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Aprobatoria' from estudiantes
group by Matricula_id , Nombre , calificaciones 
having calificaciones > 70 

-- Alumnos que tienen Promedio reprobatorio en la Universidad

create procedure AlumnosReprobado
@matricula_id int ,
@nombre varchar ,
@calificaciones int
as
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Reprobatoria' from estudiantes  
group by Matricula_id , Nombre , calificaciones 
having calificaciones < 70 

-- Maestros de la facultad con mas de 30 Años


create procedure Maestros30Años 
@Maestro_id int , 
@Nombre varchar ,
@Edad int 
as
select Maestro_id , Nombre , avg(Edad) as 'Edad Actual' from Maestro
group by Maestro_id , Nombre , Edad 
having edad > 30



-- Jugadores y su Equipo Actual
Create procedure JugadoresEquipos
@EquipoActual varchar ,
@Nombre varchar 
as
select  jugadores.Nombre , equipofutbol.Nombre  as 'Equipo Actual' 
from jugadores 
inner join equipofutbol 
on jugadores.Equipo_id = equipofutbol.Equipo_id 

-- Cantidad de Alumnos aprobados con calificacion aprobatoria en la universidad
Create procedure AlumnosAprobadosUniversidad
@AlumnosAprobados int not null
as
select  count(Matricula_id) as 'Alumnos Aprobados' from estudiantes 
where calificaciones > 70 



-- Precio del jugador mas caro
create procedure JugadorMasCaro
@JugadorMasCaro money 
as
Select    max (Precio) as JugadorMasCaro from jugadores

-- Precio del jugador mas barato
Create procedure JugadorMasBarato
@JugadorMasBarato Money 
as
Select    min(Precio) as JugadorMasBarato from jugadores

-- Suma Total de los precios de cada jugador del equipo PSG
Create procedure PrecioPSG
@SumaTotalJugadores Money
as
select SUM(Precio) as SumaTotalJugadores from jugadores 
where Equipo_id = 9


-- Maestros y las Materias que imparten 
Create procedure Maestro_MateriaImpartida
@Nombre varchar(50),
@MateriaImpartida varchar(50)
as
select Maestro.Nombre , Materia.Nombre as 'Materia que imparte'
from Maestro 
Inner join Materia 
on Maestro.Materia_id = Materia.Materia_id


-- Carreras con su Facultad 
Create procedure Carrera_Facultad
as
select  Carrera.Nombre_Carrera , Facultades.Nombre  as 'Facultad donde pertenece'
from Carrera 
inner join Facultades 
on Carrera.Facultad_id = Facultades.Facultad_id 


Create Function SacarIva 
(
@Precio money
)
returns money as begin
declare @PrecioConIva money 
set @PrecioConIva = (@Precio * .16 + @Precio)
return @PrecioConIva
end 

select dbo.SacarIva (100.0)

create trigger Alumno_Insertado 
on empleado for insert 
as 
insert into empleado values(newid() , 'Jordan' , 'Gallardo' , 'Vitela' , 'jordan-gallardo@hotmail.com')

create trigger Facultad_Insertada
on Facultades for insert 
as
insert into Facultades values (60, 'Facultad de Crimonologia y Derecho' )



Declare @Query nvarchar(300)
Declare @Tabla nvarchar(100)

set @Tabla = 'Estudiantes'
set @Query = 'SELECT * FROM '+ @Tabla

Exec(@Query)
