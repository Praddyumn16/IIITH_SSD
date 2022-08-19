
select concat(Fname , " " , Minit , " " , Lname) as Fullname , Ssn as ssn , Dno as "Dept. ID" , Dname as "Dept. Name"
from EMPLOYEE, DEPARTMENT where Ssn IN (select Mgr_ssn from DEPARTMENT where Dnumber IN 
(select distinct Dno from EMPLOYEE WHERE EMPLOYEE.Ssn IN (select distinct Essn from WORKS_ON where Hours < 40))) 
AND EMPLOYEE.Dno = DEPARTMENT.Dnumber ;