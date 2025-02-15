use demo
--Sub query approach
SELECT MAX(salary) as SecondMaxSalary FROM tblemployee 
WHERE salary NOT IN (SELECT MAX(salary) FROM tblemployee)