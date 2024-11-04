
CREATE TABLE [dbo].[footerContent] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [title]         VARCHAR (MAX)  NULL,
    [description]   VARCHAR (MAX)  NULL,
    [image]         VARCHAR (1000) NULL,
    [urlLinks]      VARCHAR (500)  NULL,
    [lastUpdate]    VARCHAR (100)  NULL,
    [typeOfContent] VARCHAR (50)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Table] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [email]       VARCHAR (50)   NOT NULL,
    [subject]     VARCHAR (150)  NOT NULL,
    [name]        VARCHAR (100)  NOT NULL,
    [description] VARCHAR (3000) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[skills] (
    [skillName]   VARCHAR (100)  NOT NULL,
    [description] VARCHAR (7500) NULL,
    PRIMARY KEY CLUSTERED ([skillName] ASC)
);

CREATE TABLE [dbo].[levels] (
    [levelName]    VARCHAR (100)  NOT NULL,
    [description]  VARCHAR (7500) NULL,
    [imageOfLevel] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([levelName] ASC)
);


CREATE TABLE [dbo].[userInfo] (
    [email]      VARCHAR (100) NOT NULL,
    [password]   VARCHAR (100) NULL,
    [firstName]  VARCHAR (150) NULL,
    [secondName] VARCHAR (150) NULL,
    [userType]   VARCHAR (50)  NULL,
    [profile]    VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([email] ASC)
);


CREATE TABLE [dbo].[Activity] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [date]           VARCHAR (90)  NULL,
    [typeOfActivity] VARCHAR (100) NULL,
    [email]          VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([email]) REFERENCES [dbo].[userInfo] ([email])
);


CREATE TABLE [dbo].[units] (
    [unitID]      INT            IDENTITY (1, 1) NOT NULL,
    [unitName]    VARCHAR (100)  NOT NULL,
    [description] VARCHAR (7500) NULL,
    [skillName]   VARCHAR (100)  NULL,
    [levelName]   VARCHAR (100)  NULL,
    PRIMARY KEY CLUSTERED ([unitID] ASC),
    FOREIGN KEY ([skillName]) REFERENCES [dbo].[skills] ([skillName]),
    FOREIGN KEY ([levelName]) REFERENCES [dbo].[levels] ([levelName])
);


CREATE TABLE [dbo].[Content] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [urlLink]             VARCHAR (200) NULL,
    [TranscriptionOrText] VARCHAR (MAX) NULL,
    [contentType]         VARCHAR (50)  NULL,
    [unitName]            INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([unitName]) REFERENCES [dbo].[units] ([unitID])
);




CREATE TABLE [dbo].[question] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Question_Order] INT            NULL,
    [Question]       NVARCHAR (MAX) NULL,
    [Question_Type]  NCHAR (50)     NULL,
    [ContentID]      INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ContentID]) REFERENCES [dbo].[Content] ([Id])
);

CREATE TABLE [dbo].[Section] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [answers]     VARCHAR (MAX) NOT NULL,
    [question_ID] INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([question_ID]) REFERENCES [dbo].[question] ([Id])
);


CREATE TABLE [dbo].[unitCompleted] (
    [email]     VARCHAR (100) NULL,
    [unitName]  VARCHAR (100) NULL,
    [completed] BIT           DEFAULT ((0)) NULL,
    FOREIGN KEY ([email]) REFERENCES [dbo].[userInfo] ([email])
);








