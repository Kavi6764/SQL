create database SqlTesting;

use testing;

create table sqltest(
student_id int primary key auto_increment,
name varchar(100) not null,
email varchar(100) unique,
age int check(age >= 18),
reg_date date
);

alter table sqltest add phone varchar(15);

select * from sqltest;
alter table sqltest modify name varchar(150);
select * from sqltest;
describe sqltest  ;
alter table sqltest modify age int null;

alter table sqltest drop phone;

describe sqltest  ;

alter table sqltest change email  std_email varchar(150);
describe sqltest  ;
rename table sqltest to  college_students;

show tables;
alter table college_students alter column age set default 18;
describe college_students  ;
alter table college_students add column status varchar(100) default "active";
describe college_students  ;

ALTER TABLE college_students DROP CHECK college_students_chk_1;
