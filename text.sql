-- 1. Creating the table 
CREATE TABLE IF NOT EXISTS dms_exam (
  Reg_no INTEGER PRIMARY KEY,  
  firstname VARCHAR(255) NOT NULL,  
  lastname VARCHAR(255) NOT NULL, 
  course VARCHAR(255),  
  gender VARCHAR(255),  
  D_O_B DATE  

-- 2. Inserting data 
INSERT INTO dms_exam (Reg_no, firstname, lastname, course, gender, D_O_B)
VALUES
  (12016, 'John', 'Mutuku', 'DCS', 'Male', '1990-06-13'), 
  (22016, 'Steve', 'Kipkoriri', 'DCS', 'Male', '1990-03-13'),
  (32016, 'Susan', 'Mutua', 'CIT', 'Female', '1990-11-19'),
  (42016, 'John', 'Mutuku', 'DCS', 'Male', '1990-06-13');  

-- 4. Select data from the table and dispalying all students in the table
SELECT * FROM dms_exam;
	
	--Displaying  all students  where the results will only contain reg_no last_name and First_name
SELECT Reg_no, firstname, lastname
FROM dms_exam;
	
--producing  Last_Name  and First_name  as student_name	
SELECT Reg_no, CONCAT(lastname, ', ', firstname) AS student_name
FROM dms_exam;
	
-- Finding the details of  all male students per course
SELECT * FROM dms_exam
WHERE course = 'DCS' AND gender = 'Male';

	
-- pruducing total number of students per course
SELECT course, COUNT(*) AS total_students
FROM dms_exam
GROUP BY course;
	
--listing all male students born between 1980 and 1989	
SELECT Reg_no, firstname, lastname, D_O_B
FROM dms_exam
WHERE gender = 'Male'
  AND YEAR(D_O_B) BETWEEN 1980 AND 1989;
	
--updating/ modifying the last_name of the students with reg no 4/2017	
UPDATE dms_exam
SET lastname = 'Mwangi'
WHERE Reg_no = 42017; 
	
-- deleting  all the students from the table
DELETE FROM dms_exam;

	


