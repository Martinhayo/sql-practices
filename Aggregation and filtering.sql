USE Companydb;

select SUM(salary) as TotalSalary 
from data;

select avg(salary) as avgSalary 
from data;

select departmentID,MAX(HireDate) as LatestHireDate
from employees
group by DepartmentID;
-- Filterig
SELECT* FROM data
where salary>70000;

-- select the departmentID and the count of employees foe eac department
select departmentID,COUNT(*) AS EmployeeCount
from employees
group by departmentID
HAVING COUNT(*)>=2;

SELECT* FROM data
where department="hr" and salary>=50000;

SELECT* FROM data
where department="hr" or salary>=50000;

SELECT* FROM data
where not department="hr";

SELECT* FROM Employees
where departmentID IN (101,102,103);

SELECT* FROM data
where salary between 60000 and 70000;

SELECT* FROM data
where salary between 60000 and 70000;

SELECT* FROM employees
where FirstName like 'O%';


