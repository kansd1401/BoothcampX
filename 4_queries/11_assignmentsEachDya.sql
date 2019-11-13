SELECT assignments.day, count(assignments.day) AS number_of_assignments, SUM(assignments.duration) AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY day;