--Q1.1 
select * from employees;
--Q1.2 
SELECT emp_id, emp_name, dept_id FROM employeesWHERE location = 'Cairo';
 
 
--Q2
SELECT DISTINCT dept_id FROM employees;
 
  
--Q3.1
create table students(ID int primary key,First_Name varchar(50) not null,
Last_Name VARCHAR(50) DEFAULT 'Unknown', Address VARCHAR(100) DEFAULT 'N/A',
City VARCHAR(50) DEFAULT 'N/A', Birth_Date DATE);
--Q3.2
DROP TABLE students;


--Q4.1
insert into students(ID,First_Name,Last_Name,Address,City,Birth_date)
values (1,'Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01')
--Q4.2
update students set address='Garden City' where Last_Name='Ahmed'


--Q5
begin TRANSACTION
delete from students where city='cairo'
rollback