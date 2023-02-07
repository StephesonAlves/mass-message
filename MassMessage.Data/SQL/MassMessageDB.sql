USE [AubilousTouchDB]
GO
ALTER TABLE [dbo].[MessagesGroupPerEmployee] DROP CONSTRAINT [FK_MessagesGroupPerEmployee_MessagesGroup1]
GO
ALTER TABLE [dbo].[MessagesGroupPerEmployee] DROP CONSTRAINT [FK_MessagesGroupPerEmployee_Employee]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] DROP CONSTRAINT [FK_MessagesChannelPerEmployee_MessagesChannel]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] DROP CONSTRAINT [FK_MessagesChannelPerEmployee_Employee]
GO
ALTER TABLE [dbo].[MessageCenter] DROP CONSTRAINT [FK_MessageCenter_MessagesChannelPerEmployee]
GO
ALTER TABLE [dbo].[MessageCenter] DROP CONSTRAINT [FK_MessageCenter_Message]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] DROP CONSTRAINT [DF_MessagesChannelPerEmployee_isActive]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] DROP CONSTRAINT [DF_MessagesChannelPerEmployee_doNotDisturbEndHour]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] DROP CONSTRAINT [doNotDisturbStartHour]
GO
ALTER TABLE [dbo].[MessageCenter] DROP CONSTRAINT [DF_MessageCenter_status]
GO
ALTER TABLE [dbo].[MessageCenter] DROP CONSTRAINT [DF_MessageCenter_received]
GO
ALTER TABLE [dbo].[MessageCenter] DROP CONSTRAINT [DF_MessageCenter_sent]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF_Employee_isActive]
GO
/****** Object:  Table [dbo].[MessagesGroupPerEmployee]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessagesGroupPerEmployee]') AND type in (N'U'))
DROP TABLE [dbo].[MessagesGroupPerEmployee]
GO
/****** Object:  Table [dbo].[MessagesGroup]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessagesGroup]') AND type in (N'U'))
DROP TABLE [dbo].[MessagesGroup]
GO
/****** Object:  Table [dbo].[MessagesChannelPerEmployee]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessagesChannelPerEmployee]') AND type in (N'U'))
DROP TABLE [dbo].[MessagesChannelPerEmployee]
GO
/****** Object:  Table [dbo].[MessagesChannel]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessagesChannel]') AND type in (N'U'))
DROP TABLE [dbo].[MessagesChannel]
GO
/****** Object:  Table [dbo].[MessageCenter]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageCenter]') AND type in (N'U'))
DROP TABLE [dbo].[MessageCenter]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Message]') AND type in (N'U'))
DROP TABLE [dbo].[Message]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2022-11-20 2:49:05 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NULL,
	[aubayid] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[mobilePhone] [varchar](50) NULL,
	[birthDate] [date] NULL,
	[taxNumber] [varchar](50) NULL,
	[hasChildren] [bit] NULL,
	[nationality] [varchar](50) NULL,
	[preferredCommunicationLanguage] [varchar](50) NULL,
	[admissionDate] [date] NULL,
	[cessationDate] [date] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [varchar](500) NULL,
	[body] [varchar](8000) NULL,
	[recipients] [varchar](500) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageCenter]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageCenter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[messageId] [int] NOT NULL,
	[messagesChannelPerEmployeeId] [int] NOT NULL,
	[messageSentDate] [date] NOT NULL,
	[sent] [bit] NOT NULL,
	[received] [bit] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MessageCenter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesChannel]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesChannel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channelName] [varchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_MessagesChannel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesChannelPerEmployee]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesChannelPerEmployee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channelId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[contactTag] [varchar](50) NULL,
	[doNotDisturbStartHour] [time](3) NULL,
	[doNotDisturbEndHour] [time](3) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_MessagesChannelPerEmployee_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesGroup]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesGroup](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_MessagesGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesGroupPerEmployee]    Script Date: 2022-11-20 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesGroupPerEmployee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupid] [int] NULL,
	[employeeid] [int] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_MessagesGroupPerEmployee_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[MessageCenter] ADD  CONSTRAINT [DF_MessageCenter_sent]  DEFAULT ((0)) FOR [sent]
GO
ALTER TABLE [dbo].[MessageCenter] ADD  CONSTRAINT [DF_MessageCenter_received]  DEFAULT ((0)) FOR [received]
GO
ALTER TABLE [dbo].[MessageCenter] ADD  CONSTRAINT [DF_MessageCenter_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] ADD  CONSTRAINT [doNotDisturbStartHour]  DEFAULT ('19:00:00') FOR [doNotDisturbStartHour]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] ADD  CONSTRAINT [DF_MessagesChannelPerEmployee_doNotDisturbEndHour]  DEFAULT ('08:00:00') FOR [doNotDisturbEndHour]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] ADD  CONSTRAINT [DF_MessagesChannelPerEmployee_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[MessageCenter]  WITH CHECK ADD  CONSTRAINT [FK_MessageCenter_Message] FOREIGN KEY([messageId])
REFERENCES [dbo].[Message] ([id])
GO
ALTER TABLE [dbo].[MessageCenter] CHECK CONSTRAINT [FK_MessageCenter_Message]
GO
ALTER TABLE [dbo].[MessageCenter]  WITH CHECK ADD  CONSTRAINT [FK_MessageCenter_MessagesChannelPerEmployee] FOREIGN KEY([messagesChannelPerEmployeeId])
REFERENCES [dbo].[MessagesChannelPerEmployee] ([id])
GO
ALTER TABLE [dbo].[MessageCenter] CHECK CONSTRAINT [FK_MessageCenter_MessagesChannelPerEmployee]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee]  WITH CHECK ADD  CONSTRAINT [FK_MessagesChannelPerEmployee_Employee] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] CHECK CONSTRAINT [FK_MessagesChannelPerEmployee_Employee]
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee]  WITH CHECK ADD  CONSTRAINT [FK_MessagesChannelPerEmployee_MessagesChannel] FOREIGN KEY([channelId])
REFERENCES [dbo].[MessagesChannel] ([id])
GO
ALTER TABLE [dbo].[MessagesChannelPerEmployee] CHECK CONSTRAINT [FK_MessagesChannelPerEmployee_MessagesChannel]
GO
ALTER TABLE [dbo].[MessagesGroupPerEmployee]  WITH CHECK ADD  CONSTRAINT [FK_MessagesGroupPerEmployee_Employee] FOREIGN KEY([employeeid])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[MessagesGroupPerEmployee] CHECK CONSTRAINT [FK_MessagesGroupPerEmployee_Employee]
GO
ALTER TABLE [dbo].[MessagesGroupPerEmployee]  WITH CHECK ADD  CONSTRAINT [FK_MessagesGroupPerEmployee_MessagesGroup1] FOREIGN KEY([groupid])
REFERENCES [dbo].[MessagesGroup] ([id])
GO
ALTER TABLE [dbo].[MessagesGroupPerEmployee] CHECK CONSTRAINT [FK_MessagesGroupPerEmployee_MessagesGroup1]
GO
