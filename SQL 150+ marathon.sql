-- Q1. Select all data from employees.
SELECT * from employees ;

-- Q2. Select only name and salary from employees.
SELECT name ,salary from employees ;

-- Q3. Get unique city values.
SELECT DISTINCT city from employees ;

-- Q4. Sort employees by name in ascending order.
SELECT * from employees ORDER BY name ASC;

-- Q5. Select employees with salary greater than 25,000.
SELECT * from employees WHERE salary > 25000 ;

-- Q6. Select employees whose salary is between 20,000 and 40,000.
SELECT * from employees WHERE salary between 20000 AND 40000;

-- Q7. Select employees from city 'Delhi'.
SELECT * FROM employees WHERE city = 'Delhi' ;

-- Q8. Select employees NOT from 'Mumbai'.
SELECT * FROM employees WHERE city <> 'Mumbai' ;

-- Q9. Select employees where department is 'HR' OR 'IT'.
SELECT * FROM employees WHERE department = 'HR' OR department = 'IT';

-- Q10. Select employees where department is NOT 'HR'.
SELECT * FROM employees WHERE department <> 'HR';

-- Q11. Use IN to get employees from 'Delhi', 'Noida', 'Gurgaon'.
SELECT * FROM employees WHERE city IN ('Delhi' , 'Noida' , 'Gurgaon') ;

-- Q12. Use NOT IN for same cities.
SELECT * FROM employees WHERE city NOT IN ('Delhi' , 'Noida' , 'Gurgaon') ;

-- Q13. Find employees whose name starts with 'S'.
SELECT * FROM employees WHERE name LIKE 's%' ;

-- Q14. Find employees whose name ends with 'a'.
SELECT * FROM employees WHERE name LIKE '%a' ;

-- Q15. Find employees whose name contains 'ar'.
SELECT * FROM employees WHERE name LIKE '%ar%' ;

-- Q16. Delete all records but keep table structure.
DELETE FROM employees;

-- Q17. Remove table completely.
DROP TABLE employees;

-- Q18. Add a new column age INT in employees table.
ALTER TABLE employees ADD age INT;

-- Q19. Get employees from 'HR' or 'Finance'.
SELECT * FROM employees WHERE department = 'HR' OR department = 'Finance' ;

-- Q20. Get employees NOT from 'Delhi' and salary > 30,000.
SELECT * FROM employees WHERE city != 'Delhi' AND salary > 30000 ;

-- Q21. Get employees whose department is NOT 'HR' or 'IT'.
SELECT * from employees WHERE department not in ('HR' , 'IT') ;

-- Q22. Get employees from 'Delhi' or 'Mumbai' AND salary > 40,000.
SELECT * from employees where city IN ('Delhi' , 'Mumbai') AND salary > 40000 ;

-- Q23. SELECT * FROM employees WHERE city = 'Delhi' OR 'Mumbai';
SELECT * FROM employees WHERE city = 'Delhi' OR city = 'Mumbai';

-- Q24. SELECT * FROM employees WHERE salary > 30000 AND 50000;
SELECT * FROM employees WHERE salary between 30000 And 50000;

-- Q25. SELECT * FROM employees WHERE department <> 'HR' OR 'IT';
SELECT * FROM employees WHERE department NOT IN ('HR','IT');

-- Q26. Delete all records (normal way)
DELETE from employees ;

-- Q27. Delete all records (fast way)
TRUNCATE TABLE employees ;

-- Q28. Delete table completely
DROP table employees ;

-- Q29. Add column phone VARCHAR(15)
alter table employees ADD phone VARCHAR(15) ;

-- Q30. Employees whose name starts with 'A' and city is 'Delhi'
SELECT * FROM employees WHERE name LIKE 'A%' AND city = 'Delhi' ;

-- Q31. Employees whose salary is between 20k–50k and NOT in 'HR'
SELECT * FROM employees where salary between 20000 AND 50000 AND department != 'HR';

-- Q32. Employees from 'Delhi', 'Noida' but NOT 'HR'
SELECT * from employees where city IN ('Delhi' , 'Noida') and department != 'HR' ;

-- Q33. Get employees from 'Delhi' OR 'Mumbai' whose salary is greater than 50,000.
SELECT * FROM employees where city IN ('Delhi' , 'Mumbai') AND salary > 50000 ;

