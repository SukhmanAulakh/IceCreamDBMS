--create department table
CREATE TABLE Department (
    Department_ID NUMBER(15,0) PRIMARY KEY,
    Department_Name VARCHAR2(25) NOT NULL,
    Department_Manager NUMBER(15,0),
    Number_Of_Employees NUMBER(15,0),
    FOREIGN KEY (Department_Manager) REFERENCES Employee(Employee_ID)
);