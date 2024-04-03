show databases;
use std_management_system;
show tables;
desc financials;
desc std_academic_tbl;
desc student_tbl;
desc disciplinary;
create table std_med_info(
diet varchar(100) not null,
injuries varchar(100) not null,
admno varchar(6) not null,
foreign key(admno) references student_tbl(admno)
);
create table disciplinary(
admno varchar(6) not null,
action_taken varchar(50) not null,
period_of_action varchar(50) not null,
foreign key(admno) references student_tbl(admno)
);

drop table disciplinary;
create table attendance(
admno varchar(6) not null,
fees decimal(10,2) not null,
action_taken varchar(50) not null,
foreign key(admno) references student_tbl(admno) 
);
create table extra_curricular(
admno varchar(6) not null,
sports varchar(50) not null,
clubs char(50) not null,
foreign key(admno) references student_tbl(admno) 
);

show tables;
desc financials;
desc std_academic_tbl;
desc student_tbl;
desc std_med_info;
desc attendance;
desc extra_curricular;
desc disciplinary;
ALTER TABLE financials
ADD CONSTRAINT fk_admno
FOREIGN KEY (admno)
REFERENCES std_tbl(admno)
ON DELETE CASCADE
ON UPDATE CASCADE;
show tables;


