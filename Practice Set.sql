CREATE DATABASE Practice;
USE Practice;


CREATE TABLE Employee(
worker_id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
First_name VARCHAR(20),
Last_name VARCHAR(20),
Salery INT,
Joining_Date DATE,
Deparment VARCHAR(30));


CREATE TABLE Employee_Family(
Family_id INT,
Members INT,
Location VARCHAR(30),
FOREIGN KEY(Family_id ) REFERENCES Employee(worker_id) ON DELETE CASCADE
);


CREATE TABLE Employee_Allownce(
worker_id INT,
Amount INT,
FOREIGN KEY(worker_id) REFERENCES Employee(worker_id) ON DELETE CASCADE
);


INSERT INTO Employee (First_name, Last_name, Salery, Joining_Date, Deparment)
VALUES
('Ali', 'Haider', 100000, '2023-09-10', 'Testing'),
('Saad', 'Ali', 40000, '2022-09-12', 'Marketing'),
('Ahmed', 'Khan', 55000, '2021-06-15', 'HR'),
('Zara', 'Hussain', 65000, '2020-08-10', 'Finance'),
('Usman', 'Raza', 75000, '2019-07-05', 'IT'),
('Sana', 'Malik', 48000, '2023-04-22', 'Sales'),
('Bilal', 'Sheikh', 59000, '2022-12-11', 'Testing'),
('Ayesha', 'Khan', 62000, '2021-09-30', 'HR'),
('Hassan', 'Ali', 68000, '2020-11-18', 'IT'),
('Fatima', 'Shah', 70000, '2019-10-07', 'Marketing'),
('Hamza', 'Rafique', 53000, '2023-03-25', 'Finance'),
('Noor', 'Amin', 72000, '2022-01-13', 'HR'),
('Imran', 'Khalid', 80000, '2021-05-20', 'Sales'),
('Mehreen', 'Iqbal', 65000, '2020-02-28', 'Marketing'),
('Fahad', 'Javed', 78000, '2019-09-19', 'IT'),
('Nida', 'Siddiqui', 47000, '2023-07-08', 'Finance'),
('Zubair', 'Ahmed', 69000, '2022-06-14', 'Testing'),
('Laiba', 'Kamran', 55000, '2021-10-21', 'HR'),
('Tariq', 'Mehmood', 72000, '2020-12-17', 'Sales'),
('Bushra', 'Farooq', 60000, '2019-11-03', 'IT'),
('Asad', 'Raza', 75000, '2023-08-15', 'Marketing');


INSERT INTO Employee_Family (Family_id, Members, Location)
VALUES
  (1, 4, 'Karachi'),
  (2, 3, 'Lahore'),
  (3, 5, 'Islamabad'),
  (4, 2, 'Peshawar'),
  (5, 3, 'Quetta'),
  (6, 4, 'Multan'),
  (7, 3, 'Faisalabad'),
  (8, 5, 'Sialkot'),
  (9, 4, 'Gujranwala'),
  (10, 3, 'Abbottabad');
  
  
INSERT INTO Employee_Allownce (worker_id, Amount)
VALUES
  (1, 5000),
  (3, 7000),
  (5, 6000),
  (7, 8000),
  (9, 5500),
  (12, 9000),
  (15, 6500),
  (18, 7500),
  (20, 8000),
  (21, 8500);

-- Change the name of the columns in the empolyee table
ALTER TABLE Employee CHANGE COLUMN Deparment Department VARCHAR(30);
ALTER TABLE Employee CHANGE COLUMN Salery Salary INT;
SELECT * FROM Employee;
SELECT * FROM Employee_Family;
SELECT * FROM Employee_Allownce;





