SELECT 
	i.instructor_name,
    i.instructor_phone, 
    c.course_name, 
    c.course_credits
	FROM instructors i
    RIGHT JOIN course_assignments ca ON i.instructor_id=ca.instructor_id
    RIGHT JOIN courses c ON ca.course_id=c.course_id;