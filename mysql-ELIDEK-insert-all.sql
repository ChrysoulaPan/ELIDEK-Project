set @old_unique_checks = @@unique_checks, unique_checks = 0;
set @old_foreign_key_checks = @@foreign_key_checks, foreign_key_checks = 0; 
set @old_sql_mode = @@sql_mode, sql_mode = 'traditional';

use ELIDEK;


insert into `org` (`org_id`,`org_name`,`org_abbreviation`,`ad_road`,`ad_number`,`postcode`,`city`,`category`)
values
  (1,"Sagittis Placerat Cras Institute","SPCI","Erat. Ave",71,"37362","Sibi","University"),
  (2,"Ultrices Limited","UL","Eget, Road",70,"06732","Murmansk","Research Center"),
  (3,"Enim Mauris Corporation","EMC","Magna. Av.",10,"42455","Edam","Company"),
  (4,"Neque Institute","NI","Fermentum St.",113,"21124","Pau","University"),
  (5,"Urna Nec Incorporated","UNI","Neque Street",120,"63426","Itapipoca","Research Center"),
  (6,"Adipiscing Inc.","ADIP","Lacinia St.",145,"47625","Wanaka","Company"),
  (7,"Laoreet Posuere Corp.","LAPOC","Orci Rd.",122,"94454","Vicuña","University"),
  (8,"Donec Dignissim Limited","DODIL","Sagittis Rd.",71,"11549","Mora","Research Center"),
  (9,"Phasellus Ornare Fusce Ltd","POFL","Tellus, Street",97,"79383","Vị Thanh","Company"),
  (10,"Ut Ltd","UTLTD","Ante. St.",45,"45963","Lévis","University");
insert into `org` (`org_id`,`org_name`,`org_abbreviation`,`ad_road`,`ad_number`,`postcode`,`city`,`category`)
values
  (11,"Ac Feugiat Non Incorporated","ACFNI","In Street",72,"31823","Hammerfest","Research Center"),
  (12,"Ornare In Faucibus Foundation","OINFF","Egestas Ave",132,"49241","Daknam","Company"),
  (13,"Duis A Mi Company","DUAMI","Risus St.",125,"46133","Sungei Kadut","University"),
  (14,"Arcu Aliquam Ultrices Incorporated","AAUI","Ac St.",52,"22135","Norman Wells","Research Center"),
  (15,"Venenatis Lacus Etiam PC","VLEPC","Tellus St.",117,"75855","Cambridge Bay","Company"),
  (16,"Dictum Eleifend Nunc LLP","DIEN","Amet Road",87,"62574","Warrnambool","University"),
  (17,"Aenean Euismod Mauris LLP","AEM","Ac Rd.",129,"62679","Arequipa","Research Center"),
  (18,"Egestas Rhoncus Industries","ERI","Sit Ave",66,"16673","Allentown","Company"),
  (19,"Nam Corporation","NAMCO","Vel, Street",60,"57254","Jammu","University"),
  (20,"Molestie Sodales Corp.","MOSCO","Purus. Rd.",126,"74513","Berlin","Research Center");