-- Q-1. Write an SQL query to fetch “First_name” from the Employee table using the alias name as <EMPLOYEE_NAME>.
SELECT First_name AS EMPLOYEE_NAME FROM Employee;
-- Q-2. Write an SQL query to fetch “First_name” from the Employee table in upper case.
SELECT UPPER(First_name) FROM Employee;
-- Q-3. Write an SQL query to fetch the unique values of Department from the Employee table.
SELECT DISTINCT Department FROM Employee;
-- Q-4. Write an SQL query to print the first three characters of First_name from the Employee table.
SELECT First_name FROM Employee LIMIT 3;
SELECT LEFT(First_name,3) FROM Employee;
-- Q-5. Write an SQL query to find the position of the alphabet ('b' or 'B') in the First_name of an employee (e.g., for the employee with First_name 'Bilal').
SELECT First_name FROM Employee WHERE First_name LIKE "B%" OR "b%";
-- Q-6. Write an SQL query to print the First_name from the Employee table after removing trailing (right side) white spaces.
SELECT RTRIM(First_name) FROM Employee;
-- Q-7. Write an SQL query to print the Department from the Employee table after removing leading (left side) white spaces.
SELECT LTRIM(Department) FROM Employee;
-- Q-8. Write an SQL query to fetch the unique values of Department from the Employee table and print the length of each department name.
SELECT DISTINCT LENGTH(Department) FROM Employee;
-- Q-9. Write an SQL query to print the First_name from the Employee table after replacing 'a' with 'A'.
SELECT REPLACE(First_name,'a','A') FROM Employee;
-- Q-10. Write an SQL query to print the First_name and Last_name from the Employee table as a single column COMPLETE_NAME (with a space separating them).
SELECT CONCAT(First_name, " ",Last_name) FROM Employee;
-- Q-11. Write an SQL query to print all details from the Employee table ordered by First_name in ascending order.
SELECT *  FROM Employee ORDER BY First_name;
-- Q-12. Write an SQL query to print all details from the Employee table ordered by First_name in ascending order and Department in descending order.
SELECT * FROM Employee ORDER BY First_name ASC;
SELECT * FROM Employee ORDER BY Department DESC;
-- Q-13. Write an SQL query to print details for Employees with the First_name 'Ali' and 'Zara'.
SELECT * FROM Employee WHERE First_name IN ('Ali','Zara');
-- Q-14. Write an SQL query to print details of Employees excluding those with First_name 'Ali' and 'Zara'.
SELECT * FROM Employee WHERE First_name NOT IN ('Ali','Zara');
-- Q-15. Write an SQL query to print details of Employees whose Department name starts with 'Test' (e.g., 'Testing').
SELECT * FROM Employee WHERE Department LIKE "Test%";
-- Q-16. Write an SQL query to print details of Employees whose First_name contains the letter 'a'.
SELECT * FROM Employee WHERE First_name LIKE '%a%';
-- Q-17. Write an SQL query to print details of Employees whose First_name ends with the letter 'a'.
SELECT * FROM Employee WHERE First_name LIKE '%a';
-- Q-18. Write an SQL query to print details of Employees whose First_name ends with 'h' and contains exactly six characters.
SELECT * FROM Employee WHERE First_name LIKE '-----h';
-- Q-19. Write an SQL query to print details of Employees whose Salary lies between 50000 and 75000.
SELECT * FROM Employee WHERE Salary BETWEEN 50000 AND 75000;
-- Q-20. Write an SQL query to print details of Employees who have joined in the year 2023.
SELECT * FROM Employee WHERE YEAR(Joining_Date)= 2023;
-- Q-21. Write an SQL query to fetch the count of employees working in the 'HR' department.
SELECT Department ,COUNT(*) FROM Employee GROUP BY Department HAVING Department LIKE 'HR';
-- Q-22. Write an SQL query to fetch the full names of Employees (concatenating First_name and Last_name) with Salary between 50000 and 80000.
SELECT CONCAT(First_name ," " ,Last_name) AS Full_Name FROM Employee WHERE Salary BETWEEN 50000 AND 80000;
-- Q-23. Write an SQL query to fetch the number of employees for each Department, ordered by the number of employees in descending order.
SELECT Department,COUNT(*) FROM Employee GROUP BY Department ORDER BY COUNT(*) DESC;
-- Q-24. Write an SQL query to print details of Employees who receive an allowance (join Employee with Employee_Allownce).
SELECT e.*,a.Amount FROM Employee_Allownce AS a LEFT JOIN Employee AS e ON a.worker_id=e.worker_id;
-- Q-25. Write an SQL query to fetch those Salary values that appear more than once in the Employee table.
SELECT Salary FROM Employee GROUP BY Salary HAVING COUNT(*)>1;
-- Q-26. Write an SQL query to show only odd rows from the Employee table (using worker_id).
SELECT * FROM Employee WHERE worker_id%2!=0;
-- Q-27. Write an SQL query to show only even rows from the Employee table (using worker_id).
SELECT * FROM Employee WHERE worker_id%2=0;
-- Q-28. Write an SQL query to clone the Employee table (create a new table with the same structure and data).
CREATE TABLE Temp_Employee LIKE Employee;
SELECT * FROM Temp_Employee;
DROP TABLE Temp_Employee;
-- Q-29. Write an SQL query to fetch the intersecting records of two tables (e.g., records that appear in both Employee and Employee_Family based on worker_id).
SELECT Employee.*,Employee_Family.* FROM Employee LEFT JOIN Employee_Family ON Employee.worker_id=Employee_Family.Family_id
UNION
SELECT Employee.*,Employee_Family.* FROM Employee RIGHT JOIN Employee_Family ON Employee.worker_id=Employee_Family.Family_id;
-- Q-30. Write an SQL query to show records from the Employee table that do not have a corresponding record in the Employee_Allownce table.
SELECT Employee.* FROM Employee LEFT JOIN Employee_Allownce ON Employee.worker_id=Employee_Allownce.worker_id WHERE Employee_Allownce.worker_id IS NULL;
-- Q-31. Write an SQL query to show the current date and time.
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
-- Q-32. Write an SQL query to show the top 5 records from the Employee table ordered by descending Salary.
SELECT  * FROM Employee ORDER BY Salary DESC LIMIT 5;
-- Q-33. Write an SQL query to determine the 5th highest Salary from the Employee table using the LIMIT clause.
SELECT  * FROM Employee ORDER BY Salary DESC LIMIT 6,1;
-- Q-34. Write an SQL query to determine the 5th highest Salary from the Employee table without using the LIMIT keyword.
SELECT *
FROM Employee e1
WHERE 4 = (
  SELECT COUNT(DISTINCT Salary)
  FROM Employee e2
  WHERE e2.Salary > e1.Salary
);

