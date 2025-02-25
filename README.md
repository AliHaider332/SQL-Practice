# SQL Practice Session

This project contains SQL practice exercises to help beginners learn SQL easily.

## What is in this Project?
- **Creating a Database and Tables**
- **Inserting Data into Tables**
- **Running Basic and Advanced Queries**
- **Using Joins, Subqueries, and Functions**

## How to Use This Project
1. **Create the Database:**
   ```sql
   CREATE DATABASE Practice;
   USE Practice;
   ```

2. **Create Tables:**
   ```sql
   CREATE TABLE Employee(
     worker_id INT PRIMARY KEY AUTO_INCREMENT,
     First_name VARCHAR(20),
     Last_name VARCHAR(20),
     Salary INT,
     Joining_Date DATE,
     Department VARCHAR(30)
   );
   ```
   ```sql
   CREATE TABLE Employee_Family(
     Family_id INT,
     Members INT,
     Location VARCHAR(30),
     FOREIGN KEY(Family_id) REFERENCES Employee(worker_id) ON DELETE CASCADE
   );
   ```

3. **Insert Data:**
   Add sample data into the tables (provided in `Practice Set.sql`).

4. **Run SQL Queries:**
   - **Get all Employee names:**
     ```sql
     SELECT First_name FROM Employee;
     ```
   - **Get Employees with highest salary:**
     ```sql
     SELECT * FROM Employee WHERE Salary = (SELECT MAX(Salary) FROM Employee);
     ```
   - **Find the number of employees in each department:**
     ```sql
     SELECT Department, COUNT(*) FROM Employee GROUP BY Department;
     ```
   - **Join Employee and Employee_Family tables:**
     ```sql
     SELECT e.First_name, e.Last_name, f.Members
     FROM Employee e
     JOIN Employee_Family f ON e.worker_id = f.Family_id;
     ```

## How to Run the SQL Scripts
1. Open **MySQL Workbench** or any SQL tool.
2. Copy and paste the SQL commands.
3. Run the commands step by step.

## Why Use This Project?
- Easy-to-understand SQL practice.
- Covers important topics like queries, joins, and subqueries.
- Helps in learning SQL for data analysis and development.

Enjoy practicing SQL!

