--Create Inventory Table
CREATE TABLE Inventory (
    Inventory_ID INTEGER PRIMARY KEY,
    Inventory_Name VARCHAR2(25) NOT NULL,
    Inventory_Type VARCHAR2(25) NOT NULL,
    Inventory_Quantity INTEGER NOT NULL,
    Inventory_Unit VARCHAR2(10),
    Inventory_Manager INTEGER NOT NULL,
    FOREIGN KEY (Inventory_Manager) REFERENCES Employee(Employee_ID)
);