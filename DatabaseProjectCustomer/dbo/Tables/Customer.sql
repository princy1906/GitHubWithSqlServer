CREATE TABLE [dbo].[Customer] (
    [CustomerId]       INT             IDENTITY (1, 1) NOT NULL,
    [CustomerName]     NVARCHAR (100)  NOT NULL,
    [City]             NVARCHAR (100)  NULL,
    [CreditLimit]      DECIMAL (10, 2) NULL,
    [RegistrationDate] DATE            NULL,
    PhoneNumber        VARCHAR(20),
    [Address]          VARCHAR(500),
    [StatusId]         INT             NULL,
    CONSTRAINT [PK_Customer]
        PRIMARY KEY CLUSTERED ([CustomerId] ASC),

    CONSTRAINT [FK_Customer_Status]
        FOREIGN KEY ([StatusId])
        REFERENCES [dbo].[Status] ([StatusId])
);


GO

