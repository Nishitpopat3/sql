--Create a table with all types of constraints
-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL UNIQUE,
    Credits INT NOT NULL CHECK (Credits BETWEEN 1 AND 5),
    StudentID INT  
);


-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Age INT CHECK (Age >= 16),
    EnrollmentDate DATE DEFAULT GETDATE(),
    CourseID INT
);

Select * from Courses
Select * from Students

INSERT INTO Students (StudentID, FirstName, LastName, Email, Age)
VALUES 
(1, 'Alice', 'Johnson', 'alice@example.com', 20),
(2, 'Bob', 'Smith', 'bob@example.com', 22),
(3, 'Charlie', 'Lee', 'charlie@example.com', 19),
(4, 'Diana', 'Wright', 'diana@example.com', 21),
(5, 'Ethan', 'Clark', 'ethan@example.com', 23);

INSERT INTO Courses (CourseID, CourseName, Credits, StudentID)
VALUES 
(101, 'Mathematics', 3, 1),
(102, 'History', 4, 2),
(103, 'Computer Science', 5, 3);

INSERT INTO Students (StudentID, FirstName, LastName, Email, Age)
VALUES (10, NULL, 'Patel', 'nulltest@example.com', 22);

INSERT INTO Students (StudentID, FirstName, LastName, Email, Age)
VALUES (11, 'Ravi', 'Sharma', 'alice@example.com', 24);

INSERT INTO Students (StudentID, FirstName, LastName, Email, Age)
VALUES (12, 'Tina', 'Verma', 'tina@example.com', 15);

INSERT INTO Students (StudentID, FirstName, LastName, Email, Age)
VALUES (13, 'Vikas', 'Mehta', 'vikas@example.com', 22);

SELECT * FROM Students WHERE StudentID = 13;




