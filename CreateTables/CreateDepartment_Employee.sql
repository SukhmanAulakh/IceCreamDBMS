-- Create Table to link specific Department with the Employees that are apart of it
CREATE TABLE Department_Employee (
    Department_ID NUMBER(15,0),
    Employee_ID NUMBER(15,0),
    Start_Date DATE,
    PRIMARY KEY (Employee_ID, Department_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);