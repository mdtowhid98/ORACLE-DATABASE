select employee_id,last_name
from employees
where department_id in(select department_id
from employees
where last_name like '%u%');

select last_name,department_id,job_id
from employees
where department_id in(select department_id
from departments
where location_id=1700);

describe job_grades;

select e.last_name,e.salary,d.department_id,j.grade
FROM employees e
JOIN departments d
on e.department_id=d.department_id
join job_grades j
on e.salary between j.LOWEST_SAL and j.HIGHEST_SAL;

select last_name,hire_date
from employees
where hire_date>(select hire_date
FROM employees
where last_name='Davies');

select e.last_name,e.hire_date,m.last_name,m.hire_date
from employees e
join employees m
on e.manager_id=m.employee_id
where e.hire_date<m.hire_date;

select employee_id,last_name,salary
from employees
where salary>(select avg(salary)
FROM employees)
order by salary;

select employee_id,last_name
from employees
where department_id in(select department_id
from employees
where last_name like '%u%');

select last_name,salary
from employees
where department_id in (select department_id
from departments
where department_name='Executive');

select employee_id,last_name,salary
from employees
where salary>(select avg(salary)
FROM employees)
and department_id in(select department_id
from employees
where last_name like '%u%');

desc  departments;

insert into departments(MANAGER_ID,LOCATION_ID,DEPARTMENT_ID,DEPARTMENT_NAME)
values(100,1700,71,'gf');

commit;

select * from departments
order by DEPARTMENT_ID;

insert into departments(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)
values(74,'ga',null,null);
commit;
select * from departments
order by DEPARTMENT_ID;
