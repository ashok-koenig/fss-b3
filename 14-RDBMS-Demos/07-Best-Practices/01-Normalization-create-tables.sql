-- UNF - student_id, student_name, course_id, course_name, instructor, phone
CREATE TABLE students (
	student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    student_email VARCHAR(100) UNIQUE NOT NULL
    );

CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_credits INT CHECK (course_credits > 0)
    );
    
CREATE TABLE enrollments (
	enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );
    
CREATE TABLE instructors (
	instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100) NOT NULL,
    instructor_phone VARCHAR(20) NOT NULL
    );
    
CREATE TABLE course_assignments (
	assignment_id INT PRIMARY KEY,
    instructor_id INT,
    course_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id),
	FOREIGN KEY (course_id) REFERENCES courses(course_id)
	);