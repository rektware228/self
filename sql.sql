USE [Dekor]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[Id] [int] NOT NULL,
	[Id_Partner] [int] NULL,
	[Id_Emloyee] [int] NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application_Product]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application_Product](
	[Id] [int] NOT NULL,
	[Id_Application] [int] NULL,
	[Id_Product] [int] NULL,
 CONSTRAINT [PK_Application_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Date_of_birth] [date] NULL,
	[Serial_passport] [char](4) NULL,
	[Number_passport] [nchar](6) NULL,
	[Bank_request] [int] NULL,
	[Family_status] [bit] NULL,
	[Id_Health_status] [int] NULL,
	[Id_Role] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Health_status]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Health_status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Health_status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_type]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Coeffcient] [float] NULL,
 CONSTRAINT [PK_Material_type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Id_Type_Material] [int] NOT NULL,
	[Price] [float] NULL,
	[Count] [int] NULL,
	[Min_Count] [int] NULL,
	[Count_In_Package] [int] NULL,
	[Id_Unit] [int] NOT NULL,
	[Id_Warehouse] [int] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials_import]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials_import](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[TypId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Count] [int] NOT NULL,
	[MinCount] [int] NOT NULL,
	[CountPackage] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
 CONSTRAINT [PK_Materials_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Type_Partner] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[INN] [nvarchar](10) NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Phone] [nchar](11) NULL,
	[Email] [nvarchar](50) NULL,
	[Logo] [image] NULL,
	[Rating] [float] NULL,
	[Locating] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partners_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Id_Product_Type] [int] NOT NULL,
	[Article] [int] NULL,
	[Min_Price] [float] NULL,
	[Width] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Materials]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Materials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Product] [int] NOT NULL,
	[Id_Materials] [int] NOT NULL,
	[Count] [float] NULL,
 CONSTRAINT [PK_Product_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Coeffcient] [float] NULL,
 CONSTRAINT [PK_Product_type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Partner]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Partner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type_Partner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Warehouse_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse_Material]    Script Date: 13.06.2025 17:20:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse_Material](
	[Id] [int] NULL,
	[Id_Wahehouse] [int] NULL,
	[Id_Material] [int] NULL,
	[Co] [nchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material_type] ON 

INSERT [dbo].[Material_type] ([Id], [Name], [Coeffcient]) VALUES (1, N'Бумага', 0.007)
INSERT [dbo].[Material_type] ([Id], [Name], [Coeffcient]) VALUES (2, N'Краска', 0.005)
INSERT [dbo].[Material_type] ([Id], [Name], [Coeffcient]) VALUES (3, N'Клей', 0.0015)
INSERT [dbo].[Material_type] ([Id], [Name], [Coeffcient]) VALUES (4, N'Дисперсия', 0.002)
SET IDENTITY_INSERT [dbo].[Material_type] OFF
GO
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (1, N'Бумага-основа с покрытием для флизелиновых обоев', 1, 1700, 2, 1, 100, 1, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (2, N'Бумага-основа для флизелиновых обоев', 1, 1500, 2, 1, 100, 1, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (3, N'Бумага обойная для вспененных виниловых обоев', 1, 1200, 2, 1, 100, 1, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (4, N'Концентрат водоразбавляемой печатной краски', 2, 1500, 2, 1, 200, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (5, N'Перламутровый пигмент', 2, 3100, 2, 1, 10, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (6, N'Сухой клей на основе ПВС', 3, 360, 2, 11, 50, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (7, N'Флизелин', 1, 1600, 2, 1, 140, 1, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (8, N'Стирол-акриловая дисперсия для производства обоев', 4, 14.9, 2, 1, 220, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (9, N'Стирол-акриловая дисперсия для гидрофобных покрытий', 4, 14.9, 2, 1, 220, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (10, N'Акрилат-винилацетатная дисперсия для производства бумаги', 4, 15.5, 22, 1, 220, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (11, N'Цветная пластизоль', 2, 650, 2, 1, 5, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (12, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 3, 170, 2, 1, 220, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (13, N'Водорастворимая краска водная', 2, 500, 2, 1, 25, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (14, N'Диспергатор минеральных пигментов и наполнителей', 4, 16, 2, 1, 120, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (15, N'Ассоциативный акриловый загуститель', 4, 16.5, 2, 1, 120, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (16, N'Водорастворимая краска спецводная ', 2, 700, 2, 1, 25, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (17, N'Металлический пигмент', 2, 4100, 2, 1, 15, 2, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (18, N'Акриловая дисперсия', 4, 14.9, 2, 1, 220, 3, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (19, N'Бумага-основа для обоев марки АФ', 1, 1200, 2, 1, 100, 1, 1)
INSERT [dbo].[Materials] ([Id], [Name], [Id_Type_Material], [Price], [Count], [Min_Count], [Count_In_Package], [Id_Unit], [Id_Warehouse]) VALUES (20, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 1, 3500, 2, 1, 50, 1, 1)
GO
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'1', N'Бумага-основа с покрытием для флизелиновых обоев', 1, 1700, 2500, 1000, 100, 1)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'10', N'Акрилат-винилацетатная дисперсия для производства бумаги', 4, 15.5, 1000, 660, 220, 3)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'11', N'Цветная пластизоль', 2, 650, 200, 100, 5, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'12', N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 3, 170, 800, 660, 220, 3)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'13', N'Водорастворимая краска водная', 2, 500, 400, 300, 25, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'14', N'Диспергатор минеральных пигментов и наполнителей', 4, 16, 400, 360, 120, 3)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'15', N'Ассоциативный акриловый загуститель', 4, 16.5, 400, 360, 120, 3)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'16', N'Водорастворимая краска спецводная ', 2, 700, 350, 300, 25, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'17', N'Металлический пигмент', 2, 4100, 250, 100, 15, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'18', N'Акриловая дисперсия', 4, 14.9, 1000, 880, 220, 3)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'19', N'Бумага-основа для обоев марки АФ', 1, 1200, 2000, 1000, 100, 1)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'2', N'Бумага-основа для флизелиновых обоев', 1, 1500, 3000, 1000, 100, 1)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'20', N'Бумага с подложкой устойчивая к атмосферным воздействиям', 1, 3500, 2000, 800, 50, 1)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'3', N'Бумага обойная для вспененных виниловых обоев', 1, 1200, 1500, 1000, 100, 1)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'4', N'Концентрат водоразбавляемой печатной краски', 2, 1500, 550, 500, 200, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'5', N'Перламутровый пигмент', 2, 3100, 200, 100, 10, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'6', N'Сухой клей на основе ПВС', 3, 360, 700, 500, 50, 2)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'7', N'Флизелин', 1, 1600, 2000, 1000, 140, 1)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'8', N'Стирол-акриловая дисперсия для производства обоев', 4, 14.9, 2000, 880, 220, 3)
INSERT [dbo].[Materials_import] ([Id], [Name], [TypId], [Price], [Count], [MinCount], [CountPackage], [UnitId]) VALUES (N'9', N'Стирол-акриловая дисперсия для гидрофобных покрытий', 4, 14.9, 1200, 880, 220, 3)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (1, N'Обои из природного материала Традиционный принт светло-коричневые', 1, 1549922, 169999950, 90)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (2, N'Фотообои флизелиновые Горы 500x270 см', 2, 2018556, 15880, 0.5)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (3, N'Обои под покраску флизелиновые Рельеф', 3, 3028272, 11080, 0.75)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (4, N'Стеклообои Рогожка белые', 4, 4029272, 5898, 1)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (5, N'Обои флизелиновые Эвелин светло-серые', 1, 1028248, 15200, 1.06)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (6, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 2, 2118827, 12500.96, 0.3)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (7, N'Обои под покраску флизелиновые цвет белый', 3, 3130981, 4320.56, 1.06)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (8, N'Стеклохолст', 4, 4029784, 2998.99, 1)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (9, N'Флизелиновые обои Принт Вензель серые', 1, 1658953, 16200.96, 0.68)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (10, N'Фотообои флизелиновые Узор 300x270 см', 2, 2026662, 8780.69, 0.3)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (11, N'Обои под покраску флизелиновые Кирпичная стена', 3, 3159043, 15750, 1.06)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (12, N'Стеклообои Средняя елка белые', 4, 4588376, 5500, 1)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (13, N'Обои бумажные Полосы цвет бежевый', 1, 1758375, 13500.96, 0.68)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (14, N'Фотообои Тропики 290x260 см', 2, 2759324, 6980, 0.29)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (15, N'Обои под покраску Рисунок Штукатурка белые', 3, 3118827, 5890, 1.06)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (16, N'Стеклообои Геометрические фигуры белые ', 4, 4559898, 5369, 1)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (17, N'Обои флизелиновые Лилия бежевые', 1, 1259474, 9750.79, 1.06)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (18, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 2, 2115947, 16850, 0.3)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (19, N'Обои под покраску флизелиновые однотонные цвет белый ', 3, 3033136, 3390, 1.06)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (20, N'Стеклохолст малярный Паутинка', 4, 4028048, 1750, 1)
INSERT [dbo].[Product] ([Id], [Name], [Id_Product_Type], [Article], [Min_Price], [Width]) VALUES (21, N'313333333333v', 1, 121212112, 1211, 121)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Materials] ON 

INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (1, 5, 10, 1.95)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (2, 12, 10, 0.21)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (3, 14, 18, 1.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (4, 18, 18, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (5, 10, 18, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (6, 1, 15, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (7, 16, 15, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (8, 11, 3, 2.55)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (9, 16, 3, 3.6)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (10, 12, 3, 2.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (11, 1, 20, 2.9)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (12, 11, 20, 2.55)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (13, 6, 20, 1.8)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (14, 18, 20, 2.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (15, 2, 20, 3.4)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (16, 13, 19, 3.6)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (17, 15, 19, 3.7)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (18, 14, 19, 1.6)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (19, 10, 19, 3.56)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (20, 5, 2, 4.6)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (21, 3, 1, 2.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (22, 9, 1, 3.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (23, 5, 16, 3.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (24, 9, 16, 5.25)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (25, 18, 16, 5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (26, 10, 16, 3.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (27, 13, 13, 4.75)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (28, 1, 13, 3)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (29, 15, 14, 1.3)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (30, 19, 14, 1.3)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (31, 7, 14, 1.8)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (32, 4, 14, 0.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (33, 8, 14, 0.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (34, 9, 14, 0.25)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (35, 1, 12, 0.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (36, 19, 12, 0.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (37, 5, 12, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (38, 16, 12, 0.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (39, 20, 12, 0.25)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (40, 14, 12, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (41, 6, 12, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (42, 18, 12, 0.7)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (43, 2, 12, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (44, 10, 12, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (45, 17, 4, 2.55)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (46, 14, 4, 2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (47, 6, 4, 2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (48, 2, 4, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (49, 5, 17, 0.45)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (50, 4, 17, 0.3)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (51, 9, 17, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (52, 13, 5, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (53, 1, 5, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (54, 12, 5, 0.35)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (55, 18, 5, 1.25)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (56, 15, 9, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (57, 11, 9, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (58, 13, 8, 0.15)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (59, 19, 8, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (60, 3, 8, 1.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (61, 7, 8, 1.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (62, 17, 8, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (63, 6, 8, 1.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (64, 2, 8, 0.33)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (65, 13, 6, 0.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (66, 11, 6, 2.9)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (67, 7, 6, 1.4)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (68, 17, 6, 1.7)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (69, 8, 6, 0.3)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (70, 9, 6, 1)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (71, 19, 7, 1.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (72, 3, 7, 2.5)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (73, 7, 7, 1.75)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (74, 17, 7, 1.85)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (75, 4, 7, 2.2)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (76, 8, 7, 1.3)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (77, 20, 7, 0.8)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (78, 3, 11, 1.65)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (79, 14, 11, 1.25)
INSERT [dbo].[Product_Materials] ([Id], [Id_Product], [Id_Materials], [Count]) VALUES (80, 6, 11, 1)
SET IDENTITY_INSERT [dbo].[Product_Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_type] ON 

INSERT [dbo].[Product_type] ([Id], [Name], [Coeffcient]) VALUES (1, N'Декоративные обои', 5.5)
INSERT [dbo].[Product_type] ([Id], [Name], [Coeffcient]) VALUES (2, N'Фотообои', 7.54)
INSERT [dbo].[Product_type] ([Id], [Name], [Coeffcient]) VALUES (3, N'Обои под покраску', 3.25)
INSERT [dbo].[Product_type] ([Id], [Name], [Coeffcient]) VALUES (4, N'Стеклообои', 2.5)
SET IDENTITY_INSERT [dbo].[Product_type] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([Id], [Name]) VALUES (1, N'рул')
INSERT [dbo].[Unit] ([Id], [Name]) VALUES (2, N'кг')
INSERT [dbo].[Unit] ([Id], [Name]) VALUES (3, N'л')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouse] ON 

INSERT [dbo].[Warehouse] ([Id], [Name]) VALUES (1, N'Основной склад')
SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO
ALTER TABLE [dbo].[Materials] ADD  CONSTRAINT [DF_Materials_Id_Warehouse]  DEFAULT ((1)) FOR [Id_Warehouse]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Application_Product] FOREIGN KEY([Id])
REFERENCES [dbo].[Application_Product] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Application_Product]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Employee] FOREIGN KEY([Id_Emloyee])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Employee]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Partners] FOREIGN KEY([Id_Partner])
REFERENCES [dbo].[Partners] ([Id])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Partners]
GO
ALTER TABLE [dbo].[Application_Product]  WITH CHECK ADD  CONSTRAINT [FK_Application_Product_Product] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Application_Product] CHECK CONSTRAINT [FK_Application_Product_Product]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Health_status] FOREIGN KEY([Id_Health_status])
REFERENCES [dbo].[Health_status] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Health_status]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Material_type] FOREIGN KEY([Id_Type_Material])
REFERENCES [dbo].[Material_type] ([Id])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Material_type]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Unit] FOREIGN KEY([Id_Unit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Unit]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Warehouse] FOREIGN KEY([Id_Warehouse])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Warehouse]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Type_Partner] FOREIGN KEY([Id_Type_Partner])
REFERENCES [dbo].[Type_Partner] ([id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Type_Partner]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product_type] FOREIGN KEY([Id_Product_Type])
REFERENCES [dbo].[Product_type] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product_type]
GO
ALTER TABLE [dbo].[Product_Materials]  WITH CHECK ADD  CONSTRAINT [FK_Product_Materials_Materials] FOREIGN KEY([Id_Materials])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[Product_Materials] CHECK CONSTRAINT [FK_Product_Materials_Materials]
GO
ALTER TABLE [dbo].[Product_Materials]  WITH CHECK ADD  CONSTRAINT [FK_Product_Materials_Product] FOREIGN KEY([Id_Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_Materials] CHECK CONSTRAINT [FK_Product_Materials_Product]
GO
