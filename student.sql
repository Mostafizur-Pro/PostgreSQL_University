CREATE table students(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(255) not NULL,
    age INT,
    email VARCHAR(255) UNIQUE,
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(255)

);

INSERT INTO students (student_name, age, email, frontend_mark, backend_mark)
VALUES
    ('Alice', 22, 'alice@example.com', 55, 57),
     ('Bob', 21, 'bob@example.com', 34, 45),
    ('Charlie', 23, 'charlie@example.com', 60, 59),
    ('David', 20, 'david@example.com', 40, 49),
    ('Eve', 24, 'newemail@example.com', 45, 34),
    ('Rahim', 23, 'rahim@gmail.com', 46, 42);

SELECT * FROM students;


