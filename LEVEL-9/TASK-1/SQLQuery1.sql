CREATE DATABASE UniversityDB;
GO
USE UniversityDB;
GO
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name NVARCHAR(100) NOT NULL
);
CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY,
    name NVARCHAR(100),
    dept_id INT FOREIGN KEY REFERENCES Department(dept_id)
);
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name NVARCHAR(100),
    dept_id INT FOREIGN KEY REFERENCES Department(dept_id)
);
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    title NVARCHAR(100),
    dept_id INT FOREIGN KEY REFERENCES Department(dept_id)
);
CREATE TABLE Classroom (
    room_id INT PRIMARY KEY,
    building NVARCHAR(100),
    capacity INT
);
CREATE TABLE Section (
    section_id INT PRIMARY KEY,
    course_id INT FOREIGN KEY REFERENCES Course(course_id),
    instructor_id INT FOREIGN KEY REFERENCES Instructor(instructor_id),
    room_id INT FOREIGN KEY REFERENCES Classroom(room_id),
    semester NVARCHAR(20)
);
CREATE TABLE Enrollment (
    student_id INT,
    section_id INT,
    PRIMARY KEY (student_id, section_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (section_id) REFERENCES Section(section_id)
);
