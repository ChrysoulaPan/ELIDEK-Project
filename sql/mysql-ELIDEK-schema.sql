-- 28/05 Version

set @old_unique_checks = @@unique_checks, unique_checks = 0;
set @old_foreign_key_checks = @@foreign_key_checks, foreign_key_checks = 0; 
set @old_sql_mode = @@sql_mode, sql_mode = 'traditional';

drop schema if exists ELIDEK;
create schema ELIDEK;
use ELIDEK;

create table org (
	org_id int unsigned not null auto_increment,
    org_name varchar(35) not null,
    org_abbreviation varchar(5) not null,
    ad_road varchar(15),
    ad_number int unsigned,
    postcode numeric(5,0),
	city varchar(20) not null,
    category enum('University', 'Research Center', 'Company') not null, 
    primary key (org_id)
) engine = InnoDB default charset = utf8;

create index idx_org_cat on org (org_id, category);

create table researcher (
	researcher_id int unsigned not null auto_increment,
    researcher_name varchar(15) not null,
    researcher_surname varchar(15) not null,
    sex char(1) default null,
    birth_date date not null,
    org_id int unsigned not null,
    work_date date default null,
    age int unsigned as (datediff (curdate(), birth_date)),
    primary key (researcher_id),
    key idx_res_full_name (researcher_name, researcher_surname),
    key idx_fk_org_id (org_id),
    constraint `fk_res_org` foreign key (org_id) references org (org_id) on delete restrict on update cascade,
	check (sex in ('M','F','O'))
) engine = InnoDB default charset = utf8;

create table executive (
	executive_id int unsigned not null auto_increment,
    ex_name varchar(10) not null,
    ex_surname varchar(15) not null,
    primary key (executive_id),
    key idx_exec_full_name (ex_name, ex_surname)
) engine = InnoDB default charset = utf8;

