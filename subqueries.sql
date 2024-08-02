use Companydb;
alter table employees add salary decimal;
SET SQL_SAFE_UPDATES=0;
update Employees
SET salary= ROUND(RAND() * (80000-40000)+40000,2);

select* from companydb.employees;

set sql_safe_updates=1;

select DepartmentName,
(select count(*)
from employees
where employees.departmentID=Department.DepartmentID) As employeeCount
from department;

select* from Employees 
where salary=(select max(salary)
from Employees As e where e.departmentID=employees.departmentID);
SELECT DepartmentID,AverageSalary
from (select DepartmentID,AVG(Salary)As AverageSalary
from Employees
GROUP BY DepartmentID)AS avgsalaries
where AverageSalary >50000;