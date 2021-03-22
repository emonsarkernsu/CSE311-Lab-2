
Activity 1
----------------------
SELECT lname, salary/4 "Weekly Salary", dno 
FROM employee;


Activity 2.a
----------------------
SELECT A.fname, A.lname 
FROM employee AS A, employee AS B 
WHERE B.ssn = A.superssn AND B.fname='Franklin' AND B.lname='Wong';


Activity 2.b
----------------------
SELECT fname, lname 
FROM employee, dependent 
WHERE employee.sex='F' AND employee.fname=dependent.dependent_name AND employee.ssn=dependent.essn; 


Activity 2.c
----------------------
SELECT lname, mgrstartdate, dependent_name
FROM employee, department, dependent
WHERE mgrssn=essn AND ssn=mgrssn;


Activity 2.d
----------------------
SELECT fname, lname, dname, pname, hours
FROM employee, department, project, works_on
WHERE ssn=essn AND dno=dnumber AND project.pnumber=works_on.pno;


Activity 3
----------------------
SELECT Last_Name, Job_Id, Hire_Date
FROM emps 
WHERE Hire_Date BETWEEN '1998-02-20' AND '1998-05-01' 
ORDER BY DATE_FORMAT( Hire_Date, '%Y %M, %d' ) ASC;


Activity 4
----------------------
SELECT Last_Name, Department_Id 
FROM emps 
WHERE Department_Id='20' OR Department_Id='50' 
ORDER BY Last_Name ASC;