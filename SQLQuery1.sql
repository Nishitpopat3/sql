create table Student
(
StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(2),
    City VARCHAR(50)
);

INSERT INTO Student VALUES 
(1, 'John', 'Doe', 15, 'A', 'Toronto'),
(2, 'Jane', 'Smith', 16, 'B', 'Ottawa'),
(3, 'Mike', 'Brown', 17, 'A', 'Montreal'),
(4, 'Emily', 'Davis', 15, 'C', 'Toronto'),
(5, 'Robert', 'Wilson', 16, 'B', 'Calgary');

Select * from Student;

/*1. Find students whose first names start with 'J':*/

SELECT * FROM Student
WHERE FirstName LIKE 'J%';

/* 2. Find students whose last name ends with 'son':*/

SELECT * FROM Student
WHERE LastName LIKE '%son';

/* 3. Find all students with grade 'B' and age > 15:*/
SELECT * FROM Student
WHERE Grade = 'B' AND Age > 15;

/*4. List all students ordered by age in ascending order:*/
SELECT * FROM Student
ORDER BY Age ASC;

/*5. List all students ordered by Grade descending, then by FirstName ascending:*/
SELECT * FROM Student
ORDER BY Grade DESC, FirstName ASC;

/*6. Find students whose first name contains the letter 'a':*/
SELECT * FROM Student
WHERE FirstName LIKE '%a%';

/*7. Find students whose first name has exactly 5 characters:*/
SELECT * FROM Student
WHERE LEN(FirstName) = 5;

/*8. Find students whose last name has ‘i’ as the second letter:*/
SELECT * FROM Student
WHERE LastName LIKE '_i%';

/*9. Find students who are not from ‘Toronto’:*/
SELECT * FROM Student
WHERE City <> 'Toronto';

/*10. Find students whose grade is 'B' and age is less than 16:*/
SELECT * FROM Student
WHERE Grade = 'B' AND Age < 16;






