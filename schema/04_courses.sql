create table course(
course_id int primary key,
course_name varchar(100) not null,
course_code varchar(50) not null unique,
category varchar(50) not null,
level varchar(20) not null,
duration_months int not null,
course_fee decimal(10,2) not null,
status varchar(20) default 'Active'
);