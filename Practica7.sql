USE [LBD_Practica5]
GO
ALTER TABLE [dbo].[Maestro] DROP CONSTRAINT [FK__Maestro__Materia__76969D2E]
GO
ALTER TABLE [dbo].[jugadores] DROP CONSTRAINT [Equipo_fk]
GO
ALTER TABLE [dbo].[estudiantes] DROP CONSTRAINT [FK__estudiant__Facul__7B5B524B]
GO
ALTER TABLE [dbo].[estudiantes] DROP CONSTRAINT [FK__estudiant__Carre__7A672E12]
GO
ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [FK__Carrera__Faculta__797309D9]
GO
/****** Object:  Index [IDX_MATERIA]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [IDX_MATERIA] ON [dbo].[Materia]
GO
/****** Object:  Index [IDX_MAESTRO]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [IDX_MAESTRO] ON [dbo].[Maestro]
GO
/****** Object:  Index [IDX_NAC]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [IDX_NAC] ON [dbo].[IMSS]
GO
/****** Object:  Index [IDX_SUC]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [IDX_SUC] ON [dbo].[Gamers]
GO
/****** Object:  Index [IDX_MATRICULA]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [IDX_MATRICULA] ON [dbo].[estudiantes]
GO
/****** Object:  Index [INX_EQU]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [INX_EQU] ON [dbo].[equipofutbol]
GO
/****** Object:  Index [idx_equipo]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [idx_equipo] ON [dbo].[equipofutbol]
GO
/****** Object:  Index [IDX_EMP]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP INDEX [IDX_EMP] ON [dbo].[empleado]
GO
/****** Object:  Table [dbo].[VideoJuegos]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[VideoJuegos]
GO
/****** Object:  Table [dbo].[IMSS]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[IMSS]
GO
/****** Object:  Table [dbo].[Gamers]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[Gamers]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  View [dbo].[Estudiante_Carrera]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[Estudiante_Carrera]
GO
/****** Object:  View [dbo].[Estudiantes_Facultad]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[Estudiantes_Facultad]
GO
/****** Object:  View [dbo].[Carrera_Facultad]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[Carrera_Facultad]
GO
/****** Object:  Table [dbo].[Facultades]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[Facultades]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  View [dbo].[Maestro_Materia]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[Maestro_Materia]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  View [dbo].[PrecioPS]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[PrecioPS]
GO
/****** Object:  View [dbo].[JugadorBarato]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[JugadorBarato]
GO
/****** Object:  View [dbo].[JugadorCaro]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[JugadorCaro]
GO
/****** Object:  View [dbo].[AlumnosAprobadosUni]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[AlumnosAprobadosUni]
GO
/****** Object:  View [dbo].[JugadoresEquipo]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[JugadoresEquipo]
GO
/****** Object:  Table [dbo].[jugadores]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[jugadores]
GO
/****** Object:  Table [dbo].[equipofutbol]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[equipofutbol]
GO
/****** Object:  View [dbo].[MaestrosViejos]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[MaestrosViejos]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  View [dbo].[AlumnosReprobados]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[AlumnosReprobados]
GO
/****** Object:  View [dbo].[AlumnosAprobado]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP VIEW [dbo].[AlumnosAprobado]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP TABLE [dbo].[estudiantes]
GO
USE [master]
GO
/****** Object:  Database [LBD_Practica5]    Script Date: 05/04/2019 02:00:38 p. m. ******/
DROP DATABASE [LBD_Practica5]
GO
/****** Object:  Database [LBD_Practica5]    Script Date: 05/04/2019 02:00:38 p. m. ******/
CREATE DATABASE [LBD_Practica5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD_Practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD_Practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD_Practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD_Practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBD_Practica5] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD_Practica5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD_Practica5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD_Practica5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD_Practica5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD_Practica5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD_Practica5] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD_Practica5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LBD_Practica5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD_Practica5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD_Practica5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD_Practica5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD_Practica5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD_Practica5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD_Practica5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD_Practica5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD_Practica5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD_Practica5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD_Practica5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD_Practica5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD_Practica5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD_Practica5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD_Practica5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD_Practica5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD_Practica5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD_Practica5] SET  MULTI_USER 
GO
ALTER DATABASE [LBD_Practica5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD_Practica5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD_Practica5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD_Practica5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD_Practica5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LBD_Practica5] SET QUERY_STORE = OFF
GO
USE [LBD_Practica5]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiantes](
	[Matricula_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](20) NOT NULL,
	[NombreCompleto]  AS (([Apellidos]+' ')+[Nombre]),
	[calificaciones] [int] NULL,
	[Carrera_id] [int] NULL,
	[Facultad_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Matricula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AlumnosAprobado]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[AlumnosAprobado]  
as 
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Aprobatoria' from estudiantes
group by Matricula_id , Nombre , calificaciones 
having calificaciones > 70 
GO
/****** Object:  View [dbo].[AlumnosReprobados]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[AlumnosReprobados]
as
select matricula_id , nombre , avg(calificaciones) as 'Calificacion Reprobatoria' from estudiantes  
group by Matricula_id , Nombre , calificaciones 
having calificaciones < 70 
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[Maestro_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido_Paterno] [varchar](50) NULL,
	[Apellido_Materno] [varchar](50) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Edad]  AS (datediff(year,[Fecha_Nacimiento],getdate())),
	[Materia_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Maestro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[MaestrosViejos]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[MaestrosViejos] 
as
select Maestro_id , Nombre , avg(Edad) as 'Edad Actual' from Maestro
group by Maestro_id , Nombre , Edad 
having edad > 30
GO
/****** Object:  Table [dbo].[equipofutbol]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipofutbol](
	[Equipo_id] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Presupuesto] [money] NULL,
	[Presidente] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Equipo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jugadores]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jugadores](
	[Jugador_id] [varchar](50) NOT NULL,
	[Equipo_id] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Jugador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[JugadoresEquipo]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[JugadoresEquipo]
as
select  jugadores.Nombre , equipofutbol.Nombre  as 'Equipo Actual' 
from jugadores 
inner join equipofutbol 
on jugadores.Equipo_id = equipofutbol.Equipo_id
GO
/****** Object:  View [dbo].[AlumnosAprobadosUni]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[AlumnosAprobadosUni]
as
select  count(Matricula_id) as 'Alumnos Aprobados' from estudiantes 
where calificaciones > 70 
GO
/****** Object:  View [dbo].[JugadorCaro]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[JugadorCaro]
as
Select    max (Precio) as JugadorMasCaro from jugadores
GO
/****** Object:  View [dbo].[JugadorBarato]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[JugadorBarato]
as
Select    min(Precio) as JugadorMasBarato from jugadores
GO
/****** Object:  View [dbo].[PrecioPS]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[PrecioPS]
as
select SUM(Precio) as SumaTotalJugadores from jugadores 
where Equipo_id = 9
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[Materia_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Creditos] [tinyint] NULL,
	[Semestre] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Materia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Maestro_Materia]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Maestro_Materia]
as
select Maestro.Nombre , Materia.Nombre as 'Materia que imparte'
from Maestro 
Inner join Materia 
on Maestro.Materia_id = Materia.Materia_id
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[Carrera_id] [int] NOT NULL,
	[Nombre_Carrera] [varchar](50) NOT NULL,
	[Semestres] [int] NOT NULL,
	[Facultad_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Carrera_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultades]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultades](
	[Facultad_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Facultad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Carrera_Facultad]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Carrera_Facultad]
as
select  Carrera.Nombre_Carrera , Facultades.Nombre  as 'Facultad donde pertenece'
from Carrera 
inner join Facultades 
on Carrera.Facultad_id = Facultades.Facultad_id 
GO
/****** Object:  View [dbo].[Estudiantes_Facultad]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Estudiantes_Facultad]
as
select estudiantes.NombreCompleto , facultades.nombre as 'Facultad donde estudian'
from estudiantes
inner join Facultades
on estudiantes.facultad_id = Facultades.Facultad_id
GO
/****** Object:  View [dbo].[Estudiante_Carrera]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Estudiante_Carrera]
as
select estudiantes.Nombre , Carrera.Nombre_Carrera as 'Carrera que estudian'
from estudiantes 
inner join Carrera
on estudiantes.Carrera_id = Carrera.Carrera_id
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[Empleado_id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido_Paterno] [varchar](50) NULL,
	[Apellido_Materno] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Nombre_Completo]  AS (((([Nombre]+' ')+[Apellido_Paterno])+' ')+[Apellido_Materno]),
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gamers]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gamers](
	[Sucursal_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ubicacion] [varchar](100) NULL,
	[Ventas] [money] NULL,
	[Identificacion]  AS (([nombre]+' ')+[Ubicacion]),
PRIMARY KEY CLUSTERED 
(
	[Sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMSS]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMSS](
	[Nacimiento_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[Hora_Nacimiento] [time](7) NULL,
	[Fecha_Nacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nacimiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoJuegos]    Script Date: 05/04/2019 02:00:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoJuegos](
	[id_videojuego] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_videojuego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (1, N'Seguridad en Tecnologias de la Informacion', 8, 25)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (2, N'Licenciatura en Matematicas', 9, 25)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (3, N'Licenciatura en Fisica', 9, 25)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (4, N'Licenciatura en Actuaria', 9, 25)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (5, N'Licenciatura en Ciencias Computacionales', 9, 25)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (6, N'Ingeniero Quimico', 10, 30)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (7, N'Quimico Farmaceutico Biologo', 10, 30)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (8, N'Quimico Bacteriologo Parasitologo', 10, 35)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (9, N'Biologo', 10, 35)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (10, N'Licenciado en Biotecnologia Genomica', 10, 35)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (11, N'Medico Partero', 12, 40)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (12, N'Contador Publico', 10, 50)
INSERT [dbo].[Carrera] ([Carrera_id], [Nombre_Carrera], [Semestres], [Facultad_id]) VALUES (13, N'Ingeniero Industrial Administrador', 10, 30)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'e51ce871-a94d-4a24-8187-0b5f0c71b16a', N'Carlos Adrian', N'Perez', N'Cortez', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'3a00299f-8e4f-43f8-8aa0-20b2092fcb7a', N'Claudia', N'Alina', N'Madrigal', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'8471d4df-a224-45e7-a370-2426e3d3af06', N'Delia', N'Armendaris', N'Martinez', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'dacd0437-6ea9-42c6-ab00-2ad063d6836d', N'OSVALDO HABIB', N'GONZALEZ', N'GONZALEZ', N'osvaldo.fcfm@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'c9c3db84-0077-478f-93f0-3e69133c9a38', N'Eduardo Alonso', N'Castillo', N'Montemayor', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'278df0c4-0be0-456f-9380-45951563298a', N'JESUS', N'BOTELLO', N'GONZALES', N'botello.fcq@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'aaa6479a-c6cc-4647-b4a7-4d26e0611b27', N'JESUS FRANCISCO', N'DIAZ', N'ELIZONDO', N'francisco887@hotmail.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'deb0d346-3209-454f-9ab8-59d66002f14a', N'ARTURO', N'JIMENEZ', N'GUZMAN', N'guzman.fcb@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'909b0dd5-c4f1-47c0-b0a5-5d1bf1ed2c00', N'Adolfo', N'Lopez', N'Escamilla', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'ebcd29b0-e4b3-4e51-9953-645eb0a25ed7', N'Daniel', N'Gonzales', N'Gonzales', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'95076137-dd23-4201-9d15-6df1c3c7f61c', N'BEATRIZ', N'ALOPEZ', N'MONROY', N'beatriz.fcb@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'efe9a99c-1d46-46da-a5de-70f240c2c91e', N'BENITO', N'PEREYRA', N'ALFEREZ', N'bpa.fcb@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'692cad2e-47ac-4f87-942f-9b073364c69a', N'MARIA ESPERANZA', N'CASTAÑEDA', N'GARZA', N'garza09@gmail.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'2cd55225-85b8-4179-b71e-a630091c6c6e', N'Alberto Gerardo', N'Ramirez', N'Calderon', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'093a8d23-d822-4cb4-bc1b-b25dac22e27f', N'LUIS HUMBERTO', N'ALVAREZ', N'VALENCIA', N'luis.fcq@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'17831f65-debc-46bf-a15d-c22d9a550714', N'Jesus Renato', N'Colunga', N'De la Garza', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'c17a9dc5-3466-406c-9d39-c26692d622f2', N'Cuauhtemoc', N'Muñoz', N'Arellano', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'18c9f53f-de07-479d-b3f1-c676ee00f4cf', N'FELIPE DE JESUS', N'CORDOVA', N'CERNIO', N'felipe_cordova@outlook.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'7a7c6a20-56b5-4f66-bde5-e0ee1f771985', N'Alfonso', N'Gonzalez', N'Zambrano', NULL)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'78eed81a-1ee1-49ea-9f38-e9a10cbedaef', N'LUIS ANTONIO', N'ALANIS', N'LUNA', N'antonio98@gmail.com')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'1', N'Barcelona', 95000000000.0000, N'Josep Maria Bartomeu', N'España')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'10', N'Manchester City F.C', 65000000000.0000, N'Khaldoon Al Mubarak', N'Inglaterra')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'100', N'Club America', 2342412500.0000, N'Santiago Baños', N'Mexico')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'11', N'C.F Tigres UANL', 445000000.0000, N'Miguel Angel Garza', N'Mexico')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'2', N'Real Madrir', 115000000000.0000, N'Florentino Perez', N'España')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'3', N'Bayern de Munich', 75000000000.0000, N'Uli Hoene', N'Alemania')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'4', N'Borussia Dortmund', 450323000000.0000, N'Reinhard Rauball', N'Alemania')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'5', N'FC Schalke 04', 55234500000.0000, N'Clemens Tonnies', N'Alemania')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'6', N'Manchester United F.C', 55000305060.0000, N'Joel Glazer', N'Inglaterra')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [Presupuesto], [Presidente], [Pais]) VALUES (N'9', N'Paris Saint-Germain F.C', 123045466200.0000, N'Nasser Al-Khelaifi', N'Francia')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1623496, N'JOSUE MAGDALENO', N'TELLEZ MARTINEZ', 90, 11, 40)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1624562, N'VICTOR ALFONSO', N'GALLARDO VITELA', 87, 12, 50)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1625958, N'BRANDON ALONSO', N'DAVILA SANCHEZ', 88, 1, 25)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1664379, N'SERGIO DANIELS', N'GARCIA ROMERO', 68, 1, 25)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1742979, N'LUIS ROBERTO', N'GONZALEZ ESQUIVEL', 76, 1, 25)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1803242, N'JORDAN', N'GALLARDO VITELA', 87, 1, 25)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1804571, N'ADRIAN MAURICIO', N'GARCIA ROFRIGUEZ', 65, 7, 30)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1805388, N'ANDREA YAMILE', N'SEGOVIANO MARTINEZ', 69, 1, 25)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1809998, N'DANIEL', N'PRADO ALANDA', 55, 1, 25)
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [calificaciones], [Carrera_id], [Facultad_id]) VALUES (1964389, N'SAUL ALFREDO', N'GALLARDO VITELA', 99, 13, 30)
INSERT [dbo].[Facultades] ([Facultad_id], [Nombre]) VALUES (25, N'Facultad de Ciencias Fisico Matematicas')
INSERT [dbo].[Facultades] ([Facultad_id], [Nombre]) VALUES (30, N'Facultad de Ciencias Quimicas')
INSERT [dbo].[Facultades] ([Facultad_id], [Nombre]) VALUES (35, N'Facultad de Ciencias Bioologicas')
INSERT [dbo].[Facultades] ([Facultad_id], [Nombre]) VALUES (40, N'Facultad de Medicina')
INSERT [dbo].[Facultades] ([Facultad_id], [Nombre]) VALUES (50, N'Facultad de Contaduria Publica y AdministracionP')
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (21, N'GAMERS VALLE ORIENTE', N'CAMASHA VALLE ORIENTE', 3023000.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (23, N'GAMERS SENDERO APODACA', N'SENDERO APODACA', 5000000.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (54, N'GAMERS SENDERO ESCOBEDDO', N'SENDERO ESCOBEDO', 6654000.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (99, N'GAMERS CITADEL', N'PLAZA CITADEL', 4353256.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (101, N'GAMERS LINCON', N'PATIO LINCON', 3256420.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (346, N'GAMERS TECNOCENTRO', N'TECNOCENTRO', 3525252.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (436, N'GAMERS GDL', N'FORUM TLAQUEPAQUE', 4636134.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (536, N'GAMERS CENTRO', N'MORELOS', 5325225.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (976, N'GAMERS PLAZA CENTRO', N'PLAZA CENTRO', 5234322.0000)
INSERT [dbo].[Gamers] ([Sucursal_id], [Nombre], [Ubicacion], [Ventas]) VALUES (988, N'GAMERS PLAZAS OUTLET', N'PLAZAS OUTLET MONTERREY', 355700.0000)
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (23, N'JUAN', N'GUADALUPE', N'TELLEZ', CAST(N'18:22:00' AS Time), CAST(N'1986-02-02' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (43, N'JOSE LUIS', N'DAVILA', N'HERNANDEZ', CAST(N'12:01:00' AS Time), CAST(N'1987-08-23' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (44, N'ANTONIO', N'SEGOVIANO', N'MARTINEZ', CAST(N'18:59:00' AS Time), CAST(N'2002-11-25' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (67, N'GUADALUPE', N'VITELA', N'CERDA', CAST(N'12:00:00' AS Time), CAST(N'1977-11-05' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (76, N'MARIA DEL CARMEN', N'GONZALEZ', N'GONZALES', CAST(N'13:15:00' AS Time), CAST(N'2001-11-10' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (88, N'FRANCISCO', N'GALLARDO', N'NEIRA', CAST(N'01:23:00' AS Time), CAST(N'1999-01-01' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (101, N'MIGUEL ANGEL', N'ZAMBRANO', N'CISNEROS', CAST(N'02:22:00' AS Time), CAST(N'1940-07-21' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (202, N'CARLOS', N'GARCIA', N'HERNANDEZ', CAST(N'19:58:00' AS Time), CAST(N'1999-01-22' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (232, N'FRANCISCO JAVIER ', N'MULLER', N'SMITH', CAST(N'19:23:00' AS Time), CAST(N'1987-04-23' AS Date))
INSERT [dbo].[IMSS] ([Nacimiento_id], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Hora_Nacimiento], [Fecha_Nacimiento]) VALUES (287, N'ALEJANDRA', N'DE LA ROSA', N'JIMENEZ', CAST(N'02:23:00' AS Time), CAST(N'1999-04-16' AS Date))
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'1534', N'2', N'Inglaterra', 2324300000.0000, N'5665436523', N'Harry Kane')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'2023', N'9', N'Brasil', 25425600000.0000, N'566746523', N'Neymar')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'2131', N'1', N'Argentina', 2413600000.0000, N'8112345876', N'Lionel Messi')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'2547', N'9', N'francia', 2298200000.0000, N'5784654762', N'Kylian Mbappe')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5654', N'10', N'Belgica', 2003300000.0000, N'8112568443', N'Kevin de Bruyne')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5655', N'9', N'Francia', 1761000000.0000, N'811550982', N'Paul Pogba')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5656', N'9', N'Inglaterra', 1967500000.0000, N'811453245', N'Romelo Lukaku')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5659', N'10', N'Alemania', 1678300000.0000, N'811657648', N'Leroy Sane')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5676', N'5', N'Alemania', 1761000000.0000, N'8114435245', N'Antoine Griezmann')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5876', N'6', N'Argentina', 2084500000.0000, N'5784234362', N'Paulo Dybala')
INSERT [dbo].[jugadores] ([Jugador_id], [Equipo_id], [Pais], [Precio], [Numero], [Nombre]) VALUES (N'5978', N'2', N'Inglaterra', 2045100000.0000, N'5784234362', N'Dele Allia')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (56728, N'Alfonso', N'Gonzalez', N'Zambrano', CAST(N'1980-12-05' AS Date), 15)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1005764, N'Jesus Renato', N'Colunga', N'De la Garza', CAST(N'1977-02-19' AS Date), 2)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1103424, N'Delia', N'Armendaris', N'Martinez', CAST(N'1975-09-04' AS Date), 3)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1204564, N'Adolfo', N'Lopez', N'Escamilla', CAST(N'1966-01-28' AS Date), 1)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1205454, N'Claudia', N'Alina', N'Madrigal', CAST(N'1974-09-20' AS Date), 6)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1205944, N'Daniel', N'Gonzales', N'Gonzales', CAST(N'1974-09-04' AS Date), 6)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1305764, N'Carlos Adrian', N'Perez', N'Cortez', CAST(N'1987-09-24' AS Date), 10)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1306781, N'Cuauhtemoc', N'Muñoz', N'Arellano', CAST(N'1965-07-28' AS Date), 7)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1501285, N'Eduardo Alonso', N'Castillo', N'Montemayor', CAST(N'1967-10-18' AS Date), 6)
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia_id]) VALUES (1565764, N'Alberto Gerardo', N'Ramirez', N'Calderon', CAST(N'1966-06-30' AS Date), 11)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (1, N'Base de datos', 2, 3)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (2, N'Sistemas Operativos', 2, 3)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (3, N'Telecomunicaciones II', 3, 3)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (4, N'Seguridad en Aplicaciones', 2, 4)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (6, N'Seguridad Fisica', 3, 4)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (7, N'Criptografia Aplicada', 2, 5)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (8, N'Telecomunicaciones IV', 2, 5)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (10, N'Programacion Orientada a Objetos', 3, 1)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (11, N'Analisis de Bulverabilidades', 3, 7)
INSERT [dbo].[Materia] ([Materia_id], [Nombre], [Creditos], [Semestre]) VALUES (15, N'Analisis Forense', 2, 6)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (50, N'Kingdom Hearts 3', 999.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (52, N'Devil May Cry 5', 1299.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (55, N'Resident Evil 2 ', 1200.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (77, N'Anthem', 1200.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (89, N'Uncharted 4', 700.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (101, N'FIFA 19', 650.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (120, N'Final Fantasy XV', 899.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (189, N'The Last of us Remaster', 699.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (520, N'Kingdom Hearts 1.5 + 2.5 HD Remix', 899.0000)
INSERT [dbo].[VideoJuegos] ([id_videojuego], [nombre], [precio]) VALUES (852, N'The Division 2', 1299.0000)
/****** Object:  Index [IDX_EMP]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_EMP] ON [dbo].[empleado]
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_equipo]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_equipo] ON [dbo].[equipofutbol]
(
	[Equipo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INX_EQU]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [INX_EQU] ON [dbo].[equipofutbol]
(
	[Equipo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MATRICULA]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MATRICULA] ON [dbo].[estudiantes]
(
	[Matricula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_SUC]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_SUC] ON [dbo].[Gamers]
(
	[Sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_NAC]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_NAC] ON [dbo].[IMSS]
(
	[Nacimiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MAESTRO]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MAESTRO] ON [dbo].[Maestro]
(
	[Maestro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MATERIA]    Script Date: 05/04/2019 02:00:40 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MATERIA] ON [dbo].[Materia]
(
	[Materia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD FOREIGN KEY([Facultad_id])
REFERENCES [dbo].[Facultades] ([Facultad_id])
GO
ALTER TABLE [dbo].[estudiantes]  WITH CHECK ADD FOREIGN KEY([Carrera_id])
REFERENCES [dbo].[Carrera] ([Carrera_id])
GO
ALTER TABLE [dbo].[estudiantes]  WITH CHECK ADD FOREIGN KEY([Facultad_id])
REFERENCES [dbo].[Facultades] ([Facultad_id])
GO
ALTER TABLE [dbo].[jugadores]  WITH CHECK ADD  CONSTRAINT [Equipo_fk] FOREIGN KEY([Equipo_id])
REFERENCES [dbo].[equipofutbol] ([Equipo_id])
GO
ALTER TABLE [dbo].[jugadores] CHECK CONSTRAINT [Equipo_fk]
GO
ALTER TABLE [dbo].[Maestro]  WITH CHECK ADD FOREIGN KEY([Materia_id])
REFERENCES [dbo].[Materia] ([Materia_id])
GO
USE [master]
GO
ALTER DATABASE [LBD_Practica5] SET  READ_WRITE 
GO
