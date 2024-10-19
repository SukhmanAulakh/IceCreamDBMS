#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "s2aulakh/09211279@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
CREATE TABLE Contractor (
    Contractor_ID NUMBER(15,0) PRIMARY KEY,
    Contractor_Name VARCHAR2(100) NOT NULL,
    Contractor_Address VARCHAR2(500) NOT NULL,
    Contact_Person VARCHAR2(100),
    Contractor_Email VARCHAR2(100),
    Contractor_Phone VARCHAR2(20)
);
CREATE TABLE Product (
    Product_ID NUMBER(15,0) PRIMARY KEY,
    Product_Name VARCHAR2(100),
    Product_Price NUMBER(10,2)
);
CREATE TABLE Customer (
    Customer_ID NUMBER(15,0) PRIMARY KEY,
    Customer_Name VARCHAR2(25) NOT NULL,
    Customer_Address VARCHAR2(100) NOT NULL,
    Customer_Email VARCHAR2(30),
    Customer_Phone VARCHAR2(20)
);
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
CREATE TABLE Department (
    Department_ID NUMBER(15,0) PRIMARY KEY,
    Department_Name VARCHAR2(25) NOT NULL,
    Department_Manager NUMBER(15,0),
    Number_Of_Employees NUMBER(15,0),
    FOREIGN KEY (Department_Manager) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Supplier (
    Supplier_ID NUMBER(15,0) PRIMARY KEY,
    Supplier_Address VARCHAR2(50) NOT NULL,
    Supplier_Name VARCHAR2(25) NOT NULL,
    Supplier_Email VARCHAR2(30),
    Supplier_Phone VARCHAR2(20)
);
CREATE TABLE Inventory (
    Inventory_ID NUMBER(15,0) PRIMARY KEY,
    Inventory_Name VARCHAR2(25) NOT NULL,
    Inventory_Type VARCHAR2(25) NOT NULL,
    Inventory_Quantity NUMBER(15,0) NOT NULL,
    Inventory_Unit VARCHAR2(10),
    Inventory_Manager NUMBER(15,0) NOT NULL,
    FOREIGN KEY (Inventory_Manager) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Machine (
    Machine_ID NUMBER(15,0) PRIMARY KEY,
    Machine_Name VARCHAR2(25) NOT NULL,
    Machine_Type VARCHAR2(25) NOT NULL,
    Machine_Age NUMBER(3,0)
);
CREATE TABLE Orders (
    Order_ID NUMBER(15,0) PRIMARY KEY,
    Order_Address VARCHAR2(100) NOT NULL,
    Order_Date DATE,
    Order_Price NUMBER(10,2) NOT NULL,
    Order_Status NUMBER(10,0) NOT NULL,
    Customer_ID NUMBER(15,0) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
CREATE TABLE Payment (
    Payment_ID NUMBER(15,0) PRIMARY KEY,
    Payment_Amount NUMBER(10,2),
    Payment_Method VARCHAR2(25),
    Payment_Date DATE,
    Order_ID NUMBER(15,0),
    Supplier_ID NUMBER(15,0),
    FOREIGN KEY(Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY(Supplier_ID) REFERENCES Supplier(Supplier_ID)
);
CREATE TABLE Product_Inventory (
    Inventory_ID NUMBER(15,0),
    Product_ID NUMBER(15,0),
    Amount NUMBER(10,0),
    PRIMARY KEY (Inventory_ID, Product_ID),
    FOREIGN KEY (Inventory_ID) REFERENCES Inventory(Inventory_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
CREATE TABLE Supplier_Inventory (
    Supplier_ID NUMBER(15,0),
    Inventory_ID NUMBER(15,0),
    Quantity NUMBER(15,0),
    Price NUMBER(10,2),
    PRIMARY KEY (Supplier_ID, Inventory_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Inventory_ID) REFERENCES Inventory(Inventory_ID)
);
CREATE TABLE Department_Employee (
    Department_ID NUMBER(15,0),
    Employee_ID NUMBER(15,0),
    Start_Date DATE,
    PRIMARY KEY (Employee_ID, Department_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);
CREATE TABLE Order_Product (
    Order_ID NUMBER(15,0),
    Product_ID NUMBER(15,0),
    Quantity NUMBER(10,0),
    PRIMARY KEY (Order_ID, Product_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
exit;
EOF
