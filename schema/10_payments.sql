CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    batch_id INT NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(20) NOT NULL,
    payment_status VARCHAR(20) DEFAULT 'Paid',
    invoice_no VARCHAR(30) NOT NULL UNIQUE,

    CONSTRAINT fk_payment_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_payment_batch
        FOREIGN KEY (batch_id)
        REFERENCES batches(batch_id),

    CONSTRAINT chk_payment_amount
        CHECK (amount > 0),

    CONSTRAINT chk_payment_method
        CHECK (
            payment_method IN (
                'Cash',
                'bKash',
                'Nagad'
            )
        ),

    CONSTRAINT chk_payment_status
        CHECK (
            payment_status IN (
                'Paid',
                'Pending',
                'Refunded'
            )
        )
);