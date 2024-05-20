CREATE DATABASE Academy;
GO

USE Academy;
GO

CREATE TABLE Faculties (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (Name != '')
);
GO

CREATE TABLE Departments (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    FacultyId INT NOT NULL,
    Financing MONEY NOT NULL DEFAULT 0 CHECK (Financing >= 0),
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (Name != ''),
    FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
);
GO

CREATE TABLE Teachers (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    DepartmentId INT NOT NULL,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    Name NVARCHAR(MAX) NOT NULL CHECK (Name != ''),
    Premium MONEY NOT NULL DEFAULT 0 CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL CHECK (Surname != ''),
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);
GO

CREATE TABLE Groups (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Name NVARCHAR(10) NOT NULL UNIQUE CHECK (Name != ''),
    Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5),
    Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5)
);