-- Q34. Get employees from 'HR' OR 'IT' AND salary > 40,000.
SELECT * FROM employees
WHERE department = 'HR' OR (department = 'IT' AND salary > 40000);

-- Q35. Get employees NOT from 'Delhi' OR whose salary is less than 20,000.
SELECT * from employees where city != 'Delhi' or salary < 20000 ;

-- Q36. Get employees whose city is NOT in ('Delhi', 'Mumbai') and salary between 30,000–60,000.
SELECT * FROM employees where city NOT IN ('Delhi' , 'Mumbai') AND salary BETWEEN 30000 And 60000 ;

-- Q37. Get employees whose department is in ('HR', 'Finance') and NOT from 'Noida'.
Select * from employees where department IN ('HR', 'Finance') AND city != 'Noida' ;

-- Q38. Get employees whose salary is NOT between 20,000 and 40,000.
SELECT * from employees where salary not BETWEEN 20000 and 40000 ;

-- Q39. Names starting with 'A' and ending with 'n'.
select * from employees where name LIKE 'A%' and name like '%n' ;

-- Q40. Names where second letter is 'a'.
SELECT * FROM employees WHERE name LIKE '_a%';

-- Q41. Names with exactly 5 characters.
SELECT * FROM employees WHERE name LIKE '_____';

-- Q42. Employees from 'Delhi' or 'Noida', salary > 30,000, and NOT in 'HR'.
select * from employees where city IN ('Delhi' , 'Noida') AND salary > 30000 AND department != 'HR' ;

-- Q43. Employees whose name contains 'ar', city is 'Mumbai', and salary between 20k–50k.
select * from employees where name LIKE '%ar%' AND city = 'Mumbai' AND salary between 20000 And 50000 ;

-- Q44. Employees NOT from 'Delhi' AND NOT from 'Mumbai' AND department is 'IT'.
select * from employees where city NOT in ('Delhi' , 'Mumbai') AND department = 'IT' ;

-- Q45. Remove only employees with salary < 20,000.
Delete from employees where salary < 20000 ;

-- Q46. Remove all data quickly from table.
TRUNCATE TABLE employees ;

-- Q47. Delete table if it exists. (slightly advanced)
DROP table if exists employees ;

-- Q48. Find the maximum salary in the company.
select max(salary) as max_salary from employees ;

-- Q49. Find the minimum age of employees.
select min(age) as min_age from employees ;

-- Q50. Calculate the average salary.
select avg(salary) as avg_salary from employees ;

-- Q51. Find the total salary payout.
select sum(salary) as total_salary from employees ;

-- Q52. Count the total number of employees.
select count(*) as total_employees from employees ;

-- Q53. Count employees with salary > 50,000.
select count(*) as employees_above_50k from employees where salary > 50000 ;

-- Q54. Find average salary of employees in 'IT' department.
select avg(salary) as avg_salary_it from employees where department = 'IT';

-- Q55. Find the highest salary where age < 30.
select max(salary) as max_salary_under_30 from employees where age < 30 ;

-- Q56. Count employees whose age is between 25 and 35.
select count(*) as employees_25_35 from employees where age between 25 AND 35 ;

-- Q57. Find average salary per department.
select department, avg(salary) as avg_salary from employees group by department ;

-- Q58. Find total salary per department.
select department, sum(salary) as total_salary from employees group by department ;

-- Q59. Count number of employees in each department.
select department, count(*) as total_employees from employees group by department ;

-- Q60. Find maximum salary in each department.
select department, max(salary) as max_salary from employees group by department ;

-- Q61. Find departments where average salary > 60,000.
select department, avg(salary) as avg_salary from employees group by department having avg(salary) > 60000 ;

-- Q62. Show departments having more than 3 employees.
select department, count(*) as total_employees from employees group by department having count(*) > 3 ;

-- Q63. Find departments where total salary > 200,000.
select department, sum(salary) as total_salary from employees group by department having sum(salary) > 200000;

-- Q64. Find the second highest salary.
select max(salary) as second_highest from employees where salary < (select max(salary) from employees) ;

-- Q65. Count how many employees have the same salary (duplicate salaries).
select salary, count(*) as total from employees group by salary having count(*) > 1;

-- Q66. Find departments where minimum salary > 30,000.
select department, min(salary) as min_salary from employees group by department having min(salary) > 30000 ;

-- Q67. Find the difference between max salary and min salary.
select max(salary) - min(salary) as salary_difference from employees ;