-- Q-35. Write an SQL query to fetch the list of Employees who have the same Salary (list duplicate salary records).
SELECT * FROM Employee WHERE Salary IN (SELECT Salary FROM Employee GROUP BY Salary HAVING COUNT(*)>1);
-- Q-36. Write an SQL query to show the second highest Salary from the Employee table using a sub-query.
SELECT * FROM Employee WHERE Salary = (SELECT DISTINCT Salary FROM Employee  ORDER BY Salary DESC LIMIT 1 OFFSET 1 ); 
SELECT DISTINCT Salary FROM Employee  ORDER BY Salary DESC;
-- Q-37. Write an SQL query to show one row twice in the result set from the Employee table.
SELECT * FROM Employee UNION ALL SELECT * FROM Employee;
-- Q-38. Write an SQL query to list worker_id of Employees who do not have any corresponding record in the Employee_Family table.
SELECT Employee.* FROM Employee LEFT JOIN  Employee_Family  ON Employee.worker_id=Employee_Family.Family_id WHERE Employee_Family.Family_id IS NULL;
-- Q-39. Write an SQL query to fetch the first 50% of records from the Employee table (based on worker_id or any ordering).
SELECT *
FROM Employee
ORDER BY worker_id
LIMIT 10;


-- Q-40. Write an SQL query to fetch the Departments that have less than 4 Employees.
SELECT Department ,Count(*) FROM Employee GROUP BY Department HAVING COUNT(Department)<4;
-- Q-41. Write an SQL query to show all Departments along with the number of Employees in each.
SELECT Department ,Count(*) FROM Employee GROUP BY Department ;
-- Q-42. Write an SQL query to show the last record from the Employee table.
SELECT * FROM Employee LIMIT 20,1;
-- Q-43. Write an SQL query to fetch the first row from the Employee table.
SELECT * FROM Employee LIMIT 1;
-- Q-44. Write an SQL query to fetch the last five records from the Employee table.
SELECT * FROM Employee LIMIT 16,5;
-- Q-45. Write an SQL query to print the name(s) of the Employee(s) having the highest Salary in each Department.
SELECT * FROM  Employee WHERE (Department , Salary) IN (SELECT Department,MAX(Salary) FROM Employee GROUP BY Department);
SELECT Department,MAX(Salary) FROM Employee GROUP BY Department;
-- Q-46. Write an SQL query to fetch three maximum Salary values from the Employee table using a co-related subquery.
SELECT e1.*
FROM Employee e1
WHERE Salary = (
    SELECT MAX(e2.Salary)
    FROM Employee e2
    WHERE e2.Department = e1.Department
);
-- Q-47. Write an SQL query to fetch three minimum Salary values from the Employee table using a co-related subquery.
SELECT e1.*
FROM Employee e1
WHERE Salary = (
    SELECT MIN(e2.Salary)
    FROM Employee e2
    WHERE e2.Department = e1.Department
);
-- Q-48. Write an SQL query to fetch the nth highest Salary from the Employee table (replace n with any number).
SELECT * FROM Employee ORDER BY Salary DESC  LIMIT n,1;
-- Q-49. Write an SQL query to fetch each Department along with the total Salaries paid for that Department.
SELECT Department , SUM(Salary) FROM Employee GROUP BY Department ;
-- Q-50. Write an SQL query to fetch the names of Employees who earn the highest Salary in the company.
SELECT CONCAT(First_name," ",Last_name) ,Salary FROM Employee ORDER BY Salary DESC;







