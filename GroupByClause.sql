use Demo
-- Create the tblEmployee table
CREATE TABLE tblEmployee (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Gender NVARCHAR(10),
    Salary INT,
    City NVARCHAR(50)
);

-- Insert values into the tblEmployee table
INSERT INTO tblEmployee (ID, Name, Gender, Salary, City)
VALUES
(1, 'Tom', 'Male', 4000, 'London'),
(2, 'Pam', 'Female', 3000, 'New York'),
(3, 'John', 'Male', 3500, 'London'),
(4, 'Sam', 'Male', 4500, 'London'),
(5, 'Todd', 'Male', 4000, 'Sydney'),
(6, 'Ben', 'Male', 3000, 'New York'),
(7, 'Sara', 'Female', 4800, 'London'),
(8, 'Valarie', 'Female', 6500, 'London'),
(9, 'James', 'Male', 5400, 'New York'),
(10, 'Russell', 'Male', 6000, 'London');

SELECT * FROM tblEmployee
SELECT SUM(Salary) FROM tblEmployee
SELECT MIN(Salary) FROM tblEmployee
SELECT MAX(Salary) FROM tblEmployee
SELECT AVG(salary) FROM tblEmployee
SELECT city, SUM(salary) FROM tblEmployee group by City -- Group all cities and Sum their salary
SELECT  gender, city, SUM(salary) FROM tblEmployee GROUP BY Gender, City --First groups by Gender and then City
 