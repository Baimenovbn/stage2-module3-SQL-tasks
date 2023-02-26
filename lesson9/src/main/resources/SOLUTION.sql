SELECT *, AVG(m.mark) avg_mark FROM student s JOIN mark m ON m.student_id=s.id GROUP BY s.id HAVING avg_mark > 8;
SELECT id, name, MIN(m.mark) min_mark FROM student s JOIN mark m ON m.student_id=s.id GROUP BY s.id HAVING min_mark > 7;
SELECT id, name, count(*) times_paid FROM  student s JOIN payment p ON p.student_id=s.id WHERE p.payment_date LIKE "%2019%" GROUP BY s.id HAVING times_paid > 2;
