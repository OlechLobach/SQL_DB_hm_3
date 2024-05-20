USE Academy;
GO

INSERT INTO Faculties (Name) VALUES 
('Faculty of Science'),
('Faculty of Arts'),
('Faculty of Engineering');
GO

INSERT INTO Departments (FacultyId, Financing, Name) VALUES 
(1, 100000, 'Department of Mathematics'),
(2, 150000, 'Department of History'),
(3, 120000, 'Department of Computer Science');
GO

INSERT INTO Teachers (DepartmentId, EmploymentDate, Name, Premium, Salary, Surname) VALUES 
(1, '2005-09-01', 'John', 2000, 50000, 'Doe'),
(2, '2010-06-15', 'Jane', 2500, 55000, 'Smith'),
(3, '2018-03-12', 'Alice', 3000, 60000, 'Johnson');
GO

INSERT INTO Groups (Name, Rating, Year) VALUES 
('Group1', 4, 2),
('Group2', 5, 3),
('Group3', 3, 1);