﻿CREATE TABLE [dbo].[Person] (
    [PersonID] INT         IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR(128)  NOT NULL,
    [PhotoURL]     NVARCHAR(256) NULL,
    [Email]    NVARCHAR(128) NOT NULL,
    [Admin]    BIT         NOT NULL,
    [JobDescription]      TEXT  NULL,
    PRIMARY KEY CLUSTERED ([PersonID] ASC)
);
