CREATE TABLE [Episode] (
    [EpisodeId] int NOT NULL IDENTITY,
    [Title] nvarchar(max) NULL,
    [GuestName] nvarchar(max) NULL,
    [Date] datetime2 NOT NULL,
    [URL] nvarchar(max) NULL,
    CONSTRAINT [PK_Episode] PRIMARY KEY ([EpisodeId])
);
GO


IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EpisodeId', N'Date', N'GuestName', N'Title', N'URL') AND [object_id] = OBJECT_ID(N'[Episode]'))
    SET IDENTITY_INSERT [Episode] ON;
INSERT INTO [Episode] ([EpisodeId], [Date], [GuestName], [Title], [URL])
VALUES (1, '2021-03-02T00:00:00.0000000', N'Claire Novotny', N'All about Open Source and .NET', N'https://www.youtube.com/watch?v=flj9MHrOU0k'),
(2, '2020-12-04T00:00:00.0000000', N'Layla Porter', N'Migrating ASP NET Identity to Azure AD B2C', N'https://www.youtube.com/watch?v=lQlev9oRtXQ'),
(3, '2021-01-06T00:00:00.0000000', N'Joonas Westlin', N'Identity Crisis sidecar: Legacy software. Let''s learn foxpro!', N'https://www.youtube.com/watch?v=xCkS0e2voE8'),
(4, '2021-01-05T00:00:00.0000000', N'', N'Identity Crisis - Getting started with Identity', N'https://www.youtube.com/watch?v=bniAj9q4s7c'),
(5, '2021-02-01T00:00:00.0000000', N'Sean Whitesell', N'Secure DevOps with Pulumi and Azure AD', N'https://www.youtube.com/watch?v=DdTJNAXZ1k4');
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'EpisodeId', N'Date', N'GuestName', N'Title', N'URL') AND [object_id] = OBJECT_ID(N'[Episode]'))
    SET IDENTITY_INSERT [Episode] OFF;
GO


