CREATE PROCEDURE dbo.usp_GetCustomers
    @City NVARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CustomerId,
        CustomerName,
        City,
        CreditLimit,
        RegistrationDate
    FROM Customer
    WHERE @City IS NULL
       OR City = @City;
END;

GO

