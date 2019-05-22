CREATE TABLE Department
(
    ID INT NOT NULL IDENTITY(1,1),
    DepartmentName VARCHAR(50),
    DepartmentLocation VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Employee
(
    ID INT NOT NULL IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    SSN VARCHAR(50),
    DeptID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (DeptID) REFERENCES Department (ID)
);

CREATE TABLE EmpDetails
(
    ID INT NOT NULL IDENTITY(1,1),
    EmployeeID INT NOT NULL,
    Salary FLOAT,
    Address1 VARCHAR(50),
    Address2 VARCHAR(50),
    City VARCHAR(50),
    StateName VARCHAR(50),
    Country VARCHAR(50)
    PRIMARY KEY (ID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee (ID)
);

INSERT INTO Department
VALUES ('Computer Science', 'TMCB');

INSERT INTO Department
VALUES ('Biology', 'LSB');

INSERT INTO Department
VALUES ('Communication Disorders', 'MCKB');

INSERT INTO Employee
VALUES('John', 'Kauwe', '012-34-5678', 2);

INSERT INTO Employee
VALUES('Mark', 'Clement', '123-45-6789', 1);

INSERT INTO Employee
VALUES('Sandy', 'Alger', '234-56-7890', 3);

INSERT INTO EmpDetails
VALUES('1', 80000, 'College of Life Sciences', 'BYU', 'Provo', 'UT', 'USA');

INSERT INTO EmpDetails
VALUES('2', 100000, 'College of Math and Physics', 'BYU', 'Provo', 'UT', 'USA');

INSERT INTO EmpDetails
VALUES('3', 60000, '', 'College of Education', 'BYU', 'Jena', 'Germany', 'Thuringia', 'Germany');

INSERT INTO Department
VALUES('Marketing', null);

INSERT INTO Employee
VALUES('Tina', 'Smith', '456-78-9012', 4);

SELECT FirstName, LastName
FROM Department
WHERE DepartmentName = name

SELECT SUM(Salary)
FROM EmpDetails
WHERE DepartmentName = "Marketing;
