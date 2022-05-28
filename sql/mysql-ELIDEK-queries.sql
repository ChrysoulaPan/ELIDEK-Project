-- 28/05 Version

use ELIDEK;

delimiter ;;
-- 3.4
create view annual_proj as select org_id, org_name from org;
set y = 2000;
loop_years : loop
    insert into annual_proj (org_id, org_name)
    select org_id, org_name from org
    inner join project p on org_id = p.org_id 
	where year(p.start_date) = y and count(p.project_id) >= 10
    and count(p.project_id) in (
		select count(p.project_id) from project p
		inner join org on org_id = p.org_id 
		where year(p.start_date) = y + 1);
	if y = year(curdate()) - 1 leave loop_years;
    end if;
    set y = y + 1;
end loop loop_years;

-- 3.6 ok
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