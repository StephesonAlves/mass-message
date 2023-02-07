USE [AubilousTouchDB]
GO
SET IDENTITY_INSERT [dbo].[MessagesChannel] ON 

INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (1, N'SMS', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (2, N'Telegram', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (3, N'Email', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (4, N'Whatsapp', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (5, N'Skype', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (5, N'Signal', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (5, N'Teams', 1)
INSERT [dbo].[MessagesChannel] ([id], [channelName], [isActive]) VALUES (5, N'Slack', 1)

SET IDENTITY_INSERT [dbo].[MessagesChannel] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([id], [name], [aubayid], [address], [role], [mobilePhone], [birthDate], [taxNumber], [hasChildren], [nationality], [preferredCommunicationLanguage], [admissionDate], [cessationDate], [isActive]) VALUES (1, N'Hugo Figueira', N'1000', N'Odivelas', N'Data', N'96000001', NULL, N'999', 1, N'PT', N'PT', CAST(N'2022-01-01' AS Date), NULL, 1)
INSERT [dbo].[Employee] ([id], [name], [aubayid], [address], [role], [mobilePhone], [birthDate], [taxNumber], [hasChildren], [nationality], [preferredCommunicationLanguage], [admissionDate], [cessationDate], [isActive]) VALUES (2, N'Tácio Mendes', N'1001', N'Lisboa', N'.Net', N'96000002', NULL, N'999', 1, N'PT', N'PT', CAST(N'2020-01-01' AS Date), NULL, 1)
INSERT [dbo].[Employee] ([id], [name], [aubayid], [address], [role], [mobilePhone], [birthDate], [taxNumber], [hasChildren], [nationality], [preferredCommunicationLanguage], [admissionDate], [cessationDate], [isActive]) VALUES (3, N'Bruno Aguiar', N'1002', N'Oeiras', N'.Net', N'96000003', NULL, N'999', 1, N'PT', N'PT', CAST(N'2020-01-01' AS Date), NULL, 1)
INSERT [dbo].[Employee] ([id], [name], [aubayid], [address], [role], [mobilePhone], [birthDate], [taxNumber], [hasChildren], [nationality], [preferredCommunicationLanguage], [admissionDate], [cessationDate], [isActive]) VALUES (4, N'Daniel Rocha', N'1003', N'Lisboa', N'.Net', N'96000004', NULL, N'999', 1, N'PT', N'PT', CAST(N'2020-01-01' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[MessagesChannelPerEmployee] ON 

INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (1, 1, 1, N't1', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (2, 1, 2, N't2', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (3, 1, 3, N't3', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (4, 1, 4, N't4', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (5, 2, 1, N't5', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (6, 2, 2, N't6', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (7, 2, 3, N't7', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (8, 2, 4, N't8', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (9, 3, 1, N't9', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (10, 3, 2, N't10', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (11, 3, 3, N't11', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
INSERT [dbo].[MessagesChannelPerEmployee] ([id], [channelId], [employeeId], [contactTag], [doNotDisturbStartHour], [doNotDisturbEndHour], [isActive]) VALUES (12, 3, 4, N't12', CAST(N'19:00:00' AS Time), CAST(N'08:00:00' AS Time), 1)
SET IDENTITY_INSERT [dbo].[MessagesChannelPerEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([id], [subject], [body], [recipients]) VALUES (1, N'Hello World', N'This is my first message', NULL)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[MessageCenter] ON 

INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (1, 1, 1, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (2, 1, 2, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (3, 1, 3, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (4, 1, 4, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (5, 1, 5, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (6, 1, 6, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (7, 1, 7, CAST(N'2022-11-19' AS Date), 1, 0, N'2')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (8, 1, 8, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (9, 1, 9, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (10, 1, 10, CAST(N'2022-11-19' AS Date), 1, 1, N'1')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (11, 1, 11, CAST(N'2022-11-19' AS Date), 1, 0, N'0')
INSERT [dbo].[MessageCenter] ([id], [messageId], [messagesChannelPerEmployeeId], [messageSentDate], [sent], [received], [status]) VALUES (12, 1, 12, CAST(N'2022-11-19' AS Date), 1, 0, N'0')
SET IDENTITY_INSERT [dbo].[MessageCenter] OFF
GO
