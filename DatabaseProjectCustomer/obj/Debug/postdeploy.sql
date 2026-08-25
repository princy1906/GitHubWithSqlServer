/* ============================================
   Status Master Data
   ============================================ */

IF NOT EXISTS
(
    SELECT 1
    FROM [dbo].[Status]
    WHERE StatusName = 'Active'
)
BEGIN
    INSERT INTO [dbo].[Status] (StatusName)
    VALUES ('Active');
END;

IF NOT EXISTS
(
    SELECT 1
    FROM [dbo].[Status]
    WHERE StatusName = 'Inactive'
)
BEGIN
    INSERT INTO [dbo].[Status] (StatusName)
    VALUES ('Inactive');
END;

IF NOT EXISTS
(
    SELECT 1
    FROM [dbo].[Status]
    WHERE StatusName = 'Suspended'
)
BEGIN
    INSERT INTO [dbo].[Status] (StatusName)
    VALUES ('Suspended');
END;

IF NOT EXISTS
(
    SELECT 1
    FROM [dbo].[Status]
    WHERE StatusName = 'Pending'
)
BEGIN
    INSERT INTO [dbo].[Status] (StatusName)
    VALUES ('Pending');
END;



/* Add Role Master Data */

IF NOT EXISTS (SELECT 1 FROM [dbo].[Role] WHERE [RoleName] = 'Admin')
BEGIN
    INSERT INTO [dbo].[Role] ([RoleId], [RoleName])
    VALUES ($(AdminRoleId), 'Admin');
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[Role] WHERE [RoleName] = 'Owner')
BEGIN
    INSERT INTO [dbo].[Role] ([RoleId], [RoleName])
    VALUES ($(OwnerRoleId), 'Owner');
END;
GO
