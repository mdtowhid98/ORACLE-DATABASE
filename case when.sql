select job_id,
case job_id
when 'AD_PRES' THEN 'A'
WHEN 'IT_PROG' THEN 'B'
ELSE '0'  END "GRADE"
from hr.employees;
