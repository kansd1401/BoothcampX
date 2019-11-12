SELECT students.name AS student, AVG(assignment_submissions.duration) as avg 
FROM students JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg desc;