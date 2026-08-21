/* ============================================
   Customer Status Master Data
   ============================================ */

IF NOT EXISTS
(
    SELECT 1
    FROM dbo.CustomerStatus
    WHERE StatusName = 'Active'
)
BEGIN
    INSERT INTO dbo.CustomerStatus (StatusName)
    VALUES ('Active');
END;

IF NOT EXISTS
(
    SELECT 1
    FROM dbo.CustomerStatus
    WHERE StatusName = 'Inactive'
)
BEGIN
    INSERT INTO dbo.CustomerStatus (StatusName)
    VALUES ('Inactive');
END;

IF NOT EXISTS
(
    SELECT 1
    FROM dbo.CustomerStatus
    WHERE StatusName = 'Suspended'
)
BEGIN
    INSERT INTO dbo.CustomerStatus (StatusName)
    VALUES ('Suspended');
END;

IF NOT EXISTS
(
    SELECT 1
    FROM dbo.CustomerStatus
    WHERE StatusName = 'Pending'
)
BEGIN
    INSERT INTO dbo.CustomerStatus (StatusName)
    VALUES ('Pending');
END;