USE [WHDB]
GO
/****** Object:  Table [dbo].[IssuesNoteDoc]    Script Date: 2020-08-07 22:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuesNoteDoc](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[DocDate] [date] NULL,
	[SendTo] [nvarchar](50) NULL,
	[Time] [datetime] NULL,
	[StatusProcess] [bit] NULL,
 CONSTRAINT [PK_IssuesNoteDoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssuesNoteLine]    Script Date: 2020-08-07 22:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuesNoteLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocID] [bigint] NOT NULL,
	[Seq] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_IssuesNoteLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 2020-08-07 22:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](50) NULL,
	[ItemName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveNoteDoc]    Script Date: 2020-08-07 22:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveNoteDoc](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocNo] [nvarchar](50) NULL,
	[DocDate] [date] NULL,
	[ReceiveFrom] [nvarchar](50) NULL,
	[Time] [datetime] NULL,
	[StatusProcess] [bit] NULL,
 CONSTRAINT [PK_ReceiveNoteDoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveNoteLine]    Script Date: 2020-08-07 22:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveNoteLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocID] [bigint] NOT NULL,
	[Seq] [int] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_ReceiveNoteLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 2020-08-07 22:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Warehouse] [nvarchar](50) NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName]) VALUES (1, NULL, N'Item1')
INSERT [dbo].[Item] ([ID], [ItemCode], [ItemName]) VALUES (2, NULL, N'Item2')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
