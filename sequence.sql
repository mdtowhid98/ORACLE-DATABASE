create sequence jhgf_id
increment by 1
start with 100
maxvalue 999999
nocache
nocycle;

create table jhgf(id number(4)default jhgf_id.nextval constraint sys_jhgf_id primary key,
    name varchar2(30)not null,
    email varchar2(60)not null constraint email_jhgf_unique unique);







