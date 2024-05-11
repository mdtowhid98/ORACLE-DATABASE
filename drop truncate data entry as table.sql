create table asdr56
AS
select employee_id,last_name,salary*12 setgfc,hire_date
FROM hr.employees
where department_id=80;

select * from asdr56;

create table ccsl98
as
    select DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID
    from hr.departments
    where MANAGER_ID is not null;

select * from ccsl98;

desc ccsl98;

select * from hr.departments;

alter table ccsl98
drop (LOCATION_ID);

drop table ccsl98;

truncate table asdr56;

desc asdr56;