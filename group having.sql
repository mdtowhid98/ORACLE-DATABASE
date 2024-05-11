select job_id,department_id,commission_pct,avg(salary)
from employees
group by job_id,department_id,commission_pct
order by 2,4;

select job_id,sum(salary) pyroll
from employees
where job_id not like '%rep%'
group by job_id
having sum (salary)>13000
order by sum (salary);

select job_id, avg(salary)salary
from employees
group by job_id
having avg(salary)>10000;

select to_char(HIRE_DATE,'yyyy')
from employees
group by to_char(HIRE_DATE,'yyyy')
having count (employee_id)>10;

select department_id
from employees
WHERE commission_pct is not null
group by department_id
having count (commission_pct)>5;