-- Q68. Show department and average salary as:
select department as dept_name, avg(salary) as avg_salary from employees group by department ;

-- Q69. Find employees whose salary is greater than average salary.
select * from employees where salary > (select avg(salary) from employees) ;

-- Q70. Find the department with the highest average salary.
select department from employees group by department order by avg(salary) desc limit 1 ;

-- Q71. Table: orders
SELECT customer_id, SUM(amount) AS total_amount
FROM orders
WHERE order_date > '2023-01-01'
GROUP BY customer_id
HAVING COUNT(order_id) >= 3
AND SUM(amount) > 5000;

-- Q72. Table: employees
select department , avg(salary)
from employees
GROUP by department
having avg(salary) > 60000
and count(emp_id) >= 5;

-- Q73. Create a table called employees
Create table employees (
id integer,
name varchar (50),
salary integer
);

-- Q74. Insert 3 records into the employees table.
insert into employees (id , name , salary) values (1,'payal',20000);
insert into employees (id , name , salary) values (2,'nikki',20400);
insert into employees (id , name , salary) values (3,'neha',30000);

-- Q75. Update the salary of employee with id = 2 to 50000.
update employees set salary = 50000 where id = 2;

-- Q76. Delete the employee whose id = 3.
delete from employees where id = 3;

-- Q77. Select all employees whose salary is between 30000 and 60000.
Select * from employees where salary between 30000 and 60000;

-- Q78. Select employees whose name starts with letter 'A'.
select * from employees where name like 'A%';

-- Q79. Select employees whose id is either 1, 3, or 5.
select * from employees where id in (1, 3, 5);

-- Q80. Select employees whose id is NOT 2 or 4.
select * from employees where id not in (2, 4);

-- Q81. Use alias to display:
select name as Employee_Name , salary as Employee_Salary from employees ;

-- Q82. Select employees:
select * from employees where salary > 30000 and name like 'S%';

-- Q83. Select employees:
select * from employees where salary < 25000 or name like 'R%';

-- Q84. Select employees:
select * from employees where salary <= 40000 ;

-- Q85. Find:
select min(salary) from employees ;
select max(salary) from employees ;

-- Q86. Find:total number of employees
select count(*) from employees;

-- Q87. Find: average salary
select avg(salary) from employees ;

-- Q88. Find: total salary paid
select sum(salary) from employees;

-- Q89. Display all employees:
select *from employees order by salary desc;

-- Q90. Select distinct salaries from the table.
select distinct salary from employees ;

-- Q91. Add a new column department (varchar 30) to employees table.
alter table employees add department varchar (30) ;

-- Q92. Select employees whose:
select * from employees where salary > 20000 and name not like 'N%';

-- Q93. Select employees:
select * from employees where salary not between 20000 and 40000;

-- Q94. Select employees:
select * from employees where name like '%a%' ;

-- Q95. Select employees:
select * from employees where id not in (1, 2, 3) and salary > 25000;

-- Q96. Find:
select max(salary) , min(salary) from employees;

-- Q97. Find:
select count(*) from employees where salary > 25000 ;

-- Q98. Find: total salary per department
select department , sum(salary) from employees group by department ;

-- Q99. Find: number of employees in each department
select department , count(*) from employees group by department ;

-- Q100. Find: average salary per department
select department , avg(salary) from employees group by department ;

-- Q101. Show departments:
select department ,sum(salary) from employees group by department having sum(salary) > 50000 ;

-- Q102. Show departments:
select department from employees group by department having count(*) > 2 ;

-- Q103. Show departments:
select department from employees group by department having avg(salary) < 30000 ;

-- Q104. Show departments:
select department from employees group by department having sum(salary) between 40000 and 80000 ;

-- Q105. Find: highest salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;

-- Q106. Show departments:
select department from employees group by department having max(salary) > 35000 ;

-- Q107. Select employees whose salary is greater than 40000.
select * from employees where salary > 40000 ;

-- Q108. Select employees whose name ends with 'a'.
select * from employees where name like '%a';

-- Q109. Select employees whose salary is between 25000 and 60000.
select * from employees where salary between 25000 and 60000;

-- Q110. Select employees whose id is not in (1, 3, 5).
select * from employees where id not in (1, 3, 5);

-- Q111. Select employees whose name contains 'an'.
select * from employees where name like '%an%';

-- Q112. Find maximum salary in each department.
select department , max(salary) from employees group by department;

