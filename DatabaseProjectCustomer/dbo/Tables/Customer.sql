CREATE TABLE [dbo].[Customer] (
    [CustomerId]       INT             IDENTITY (1, 1) NOT NULL,
    [CustomerName]     NVARCHAR (100)  NOT NULL,
    [City]             NVARCHAR (100)  NULL,
    [CreditLimit]      DECIMAL (10, 2) NULL,
    [RegistrationDate] DATE            NULL,
    PhoneNumber        VARCHAR(20),
    [Address]          VARCHAR(500)
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);


GO

