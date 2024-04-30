SELECT students.*
FROM students
         LEFT OUTER JOIN student_courses
                         ON students.id = student_courses.student_id AND course_id = 7
WHERE student_id IS NULL;