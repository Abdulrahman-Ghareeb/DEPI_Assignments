--Q1
SELECT employee_id, last_name, salary FROM employees
WHERE salary BETWEEN 2000 AND 5000 AND manager_id NOT IN (101, 200);

--Q2
select e.first_name,e.last_name,d.department_name  from employees e join departments d on e.department_id=d.department_id order by d.department_name

--Q3
select department_id,count(*) as "Number of employees",avg(salary) as "Average Salary" from employees group by department_id