USE [Practica 3]
GO

/****** Object:  Table [dbo].[Grupo]    Script Date: 16/06/2018 06:22:23 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Grupo](
	[idgrupo] [int] NOT NULL,
	[nombre] [text] NULL,
	[turno] [text] NULL,
	[alumno] [text] NULL,
	[maestro] [text] NULL,
 CONSTRAINT [PK_Gupo] PRIMARY KEY CLUSTERED 
(
	[idgrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE FUNCTION PromedioSalones1(@Salon1 int, @Salon2 int, @Salon3 int, @Salon4 int, @Salon5 int)

RETURNS	float

AS

BEGIN

DECLARE @promedio float



SET		@promedio= (@Salon1 + @Salon2 + @Salon3 + @Salon4 + @Salon5) / 5

Return(@promedio)

END



select dbo.PromedioSalones1(50, 40, 35, 42, 60) AS 'Promedio de Salones'



CREATE PROCEDURE EstudiosMaestros

@Titulo varchar(50)

AS BEGIN

	SELECT Maestros.estudios, estudios.idsalario_Empleado_No_empleado

	FROM Maestros

	LEFT JOIN estudios.idsalario ON Empleado_No_empleado= estudios.idsalario_Empleado_No_empleado

	WHERE Maestros.estudios > @Titulo

END



exec [EstudiosMaestros] 'Doctorado'



CREATE PROCEDURE Salones

@Tipo  varchar(50)

AS BEGIN

	SELECT Numero, Capacidad

	FROM Grupo

	WHERE Tipo = @Tipo

END



EXEC [Salones] 'Grande'



CREATE PROCEDURE idalumno

@Estatus int

AS BEGIN	

	SELECT COUNT(idalumno) as 'Cantidad de alumnos '

	FROM Alumno

	WHERE nombre = @nombres

END



EXEC [idalumno] 3



CREATE PROCEDURE CorreosN

@correosn int

AS BEGIN

	SELECT nombre.idalumno, nombre.Correo

	FROM Alumno

	WHERE nombre = @idalumnos n  

END



EXEC [CorreosN] 1



CREATE PROCEDURE Publicidad

@TipoN varchar(50)

AS BEGIN

	SELECT Correo, Nombre from Alumno

	WHERE Numero = (SELECT Numero FROM Telefono_nombre WHERE Tipo = @TipoN )

END



EXEC [Publicidad] 'Celular'





CREATE TRIGGER tr_insert2

ON dbo.Alumno

AFTER INSERT AS

	BEGIN

		SELECT * FROM INSERTED

END


CREATE TRIGGER tr_insert3

ON dbo.Alumno

AFTER UPDATE AS

	BEGIN

		SELECT * FROM INSERTED

END