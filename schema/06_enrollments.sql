CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    batch_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    enrollment_status VARCHAR(20) DEFAULT 'Active',

    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_enrollment_batch
        FOREIGN KEY (batch_id)
        REFERENCES batches(batch_id),

    CONSTRAINT chk_enrollment_status
        CHECK (enrollment_status IN ('Active', 'Completed', 'Dropped')),

    CONSTRAINT uq_student_batch
        UNIQUE (student_id, batch_id)
);