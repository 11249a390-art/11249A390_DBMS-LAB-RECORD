Experiment 02 :
      Insertion, Deletion, Modification, Alteration, Updating and Conditional Record Viewing
  
MySQL Queries

1. Create Database
CREATE DATABASE PayrollLabDB; 

2. Select Database
USE PayrollLabDB;

3. Create Employee Table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    Department VARCHAR(25) NOT NULL,
    Designation VARCHAR(30) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    City VARCHAR(30),
    Join_Date DATE NOT NULL
);

4. Describe Employee Table
DESC Employee;

5. Insert Employee Records
INSERT INTO Employee VALUES
(201, 'Asha', 'HR', 'Executive', 38000, 'Chennai', '2023-06-12'),
(202, 'Bharat', 'IT', 'Developer', 52000, 'Hyderabad', '2022-08-01'),
(203, 'Charan', 'Sales', 'Associate', 32000, 'Vijayawada', '2024-01-15'),
(204, 'Deepa', 'IT', 'Analyst', 48000, 'Bengaluru', '2023-03-20'),
(205, 'Eshan', 'Finance', 'Accountant', 45000, 'Chennai', '2021-11-05'),
(206, 'Farah', 'HR', 'Recruiter', 41000, 'Hyderabad', '2024-02-10'),
(207, 'Gopal', 'Sales', 'Executive', 35000, 'Nellore', '2022-07-18'),
(208, 'Hema', 'IT', 'Developer', 56000, 'Tirupati', '2021-09-30');

6. Display All Employee Records
SELECT *
FROM Employee
ORDER BY Emp_ID;

7. Insert a New Employee
INSERT INTO Employee VALUES
(209, 'Ishita', 'Marketing', 'Coordinator', 39000, 'Guntur', '2025-01-06');

8. Update Employee Salary
UPDATE Employee
SET Salary = 55000
WHERE Emp_ID = 202;

SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Emp_ID = 202;

9. Increase Sales Employees' Salaries by 10%
UPDATE Employee
SET Salary = ROUND(Salary * 1.10, 2)
WHERE Department = 'Sales';

SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Department = 'Sales'
ORDER BY Emp_ID;
  
10. Modify Employee Department
UPDATE Employee
SET Department = 'Operations'
WHERE Emp_ID = 206;

SELECT Emp_ID, Emp_Name, Department
FROM Employee
WHERE Emp_ID = 206;
  
11. Add a New Email Column
ALTER TABLE Employee
ADD COLUMN Email VARCHAR(80) NULL;

SHOW COLUMNS FROM Employee LIKE 'Email';
  
12. Update Email Addresses
UPDATE Employee
SET Email = 'asha@company.test'
WHERE Emp_ID = 201;

UPDATE Employee
SET Email = 'bharat@company.test'
WHERE Emp_ID = 202;

SELECT Emp_ID, Emp_Name, Email
FROM Employee
WHERE Email IS NOT NULL
ORDER BY Emp_ID;
  
13. Modify Designation Column Size
ALTER TABLE Employee
MODIFY COLUMN Designation VARCHAR(50) NOT NULL;

SHOW COLUMNS FROM Employee LIKE 'Designation';
  
14. Retrieve Employees with Salary Greater Than or Equal to 45000
SELECT Emp_ID, Emp_Name, Department, Salary
FROM Employee
WHERE Salary >= 45000
ORDER BY Salary DESC, Emp_ID;
  
15. Delete a Selected Employee
DELETE FROM Employee
WHERE Emp_ID = 209;

SELECT COUNT(*) AS Total_Employees
FROM Employee;
  
16. Delete Employee Based on Department and ID
DELETE FROM Employee
WHERE Department = 'Operations'
AND Emp_ID = 206;

SELECT Emp_ID, Emp_Name, Department
FROM Employee
ORDER BY Emp_ID;
  
17. Display Final Payroll Records
SELECT Emp_ID, Emp_Name, Department, Salary, Email
FROM Employee
ORDER BY Emp_ID;
  
18. Display Final Employee Count
SELECT COUNT(*) AS Final_Count
FROM Employee;
  
19. Display Sales Employees and Their Salaries
SELECT Emp_Name, Salary
FROM Employee
WHERE Department = 'Sales'
ORDER BY Emp_ID;
  
20. Display All Employee Table Columns
SHOW COLUMNS FROM Employee;




  
 Oracle SQL Queries
  