-- Q113. Find minimum salary in each department.
select department , min(salary) from employees group by department ;

-- Q114. Find total salary in each department.
select department , sum(salary) from employees group by department;

-- Q115. Find number of employees in each department.
select department ,count(*) from employees group by department;

-- Q116. Find average salary in each department.
select department , avg(salary) from employees group by department;

-- Q117. Show departments where total salary is greater than 70000.
select department , sum(salary) from employees group by department having sum(salary) > 70000 ;

-- Q118. Show departments where average salary is greater than 35000.
select department, avg(salary) from employees group by department having avg(salary) > 35000;

-- Q119. Show departments where number of employees is equal to 2.
select department , count(*) from employees group by department having count(*) = 2;

-- Q120. Select employees whose salary is greater than the average salary of all employees.
select * from employees where salary > (SELECT AVG(salary) FROM employees);

-- Q121. Select employees whose salary is less than the maximum salary.
select * from employees where salary < (select max(salary) from employees);

-- Q122. Select employees whose name starts with 'S' and salary > 30000.
select * from employees where name like 'S%' and salary > 30000;

-- Q123. Select employees whose id is even number.
select * from employees where id % 2 = 0 ;

-- Q124. Select employees whose salary is not equal to 50000.
select * from employees where salary != 50000;

-- Q125. Find total employees whose salary is greater than 30000.
select count(*) from employees where salary > 30000;

-- Q126. Find highest salary in company.
select max(salary) from employees ;

-- Q127. Find lowest salary in company.
select min(salary) from employees ;

-- Q128. Show employees sorted by salary (high to low).
select * from employees order by salary desc ;

-- Q129. Select distinct salaries from employees table.
select distinct salary from employees ;

-- Q130. Add column city in employees table.
alter table employees add city varchar (50);

-- Q131. Update department of employee with id = 2 to 'IT'.
update employees set department = 'IT' where id = 2;

-- Q132. Select employees whose salary is greater than the average salary of all employees.
select * from employees where salary > (select avg(salary) from employees);

-- Q133. Show all employee names.
select name from employees ;

-- Q134. Show all columns from employees table.
select * from employees;

-- Q135. Show unique department IDs from employees.
select distinct department_id from employees;

-- Q136. Show employee names with alias as "Employee_Name".
select name as Employee_Name from employees;

-- Q137. Show employees with salary greater than 50000.
select * from employees where salary > 50000 ;

-- Q138. Show employees with salary between 30000 and 70000.
select * from employees where salary between 30000 and 70000;

-- Q139. Show employees whose name starts with 'A'.
select * from employees where name like 'A%';

-- Q140. Show employees whose name contains 'an'.
select * from employees where name like '%an%';

-- Q141. Show employees where department is 1 or 2.
select * from employees where department = 1 or department = 2;

-- Q142. Show employees with NULL department.
select * from employees where department is null;

-- Q143. Sort employees by salary in descending order.
select * from employees order by salary desc ;

-- Q144. Show top 3 highest paid employees.
select * from employees order by salary desc limit 3;

-- Q145. Count total number of employees.
select count(*) from employees;

-- Q146. Find average salary of employees.
select avg(salary) from employees;

-- Q147. Find maximum and minimum salary.
select max(salary) , min(salary) from employees;

-- Q148. Count employees in each department.
select department , count(*) from employees group by department;

-- Q149. Find average salary per department.
select department , avg(salary) from employees group by department ;

-- Q150. Show departments having more than 2 employees.
select department , count(*) from employees group by department having count(*) > 2;

-- Q151. Show employee name with department name.
SELECT name, department FROM employees;

-- Q152. Show all employees even if they don’t have a department.
select * from employees left join department on employees.department_id = department.department_id;

-- Q153. Show all departments even if they don’t have employees.
select * from employees right join department on employees.department_id = department.department_id;

-- Q154. Show employees who do not belong to any department.
select * from employees left join department on employees.department_id = department.department_id where department.department_id is null;

-- Q155. Show employees earning more than average salary.
select * from employees where salary > (select avg(salary) from employees);

-- Q156. Show employee(s) with highest salary.
select * from employees where salary = (select max(salary) from employees);

-- Q157. Show employees earning more than their department average salary.
select * from employees where salary > (select avg(salary) from employees where department = employees.department);

