SELECT * FROM Marks WHERE Score > 80;
SELECT StudentId, AVG(Score) AS AvgScore
FROM Marks
GROUP BY StudentId
HAVING AVG(Score) > 80;
