USE [VirtualPlaceDB]
GO
/****** Object:  Schema [Administration]    Script Date: 07-01-2018 11:01:24 PM ******/
CREATE SCHEMA [Administration]
GO
/****** Object:  Schema [Blog]    Script Date: 07-01-2018 11:01:24 PM ******/
CREATE SCHEMA [Blog]
GO
/****** Object:  Schema [User]    Script Date: 07-01-2018 11:01:24 PM ******/
CREATE SCHEMA [User]
GO
/****** Object:  Table [Administration].[EducationType]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[EducationType](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_EducationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[UserRoles]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[UserRoles](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[SiteID] [int] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Administration].[UserType]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Administration].[UserType](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Details] [nvarchar](max) NULL,
	[Matadata] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Blog].[BlogAttachments]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Blog].[BlogAttachments](
	[ID] [bigint] NOT NULL,
	[BlogID] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[Size] [nvarchar](250) NULL,
	[Name] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[EncriptionKey] [nvarchar](50) NULL,
 CONSTRAINT [PK_BlogAttachments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Blog].[BlogMapping]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Blog].[BlogMapping](
	[BlogID] [uniqueidentifier] NULL,
	[AlternateBlogID] [uniqueidentifier] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Blog].[Blogs]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Blog].[Blogs](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[IP] [nvarchar](50) NULL,
	[CreatedBy] [bigint] NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Error] [bit] NULL,
	[Message] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Type] [nvarchar](255) NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [User].[UserGroups]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UserGroups](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [User].[UserLogin]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UserLogin](
	[UserID] [uniqueidentifier] NULL,
	[LoginDate] [datetime] NOT NULL,
	[LoginTime] [time](7) NULL,
	[LogoutDate] [datetime] NULL,
	[LogOutTime] [time](7) NULL,
	[NoOfAttempt] [int] NULL,
	[IP] [nvarchar](250) NULL,
	[IsLogin] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [User].[UsersDetails]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UsersDetails](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UID] [nvarchar](200) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[EncriptionKey] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Age] [nvarchar](255) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[Country] [nvarchar](20) NULL,
	[ContractNumber] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[IP] [nvarchar](250) NULL,
	[MacAddress] [nvarchar](250) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_UsersDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [User].[UsersToGroups]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UsersToGroups](
	[GroupID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[AssocateUserID] [uniqueidentifier] NOT NULL,
	[ApprovedBy] [uniqueidentifier] NULL,
	[ApprovedDate] [datetime] NULL,
 CONSTRAINT [PK_UsersToGroups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[UserID] ASC,
	[AssocateUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [User].[UsersToRoles]    Script Date: 07-01-2018 11:01:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UsersToRoles](
	[UserID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UsersToRoles] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [Administration].[EducationType] ADD  CONSTRAINT [DF_EducationType_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [Administration].[EducationType] ADD  CONSTRAINT [DF_EducationType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Administration].[UserRoles] ADD  CONSTRAINT [DF_UserRole_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Administration].[UserType] ADD  CONSTRAINT [DF_UserType_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [Administration].[UserType] ADD  CONSTRAINT [DF_UserType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Blog].[BlogAttachments] ADD  CONSTRAINT [DF_BlogAttachments_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [DF_Logs_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [DF_Logs_Error]  DEFAULT ((0)) FOR [Error]
GO
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [DF_Logs_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [User].[UserGroups] ADD  CONSTRAINT [DF_UserGroups_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [User].[UserGroups] ADD  CONSTRAINT [DF_UserGroups_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [User].[UserGroups] ADD  CONSTRAINT [DF_UserGroups_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [User].[UserLogin] ADD  CONSTRAINT [DF_Users_LoginDate]  DEFAULT (getdate()) FOR [LoginDate]
GO
ALTER TABLE [User].[UserLogin] ADD  CONSTRAINT [DF_Users_IsLogin]  DEFAULT ((0)) FOR [IsLogin]
GO
ALTER TABLE [User].[UsersDetails] ADD  CONSTRAINT [DF_UsersDetails_Id]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [User].[UsersDetails] ADD  CONSTRAINT [DF_UsersDetails_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [User].[UsersToGroups] ADD  CONSTRAINT [DF_UsersToGroups_ApprovedDate]  DEFAULT (getdate()) FOR [ApprovedDate]
GO
ALTER TABLE [Blog].[BlogAttachments]  WITH CHECK ADD  CONSTRAINT [FK_BlogAttachments_Blogs] FOREIGN KEY([BlogID])
REFERENCES [Blog].[Blogs] ([ID])
GO
ALTER TABLE [Blog].[BlogAttachments] CHECK CONSTRAINT [FK_BlogAttachments_Blogs]
GO
ALTER TABLE [Blog].[BlogMapping]  WITH CHECK ADD  CONSTRAINT [FK_BlogMapping_Blogs] FOREIGN KEY([BlogID])
REFERENCES [Blog].[Blogs] ([ID])
GO
ALTER TABLE [Blog].[BlogMapping] CHECK CONSTRAINT [FK_BlogMapping_Blogs]
GO
ALTER TABLE [User].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_Users_UsersDetails] FOREIGN KEY([UserID])
REFERENCES [User].[UsersDetails] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [User].[UserLogin] CHECK CONSTRAINT [FK_Users_UsersDetails]
GO
ALTER TABLE [User].[UsersToGroups]  WITH CHECK ADD  CONSTRAINT [FK_UsersToAssocatedGroups_UsersDetails] FOREIGN KEY([AssocateUserID])
REFERENCES [User].[UsersDetails] ([ID])
GO
ALTER TABLE [User].[UsersToGroups] CHECK CONSTRAINT [FK_UsersToAssocatedGroups_UsersDetails]
GO
ALTER TABLE [User].[UsersToGroups]  WITH CHECK ADD  CONSTRAINT [FK_UsersToGroups_UserGroups] FOREIGN KEY([GroupID])
REFERENCES [User].[UserGroups] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [User].[UsersToGroups] CHECK CONSTRAINT [FK_UsersToGroups_UserGroups]
GO
ALTER TABLE [User].[UsersToGroups]  WITH CHECK ADD  CONSTRAINT [FK_UsersToGroups_UsersDetails] FOREIGN KEY([UserID])
REFERENCES [User].[UsersDetails] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [User].[UsersToGroups] CHECK CONSTRAINT [FK_UsersToGroups_UsersDetails]
GO
ALTER TABLE [User].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_UserRoles] FOREIGN KEY([RoleID])
REFERENCES [Administration].[UserRoles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [User].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_UserRoles]
GO
ALTER TABLE [User].[UsersToRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersToRoles_UsersDetails] FOREIGN KEY([UserID])
REFERENCES [User].[UsersDetails] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [User].[UsersToRoles] CHECK CONSTRAINT [FK_UsersToRoles_UsersDetails]
GO
