USE [Practica 3]
GO

SELECT [idalumno]
      ,[nombre]
      ,[calle]
      ,[telefono]
      ,[idgrupo]
      ,[correo]
      ,[Primer_Apellido]
      ,[Segundo_Apellido]
  FROM [dbo].[Alumno]
GO
SELECT COUNT(idalumno) as 'Cantidad de estudiantes', nombre

FROM Alumno

GROUP BY nombre

ORDER BY 'Cantidad de estudiantes' DESC

--SELECTS CON 1 COLUMNA Y 3 FUNCIONES AGREGADAS

SELECT SUM(Cantidad) as 'Cantidad Total'

FROM Grupo



SELECT COUNT(idalumno) as 'Cantidad de estudiantes'

FROM Alumno



SELECT AVG(Cantidad) as 'Capacidad Promedio'

FROM Grupo


--CON WHERE 

SELECT COUNT(idalumno) as 'Cantidad de estudiantes activos'

FROM Alumno

WHERE nombre = 7



SELECT COUNT(idalumno) as 'Cantiadad de estudiantes suspendidos o inactivos'

FROM Alumno

WHERE nombre != 1



SELECT AVG(Capacidad) as 'Capacidad promedio para salones chicos'

FROM Grupo
WHERE Tipo='Chico'



SELECT SUM(Capacidad) as 'Capacidad total de los salones grandes'

FROM Grupo

WHERE Tipo='Grande'



--CON HAVING 

SELECT COUNT(idalumno) as 'No estudiantes', nombre

FROM Alumno

Group BY nombre

HAVING COUNT(nombre) > 10

ORDER BY nombre DESC



--Select con TOP

SELECT TOP 10 * FROM Alumno

ORDER BY idalumno DESC



SELECT TOP 10 * FROM Alumno

WHERE nombre = 4

ORDER BY idalumno asc


