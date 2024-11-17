create database managers;
use managers;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18 AND Age <= 65),
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender ENUM('Male', 'Female', 'Other'),
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1980-01-15', 44, 'Male', 'IT', 30000),
(2, 'Jane', 'Smith', '1990-05-22', 34, 'Female', 'Finance', 40000),
(3, 'Robert', 'Brown', '1985-10-10', 39, 'Male', 'HR', 35000),
(4, 'Aaliya', 'Khan', '1993-03-08', 31, 'Female', 'IT', 26000),
(5, 'David', 'Clark', '1975-12-12', 48, 'Male', 'Marketing', 20000),
(6, 'Emily', 'Davis', '1988-07-14', 36, 'Female', 'IT', 50000),
(7, 'Chris', 'Johnson', '1992-08-21', 32, 'Male', 'Operations', 15000),
(8, 'Sophia', 'Lopez', '1982-11-19', 42, 'Female', 'Finance', 28000),
(9, 'Daniel', 'Taylor', '1995-06-05', 29, 'Male', 'IT', 22000),
(10, 'Emma', 'Wilson', '1991-09-30', 33, 'Female', 'HR', 32000);

select * from managers;

SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

SELECT First_Name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;

SELECT *
FROM Managers
WHERE First_Name != 'Aaliya';

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;