insert into `org` (`org_id`,`org_name`,`org_abbreviation`,`ad_road`,`ad_number`,`postcode`,`city`,`category`)
values
  (21,"Et Industries","ETIN","Magna. St.",149,"11111","Rangiora","Company"),
  (22,"Luctus Et Inc.""LUCET","Hendrerit Av.",59,"57932","Port Harcourt","University"),
  (23,"Diam At Industries","DIAI","Nisl Rd.",149,"23641","Okigwe","Research Center"),
  (24,"Erat Associates","ERATA","Non Rd.",137,"64115","Bregenz","Company"),
  (25,"Adipiscing Fringilla Limited","AFL","Donec St.",34,"58282","Picton","University"),
  (26,"Quisque Company","QUCO","Proin Av.",45,"64413","Salem","Research Center"),
  (27,"Tincidunt Pede PC","TIPE","Amet Rd.",142,"84338","Grasse","Company"),
  (28,"Orci Luctus Et LLC","ORLU","Quis Street",90,"14380","Mo i Rana","University"),
  (29,"Urna Justo Ltd","UJU","Ultricies St.",105,"52032","Meppel","Research Center"),
  (30,"Nec Eleifend Inc.","NEI","Mollis Av.",54,"27295","Tynda","Company");
  
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (1, 'Vick', 'Worts', 'Male', '1980-12-05', '2021-02-13');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (2, 'Sibylle', 'Quantrill', 'Female', '1991-12-20', '2017-10-18');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (3, 'Marnia', 'Linnard', 'Female', '1991-11-03', '2018-10-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (4, 'Jamima', 'Skudder', 'Female', '1981-05-09', '2013-01-06');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (5, 'Demott', 'Bird', 'Male', '1989-01-17', '2019-08-26');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (6, 'Fanchette', 'Boyington', 'Female', '1977-03-04', '2020-10-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (7, 'Ravi', 'Hucknall', 'Male', '1968-06-10', '2006-04-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (8, 'Adey', 'Tretter', 'Female', '1985-07-16', '2004-07-29');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (9, 'Kennie', 'Mizzen', 'Male', '1997-10-14', '2008-12-29');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (10, 'Ber', 'Brucker', 'Male', '1972-10-06', '2002-11-27');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (11, 'Grethel', 'Chape', 'Polygender', '1996-10-19', '2014-08-28');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (12, 'Hewet', 'Sparkwell', 'Male', '1968-05-09', '2019-01-11');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (13, 'Cozmo', 'Iiannoni', 'Male', '1996-08-04', '2020-12-17');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (14, 'Emelda', 'Paolone', 'Female', '1993-08-29', '2019-08-07');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (15, 'Gui', 'Matzke', 'Female', '1967-11-26', '2020-11-02');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (16, 'Ardine', 'Shilburne', 'Female', '1975-10-05', '2008-04-27');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (17, 'Sadye', 'Heatly', 'Non-binary', '1992-06-22', '2009-01-12');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (18, 'Keary', 'Sabban', 'Male', '1979-09-15', '2011-06-11');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (19, 'Hedvig', 'Dabell', 'Female', '1998-12-12', '2018-09-26');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (20, 'Janelle', 'Purton', 'Female', '1969-01-23', '2003-01-23');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (21, 'Jacqui', 'Iohananof', 'Female', '1999-03-15', '2015-04-24');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (22, 'Obie', 'Madgin', 'Male', '1968-12-28', '2012-08-16');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (23, 'Dmitri', 'Millea', 'Male', '1998-08-14', '2008-12-18');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (24, 'Osmond', 'Wake', 'Male', '1968-02-25', '2019-03-07');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (25, 'Nanni', 'Howland', 'Female', '1966-11-08', '2016-08-18');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (26, 'Lamar', 'Hitchens', 'Male', '1966-10-27', '2019-04-01');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (27, 'Erna', 'Gillbanks', 'Female', '1972-05-13', '2003-02-05');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (28, 'Noel', 'Dilland', 'Female', '1988-06-12', '2016-03-04');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (29, 'Kennan', 'Dellenbach', 'Male', '1972-04-04', '2014-12-19');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (30, 'Danny', 'Kestle', 'Male', '1994-09-23', '2002-08-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (31, 'Elise', 'Lawrence', 'Female', '1983-10-26', '2016-08-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (32, 'Tabby', 'Dammarell', 'Female', '1972-03-28', '2003-02-19');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (33, 'Ruthie', 'Lowth', 'Female', '1966-08-07', '2009-01-29');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (34, 'Karrie', 'Speeks', 'Female', '1985-07-02', '2016-02-15');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (35, 'Ezekiel', 'Maddigan', 'Male', '1983-06-10', '2012-11-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (36, 'Charmane', 'Kirkwood', 'Female', '1980-09-08', '2013-05-02');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (37, 'Clayson', 'Aronsohn', 'Male', '1983-03-29', '2017-12-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (38, 'Karena', 'Waine', 'Female', '1998-08-29', '2007-09-23');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (39, 'Lorry', 'Webb-Bowen', 'Male', '1992-07-23', '2016-04-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (40, 'Gertruda', 'Giacobo', 'Female', '1974-05-17', '2005-02-25');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (41, 'Tracie', 'Devanney', 'Female', '1972-09-06', '2009-04-23');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (42, 'Darill', 'Indruch', 'Male', '1978-06-03', '2009-06-28');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (43, 'Bunni', 'Breitler', 'Female', '1976-08-28', '2017-09-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (44, 'Tanny', 'Carah', 'Male', '1995-09-14', '2016-01-04');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (45, 'Glad', 'Somerlie', 'Female', '1965-06-22', '2015-12-28');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (46, 'Giustina', 'Reily', 'Female', '1971-03-06', '2020-10-15');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (47, 'Odilia', 'Greenstock', 'Female', '1971-04-27', '2011-01-20');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (48, 'Bryanty', 'Fakes', 'Male', '1993-02-12', '2012-04-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (49, 'Celestyn', 'Dallimare', 'Female', '1973-08-07', '2016-03-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (50, 'Delainey', 'Wane', 'Genderfluid', '1991-11-05', '2019-03-24');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (51, 'Everard', 'de Almeida', 'Non-binary', '1980-08-01', '2007-05-20');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (52, 'Mal', 'Ker', 'Bigender', '2001-04-12', '2008-11-17');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (53, 'Maurene', 'Glede', 'Female', '1971-03-25', '2016-10-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (54, 'Raviv', 'Hurler', 'Male', '1974-01-27', '2013-10-24');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (55, 'Brendin', 'Martinelli', 'Male', '1988-05-31', '2002-08-05');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (56, 'Liliane', 'Tackell', 'Female', '1988-08-31', '2007-09-13');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (57, 'Gerrie', 'Loghan', 'Agender', '1977-08-29', '2009-05-22');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (58, 'Binni', 'Ledrun', 'Female', '1990-09-10', '2017-01-17');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (59, 'Frank', 'Vernalls', 'Male', '1979-04-04', '2009-05-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (60, 'Bronnie', 'Neild', 'Male', '1970-09-11', '2018-02-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (61, 'Libbey', 'Rothera', 'Female', '1979-07-02', '2012-01-02');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (62, 'Ulla', 'Goodhand', 'Female', '1977-05-08', '2019-11-23');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (63, 'Sharai', 'Mundy', 'Female', '1983-03-09', '2010-11-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (64, 'Wilfrid', 'Fraczak', 'Male', '1986-03-30', '2019-01-09');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (65, 'Olivie', 'Parsonage', 'Female', '1988-01-17', '2020-03-30');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (66, 'Charlton', 'Mead', 'Male', '2001-03-13', '2008-03-07');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (67, 'Alaster', 'Furney', 'Male', '1990-12-04', '2014-09-07');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (68, 'Bax', 'Cardo', 'Male', '1995-05-14', '2002-10-14');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (69, 'Everard', 'Cowdrey', 'Male', '1976-05-04', '2006-12-31');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (70, 'Missie', 'Bouskill', 'Female', '1978-01-01', '2016-10-11');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (71, 'Lurleen', 'McCobb', 'Polygender', '1971-10-18', '2011-04-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (72, 'Sybila', 'Haville', 'Female', '1989-09-21', '2009-06-02');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (73, 'Johnathan', 'Pollitt', 'Male', '1995-12-23', '2003-04-15');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (74, 'Antone', 'Jedrzejczak', 'Male', '1990-07-01', '2005-11-01');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (75, 'Ingrim', 'Peyes', 'Male', '1971-12-27', '2020-06-03');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (76, 'Ari', 'Hamberston', 'Male', '1989-04-06', '2013-11-04');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (77, 'Robers', 'Pearman', 'Male', '1972-02-09', '2007-11-26');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (78, 'Hallie', 'Ladbrook', 'Female', '1993-08-10', '2015-11-28');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (79, 'Westbrooke', 'Gavin', 'Male', '1981-05-19', '2016-09-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (80, 'Hogan', 'Letch', 'Non-binary', '1986-09-23', '2017-09-09');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (81, 'Delano', 'Paumier', 'Male', '1991-04-25', '2016-05-16');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (82, 'Kip', 'Kevis', 'Male', '1977-05-04', '2007-07-15');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (83, 'Adorne', 'Lucey', 'Female', '1986-09-23', '2015-06-28');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (84, 'Tana', 'Beevens', 'Female', '1976-02-07', '2006-10-24');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (85, 'Vannie', 'Beyn', 'Female', '2000-10-23', '2003-08-25');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (86, 'Jerome', 'Rowsel', 'Male', '1975-01-26', '2008-03-19');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (87, 'Freddy', 'O''Neal', 'Female', '2000-04-09', '2015-03-12');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (88, 'Austin', 'Harget', 'Female', '1996-02-01', '2015-04-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (89, 'Merla', 'Suatt', 'Female', '1997-01-17', '2021-02-09');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (90, 'Caitlin', 'Dumsday', 'Female', '1987-07-18', '2007-07-11');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (91, 'Dave', 'Caldaro', 'Male', '1993-10-29', '2012-01-30');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (92, 'Lena', 'Berthel', 'Female', '1994-04-28', '2021-03-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (93, 'Phyllis', 'Ascough', 'Female', '2000-07-12', '2008-10-13');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (94, 'Netti', 'Probin', 'Female', '1967-08-22', '2011-06-19');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (95, 'Mathew', 'Rampley', 'Male', '1982-10-01', '2017-02-18');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (96, 'Hillery', 'Fanner', 'Male', '1980-03-22', '2005-07-21');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (97, 'Berny', 'Drever', 'Female', '1993-10-14', '2010-07-27');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (98, 'Bran', 'Patesel', 'Male', '1992-08-29', '2009-12-07');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (99, 'Craggie', 'Dury', 'Male', '1972-04-11', '2016-02-09');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (100, 'Livvy', 'Bellingham', 'Female', '1985-06-30', '2013-06-14');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (101, 'Shalom', 'Lodwig', 'Male', '1995-06-24', '2009-01-20');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (102, 'Giles', 'Grave', 'Male', '1994-05-26', '2017-06-17');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (103, 'Truman', 'Smallbone', 'Male', '1979-02-22', '2005-05-15');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (104, 'Cyril', 'Bortolutti', 'Male', '1979-04-23', '2009-09-18');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (105, 'Frederica', 'Berndsen', 'Female', '1998-11-26', '2019-07-22');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (106, 'Langsdon', 'Cushion', 'Male', '2000-06-04', '2008-01-02');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (107, 'Tybalt', 'Yancey', 'Male', '1988-04-16', '2012-10-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (108, 'Shawnee', 'ducarme', 'Female', '1968-11-05', '2007-05-18');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (109, 'Alfonso', 'Band', 'Male', '1980-01-07', '2020-01-29');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (110, 'Truda', 'Imeson', 'Female', '1999-04-22', '2014-06-24');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (111, 'Pernell', 'Luisetti', 'Male', '1995-09-06', '2004-02-16');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (112, 'Roch', 'Pawle', 'Female', '1973-05-24', '2007-12-26');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (113, 'Neala', 'Dutteridge', 'Female', '1995-04-19', '2014-12-14');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (114, 'Francis', 'Pulver', 'Male', '1973-04-18', '2018-05-04');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (115, 'Lonnie', 'Revens', 'Male', '1976-12-09', '2005-02-16');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (116, 'Vinnie', 'Condie', 'Male', '1986-02-07', '2014-01-10');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (117, 'Emmalyn', 'Shevlin', 'Female', '1997-08-31', '2015-12-29');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (118, 'Filmer', 'Tarling', 'Male', '1968-05-19', '2011-05-29');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (119, 'Corly', 'Di Gregorio', 'Female', '1983-03-01', '2002-12-08');
insert into researcher (id, first_name, last_name, gender, birth_date, work_date) values (120, 'Meris', 'Odell', 'Female', '1990-11-12', '2004-02-14');

insert into `organization_phones` (`org_id`,`phone_number`)
values
  (1,"1-653-577-9293"),
  (2,"1-576-655-4221"),
  (3,"1-658-319-8003"),
  (4,"1-412-123-9962"),
  (5,"1-405-279-3313"),
  (6,"1-348-541-2883"),
  (7,"1-173-912-2405"),
  (8,"1-703-560-5043"),
  (9,"1-314-755-9045"),
  (10,"1-328-555-3729");
insert into `organization_phones` (`org_id`,`phone_number`)
values
  (11,"1-950-206-8863"),
  (12,"1-941-746-2518"),
  (13,"1-927-484-4384"),
  (14,"1-287-257-4565"),
  (15,"1-848-225-6830"),
  (16,"1-315-806-3165"),
  (17,"1-841-306-1872"),
  (18,"1-417-313-3345"),
  (19,"1-759-311-3218"),
  (20,"1-758-747-0770");
insert into `organization_phones` (`org_id`,`phone_number`)
values
  (21,"1-945-692-8851"),
  (22,"1-523-938-4150"),
  (23,"1-741-131-0771"),
  (24,"1-574-790-1217"),
  (25,"1-487-941-4298"),
  (26,"1-885-558-3212"),
  (27,"1-598-932-6812"),
  (28,"1-590-231-5324"),
  (29,"1-819-251-2981"),
  (30,"1-923-266-0413");
  
insert into `organization_phones` (`org_id`,`organization_phone`)
values
  (1,"1-990-175-2752"),
  (4,"1-243-564-7630"),
  (7,"1-656-831-3341"),
  (10,"1-423-331-4169"),
  (13,"1-772-401-4063"),
  (16,"1-548-571-4456"),
  (19,"1-527-937-2629"),
  (22,"1-425-635-7033"),
  (25,"1-412-554-8284"),
  (28,"1-548-871-8640");

insert into program (program_id, program_title, department) 
values 
(1, 'In hac habitasse platea dictumst.', 'Accounting'),
(2, 'Nullam sit amet turpis elementum ligula vehicula consequat.', 'Sales'),
(3, 'Nam dui.', 'Services'),
(4, 'Cras pellentesque volutpat dui.', 'Human Resources'),
(5, 'Vestibulum sed magna at nunc commodo placerat.', 'Support'),
(6, 'Aenean sit amet justo.', 'Marketing'),
(7, 'Aliquam non mauris.', 'Sales'),
(8, 'Aliquam sit amet diam in magna bibendum imperdiet.', 'Accounting'),
(9, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.', 'Services'),
(10, 'Maecenas rhoncus aliquam lacus.', 'Support');

insert into program (program_id, program_title, department) 
values 
(11, 'Mauris sit amet eros.', 'Product Management'),
(12, 'Donec posuere metus vitae ipsum.', 'Services'),
(13, 'Etiam pretium iaculis justo.', 'Training'),
(14, 'Vivamus vel nulla eget eros elementum pellentesque.', 'Legal'),
(15, 'Mauris lacinia sapien quis libero.', 'Legal'),
(16, 'Quisque porta volutpat erat.', 'Engineering'),
(17, 'Nulla nisl.', 'Training'),
(18, 'Fusce posuere felis sed lacus.', 'Support'),
(19, 'Pellentesque at nulla.', 'Business Development'),
(20, 'Donec ut mauris eget massa tempor convallis.', 'Business Development');

insert into program (program_id, program_title, department) 
values 
(21, 'Aenean fermentum.', 'Marketing'),
(22, 'Maecenas tincidunt lacus at velit.', 'Sales'),
(23, 'Proin eu mi.', 'Accounting'),
(24, 'Integer a nibh.', 'Support'),
(25, 'Donec vitae nisi.', 'Accounting'),
(26, 'In eleifend quam a odio.', 'Product Management'),
(27, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'Support'),
(28, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Legal'),
(29, 'Aliquam quis turpis eget elit sodales scelerisque.', 'Support'),
(30, 'Donec quis orci eget orci vehicula condimentum.', 'Services');

insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (1, 'sed', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', 578900.0, '2018-02-18', '2023-02-10', 7.3, '2020-11-30');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (2, 'purus eu magna vulputate', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere', 980718.31, '2017-12-16', '2024-12-04', 1.4, '2021-06-11');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (3, 'quam', 'tortor duis mattis egestas metus aenean fermentum', 789237.97, '2018-05-11', '2022-07-11', 1.0, '2021-04-13');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (4, 'non', 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', 345423.85, '2023-07-31', '2022-03-07', 3.7, '2020-08-08');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (5, 'luctus et', 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', 533739.84, '2021-01-19', '2023-11-01', 3.3, '2020-08-12');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (6, 'mauris sit', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 772568.08, '2022-02-20', '2021-08-22', 2.2, '2021-07-10');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (7, 'posuere', 'porttitor lorem id ligula suspendisse ornare', 148067.5, '2020-05-27', '2020-09-21', 3.6, '2021-08-13');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (8, 'quam', 'orci luctus et ultrices posuere cubilia curae', 957546.32, '2022-03-08', '2024-11-25', 8.6, '2020-10-07');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (9, 'ridiculus mus etiam', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 439679.29, '2021-02-01', '2024-07-30', 7.5, '2022-01-15');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (10, 'nulla dapibus dolor vel', 'proin eu mi nulla ac enim in tempor turpis nec euismod', 915006.99, '2020-02-02', '2024-09-12', 8.4, '2020-11-28');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (11, 'faucibus', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 630982.78, '2018-07-10', '2020-11-22', 2.0, '2021-07-31');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (12, 'natoque penatibus', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 572429.12, '2022-01-30', '2022-03-15', 4.8, '2022-05-09');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (13, 'condimentum', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id', 742057.95, '2018-08-24', '2023-05-07', 3.1, '2020-06-28');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (14, 'lectus suspendisse potenti', 'condimentum id luctus nec molestie sed justo pellentesque', 841865.77, '2022-05-10', '2022-06-04', 1.4, '2020-11-06');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (15, 'placerat praesent blandit nam', 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 224766.55, '2017-06-18', '2024-12-16', 4.9, '2021-06-04');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (16, 'tempor convallis', 'enim in tempor turpis nec euismod scelerisque', 744563.33, '2019-06-27', '2025-03-21', 3.4, '2021-01-02');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (17, 'velit vivamus vel nulla', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida', 869723.8, '2018-06-04', '2021-02-14', 5.7, '2021-06-06');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (18, 'pede morbi porttitor', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 938714.73, '2020-07-09', '2022-01-14', 7.1, '2020-04-03');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (19, 'fusce', 'a ipsum integer a nibh', 181834.78, '2020-08-14', '2023-07-06', 8.0, '2020-04-20');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (20, 'diam vitae quam suspendisse', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 439530.94, '2021-05-01', '2023-02-09', 9.1, '2020-06-20');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (21, 'etiam', 'vel accumsan tellus nisi eu orci mauris', 708145.2, '2023-03-31', '2023-10-23', 8.1, '2021-03-07');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (22, 'ac tellus semper', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', 493838.17, '2019-01-09', '2022-03-22', 7.4, '2021-08-29');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (23, 'adipiscing molestie hendrerit at', 'velit id pretium iaculis diam erat', 135111.08, '2018-11-19', '2024-12-16', 5.8, '2021-08-24');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (24, 'suscipit', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 241215.39, '2017-09-27', '2024-05-18', 3.2, '2021-11-14');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (25, 'libero rutrum ac lobortis', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', 729571.67, '2020-12-29', '2023-12-20', 4.4, '2021-05-11');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (26, 'rhoncus aliquam lacus morbi', 'quam a odio in hac habitasse platea', 734737.45, '2020-03-15', '2024-05-05', 6.2, '2021-11-03');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (27, 'metus arcu adipiscing molestie', 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', 720223.74, '2023-05-28', '2024-01-07', 8.5, '2022-05-23');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (28, 'laoreet ut rhoncus aliquet', 'posuere cubilia curae nulla dapibus dolor', 598378.54, '2021-12-08', '2021-09-17', 6.2, '2022-04-09');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (29, 'leo pellentesque ultrices mattis', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 977152.93, '2017-11-06', '2025-03-11', 3.4, '2021-01-16');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (30, 'vitae', 'penatibus et magnis dis parturient', 230691.16, '2019-08-08', '2021-09-30', 9.4, '2020-08-17');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (31, 'in est risus', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', 364624.75, '2019-09-16', '2022-01-24', 8.9, '2021-07-09');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (32, 'morbi', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', 881203.92, '2017-08-26', '2022-05-31', 9.9, '2022-04-09');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (33, 'nulla tellus', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 676060.01, '2022-05-23', '2022-08-04', 6.8, '2021-03-03');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (34, 'mauris ullamcorper', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', 944116.74, '2021-07-20', '2024-04-09', 2.1, '2020-07-27');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (35, 'sodales', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 663333.75, '2023-09-08', '2021-10-11', 6.1, '2020-09-13');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (36, 'metus vitae ipsum', 'purus sit amet nulla quisque arcu libero rutrum ac lobortis', 807761.97, '2021-10-04', '2023-06-28', 3.8, '2021-06-03');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (37, 'donec', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', 692687.63, '2020-11-30', '2025-05-22', 5.4, '2022-04-12');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (38, 'amet', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi', 429101.63, '2020-10-31', '2023-08-23', 5.5, '2020-08-03');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (39, 'rhoncus dui', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 612207.0, '2021-09-20', '2021-01-14', 4.6, '2020-11-07');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (40, 'sociis natoque', 'feugiat et eros vestibulum ac est lacinia nisi', 114411.59, '2019-12-18', '2022-10-04', 2.6, '2021-02-17');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (41, 'mauris morbi non lectus', 'vel lectus in quam fringilla rhoncus mauris', 775913.0, '2019-02-20', '2025-05-15', 5.4, '2021-11-22');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (42, 'cras', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 617020.91, '2018-03-30', '2022-04-16', 7.2, '2022-01-16');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (43, 'orci', 'tellus in sagittis dui vel nisl duis', 762966.48, '2019-06-11', '2020-07-18', 3.5, '2020-11-03');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (44, 'nunc proin', 'ante nulla justo aliquam quis turpis eget elit sodales', 538270.6, '2017-06-01', '2023-12-22', 9.5, '2020-11-09');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (45, 'turpis donec posuere', 'suscipit nulla elit ac nulla sed', 606918.3, '2021-11-20', '2025-03-15', 2.4, '2020-05-27');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (46, 'ante ipsum primis in', 'faucibus cursus urna ut tellus nulla ut erat', 964287.07, '2017-10-12', '2020-11-08', 4.4, '2021-04-17');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (47, 'ut dolor morbi vel', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna', 519185.04, '2017-10-05', '2021-12-14', 3.2, '2022-01-27');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (48, 'consequat morbi a', 'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 828704.45, '2018-07-15', '2021-02-06', 7.3, '2020-12-13');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (49, 'mi', 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', 522628.97, '2019-10-30', '2024-08-09', 3.3, '2022-03-07');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (50, 'ante vestibulum ante', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', 579861.41, '2019-09-14', '2022-02-25', 5.8, '2022-02-28');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (51, 'mauris ullamcorper purus sit', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 548475.99, '2021-06-08', '2022-10-07', 7.1, '2021-08-08');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (52, 'enim', 'orci vehicula condimentum curabitur in libero', 347109.44, '2018-10-27', '2022-05-19', 2.3, '2021-12-07');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (53, 'cursus id', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 219382.88, '2019-02-13', '2021-12-29', 8.7, '2020-09-14');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (54, 'morbi a ipsum', 'diam erat fermentum justo nec condimentum neque sapien placerat', 473649.34, '2020-12-16', '2020-11-18', 1.8, '2020-10-19');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (55, 'et ultrices posuere', 'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', 607928.89, '2017-11-14', '2022-05-20', 5.5, '2021-07-20');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (56, 'lorem ipsum', 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum', 601887.31, '2022-04-09', '2022-12-03', 1.5, '2021-03-01');
insert into project (project_id, project_title, summary, fund_ammount, star_date, end_date, evaluation_grade, evaluation_date) values (57, 'in hac habitasse platea', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', 339993.17, '2017-06-30', '2021-08-03', 2.8, '2020-07-12');

insert into `executive` (`executive_id`,`executive_name`,`executivre_surname`)
values
  (1,"Griffith","Mclaughlin"),
  (2,"Bruno","Haynes"),
  (3,"Garrett","Spence"),
  (4,"Thaddeus","Harper"),
  (5,"Silas","Wolf"),
  (6,"Evelyn","Alvarez"),
  (7,"Lewis","Gentry"),
  (8,"Shannon","Rogers"),
  (9,"Kirsten","Willis"),
  (10,"Stella","Dorsey");
insert into `executive` (`executive_id`,`executive_name`,`executivre_surname`)
values
  (11,"Anne","Weiss"),
  (12,"Kyle","Best"),
  (13,"Ifeoma","Conrad"),
  (14,"Lisandra","Trevino"),
  (15,"Elvis","Mckay"),
  (16,"Gloria","Barlow"),
  (17,"Delilah","Britt");

insert into `scientific_field` (`field_id`,`field_name`,`discription`)
values
  (1,"Human Resourses","molestie tellus."),
  (2,"Environment","consectetuer euismod est arcu ac orci. Ut"),
  (3,"Sport","porttitor vulputate,"),
  (4,"Economy","vulputate eu, odio. Phasellus"),
  (5,"Physics","mauris elit, dictum eu, eleifend"),
  (6,"Chemistry","Phasellus elit pede,"),
  (7,"Mathematics","In condimentum. Donec at arcu. Vestibulum ante"),
  (8,"Engineering","eu nulla at sem molestie sodales."),
  (9,"Architecture","rutrum urna, nec luctus felis purus ac tellus. Suspendisse"),
  (10,"Medicine ","Sed molestie.");
insert into `scientific_field` (`field_id`,`field_name`,`discription`)
values
  (11,"Biology","non");
  
  insert into deliverable (del_id, del_title, del_summary, del_date) values (1, 'lectus in est', 'quis odio consequat varius integer ac leo pellentesque', '2022-07-26');
insert into deliverable (del_id, del_title, del_summary, del_date) values (2, 'lectus pellentesque at', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', '2021-12-24');
insert into deliverable (del_id, del_title, del_summary, del_date) values (3, 'viverra', 'nulla nisl nunc nisl duis', '2022-05-03');
insert into deliverable (del_id, del_title, del_summary, del_date) values (4, 'convallis', 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non', '2021-01-03');
insert into deliverable (del_id, del_title, del_summary, del_date) values (5, 'odio', 'ipsum dolor sit amet consectetuer adipiscing', '2021-05-18');
insert into deliverable (del_id, del_title, del_summary, del_date) values (6, 'ante', 'ante ipsum primis in faucibus orci', '2021-04-17');
insert into deliverable (del_id, del_title, del_summary, del_date) values (7, 'luctus et ultrices', 'curae duis faucibus accumsan odio curabitur convallis duis consequat', '2021-04-09');
insert into deliverable (del_id, del_title, del_summary, del_date) values (8, 'viverra', 'non pretium quis lectus suspendisse potenti in eleifend quam a odio', '2020-12-18');
insert into deliverable (del_id, del_title, del_summary, del_date) values (9, 'tempor', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', '2020-07-04');
insert into deliverable (del_id, del_title, del_summary, del_date) values (10, 'ultrices aliquet maecenas', 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi', '2022-03-03');
insert into deliverable (del_id, del_title, del_summary, del_date) values (11, 'mauris enim', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '2022-10-14');
insert into deliverable (del_id, del_title, del_summary, del_date) values (12, 'in purus', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', '2022-10-13');
insert into deliverable (del_id, del_title, del_summary, del_date) values (13, 'et', 'metus aenean fermentum donec ut mauris eget massa tempor convallis', '2022-03-27');
insert into deliverable (del_id, del_title, del_summary, del_date) values (14, 'vestibulum aliquet', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', '2020-10-22');
insert into deliverable (del_id, del_title, del_summary, del_date) values (15, 'id', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', '2021-11-08');
insert into deliverable (del_id, del_title, del_summary, del_date) values (16, 'velit', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', '2022-04-22');
insert into deliverable (del_id, del_title, del_summary, del_date) values (17, 'natoque penatibus', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', '2020-06-20');
insert into deliverable (del_id, del_title, del_summary, del_date) values (18, 'proin', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', '2020-09-12');
insert into deliverable (del_id, del_title, del_summary, del_date) values (19, 'pellentesque volutpat dui', 'in faucibus orci luctus et', '2021-11-11');
insert into deliverable (del_id, del_title, del_summary, del_date) values (20, 'nulla', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', '2021-09-13');
insert into deliverable (del_id, del_title, del_summary, del_date) values (21, 'nulla mollis', 'nec sem duis aliquam convallis nunc', '2022-06-01');
insert into deliverable (del_id, del_title, del_summary, del_date) values (22, 'in tempus sit', 'accumsan tortor quis turpis sed', '2020-06-18');
insert into deliverable (del_id, del_title, del_summary, del_date) values (23, 'ligula', 'rutrum nulla tellus in sagittis dui vel nisl duis ac', '2020-12-13');
insert into deliverable (del_id, del_title, del_summary, del_date) values (24, 'tincidunt eget tempus', 'ut tellus nulla ut erat id mauris', '2022-10-17');
insert into deliverable (del_id, del_title, del_summary, del_date) values (25, 'et magnis dis', 'nibh fusce lacus purus aliquet at feugiat non pretium quis', '2021-10-01');
insert into deliverable (del_id, del_title, del_summary, del_date) values (26, 'nulla tempus', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', '2022-09-24');
insert into deliverable (del_id, del_title, del_summary, del_date) values (27, 'tempor turpis', 'turpis a pede posuere nonummy integer non velit donec diam', '2022-02-05');
insert into deliverable (del_id, del_title, del_summary, del_date) values (28, 'sem mauris', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', '2022-01-05');
insert into deliverable (del_id, del_title, del_summary, del_date) values (29, 'ridiculus mus', 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', '2022-11-29');
insert into deliverable (del_id, del_title, del_summary, del_date) values (30, 'ac enim in', 'faucibus orci luctus et ultrices posuere cubilia curae', '2022-02-19');
insert into deliverable (del_id, del_title, del_summary, del_date) values (31, 'volutpat in', 'orci mauris lacinia sapien quis libero nullam', '2021-09-20');
insert into deliverable (del_id, del_title, del_summary, del_date) values (32, 'pellentesque viverra', 'platea dictumst morbi vestibulum velit id pretium iaculis', '2020-07-25');
insert into deliverable (del_id, del_title, del_summary, del_date) values (33, 'convallis', 'sed tristique in tempus sit amet sem fusce consequat', '2021-06-18');
insert into deliverable (del_id, del_title, del_summary, del_date) values (34, 'tempus vivamus', 'lobortis ligula sit amet eleifend pede libero', '2021-08-29');
insert into deliverable (del_id, del_title, del_summary, del_date) values (35, 'parturient montes', 'nisl ut volutpat sapien arcu sed', '2021-09-21');
insert into deliverable (del_id, del_title, del_summary, del_date) values (36, 'neque', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', '2020-07-30');
insert into deliverable (del_id, del_title, del_summary, del_date) values (37, 'ultrices enim lorem', 'in hac habitasse platea dictumst morbi', '2021-07-17');
insert into deliverable (del_id, del_title, del_summary, del_date) values (38, 'pede posuere nonummy', 'nulla mollis molestie lorem quisque ut erat curabitur', '2022-01-25');
insert into deliverable (del_id, del_title, del_summary, del_date) values (39, 'placerat ante', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', '2020-10-06');
insert into deliverable (del_id, del_title, del_summary, del_date) values (40, 'ultrices posuere cubilia', 'bibendum felis sed interdum venenatis turpis enim blandit mi', '2022-07-29');
insert into deliverable (del_id, del_title, del_summary, del_date) values (41, 'vivamus', 'pede lobortis ligula sit amet eleifend', '2021-10-17');
insert into deliverable (del_id, del_title, del_summary, del_date) values (42, 'sem mauris', 'purus eu magna vulputate luctus cum sociis natoque penatibus et', '2021-01-14');
insert into deliverable (del_id, del_title, del_summary, del_date) values (43, 'nulla suscipit', 'volutpat dui maecenas tristique est et tempus semper est quam', '2022-07-29');
insert into deliverable (del_id, del_title, del_summary, del_date) values (44, 'sit amet erat', 'ullamcorper augue a suscipit nulla elit ac nulla sed', '2021-02-11');
insert into deliverable (del_id, del_title, del_summary, del_date) values (45, 'id luctus', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '2020-09-14');
insert into deliverable (del_id, del_title, del_summary, del_date) values (46, 'felis sed lacus', 'cras in purus eu magna vulputate luctus cum', '2021-08-05');
insert into deliverable (del_id, del_title, del_summary, del_date) values (47, 'imperdiet sapien urna', 'sit amet nunc viverra dapibus', '2022-03-14');
insert into deliverable (del_id, del_title, del_summary, del_date) values (48, 'sapien cursus vestibulum', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices', '2021-04-23');
insert into deliverable (del_id, del_title, del_summary, del_date) values (49, 'cras', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget', '2021-05-22');
insert into deliverable (del_id, del_title, del_summary, del_date) values (50, 'vestibulum aliquet ultrices', 'suscipit a feugiat et eros vestibulum ac', '2021-10-22');
insert into deliverable (del_id, del_title, del_summary, del_date) values (51, 'ut nulla sed', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '2022-06-15');
insert into deliverable (del_id, del_title, del_summary, del_date) values (52, 'sapien', 'tempus vivamus in felis eu', '2021-05-21');
insert into deliverable (del_id, del_title, del_summary, del_date) values (53, 'accumsan odio', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '2022-01-07');
insert into deliverable (del_id, del_title, del_summary, del_date) values (54, 'rhoncus aliquam lacus', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', '2021-12-01');
insert into deliverable (del_id, del_title, del_summary, del_date) values (55, 'maecenas ut', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', '2021-11-03');
insert into deliverable (del_id, del_title, del_summary, del_date) values (56, 'ut ultrices vel', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', '2021-07-02');
insert into deliverable (del_id, del_title, del_summary, del_date) values (57, 'vestibulum ante ipsum', 'felis eu sapien cursus vestibulum proin eu mi nulla', '2021-04-05');
insert into deliverable (del_id, del_title, del_summary, del_date) values (58, 'dolor sit', 'maecenas tincidunt lacus at velit vivamus', '2022-10-02');
insert into deliverable (del_id, del_title, del_summary, del_date) values (59, 'vulputate', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit', '2021-06-28');
insert into deliverable (del_id, del_title, del_summary, del_date) values (60, 'eros', 'magnis dis parturient montes nascetur ridiculus', '2020-10-01');
insert into deliverable (del_id, del_title, del_summary, del_date) values (61, 'eget vulputate ut', 'morbi ut odio cras mi pede', '2021-09-15');
insert into deliverable (del_id, del_title, del_summary, del_date) values (62, 'eget eleifend', 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '2021-08-07');
insert into deliverable (del_id, del_title, del_summary, del_date) values (63, 'sit amet cursus', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', '2022-07-05');
insert into deliverable (del_id, del_title, del_summary, del_date) values (64, 'fusce consequat', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', '2020-10-19');
insert into deliverable (del_id, del_title, del_summary, del_date) values (65, 'vestibulum ante', 'proin eu mi nulla ac enim in', '2021-05-22');
insert into deliverable (del_id, del_title, del_summary, del_date) values (66, 'odio odio', 'mauris sit amet eros suspendisse accumsan', '2022-04-11');
insert into deliverable (del_id, del_title, del_summary, del_date) values (67, 'ac', 'nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', '2021-10-30');
insert into deliverable (del_id, del_title, del_summary, del_date) values (68, 'ut', 'nisl ut volutpat sapien arcu sed augue aliquam erat', '2021-09-13');
insert into deliverable (del_id, del_title, del_summary, del_date) values (69, 'quam sapien', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2022-04-21');
insert into deliverable (del_id, del_title, del_summary, del_date) values (70, 'metus', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2021-09-27');
insert into deliverable (del_id, del_title, del_summary, del_date) values (71, 'integer tincidunt', 'semper est quam pharetra magna ac consequat', '2020-08-22');
insert into deliverable (del_id, del_title, del_summary, del_date) values (72, 'porttitor lorem id', 'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', '2022-06-29');
insert into deliverable (del_id, del_title, del_summary, del_date) values (73, 'luctus ultricies', 'ut tellus nulla ut erat', '2021-10-13');
insert into deliverable (del_id, del_title, del_summary, del_date) values (74, 'viverra pede', 'dui maecenas tristique est et', '2022-02-19');
insert into deliverable (del_id, del_title, del_summary, del_date) values (75, 'adipiscing', 'sagittis nam congue risus semper', '2020-07-09');
insert into deliverable (del_id, del_title, del_summary, del_date) values (76, 'sit amet', 'dictumst morbi vestibulum velit id pretium iaculis', '2021-05-20');
insert into deliverable (del_id, del_title, del_summary, del_date) values (77, 'praesent blandit lacinia', 'bibendum felis sed interdum venenatis turpis enim', '2020-12-27');
insert into deliverable (del_id, del_title, del_summary, del_date) values (78, 'porttitor lacus at', 'neque vestibulum eget vulputate ut ultrices vel', '2020-12-18');
insert into deliverable (del_id, del_title, del_summary, del_date) values (79, 'ultrices posuere', 'dictumst morbi vestibulum velit id pretium', '2021-11-10');
insert into deliverable (del_id, del_title, del_summary, del_date) values (80, 'lectus vestibulum', 'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', '2020-10-31');
insert into deliverable (del_id, del_title, del_summary, del_date) values (81, 'nibh in quis', 'suspendisse ornare consequat lectus in est risus auctor sed tristique', '2021-10-16');
insert into deliverable (del_id, del_title, del_summary, del_date) values (82, 'sed vestibulum sit', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', '2021-11-03');

insert into university (university_id, budget) 
values 
(1, '82902.52'),
(2, '908743.69'),
(3, '278136.34'),
(4, '25260.29'),
(5, '878169.28'),
(6, '149605.57'),
(7, '39297.56'),
(8, '592091.01'),
(9, '587305.24'),
(10, '824880.28');

insert into company (company_id, equity) 
values 
(1, '926803.96'),
(2, '230938.37'),
(3, '348160.89'),
(4, '350334.97'),
(5, '223460.68'),
(6, '187988.03'),
(7, '117011.84'),
(8, '718762.95'),
(9, '820546.77'),
(10, '513330.62');

insert into research_center (rcenter_id, ministry_budget, private_budget) 
values 
(1, '444945.45', '930250.06'),
(2, '446975.78', '471590.00'),
(3, '843441.39', '485691.37'),
(4, '17069.27', '789914.67'),
(5, '441425.24', '45046.80'),
(6, '836132.95', '934416.45'),
(7, '331584.56', '810270.05'),
(8, '188183.63', '207940.28'),
(9, '465686.64', '84474.23'),
(10, '522142.15', '950985.52');
