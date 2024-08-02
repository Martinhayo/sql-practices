use companydb;
select employees.FirstName,Employees.LastName,Department.DepartmentName
From Employees
INNER JOIN Department ON Employees.DepartmentID=Department.departmentID;

select employees.employeeID,Employees.FirstName,Employees.LastName,
project.projectID,project.projectName
FROM Employees
cross join project;