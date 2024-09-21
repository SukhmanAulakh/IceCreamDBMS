--Create Customer Table
CREATE TABLE Machine (
    Machine_ID NUMBER(15,0) PRIMARY KEY,
    Machine_Name VARCHAR2(25) NOT NULL,
    Machine_Type VARCHAR2(25) NOT NULL,
    Machine_Age NUMBER(3,0)
);