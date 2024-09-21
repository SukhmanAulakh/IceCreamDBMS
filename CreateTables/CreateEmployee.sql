--Create Customer Table
CREATE TABLE Employee (
    Employee_ID NUMBER(15,0) PRIMARY KEY,
    Employee_Name VARCHAR2(25) NOT NULL,
    Employee_Position VARCHAR2(25),
    Employee_Shift VARCHAR2(25),
    Employee_JoinDate DATE,
    Employee_Salary NUMBER(15,0) NOT NULL,
    Employee_DateOfBirth DATE,
    Employee_Address VARCHAR2(50) NOT NULL,
    Employee_Email VARCHAR2(25),
    Employee_Phone VARCHAR2(25)
);