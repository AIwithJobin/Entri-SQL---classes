use entri_d42;

-- like operator 
-- like names starting with r 
-- Types of like operator
-- % wildcard character:  it gives output which matches zero or more character
-- _ wildcard character : it matches exactly one character

select * from football_players;

-- USING % WILDCARD

-- starting with c or l
select player_name,age from football_players where player_name like "L%";
select player_name,age from football_players where player_name like "c%";

-- ending with i
select player_name,age from football_players where player_name like "%i";

-- starting with l and ending with i
select player_name,age from football_players where player_name like "l%i";

-- anywhere n
select player_name,age from football_players where player_name like "%b%";

-- ending with er
select player_name,age from football_players where player_name like "%er";

-- starting with er
select player_name,age from football_players where player_name like "er%";

-- anywhere er
select player_name,age from football_players where player_name like "%er%";



-- USING _ WILDCARD

-- name having n and 8 other carecters
select player_name,age from football_players where player_name like "n________";

-- name having 5 letters
select player_name,age from football_players where player_name like "_____";

-- name having 9 characters
select player_name,age from football_players where player_name like "_________";

-- name having a as second character 
select player_name,age from football_players where player_name like "_a%";

-- name having i as second character 
select player_name,age from football_players where player_name like "_i%";

-- name with kevin 
select player_name,age from football_players where player_name like "k%n%";

-- find player name starting from s and ending o
select player_name,age from football_players where player_name like "s%o";

