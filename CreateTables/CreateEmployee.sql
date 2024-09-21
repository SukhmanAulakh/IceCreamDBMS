--Create Customer Table
CREATE TABLE Employee (
    Emp_ID INTEGER PRIMARY KEY,
    Emp_Name VARCHAR2(25) NOT NULL,
    Emp_Position VARCHAR2(25),
    Emp_Shift VARCHAR2(25),
    Emp_JoinDate DATE,
    Emp_Salary VARCHAR2(25)
    Emp_DateOfBirth DATE
);