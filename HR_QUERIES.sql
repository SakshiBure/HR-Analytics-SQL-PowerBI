-----------------HR Analytics Question Set (SQL Practice)---------------------
--1. Find the total number of employees in the company.
select count(*)as"No of Employees" from Employees
--2. Calculate the number of employees in each department.
select department_name,count(*)as"No of employee" from Departments group by department_name
--3. Find the average salary of employees by department.
select d.department_name,avg(salary)as"Average_salary" from Employees e join Departments d on e.department_id=d.department_id group by d.department_name
--4. Identify the top 5 highest paid employees.
select top 5 employee_id,employee_name,salary from Employees order by salary desc
--5. Find employees who joined after the year 2020.
select * from Employees where year(hire_date)>2020
--6. Calculate the average performance rating for each department.
select department_name,avg(performance_rating)as"Average_rate" from Employees e join Departments d on e.department_id=d.department_id group by department_name
--7. Identify the department with the highest average salary.
select top 1 d.department_name,avg(salary)as"Average_salary" from Employees e join Departments d on e.department_id=d.department_id group by d.department_name order by Average_salary desc
--8. Find the gender distribution of employees.
select gender,count(*)as"Count of Gender" from Employees group by gender
--9. List employees whose salary is higher than the company average salary.
select * from Employees where salary> (select avg(salary)as"Average of salary " from Employees)
--10. Find the total number of employees in each city.
select city,count(*)as"Count_of_employees" from Employees group by city order by Count_of_employees desc
--11. Identify employees with the highest performance rating.
select * from Employees where performance_rating =5
--12. Find the number of employees who left the company (attrition).
select e.employee_id,* from Employees e join Attrition a on e.employee_id=a.employee_id where attrition_status='yes'
--13. Calculate attrition rate by department.
select d.department_name,count(a.employee_id)as"Attriton_emp",count(e.employee_id)as"Employee",
(count(a.employee_id)*100/count(e.employee_id))as"rate" from Departments d join Employees e 
on d.department_id=e.department_id join Attrition a on e.employee_id=a.employee_id and attrition_status='yes'group by department_name 
--14. Find employees aged between 25 and 35.
select * from Employees where age between 25 and 35
--15. Identify the department with the most employees.
SELECT TOP 1 d.department_name,COUNT(e.employee_id) AS Count_of_employees
FROM Employees e JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name ORDER BY Count_of_employees DESC;
--16. Find employees who joined in the last 2 years.
select * from Employees where hire_date >= dateadd(year,-2,getdate());
--17. Rank employees based on salary within each department.
SELECT employee_name,department_id,salary,RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank FROM Employees;
--18. Find employees whose performance rating is above 4.
select * from Employees where performance_rating > 4
--19. Identify departments with employees earning more than 70,000 salary.
select * from Employees where salary >= 70000
--20. Find the average age of employees in each department.
SELECT d.department_name,AVG(e.age) AS average_age FROM Employees e 
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;