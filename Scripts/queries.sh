#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "s2aulakh/09211279@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

-- Display all customers number of orders, maximum purchase made 
Select Customer.Customer_ID,Customer_Name, Count(*) AS NUMBER_OF_ORDERS,Max(Payment.Payment_Amount) AS Highest_Purchase 
FROM Customer 
LEFT JOIN Orders ON Customer.Customer_ID = Orders.Customer_ID
LEFT JOIN Payment ON Payment.Order_ID = Orders.Order_ID
GROUP BY Customer.Customer_ID,Customer.Customer_Name;

-- Display all customers that have placed atleast 1 order
SELECT Customer_ID, Customer_Name FROM Customer C
WHERE EXISTS 
(SELECT 1 FROM Orders O WHERE C.Customer_ID=O.Customer_ID);

-- Display all payees
SELECT Supplier_Name as Payees From Supplier
UNION
SELECT Contractor_Name From Contractor;

-- Display All Employees that are not department managers
SELECT Employee_Name FROM Employee
WHERE Employee_ID IN (
SELECT Employee_ID FROM Employee
MINUS
SELECT Department_Manager FROM Department);

-- Display all departments having more than 1 employee
SELECT Department_ID, COUNT(*) as Number_Of_Employees FROM DEPARTMENT_EMPLOYEE
Group By Department_ID
HAVING COUNT(*)>1;
exit;
EOF
