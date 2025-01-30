-- aggregate functions

-- find the total goal scored by all the players 
select sum(goals)  as total_goals from football_players;

select avg(age)  as avg_age from football_players;

select count(player_id)  as count_players from football_players;

select max(goals)  as max_goal from football_players;

-- '750'

select player_name from football_players where goals = 750;

select * from football_players where goals = (select max(goals)  as max_goal from football_players);

-- GROUP BY 

