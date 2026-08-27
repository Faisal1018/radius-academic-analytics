CREATE TABLE academic_years (
    academic_year_id INT PRIMARY KEY,
    year_name VARCHAR(20) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT FALSE,

    CHECK (end_date > start_date)
);



select * from academic_years
where is_active=true;

select * from academic_years
where start_date>'2025-01-01'

select * from academic_years ay
order by ay.start_date desc;
  
select * from academic_years;