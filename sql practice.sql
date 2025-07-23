create  database student_info;
show databases;
use student_info;
-- create  a table cource
create table course(course_id int auto_increment primary key,course_name varchar(120) unique,duration int);
insert into course(course_name,duration) values("CDS",30),("CDA",45),("CDE",20);
select * from course;
-- check the course id for CDA course name
select course_id from course where course_name="CDA";
select course_name from course where duration>40;
select count(course_name) from course;
select* from course order by course_name desc;
update  course set course_name="Web development" where course_id=3;
select * from course;
-- retrive course name starts with c
select * from course where course_name like "%C%";
-- which course has maximum duration
select max(duration) from course;
select course_name from course where  duration=(select max(duration) from course);
create table  student(std_id int primary key,std_roll varchar(50) unique,std_name varchar(120) unique,email varchar(120) unique,dept_id int,foreign key(dept_id) references department(dept_id));
create table department(dept_id int primary key,dep_name varchar(120) unique, dept_head varchar(120));

insert into department(dept_id,dep_name,dept_head) values(1,"computer science","amith"),(2,"electronics","sai"),(3,"telecom","kumar"),(4,"maths","malli");
select* from student;
select*from department;
insert into student(std_id,std_roll,std_name,email,dept_id) values ("1","cs01","adarsh","abc@gmail.com",1);
insert into student(std_id,std_roll,std_name,email,dept_id) values 
("2","cs02","akash","cba@gmail.com",2);
insert into student(std_id,std_roll,std_name,email,dept_id) values 
("3","cs03","anvesh","cad@gmail.com",3);
select*from student;
select dept_head from department as d join student as s on d.dept_id=s.dept_id where std_name="amith";
select count(std_name) from department as d join student as s on d.dept_id=s.dept_id where dep_name="computer science";
select count(std_name) from department as d join student as s on d.dept_id=s.dept_id group by d.dept_id;
