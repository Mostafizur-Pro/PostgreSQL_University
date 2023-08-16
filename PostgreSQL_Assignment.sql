
-- create database
CREATE DATABASE university_db;

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



-- SELECT student_id, student_name FROM students;
-- SELECT * from students WHERE age > 22 and frontend_mark > 34;
-- SELECT * from students WHERE student_name <> 'Charlie' and age > 23;
-- SELECT * from students ORDER by student_name asc limit 2 OFFSET 2;
-- SELECT * from students ORDER by age DESC LIMIT 1 OFFSET 3;

-- SELECT * FROM students where student_id NOT IN (2, 3);
-- SELECT * FROM students where age BETWEEN 20 and 22;
-- SELECT * FROM students where student_name like 'A%';
-- SELECT * FROM students where student_name like '%m';
-- SELECT * FROM students where student_name like '_o%';
-- SELECT * FROM students WHERE email like '%example.com';

-- SELECT * FROM students where status is null;




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
    student_id INT not NULL,
    course_id INT not NULL,
    constraint fk_constraint_studentandcourses
 FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT into enrollment(student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2);

-- DELETE from enrollment WHERE enrollment_id = 5;

SELECT * FROM enrollment;




-- Query 1: ---------------------------------------

-- INSERT INTO students (student_name, age, email, frontend_mark, backend_mark)
-- VALUES    ('Alamin', 27, 'alamin@gmail.com', 55, 57);

-- SELECT * FROM students;

-- Query 2: ---------------------------------------
-- Query 3: ---------------------------------------
-- Query 4: ---------------------------------------
-- Query 5: ---------------------------------------

-- SELECT * from students ORDER by student_name asc limit 2 OFFSET 2;


-- Query 6: ---------------------------------------
-- Query 7: ---------------------------------------
-- Query 8: ---------------------------------------

-- SELECT * FROM students WHERE email like '%example.com';

-- Query 9: ---------------------------------------