-- Q158. Create a CTE for employees with salary > 50000 and display result.
with cte_salary as (select * from employees where salary > 50000) select * from cte_salary;

-- Q159. Find second highest salary using CTE.
with cte_salary as (select distinct salary from employees ) select max(salary) from cte_salary where salary < (SELECT MAX(salary) FROM cte_salary);

-- Q160. Categorize employees:
select salary ,
case
when salary>50000 then 'High'
when salary between 20000 and 50000 then 'Medium'
else 'Low'
end as opt_salary
from employees;

-- Q161. Find duplicate employee names.
select name from employees group by name having count(name) > 1;

-- Q162. Show all duplicate rows.
select * from employees where name IN (select name from employees group by name having count(*) > 1);

-- Q163. Show top 2 highest paid employees in each department.
SELECT *
FROM employees as e1
WHERE (
SELECT COUNT(*)
FROM employees as e2
WHERE e2.department = e1.department
AND e2.salary > e1.salary
) < 2;

-- Q164. Find the second highest salary in the employees table (without using LIMIT).
with cte_salary as (select distinct salary from employees ) select max(salary) from cte_salary where salary < (SELECT MAX(salary) FROM cte_salary);

-- Q165. Find the third highest salary.
SELECT MAX(salary)
FROM employees
WHERE salary < (
SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees)
);

-- Q166. Show employees who earn the same salary as someone else.
SELECT * FROM employees
WHERE salary IN (
SELECT salary
FROM employees
GROUP BY salary
HAVING COUNT(*) > 1
);

-- Q167. Find employees whose salary is higher than their manager.
SELECT e.* FROM employees e
JOIN employees m
ON e.manager_id = m.id
WHERE e.salary > m.salary;

-- Q168. Show department-wise total salary.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Q169. Find the department with highest total salary.
SELECT department
FROM employees
GROUP BY department
ORDER BY SUM(salary) DESC
LIMIT 1;

-- Q170. Show employees who are not the highest paid in their department.
SELECT *
FROM employees e1
WHERE salary < (
SELECT MAX(salary)
FROM employees e2
WHERE e1.department = e2.department
);

-- Q171. Find employees who joined on the same date.
SELECT join_date, COUNT(*)
FROM employees
GROUP BY join_date
HAVING COUNT(*) > 1;

-- Q172. Find duplicate records based on name and department.
SELECT name, department, COUNT(*)
FROM employees
GROUP BY name, department
HAVING COUNT(*) > 1;

-- Q173. Show employees earning more than average salary of their department.
SELECT *
FROM employees e1
WHERE salary > (
SELECT AVG(salary)
FROM employees e2
WHERE e1.department = e2.department
);

-- Q174. Show employees who are the highest paid in their department.
SELECT *
FROM employees e1
WHERE salary = (
SELECT MAX(salary)
FROM employees e2
WHERE e1.department = e2.department
);

-- Q175. Find departments where average salary is greater than overall average salary.
SELECT department
FROM employees
GROUP BY department
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);

-- Q176. Show employees who belong to departments having more than 3 employees.
SELECT *
FROM employees
WHERE department IN (
SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 3
);

-- Q177. Use CTE to find employees with salary greater than department average.
WITH dept_avg AS (
SELECT department, AVG(salary) AS avg_sal
FROM employees
GROUP BY department
)
SELECT e.*
FROM employees e
JOIN dept_avg d
ON e.department = d.department
WHERE e.salary > d.avg_sal;

-- Q178. Use CTE to find second highest salary.
WITH sal AS (
SELECT DISTINCT salary FROM employees
)
SELECT MAX(salary)
FROM sal
WHERE salary < (SELECT MAX(salary) FROM sal);

-- Q179. Categorize employees:
SELECT *,
CASE
WHEN salary > 70000 THEN 'High'
WHEN salary BETWEEN 40000 AND 70000 THEN 'Medium'
ELSE 'Low'
END AS category
FROM employees;

-- Q180. Find employees with consecutive IDs.
SELECT e1.*
FROM employees e1
JOIN employees e2
ON e1.id = e2.id + 1;

-- Q181. Find missing IDs in sequence.
SELECT t1.id + 1 AS missing_id
FROM employees t1
LEFT JOIN employees t2
ON t1.id + 1 = t2.id
WHERE t2.id IS NULL;

-- Q182. Find top 3 departments with highest number of employees.
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
ORDER BY total DESC
LIMIT 3;
