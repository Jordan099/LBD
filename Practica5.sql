USE [LBD_Practica5]
GO
/****** Object:  Index [IDX_MATERIA]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_MATERIA] ON [dbo].[Materia]
GO
/****** Object:  Index [IDX_MAESTRO]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_MAESTRO] ON [dbo].[Maestro]
GO
/****** Object:  Index [IDX_JUG]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_JUG] ON [dbo].[jugadores]
GO
/****** Object:  Index [IDX_NAC]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_NAC] ON [dbo].[IMSS]
GO
/****** Object:  Index [IDX_SUC]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_SUC] ON [dbo].[Gamers]
GO
/****** Object:  Index [IDX_MATRICULA]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_MATRICULA] ON [dbo].[estudiantes]
GO
/****** Object:  Index [INX_EQU]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [INX_EQU] ON [dbo].[equipofutbol]
GO
/****** Object:  Index [IDX_EMP]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP INDEX [IDX_EMP] ON [dbo].[empleado]
GO
/****** Object:  Table [dbo].[VideoJuegos]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[VideoJuegos]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[jugadores]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[jugadores]
GO
/****** Object:  Table [dbo].[IMSS]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[IMSS]
GO
/****** Object:  Table [dbo].[Gamers]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[Gamers]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[estudiantes]
GO
/****** Object:  Table [dbo].[equipofutbol]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[equipofutbol]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP TABLE [dbo].[Carrera]
GO
USE [master]
GO
/****** Object:  Database [LBD_Practica5]    Script Date: 22/03/2019 02:14:10 a. m. ******/
DROP DATABASE [LBD_Practica5]
GO
/****** Object:  Database [LBD_Practica5]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 22/03/2019 02:14:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[Carrera_id] [int] NOT NULL,
	[Facultad] [varchar](50) NULL,
	[Nombre_Carrera] [varchar](50) NOT NULL,
	[Semestres] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Carrera_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
/****** Object:  Table [dbo].[equipofutbol]    Script Date: 22/03/2019 02:14:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipofutbol](
	[Equipo_id] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[AñoFundacion] [date] NULL,
	[Presupuesto] [money] NULL,
	[Presidente] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Equipo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 22/03/2019 02:14:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiantes](
	[Matricula_id] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](20) NOT NULL,
	[Carrera] [varchar](20) NOT NULL,
	[NombreCompleto]  AS (([Apellidos]+' ')+[Nombre]),
PRIMARY KEY CLUSTERED 
(
	[Matricula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gamers]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
/****** Object:  Table [dbo].[IMSS]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
/****** Object:  Table [dbo].[jugadores]    Script Date: 22/03/2019 02:14:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jugadores](
	[Jugador_id] [varchar](50) NOT NULL,
	[Club] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Telefono] [nchar](20) NULL,
	[Nombre] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Jugador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
	[Materia] [varchar](50) NULL,
	[Edad]  AS (datediff(year,[Fecha_Nacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[Maestro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
/****** Object:  Table [dbo].[VideoJuegos]    Script Date: 22/03/2019 02:14:10 a. m. ******/
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
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (1, N'Facultad de Ciencias Fisico Matematicas', N'Seguridad en Tecnologias de la Informacion', 8)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (2, N'Facultad de Ciencias Fisico Matematicas', N'Licenciatura en Matematicas', 9)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (3, N'Facultad de Ciencias Fisico Matematicas', N'Licenciatura en Fisica', 9)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (4, N'Facultad de Ciencias Fisico Matematicas', N'Licenciatura en Actuaria', 9)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (5, N'Facultad de Ciencias Fisico Matematicas', N'Licenciatura en Ciencias Computacionales', 9)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (6, N'Facultad de Ciencias Quimicas', N'Ingeniero Quimico', 10)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (7, N'Facultad de Ciencias Quimicaa', N'Quimico Farmaceutico Biologo', 10)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (8, N'Facultad de Ciencias Biologicas', N'Quimico Bacteriologo Parasitologo', 10)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (9, N'Facultad de Ciencias Biologicas', N'Biologo', 10)
INSERT [dbo].[Carrera] ([Carrera_id], [Facultad], [Nombre_Carrera], [Semestres]) VALUES (10, N'Facultad de Ciencias Biologicas', N'Licenciado en Biotecnologia Genomica', 10)
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'dacd0437-6ea9-42c6-ab00-2ad063d6836d', N'OSVALDO HABIB', N'GONZALEZ', N'GONZALEZ', N'osvaldo.fcfm@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'278df0c4-0be0-456f-9380-45951563298a', N'JESUS', N'BOTELLO', N'GONZALES', N'botello.fcq@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'aaa6479a-c6cc-4647-b4a7-4d26e0611b27', N'JESUS FRANCISCO', N'DIAZ', N'ELIZONDO', N'francisco887@hotmail.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'deb0d346-3209-454f-9ab8-59d66002f14a', N'ARTURO', N'JIMENEZ', N'GUZMAN', N'guzman.fcb@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'95076137-dd23-4201-9d15-6df1c3c7f61c', N'BEATRIZ', N'ALOPEZ', N'MONROY', N'beatriz.fcb@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'efe9a99c-1d46-46da-a5de-70f240c2c91e', N'BENITO', N'PEREYRA', N'ALFEREZ', N'bpa.fcb@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'692cad2e-47ac-4f87-942f-9b073364c69a', N'MARIA ESPERANZA', N'CASTAÑEDA', N'GARZA', N'garza09@gmail.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'093a8d23-d822-4cb4-bc1b-b25dac22e27f', N'LUIS HUMBERTO', N'ALVAREZ', N'VALENCIA', N'luis.fcq@uanl.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'18c9f53f-de07-479d-b3f1-c676ee00f4cf', N'FELIPE DE JESUS', N'CORDOVA', N'CERNIO', N'felipe_cordova@outlook.com')
INSERT [dbo].[empleado] ([Empleado_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Email]) VALUES (N'78eed81a-1ee1-49ea-9f38-e9a10cbedaef', N'LUIS ANTONIO', N'ALANIS', N'LUNA', N'antonio98@gmail.com')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'1', N'Barcelona', CAST(N'1899-11-29' AS Date), 95000000000.0000, N'Josep Maria Bartomeu', N'España')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'10', N'Manchester City F.C', CAST(N'1894-04-13' AS Date), 65000000000.0000, N'Khaldoon Al Mubarak', N'Inglaterra')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'100', N'Club America', CAST(N'1916-10-12' AS Date), 2342412500.0000, N'Santiago Baños', N'Mexico')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'11', N'C.F Tigres UANL', CAST(N'1960-03-07' AS Date), 445000000.0000, N'Miguel Angel Garza', N'Mexico')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'2', N'Real Madrir', CAST(N'1902-03-06' AS Date), 115000000000.0000, N'Florentino Perez', N'España')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'3', N'Bayern de Munich', CAST(N'1900-02-27' AS Date), 75000000000.0000, N'Uli Hoene', N'Alemania')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'4', N'Borussia Dortmund', CAST(N'1909-12-19' AS Date), 450323000000.0000, N'Reinhard Rauball', N'Alemania')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'5', N'FC Schalke 04', CAST(N'1904-05-04' AS Date), 55234500000.0000, N'Clemens Tonnies', N'Alemania')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'6', N'Manchester United F.C', CAST(N'1902-04-24' AS Date), 55000305060.0000, N'Joel Glazer', N'Inglaterra')
INSERT [dbo].[equipofutbol] ([Equipo_id], [Nombre], [AñoFundacion], [Presupuesto], [Presidente], [Pais]) VALUES (N'9', N'Paris Saint-Germain F.C', CAST(N'1897-07-18' AS Date), 123045466200.0000, N'Nasser Al-Khelaifi', N'Francia')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1623496, N'JOSUE MAGDALENO', N'TELLEZ MARTINEZ', N'MP')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1624562, N'VICTOR ALFONSO', N'GALLARDO VITELA', N'CP')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1625958, N'BRANDON ALONSO', N'DAVILA SANCHEZ', N'LSTI')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1664379, N'SERGIO DANIELS', N'GARCIA ROMERO', N'LSTI')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1742979, N'LUIS ROBERTO', N'GONZALEZ ESQUIVEL', N'LSTI')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1803242, N'JORDAN', N'GALLARDO VITELA', N'LSTI')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1804571, N'ADRIAN MAURICIO', N'GARCIA ROFRIGUEZ', N'QFB')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1805388, N'ANDREA YAMILE', N'SEGOVIANO MARTINEZ', N'LSTI')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1809998, N'DANIEL', N'PRADO ALANDA', N'LSTI')
INSERT [dbo].[estudiantes] ([Matricula_id], [Nombre], [Apellidos], [Carrera]) VALUES (1964389, N'SAUL ALFREDO', N'GALLARDO VITELA', N'IAA')
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
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'1534', N'Tottenham', N'Inglaterra', 2324300000.0000, N'5665436523          ', N'Harry Kane                                        ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'2023', N'PSG', N'Brasil', 25425600000.0000, N'566746523           ', N'Neymar                                            ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'2131', N'FC Barcelona', N'Argentina', 2413600000.0000, N'8112345876          ', N'Lionel Messi                                      ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'2547', N'PSG', N'Francia', 2298200000.0000, N'5784654762          ', N'Kylian Mbappe                                     ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'5654', N'Manchester City', N'Belgica', 2003300000.0000, N'8112568443          ', N'Kevin de Bruyne                                   ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'5655', N'Manchester United', N'Francia', 1761000000.0000, N'811550982           ', N'Paul Pogba                                        ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'5656', N'Manchester United', N'Inglaterra', 1967500000.0000, N'811453245           ', N'Romelo Lukaku                                     ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'5676', N'Atletico Madrid', N'Alemania', 1761000000.0000, N'8114435245          ', N'Antoine Griezmann                                 ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'5876', N'Juventus', N'Argentina', 2084500000.0000, N'5784234362          ', N'Paulo Dybala                                      ')
INSERT [dbo].[jugadores] ([Jugador_id], [Club], [Pais], [Precio], [Telefono], [Nombre]) VALUES (N'5978', N'Tottenham', N'Inglaterra', 2045100000.0000, N'5784234362          ', N'Dele Allia                                        ')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (56728, N'Alfonso', N'Gonzalez', N'Zambrano', CAST(N'1980-12-05' AS Date), N'Fisica IV y Laboratorio')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1005764, N'Jesus Renato', N'Colunga', N'De la Garza', CAST(N'1977-02-19' AS Date), N'Algebra para ingieneria')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1103424, N'Delia', N'Armendaris', N'Martinez', CAST(N'1975-09-04' AS Date), N'Mecanica de Fluidos y Lab')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1204564, N'Adolfo', N'Lopez', N'Escamilla', CAST(N'1966-01-28' AS Date), N'Matematicas IV')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1205454, N'Claudia', N'Alina', N'Madrigal', CAST(N'1974-09-20' AS Date), N'Algebra Lineal')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1205944, N'Daniel', N'Gonzales', N'Gonzales', CAST(N'1974-09-04' AS Date), N'Contabilidad y Costos')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1305764, N'Carlos Adrian', N'Perez', N'Cortez', CAST(N'1987-09-24' AS Date), N'Algoritmos Computacionales')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1306781, N'Cuauhtemoc', N'Muñoz', N'Arellano', CAST(N'1965-07-28' AS Date), N'Dinamica')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1501285, N'Eduardo Alonso', N'Castillo', N'Montemayor', CAST(N'1967-10-18' AS Date), N'Administracion de la Calidad Total')
INSERT [dbo].[Maestro] ([Maestro_id], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Nacimiento], [Materia]) VALUES (1565764, N'Alberto Gerardo', N'Ramirez', N'Calderon', CAST(N'1966-06-30' AS Date), N'Circuitos Electricos')
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
/****** Object:  Index [IDX_EMP]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_EMP] ON [dbo].[empleado]
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INX_EQU]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [INX_EQU] ON [dbo].[equipofutbol]
(
	[Equipo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MATRICULA]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MATRICULA] ON [dbo].[estudiantes]
(
	[Matricula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_SUC]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_SUC] ON [dbo].[Gamers]
(
	[Sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_NAC]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_NAC] ON [dbo].[IMSS]
(
	[Nacimiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_JUG]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_JUG] ON [dbo].[jugadores]
(
	[Jugador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MAESTRO]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MAESTRO] ON [dbo].[Maestro]
(
	[Maestro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MATERIA]    Script Date: 22/03/2019 02:14:10 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MATERIA] ON [dbo].[Materia]
(
	[Materia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LBD_Practica5] SET  READ_WRITE 
GO
