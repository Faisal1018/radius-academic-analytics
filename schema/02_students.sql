create table students(
student_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(10) not null,
date_of_birth date not null,
phone varchar(15) unique,
email varchar(100) unique,
admission_date date not null,
stutus varchar(20) default 'Active'

);

select * from students;