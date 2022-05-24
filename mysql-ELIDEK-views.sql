set @old_unique_checks = @@unique_checks, unique_checks = 0;
set @old_foreign_key_checks = @@foreign_key_checks, foreign_key_checks = 0; 
set @old_sql_mode = @@sql_mode, sql_mode = 'traditional';

use ELIDEK;

create view projects_per_researcher as
select r1.researcher_name, r1.researcher_surname, (select p.project_title from project p
inner join researcher_works_on rwo
on p.project_id = rwo.project_id
inner join researcher r
on r.researcher_id = rwo.researcher_id
where r.researcher_id = r1.researcher_id) project
from researcher r1;


create view young_researchers as 
select researcher_name, researcher_surname, age
from researcher 
where extract(year from from_days(age)) < 40; 

create view active_projects as
select project_id, project_title 
from project
where start_date >= curdate() and end_date < curdate();

set sql_mode=@old_sql_mode;
set foreign_key_checks=@old_foreign_key_checks;
set unique_checks=@old_unique_checks;