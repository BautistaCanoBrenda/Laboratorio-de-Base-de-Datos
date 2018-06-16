USE [Practica 3]
GO

SELECT [idmaestro]
      ,[nombre]
      ,[domicilio]
      ,[telefono]
      ,[estudios]
      ,[foto]
      ,[idsalario]
  FROM [dbo].[Maestros]
GO


SELECT idmaestro.estudios, estudios.idsalario_Empleado_No_empleado

FROM Maestros
LEFT JOIN estudios.idsalario ON Empleado_No_empleado = estudios.idsalario_Empleado_No_empleado

ORDER BY idmaestro.estudios