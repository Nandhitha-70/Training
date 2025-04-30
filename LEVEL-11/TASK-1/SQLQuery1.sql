CREATE TABLE Students (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Age INT,
    Grade CHAR(2)
);
INSERT INTO Students (Name, Age, Grade)
VALUES 
('Alice', 20, 'A'),
('Bob', 22, 'B');
SELECT * FROM Students;
UPDATE Students
SET Grade = 'A+'
WHERE Name = 'Bob';
DELETE FROM Students
WHERE Name = 'Alice';
