use employees;

# 1. Count the number of employees 300024
SELECT COUNT(emp_no)
FROM employees;

# 2. Output current name of all departments 
Select dept_name from departments;

# 3. How many employees are in finance?
Select count(emp_no)
from dept_emp 
where dept_no = 'd002';

# 4. How many women work in development?
 Select count(*), gender
 from employees, dept_emp 
 where dept_emp.emp_no = employees.emp_no and gender = 'F' and dept_no = 'd005';
 
# 5. What is the top salary in the company? 
Select max(salary) from salaries; 

# 6. What is the average salary for Marketing? d001
Select avg(salary), dept_no 
from salaries, dept_emp
where dept_emp.emp_no = salaries.emp_no and dept_no = 'd001';

# 7. What is the lowest salary in the company, who is it and what is their title and department? 
Select salary, first_name, title, dept_name 
from salaries, employees, titles, departments, dept_emp 
where employees.emp_no=salaries.emp_no AND employees.emp_no = titles.emp_no AND employees.emp_no=dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no AND salary = (select min(salary) from salaries) ;

# 8. Who is the oldest person at the company and what is their age? 
Select min(birth_date) as birth_date, first_name, last_name 
from employees 
group by birth_date, first_name, last_name ;

