 use entri_d42;
 
 select * from football_players;
 
  select position,min(age) as min_age  from football_players group by position having  min_age<30;

insert into football_players VALUES (11,null,"Forward",null,null);

select count(player_name) as player_count from football_players ;

select substring(player_name,1,3) from football_players;
  
select player_name,substring(player_name,4,7) as display_name from football_players;

select player_name,right(player_name,7) as display_name from football_players;


 