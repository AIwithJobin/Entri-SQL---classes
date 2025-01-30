use entri_d42;

select * from dance_students;
select * from music_students;
select * from players;

create view player_view as select player_code,player_name,age from players;
select * from player_view;

INSERT INTO Player_View (Player_Code, Player_Name, Age)
VALUES (11, 'Linda Green', 25);

UPDATE Player_View SET Player_Name = 'Michael Clarke Jr.', Age = 31 WHERE Player_Code = 3;

DELETE FROM Player_view WHERE Player_Code = 5;

CREATE VIEW Player_Summary_View AS
SELECT 
    Player_Role,
    COUNT(Player_Code) AS Total_Players,
    AVG(Age) AS Average_Age,
    AVG(Strike_Rate) AS Average_Strike_Rate
FROM Players GROUP BY Player_Role;

select * from player_summary_view;

INSERT INTO Players (Player_Code, Player_Name, Player_Role, Age, Instructor_Name, Strike_Rate)
VALUES (12, 'Tom Harris', 'Batsman', 24, 'Mr. Black', 89.10);