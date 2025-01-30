CREATE TABLE Playerss (
    Player_Code INT PRIMARY KEY,
    Player_Name VARCHAR(50),
    Player_Role VARCHAR(20),
    Age INT,
    Instructor_Name VARCHAR(50),
    Strike_Rate DECIMAL(5, 2)
);

INSERT INTO Playerss (Player_Code, Player_Name, Player_Role, Age, Instructor_Name, Strike_Rate)
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


select * from playerss;

#Find the name of the player with the highest strike rate.
SELECT Player_Name 
FROM Players 
WHERE Strike_Rate = (SELECT MAX(Strike_Rate) FROM Players);

#List all the players who are older than the player with the name 'David Warner'.
SELECT Player_Name 
FROM Players 
WHERE Age > (SELECT Age FROM Players WHERE Player_Name = 'David Warner');

#Find the names of all players with the same role as 'Emily Davis'.
SELECT Player_Name 
FROM Players 
WHERE Player_Role = (SELECT Player_Role FROM Players WHERE Player_Name = 'Emily Davis');

#Find the player with the second-highest strike rate.
SELECT Player_Name 
FROM Players 
WHERE Strike_Rate = (SELECT MAX(Strike_Rate) 
                     FROM Players 
                     WHERE Strike_Rate < (SELECT MAX(Strike_Rate) FROM Players));

#Find the youngest player’s name and age.
SELECT Player_Name, Age 
FROM Players 
WHERE Age = (SELECT MIN(Age) FROM Players); 

#List the names of players who have a strike rate higher than the average strike rate of all bowlers.
SELECT Player_Name 
FROM Players 
WHERE Strike_Rate > (SELECT AVG(Strike_Rate) FROM Players WHERE Player_Role = 'Bowler');

#Find the player with the highest strike rate among all-rounders.
SELECT Player_Name 
FROM Players 
WHERE Strike_Rate = (SELECT MAX(Strike_Rate) 
                     FROM Players 
                     WHERE Player_Role = 'All-rounder');

#List the names of players who have the same instructor as 'Chris Taylor'.
SELECT Player_Name 
FROM Players 
WHERE Instructor_Name = (SELECT Instructor_Name 
                         FROM Players 
                         WHERE Player_Name = 'Chris Taylor');

#Find the oldest player whose instructor's name contains 'Johnson'.
SELECT Player_Name, Age 
FROM Players 
WHERE Age = (SELECT MAX(Age) 
             FROM Players 
             WHERE Instructor_Name LIKE '%Johnson%');

#Find the total number of players younger than the player with the lowest strike rate.
SELECT COUNT(*) 
FROM Players 
WHERE Age < (SELECT Age 
             FROM Players 
             WHERE Strike_Rate = (SELECT MIN(Strike_Rate) FROM Players)); 

#try these codes and check output

SELECT Player_Name FROM Players WHERE Player_Name LIKE 'J%';

SELECT Player_Name 
FROM Players 
WHERE Player_Name in (SELECT Player_Name 
                     FROM Players 
                     WHERE Player_Name LIKE 'J%' );