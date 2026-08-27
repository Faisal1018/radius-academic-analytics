create table teachers(
teacher_is int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(10) not null,
phone varchar(15) unique,
email varchar(100) unique,
specialization varchar(50) not null,
joining_date date not null,
status varchar(20) default 'Active'
);

select * from teachers
