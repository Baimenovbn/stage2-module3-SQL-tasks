use university;
INSERT INTO student VALUES ("John", "1997-07-23", 1);
INSERT INTO student VALUES ("Chris", "1997-07-23", 1);
INSERT INTO student VALUES ("Carl", "1997-07-23", 1);
INSERT INTO student VALUES ("Oliver", "1997-07-23", 2);
INSERT INTO student VALUES ("James", "1997-07-23", 2);
INSERT INTO student VALUES ("Lucas", "1997-07-23", 2);
INSERT INTO student VALUES ("Henry", "1997-07-23", 2);
INSERT INTO student VALUES ("Jacob", "1997-07-23", 3);
INSERT INTO student VALUES ("Logan", "1997-07-23", 3);
INSERT INTO student VALUES ("Bakha", "1997-07-23", 4);
INSERT INTO student VALUES ("Askar", "1997-07-23", 5);

INSERT INTO subject VALUES ("Art and music", "description", 1);
INSERT INTO subject VALUES ("Geography and history", "description", 2);
INSERT INTO subject VALUES ("PE and math", "description", 3);
INSERT INTO subject VALUES ("Science and IT", "description", 4);
INSERT INTO subject VALUES ("Some subject", "description", 5);
INSERT INTO subject VALUES ("Some subject2", "description", 5);

INSERT INTO paymenttype VALUES("DAILY");
INSERT INTO paymenttype VALUES("WEEKLY");
INSERT INTO paymenttype VALUES("MONTHLY");

INSERT INTO payment VALUES((SELECT id FROM paymenttype WHERE name="WEEKLY"), 255, "2023-02-08", (SELECT id FROM student WHERE name="John"));
INSERT INTO payment VALUES((SELECT id FROM paymenttype WHERE name="MONTHLY"), 255, "2023-02-08", (SELECT id FROM student WHERE name="Oliver"));
INSERT INTO payment VALUES((SELECT id FROM paymenttype WHERE name="WEEKLY"), 255, "2023-02-08", (SELECT id FROM student WHERE name="Henry"));
INSERT INTO payment VALUES((SELECT id FROM paymenttype WHERE name="DAILY"), 255, "2023-02-08", (SELECT id FROM student WHERE name="James"));
INSERT INTO payment VALUES((SELECT id FROM paymenttype WHERE name="WEEKLY"), 255, "2023-02-08", (SELECT id FROM student WHERE name="James"));

INSERT INTO mark VALUES((SELECT id FROM student WHERE name="Chris"), 255, SELECT id FROM subject WHERE name="Art and music", 8);
INSERT INTO mark VALUES((SELECT id FROM student WHERE name="Oliver"), 255, SELECT id FROM subject WHERE name="Geography and history", 5);
INSERT INTO mark VALUES((SELECT id FROM student WHERE name="James"), 255, SELECT id FROM subject WHERE name="Geography and history", 9);
INSERT INTO mark VALUES((SELECT id FROM student WHERE name="Jacob"), 255, SELECT id FROM subject WHERE name="PE and math", 4);
INSERT INTO mark VALUES((SELECT id FROM student WHERE name="Logan"), 255, SELECT id FROM subject WHERE name="PE and math", 9);
