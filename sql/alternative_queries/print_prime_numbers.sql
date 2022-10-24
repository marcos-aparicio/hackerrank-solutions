/*
    SQL SERVER
*/
DECLARE @output VARCHAR(910)
SET @output = ''
DECLARE @primes INT
SET @primes = 0
DECLARE @number INT
SET @number = 1
DECLARE @testing INT
SET @testing = 1

WHILE @number <= 1000
BEGIN
    IF @testing != @number AND @number % @testing = 0
    BEGIN
        SET @testing = 2
        SET @number = @number + 1
        CONTINUE
    END
    
    IF @testing < @number
    BEGIN
        SET @testing = @testing + 1
        CONTINUE
    END
    
    SET @output = CONCAT(@output,@number,'&')
    SET @number = @number + 1
    SET @testing = 2
END
--deleting unneeded characters
SET @output = SUBSTRING(@output,3, LEN(@output) - 2)
SELECT LEFT(@output,LEN(@output)-1)
