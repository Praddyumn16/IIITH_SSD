/* query 4 */

select DEPARTMENT.Dnumber , DEPARTMENT.Dname , count(*) from DEPARTMENT,DEPT_LOCATIONS 
where DEPT_LOCATIONS.Dnumber in (select Dno from EMPLOYEE 
where ssn in (select Mgr_ssn from DEPARTMENT,DEPENDENT where Mgr_ssn=Essn and Sex='F' group by Essn having count(*) >= 2)) 
and DEPARTMENT.Dnumber = DEPT_LOCATIONS.Dnumber
group by DEPT_LOCATIONS.Dnumber;

