SELECT * FROM subject s JOIN mark m ON m.subject.id=s.id GROUP BY s.id HAVING avg(m.mark) > SELECT avg(mark) FROM mark;
SELECT * FROM student s JOIN payment p ON s.id=payment.student_id GROUP BY s.id HAVING avg(p.amount) < (SELECT avg(amount) FROM payment)
