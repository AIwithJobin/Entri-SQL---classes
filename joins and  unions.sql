use entri_d42;

CREATE TABLE Music_Students_1 (
    Roll_Number INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Division CHAR(1),
    Instructor_Name VARCHAR(50),
    Age INT,
    Standard INT,
    MUSIC VARCHAR(50)DEFAULT'music'
);

CREATE TABLE Dance_Students (
    Roll_Number INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Division CHAR(1),
    Instructor_Name VARCHAR(50),
    Age INT,
    Standard INT,
    DANCE VARCHAR(50)DEFAULT'DANCE'
);

INSERT INTO Music_Students (Roll_Number, Student_Name, Division, Instructor_Name, Age, Standard)
VALUES 
(101, 'John Smith', 'A', 'Mr. Williams', 14, 8),
(102, 'Jane Doe', 'B', 'Mrs. Thompson', 15, 9),
(103, 'Alex Turner', 'A', 'Mr. Williams', 14, 8),
(104, 'Emily Clarke', 'B', 'Mrs. Thompson', 16, 10),
(105, 'Michael Brown', 'A', 'Mr. Williams', 15, 9),
(106, 'Sarah Davis', 'C', 'Mr. Cooper', 14, 8),
(107, 'Robert Wilson', 'B', 'Mrs. Thompson', 16, 10),
(108, 'Olivia Martin', 'C', 'Mr. Cooper', 15, 9),
(109, 'Lucy White', 'A', 'Mr. Williams', 13, 8),
(110, 'David Green', 'C', 'Mr. Cooper', 14, 9);


INSERT INTO Dance_Students (Roll_Number, Student_Name, Division, Instructor_Name, Age, Standard)
VALUES 
(103, 'Alex Turner', 'A', 'Mrs. Johnson', 14, 8),
(104, 'Emily Clarke', 'B', 'Mr. Brown', 16, 10),
(201, 'Peter Gray', 'A', 'Mrs. Johnson', 14, 8),
(202, 'Hannah Scott', 'B', 'Mr. Brown', 15, 9),
(203, 'John Smith', 'A', 'Mrs. Johnson', 14, 8),
(204, 'Grace Evans', 'C', 'Mr. Taylor', 16, 10),
(205, 'Robert Wilson', 'B', 'Mr. Brown', 16, 10),
(206, 'Emily Davis', 'C', 'Mr. Taylor', 14, 8),
(207, 'Jacob Harris', 'A', 'Mrs. Johnson', 15, 9),
(208, 'Ella Baker', 'B', 'Mr. Brown', 16, 10);

select * from music_students;
select * from dance_students;

SELECT M.Roll_Number as music_Roll_Number, M.Student_Name AS Music_Student_Name, M.Division as Music_Division, M.Instructor_Name as Music_Instructor_Name, M.Age as Music_age, M.Standard as Music_Standard, 
       D.Roll_Number AS Dance_Roll_Number, D.Student_Name AS Dance_Student_Name, D.Standard AS Dance_Standard
FROM Music_Students M
INNER JOIN Dance_Students D ON M.Roll_Number = D.Roll_Number;

select m.Student_name,d.student_name 
from music_students m
inner join dance_students d on m.roll_number = d.roll_number;

-- Left Join (Retrieve all students from the Music_Students table with any matches from Dance_Students):
SELECT M.Roll_Number, M.Student_Name, M.Division, M.Instructor_Name, M.Age, M.Standard, 
D.Roll_Number AS Dance_Roll_Number, D.Student_Name AS Dance_Student_Name, D.Standard AS Dance_Standard
FROM Music_Students as M LEFT JOIN Dance_Students as D ON M.Roll_Number = D.Roll_Number;

-- Right Join (Retrieve all students from the Music_Students table with any matches from Dance_Students):
SELECT M.Roll_Number, M.Student_Name, M.Division, M.Instructor_Name, M.Age, M.Standard, 
D.Roll_Number AS Dance_Roll_Number, D.Student_Name AS Dance_Student_Name, D.Standard AS Dance_Standard
FROM Music_Students as M RIGHT JOIN Dance_Students as D ON M.Roll_Number = D.Roll_Number;

-- Union (Combine all students from both tables, without duplicates):
SELECT Roll_Number, Student_Name, Division, Instructor_Name-- MUSIC AS CLASS
FROM Music_Students
UNION
SELECT Roll_Number, Student_Name, Division, Instructor_Name-- ,DANCE AS CLASS 
FROM Dance_Students;

-- Union All (Combine all students from both tables, including duplicates):
SELECT Roll_Number, Student_Name, Division, Instructor_Name
FROM Music_Students
UNION ALL
SELECT Roll_Number, Student_Name, Division, Instructor_Name
FROM Dance_Students;

SELECT Roll_Number, Student_Name, 'M' as Music
FROM Music_Students
UNION
SELECT Roll_Number, Instructor_Name as Student_Name, 'd' as Dance
FROM Dance_Students;

INSERT INTO music_students_1 VALUES (111,'David Green', 'C', 'Mr. Cooper', 14, 9,DEFAULT);
DESC music_students_1;

select * from music_students_1;
