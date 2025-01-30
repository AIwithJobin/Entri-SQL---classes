-- reusable block of codes aldready created by sql developers


use entri_d42;

CREATE TABLE Players (
    Player_Code INT PRIMARY KEY,
    Player_Name VARCHAR(50),
    Player_Role VARCHAR(20),
    Age INT,
    Instructor_Name VARCHAR(50),
    Strike_Rate DECIMAL(5, 2)
);

INSERT INTO Players (Player_Code, Player_Name, Player_Role, Age, Instructor_Name, Strike_Rate)
VALUES 
(1, 'John Smith', 'Batsman', 28, 'Mr. Williams', 89.75),
(2, 'Alex Johnson', 'Bowler', 32, 'Mr. Thompson', 75.23),
(3, 'Michael Clarke', 'All-rounder', 30, 'Mr. Johnson', 92.44),
(4, 'David Warner', 'Batsman', 27, 'Mr. Brown', 88.64),
(5, 'Sarah Lee', 'Bowler', 29, 'Mrs. Taylor', 77.35),
(6, 'Chris Taylor', 'All-rounder', 31, 'Mr. Cooper', 91.12),
(7, 'Jessica Brown', 'Batsman', 26, 'Mrs. Johnson', 93.78),
(8, 'Robert Wilson', 'Bowler', 33, 'Mr. Taylor', 74.89),
(9, 'Emily Davis', 'All-rounder', 28, 'Mrs. Thompson', 95.43),
(10, 'Jake White', 'Batsman', 29, 'Mr. Williams', 87.56);

select* from players;

SELECT Player_Name, UPPER(Player_Name) AS Uppercase_Name
FROM Players;

SELECT Player_Name, LOWER(Player_Name) AS Uppercase_Name
FROM Players;

SELECT Player_Name, length(Player_Name) AS lengthP,Instructor_Name,length(Instructor_Name) AS lengthI
FROM Players;

-- concat()

SELECT Player_Name, Player_Role, CONCAT(Player_Name, ' is a ', Player_Role) AS Player_Description
FROM Players;

-- round()
SELECT Player_Name, Strike_Rate, round(Strike_Rate) AS round_strikerate
FROM Players;

SELECT Player_Name, Strike_Rate, round(Strike_Rate) AS round_strike_rate , round(Strike_Rate, 1) as round_strike_rate_to_one_decimal_pace 
FROM Players;

-- replace()

select Instructor_Name , replace(Instructor_Name,'Mr.','coach') as replaced_instructer_name
from Players;

SELECT Instructor_Name, REPLACE(Instructor_Name, 'Mrs.', 'Coach') AS Replaced_Instructor_Name
FROM Players;







