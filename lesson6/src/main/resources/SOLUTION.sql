SELECT * FROM payment p LEFT JOIN paymenttype pt ON p.type_id=pt.id WHERE pt.name="MONTHLY";
SELECT * FROM mark m LEFT JOIN subject s ON m.subject_id=s.id WHERE s.name LIKE "%Art%";
SELECT * FROM student s JOIN (SELECT * FROM payment p JOIN paymenttype pt WHERE p.type_id=pt.id) as payments ps ON ps.student_id=s.id WHERE ps.name="WEEKLY";
SELECT * FROM student s JOIN (SELECT * FROM mark m JOIN subject sj ON sj.id=mark.subject_id) as marks WHERE marks.name LIKE "%Math%";