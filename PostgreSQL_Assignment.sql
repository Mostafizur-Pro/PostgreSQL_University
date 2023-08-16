
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




-- Query 1: --------------------------------------- DONE

-- INSERT INTO students (student_name, age, email, frontend_mark, backend_mark)
-- VALUES    ('Alamin', 27, 'alamin@gmail.com', 55, 57);



-- Query 2: --------------------------------------- DONE

-- SELECT students.student_name
-- FROM students
--  JOIN enrollment ON students.student_id = enrollment.student_id
--  JOIN courses ON courses.course_id = enrollment.course_id
-- WHERE courses.course_name = 'Next.js';



-- Query 3: --------------------------------------- DONE


-- UPDATE students
-- SET status = 'Awarded'
-- WHERE (frontend_mark + backend_mark) = (
--     SELECT MAX(frontend_mark + backend_mark) 
--     FROM students
-- );

-- Query 4: --------------------------------------- DONE

-- DELETE FROM courses
-- WHERE course_id NOT IN (
--     SELECT course_id
--     FROM enrollment
-- );


-- Query 5: --------------------------------------- DONE

-- SELECT * from students ORDER by student_name asc limit 2 OFFSET 2;


-- Query 6: --------------------------------------- DONE

-- SELECT courses.course_name, COUNT(enrollment.student_id) AS students_enrolled
-- FROM courses
-- LEFT JOIN enrollment ON courses.course_id = enrollment.course_id
-- GROUP BY courses.course_name;

-- Query 7: --------------------------------------- DONE

-- select avg(age) as average_age FROM students;



-- Query 8: --------------------------------------- DONE

-- SELECT * FROM students WHERE email like '%example.com';





