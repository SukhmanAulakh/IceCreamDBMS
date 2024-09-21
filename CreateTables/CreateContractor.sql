--Create Contractor Table
CREATE TABLE Contractor (
    Contractor_ID INTEGER PRIMARY KEY,
    Contractor_Name VARCHAR2(100) NOT NULL,
    Address VARCHAR2(500) NOT NULL,
    Contact_Person VARCHAR2(100),
    Email VARCHAR2(100),
    Phone VARCHAR2(20)
);

