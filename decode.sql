select count(*)"Total",
sum(decode(to_char(hire_date,'yyyy'),2005,1,0))"2005",
    sum(decode(to_char(hire_date,'yyyy'),2006,1,0))"2006",
    sum(decode(to_char(hire_date,'yyyy'),2007,1,0))"2007"
from hr.employees;