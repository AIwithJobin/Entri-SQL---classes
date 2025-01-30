-- in full outer join along with the matching records or rows non matching rows are also displayed from both the tables.
-- the non matching rows will be displayed with null values in the columns.


-- left join 

select m.roll_number as music_roll_number,m.Student_name as music_student_name ,d.roll_number as dance_roll_number,d.student_name as dance_student_name
from music_students as m 
join dance_students as d on m.roll_number=d.roll_number;

-- right join 

select m.roll_number as music_roll_number,m.Student_name as music_student_name ,d.roll_number as dance_roll_number,d.student_name as dance_student_name
from music_students as m 
right join dance_students as d on m.roll_number=d.roll_number;

-- full outer join

select m.roll_number as music_roll_number,m.Student_name as music_student_name ,d.roll_number as dance_roll_number,d.student_name as dance_student_name
from music_students as m 
left join dance_students as d on m.roll_number=d.roll_number

union 

select m.roll_number as music_roll_number,m.Student_name as music_student_name ,d.roll_number as dance_roll_number,d.student_name as dance_student_name
from music_students as m 
right join dance_students as d on m.roll_number=d.roll_number;



