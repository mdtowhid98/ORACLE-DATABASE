update sales_reps
SET COMMISSION_PCT=.28
where id=203;

select * from SALES_REPS;

update employees
set(JOB_ID,SALARY)=(select job_id,salary
from employees
where employee_id=205)
where employee_id=100;


SELECT * FROM employees;

UPDATE employees
set department_id =(select department_id
from employees
where employee_id =100)
where job_id=(select job_id
from employees
where employee_id =200);