select e.department_id,e.first_name,e.manager_id,e.salary,d.department_name,l.postal_code,
h.job_id,a.ansalary,c.country_name,r.region_name
from employees e
join 
departments d
on e.department_id=d.department_id
join 
locations l
on d.location_id=l.location_id
join job_history h
ON h.job_id=e.job_id
join asdr56 a
on a.hire_date=h.start_date
join countries c
ON
c.country_id=l.country_id
JOIN
regions r
ON
r.region_id=c.region_id;