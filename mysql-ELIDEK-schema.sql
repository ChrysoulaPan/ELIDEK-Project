set @old_unique_checks = @@unique_checks, unique_checks = 0;
set @old_foreign_key_checks = @@foreign_key_checks, foreign_key_checks = 0; 
set @old_sql_mode = @@sql_mode, sql_mode = 'traditional';

drop schema if exists ELIDEK;
create schema ELIDEK;
use ELIDEK;

create table org (
	org_id int unsigned not null auto_increment,
    org_abbreviation varchar(5) not null,
    ad_road varchar(15),
    ad_number int,
    postcode numeric(5,0),
	city varchar(10) not null,
    -- category enum('University', 'Research Center', 'Company') not null, 
    primary key (org_id)
) engine = InnoDB default charset = utf8;

create table researcher (
	researcher_id int unsigned not null auto_increment,
    researcher_name varchar(10) not null,
    researcher_surname varchar(15) not null,
    sex char(1),
    birth_date date,
    org_id int unsigned not null,
    work_date date,
    project_id int unsigned not null,
    age int,
    primary key (researcher_id),
    key idx_fk_org_id (org_id),
    constraint `fk_res_org` foreign key (org_id) references org (org_id) on delete restrict on update cascade ,
	check (sex in ('m','f','o'))
) engine = InnoDB default charset = utf8;

create table executive (
	executive_id int unsigned not null auto_increment,
    ex_name varchar(10) not null,
    ex_surname varchar(15) not null,
    primary key (executive_id)
) engine = InnoDB default charset = utf8;

create table organization_phones (
	org_id int unsigned not null auto_increment,
    phone_number numeric(10,0) not null,
    primary key (org_id, phone_number),
    constraint `fk_org_phones` foreign key (org_id) references org (org_id) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table scientific_field (
	field_id int unsigned not null auto_increment,
    field_name varchar(30) not null,
    discription varchar(50) default null,
    primary key (field_id)
) engine = InnoDB default charset = utf8;

create table program (
	program_id int unsigned not null auto_increment, 
    program_title varchar(30) not null,
    department varchar(20) not null,
    primary key (program_id)
) engine = InnoDB default charset = utf8;

create table project (
	project_id int unsigned not null auto_increment,
    project_title varchar(30) not null,
    summary varchar(60) default null,
    fund_amount int,
    start_date datetime,
    end_date datetime,
    duration int,
    sup_researcher_id int unsigned not null,
    org_id int unsigned not null,
    field_id int unsigned not null,
    program_id int unsigned not null,
    executive_id int unsigned not null,
    eval_researcher_id int unsigned not null,
    evaluation_grade numeric(2,1),
    evaluation_date date,
    primary key (project_id),
    constraint fk_proj_sup foreign key (sup_researcher_id) references researcher (researcher_id) on delete restrict on update cascade,
    constraint `fk_proj_org` foreign key (org_id) references org (org_id) on delete restrict on update cascade,
    constraint `fk_proj_field` foreign key (field_id) references scientific_field (field_id) on delete restrict on update cascade,
	constraint `fk_proj_program` foreign key (program_id) references program (program_id) on delete restrict on update cascade,
    constraint `fk_proj_exec` foreign key (executive_id) references executive (executive_id) on delete restrict on update cascade,
	constraint fk_proj_eval foreign key (eval_researcher_id) references researcher (researcher_id) on delete restrict on update cascade,
    check (fund_amount >= 100000 and fund_amount <= 1000000),
    check (duration >= 365 and duration <= 1461)
) engine = InnoDB default charset = utf8;

create table deliverable (
	del_id int unsigned not null auto_increment,
    project_id int unsigned not null,
    del_title varchar(30) not null,
    del_summary varchar(60),
    del_date date,
    primary key (del_id),
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
    -- category enum('University') not null,
    budget int,
    primary key (university_id),
    -- constraint `fk_uni_org` foreign key (org_id, category) references org (org_id, category) on delete cascade on update cascade
	constraint `fk_uni_org` foreign key (org_id) references org (org_id) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table research_center (
	rcenter_id int unsigned not null auto_increment,
    org_id int unsigned not null,
	-- category enum('Research Center') not null,
    ministry_budget int,
    private_budget int,
    primary key (rcenter_id),
	-- constraint `fk_rcenter_org` foreign key (org_id, category) references org (org_id, category) on delete cascade on update cascade
	constraint `fk_rcenter_org` foreign key (org_id) references org (org_id) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

create table company (
	company_id int unsigned not null auto_increment,
    org_id int unsigned not null,
	-- category enum('Company') not null,
    equity int,
    primary key (company_id),
	-- constraint `fk_comp_org` foreign key (org_id, category) references org (org_id, category) on delete cascade on update cascade
     constraint `fk_comp_org` foreign key (org_id) references org (org_id) on delete cascade on update cascade
) engine = InnoDB default charset = utf8;

update project set duration = datediff (start_date, end_date);
update researcher set age = datediff (birth_date, curdate());