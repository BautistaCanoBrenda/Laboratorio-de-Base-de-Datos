USE [Base de datos practica 2]
GO

/****** Object:  Table [dbo].[Table2]    Script Date: 24/02/2018 02:28:29 p.m. ******/
DROP TABLE [dbo].[Table2]
GO

/****** Object:  Table [dbo].[Table2]    Script Date: 24/02/2018 02:28:29 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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


