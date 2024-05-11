select job_id,COUNT(*)
FROM employees
WHERE job_id='&job_num'
GROUP BY job_id;

SELECT job_id, max(salary)"Maximum",MIN(salary)"Minimum",sum(Salary)"Sum",round(avg(salary))"Average"
from employees
GROUP BY job_id;

SELECT job_id,COUNT(*)
FROM employees
GROUP BY job_id;

select COUNT(distinct manager_id)"Number of manager"
from employees;

select manager_id,min(salary)
FROM employees
where manager_id is not null
GROUP BY manager_id
HAVING min(salary)>6000
ORDER BY 2 desc;

SELECT COUNT(*)"Total",
sum(case WHEN to_char(hire_date,'yyyy')=2005 then 1 else 0 end)"2005",
sum(case WHEN to_char(hire_date,'yyyy')=2006 then 1 else 0 end)"2006",
sum(case WHEN to_char(hire_date,'yyyy')=2007 then 1 else 0 end)"2007",
sum(case WHEN to_char(hire_date,'yyyy')=2008 then 1 else 0 end)"2008"
FROM employees;

SELECT job_id"job",
sum(case WHEN department_id=20 then salary else 0 end)"Dept20",
sum(case WHEN department_id=50 then salary else 0 end)"Dept50",
sum(case WHEN department_id=80 then salary else 0 end)"Dept80",
sum(case WHEN department_id=90 then salary else 0 end)"Dept90",
sum (salary)"Total"
FROM employees
GROUP BY job_id;

SELECT LOCATION_ID,STREET_ADDRESS,CITY,STATE_PROVINCE,COUNTRY_NAME
FROM locations
NATURAL JOIN countries;

select e.last_name,e.job_id,e.department_id,d.department_name
from employees e
join departments d 
on e.department_id=d.department_id
JOIN locations l
on d.location_id=l.location_id
where l.city='Toronto';

select e.last_name"Employee",e.employee_id"Emp#",m.last_name"Manager",m.employee_id"Mrg#"
FROM employees e
JOIN employees m
on m.employee_id=e.manager_id;

select e.last_name"Employee",e.employee_id"Emp#",m.last_name"Manager",m.employee_id"Mrg#"
FROM employees e
 left JOIN employees m
on m.employee_id=e.manager_id
ORDER BY 2;

SELECT e.department_id,e.last_name
FROM employees
JOIN employees es
ON e.department_id=es.employee_id
WHERE e.employee_id<>es.employee_id
ORDER BY 1;
