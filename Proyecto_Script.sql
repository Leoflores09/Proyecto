USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 5/7/2020 00:50:31 ******/
CREATE DATABASE [Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Proyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Proyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Proyecto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto] SET QUERY_STORE = OFF
GO
USE [Proyecto]
GO
/****** Object:  Table [dbo].[t_CasosDepartamento]    Script Date: 5/7/2020 00:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_CasosDepartamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](50) NULL,
	[Infectados] [int] NULL,
	[Muertos] [int] NULL,
	[Recuperados] [int] NULL,
 CONSTRAINT [PK_t_CasosDeparmento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_CasosGeneros]    Script Date: 5/7/2020 00:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_CasosGeneros](
	[CantidadInfectados] [int] NULL,
	[Sexo] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Login]    Script Date: 5/7/2020 00:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Login](
	[Usuario] [varchar](20) NOT NULL,
	[Contraseña] [int] NOT NULL,
 CONSTRAINT [PK_t_Login] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[t_CasosDepartamento] ON 

INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (1, N'Atlantida', 628, 12, 111)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (2, N'Choluteca', 616, 10, 50)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (3, N'Colon', 172, 7, 78)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (4, N'Comayagua', 156, 5, 16)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (5, N'Copan', 98, 2, 11)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (6, N'Cortes', 9229, 299, 1288)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (7, N'El Paraiso', 178, 1, 12)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (8, N'Francisco Morazan', 7183, 168, 387)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (9, N'Gracias a Dios', 21, 0, 0)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (10, N'Intibuca', 81, 3, 12)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (11, N'Islas de la Bahia', 127, 1, 3)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (12, N'La Paz', 120, 3, 12)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (13, N'Lempira', 30, 1, 5)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (14, N'Ocotepeque', 76, 2, 8)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (15, N'Olancho', 97, 1, 6)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (16, N'Santa Barbara', 404, 10, 22)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (17, N'Valle', 317, 4, 19)
INSERT [dbo].[t_CasosDepartamento] ([IdDepartamento], [Departamento], [Infectados], [Muertos], [Recuperados]) VALUES (18, N'Yoro', 729, 13, 109)
SET IDENTITY_INSERT [dbo].[t_CasosDepartamento] OFF
GO
INSERT [dbo].[t_CasosGeneros] ([CantidadInfectados], [Sexo]) VALUES (8712, N'Mujeres')
INSERT [dbo].[t_CasosGeneros] ([CantidadInfectados], [Sexo]) VALUES (10846, N'Hombres')
GO
INSERT [dbo].[t_Login] ([Usuario], [Contraseña]) VALUES (N'leofl', 1234)
GO
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
