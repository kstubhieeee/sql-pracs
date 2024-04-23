CREATE PROCEDURE calculateFactorial (@number INT)
AS 
BEGIN
    DECLARE @i INT = 1, @result BIGINT = 1;

    WHILE (@i <= @number)
    BEGIN
        SET @result = @result * @i;
        SET @i = @i + 1;
    END;

    SELECT @result AS 'Factorial';
END;

EXEC calculateFactorial 5;
