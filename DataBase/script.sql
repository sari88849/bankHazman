create database LoveToLerning
USE [LoveToLerning]
GO
/****** Object:  Table [dbo].[DiplomasToLimitToTeacher]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiplomasToLimitToTeacher](
	[CodeDiplomaToLimitToTeacher] [int] IDENTITY(1,1) NOT NULL,
	[CodeLimitToTeacher] [int] NOT NULL,
	[Diploma] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Diplomas__1B8C7C8D2D11EF12] PRIMARY KEY CLUSTERED 
(
	[CodeDiplomaToLimitToTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[CodeLesson] [int] IDENTITY(1,1) NOT NULL,
	[CodeLimit] [int] NULL,
	[CodeTeacher] [int] NOT NULL,
	[CodeStudent] [int] NULL,
	[Costing] [money] NULL,
	[PlayedForTime] [int] NULL,
 CONSTRAINT [PK__Lessons__AA0768381B8998C4] PRIMARY KEY CLUSTERED 
(
	[CodeLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Limit]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Limit](
	[CodeLimit] [int] IDENTITY(1,1) NOT NULL,
	[NameLimit] [nvarchar](50) NULL,
	[CodeParentLimit] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeLimit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LimitToTeacher]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LimitToTeacher](
	[CodeLimitToTeacher] [int] IDENTITY(1,1) NOT NULL,
	[CodeLimit] [int] NOT NULL,
	[CodeTeacher] [int] NOT NULL,
	[TryYear] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeLimitToTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recommendation]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recommendation](
	[CodeRecommendation] [int] IDENTITY(1,1) NOT NULL,
	[CodeLimitToTeacher] [int] NOT NULL,
	[RecommendationText] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeRecommendation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Request]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[CodeRequest] [int] IDENTITY(1,1) NOT NULL,
	[CodeStudent] [int] NOT NULL,
	[CodeLimit] [int] NOT NULL,
	[MaxCosting] [money] NULL,
	[PlayedForTime] [int] NULL,
 CONSTRAINT [PK__Request__E3E8370506FDFED6] PRIMARY KEY CLUSTERED 
(
	[CodeRequest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sector]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[IdSector] [int] IDENTITY(1,1) NOT NULL,
	[NameSector] [nchar](20) NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[IdSector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Times]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Times](
	[IdTime] [int] IDENTITY(1,1) NOT NULL,
	[NameTime] [nchar](20) NULL,
 CONSTRAINT [PK_Times] PRIMARY KEY CLUSTERED 
(
	[IdTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeToUser]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeToUser](
	[CodeTimeToUser] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdTime] [int] NULL,
 CONSTRAINT [PK_TimeToUser] PRIMARY KEY CLUSTERED 
(
	[CodeTimeToUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TryToLimitToTeacher]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TryToLimitToTeacher](
	[CodeTryToLimitToTeacher] [int] IDENTITY(1,1) NOT NULL,
	[CodeLimitToTeacher] [int] NOT NULL,
	[NamePlaceTeach] [nvarchar](50) NULL,
	[MailRecommend] [nvarchar](50) NOT NULL,
	[PhoneRecommend] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__TryToLim__4BAB1C5888EC04F2] PRIMARY KEY CLUSTERED 
(
	[CodeTryToLimitToTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Useres]    Script Date: 15/07/2020 16:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Useres](
	[CodeUser] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[CodeStreet] [int] NOT NULL,
	[CodeSector] [int] NULL,
	[Min] [int] NULL,
	[AgeMin] [int] NULL,
	[AgeMax] [int] NULL,
	[AddressX] [int] NULL,
	[AddressY] [int] NULL,
	[MinToLearn] [int] NULL,
 CONSTRAINT [PK__Useres__B2EF085BB1A66B24] PRIMARY KEY CLUSTERED 
(
	[CodeUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DiplomasToLimitToTeacher] ON 

INSERT [dbo].[DiplomasToLimitToTeacher] ([CodeDiplomaToLimitToTeacher], [CodeLimitToTeacher], [Diploma]) VALUES (1, 1, N'תעודה מקצועית')
INSERT [dbo].[DiplomasToLimitToTeacher] ([CodeDiplomaToLimitToTeacher], [CodeLimitToTeacher], [Diploma]) VALUES (2, 2, N'חובבני')
INSERT [dbo].[DiplomasToLimitToTeacher] ([CodeDiplomaToLimitToTeacher], [CodeLimitToTeacher], [Diploma]) VALUES (4, 3, N'תעודה מקצועית')
SET IDENTITY_INSERT [dbo].[DiplomasToLimitToTeacher] OFF
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([CodeLesson], [CodeLimit], [CodeTeacher], [CodeStudent], [Costing], [PlayedForTime]) VALUES (1, 3, 4, 10, 180.0000, 45)
INSERT [dbo].[Lessons] ([CodeLesson], [CodeLimit], [CodeTeacher], [CodeStudent], [Costing], [PlayedForTime]) VALUES (2, 7, 8, 9, 70.0000, 45)
INSERT [dbo].[Lessons] ([CodeLesson], [CodeLimit], [CodeTeacher], [CodeStudent], [Costing], [PlayedForTime]) VALUES (3, 11, 14, NULL, 30.0000, 45)
INSERT [dbo].[Lessons] ([CodeLesson], [CodeLimit], [CodeTeacher], [CodeStudent], [Costing], [PlayedForTime]) VALUES (4, 5, 12, 14, 150.0000, 45)
INSERT [dbo].[Lessons] ([CodeLesson], [CodeLimit], [CodeTeacher], [CodeStudent], [Costing], [PlayedForTime]) VALUES (5, 11, 11, 10, 40.0000, 50)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
SET IDENTITY_INSERT [dbo].[Limit] ON 

INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (1, N'כלי נגינה', 0)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (2, N'כלי נשיפה', 1)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (3, N'חליל צד', 2)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (4, N'חליל פאן', 2)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (5, N'סקספון', 2)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (6, N'שפות תכנות', 0)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (7, N'C#', 6)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (8, N'java', 6)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (9, N'לימודי שפות', 0)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (10, N'אנגלית', 9)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (11, N'צרפתית', 9)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (13, N'ערבית', 9)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (14, N'גרמנית', 9)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (15, N'אומניות הבמה', 0)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (16, N'פיתוח קול', 15)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (17, N'אימון מקהלות', 15)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (18, N'משחק', 15)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (19, N'ציור', 0)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (20, N'ציור בשמן', 19)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (21, N'ציור בפחם', 19)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (22, N'ציור בחול', 19)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (23, N'ציור דמויות', 19)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (24, N'איור דיגיטלי', 19)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (25, N'ציור במים', 19)
INSERT [dbo].[Limit] ([CodeLimit], [NameLimit], [CodeParentLimit]) VALUES (26, N'ציור אקדמאי', 19)
SET IDENTITY_INSERT [dbo].[Limit] OFF
SET IDENTITY_INSERT [dbo].[LimitToTeacher] ON 

INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (1, 3, 4, 3)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (2, 4, 4, 5)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (3, 7, 10, 2)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (4, 8, 9, 4)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (5, 11, 8, 5)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (6, 7, 8, 2)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (7, 11, 14, 1)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (8, 5, 12, 2)
INSERT [dbo].[LimitToTeacher] ([CodeLimitToTeacher], [CodeLimit], [CodeTeacher], [TryYear]) VALUES (9, 11, 11, 1)
SET IDENTITY_INSERT [dbo].[LimitToTeacher] OFF
SET IDENTITY_INSERT [dbo].[Recommendation] ON 

INSERT [dbo].[Recommendation] ([CodeRecommendation], [CodeLimitToTeacher], [RecommendationText]) VALUES (1, 1, N'החומר מוסבר בצורה מובנת')
INSERT [dbo].[Recommendation] ([CodeRecommendation], [CodeLimitToTeacher], [RecommendationText]) VALUES (2, 3, N'המורה מדברת לאט')
INSERT [dbo].[Recommendation] ([CodeRecommendation], [CodeLimitToTeacher], [RecommendationText]) VALUES (3, 2, N'היא ג''ינג''ית')
INSERT [dbo].[Recommendation] ([CodeRecommendation], [CodeLimitToTeacher], [RecommendationText]) VALUES (4, 4, N'צורת ההסברה מאוד מסודרת')
INSERT [dbo].[Recommendation] ([CodeRecommendation], [CodeLimitToTeacher], [RecommendationText]) VALUES (5, 5, N'המורה חוזרת פעמים רבות על החומר, כדי שהחומר יהיה מובן לגמרי')
SET IDENTITY_INSERT [dbo].[Recommendation] OFF
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([CodeRequest], [CodeStudent], [CodeLimit], [MaxCosting], [PlayedForTime]) VALUES (1, 4, 26, 300.0000, 90)
INSERT [dbo].[Request] ([CodeRequest], [CodeStudent], [CodeLimit], [MaxCosting], [PlayedForTime]) VALUES (2, 8, 13, 120.0000, 45)
INSERT [dbo].[Request] ([CodeRequest], [CodeStudent], [CodeLimit], [MaxCosting], [PlayedForTime]) VALUES (3, 10, 14, 100.0000, 45)
INSERT [dbo].[Request] ([CodeRequest], [CodeStudent], [CodeLimit], [MaxCosting], [PlayedForTime]) VALUES (4, 11, 22, 300.0000, 90)
INSERT [dbo].[Request] ([CodeRequest], [CodeStudent], [CodeLimit], [MaxCosting], [PlayedForTime]) VALUES (7, 10, 26, 250.0000, 90)
SET IDENTITY_INSERT [dbo].[Request] OFF
SET IDENTITY_INSERT [dbo].[Sector] ON 

INSERT [dbo].[Sector] ([IdSector], [NameSector]) VALUES (1, N'חרדי                ')
INSERT [dbo].[Sector] ([IdSector], [NameSector]) VALUES (2, N'דתי                 ')
INSERT [dbo].[Sector] ([IdSector], [NameSector]) VALUES (3, N'דתי לאומי           ')
INSERT [dbo].[Sector] ([IdSector], [NameSector]) VALUES (4, N'חילוני              ')
SET IDENTITY_INSERT [dbo].[Sector] OFF
SET IDENTITY_INSERT [dbo].[Times] ON 

INSERT [dbo].[Times] ([IdTime], [NameTime]) VALUES (1, N'בוקר                ')
INSERT [dbo].[Times] ([IdTime], [NameTime]) VALUES (2, N'צהריים              ')
INSERT [dbo].[Times] ([IdTime], [NameTime]) VALUES (3, N'ערב                 ')
INSERT [dbo].[Times] ([IdTime], [NameTime]) VALUES (4, N'כל היום             ')
SET IDENTITY_INSERT [dbo].[Times] OFF
SET IDENTITY_INSERT [dbo].[TimeToUser] ON 

INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (1, 4, 1)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (2, 4, 2)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (3, 8, 4)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (4, 9, 3)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (5, 10, 1)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (6, 10, 2)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (7, 11, 4)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (8, 12, 3)
INSERT [dbo].[TimeToUser] ([CodeTimeToUser], [IdUser], [IdTime]) VALUES (9, 14, 4)
SET IDENTITY_INSERT [dbo].[TimeToUser] OFF
SET IDENTITY_INSERT [dbo].[TryToLimitToTeacher] ON 

INSERT [dbo].[TryToLimitToTeacher] ([CodeTryToLimitToTeacher], [CodeLimitToTeacher], [NamePlaceTeach], [MailRecommend], [PhoneRecommend]) VALUES (1, 1, N'בית יעקב גבעת שאול', N'sary88849@gmail.com', N'0556788849')
INSERT [dbo].[TryToLimitToTeacher] ([CodeTryToLimitToTeacher], [CodeLimitToTeacher], [NamePlaceTeach], [MailRecommend], [PhoneRecommend]) VALUES (2, 1, N'בית יעקב הר נוף', N'manager@gmail .com', N'0548466076')
INSERT [dbo].[TryToLimitToTeacher] ([CodeTryToLimitToTeacher], [CodeLimitToTeacher], [NamePlaceTeach], [MailRecommend], [PhoneRecommend]) VALUES (3, 2, N'תולדות ניסים', N'anna@gmail.com', N'0583210468')
INSERT [dbo].[TryToLimitToTeacher] ([CodeTryToLimitToTeacher], [CodeLimitToTeacher], [NamePlaceTeach], [MailRecommend], [PhoneRecommend]) VALUES (4, 4, N'זיכרון מאיר', N'michal@gmail.com', N'0556771123')
INSERT [dbo].[TryToLimitToTeacher] ([CodeTryToLimitToTeacher], [CodeLimitToTeacher], [NamePlaceTeach], [MailRecommend], [PhoneRecommend]) VALUES (5, 4, N'דרכי רחל', N'mazz@gmail.com', N'0548408467')
SET IDENTITY_INSERT [dbo].[TryToLimitToTeacher] OFF
SET IDENTITY_INSERT [dbo].[Useres] ON 

INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (4, N'דסי', N'יהודה', N'7074', CAST(N'1999-12-28' AS Date), N'dassy7074@gmail.com', N'0548497074', 1, 1, 2, 12, 18, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (8, N'אביגיל', N'שקדי', N'211864848', CAST(N'2000-05-24' AS Date), N'msh55@gmail.com', N'0548455526', 2, 2, 2, 0, 100, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (9, N'מירי', N'מורה', N'206406746', CAST(N'2000-01-09' AS Date), N'm0548408469@gmail.com', N'0548408469', 6, 3, 2, 10, 30, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (10, N'הדס', N'נחמיאס', N'2067080343', CAST(N'2000-03-11' AS Date), N'hadasna@gmail.com', N'0533188478', 4, 1, 2, 5, 11, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (11, N'ענאל', N'אמסלם', N'315294309', CAST(N'2000-03-15' AS Date), N'aa583210468', N'0583210468', 5, 2, 2, 8, 19, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (12, N'שרי', N'פינקלשטיין', N'211745856', CAST(N'2000-09-23' AS Date), N'sarif88849@gmail.com', N'0583288849', 18, 1, 2, 10, 20, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (14, N'רבקי', N'גרטנר', N'318335957', CAST(N'1997-07-19' AS Date), N'rg0987@gmail.com', N'0543298786', 19, 4, 2, 3, 30, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (20, N'אסתי', N'דיסקין', N'211503016', CAST(N'1999-10-09' AS Date), N'esty3097@gmail.com', N'0556783097', 20, 1, 2, 2, 10, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (21, N'יוכבד', N'ארנד', N'214411177', CAST(N'2002-03-12' AS Date), N'yoch374@gmail.com', N'0556744374', 18, 1, 2, 5, 50, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (22, N'רחלי', N'אלבק', N'342524', CAST(N'1999-09-13' AS Date), N'rachel66272@gmail.com', N'0548466272', 1, 2, 2, 1, 100, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (23, N'שבתי', N'וולף', N'5465', CAST(N'1988-10-23' AS Date), N's0583253181@gmail.com', N'0583253181', 1, 1, 1, 13, 33, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (24, N'יהודה', N'פינקל', N'16787', CAST(N'1978-01-08' AS Date), N'fink.yehuda@gmail.com', N'0527678567', 18, 1, 1, 20, 40, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (25, N'חיליק', N'רבינוביץ', N'12345', CAST(N'2000-12-13' AS Date), N'neomy3800@gmail.com', N'0527603800', 1, 4, 1, 10, 50, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (26, N'דיני', N'הרציג', N'55454', CAST(N'1989-05-31' AS Date), N'dina65878@gmail.com', N'0527665878', 20, 3, 2, 4, 24, NULL, NULL, NULL)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (27, N'יעל', N'בר', N'1212', CAST(N'1997-03-10' AS Date), N'd9090@gmail.com', N'0527113215', 0, NULL, 2, 20, 40, NULL, NULL, 3)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (28, N'טוהר ', N'יהודה', N'121', CAST(N'2000-03-12' AS Date), N'tohary841@gmail.com', N'0548540841', 0, NULL, 2, 12, 26, NULL, NULL, 2)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (29, N'טוהרית', N'מאלפת', N'1234', CAST(N'2000-09-13' AS Date), N'tohary841', N'09876543', 0, 1, 2, 12, 23, NULL, NULL, 2)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (30, N'טוההההההר', N'יהווווווווווודה', N'12345', CAST(N'2000-03-03' AS Date), N'tohary841@gmail.com', N'123456789', 0, 1, 2, 12, 20, NULL, NULL, 2)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (31, N'רבקה', N'בן שלמה', N'111', CAST(N'2000-02-18' AS Date), N'r0548469332@gmail.com', N'0548469332', 0, NULL, 2, 20, 40, NULL, NULL, 3)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (32, N'אלישבע', N'פדידה- ויזמן', N'1317', CAST(N'1999-12-17' AS Date), N'elisheva1317@gmail.com', N'0527119864', 0, NULL, 2, 12, 25, NULL, NULL, 2)
INSERT [dbo].[Useres] ([CodeUser], [FName], [LName], [Password], [DateOfBirth], [Mail], [Phone], [CodeStreet], [CodeSector], [Min], [AgeMin], [AgeMax], [AddressX], [AddressY], [MinToLearn]) VALUES (33, N'אלישבע', N'פדידה- ויזמן', N'1317', CAST(N'1999-12-17' AS Date), N'elisheva1317@gmail.com', N'0527119864', 0, NULL, 2, 12, 25, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Useres] OFF
/****** Object:  Index [FK_LimitToTeacher]    Script Date: 15/07/2020 16:21:10 ******/
ALTER TABLE [dbo].[LimitToTeacher] ADD  CONSTRAINT [FK_LimitToTeacher] UNIQUE NONCLUSTERED 
(
	[CodeLimit] ASC,
	[CodeTeacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiplomasToLimitToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_DiplomasToLimitToTeacher_LimitToTeacher] FOREIGN KEY([CodeLimitToTeacher])
REFERENCES [dbo].[LimitToTeacher] ([CodeLimitToTeacher])
GO
ALTER TABLE [dbo].[DiplomasToLimitToTeacher] CHECK CONSTRAINT [FK_DiplomasToLimitToTeacher_LimitToTeacher]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Limit] FOREIGN KEY([CodeLimit])
REFERENCES [dbo].[Limit] ([CodeLimit])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Limit]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Useres] FOREIGN KEY([CodeTeacher])
REFERENCES [dbo].[Useres] ([CodeUser])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Useres]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Useres1] FOREIGN KEY([CodeStudent])
REFERENCES [dbo].[Useres] ([CodeUser])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Useres1]
GO
ALTER TABLE [dbo].[LimitToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_LimitToTeacher_Limit] FOREIGN KEY([CodeLimit])
REFERENCES [dbo].[Limit] ([CodeLimit])
GO
ALTER TABLE [dbo].[LimitToTeacher] CHECK CONSTRAINT [FK_LimitToTeacher_Limit]
GO
ALTER TABLE [dbo].[LimitToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_LimitToTeacher_Useres] FOREIGN KEY([CodeTeacher])
REFERENCES [dbo].[Useres] ([CodeUser])
GO
ALTER TABLE [dbo].[LimitToTeacher] CHECK CONSTRAINT [FK_LimitToTeacher_Useres]
GO
ALTER TABLE [dbo].[Recommendation]  WITH CHECK ADD  CONSTRAINT [FK_Recommendation_LimitToTeacher] FOREIGN KEY([CodeLimitToTeacher])
REFERENCES [dbo].[LimitToTeacher] ([CodeLimitToTeacher])
GO
ALTER TABLE [dbo].[Recommendation] CHECK CONSTRAINT [FK_Recommendation_LimitToTeacher]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Limit] FOREIGN KEY([CodeLimit])
REFERENCES [dbo].[Limit] ([CodeLimit])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Limit]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Useres] FOREIGN KEY([CodeStudent])
REFERENCES [dbo].[Useres] ([CodeUser])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Useres]
GO
ALTER TABLE [dbo].[TimeToUser]  WITH CHECK ADD  CONSTRAINT [FK_TimeToUser_Times] FOREIGN KEY([IdTime])
REFERENCES [dbo].[Times] ([IdTime])
GO
ALTER TABLE [dbo].[TimeToUser] CHECK CONSTRAINT [FK_TimeToUser_Times]
GO
ALTER TABLE [dbo].[TimeToUser]  WITH CHECK ADD  CONSTRAINT [FK_TimeToUser_Useres] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Useres] ([CodeUser])
GO
ALTER TABLE [dbo].[TimeToUser] CHECK CONSTRAINT [FK_TimeToUser_Useres]
GO
ALTER TABLE [dbo].[TryToLimitToTeacher]  WITH CHECK ADD  CONSTRAINT [FK_TryToLimitToTeacher_LimitToTeacher] FOREIGN KEY([CodeLimitToTeacher])
REFERENCES [dbo].[LimitToTeacher] ([CodeLimitToTeacher])
GO
ALTER TABLE [dbo].[TryToLimitToTeacher] CHECK CONSTRAINT [FK_TryToLimitToTeacher_LimitToTeacher]
GO
ALTER TABLE [dbo].[Useres]  WITH CHECK ADD  CONSTRAINT [FK_Useres_Sector] FOREIGN KEY([CodeSector])
REFERENCES [dbo].[Sector] ([IdSector])
GO
ALTER TABLE [dbo].[Useres] CHECK CONSTRAINT [FK_Useres_Sector]
GO
