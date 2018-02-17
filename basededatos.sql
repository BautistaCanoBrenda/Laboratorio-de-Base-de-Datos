USE [master]
GO
/****** Object:  Database [Base de datos]    Script Date: 17/02/2018 02:30:22 p.m. ******/
DROP DATABASE [Base de datos]
GO
/****** Object:  Database [Base de datos]    Script Date: 17/02/2018 02:30:22 p.m. ******/
CREATE DATABASE [Base de datos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Base de datos', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Base de datos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Base de datos_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Base de datos_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Base de datos] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Base de datos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Base de datos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Base de datos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Base de datos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Base de datos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Base de datos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Base de datos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Base de datos] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Base de datos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Base de datos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Base de datos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Base de datos] SET CURSOR_DEFAULT  GLOBAL 
GO