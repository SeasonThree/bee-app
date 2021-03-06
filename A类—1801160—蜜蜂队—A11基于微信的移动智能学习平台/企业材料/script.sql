USE [master]
GO
/****** Object:  Database [BeeAcademy]    Script Date: 2019/3/25 19:14:11 ******/
CREATE DATABASE [BeeAcademy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BeeAcademy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BeeAcademy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BeeAcademy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BeeAcademy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BeeAcademy] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BeeAcademy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BeeAcademy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BeeAcademy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BeeAcademy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BeeAcademy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BeeAcademy] SET ARITHABORT OFF 
GO
ALTER DATABASE [BeeAcademy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BeeAcademy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BeeAcademy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BeeAcademy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BeeAcademy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BeeAcademy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BeeAcademy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BeeAcademy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BeeAcademy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BeeAcademy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BeeAcademy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BeeAcademy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BeeAcademy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BeeAcademy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BeeAcademy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BeeAcademy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BeeAcademy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BeeAcademy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BeeAcademy] SET  MULTI_USER 
GO
ALTER DATABASE [BeeAcademy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BeeAcademy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BeeAcademy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BeeAcademy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BeeAcademy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BeeAcademy] SET QUERY_STORE = OFF
GO
USE [BeeAcademy]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[Ano] [char](20) NOT NULL,
	[Atime] [varchar](40) NULL,
	[Atype] [varchar](20) NULL,
	[PR] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Gno] [char](20) NOT NULL,
	[Sender] [char](20) NOT NULL,
	[Content] [varchar](1000) NULL,
	[Ctime] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Gno] ASC,
	[Sender] ASC,
	[Ctime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Periods]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Periods](
	[C_P_no] [int] NOT NULL,
	[U_no] [int] NOT NULL,
	[Cno] [char](20) NOT NULL,
	[Tno] [char](20) NOT NULL,
	[C_no] [char](10) NOT NULL,
	[C_P_name] [varchar](20) NULL,
	[Task_points] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_P_no] ASC,
	[U_no] ASC,
	[Cno] ASC,
	[Tno] ASC,
	[C_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [pk_C_P_id_unique] UNIQUE NONCLUSTERED 
(
	[C_P_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Dno] [char](10) NOT NULL,
	[Dnum] [char](10) NULL,
	[teacher] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Dno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Cno] [char](20) NOT NULL,
	[Cname] [char](20) NULL,
	[Ccredit] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dept]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept](
	[Dno] [char](2) NULL,
	[Dname] [char](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 2019/3/25 19:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Gno] [char](20) NOT NULL,
	[Gname] [varchar](40) NULL,
	[Gtype] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Gno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hand]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hand](
	[Hno] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Hgrade] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hno] ASC,
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Homework]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Homework](
	[Hno] [char](20) NOT NULL,
	[Htime] [varchar](40) NULL,
	[HR] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Gno] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Gnum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Gno] ASC,
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presence]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presence](
	[Ano] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Atype] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Ano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QHand]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QHand](
	[Qno] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Qgrade] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Qno] ASC,
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuDetail]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuDetail](
	[Qno] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Qgrade] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Qno] ASC,
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Qno] [char](20) NOT NULL,
	[Qtime] [varchar](40) NULL,
	[Qtype] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Qno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[Qno] [char](20) NOT NULL,
	[Qtime] [varchar](40) NULL,
	[HR] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Qno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUnHand]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUnHand](
	[Qno] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Qgrade] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Qno] ASC,
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[Sno] [char](20) NOT NULL,
	[Cno] [char](20) NOT NULL,
	[Grade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Sno] [char](20) NOT NULL,
	[Sname] [char](20) NULL,
	[Sage] [char](20) NULL,
	[Ssex] [char](20) NULL,
	[Sdept] [char](20) NULL,
	[Smajor] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task_points]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_points](
	[T_P_no] [int] NOT NULL,
	[C_P_no] [int] NOT NULL,
	[T_B_no] [int] NULL,
	[Vno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[T_P_no] ASC,
	[C_P_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Task_no] [varchar](10) NOT NULL,
	[Cno] [char](20) NOT NULL,
	[Tno] [char](20) NOT NULL,
	[Class_no] [char](10) NOT NULL,
	[Units] [int] NULL,
	[Task_points] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Task_no] ASC,
	[Cno] ASC,
	[Tno] ASC,
	[Class_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Tno] [char](20) NOT NULL,
	[Tname] [char](20) NULL,
	[Tage] [char](20) NULL,
	[Tsex] [char](20) NULL,
	[Tdept] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Tno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tests_Bank]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests_Bank](
	[T_B_no] [int] NOT NULL,
	[Q_type] [varchar](10) NULL,
	[Question] [varchar](200) NULL,
	[Ans_A] [varchar](100) NULL,
	[Ans_B] [varchar](100) NULL,
	[Ans_C] [varchar](100) NULL,
	[Ans_D] [varchar](100) NULL,
	[A_Right] [char](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[T_B_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnHand]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnHand](
	[Hno] [char](20) NOT NULL,
	[Sno] [char](20) NOT NULL,
	[Hgrade] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hno] ASC,
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[Unit_no] [int] NOT NULL,
	[Cno] [char](20) NOT NULL,
	[Tno] [char](20) NOT NULL,
	[Class_no] [char](10) NOT NULL,
	[Unit_name] [varchar](20) NULL,
	[Class_Periods] [int] NULL,
	[Task_points] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Unit_no] ASC,
	[Cno] ASC,
	[Tno] ASC,
	[Class_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [pk_cateid_unique] UNIQUE NONCLUSTERED 
(
	[Unit_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 2019/3/25 19:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Vno] [int] NOT NULL,
	[Vname] [varchar](20) NULL,
	[V_url] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD FOREIGN KEY([Gno])
REFERENCES [dbo].[Groups] ([Gno])
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD FOREIGN KEY([Sender])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[Class_Periods]  WITH CHECK ADD FOREIGN KEY([C_no])
REFERENCES [dbo].[Classes] ([Dno])
GO
ALTER TABLE [dbo].[Class_Periods]  WITH CHECK ADD FOREIGN KEY([U_no])
REFERENCES [dbo].[Units] ([Unit_no])
GO
ALTER TABLE [dbo].[Class_Periods]  WITH CHECK ADD FOREIGN KEY([Cno])
REFERENCES [dbo].[Courses] ([Cno])
GO
ALTER TABLE [dbo].[Class_Periods]  WITH CHECK ADD FOREIGN KEY([Tno])
REFERENCES [dbo].[Teachers] ([Tno])
GO
ALTER TABLE [dbo].[Hand]  WITH CHECK ADD FOREIGN KEY([Hno])
REFERENCES [dbo].[Homework] ([Hno])
GO
ALTER TABLE [dbo].[Hand]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD FOREIGN KEY([Gno])
REFERENCES [dbo].[Groups] ([Gno])
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[Presence]  WITH CHECK ADD FOREIGN KEY([Ano])
REFERENCES [dbo].[Assessment] ([Ano])
GO
ALTER TABLE [dbo].[Presence]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[QHand]  WITH CHECK ADD FOREIGN KEY([Qno])
REFERENCES [dbo].[Quiz] ([Qno])
GO
ALTER TABLE [dbo].[QHand]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[QuDetail]  WITH CHECK ADD FOREIGN KEY([Qno])
REFERENCES [dbo].[Question] ([Qno])
GO
ALTER TABLE [dbo].[QuDetail]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[QUnHand]  WITH CHECK ADD FOREIGN KEY([Qno])
REFERENCES [dbo].[Quiz] ([Qno])
GO
ALTER TABLE [dbo].[QUnHand]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD FOREIGN KEY([Cno])
REFERENCES [dbo].[Courses] ([Cno])
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[Task_points]  WITH CHECK ADD FOREIGN KEY([C_P_no])
REFERENCES [dbo].[Class_Periods] ([C_P_no])
GO
ALTER TABLE [dbo].[Task_points]  WITH CHECK ADD FOREIGN KEY([T_B_no])
REFERENCES [dbo].[Tests_Bank] ([T_B_no])
GO
ALTER TABLE [dbo].[Task_points]  WITH CHECK ADD FOREIGN KEY([Vno])
REFERENCES [dbo].[Videos] ([Vno])
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD FOREIGN KEY([Class_no])
REFERENCES [dbo].[Classes] ([Dno])
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD FOREIGN KEY([Cno])
REFERENCES [dbo].[Courses] ([Cno])
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD FOREIGN KEY([Tno])
REFERENCES [dbo].[Teachers] ([Tno])
GO
ALTER TABLE [dbo].[UnHand]  WITH CHECK ADD FOREIGN KEY([Hno])
REFERENCES [dbo].[Homework] ([Hno])
GO
ALTER TABLE [dbo].[UnHand]  WITH CHECK ADD FOREIGN KEY([Sno])
REFERENCES [dbo].[Students] ([Sno])
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD FOREIGN KEY([Class_no])
REFERENCES [dbo].[Classes] ([Dno])
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD FOREIGN KEY([Cno])
REFERENCES [dbo].[Courses] ([Cno])
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD FOREIGN KEY([Tno])
REFERENCES [dbo].[Teachers] ([Tno])
GO
USE [master]
GO
ALTER DATABASE [BeeAcademy] SET  READ_WRITE 
GO
