create SEQUENCE student_id
INCREMENT by 1
START WITH 1
maxvalue 999999
nocache
nocycle;

create TABLE student(id number(4) DEFAULT student_id.nextval constraint sys_student_id PRIMARY KEY,
name VARCHAR2(30)not null,
email VARCHAR2(50)not null CONSTRAINT student_email_unique UNIQUE);


insert INTO student
values(default,'aminul','aminul@gmail.com');

SELECT
    * FROM student;
    
    commit;