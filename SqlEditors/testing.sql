--INSERT INTO EMPLOYEE VALUES ('456','Doe','Associate','10-1','2023/10/10','30000','2020/09/13','345 Red Street','','+1-690-203-1290');
--INSERT INTO DEPARTMENT VALUES ('1','Management','2','123');
--INSERT INTO DEPARTMENT_EMPLOYEE VALUES ('1','456','2024/09/22');

--Select the employee whose employee_ID is 123 & whose name is John
SELECT * FROM Employee where Employee_ID=456 and Employee_Name ='Doe';

--Select the department whose name is 'Management'
SELECT * FROM Department where Department_Name='Management';

--Select all of the data related to department 1 in department_employee relation table
SELECT * FROM Department_Employee where Department_ID=1;

--Select Manager of Department One and Return the managers employee data
SELECT * FROM EMPLOYEE where Employee_ID =(SELECT Department_Manager FROM Department where Department_ID=1);