1. Create Employee Table
CREATE TABLE Employee (
    Emp_ID NUMBER(10) PRIMARY KEY,
    Emp_Name VARCHAR2(50) NOT NULL,
    Department VARCHAR2(25) NOT NULL,
    Designation VARCHAR2(30) NOT NULL,
    Salary NUMBER(10,2) NOT NULL,
    City VARCHAR2(30),
    Join_Date DATE NOT NULL
);
  
2. Describe Employee Table
DESC Employee;
  
3. Insert Employee Records
INSERT ALL
    INTO Employee VALUES (201, 'Asha', 'HR', 'Executive', 38000, 'Chennai', DATE '2023-06-12')
    INTO Employee VALUES (202, 'Bharat', 'IT', 'Developer', 52000, 'Hyderabad', DATE '2022-08-01')
    INTO Employee VALUES (203, 'Charan', 'Sales', 'Associate', 32000, 'Vijayawada', DATE '2024-01-15')
    INTO Employee VALUES (204, 'Deepa', 'IT', 'Analyst', 48000, 'Bengaluru', DATE '2023-03-20')
    INTO Employee VALUES (205, 'Eshan', 'Finance', 'Accountant', 45000, 'Chennai', DATE '2021-11-05')
    INTO Employee VALUES (206, 'Farah', 'HR', 'Recruiter', 41000, 'Hyderabad', DATE '2024-02-10')
    INTO Employee VALUES (207, 'Gopal', 'Sales', 'Executive', 35000, 'Nellore', DATE '2022-07-18')
    INTO Employee VALUES (208, 'Hema', 'IT', 'Developer', 56000, 'Tirupati', DATE '2021-09-30')
SELECT 1 FROM DUAL;

COMMIT;
  
4. Display All Employee Records
SELECT *
FROM Employee
ORDER BY Emp_ID;
  
5. Insert a New Employee
INSERT INTO Employee VALUES
(209, 'Ishita', 'Marketing', 'Coordinator', 39000, 'Guntur', DATE '2025-01-06');

COMMIT;
  
6. Update Employee Salary
UPDATE Employee
SET Salary = 55000
WHERE Emp_ID = 202;

SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Emp_ID = 202;

COMMIT;
  
7. Increase Sales Employees' Salaries by 10%
UPDATE Employee
SET Salary = ROUND(Salary * 1.10, 2)
WHERE Department = 'Sales';

SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Department = 'Sales'
ORDER BY Emp_ID;

COMMIT;

8. Modify Employee Department
UPDATE Employee
SET Department = 'Operations'
WHERE Emp_ID = 206;

SELECT Emp_ID, Emp_Name, Department
FROM Employee
WHERE Emp_ID = 206;

COMMIT;

9. Add a New Email Column
ALTER TABLE Employee
ADD (Email VARCHAR2(80));

SELECT COLUMN_NAME, DATA_TYPE, NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEE'
AND COLUMN_NAME = 'EMAIL';

10. Update Email Addresses
UPDATE Employee
SET Email = 'asha@company.test'
WHERE Emp_ID = 201;

UPDATE Employee
SET Email = 'bharat@company.test'
WHERE Emp_ID = 202;

SELECT Emp_ID, Emp_Name, Email
FROM Employee
WHERE Email IS NOT NULL
ORDER BY Emp_ID;

COMMIT;

11. Modify Designation Column Size
ALTER TABLE Employee
MODIFY (Designation VARCHAR2(50) NOT NULL);

SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEE'
AND COLUMN_NAME = 'DESIGNATION';

12. Retrieve Employees with Salary Greater Than or Equal to 45000
SELECT Emp_ID, Emp_Name, Department, Salary
FROM Employee
WHERE Salary >= 45000
ORDER BY Salary DESC, Emp_ID;

13. Delete a Selected Employee
DELETE FROM Employee
WHERE Emp_ID = 209;

SELECT COUNT(*) AS Total_Employees
FROM Employee;

COMMIT;

14. Delete Employee Based on Department and ID
DELETE FROM Employee
WHERE Department = 'Operations'
AND Emp_ID = 206;

SELECT Emp_ID, Emp_Name, Department
FROM Employee
ORDER BY Emp_ID;

COMMIT;

15. Display Final Payroll Records
SELECT Emp_ID, Emp_Name, Department, Salary, Email
FROM Employee
ORDER BY Emp_ID;

16. Display Final Employee Count
SELECT COUNT(*) AS Final_Count
FROM Employee;

17. Display Sales Employees and Their Salaries
SELECT Emp_Name, Salary
FROM Employee
WHERE Department = 'Sales'
ORDER BY Emp_ID;

18. Display All Employee Table Columns
SELECT COLUMN_NAME, DATA_TYPE, NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEE'
ORDER BY COLUMN_ID;



































