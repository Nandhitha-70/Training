CREATE TABLE Student (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100)
);
CREATE TABLE Marks (
    StudentId INT,
    Subject NVARCHAR(50),
    Score INT
);
INSERT INTO Student VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Carol');
INSERT INTO Marks VALUES (1, 'Math', 90), (2, 'Math', 80);
SELECT s.Name, m.Subject, m.Score
FROM Student s
INNER JOIN Marks m ON s.Id = m.StudentId;
SELECT s.Name, m.Subject, m.Score
FROM Student s
LEFT JOIN Marks m ON s.Id = m.StudentId;
SELECT s.Name, m.Subject, m.Score
FROM Student s
RIGHT JOIN Marks m ON s.Id = m.StudentId;
SELECT s.Name, m.Subject, m.Score
FROM Student s
FULL OUTER JOIN Marks m ON s.Id = m.StudentId;
