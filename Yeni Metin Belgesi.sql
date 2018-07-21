-- ****************** SqlDBM: Microsoft SQL Server ******************
-- ******************************************************************

DROP TABLE [dbo].[Person];
GO


DROP TABLE [dbo].[Customer];
GO


DROP TABLE [dbo].[Person_Role];
GO


DROP TABLE [dbo].[Workplace];
GO


--************************************** [dbo].[Person_Role]

CREATE TABLE [dbo].[Person_Role]
(
 [ID]        NOT NULL ,
 [RoleName] NVARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Customer_Person_Role] PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO



--************************************** [dbo].[Workplace]

CREATE TABLE [dbo].[Workplace]
(
 [ID]   İNT NOT NULL ,
 [Name] NVARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Workplace] PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO



--************************************** [dbo].[Customer]

CREATE TABLE [dbo].[Customer]
(
 [ID]                 İNT NOT NULL ,
 [ShortName]          NVARCHAR(50) NOT NULL ,
 [LongName]           NVARCHAR(MAX) NOT NULL ,
 [ErpNumber]          NVARCHAR(50) NOT NULL ,
 [Web]                NVARCHAR(100) NOT NULL ,
 [InfoMail]           NVARCHAR(100) NOT NULL ,
 [WorkplaceID]        İNT NOT NULL ,
 [LocationCoordinate] NVARCHAR(MAX) NOT NULL ,

 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_30] FOREIGN KEY ([WorkplaceID])
  REFERENCES [dbo].[Workplace]([ID])
);
GO


--SKIP Index: [fkIdx_30]


--************************************** [dbo].[Person]

CREATE TABLE [dbo].[Person]
(
 [ID]         İNT NOT NULL ,
 [Name]       NVARCHAR(50) NOT NULL ,
 [Surname]    NVARCHAR(50) NOT NULL ,
 [Phone]      NVARCHAR(50) NOT NULL ,
 [Mail]       NVARCHAR(50) NOT NULL ,
 [CustomerID] İNT NOT NULL ,
 [RoleID]      NOT NULL ,

 CONSTRAINT [PK_Customer_Person] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_42] FOREIGN KEY ([CustomerID])
  REFERENCES [dbo].[Customer]([ID]),
 CONSTRAINT [FK_51] FOREIGN KEY ([RoleID])
  REFERENCES [dbo].[Person_Role]([ID])
);
GO


--SKIP Index: [fkIdx_42]

--SKIP Index: [fkIdx_51]


