use entri_d42;

DELIMITER $$
CREATE FUNCTION oddoreveb(num int )
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE value varchar(20);
  if num % 2=0 then
  set value ="even";
  else 
 set value ="odd";
  end if;
  
  if value="even" then 
  return num*num*num;
  else 
  return num*num;
  end if;
  
END $$
DELIMITER ;

select oddoreveb(2)


DELIMITER $$
CREATE FUNCTION product(num1 int, num2 int)
RETURNS INT
DETERMINISTIC
BEGIN
  return num1*num2;
END $$
DELIMITER ;

select product(4,5)as product

delimiter $$
create function rand_num_generator_1()
returns int
not deterministic
begin
return rand();
end $$
delimiter ;

delimiter $$
create procedure greet3(in user_name varchar(50),out to_do varchar(50))
begin
set to_do=concat("Hi"," ",user_name," ","Run");
end $$
delimiter ;

set @hi="";
call greet3("Johny",@hi);
select @hi as greet_and_todo;

DELIMITER //
CREATE PROCEDURE GetRemainder(INOUT num INT)
BEGIN
    SET num = num % 3;
END //
DELIMITER ;

set @number1 = 10;
call GetRemainder(@number1);
select @number1;


/*
delimiter $$
create procedure proc_name(in/out/inout x datatype,in/out/inout y datatype..)
begin
sql statements
END $$
DELIMITER ;
*/


delimiter $$
create procedure avg_strike_rate(in x varchar(20),out y double )
begin
select avg(strike_rate) into y  from players where player_role=x;
END $$
DELIMITER ;

set @avg=0;
call avg_strike_rate("batsman",@avg);
select @avg as " average strike rate";



-- input player role output all players in that role 


delimiter $$
create procedure players_in_roles(in x varchar(20) )
begin
select player_name  from players where player_role=x;
END $$
DELIMITER ;

call players_in_roles('batsman');

select * from players;

delimiter $$
create procedure instructor_update(in x int , inout y  varchar(20) )
begin
update players set instructor_name = y  where player_code = x;
select instructor_name into y from players where player_code=x;
END $$
DELIMITER ;


set@new_instructor="Mrs";
call instructor_update(1,@new_instructor);
SET SQL_SAFE_UPDATES = 0;
select @new_instructor as updtated_name;





delimiter $$
create procedure delete_player(in X int)
begin
delete from players  where player_code = x ; 
end $$
delimiter $$ ;

call delete_player(2);

-- stored procedures to input new values