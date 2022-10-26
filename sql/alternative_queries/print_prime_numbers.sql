/*
    SQL SERVER
*/
DECLARE @output VARCHAR(1000) = ''
DECLARE @primes INT = 0
DECLARE @number INT = 1
DECLARE @testing INT = 1

WHILE @number <= 1000
BEGIN

    -- conditions for not being prime, each condition in a different line
    IF @number = 1 OR 
       @testing != @number AND @testing != 1 AND @number % @testing = 0
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
--deleting the last & symbol and showing output
SELECT LEFT(@output, LEN(@output) - 1)
