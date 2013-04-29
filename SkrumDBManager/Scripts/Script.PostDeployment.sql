/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* Default admin */
INSERT INTO [dbo].[Person] ([Name], [PhotoURL], [Email], [Admin], [JobDescription], [Password])
	VALUES ('Default Admin', null, 'admin@default.com', 1, null, '123456');

/* StoryState enumaration values */
INSERT INTO [dbo].[StoryState] ([State]) VALUES ('IN PROGRESS');
INSERT INTO [dbo].[StoryState] ([State]) VALUES ('COMPLETED');
INSERT INTO [dbo].[StoryState] ([State]) VALUES ('ABANDONED');

/* StoryPriority enumaration values */
INSERT INTO [dbo].[StoryPriority] ([Priority]) VALUES ('MUST');
INSERT INTO [dbo].[StoryPriority] ([Priority]) VALUES ('SHOULD');
INSERT INTO [dbo].[StoryPriority] ([Priority]) VALUES ('COULD');
INSERT INTO [dbo].[StoryPriority] ([Priority]) VALUES ('WONT');

/* RoleDescription enumeration values */
INSERT INTO [dbo].[RoleDescription] ([Description]) VALUES ('PROJECT MANAGER');
INSERT INTO [dbo].[RoleDescription] ([Description]) VALUES ('SCRUM MASTER');
INSERT INTO [dbo].[RoleDescription] ([Description]) VALUES ('PRODUCT OWNER');
INSERT INTO [dbo].[RoleDescription] ([Description]) VALUES ('TEAM MEMBER');