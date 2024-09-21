--Create Contractor Table
CREATE TABLE Contractor (
    Contractor_ID NUMBER(15,0) PRIMARY KEY,
    Contractor_Name VARCHAR2(100) NOT NULL,
    Contractor_Address VARCHAR2(500) NOT NULL,
    Contact_Person VARCHAR2(100),
    Contractor_Email VARCHAR2(100),
    Contractor_Phone VARCHAR2(20)
);

