create SEQUENCE CCSL_id
INCREMENT by 1
START WITH 100
maxvalue 999999
nocache
nocycle;

create TABLE CCSL(id number(4) DEFAULT CCSL_id.nextval constraint sys_CCSL_id PRIMARY KEY,
name VARCHAR2(30)not null,
email VARCHAR2(50)not null CONSTRAINT CCSL_email_unique UNIQUE);

INSERT INTO CCSL
VALUES(default,'TOWHIDUL','towhidul@gmail.com');

select * from CCSL;

