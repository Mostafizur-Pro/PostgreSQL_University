-- Create Student table

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


-- Create Courses table

CREATE Table courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) not NULL,
    credits INT not NULL
);

INSERT INTO courses (course_name, credits) VALUES
('Next.js', 3),
('React.js', 4),
('Databases', 3),
('Prisma', 3);
   

SELECT * FROM courses;


-- Create enrollment
CREATE Table enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
 FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT into enrollment(student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);


SELECT * FROM enrollment;

