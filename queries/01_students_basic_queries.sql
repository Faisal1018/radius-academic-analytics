select * from students;

/* show first_name and email */

select first_name,email from students;

-- show student who active

select * from students
where stutus='Active';

-- show female studence

select * from students
where gender='Female';

--admission date oldest to newest
select * from students st
order by st.admission_date asc;
  
-- number start with 0171..
select * from students 
where phone like '0171%';



-- To target January of a specific year (2026)
select * from students
where admission_date between '2025-02-01' and '2025-02-28';


--first 10 students
SELECT *
FROM students
LIMIT 10;


--first name A_Z
select * from students st
order by st.first_name asc;
