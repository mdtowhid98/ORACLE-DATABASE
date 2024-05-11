CREATE TABLE sales_reps(id number(4)not null,
name VARCHAR2(30)not null,
salary number(8,2),
commission_pct number(2,2),
CONSTRAINT const_sales_reps_id PRIMARY key(id));

DESC sales_reps;

INSERT INTO sales_reps(ID,NAME,SALARY,COMMISSION_PCT)
select EMPLOYEE_ID,LAST_NAME,SALARY,COMMISSION_PCT
FROM employees
where job_id LIKE '%REP%';
commit;
select * from sales_reps;

select * from all_constraints;


