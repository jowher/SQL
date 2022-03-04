Table: Employee
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.

Write an SQL query to report the second highest salary from the Employee table.
If there is no second highest salary, the query should report null.

Example 1:
Input:
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
Output:
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

ANSWER:
#approach1:  
Select max(salary) from Employee where salary < (Select max(salary) from Employee);

#approach2: 
Select max(E1.salary) as SecondHighestSalary from Employee E1 Join Employee E2 on E1.salary < E2.salary
