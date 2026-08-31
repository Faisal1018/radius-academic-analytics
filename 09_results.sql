CREATE TABLE results (
    result_id INT PRIMARY KEY,
    exam_id INT NOT NULL,
    student_id INT NOT NULL,
    marks DECIMAL(5,2) NOT NULL,
    grade VARCHAR(5),
    result_status VARCHAR(20) DEFAULT 'Pass',

    CONSTRAINT fk_result_exam
        FOREIGN KEY (exam_id)
        REFERENCES exams(exam_id),

    CONSTRAINT fk_result_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT chk_result_marks
        CHECK (marks >= 0 AND marks <= 100),

    CONSTRAINT chk_result_status
        CHECK (result_status IN ('Pass', 'Fail')),

    CONSTRAINT uq_student_exam
        UNIQUE (student_id, exam_id)
);