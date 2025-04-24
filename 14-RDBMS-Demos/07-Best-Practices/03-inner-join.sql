SELECT s.student_name, c.course_name,c.course_credits, e.enrollment_date 
	FROM students s
    JOIN enrollments e ON s.student_id=e.student_id
    JOIN courses c ON e.course_id=c.course_id;