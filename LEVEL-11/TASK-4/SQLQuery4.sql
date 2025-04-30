CREATE PROCEDURE GetHighScores
    @Threshold INT
AS
BEGIN
    SELECT * FROM Marks WHERE Score > @Threshold;
END;
EXEC GetHighScores @Threshold = 85;
