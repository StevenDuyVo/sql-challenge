drop table Employees
drop table Department
drop table DepartmentEmployees
drop table DepartmentManager
drop table Title
drop table Salary

CREATE TABLE Employees (
    "emp_no" INT PRIMARY KEY NOT NULL,
    "emp_title" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL
);
CREATE TABLE Department (
    "dept_name" VARCHAR PRIMARY KEY NOT NULL,
    "dept_no" VARCHAR NOT NULL
);
CREATE TABLE DepartmentEmployees (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL,
    PRIMARY KEY ("emp_no", "dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES Employees("emp_no")
);
CREATE TABLE DepartmentManager (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES Employees("emp_no")
);
CREATE TABLE Title (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL
);
CREATE TABLE Salary (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL,
    PRIMARY KEY ("emp_no", "salary"),
    FOREIGN KEY ("emp_no") REFERENCES Employees("emp_no")
);

--select * from Employees
--select * from Department
--select * from DepartmentEmployees
--select * from DepartmentManager
--select * from Title
--select * from Salary


SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
JOIN Salaries ON Employees.emp_no = Salaries.emp_no;