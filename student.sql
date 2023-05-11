-- Students residing in Laguna
SELECT * FROM students_info WHERE city = "Laguna";

-- Students with sem_grade of 80
SELECT * FROM students_info WHERE sem_grade= 80;

-- Female students
SELECT * FROM students_info WHERE gender = "F";

-- Show the youngest entry_age
SELECT MIN(entry_age) FROM students_info;
-- Students with youngest entry_age
SELECT * FROM students_info WHERE entry_age = 17;

-- Show the highest final_exam
SELECT MAX(final_exam) FROM students_info;
-- Students with the highest final_exam
SELECT * FROM students_info WHERE final_exam = 100;

-- Students who are not 4th year
SELECT * FROM students_info WHERE NOT status = "4TH YEAR";

-- Arrange in descending order
SELECT * FROM students_info ORDER by sem_grade DESC;

-- Students who are male and first year
SELECT * FROM students_info WHERE gender = "M" AND status = "1ST YEAR";

