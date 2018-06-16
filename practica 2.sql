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
CREATE TABLE [dbo].[Table2](

	[Distribuidor] [int] NOT NULL,

	[Entrega] [date] NULL,

	[Productos] [text] NULL,

 CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED 

(

	[Distribuidor] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]



GO
