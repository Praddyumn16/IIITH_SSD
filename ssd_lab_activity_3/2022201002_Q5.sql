

select DEPARTMENT.Mgr_ssn, DEPARTMENT.Dnumber , count(*) as "Number of Dependents" from DEPARTMENT,DEPENDENT 
where DEPARTMENT.Dnumber IN (select DEPT_LOCATIONS.Dnumber from DEPT_LOCATIONS,DEPARTMENT where DEPT_LOCATIONS.Dnumber=DEPARTMENT.Dnumber 
group by DEPT_LOCATIONS.Dnumber having count(*)>=2) and DEPARTMENT.Mgr_ssn = DEPENDENT.Essn group by DEPARTMENT.Dnumber;


