set @old_unique_checks = @@unique_checks, unique_checks = 0;
set @old_foreign_key_checks = @@foreign_key_checks, foreign_key_checks = 0; 
set @old_sql_mode = @@sql_mode, sql_mode = 'traditional';

drop schema if exists ELIDEK;
create schema ELIDEK;
use ELIDEK;


insert into `org` (`org_id`,`ad_road`,`ad_number`,`postcode`,`city`,`category`)
values
  (1,"SPCI","Erat. Ave",71,"37362","Sibi","'University' "),
  (2,"UL","Eget, Road",70,"06732","Murmansk","'Research Center'"),
  (3,"EMC","Magna. Av.",10,"42455","Edam","'Company'"),
  (4,"NI","Fermentum St.",113,"21124","Pau","'University' "),
  (5,"UNI","Neque Street",120,"63426","Itapipoca","'Research Center'"),
  (6,"ADIP","Lacinia St.",145,"47625","Wanaka","'Company'"),
  (7,"LAPOC","Orci Rd.",122,"94454","Vicuña","'University' "),
  (8,"DODIL","Sagittis Rd.",71,"11549","Mora","'Research Center'"),
  (9,"POFL","Tellus, Street",97,"79383","Vị Thanh","'Company'"),
  (10,"UTLTD","Ante. St.",45,"45963","Lévis","'University' ");
insert into `org` (`org_id`,`ad_road`,`ad_number`,`postcode`,`city`,`category`)
values
  (11,"ACFNI","In Street",72,"31823","Hammerfest","'Research Center'"),
  (12,"OINFF","Egestas Ave",132,"49241","Daknam","'Company'"),
  (13,"DUAMI","Risus St.",125,"46133","Sungei Kadut","'University' "),
  (14,"AAUI","Ac St.",52,"22135","Norman Wells","'Research Center'"),
  (15,"VLEPC","Tellus St.",117,"75855","Cambridge Bay","'Company'"),
  (16,"DIEN","Amet Road",87,"62574","Warrnambool","'University' "),
  (17,"AEM","Ac Rd.",129,"62679","Arequipa","'Research Center'"),
  (18,"ERI","Sit Ave",66,"16673","Allentown","'Company'"),
  (19,"NAMCO","Vel, Street",60,"57254","Jammu","'University' "),
  (20,"MOSCO","Purus. Rd.",126,"74513","Berlin","'Research Center'");
