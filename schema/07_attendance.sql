CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    batch_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    attendance_status VARCHAR(20) NOT NULL,

    CONSTRAINT fk_attendance_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_attendance_batch
        FOREIGN KEY (batch_id)
        REFERENCES batches(batch_id),

    CONSTRAINT chk_attendance_status
        CHECK (attendance_status IN ('Present', 'Absent')),

    CONSTRAINT uq_student_attendance
        UNIQUE (student_id, batch_id, attendance_date)
);TRAINT fk_batch_academic_year
        FOREIGN KEY (academic_year_id)
        REFERENCES academic_years(academic_year_id),

    CONSTRAINT chk_batch_max_students
        CHECK (max_students > 0),

    CONSTRAINT chk_batch_dates
        CHECK (end_time > start_time),

    CONSTRAINT chk_batch_status
        CHECK (status IN ('Active', 'Completed', 'Cancelled'))
);