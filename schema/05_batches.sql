CREATE TABLE batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(100) NOT NULL UNIQUE,
	academic_year_id INT NOT NULL,
    course_id INT NOT NULL,
    teacher_id INT NOT NULL,
    shift varchar(30) not null,
    start_time time NOT NULL,
    end_time time NOT NULL,
	room_no VARCHAR(20) NOT NULL,
    max_students INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Active',

    CONSTRAINT fk_batch_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),

    CONSTRAINT fk_batch_teacher
        FOREIGN KEY (teacher_id)
        REFERENCES teachers(teacher_id),

    CONSTRAINT fk_batch_academic_year
        FOREIGN KEY (academic_year_id)
        REFERENCES academic_years(academic_year_id),

    CONSTRAINT chk_batch_max_students
        CHECK (max_students > 0),

    CONSTRAINT chk_batch_dates
        CHECK (end_time > start_time),

    CONSTRAINT chk_batch_status
        CHECK (status IN ('Active', 'Completed', 'Cancelled'))
);
