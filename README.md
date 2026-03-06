SQL Internship - Assignment-1

## Description
This project demonstrates basic SQL operations such as creating tables,
inserting data, and performing queries like SELECT, WHERE and BETWEEN.

## Table Structure
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Age INT,
    City VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);

## Practice Queries (10)

--1.Show all student details.
SELECT * FROM Students;

2.Show only Student Name and City.
SELECT Student_Name,City FROM Students;

3.Fetch Student from Delhi.
SELECT * FROM Students WHERE city='Delhi';

4.Fetch Student with marks greater than 80.
SELECT * FROM Students WHERE Marks>80;

5. Show only Students with age=23.
SELECT * FROM Students WHERE age=23;

6.Fetch Students with Age Between 22 and 24.
SELECT * FROM Students WHERE age BETWEEN 22 and 24;

7.Fetch Students Whose Name Starts with 'R'.
SELECT * FROM Students WHERE Student_Name LIKE 'R%';

8.Fetch Students Who Do Not Live in Delhi.
SELECT * FROM Students WHERE City!='Delhi';

9.Fetch Student_ID and Student_Name for MCA Course.
SELECT Student_ID, Student_Name FROM Students WHERE Course='MCA';

10.Fetch Students with Marks Between 80 and 90.
SELECT * FROM Students WHERE Marks between 80 and 90;

## Conclusion

In this Assignment, I successfully created the Students table, inserted sample data, and executed multiple SQL queries.

## Author
Dushyant Pundir




