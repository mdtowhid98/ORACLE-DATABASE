
create view view_towhid
as
select last_name,salary,commission_pct
from hr.employees
where salary>(select department_id
    from hr.departments
    where department_id=90);

select * from view_towhid;

desc view_towhid;