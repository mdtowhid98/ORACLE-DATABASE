

select count(e.employee_id),d.department_name,max(salary),LISTAGG(distinct(l.city))
from employees e
join departments d
on e.MANAGER_ID=d.MANAGER_ID
join locations l
on d.LOCATION_ID=l.LOCATION_ID
group by d.department_name;



select *
from employees
where hire_date>=(select hire_date from employees
where last_name ='Davies') order by (hire_date);

SELECT last_name,job_id,salary
from employees
WHERE job_id=
(select job_id
from employees
where last_name ='Taylor'
fetch FIRST 1 rows only)
and salary>
(select salary
from employees
WHERE last_name ='Taylor'
fetch FIRST 1 rows only);


select department_id, MIN(salary)
FROM employees
GROUP by department_id
HAVING MIN(salary)>(select min (salary)
from employees
where department_id=30)



