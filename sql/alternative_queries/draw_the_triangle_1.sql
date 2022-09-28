/*
	MS SQL Server Solution
*/
DECLARE @counter INT 
SET @counter = 20
WHILE (@counter >= 1)
BEGIN
    SELECT REPLICATE("* ",@counter)
    set @counter = @counter - 1
END
