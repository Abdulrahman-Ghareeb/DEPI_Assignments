--Q1) Write a SQL query to retrieve all employees who were hired within the last 30 days from the current date. 
select * from employees where day(DATEDIFF(day,getdate(), hire_date))<30


--Q2) Create a stored procedure named sp_get_employee_hours that retrieves the first name, last name, and total hours worked on projects for a given employee ID
CREATE or ALTER PROCEDURE sp_get_employee_hours(@emp_id int) as begin
select e.first_name as fname,e.last_name as lname,sum(datediff(day,start_date,end_date))*24 as total_Hour from employees e ,job_history j where e.employee_id=@emp_id and e.employee_id=j.employee_id group by e.first_name,e.last_name
end
EXEC sp_get_employee_hours @emp_id = 101;

--Q3)Create a stored procedure named sp_department_employee_count that retrieves the department ID, department name, and the number of employees in each department, but only for departments with more than 5 employ
CREATE or ALTER PROCEDURE sp_department_employee_count as BEGIN
select d.department_id,d.department_name, COUNT(*) AS employee_count from departments d join employees e on d.department_id=e.department_id
group by d.department_id,d.department_name having COUNT(*)>5;
end
exec sp_department_employee_count