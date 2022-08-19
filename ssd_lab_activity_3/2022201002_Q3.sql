
select ssn , count(*) as hell from EMPLOYEE,PROJECT where Ssn IN (select Mgr_ssn from DEPARTMENT where 
Dnumber = (select Dnum from PROJECT where Pname="ProductY")) AND EMPLOYEE.Dno = PROJECT.Dnum;

select ssn, count() from EMPLOYEE where Ssn = (select Mgr_ssn from DEPARTMENT where 
Dnumber = (select Dnum from PROJECT where Pname="ProductY")) ;

SELECT * FROM WORKS_ON,DEPARTMENT,EMPLOYEE 
WHERE WORKS_ON.ESSN=EMPLOYEE.SSN AND DEPARTMENT.Mgr_ssn =EMPLOYEE.ssn;