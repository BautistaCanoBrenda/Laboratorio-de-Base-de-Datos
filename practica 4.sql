USE [Practica 3]
GO

/****** Object:  Table [dbo].[Alumno]    Script Date: 16/06/2018 05:23:12 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Alumno](
	[idalumno] [int] NOT NULL,
	[nombre] [text] NULL,
	[Primer_Apellido] [text] NULL,
	[Segundo_Apellido] [text] NULL,
	[calle] [text] NULL,
	[telefono] [text] NULL,
	[correo] [text] NULL,
	[idgrupo] [int] NULL,
	
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[idalumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


insert into Alumno (idalumno, nombre, Primer_Apellido, Segundo_Apellido, correo, calle, telefono) values (1837464, 'Brenda', 'Bautista', 'Cano', 'shin_b20@hotmail.com', 'Escobedo', 81249292)

INSERT into Alumno values (17234376, 'Saul', 'Vasquez', 'Flores', 'SVF_22@outlook.com', 'Guadalupe', 81676379)
INSERT into Alumno values (1453766, 'Laura', 'Velasquez', 'Lopez', 'LV_L@outlook.com', 'Guadalupe', 4689202
INSERT into Alumno values (1983452, 'Carla', 'Sanchez', 'flores', 'CSF_F@outlook.com', 'Guadalupe', 546782254)
INSERT into Alumno values (1092365, 'Lilia', 'Torres', 'Vasquez', 'LTV.13@outlook.com', 'Guadalupe', 82786483)
INSERT into Alumno values (1877934, 'Damara', 'Correa', 'Torres', 'DCT@outlook.com', 'Guadalupe', 8143546)
INSERT into Alumno values (1862564, 'Cruz', 'Bosques', 'sanchez', 'CBT@outlook.com', 'Juarez', 81278748)
INSERT into Alumno values (1989804, 'Edgar', 'Alvares', 'Martinez', 'EAM_22@outlook.com', 'Guadalupe', 8766812)
INSERT into Alumno values (1787412, 'Luis', 'Lopez', 'Duran', 'LLD@outlook.com', 'Guadalupe', 810927448)
INSERT into Alumno values (1727686, 'Jose', 'Martinez', 'Smaripa', 'JMS@outlook.com', 'Guadalupe', 81264830)


INSERT into Alumno select idalumno, nombre, Primer_Apellido, Segundo_Apellido, correo, calle, telefono FROM Grupo


Select * into #Grupo

from Grupo

select * from #Grupo


update Alumno SET telefono = '8123574680'

where idalumno = 1887390


select * from Alumno