create table organization_phones (
	org_id int unsigned not null,
    phone_number numeric(10,0) not null unique,
    primary key (org_id, phone_number),
    constraint `fk_org_phones` foreign key (org_id) references org (org_id) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table scientific_field (
	field_id int unsigned not null auto_increment,
    field_name varchar(30) not null,
    descript varchar(100) default null,
    primary key (field_id)
) engine = InnoDB default charset = utf8;

create table program (
	program_id int unsigned not null auto_increment, 
    program_title varchar(60) not null,
    department varchar(20) not null,
    primary key (program_id),
    key idx_prog_title (program_title)
) engine = InnoDB default charset = utf8;

create table project (
	project_id int unsigned not null auto_increment,
    project_title varchar(30) not null,
    summary varchar(100) default null,
    fund_ammount int unsigned default 0,
    start_date date not null,
    end_date date not null,
    duration int unsigned as (datediff (end_date, start_date)),
    sup_researcher_id int unsigned not null,
    org_id int unsigned not null,
    program_id int unsigned default null,
    executive_id int unsigned not null,
    eval_researcher_id int unsigned not null,
    evaluation_grade numeric(2,1) default null,
    evaluation_date date default null,
    primary key (project_id),
    key idx_sup_id (sup_researcher_id),
    key idx_org_id (org_id),
    key idx_prog_id (program_id),
    key idx_exec_id (executive_id),
    key idx_eval_id (eval_researcher_id),
    constraint `fk_proj_sup` foreign key (sup_researcher_id) references researcher (researcher_id) on delete restrict on update cascade,
    constraint `fk_proj_org` foreign key (org_id) references org (org_id) on delete restrict on update cascade,
	constraint `fk_proj_program` foreign key (program_id) references program (program_id) on delete restrict on update cascade,
    constraint `fk_proj_exec` foreign key (executive_id) references executive (executive_id) on delete restrict on update cascade,
	constraint `fk_proj_eval` foreign key (eval_researcher_id) references researcher (researcher_id) on delete restrict on update cascade,
    check (fund_ammount >= 100000 and fund_ammount <= 1000000),
    check (duration >= 365 and duration <= 1461),
    check (evaluation_date >= start_date and evaluation_date <= end_date)
) engine = InnoDB default charset = utf8;

create table deliverable (
	del_id int unsigned not null auto_increment,
    project_id int unsigned not null,
    del_title varchar(30) not null,
    del_summary varchar(100) default null,
    del_date date not null,
    primary key (del_id, project_id),
    key idx_del_proj_id (project_id),
    constraint `fk_del_proj` foreign key (project_id) references project (project_id) on delete restrict on update cascade
) engine = InnoDB default charset = utf8;

create table researcher_works_on (
	researcher_id int unsigned not null,
    project_id int unsigned not null,
    primary key (researcher_id, project_id),
    constraint `fk_workson_res` foreign key (researcher_id) references researcher (researcher_id) on delete cascade on update cascade,
    constraint `fk_workson_proj` foreign key (project_id) references project (project_id) on delete cascade on update cascade    
) engine = InnoDB default charset = utf8;

create table university (
	university_id int unsigned not null auto_increment,
    org_id int unsigned not null,
    category enum('University') not null default 'University',
    budget int unsigned not null,
    primary key (university_id),
    key idx_uni_org_id (org_id),
    constraint `fk_uni_org` foreign key (org_id, category) references org (org_id, category) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table research_center (
	rcenter_id int unsigned not null auto_increment,
    org_id int unsigned not null,
	category enum('Research Center') not null default 'Research Center',
    ministry_budget int unsigned,
    private_budget int unsigned not null,
    primary key (rcenter_id),
    key idx_rc_org_id (org_id),
	constraint `fk_rcenter_org` foreign key (org_id, category) references org (org_id, category) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table company (
	company_id int unsigned not null auto_increment,
    org_id int unsigned not null,
	category enum('Company') not null default 'Company',
    equity int unsigned not null,
    primary key (company_id),
    key idx_comp_org_id (org_id),
	constraint `fk_comp_org` foreign key (org_id, category) references org (org_id, category) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table project_field (
	project_id int unsigned not null,
    field_id int unsigned not null,
    primary key (project_id, field_id),
    constraint `fk_field_proj` foreign key (project_id) references project (project_id) on delete cascade on update cascade,
    constraint `fk_proj_field` foreign key (field_id) references scientific_field (field_id) on delete cascade on update cascade    
) engine = InnoDB default charset = utf8;

delimiter ;;

create trigger `ins_workson` before insert on `researcher_works_on` for each row begin
	declare pr_id int unsigned;
	declare eval_res_id int unsigned;
	select project_id, eval_researcher_id
    into pr_id, eval_res_id
    from project
    where project_id = new.project_id;
    if  new.researcher_id = eval_res_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot add this relationship';
    end if; 
  end;;
  
create trigger `upd_workson` before update on `researcher_works_on` for each row begin
	declare pr_id int unsigned;
	declare eval_res_id int unsigned;
	select project_id, eval_researcher_id
    into pr_id, eval_res_id
    from project
    where project.project_id = new.project_id;
    if  new.researcher_id = eval_res_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot update this relationship';
    end if; 
  end;;
  
create trigger `ins_workson2` before insert on `researcher_works_on` for each row begin
	declare pr_id int unsigned;
	declare or1_id int unsigned;
    declare res_id int unsigned;
    declare or2_id int unsigned;
	select p.project_id, p.org_id, r.org_id, r.researcher_id
    into pr_id, or1_id, or2_id, res_id
    from project p, researcher r
    where p.project_id = new.project_id and r.researcher_id = new.researcher_id;
    if  or1_id != or2_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot add this relationship';
    end if; 
  end;;
  
create trigger `upd_workson2` before update on `researcher_works_on` for each row begin
	declare pr_id int unsigned;
	declare or1_id int unsigned;
    declare res_id int unsigned;
    declare or2_id int unsigned;
	select p.project_id, p.org_id, r.org_id, r.researcher_id
    into pr_id, or1_id, or2_id, res_id
    from project p, researcher r
    where p.project_id = new.project_id or r.researcher_id = new.researcher_id;
    if  or1_id != or2_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot add this relationship';
    end if; 
  end;;
  
create trigger `ins_proj1` before insert on `project` for each row begin
    if  new.sup_researcher_id = new.eval_researcher_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot insert this project';
    end if; 
  end;;
  
create trigger `upd_proj1` before update on `project` for each row begin
	declare sup_res_id int unsigned;
	declare eval_res_id int unsigned;
	select sup_researcher_id, eval_researcher_id
    into sup_res_id, eval_res_id
    from project
    where project.sup_researcher_id = new.sup_researcher_id or project.eval_researcher_id = new.eval_researcher_id;
    if  new.sup_researcher_id = eval_res_id or new.eval_researcher_id = sup_res_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot update this project';
    end if; 
  end;;
  
create trigger `ins_proj2` before insert on `project` for each row begin
    if new.end_date < new.start_date then
        signal sqlstate '45000'   
        set message_text = 'Cannot insert this project';
    end if; 
  end;;
  
/* Check if the evaluator added does not work on the organization specified in org_id */
create trigger `ins_eval` before insert on `project` for each row begin
    declare res_id int unsigned;
	declare or_id int unsigned;
	select researcher.researcher_id, researcher.org_id
    into res_id, or_id 
    from researcher
    where new.eval_researcher_id = researcher.researcher_id;
    if new.org_id = or_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot add this project due to the evaluator';
    end if; 
  end;;
 
create trigger `upd_eval` before update on `project` for each row begin
	declare or1_id int unsigned;
	declare eval_res_id int unsigned;
    declare res_id int unsigned;
    declare or2_id int unsigned;
	select project.org_id, project.eval_researcher_id, researcher.researcher_id, researcher.org_id
    into or1_id, eval_res_id, res_id, or2_id 
    from project join researcher
    where project.eval_researcher_id = new.eval_researcher_id and new.eval_researcher_id = researcher.researcher_id;
    if or1_id = or2_id then
        signal sqlstate '45000'   
        set message_text = 'Cannot update this project';
    end if; 
  end;;

create trigger `ins_del_date` before insert on `deliverable` for each row begin
	declare st_date date;
    declare en_date date;
    declare pr1_id int unsigned; 
	select p.start_date, p.end_date, p.project_id
	into st_date, en_date, pr1_id
    from project p
    where p.project_id = new.project_id;
    if new.del_date < st_date or new.del_date > en_date then
        signal sqlstate '45000'   
        set message_text = 'Cannot insert this deliverable';
    end if; 
  end;;
  
create trigger `upd_del_date` before update on `deliverable` for each row begin
	declare st_date date;
    declare pr1_id int unsigned; 
    declare pr2_id int unsigned;
	select p.start_date, p.project_id, d.project_id
    into st_date, pr1_id, pr2_id 
    from project p, deliverable d
    where d.project_id = new.project_id and new.project_id = p.project_id;
    if new.del_date < st_date then
        signal sqlstate '45000'   
        set message_text = 'Cannot update this deliverable';
    end if; 
  end;;  

delimiter ;

set sql_mode=@old_sql_mode;
set foreign_key_checks=@old_foreign_key_checks;
set unique_checks=@old_unique_checks;
