USE [Practica 3]
GO

/****** Object:  Table [dbo].[Maestros]    Script Date: 16/06/2018 06:08:30 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Maestros](
	[idmaestro] [int] NOT NULL,
	[nombre] [text] NULL,
	[domicilio] [text] NULL,
	[telefono] [text] NULL,
	[estudios] [text] NULL,
	[foto] [image] NULL,
	[idsalario] [int] NULL,
 CONSTRAINT [PK_Maestros] PRIMARY KEY CLUSTERED 
(
	[idmaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE VIEW estudios AS

SELECT idmaestro.nombre, estudios.idsalario_Empleado_No_empleado

FROM Maestros

LEFT JOIN estudios.idsalario ON Empleado_No_empleado = estudios.idsalario_Empleado_No_empleado

WHERE  idmaestro.nombre > 'Doctorado'



CREATE VIEW Grupo AS

SELECT idgrupo, Capacidad

FROM Grupo

WHERE Tipo = 'Grande'



CREATE VIEW AlumnosSuspendidos AS

SELECT COUNT(idalumno) as 'Cantidad de alumnos suspendidos'

FROM Alumno

WHERE nombre =  1



CREATE VIEW correos AS

SELECT idalumno.nombre

FROM Alumno

 

CREATE VIEW NumeroEstudiantes AS

SELECT idalumno.nombre, idalumno.Primer_Apellido, idalumno.Segundo_Apellido, telefono_idalumno

FROM Alumno

LEFT JOIN telefono_idalumno ON idalumno.nombre = telefono_idalumno.nombre_idalumno



SELECT correo, nombre from Alumno

WHERE Numero = (SELECT Numero FROM telefono_idalumno WHERE Tipo = 'Celular' );



WITH ContadorSalones AS (

  SELECT Tipo,

		count(Numero) Grupos

  FROM   Grupo

  GROUP BY Tipo )



SELECT Grupo, 

	   Tipo

FROM ContadorGrupos

WHERE Tipo = 'Grande'

ORDER BY Grupo


CREATE TABLE #Lista (idalumno int, nombre text)

INSERT INTO #Lista SELECT idalumno, ombre

FROM Alumno

SELECT * FROM #Lista