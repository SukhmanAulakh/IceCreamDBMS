--Create Inventory Table
CREATE TABLE Inventory (
    Inventory_ID NUMBER(15,0) PRIMARY KEY,
    Inventory_Name VARCHAR2(25) NOT NULL,
    Inventory_Type VARCHAR2(25) NOT NULL,
    Inventory_Quantity NUMBER(15,0) NOT NULL,
    Inventory_Unit VARCHAR2(10),
    Inventory_Manager NUMBER(15,0) NOT NULL,
    FOREIGN KEY (Inventory_Manager) REFERENCES Employee(Employee_ID)
);