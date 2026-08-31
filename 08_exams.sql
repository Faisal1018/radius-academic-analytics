CREATE TABLE exams (
    exam_id INT PRIMARY KEY,
    exam_name VARCHAR(100) NOT NULL,
    exam_type VARCHAR(30) NOT NULL,
    course_id INT NOT NULL,
    academic_year_id INT NOT NULL,
    exam_date DATE NOT NULL,
    total_marks INT NOT NULL,

    CONSTRAINT fk_exam_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),

    CONSTRAINT fk_exam_academic_year
        FOREIGN KEY (academic_year_id)
        REFERENCES academic_years(academic_year_id),

    CONSTRAINT chk_exam_type
        CHECK (
            exam_type IN (
                'Monthly',
                'Model Test',
                'Half Yearly',
                'Mid Term',
                'Final'
            )
        ),

    CONSTRAINT chk_total_marks
        CHECK (total_marks > 0)
);