insert into `org` (`org_id`,`ad_road`,`ad_number`,`postcode`,`city`,`category`)
values
  (21,"ETIN","Magna. St.",149,"11111","Rangiora","'Company'"),
  (22,"LUCET","Hendrerit Av.",59,"57932","Port Harcourt","'University' "),
  (23,"DIAI","Nisl Rd.",149,"23641","Okigwe","'Research Center'"),
  (24,"ERATA","Non Rd.",137,"64115","Bregenz","'Company'"),
  (25,"AFL","Donec St.",34,"58282","Picton","'University' "),
  (26,"QUCO","Proin Av.",45,"64413","Salem","'Research Center'"),
  (27,"TIPE","Amet Rd.",142,"84338","Grasse","'Company'"),
  (28,"ORLU","Quis Street",90,"14380","Mo i Rana","'University' "),
  (29,"UJU","Ultricies St.",105,"52032","Meppel","'Research Center'"),
  (30,"NEI","Mollis Av.",54,"27295","Tynda","'Company'");
  
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (1, 'Cyrill', 'Bedlington', 'M', '4/5/1976', '5/28/2017');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (2, 'Alane', 'Jurasek', 'F', '2/1/1990', '3/12/2005');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (3, 'Letti', 'Le Gall', 'F', '6/4/1998', '5/5/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (4, 'Maribel', 'Sickert', 'F', '2/14/1994', '2/20/2005');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (5, 'Cort', 'Kilkenny', 'M', '3/10/1982', '7/5/2006');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (6, 'Wilmer', 'Cockarill', 'M', '10/15/1985', '4/13/2014');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (7, 'Bernarr', 'Withey', 'M', '1/14/1963', '1/9/2005');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (8, 'Levi', 'Dollimore', 'M', '5/7/1992', '10/23/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (9, 'Augustine', 'Skipper', 'M', '6/29/1986', '3/21/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (10, 'Elyssa', 'Folbigg', 'F', '11/3/1978', '11/27/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (11, 'Wesley', 'Januszkiewicz', 'M', '5/9/1988', '11/29/2002');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (12, 'Isa', 'Allred', 'F', '11/26/1968', '11/8/2011');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (13, 'Bennett', 'Mein', 'M', '10/11/1977', '12/14/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (14, 'Sofie', 'Heinecke', 'F', '8/14/1969', '11/10/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (15, 'Elvin', 'Ruffey', 'M', '9/7/1973', '8/4/2013');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (16, 'Lew', 'Faier', 'M', '10/30/1986', '6/2/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (17, 'Sherwin', 'Congreve', 'M', '6/24/1980', '1/10/2012');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (18, 'Wes', 'Elie', 'M', '4/22/1974', '5/15/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (19, 'Nan', 'Swainger', 'F', '4/29/1993', '12/12/2016');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (20, 'Wendye', 'Pottiphar', 'F', '5/7/1968', '1/28/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (21, 'Nobe', 'Maytum', 'M', '9/3/1991', '4/16/2011');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (22, 'Alexine', 'Sakins', 'F', '5/8/1990', '6/19/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (23, 'Eward', 'Cousin', 'M', '6/8/1998', '3/23/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (24, 'Ava', 'Bexley', 'F', '1/30/1969', '11/27/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (25, 'Igor', 'Laddle', 'M', '5/4/1989', '4/25/2011');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (26, 'Gusti', 'Agutter', 'F', '4/5/1989', '2/8/2019');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (27, 'Scott', 'Issitt', 'M', '1/8/1995', '12/27/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (28, 'Llywellyn', 'Geri', 'M', '10/5/1971', '6/22/2021');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (29, 'Fielding', 'Robecon', 'M', '3/11/1969', '3/4/2017');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (30, 'Yuma', 'Menendez', 'M', '3/6/1978', '1/1/2003');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (31, 'Cheston', 'Lorryman', 'M', '3/12/1982', '7/6/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (32, 'Jammal', 'Coye', 'M', '1/14/1971', '12/8/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (33, 'Jada', 'Gosart', 'F', '11/8/1977', '6/9/2013');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (34, 'Tiffy', 'Signe', 'F', '10/25/1961', '1/18/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (35, 'Bron', 'Gisbey', 'M', '8/21/1992', '1/12/2019');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (36, 'Allys', 'Whitlow', 'F', '2/24/1964', '3/22/2003');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (37, 'Thebault', 'Deschelle', 'M', '2/28/1989', '9/21/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (38, 'Abey', 'Sherrett', 'M', '6/11/1968', '3/19/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (39, 'Kitti', 'Leipnik', 'F', '1/15/1975', '6/13/2021');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (40, 'Werner', 'Cartwight', 'M', '11/27/1977', '11/21/2013');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (41, 'Chauncey', 'Gudge', 'M', '7/30/1974', '2/19/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (42, 'Jesse', 'Dawks', 'M', '7/25/1971', '11/24/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (43, 'Sibel', 'Goodricke', 'F', '11/11/1997', '7/16/2002');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (44, 'Brant', 'Keaves', 'M', '9/7/1961', '3/30/2014');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (45, 'Ashbey', 'Copelli', 'M', '3/20/1969', '12/5/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (46, 'Birk', 'Winkle', 'M', '3/23/1966', '3/10/2016');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (47, 'Obidiah', 'Glasscock', 'M', '5/2/1981', '4/7/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (48, 'Otto', 'Guile', 'M', '12/8/1984', '6/25/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (49, 'Jacobo', 'Emm', 'M', '7/18/1985', '12/29/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (50, 'Abelard', 'Braganza', 'M', '1/10/1965', '8/31/2010');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (51, 'Debbi', 'Colquitt', 'F', '4/9/1966', '2/7/2021');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (52, 'Rinaldo', 'Bricksey', 'M', '1/18/1978', '4/29/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (53, 'Blondell', 'Riquet', 'F', '6/23/1993', '6/19/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (54, 'Earl', 'Gwin', 'M', '1/23/1986', '10/3/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (55, 'Clarke', 'Chucks', 'M', '4/10/1980', '3/19/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (56, 'Adella', 'Warburton', 'F', '6/14/1993', '8/29/2012');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (57, 'Cate', 'Berwick', 'F', '10/2/1992', '9/12/2021');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (58, 'Ulysses', 'Tapenden', 'M', '5/13/1984', '6/22/2019');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (59, 'Noel', 'Teideman', 'M', '6/21/1977', '2/9/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (60, 'Martainn', 'Rickaert', 'M', '11/29/1979', '2/26/2012');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (61, 'Orville', 'Finker', 'M', '12/16/1978', '8/27/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (62, 'Mallorie', 'Braikenridge', 'F', '2/14/1967', '8/17/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (63, 'Arly', 'Fynan', 'F', '11/1/1983', '12/14/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (64, 'Anita', 'Booth', 'F', '10/7/1993', '9/8/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (65, 'Chrisse', 'McAllen', 'M', '10/3/1994', '1/20/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (66, 'Isabelle', 'Fiddyment', 'F', '2/5/1997', '7/17/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (67, 'Margette', 'Gavozzi', 'F', '1/17/1979', '11/26/2019');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (68, 'Nichols', 'Liquorish', 'M', '12/12/1987', '5/15/2012');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (69, 'Whit', 'Whorf', 'M', '9/23/1965', '11/22/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (70, 'Etta', 'Croci', 'F', '5/24/1968', '7/26/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (71, 'Andonis', 'Tuley', 'M', '12/18/1999', '6/29/2001');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (72, 'Barbra', 'Sipson', 'F', '11/20/1995', '5/8/2013');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (73, 'Annamarie', 'Milsom', 'F', '3/9/1982', '3/28/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (74, 'Adolph', 'Ghiron', 'M', '5/24/1969', '11/28/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (75, 'Rubie', 'Shortland', 'F', '5/13/1974', '6/5/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (76, 'Amalea', 'McCosh', 'F', '1/19/1973', '6/11/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (77, 'Kenn', 'Guilaem', 'M', '11/13/1978', '8/26/2011');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (78, 'Estevan', 'Croshaw', 'M', '11/22/1993', '3/15/2007');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (79, 'Ryon', 'Gronow', 'M', '5/19/1973', '1/11/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (80, 'Rainer', 'Reeds', 'M', '7/17/1997', '11/16/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (81, 'Cherish', 'Sichardt', 'F', '5/20/1991', '2/20/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (82, 'Maryjane', 'McShane', 'F', '2/19/1984', '9/2/2011');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (83, 'Mandi', 'Oslar', 'F', '1/17/1994', '2/9/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (84, 'Darci', 'Donneely', 'F', '3/31/1969', '7/24/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (85, 'Ora', 'Philippault', 'F', '2/15/1986', '6/4/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (86, 'Bevan', 'Tiffney', 'M', '7/23/1985', '12/12/2006');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (87, 'Maxie', 'Lewington', 'F', '6/24/1978', '7/21/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (88, 'Marti', 'Ind', 'F', '4/19/2000', '2/3/2005');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (89, 'Josephine', 'Easton', 'F', '3/7/2000', '5/17/2021');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (90, 'Weylin', 'Sansom', 'M', '3/2/1986', '4/23/2017');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (91, 'Darlene', 'Doerrling', 'F', '12/3/1991', '10/1/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (92, 'Jedd', 'Cecely', 'M', '9/19/1981', '11/13/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (93, 'De', 'Ibotson', 'F', '11/28/1965', '4/7/2010');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (94, 'Elbertina', 'Silby', 'F', '6/23/1964', '6/2/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (95, 'Robina', 'Panniers', 'F', '8/22/1981', '7/22/2001');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (96, 'Yvor', 'Cowser', 'M', '3/18/1967', '7/25/2002');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (97, 'Zed', 'Follacaro', 'M', '7/11/1961', '10/31/2013');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (98, 'Darwin', 'Burgise', 'M', '5/18/1997', '8/14/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (99, 'Matthus', 'Bosence', 'M', '5/8/1964', '12/29/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (100, 'Paquito', 'Cramp', 'M', '3/17/1984', '9/22/2001');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (101, 'Alfonse', 'Rogger', 'M', '8/14/1982', '8/21/2010');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (102, 'Glendon', 'McCrann', 'M', '10/11/1969', '8/18/2006');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (103, 'Vyky', 'Sutherley', 'F', '8/2/1988', '11/6/2005');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (104, 'Reynolds', 'Durning', 'M', '4/29/1994', '10/30/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (105, 'Darby', 'Poletto', 'M', '10/22/1961', '3/21/2018');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (106, 'Babette', 'St. Quentin', 'F', '2/20/1994', '11/19/2014');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (107, 'Nobe', 'Fernyhough', 'M', '9/3/1970', '1/11/2006');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (108, 'Nevsa', 'Harrop', 'F', '4/30/1980', '4/9/2011');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (109, 'Emlyn', 'Yockney', 'M', '12/30/1995', '6/24/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (110, 'Tommy', 'Vinick', 'M', '3/6/1976', '3/26/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (111, 'Jasun', 'Monini', 'M', '12/21/1978', '1/22/2020');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (112, 'Carter', 'Daniellot', 'M', '4/3/1991', '7/26/2014');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (113, 'Tammie', 'Nelthropp', 'F', '4/19/1969', '6/17/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (114, 'Clemmy', 'Fibben', 'F', '9/26/1998', '3/7/2012');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (115, 'Padriac', 'Death', 'M', '1/12/1965', '11/18/2004');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (116, 'Bernard', 'Kale', 'M', '3/2/1990', '8/29/2008');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (117, 'Brandy', 'Melmar', 'M', '5/13/1985', '1/1/2002');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (118, 'Dehlia', 'Wahlberg', 'F', '5/29/1967', '12/16/2009');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (119, 'Karalee', 'Prendiville', 'F', '8/22/1966', '10/22/2015');
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) values (120, 'Sadella', 'Dyte', 'F', '12/27/1985', '1/29/2014');
