INSERT INTO students(student_id, student_name, student_email) VALUES
		(1, 'Johnson', 'johnson@email.com'),
        (2, 'Smith', 'smith@email.com'),
        (3, 'Bob', 'bob@email.com');

INSERT INTO courses(course_id, course_name, course_credits) VALUES
		(101, 'Database Systems', 4),
        (102, 'Spring Boot', 5),
        (103, 'Angular', 3);

INSERT INTO instructors(instructor_id, instructor_name, instructor_phone) VALUES
		(201, 'Dr. Miller', '098080087'),
        (202, 'Dr. Peter', '089898987');
        
INSERT INTO enrollments(enrollment_id, student_id, course_id, enrollment_date) VALUES
		(301, 1, 101, '2025-04-04'),
        (302, 2, 102, '2025-04-10');
        
INSERT INTO course_assignments(assignment_id, instructor_id, course_id) VALUES
		(401, 201, 102),
        (402, 202, 101);