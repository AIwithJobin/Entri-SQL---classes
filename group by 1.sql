	select * from football_players;
    
    -- GROUP BY 
    
    -- group by posiiton 
    select position,player_name from football_players group by position , player_name ;
    
    select position,player_name from football_players group by position , player_name  order by position,player_name;
    
    select position,count(player_id) as player_count  from football_players group by position;
    select position,sum(goals) as total_goals  from football_players group by position;
    
    select position,sum(goals) as total_goals  from football_players group by position having  total_goals>40;
    
    -- position of the players whose total goals is greater than 110 but only for players age greater than 32
    select position,sum(goals) as total_goals  from football_players  where age > 32 group by position having  total_goals>110;