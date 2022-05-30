-- 28/05 Version

use ELIDEK;


-- 3.3 ok
-- field_id f given by user
drop view if exists active_projects;
create view active_projects as
select project_id, project_title, fund_ammount 
from project
where start_date <= curdate() and end_date > curdate();

drop view if exists projects_in_field_f;
create view projects_in_field_f as
select p.project_id, p.project_title from active_projects p
inner join project_field pf on p.project_id = pf.project_id
where pf.field_id = 1 and p.fund_ammount >= 0;

drop view if exists researchers_in_field_f;
create view researchers_in_field_f as
select r.researcher_id, r.researcher_name, r.researcher_surname from researcher r
inner join researcher_works_on rwo on r.researcher_id = rwo.researcher_id
inner join active_projects p on p.project_id = rwo.project_id
inner join project_field pf on p.project_id = pf.project_id
where pf.field_id = 1;


-- 3.4 ok

select o.org_id, o.org_name, count(*) as count_proj 
from org o
inner join project p on p.org_id = o.org_id
where year(p.start_date) = year(p.start_date) + 1
group by org_id
having count(*) >= 10;



-- 3.5 ok
drop view if exists field_tuple;

create view field_tuple as
select p1.field_id as field1, p2.field_id as field2, p1.project_id 
from project_field p1, project_field p2
where p1.project_id = p2.project_id and p1.field_id < p2.field_id;

select s1.field_name as scientific_field1, t.field1 as id1, s2.field_name as scientific_field2, t.field2 as id2, count(*) as tuple_count 
from field_tuple t 
inner join scientific_field s1 on s1.field_id = t.field1 
inner join scientific_field s2 on s2.field_id = t.field2
inner join project_field p1 on p1.field_id = t.field1 and p1.project_id = t.project_id
inner join project_field p2 on p2.field_id = t.field2 and p1.project_id = p2.project_id 
group by t.field1, t.field2
order by tuple_count desc
limit 3; 


-- 3.6 ok
drop view if exists young_researchers;

create view young_researchers as 
select researcher_id, researcher_name, researcher_surname, extract(year from from_days(age)) as age_in_years
from researcher 
where extract(year from from_days(age)) < 40; 

select r.researcher_id, r.researcher_name, r.researcher_surname, count(*) as proj_count 
from young_researchers r 
inner join researcher_works_on rwo on r.researcher_id = rwo.researcher_id 
group by r.researcher_id 
order by proj_count desc 
limit 10;

-- 3.7 ok
drop view if exists top_5;

create view top_5 as 
select concat(e.ex_surname, ' ', e.ex_name) exec_full_name, o.org_name, sum(fund_ammount) total_fund 
from project p
inner join org o on p.org_id = o.org_id
inner join executive e on e.executive_id = p.executive_id
where o.category = 'Company'
group by exec_full_name, o.org_name
order by total_fund desc
limit 5;

-- 3.8 ok
drop view if exists no_del;

create view no_del as 
select p.project_id from project p
where not exists (select d.del_id from deliverable d where p.project_id = d.project_id);

drop view if exists no_del_per_res;
create view no_del_per_res as
select r.researcher_id, r.researcher_name, r.researcher_surname, count(*) as proj_count from researcher r
inner join researcher_works_on rwo on rwo.researcher_id = r.researcher_id
inner join no_del p on p.project_id = rwo.project_id
group by researcher_id;

select * from no_del_per_res where proj_count >= 5;