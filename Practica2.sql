USE [LBD_Practica2]
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[Tienda]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[jugadores]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[jugadores]
GO
/****** Object:  Table [dbo].[IMSS]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[IMSS]
GO
/****** Object:  Table [dbo].[Gamers]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[Gamers]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[estudiantes]
GO
/****** Object:  Table [dbo].[equipofutbol]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[equipofutbol]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 01/03/2019 03:11:29 p. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[empleado]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[equipofutbol]    Script Date: 01/03/2019 03:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipofutbol](
	[Equipo_id] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[AñoFundacion] [date] NULL,
	[Presupuesto] [money] NULL,
	[Presidente] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Equipo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[Gamers]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[IMSS]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[jugadores]    Script Date: 01/03/2019 03:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jugadores](
	[Jugador_id] [varchar](50) NOT NULL,
	[Club] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Telefono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Jugador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[Materia]    Script Date: 01/03/2019 03:11:29 p. m. ******/
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
/****** Object:  Table [dbo].[Tienda]    Script Date: 01/03/2019 03:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[Tienda_id] [int] NOT NULL,
	[Nombre_Tienda] [varchar](50) NULL,
	[Productos] [varchar](50) NULL,
	[Precios] [money] NULL,
	[Precio_Total]  AS ([Precios]+[Precios]*(0.16)),
PRIMARY KEY CLUSTERED 
(
	[Tienda_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
