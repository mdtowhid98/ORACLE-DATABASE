SELECT last_name, salary
from employees
where salary not between 5000 and 12000;

select last_name,department_id
from employees
WHERE department_id =20 or department_id=50
ORDER BY last_name;

select last_name,salary
from employees
where salary between 5000 and 12000 and department_id in(20,50);

select last_name,salary,commission_pct
from employees 
where commission_pct is not null
ORDER BY 2 desc,3 desc; 

select last_name,salary,commission_pct
from employees 
where commission_pct=20/100;

select employee_id,last_name,salary,(round(salary*15.5/100)+salary) "New salary"
from employees; 

select last_name,length(last_name)
from employees
where last_name like 'J%' or last_name like 'A%' or last_name like 'M.%'
order by last_name;

select last_name,LPAD(salary,15,'$')"SALARY"
from employees;

select last_name||' earns '||to_char(salary,'fm$999999.00')||' monthly but wants '||to_char(salary*3,'fm$999999.00')"Dream salary"
from employees;

select last_name,hire_date,
to_char(next_day (add_months(hire_date,6),'Monday'),'fmDay,"The" Ddspth "of" month,yyyy')"Review"
from employees;


 