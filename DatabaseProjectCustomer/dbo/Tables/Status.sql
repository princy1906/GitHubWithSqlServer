CREATE TABLE dbo.Status
(
    StatusId INT IDENTITY(1,1) NOT NULL,
    StatusName NVARCHAR(50) NOT NULL,

    CONSTRAINT PK_Status
        PRIMARY KEY CLUSTERED ([StatusId] ASC),

    CONSTRAINT UQ_Status_StatusName
        UNIQUE (StatusName)
);