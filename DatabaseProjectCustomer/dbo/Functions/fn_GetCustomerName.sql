CREATE FUNCTION dbo.fn_GetCustomerName
(
    @CustomerId INT
)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @CustomerName NVARCHAR(100);

    SELECT @CustomerName = CustomerName
    FROM Customer
    WHERE CustomerId = @CustomerId;

    RETURN @CustomerName;
END;

GO

