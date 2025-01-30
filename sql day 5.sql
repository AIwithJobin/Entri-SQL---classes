create database football;
use football;

CREATE TABLE football_players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50),
    position VARCHAR(20),
    age INT,
    goals INT
);

INSERT INTO football_players (player_id, player_name, position, age, goals) VALUES
(1, 'Lionel Messi', 'Forward', 36, 700),
(2, 'Cristiano Ronaldo', 'Forward', 39, 750),
(3, 'Neymar Jr', 'Forward', 32, 350),
(4, 'Luka Modric', 'Midfielder', 38, 50),
(5, 'Kevin De Bruyne', 'Midfielder', 32, 60),
(6, 'Virgil van Dijk', 'Defender', 31, 15),
(7, 'Sergio Ramos', 'Defender', 37, 100),
(8, 'Robert Lewandowski', 'Forward', 35, 400),
(9, 'Alisson Becker', 'Goalkeeper', 31, NULL),
(10, 'Manuel Neuer', 'Goalkeeper', 37, NULL);

 insert into football_players values(12, null, 'Goalkeeper', 37, NULL);
 
select * from football_players;

#display age name of players whose age not = 35

select player_name , age from football_players where age !=35; 

select distinct position from football_players;
select distinct age from football_players;
select player_name from football_players where goals is null;
select player_name, goals from football_players where goals is not null;
select player_id from football_players where player_name is null;
select player_id from football_players where position  is null;

select player_name , position from football_players where position = "Forward" or position= "Goalkeeper" ;

select player_name , position from football_players where position not in (  "Midfielder" );
select player_name , position from football_players where position != "Midfielder" ;
select player_name , age from football_players where age between 30 and 35 ;
select player_name , age from football_players where age not  between 30 and 35 ;

select player_name from football_players order by player_name ;
select * from football_players order by player_name ;
select * from football_players order by player_name desc ;

select * from football_players order by age desc ;

select * from football_players limit 5 ;
select * from football_players ;
select * from football_players order by  player_id  desc limit 5  ;
