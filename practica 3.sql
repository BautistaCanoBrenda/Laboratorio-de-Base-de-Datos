-- =========================================
-- Create FileTable template
-- =========================================
USE <database, sysname, AdventureWorks>
GO

IF OBJECT_ID('<schema_name, sysname, dbo>.<table_name, sysname, sample_filetable>', 'U') IS NOT NULL
  DROP TABLE <schema_name, sysname, dbo>.<table_name, sysname, sample_filetable>
GO

CREATE TABLE <schema_name, sysname, dbo>.<table_name, sysname, sample_filetable> AS FILETABLE
  WITH
  (
    FILETABLE_DIRECTORY = '<file_table_directory_name, sysname, sample_filetable>',
    FILETABLE_COLLATE_FILENAME = <file_table_filename_collation, sysname, database_default>
  )
GO
CREATE TABLE [dbo].[Alumno](
	[idalumno] [int] NOT NULL,
	[nombre] [text] NULL,
	[calle] [text] NULL,
	[telefono] [text] NULL,
	[idgrupo] [int] NULL,
	[correo] [text] NULL,
	[Primer_Apellido] [text] NULL,
	[Segundo_Apellido] [text] NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[idalumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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


CREATE TABLE [dbo].[Pago](
	[idpago] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[idmaestro] [int] NULL,
	[horas] [numeric](18, 0) NULL,
	[idsalario] [int] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[idpago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Pago] FOREIGN KEY([idpago])
REFERENCES [dbo].[Pago] ([idpago])
GO

ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Pago]
GO


CREATE TABLE [dbo].[Salario](
	[idsalario] [int] NOT NULL,
	[grado] [text] NULL,
	[pagoxhora] [money] NULL,
 CONSTRAINT [PK_Salario] PRIMARY KEY CLUSTERED 
(
	[idsalario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

