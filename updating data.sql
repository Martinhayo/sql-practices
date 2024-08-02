use companydb;
update Employees SET LastName='Ndegwa' where EmployeeID=1;
update project SET projectName='project'  where projectID=1005;

DELETE FROM Employees where EmployeeID=10;
INSERT INTO Employees(EmployeeID,FirstName,LastName,DepartmentID,HireDate) VALUES
(11,'kiplagat','kosgei',104,'2024-01-01');
INSERT INTO Employees(EmployeeID,FirstName,LastName,DepartmentID,HireDate) VALUES
(12,'martin','hayo',105,'2024-01-01');

ALTER TABLE Employees ADD Email varchar(100);
select* from employees;
alter table Employees drop column email;
select* from employees;
select DepartmentID, COUNT(*) As EmployeeCount
FROM Employees
GROUP BY DepartmentID;