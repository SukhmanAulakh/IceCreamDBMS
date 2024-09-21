-- Create Table to link specific Department with the Employees that are apart of it
CREATE TABLE Department_Employee (
    Department_ID INTEGER,
    Employee_ID INTEGER,
    Start_Date DATE,
    PRIMARY KEY (Employee_ID, Department_ID)
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);