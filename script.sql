USE [master]
GO
/****** Object:  Database [rezervasyon]    Script Date: 15.01.2022 21:24:13 ******/
CREATE DATABASE [rezervasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'rezervasyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\rezervasyon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'rezervasyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\rezervasyon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [rezervasyon] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [rezervasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [rezervasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [rezervasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [rezervasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [rezervasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [rezervasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [rezervasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [rezervasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [rezervasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [rezervasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [rezervasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [rezervasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [rezervasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [rezervasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [rezervasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [rezervasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [rezervasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [rezervasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [rezervasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [rezervasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [rezervasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [rezervasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [rezervasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [rezervasyon] SET RECOVERY FULL 
GO
ALTER DATABASE [rezervasyon] SET  MULTI_USER 
GO
ALTER DATABASE [rezervasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [rezervasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [rezervasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [rezervasyon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [rezervasyon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [rezervasyon] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'rezervasyon', N'ON'
GO
ALTER DATABASE [rezervasyon] SET QUERY_STORE = OFF
GO
USE [rezervasyon]
GO
/****** Object:  Table [dbo].[admin_bilgiler]    Script Date: 15.01.2022 21:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_bilgiler](
	[Admin_ID] [int] IDENTITY(1,1) NOT NULL,
	[Admin_Username] [nvarchar](50) NULL,
	[Admin_password] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin_bilgiler] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rezervasyon_bilgiler]    Script Date: 15.01.2022 21:24:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rezervasyon_bilgiler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Time] [time](7) NULL,
	[Guest] [nvarchar](50) NULL,
 CONSTRAINT [PK_rezervasyon_bilgiler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin_bilgiler] ON 

INSERT [dbo].[admin_bilgiler] ([Admin_ID], [Admin_Username], [Admin_password]) VALUES (1, N'root', N'root')
SET IDENTITY_INSERT [dbo].[admin_bilgiler] OFF
GO
SET IDENTITY_INSERT [dbo].[rezervasyon_bilgiler] ON 

INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (8, N'hayde', N'hop@gmail.com', N'5121532153', CAST(N'2021-12-19' AS Date), CAST(N'20:42:00' AS Time), N'5 Kişi')
INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (9, N'alaa', N'alaa@assa.com', N'02126552636', CAST(N'2021-12-14' AS Date), CAST(N'18:44:00' AS Time), N'7 Kişi')
INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (10, N'aa', N'bbb@gmail.com', N'21265555555', CAST(N'2021-12-22' AS Date), CAST(N'20:13:00' AS Time), N'5 Kişi')
INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (15, N'berk', N'son@gmail', N'21126546', CAST(N'2021-12-24' AS Date), CAST(N'13:37:00' AS Time), N'8 Kişi')
INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (16, N'berk', N'son@gmail', N'21126546', CAST(N'2021-12-24' AS Date), CAST(N'13:37:00' AS Time), N'8 Kişi')
INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (17, N'berk', N'hadi@gmail.com', N'212655555555', CAST(N'2022-01-01' AS Date), CAST(N'16:36:00' AS Time), N'6 Kişi')
INSERT [dbo].[rezervasyon_bilgiler] ([Id], [Name], [Email], [Mobile], [Date], [Time], [Guest]) VALUES (28, N'berk', N'son@gmail.com', N'2126553232', CAST(N'2021-12-08' AS Date), CAST(N'02:12:00' AS Time), N'3 Kişi')
SET IDENTITY_INSERT [dbo].[rezervasyon_bilgiler] OFF
GO
USE [master]
GO
ALTER DATABASE [rezervasyon] SET  READ_WRITE 
GO
