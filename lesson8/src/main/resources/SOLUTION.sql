SELECT max(birthday) FROM student;
SELECT min(payment_date) FROM payment;
SELECT avg(mark) FROM mark m JOIN subject s ON s.id=m.subject_id WHERE s.name LIKE "%Math%";
SELECT min(amount) FROM payment p JOIN paymenttype pt ON pt.id=p.type_id WHERE pt.name="WEEKLY";
