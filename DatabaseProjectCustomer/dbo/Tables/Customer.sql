CREATE TABLE [dbo].[Customer] (
    [CustomerId]       INT             IDENTITY (1, 1) NOT NULL,
    [CustomerName]     NVARCHAR (100)  NOT NULL,
    [City]             NVARCHAR (100)  NULL,
    [CreditLimit]      DECIMAL (10, 2) NULL,
    [RegistrationDate] DATE            NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);


GO

