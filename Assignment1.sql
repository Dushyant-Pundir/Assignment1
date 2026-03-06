--Day1 Assignment SQL Basics
-- Practice by Dushyant Pundir

--create database
create database Practice;

use Practice;

--create table
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Age INT,
    City VARCHAR(50),
    Course VARCHAR(50),
    Marks INT
);

--insert values
INSERT INTO Students (Student_ID, Student_Name, Age, City, Course, Marks)
VALUES
(1, 'Rahul Sharma', 21, 'Delhi', 'BCA', 85),
(2, 'Priya Verma', 22, 'Mumbai', 'BBA', 78),
(3, 'Amit Singh', 23, 'Lucknow', 'MCA', 90),
(4, 'Neha Gupta', 21, 'Delhi', 'BSc', 88),
(5, 'Rohit Kumar', 24, 'Bangalore', 'MBA', 75);

--Query 1
SELECT * FROM Students;

--query 2
SELECT Student_Name,City FROM Students;

--query 3
SELECT * FROM Students WHERE city='Delhi';

--query 4
SELECT * FROM Students WHERE Marks>80;

--query 5
SELECT * FROM Students WHERE age=23;

--query 6
SELECT * FROM Students WHERE age BETWEEN 22 and 24;

--query 7
SELECT * FROM Students WHERE Student_Name LIKE 'r%';

--query 8
SELECT * FROM Students WHERE City!='Delhi';

-- query 9 
SELECT Student_ID, Student_Name FROM Students WHERE Course='MCA';
--query 10
SELECT * FROM Students WHERE Marks between 80 and 90;






