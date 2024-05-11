select * from jobs
where min_salary>10000;

select first_name,hire_date
from employees
where JOB_ID ='IT_PROG' OR JOB_ID ='SA_MAN' ;

SELECT * FROM employees
WHERE EMPLOYEE_ID=150 OR EMPLOYEE_ID=160;

SELECT DISTINCT(JOB_TITLE),min_salary,max_salary
FROM JOBS
WHERE max_salary BETWEEN 10000 AND 20000;