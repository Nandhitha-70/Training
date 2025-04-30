WITH RankedScores AS (
    SELECT 
        StudentId,
        Subject,
        Score,
        RANK() OVER (PARTITION BY Subject ORDER BY Score DESC) AS Rank
    FROM Marks
)
SELECT * FROM RankedScores;
