USE [master]
GO
/****** Object:  Database [CodeLearn]    Script Date: 16/12/2022 21:20:52 ******/
CREATE DATABASE [CodeLearn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CodeLearn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CodeLearn.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CodeLearn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CodeLearn_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CodeLearn] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CodeLearn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CodeLearn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CodeLearn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CodeLearn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CodeLearn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CodeLearn] SET ARITHABORT OFF 
GO
ALTER DATABASE [CodeLearn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CodeLearn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CodeLearn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CodeLearn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CodeLearn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CodeLearn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CodeLearn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CodeLearn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CodeLearn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CodeLearn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CodeLearn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CodeLearn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CodeLearn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CodeLearn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CodeLearn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CodeLearn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CodeLearn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CodeLearn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CodeLearn] SET  MULTI_USER 
GO
ALTER DATABASE [CodeLearn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CodeLearn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CodeLearn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CodeLearn] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CodeLearn] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CodeLearn] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CodeLearn] SET QUERY_STORE = OFF
GO
USE [CodeLearn]
GO
/****** Object:  Table [dbo].[data_type]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[short_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DataTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exercise]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exercise](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](2000) NOT NULL,
	[context] [text] NOT NULL,
	[coding_area] [nvarchar](2000) NULL,
	[exercise_type_id] [int] NOT NULL,
	[optional_usings] [nvarchar](200) NULL,
	[optional_dlls] [nvarchar](200) NULL,
	[class_name] [nvarchar](30) NULL,
	[score] [int] NOT NULL,
	[short_description] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Exercise] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exercise_type]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exercise_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExerciseTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[patronymic] [nvarchar](50) NULL,
	[group_id] [int] NOT NULL,
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[patronymic] [nvarchar](50) NULL,
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_case_parameters]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_case_parameters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[test_case_id] [int] NOT NULL,
	[value] [nvarchar](500) NOT NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_Parameters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_cases]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_cases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[result] [nvarchar](2000) NOT NULL,
	[test_method_id] [int] NOT NULL,
 CONSTRAINT [PK_TestCases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_method_info]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_method_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[return_type_id] [int] NOT NULL,
	[exercise_id] [int] NOT NULL,
 CONSTRAINT [PK_TestMethodsInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_method_parameters]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_method_parameters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data_type_id] [int] NOT NULL,
	[test_method_info_id] [int] NOT NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_ParametersTestMethods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testing]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](400) NOT NULL,
	[duration_in_minutes] [int] NOT NULL,
	[test_creator_id] [int] NULL,
 CONSTRAINT [PK_testing] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testing_answer]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testing_answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[exercise_id] [int] NOT NULL,
	[testing_result_id] [int] NOT NULL,
	[answer] [text] NULL,
	[is_correct] [bit] NOT NULL,
	[failure_info] [nvarchar](200) NULL,
 CONSTRAINT [PK_testing_answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testing_exercise]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testing_exercise](
	[course_id] [int] NOT NULL,
	[exercise_id] [int] NOT NULL,
 CONSTRAINT [PK_testing_exercise] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[exercise_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testing_result]    Script Date: 16/12/2022 21:20:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testing_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[testing_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[score] [int] NOT NULL,
	[passing_date] [datetime] NOT NULL,
 CONSTRAINT [PK_testing_result] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[data_type] ON 

INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (1, N'Void', N'void')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (2, N'System.Boolean', N'bool')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (3, N'System.Byte', N'byte')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (4, N'System.SByte', N'sbyte')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (5, N'System.Char', N'char')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (6, N'System.Decimal', N'decimal')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (7, N'System.Double', N'double')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (8, N'System.Single', N'float')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (9, N'System.Int32', N'int')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (10, N'System.UInt32', N'uint')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (11, N'System.Int64', N'long')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (12, N'System.UInt64', N'ulong')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (13, N'System.Int16', N'short')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (14, N'System.UInt16', N'ushort')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (15, N'System.IntPtr', N'nint')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (16, N'System.Object', N'object')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (17, N'System.String', N'string')
INSERT [dbo].[data_type] ([id], [name], [short_name]) VALUES (18, N'System.Object', N'dynamic')
SET IDENTITY_INSERT [dbo].[data_type] OFF
GO
SET IDENTITY_INSERT [dbo].[exercise] ON 

INSERT [dbo].[exercise] ([id], [description], [context], [coding_area], [exercise_type_id], [optional_usings], [optional_dlls], [class_name], [score], [short_description]) VALUES (1002, N'Напишите тело метода GetArea так, чтобы оно возвращало площадь прямоугольника. Можете считать, что параметры ''a'' и ''b'' всегда положительные числа.', N'static void Main()
{
 Console.WriteLine(GetArea(6, 6));
 Console.WriteLine(GetArea(7.5, 10));
 Console.WriteLine(GetArea(1, 5));
}', N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL, NULL, N'TestClass', 1, N'Вычисление площади')
INSERT [dbo].[exercise] ([id], [description], [context], [coding_area], [exercise_type_id], [optional_usings], [optional_dlls], [class_name], [score], [short_description]) VALUES (1009, N'Напишите функцию, которая будет возвращать ту же строку, но без последнего символа.', N'GetStr("uvwxyz");
GetStr("1213-dsfjk oob");
GetStr("CodeLearnn");', N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL, NULL, N'TestClass', 1, N'Возвращение строки без символа')
INSERT [dbo].[exercise] ([id], [description], [context], [coding_area], [exercise_type_id], [optional_usings], [optional_dlls], [class_name], [score], [short_description]) VALUES (1010, N'Ваш метод должен возвращать целое числое. Если параметр метода является четным числом, то число должно увеличиться на 1, если нечетное, то на 2.', N'GetNextInt(5);
GetNextInt(17);
GetNextInt(44);', N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL, NULL, N'TestClass', 1, N'Следующее число')
INSERT [dbo].[exercise] ([id], [description], [context], [coding_area], [exercise_type_id], [optional_usings], [optional_dlls], [class_name], [score], [short_description]) VALUES (1013, N'asdafsdf', N'asdfasd', N'fasdfasdf', 1, NULL, NULL, N'TestClass', 1, N'fasdf')
INSERT [dbo].[exercise] ([id], [description], [context], [coding_area], [exercise_type_id], [optional_usings], [optional_dlls], [class_name], [score], [short_description]) VALUES (1024, N'Описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание описание', N' ???????? ????????', N' описание описание описание', 1, NULL, NULL, N'TestClass', 2, N'описание описание описание описание описание описание описание')
INSERT [dbo].[exercise] ([id], [description], [context], [coding_area], [exercise_type_id], [optional_usings], [optional_dlls], [class_name], [score], [short_description]) VALUES (1031, N'ScoreTest', N'// example
GetNumber(50);
GetNumber(75.4);
GetNumber(1.333);', N'// example
public static double ScoreTest(double a)
{
    // return a;
}', 1, NULL, NULL, N'TestClass', 3, N'ScoreTest')
SET IDENTITY_INSERT [dbo].[exercise] OFF
GO
SET IDENTITY_INSERT [dbo].[exercise_type] ON 

INSERT [dbo].[exercise_type] ([id], [name]) VALUES (1, N'Method coding')
INSERT [dbo].[exercise_type] ([id], [name]) VALUES (2, N'Class coding')
INSERT [dbo].[exercise_type] ([id], [name]) VALUES (3, N'Question')
SET IDENTITY_INSERT [dbo].[exercise_type] OFF
GO
SET IDENTITY_INSERT [dbo].[group] ON 

INSERT [dbo].[group] ([id], [name], [year]) VALUES (1, N'pib1', 2022)
INSERT [dbo].[group] ([id], [name], [year]) VALUES (2, N'pib2', 2023)
INSERT [dbo].[group] ([id], [name], [year]) VALUES (3, N'pib3', 2024)
SET IDENTITY_INSERT [dbo].[group] OFF
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [first_name], [last_name], [patronymic], [group_id], [username], [password]) VALUES (1, N'Egor', N'Mironov', N'Olegovich', 1, N'test', N'test')
INSERT [dbo].[student] ([id], [first_name], [last_name], [patronymic], [group_id], [username], [password]) VALUES (2, N'Danil', N'Smirnov', N'Yurievich', 2, N'smirnov2', N'smirnov2')
INSERT [dbo].[student] ([id], [first_name], [last_name], [patronymic], [group_id], [username], [password]) VALUES (3, N'Kirill', N'Shelest', N'', 1, N'shelest3', N'shelest3')
SET IDENTITY_INSERT [dbo].[student] OFF
GO
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([id], [first_name], [last_name], [patronymic], [username], [password]) VALUES (1, N'Иван', N'Блок', N'Николаевич', N'block', N'block')
SET IDENTITY_INSERT [dbo].[teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[test_case_parameters] ON 

INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (4, 2, N'6', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (5, 2, N'6', 1)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (6, 3, N'7.5', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (7, 3, N'10', 1)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (8, 4, N'1', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (9, 4, N'5', 1)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (1014, 1008, N'uvwxyz', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (1015, 1009, N'CodeLearnn', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (1016, 1010, N'5', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (1017, 1011, N'17', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (1018, 1012, N'44', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (2014, 2008, N'fads', 0)
INSERT [dbo].[test_case_parameters] ([id], [test_case_id], [value], [position]) VALUES (2015, 2009, N'2', 0)
SET IDENTITY_INSERT [dbo].[test_case_parameters] OFF
GO
SET IDENTITY_INSERT [dbo].[test_cases] ON 

INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (2, N'36', 1004)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (3, N'75', 1004)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (4, N'5', 1004)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (1008, N'uvwxy', 2008)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (1009, N'CodeLearn', 2008)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (1010, N'7', 2009)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (1011, N'19', 2009)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (1012, N'45', 2009)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (2008, N'fad', 3008)
INSERT [dbo].[test_cases] ([id], [result], [test_method_id]) VALUES (2009, N'1', 3009)
SET IDENTITY_INSERT [dbo].[test_cases] OFF
GO
SET IDENTITY_INSERT [dbo].[test_method_info] ON 

INSERT [dbo].[test_method_info] ([id], [name], [return_type_id], [exercise_id]) VALUES (1004, N'GetArea', 7, 1002)
INSERT [dbo].[test_method_info] ([id], [name], [return_type_id], [exercise_id]) VALUES (2008, N'GetStr', 17, 1009)
INSERT [dbo].[test_method_info] ([id], [name], [return_type_id], [exercise_id]) VALUES (2009, N'GetNextInt', 9, 1010)
INSERT [dbo].[test_method_info] ([id], [name], [return_type_id], [exercise_id]) VALUES (3008, N'TestMethod', 1, 1013)
INSERT [dbo].[test_method_info] ([id], [name], [return_type_id], [exercise_id]) VALUES (3009, N'ScoreTest', 1, 1031)
SET IDENTITY_INSERT [dbo].[test_method_info] OFF
GO
SET IDENTITY_INSERT [dbo].[test_method_parameters] ON 

INSERT [dbo].[test_method_parameters] ([id], [data_type_id], [test_method_info_id], [position]) VALUES (1002, 7, 1004, 0)
INSERT [dbo].[test_method_parameters] ([id], [data_type_id], [test_method_info_id], [position]) VALUES (1003, 7, 1004, 1)
INSERT [dbo].[test_method_parameters] ([id], [data_type_id], [test_method_info_id], [position]) VALUES (2008, 17, 2008, 0)
INSERT [dbo].[test_method_parameters] ([id], [data_type_id], [test_method_info_id], [position]) VALUES (2009, 9, 2009, 0)
INSERT [dbo].[test_method_parameters] ([id], [data_type_id], [test_method_info_id], [position]) VALUES (3008, 17, 3008, 0)
INSERT [dbo].[test_method_parameters] ([id], [data_type_id], [test_method_info_id], [position]) VALUES (3009, 4, 3009, 0)
SET IDENTITY_INSERT [dbo].[test_method_parameters] OFF
GO
SET IDENTITY_INSERT [dbo].[testing] ON 

INSERT [dbo].[testing] ([id], [name], [description], [duration_in_minutes], [test_creator_id]) VALUES (1, N'Базовый тест знаний языка программирования C#', N'Тест расчитан на программистов C# с минимальным опытом.', 6, NULL)
INSERT [dbo].[testing] ([id], [name], [description], [duration_in_minutes], [test_creator_id]) VALUES (5, N'Базовый тест знаний языка программирования C# 2', N'Вторая часть курса.', 60, NULL)
INSERT [dbo].[testing] ([id], [name], [description], [duration_in_minutes], [test_creator_id]) VALUES (6, N'Тест для более продвинутых программистов C#', N'Тест для более продвинутых программистов.', 90, NULL)
INSERT [dbo].[testing] ([id], [name], [description], [duration_in_minutes], [test_creator_id]) VALUES (8, N'test1', N'test1', 60, NULL)
INSERT [dbo].[testing] ([id], [name], [description], [duration_in_minutes], [test_creator_id]) VALUES (9, N'block', N'block', 60, 1)
SET IDENTITY_INSERT [dbo].[testing] OFF
GO
SET IDENTITY_INSERT [dbo].[testing_answer] ON 

INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (181, 1002, 69, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (182, 1009, 69, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (183, 1010, 69, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (184, 1002, 70, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (185, 1009, 70, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (186, 1010, 70, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (187, 1002, 71, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (188, 1009, 71, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (189, 1010, 71, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (190, 1002, 72, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (191, 1009, 72, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (192, 1010, 72, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (193, 1002, 73, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (194, 1009, 73, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (195, 1010, 73, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (196, 1002, 74, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (197, 1009, 74, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (198, 1010, 74, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (199, 1002, 75, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (200, 1009, 75, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (201, 1010, 75, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (202, 1002, 76, N'public static double GetArea(double a, double b)
{
    return a *123
21
321
3
12
3 b;
}', 0, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (203, 1009, 76, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (204, 1010, 76, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (205, 1002, 77, N'', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (206, 1009, 77, N'', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (207, 1010, 77, N'', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (208, 1002, 78, N'', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (209, 1009, 78, N'', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (210, 1010, 78, N'', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (211, 1002, 79, N'public static double GetArea(double a, double b)
{
    return a * b;324234
234
32
4
23
423
4
23
42
34
32
4
}', 0, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (212, 1009, 79, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (213, 1010, 79, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (214, 1002, 80, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (215, 1009, 80, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (216, 1010, 80, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (217, 1002, 81, N'public static double GetArea(double a, double b)
{
    return a * b;
fd
sd
fds
fd
sf
sd
fs
d
fsd
f
sd
fsd
f
sd
fsd
f
sd
fsd
f
sdf
sd
fs
df
sd
f
sdf
sd
f
sd
f
}', 0, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (218, 1009, 81, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (219, 1010, 81, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (220, 1002, 82, N'public static double GetArea(double a, double b)
{
    return a * b;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (221, 1009, 82, N'public static string GetStr(string s) 
{
    string result = s.Remove(s.Length-1);
    return result;
}', 1, NULL)
INSERT [dbo].[testing_answer] ([id], [exercise_id], [testing_result_id], [answer], [is_correct], [failure_info]) VALUES (222, 1010, 82, N'public static int GetNextInt(int num)
{
    if (num == 5) return 7;
    if (num == 17) return 19;
    if (num == 44) return 45;
    return num;
}', 1, NULL)
SET IDENTITY_INSERT [dbo].[testing_answer] OFF
GO
INSERT [dbo].[testing_exercise] ([course_id], [exercise_id]) VALUES (1, 1002)
INSERT [dbo].[testing_exercise] ([course_id], [exercise_id]) VALUES (1, 1009)
INSERT [dbo].[testing_exercise] ([course_id], [exercise_id]) VALUES (1, 1010)
GO
SET IDENTITY_INSERT [dbo].[testing_result] ON 

INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (69, 1, 1, 3, CAST(N'2022-12-04T20:53:06.457' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (70, 1, 1, 3, CAST(N'2022-12-04T21:31:31.963' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (71, 1, 1, 3, CAST(N'2022-12-04T22:43:02.540' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (72, 1, 1, 3, CAST(N'2022-12-04T23:48:50.473' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (73, 1, 1, 3, CAST(N'2022-12-04T23:50:46.430' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (74, 1, 1, 3, CAST(N'2022-12-04T23:56:29.180' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (75, 1, 1, 3, CAST(N'2022-12-04T23:58:12.277' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (76, 1, 1, 2, CAST(N'2022-12-04T23:58:54.163' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (77, 1, 1, 3, CAST(N'2022-12-05T00:02:15.980' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (78, 1, 1, 3, CAST(N'2022-12-05T00:04:23.040' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (79, 1, 1, 2, CAST(N'2022-12-05T00:09:19.927' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (80, 1, 1, 3, CAST(N'2022-12-05T04:10:43.993' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (81, 1, 1, 2, CAST(N'2022-12-12T16:55:21.357' AS DateTime))
INSERT [dbo].[testing_result] ([id], [testing_id], [student_id], [score], [passing_date]) VALUES (82, 1, 1, 3, CAST(N'2022-12-12T16:56:50.833' AS DateTime))
SET IDENTITY_INSERT [dbo].[testing_result] OFF
GO
ALTER TABLE [dbo].[exercise]  WITH CHECK ADD  CONSTRAINT [FK_Exercises_ExerciseTypes] FOREIGN KEY([exercise_type_id])
REFERENCES [dbo].[exercise_type] ([id])
GO
ALTER TABLE [dbo].[exercise] CHECK CONSTRAINT [FK_Exercises_ExerciseTypes]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_group] FOREIGN KEY([group_id])
REFERENCES [dbo].[group] ([id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_group]
GO
ALTER TABLE [dbo].[test_case_parameters]  WITH CHECK ADD  CONSTRAINT [FK_Parameters_TestCases] FOREIGN KEY([test_case_id])
REFERENCES [dbo].[test_cases] ([id])
GO
ALTER TABLE [dbo].[test_case_parameters] CHECK CONSTRAINT [FK_Parameters_TestCases]
GO
ALTER TABLE [dbo].[test_cases]  WITH CHECK ADD  CONSTRAINT [FK_test_case_test_method_info] FOREIGN KEY([test_method_id])
REFERENCES [dbo].[test_method_info] ([id])
GO
ALTER TABLE [dbo].[test_cases] CHECK CONSTRAINT [FK_test_case_test_method_info]
GO
ALTER TABLE [dbo].[test_method_info]  WITH CHECK ADD  CONSTRAINT [FK_test_method_info_exercise1] FOREIGN KEY([exercise_id])
REFERENCES [dbo].[exercise] ([id])
GO
ALTER TABLE [dbo].[test_method_info] CHECK CONSTRAINT [FK_test_method_info_exercise1]
GO
ALTER TABLE [dbo].[test_method_info]  WITH CHECK ADD  CONSTRAINT [FK_TestMethodsInfo_DataTypes] FOREIGN KEY([return_type_id])
REFERENCES [dbo].[data_type] ([id])
GO
ALTER TABLE [dbo].[test_method_info] CHECK CONSTRAINT [FK_TestMethodsInfo_DataTypes]
GO
ALTER TABLE [dbo].[test_method_parameters]  WITH CHECK ADD  CONSTRAINT [FK_ParametersTestMethods_DataTypes] FOREIGN KEY([data_type_id])
REFERENCES [dbo].[data_type] ([id])
GO
ALTER TABLE [dbo].[test_method_parameters] CHECK CONSTRAINT [FK_ParametersTestMethods_DataTypes]
GO
ALTER TABLE [dbo].[test_method_parameters]  WITH CHECK ADD  CONSTRAINT [FK_ParametersTestMethods_TestMethodsInfo] FOREIGN KEY([test_method_info_id])
REFERENCES [dbo].[test_method_info] ([id])
GO
ALTER TABLE [dbo].[test_method_parameters] CHECK CONSTRAINT [FK_ParametersTestMethods_TestMethodsInfo]
GO
ALTER TABLE [dbo].[testing]  WITH CHECK ADD  CONSTRAINT [FK_testing_teacher] FOREIGN KEY([test_creator_id])
REFERENCES [dbo].[teacher] ([id])
GO
ALTER TABLE [dbo].[testing] CHECK CONSTRAINT [FK_testing_teacher]
GO
ALTER TABLE [dbo].[testing_answer]  WITH CHECK ADD  CONSTRAINT [FK_testing_answer_exercise] FOREIGN KEY([exercise_id])
REFERENCES [dbo].[exercise] ([id])
GO
ALTER TABLE [dbo].[testing_answer] CHECK CONSTRAINT [FK_testing_answer_exercise]
GO
ALTER TABLE [dbo].[testing_answer]  WITH CHECK ADD  CONSTRAINT [FK_testing_answer_testing_result] FOREIGN KEY([testing_result_id])
REFERENCES [dbo].[testing_result] ([id])
GO
ALTER TABLE [dbo].[testing_answer] CHECK CONSTRAINT [FK_testing_answer_testing_result]
GO
ALTER TABLE [dbo].[testing_exercise]  WITH CHECK ADD  CONSTRAINT [FK_testing_exercise_exercise] FOREIGN KEY([exercise_id])
REFERENCES [dbo].[exercise] ([id])
GO
ALTER TABLE [dbo].[testing_exercise] CHECK CONSTRAINT [FK_testing_exercise_exercise]
GO
ALTER TABLE [dbo].[testing_exercise]  WITH CHECK ADD  CONSTRAINT [FK_testing_exercise_testing] FOREIGN KEY([course_id])
REFERENCES [dbo].[testing] ([id])
GO
ALTER TABLE [dbo].[testing_exercise] CHECK CONSTRAINT [FK_testing_exercise_testing]
GO
ALTER TABLE [dbo].[testing_result]  WITH CHECK ADD  CONSTRAINT [FK_testing_result_student] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[testing_result] CHECK CONSTRAINT [FK_testing_result_student]
GO
ALTER TABLE [dbo].[testing_result]  WITH CHECK ADD  CONSTRAINT [FK_testing_result_testing] FOREIGN KEY([testing_id])
REFERENCES [dbo].[testing] ([id])
GO
ALTER TABLE [dbo].[testing_result] CHECK CONSTRAINT [FK_testing_result_testing]
GO
USE [master]
GO
ALTER DATABASE [CodeLearn] SET  READ_WRITE 
GO
