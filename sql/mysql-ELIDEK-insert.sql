-- 28/05 Version

use ELIDEK;

delete from deliverable;
delete from project;
delete from researcher_works_on;
delete from program;
delete from executive;
delete from scientific_field;
delete from organization_phones;
delete from researcher;
delete from org;
delete from university;
delete from research_center;
delete from company;

insert into org (org_id, org_name, org_abbreviation, ad_road, ad_number, postcode, city, category)
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
 
insert into org (org_id, org_name, org_abbreviation, ad_road, ad_number, postcode, city, category)
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

insert into org (org_id, org_name, org_abbreviation, ad_road, ad_number, postcode, city, category)
values
  (21,"Et Industries","ETIN","Magna. St.",149,"11111","Rangiora","Company"),
  (22,"Luctus Et Inc.","LUCET","Hendrerit Av.",59,"57932","Port Harcourt","University"),
  (23,"Diam At Industries","DIAI","Nisl Rd.",149,"23641","Okigwe","Research Center"),
  (24,"Erat Associates","ERATA","Non Rd.",137,"64115","Bregenz","Company"),
  (25,"Adipiscing Fringilla Limited","AFL","Donec St.",34,"58282","Picton","University"),
  (26,"Quisque Company","QUCO","Proin Av.",45,"64413","Salem","Research Center"),
  (27,"Tincidunt Pede PC","TIPE","Amet Rd.",142,"84338","Grasse","Company"),
  (28,"Orci Luctus Et LLC","ORLU","Quis Street",90,"14380","Mo i Rana","University"),
  (29,"Urna Justo Ltd","UJU","Ultricies St.",105,"52032","Meppel","Research Center"),
  (30,"Nec Eleifend Inc.","NEI","Mollis Av.",54,"27295","Tynda","Company");

insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (1, 'Vick', 'Worts', 'M', '1980-12-05', 1, '2021-02-13');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (2, 'Sibylle', 'Quantrill', 'F', '1991-12-20', 3, '2017-10-18');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (3, 'Marnia', 'Linnard', 'F', '1991-11-03', 5,'2018-10-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (4, 'Jamima', 'Skudder', 'F', '1981-05-09', 7, '2013-01-06');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (5, 'Demott', 'Bird', 'M', '1989-01-17', 9, '2019-08-26');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (6, 'Fanchette', 'Boyington', 'F', '1977-03-04', 11, '2020-10-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (7, 'Ravi', 'Hucknall', 'M', '1968-06-10', 13, '2006-04-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (8, 'Adey', 'Tretter', 'F', '1985-07-16', 15, '2004-07-29');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (9, 'Kennie', 'Mizzen', 'M', '1997-10-14', 17, '2008-12-29');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (10, 'Ber', 'Brucker', 'M', '1972-10-06', 19, '2002-11-27');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (11, 'Grethel', 'Chape', 'O', '1996-10-19', 21, '2014-08-28');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (12, 'Hewet', 'Sparkwell', 'M', '1968-05-09', 23, '2019-01-11');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (13, 'Cozmo', 'Iiannoni', 'M', '1996-08-04', 25, '2020-12-17');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (14, 'Emelda', 'Paolone', 'F', '1993-08-29', 27, '2019-08-07');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (15, 'Gui', 'Matzke', 'F', '1967-11-26', 29, '2020-11-02');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (16, 'Ardine', 'Shilburne', 'F', '1975-10-05', 7, '2008-04-27');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (17, 'Sadye', 'Heatly', 'O', '1992-06-22', 10, '2009-01-12');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (18, 'Keary', 'Sabban', 'M', '1979-09-15', 14, '2011-06-11');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (19, 'Hedvig', 'Dabell', 'F', '1998-12-12', 18, '2018-09-26');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (20, 'Janelle', 'Purton', 'F', '1969-01-23', 20, '2003-01-23');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (21, 'Jacqui', 'Iohananof', 'F', '1999-03-15', 21, '2015-04-24');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (22, 'Obie', 'Madgin', 'M', '1968-12-28', 4, '2012-08-16');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (23, 'Dmitri', 'Millea', 'M', '1998-08-14', 9, '2008-12-18');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (24, 'Osmond', 'Wake', 'M', '1968-02-25', 26, '2019-03-07');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (25, 'Nanni', 'Howland', 'F', '1966-11-08', 24, '2016-08-18');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (26, 'Lamar', 'Hitchens', 'M', '1966-10-27', 29, '2019-04-01');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (27, 'Erna', 'Gillbanks', 'F', '1972-05-13', 30, '2003-02-05');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (28, 'Noel', 'Dilland', 'F', '1988-06-12', 17, '2016-03-04');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (29, 'Kennan', 'Dellenbach', 'M', '1972-04-04', 16, '2014-12-19');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (30, 'Danny', 'Kestle', 'M', '1994-09-23', 6, '2002-08-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (31, 'Elise', 'Lawrence', 'F', '1983-10-26', 12, '2016-08-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (32, 'Tabby', 'Dammarell', 'F', '1972-03-28', 13, '2003-02-19');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (33, 'Ruthie', 'Lowth', 'F', '1966-08-07', 5, '2009-01-29');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (34, 'Karrie', 'Speeks', 'F', '1985-07-02', 8, '2016-02-15');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (35, 'Ezekiel', 'Maddigan', 'M', '1983-06-10', 22, '2012-11-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (36, 'Charmane', 'Kirkwood', 'F', '1980-09-08', 23, '2013-05-02');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (37, 'Clayson', 'Aronsohn', 'M', '1983-03-29', 26, '2017-12-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (38, 'Karena', 'Waine', 'F', '1998-08-29', 11, '2007-09-23');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (39, 'Lorry', 'Webb-Bowen', 'M', '1992-07-23', 2, '2016-04-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (40, 'Gertruda', 'Giacobo', 'F', '1974-05-17', 3, '2005-02-25');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (41, 'Tracie', 'Devanney', 'F', '1972-09-06', 28, '2009-04-23');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (42, 'Darill', 'Indruch', 'M', '1978-06-03', 27, '2009-06-28');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (43, 'Bunni', 'Breitler', 'F', '1976-08-28', 25, '2017-09-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (44, 'Tanny', 'Carah', 'M', '1995-09-14', 20, '2016-01-04');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (45, 'Glad', 'Somerlie', 'F', '1965-06-22', 16, '2015-12-28');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (46, 'Giustina', 'Reily', 'M', '1971-03-06', 15, '2020-10-15');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (47, 'Odilia', 'Greenstock', 'F', '1971-04-27', 2, '2011-01-20');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (48, 'Bryanty', 'Fakes', 'M', '1993-02-12', 1, '2012-04-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (49, 'Celestyn', 'Dallimare', 'F', '1973-08-07', 6, '2016-03-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (50, 'Delainey', 'Wane', 'O', '1991-11-05', 9, '2019-03-24');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (51, 'Everard', 'de Almeida', 'O', '1980-08-01', 24, '2007-05-20');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (52, 'Mal', 'Ker', 'O', '2001-04-12', 29, '2008-11-17');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (53, 'Maurene', 'Glede', 'F', '1971-03-25', 20, '2016-10-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (54, 'Raviv', 'Hurler', 'M', '1974-01-27', 18, '2013-10-24');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (55, 'Brendin', 'Martinelli', 'M', '1988-05-31', 30, '2002-08-05');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (56, 'Liliane', 'Tackell', 'F', '1988-08-31', 4, '2007-09-13');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (57, 'Gerrie', 'Loghan', 'O', '1977-08-29', 8, '2009-05-22');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (58, 'Binni', 'Ledrun', 'F', '1990-09-10', 6, '2017-01-17');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (59, 'Frank', 'Vernalls', 'M', '1979-04-04', 1, '2009-05-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (60, 'Bronnie', 'Neild', 'M', '1970-09-11', 22, '2018-02-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (61, 'Libbey', 'Rothera', 'F', '1979-07-02', 23, '2012-01-02');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (62, 'Ulla', 'Goodhand', 'F', '1977-05-08', 14, '2019-11-23');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (63, 'Sharai', 'Mundy', 'F', '1983-03-09', 10, '2010-11-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (64, 'Wilfrid', 'Fraczak', 'M', '1986-03-30', 25, '2019-01-09');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (65, 'Olivie', 'Parsonage', 'F', '1988-01-17', 19, '2020-03-30');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (66, 'Charlton', 'Mead', 'M', '2001-03-13', 15, '2008-03-07');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (67, 'Alaster', 'Furney', 'M', '1990-12-04', 28, '2014-09-07');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (68, 'Bax', 'Cardo', 'M', '1995-05-14', 7, '2002-10-14');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (69, 'Everard', 'Cowdrey', 'M', '1976-05-04', 25, '2006-12-31');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (70, 'Missie', 'Bouskill', 'F', '1978-01-01', 24, '2016-10-11');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (71, 'Lurleen', 'McCobb', 'O', '1971-10-18', 28, '2011-04-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (72, 'Sybila', 'Haville', 'F', '1989-09-21', 30, '2009-06-02');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (73, 'Johnathan', 'Pollitt', 'M', '1995-12-23', 27, '2003-04-15');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (74, 'Antone', 'Jedrzejczak', 'M', '1990-07-01', 5, '2005-11-01');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (75, 'Ingrim', 'Peyes', 'M', '1971-12-27', 2, '2020-06-03');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (76, 'Ari', 'Hamberston', 'M', '1989-04-06', 12, '2013-11-04');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (77, 'Robers', 'Pearman', 'M', '1972-02-09', 10, '2007-11-26');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (78, 'Hallie', 'Ladbrook', 'F', '1993-08-10', 3, '2015-11-28');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (79, 'Westbrooke', 'Gavin', 'M', '1981-05-19', 5, '2016-09-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (80, 'Hogan', 'Letch', 'O', '1986-09-23', 6, '2017-09-09');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (81, 'Delano', 'Paumier', 'M', '1991-04-25', 13, '2016-05-16');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (82, 'Kip', 'Kevis', 'M', '1977-05-04', 11, '2007-07-15');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (83, 'Adorne', 'Lucey', 'F', '1986-09-23', 26, '2015-06-28');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (84, 'Tana', 'Beevens', 'F', '1976-02-07', 17, '2006-10-24');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (85, 'Vannie', 'Beyn', 'F', '2000-10-23', 2, '2003-08-25');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (86, 'Jerome', 'Rowsel', 'M', '1975-01-26', 3, '2008-03-19');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (87, 'Freddy', 'O''Neal', 'F', '2000-04-09', 8, '2015-03-12');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (88, 'Austin', 'Harget', 'F', '1996-02-01', 12, '2015-04-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (89, 'Merla', 'Suatt', 'F', '1997-01-17', 14, '2021-02-09');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (90, 'Caitlin', 'Dumsday', 'F', '1987-07-18', 22, '2007-07-11');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (91, 'Dave', 'Caldaro', 'M', '1993-10-29', 25, '2012-01-30');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (92, 'Lena', 'Berthel', 'F', '1994-04-28', 29, '2021-03-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (93, 'Phyllis', 'Ascough', 'F', '2000-07-12', 23, '2008-10-13');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (94, 'Netti', 'Probin', 'F', '1967-08-22', 7, '2011-06-19');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (95, 'Mathew', 'Rampley', 'M', '1982-10-01', 4, '2017-02-18');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (96, 'Hillery', 'Fanner', 'M', '1980-03-22', 2, '2005-07-21');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (97, 'Berny', 'Drever', 'F', '1993-10-14', 19, '2010-07-27');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (98, 'Bran', 'Patesel', 'M', '1992-08-29', 15, '2009-12-07');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (99, 'Craggie', 'Dury', 'M', '1972-04-11', 30, '2016-02-09');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (100, 'Livvy', 'Bellingham', 'F', '1985-06-30', 27, '2013-06-14');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (101, 'Shalom', 'Lodwig', 'M', '1995-06-24', 1, '2009-01-20');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (102, 'Giles', 'Grave', 'M', '1994-05-26', 10, '2017-06-17');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (103, 'Truman', 'Smallbone', 'M', '1979-02-22', 17, '2005-05-15');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (104, 'Cyril', 'Bortolutti', 'M', '1979-04-23', 25, '2009-09-18');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (105, 'Frederica', 'Berndsen', 'F', '1998-11-26', 3, '2019-07-22');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (106, 'Langsdon', 'Cushion', 'M', '2000-06-04', 4, '2008-01-02');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (107, 'Tybalt', 'Yancey', 'M', '1988-04-16', 15, '2012-10-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (108, 'Shawnee', 'ducarme', 'F', '1968-11-05', 26, '2007-05-18');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (109, 'Alfonso', 'Band', 'M', '1980-01-07', 19, '2020-01-29');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (110, 'Truda', 'Imeson', 'F', '1999-04-22', 2, '2014-06-24');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (111, 'Pernell', 'Luisetti', 'M', '1995-09-06', 14, '2004-02-16');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (112, 'Roch', 'Pawle', 'F', '1973-05-24', 9, '2007-12-26');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (113, 'Neala', 'Dutteridge', 'F', '1995-04-19', 6, '2014-12-14');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (114, 'Francis', 'Pulver', 'M', '1973-04-18', 7, '2018-05-04');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (115, 'Lonnie', 'Revens', 'M', '1976-12-09', 22, '2005-02-16');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (116, 'Vinnie', 'Condie', 'M', '1986-02-07', 30, '2014-01-10');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (117, 'Emmalyn', 'Shevlin', 'F', '1997-08-31', 12, '2015-12-29');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (118, 'Filmer', 'Tarling', 'M', '1968-05-19', 1, '2011-05-29');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (119, 'Corly', 'Di Gregorio', 'F', '1983-03-01', 29, '2002-12-08');
insert into researcher (researcher_id, researcher_name, researcher_surname, sex, birth_date, org_id, work_date) values (120, 'Meris', 'Odell', 'F', '1990-11-12', 23, '2004-02-14');

insert into organization_phones (org_id, phone_number)
values
  (1,"6535779293"),
  (2,"5766554221"),
  (3,"6583198003"),
  (4,"4121239962"),
  (5,"4052793313"),
  (6,"3485412883"),
  (7,"1739122405"),
  (8,"7035605043"),
  (9,"3147559045"),
  (10,"3285553729");
insert into organization_phones (org_id, phone_number)
values
  (11,"9502068863"),
  (12,"9417462518"),
  (13,"9274844384"),
  (14,"2872574565"),
  (15,"8482256830"),
  (16,"3158063165"),
  (17,"8413061872"),
  (18,"4173133345"),
  (19,"7593113218"),
  (20,"7587470770");
insert into organization_phones (org_id, phone_number)
values
  (21,"9456928851"),
  (22,"5239384150"),
  (23,"7411310771"),
  (24,"5747901217"),
  (25,"4879414298"),
  (26,"8855583212"),
  (27,"5989326812"),
  (28,"5902315324"),
  (29,"8192512981"),
  (30,"9232660413");
  
insert into organization_phones (org_id, phone_number)
values
  (1,"9901752752"),
  (4,"2435647630"),
  (7,"6568313341"),
  (10,"4233314169"),
  (13,"7724014063"),
  (16,"5485714456"),
  (19,"5279372629"),
  (22,"4256357033"),
  (25,"4125548284"),
  (28,"5488718640");

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
(9, 'Vestibulum ante ipsum primis in cubilia Curae.', 'Services'),
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
(27, 'Mauris enim leo, rhoncus sed, vestibulum sit amet turpis.', 'Support'),
(28, 'In tempor, turpis nec euismod scelerisque.', 'Legal'),
(29, 'Aliquam quis turpis eget elit sodales scelerisque.', 'Support'),
(30, 'Donec quis orci eget orci vehicula condimentum.', 'Services');

insert into executive (executive_id, ex_name, ex_surname)
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
insert into executive (executive_id, ex_name, ex_surname)
values
  (11,"Anne","Weiss"),
  (12,"Kyle","Best"),
  (13,"Ifeoma","Conrad"),
  (14,"Lisandra","Trevino"),
  (15,"Elvis","Mckay"),
  (16,"Gloria","Barlow"),
  (17,"Delilah","Britt");

insert into scientific_field (field_id, field_name, descript)
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
insert into scientific_field (field_id, field_name, descript)
values
  (11,"Biology","non"),
  (12,"Computer Science", "jgwiep jfo4w mona otqj");
  
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (1, 'sed', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', 578900.0, '2020-02-18', '2023-02-10', 5, 9, 1, 2, 67, 7.3, '2020-11-30');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (2, 'purus eu magna vulputate', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere', 980718.31, '2017-12-16', '2020-12-04', 60, 22, 3, 5, 100, 1.4, '2019-06-11');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (3, 'quam', 'tortor duis mattis egestas metus aenean fermentum', 789237.97, '2019-05-11', '2022-07-11', 39, 2, 6, 7, 15, 1.0, '2021-04-13');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (4, 'non', 'et tempus semper est quam pharetra magna ac consequat metus sapien', 345423.85, '2020-07-31', '2022-07-07', 85, 2, 17, 11, 16, 3.7, '2020-08-08');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (5, 'luctus et', 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', 533739.84, '2021-01-19', '2023-11-01', 110, 2, 9, 12, 17, 3.3, '2022-08-12');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (6, 'mauris sit', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac ', 772568.08, '2020-02-20', '2022-08-22', 80, 6, 11, 16, 76, 2.2, '2021-07-10');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (7, 'posuere', 'porttitor lorem id ligula suspendisse ornare', 148067.5, '2020-05-27', '2021-09-21', 73, 27, 1, 11, 31, 3.6, '2021-08-13');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (8, 'quam', 'orci luctus et ultrices posuere cubilia curae', 957546.32, '2022-03-08', '2024-11-25', 103, 17, 15, 2, 56, 8.6, '2023-10-07');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id,program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (9, 'ridiculus mus etiam', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 439679.29, '2021-02-01', '2024-07-30', 88, 12, 17, 3, 69, 7.5, '2022-01-15');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (10, 'nulla dapibus dolor vel', 'proin eu mi nulla ac enim in tempor turpis nec euismod', 915006.99, '2021-02-02', '2024-09-12', 48, 1, 19, 7,  81, 8.4, '2021-11-28');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (11, 'faucibus', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 630982.78, '2018-07-10', '2020-11-22', 10, 19, 24, 9, 45, 2.0, '2019-07-31');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (12, 'natoque penatibus', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 572429.12, '2021-01-30', '2022-03-15', 28, 17, 28, 10, 35, 4.8, '2021-05-09');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (13, 'condimentum', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices ', 742057.95, '2019-08-24', '2023-05-07', 18, 14, 4, 12, 77, 3.1, '2020-06-28');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (14, 'lectus suspendisse potenti', 'condimentum id luctus nec molestie sed justo pellentesque', 841865.77, '2020-05-10', '2022-06-04', 25, 24, 6, 1, 21, 1.4, '2020-11-06');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (15, 'placerat praesent blandit nam', 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 224766.55, '2020-06-18', '2023-12-16', 59, 1, 14, 2, 65, 4.9, '2021-06-04');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (16, 'tempor convallis', 'enim in tempor turpis nec euismod scelerisque', 744563.33, '2019-06-27', '2023-03-21', 17, 10, 21, 5, 11, 3.4, '2021-01-02');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (17, 'velit vivamus vel nulla', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum', 869723.8, '2018-06-04', '2021-02-14', 95, 4, 29, 6, 81, 5.7, '2019-06-06');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (18, 'pede morbi porttitor', 'semper interdum mauris ullamcorper purus sit amet nulla ', 938714.73, '2020-07-09', '2022-01-14', 37, 26, 8, 8, 39, 7.1, '2021-04-03');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (19, 'fusce', 'a ipsum integer a nibh', 181834.78, '2020-08-14', '2023-07-06', 90, 22, 19, 10, 12, 8.0, '2021-04-20');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (20, 'diam vitae quam suspendisse', 'odio donec vitae nisi nam ultrices libero non mattis pulvinara', 439530.94, '2021-05-01', '2023-02-09', 4, 7, 11, 12, 64, 9.1, '2021-06-20');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (21, 'etiam', 'vel accumsan tellus nisi eu orci mauris', 708145.2, '2022-03-31', '2023-10-23', 33, 5, 28, 17, 53, 8.1, '2023-03-07');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (22, 'ac tellus semper', 'ornare consequat lectus in est risus auctor sed tristique', 493838.17, '2019-01-09', '2022-03-22', 61, 23, 26, 7, 87, 7.4, '2021-08-29');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (23, 'adipiscing molestie', 'velit id pretium iaculis diam erat', 135111.08, '2018-11-19', '2021-12-16', 31, 12, 3, 8, 22, 5.8, '2021-08-24');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (24, 'suscipit', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitorn', 241215.39, '2021-09-27', '2024-05-18', 82, 11, 9, 9, 99, 3.2, '2021-11-14');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (25, 'libero rutrum ac lobortis', 'nunc viverra dapibus nulla suscipit ligula in lacus', 729571.67, '2020-12-29', '2023-12-20', 13, 25, 30, 10, 100, 4.4, '2021-05-11');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (26, 'rhoncus aliquam lacus morbi', 'quam a odio in hac habitasse platea', 734737.45, '2020-03-15', '2023-05-05', 41, 28, 12, 11, 34, 6.2, '2021-11-03');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (27, 'metus arcu adipiscing molestie', 'ac nibh fusce lacus purus aliquet at feugiat', 720223.74, '2022-05-28', '2024-01-07', 86, 3, 16, 14, 11, 8.5, '2023-05-23');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (28, 'laoreet ut rhoncus aliquet', 'posuere cubilia curae nulla dapibus dolor', 598378.54, '2020-12-08', '2022-09-17', 57, 8, 7, 16, 42, 6.2, '2021-04-09');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (29, 'leo pellentesque ultrices', 'morbi odio odio elementum eu', 977152.93, '2019-11-06', '2022-03-11', 44, 20, 2, 2, 7, 3.4, '2021-01-16');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (30, 'vitae', 'penatibus et magnis dis parturient', 230691.16, '2019-08-08', '2021-09-30', 8, 15, 3, 5, 72, 9.4, '2020-08-17');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (31, 'in est risus', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 364624.75, '2019-09-16', '2022-01-24', 98, 15, 18, 6, 9, 8.9, '2021-07-09');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (32, 'morbi', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', 881203.92, '2019-08-26', '2022-05-31', 15, 29, 22, 9, 77, 9.9, '2021-04-09');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (33, 'nulla tellus', 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 676060.01, '2022-01-23', '2023-08-04', 7, 13, 26, 10, 17, 6.8, '2022-03-03');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (34, 'mauris ullamcorper', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis', 944116.74, '2021-07-20', '2024-04-09', 29, 16, 25, 1, 21, 2.1, '2022-07-27');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (35, 'sodales', 'magna vulputate luctus cum sociis natoque penatibus et magnis', 663333.75, '2021-09-08', '2023-10-11', 78, 3, 5, 3, 103, 6.1, '2022-09-13');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (36, 'metus vitae ipsum', 'purus sit amet nulla quisque arcu libero rutrum ac lobortis', 807761.97, '2021-10-04', '2023-06-28', 27, 30, 8, 9, 91, 3.8, '2022-06-03');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (37, 'donec', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', 692687.63, '2020-11-30', '2024-05-22', 14, 27, 14, 13,  51, 5.4, '2022-04-12');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (38, 'amet', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', 429101.63, '2020-10-31', '2023-08-23', 5, 9, 19, 12, 61, 5.5, '2021-08-03');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (39, 'rhoncus dui', 'aliquet maecenas leo odio condimentum id luctus nec molestie', 612207.0, '2020-09-20', '2022-01-14', 55, 30, 20, 11, 111, 4.6, '2020-11-07');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (40, 'sociis natoque', 'feugiat et eros vestibulum ac est lacinia nisi', 114411.59, '2019-12-18', '2022-10-04', 19, 18, 30, 7, 12, 2.6, '2021-02-17');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (41, 'mauris morbi non lectus', 'vel lectus in quam fringilla rhoncus mauris', 775913.0, '2020-02-20', '2023-05-15', 58, 6, 27, 6, 82, 5.4, '2021-11-22');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (42, 'cras', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 617020.91, '2019-03-30', '2022-04-16', 62, 14, 6, 16, 47, 7.2, '2022-01-16');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (43, 'orci', 'tellus in sagittis dui vel nisl duis', 762966.48, '2019-06-11', '2020-07-18', 13, 25, 15, 15, 18, 3.5, '2019-11-03');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (44, 'nunc proin', 'ante nulla justo aliquam quis turpis eget elit sodales', 538270.6, '2019-06-01', '2022-12-22', 92, 29, 13, 11, 115, 9.5, '2020-11-09');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (45, 'turpis donec posuere', 'suscipit nulla elit ac nulla sed', 606918.3, '2021-11-20', '2025-03-15', 61, 23, 18, 9, 76, 2.4, '2022-05-27');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (46, 'ante ipsum primis in', 'faucibus cursus urna ut tellus nulla ut erat', 964287.07, '2017-10-12', '2020-11-08', 10, 19, 21, 10, 99, 4.4, '2018-04-17');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (47, 'ut dolor morbi vel', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna', 519185.04, '2018-10-05', '2021-12-14', 17, 10, 23, 8, 55, 3.2, '2020-01-27');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (48, 'consequat morbi a', 'sapien dignissim vestibulum vestibulum ante ipsum primis', 828704.45, '2018-07-15', '2021-02-06', 68, 7, 5, 4, 62, 7.3, '2020-12-13');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (49, 'mi', 'pretium quis lectus suspendisse potenti in eleifend quam a odio', 522628.97, '2019-10-30', '2023-08-09', 22, 4, 2, 8, 96, 3.3, '2022-03-07');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (50, 'ante vestibulum ante', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', 579861.41, '2019-09-14', '2022-02-25', 64, 25, 6, 1, 101, 5.8, '2021-02-28');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (51, 'mauris ullamcorper purus', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 548475.99, '2021-06-08', '2022-10-07', 87, 8, 7, 3, 54, 7.1, '2021-08-08');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (52, 'enim', 'orci vehicula condimentum curabitur in libero', 347109.44, '2018-10-27', '2022-05-19', 82, 11, 16, 5, 9, 2.3, '2021-12-07');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (53, 'cursus id', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', 219382.88, '2019-02-13', '2021-12-29', 14, 27, 25, 9, 13, 8.7, '2020-09-14');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (54, 'morbi a ipsum', 'diam erat fermentum justo nec condimentum neque sapien placerat', 473649.34, '2020-12-16', '2022-11-18', 29, 16, 27, 10, 78, 1.8, '2021-10-19');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (55, 'et ultrices posuere', 'leo rhoncus sed vestibulum sit amet cursus id turpis integer', 607928.89, '2019-11-14', '2022-05-20', 80, 6, 1, 16, 87, 5.5, '2021-07-20');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (56, 'lorem ipsum', 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum', 601887.31, '2021-04-09', '2023-12-03', 116, 30, 4, 14, 4, 1.5, '2022-03-01');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (57, 'in hac habitasse platea', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', 339993.17, '2018-06-30', '2021-08-03', 69, 25, 10, 12, 90, 2.8, '2020-07-12');

insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (1, 7, 'lectus in est', 'quis odio consequat varius integer ac leo pellentesque', '2020-07-26');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (2, 9, 'lectus pellentesque at', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', '2021-12-24');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (3, 15, 'viverra', 'nulla nisl nunc nisl duis', '2022-05-03');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (4, 53, 'convallis', 'proin risus praesent lectus vestibulum quam sapien varius', '2021-01-03');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (5, 44, 'odio', 'ipsum dolor sit amet consectetuer adipiscing', '2021-05-18');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (6, 23, 'ante', 'ante ipsum primis in faucibus orci', '2021-04-17');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (7, 34, 'luctus et ultrices', 'curae duis faucibus accumsan odio curabitur convallis duis consequat', '2022-04-09');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (8, 37, 'viverra', 'non pretium quis lectus suspendisse potenti in eleifend quam a odio', '2020-12-18');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (9, 11, 'tempor', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', '2020-07-04');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (10, 13, 'ultrices aliquet maecenas', 'pede venenatis non sodales sed tincidunt', '2022-03-03');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (11, 26, 'mauris enim', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', '2022-10-14');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (12, 34, 'in purus', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', '2022-10-13');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (13, 32, 'et', 'metus aenean fermentum donec ut mauris eget massa tempor convallis', '2022-03-27');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (14, 1, 'vestibulum aliquet', 'parturient montes nascetur ridiculus mus vivamus vestibulum', '2020-10-22');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (15, 52, 'id', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', '2021-11-08');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (16, 41, 'velit', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', '2022-04-22');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (17, 11, 'natoque penatibus', 'dictumst aliquam augue quam sollicitudin vitae consectetuer', '2020-06-20');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (18, 13, 'proin', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', '2020-09-12');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (19, 40, 'pellentesque volutpat dui', 'in faucibus orci luctus et', '2021-11-11');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (20, 23, 'nulla', 'consequat varius integer ac leo pellentesque ultrices mattis', '2021-09-13');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (21, 32, 'nulla mollis', 'nec sem duis aliquam convallis nunc', '2022-03-01');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (22, 26, 'in tempus sit', 'accumsan tortor quis turpis sed', '2020-06-18');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (23, 5, 'ligula', 'rutrum nulla tellus in sagittis dui vel nisl duis ac', '2022-12-13');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (24, 55, 'tincidunt eget tempus', 'ut tellus nulla ut erat id mauris', '2021-10-17');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (25, 46, 'et magnis dis', 'nibh fusce lacus purus aliquet at feugiat non pretium quis', '2019-10-01');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (26, 45, 'nulla tempus', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', '2022-09-24');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (27, 1, 'tempor turpis', 'turpis a pede posuere nonummy integer non velit donec diam', '2022-02-05');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (28, 9, 'sem mauris', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', '2022-01-05');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (29, 44, 'ridiculus mus', 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', '2022-11-29');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (30, 28, 'ac enim in', 'faucibus orci luctus et ultrices posuere cubilia curae', '2022-02-19');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (31, 49, 'volutpat in', 'orci mauris lacinia sapien quis libero nullam', '2021-09-20');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (32, 57, 'pellentesque viverra', 'platea dictumst morbi vestibulum velit id pretium iaculis', '2020-07-25');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (33, 11, 'convallis', 'sed tristique in tempus sit amet sem fusce consequat', '2020-06-18');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (34, 8, 'tempus vivamus', 'lobortis ligula sit amet eleifend pede libero', '2023-08-29');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (35, 10, 'parturient montes', 'nisl ut volutpat sapien arcu sed', '2021-09-21');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (36, 2, 'neque', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', '2020-07-30');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (37, 27, 'ultrices enim lorem', 'in hac habitasse platea dictumst morbi', '2022-07-17');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (38, 33, 'pede posuere nonummy', 'nulla mollis molestie lorem quisque ut erat curabitur', '2023-01-25');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (39, 42, 'placerat ante', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', '2020-10-06');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (40, 51, 'ultrices posuere cubilia', 'bibendum felis sed interdum venenatis turpis enim blandit mi', '2022-07-29');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (41, 46, 'vivamus', 'pede lobortis ligula sit amet eleifend', '2020-10-17');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (42, 19, 'sem mauris', 'purus eu magna vulputate luctus cum sociis natoque penatibus et', '2021-01-14');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (43, 41, 'nulla suscipit', 'volutpat dui maecenas tristique est et tempus semper est quam', '2022-07-29');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (44, 2, 'sit amet erat', 'ullamcorper augue a suscipit nulla elit ac nulla sed', '2019-02-11');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (45, 29 ,'id luctus', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '2020-09-14');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (46, 7, 'felis sed lacus', 'cras in purus eu magna vulputate luctus cum', '2020-08-05');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (47, 10, 'imperdiet sapien urna', 'sit amet nunc viverra dapibus', '2022-03-14');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (48, 42, 'sapien cursus vestibulum', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices', '2021-04-23');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (49, 55, 'cras', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget', '2021-05-22');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (50, 6, 'vestibulum aliquet ultrices', 'suscipit a feugiat et eros vestibulum ac', '2021-10-22');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (51, 9, 'ut nulla sed', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '2022-06-15');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (52, 1, 'sapien', 'tempus vivamus in felis eu', '2021-05-21');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (53, 19, 'accumsan odio', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '2022-01-07');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (54, 20, 'rhoncus aliquam lacus', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', '2021-12-01');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (55, 9, 'maecenas ut', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', '2021-11-03');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (56, 11, 'ut ultrices vel', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', '2020-07-02');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (57, 18, 'vestibulum ante ipsum', 'felis eu sapien cursus vestibulum proin eu mi nulla', '2021-04-05');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (58, 32, 'dolor sit', 'maecenas tincidunt lacus at velit vivamus', '2021-10-02');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (59, 34, 'vulputate', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit', '2022-06-28');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (60, 46, 'eros', 'magnis dis parturient montes nascetur ridiculus', '2020-10-01');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (61, 52, 'eget vulputate ut', 'morbi ut odio cras mi pede', '2021-09-15');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (62, 6, 'eget eleifend', 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '2021-08-07');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (63, 56, 'sit amet cursus', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', '2022-07-05');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (64, 44, 'fusce consequat', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', '2020-10-19');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (65, 47, 'vestibulum ante', 'proin eu mi nulla ac enim in', '2021-05-22');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (66, 8, 'odio odio', 'mauris sit amet eros suspendisse accumsan', '2022-04-11');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (67, 9, 'ac', 'nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', '2021-10-30');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (68, 11, 'ut', 'nisl ut volutpat sapien arcu sed augue aliquam erat', '2020-09-13');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (69, 14, 'quam sapien', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2022-04-21');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (70, 18, 'metus', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2021-09-27');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (71, 20, 'integer tincidunt', 'semper est quam pharetra magna ac consequat', '2022-08-22');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (72, 29, 'porttitor lorem id', 'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', '2021-06-29');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (73, 30, 'luctus ultricies', 'ut tellus nulla ut erat', '2020-10-13');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (74, 20, 'viverra pede', 'dui maecenas tristique est et', '2022-02-19');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (75, 17, 'adipiscing', 'sagittis nam congue risus semper', '2020-07-09');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (76, 3, 'sit amet', 'dictumst morbi vestibulum velit id pretium iaculis', '2021-05-20');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (77, 5, 'praesent blandit lacinia', 'bibendum felis sed interdum venenatis turpis enim', '2021-12-27');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (78, 1, 'porttitor lacus at', 'neque vestibulum eget vulputate ut ultrices vel', '2020-12-18');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (79, 50, 'ultrices posuere', 'dictumst morbi vestibulum velit id pretium', '2021-11-10');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (80, 56, 'lectus vestibulum', 'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', '2022-10-31');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (81, 43, 'nibh in quis', 'suspendisse ornare consequat lectus in est risus auctor sed tristique', '2019-10-16');
insert into deliverable (del_id, project_id, del_title, del_summary, del_date) values (82, 11, 'sed vestibulum sit', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', '2019-11-03');

insert into researcher_works_on (researcher_id, project_id) 
values
(23, 1), (50, 1), (35, 2), (90, 2), (115, 2), (47, 3), (75, 3), (85, 3), (47, 4), (110, 4), (96, 4),
(39, 5), (96, 5), (75, 5), (30, 6), (49, 6), (58, 6), (113, 6), (14, 7), (42, 7), (100, 7), (9, 8), (28, 8), (84, 8),
(31, 9), (76, 9), (117, 9), (1, 10), (59, 10), (101, 10), (118, 10), (65, 11), (97, 11), (9, 12), (84, 12), (103, 12),
(62, 13), (111, 13), (51, 14), (70, 14), (1, 15), (48, 15), (101, 15), (63, 16), (77, 16), (102, 16),
(22, 17), (56, 17), (24, 18), (83, 18), (108, 18), (35, 19), (60, 19), (115, 19), (16, 20), (68, 20), (94, 20), (114, 20),
(3, 21), (74, 21), (79, 21), (12, 22), (36, 22), (93, 22), (120, 22), (76, 23), (88, 23), (117, 23), (6, 24), (38, 24),
(43, 25), (69, 25), (91, 25), (104, 25), (67, 26), (71, 26), (2, 27), (40, 27), (105, 27), (34, 28), (87, 28),  
(20, 29), (53, 29), (46, 30), (66, 30), (98, 30), (107, 30), (8, 31), (46, 31), (107, 31), (26, 32), (52, 32), (92, 32),
(32, 33), (81, 33), (45, 34), (2, 35), (40, 35), (86, 35), (105, 35), (55, 36), (99, 36), (116, 36),
(42, 37), (73, 37), (100, 37), (23, 38), (50, 38), (112, 38), (27, 39), (72, 39), (116, 39), (54, 40),
(30, 41), (49, 41), (113, 41), (18, 42), (89, 42), (111, 42), (43, 43), (64, 43), (91, 43), (104, 43), (15, 44), (26, 44), (52, 44), (119, 44),
(12, 45), (36, 45), (93, 45), (120, 45), (65, 46), (97, 46), (109, 46), (63, 47), (77, 47), (102, 47), (4, 48), (16, 48), (114, 48),
(56, 49), (95, 49), (106, 49), (13, 50), (43, 50), (91, 50), (69, 50), (104, 50), (34, 51), (57, 51), (6, 52), (38, 52),
(42, 53), (100, 53), (45, 54), (30, 55), (49, 55), (113, 55), (27, 56), (55, 56), (72, 56), (99, 56),
(13, 57), (43, 57), (64, 57), (104, 57);     

insert into project_field (project_id, field_id) 
values
(1, 3), (1, 6), (1,8), (2, 2), (2, 5), (2, 9), (2, 10), (3, 1), (3, 4), (3, 7), (4, 12), (4, 8), (4, 11), (5, 1), (5, 3), (5, 5), 
(6, 2), (6, 6), (6, 7), (7, 4), (7, 8), (8, 9), (9, 1), (9, 5), (9, 10), (10, 1), (10, 2), (10, 4), (10, 7),
(11, 4), (11, 7), (11, 9), (12, 3), (12, 5), (12, 8), (13, 2), (13, 7), (13, 10), (14 ,1), (14, 6), (14, 11), (15, 2), (15, 8), (15, 10),
(16, 2), (16, 6), (16, 7), (17, 1), (17, 7), (18, 4), (18, 9), (18, 11), (19, 3), (19, 5), (19, 8), (20, 1), (20, 5), (20, 9),
(21, 3), (21, 7), (22, 4), (22, 12), (22, 10), (23, 6), (23, 7), (23, 8), (24, 2), (24, 9), (24, 11), (25, 1), (25, 3), (25, 8), 
(26, 2), (26, 9), (27, 2), (27, 6), (27, 11), (28, 3), (28, 7), (28, 9), (29, 1), (29, 9), (29, 10), (30, 2), (30, 3), (30, 6),
(31, 4), (31, 7), (31, 9), (32, 4), (33, 12), (33, 10), (34, 2), (34, 7), (34, 11), (35, 2), (35, 3), (35, 6), (35, 9),
(36, 2), (36, 3), (36, 7), (37, 4), (37, 8), (37, 10), (37, 11), (38, 3), (38, 6), (38, 8), (39, 1), (39, 5), (39, 7), (40, 2), (40, 6), (40, 10),
(41, 3), (41, 7), (41, 8), (41, 11), (42, 4), (42, 6), (42, 9), (43, 2), (43, 6), (43, 10), (44, 5), (44, 7), (44, 9), (50, 1), (50, 4), (50, 7),
(51, 3), (51, 12), (51, 9), (52, 6), (52, 8), (52, 10), (52, 11), (53, 2), (53, 12), (53, 9), (53, 11), (54, 2), (54, 5), (54, 12), (55, 1), (55, 7), (55, 10),
(56, 1), (56, 3), (56, 8), (56, 11), (57, 2), (57, 4), (57, 8), (57, 10);

insert into university (university_id, org_id, budget) 
values 
(1, 3, '82902.52'),
(2, 25, '908743.69'),
(3, 17, '278136.34'),
(4, 14, '25260.29'),
(5, 9, '878169.28'),
(6, 10, '149605.57'),
(7, 22, '39297.56'),
(8, 26, '592091.01'),
(9, 30, '587305.24'),
(10, 1, '824880.28');

insert into company (company_id, org_id, equity) 
values 
(1, 2, '926803.96'),
(2, 5, '230938.37'),
(3, 8, '348160.89'),
(4, 12, '350334.97'),
(5, 15, '223460.68'),
(6, 19, '187988.03'),
(7, 21, '117011.84'),
(8, 24, '718762.95'),
(9, 27, '820546.77'),
(10, 29, '513330.62');

insert into research_center (rcenter_id, org_id, ministry_budget, private_budget) 
values 
(1, 4, '444945.45', '930250.06'),
(2, 6, '446975.78', '471590.00'),
(3, 7, '843441.39', '485691.37'),
(4, 11, '17069.27', '789914.67'),
(5, 13, '441425.24', '45046.80'),
(6, 16, '836132.95', '934416.45'),
(7, 18, '331584.56', '810270.05'),
(8, 20, '188183.63', '207940.28'),
(9, 23, '465686.64', '84474.23'),
(10, 28, '522142.15', '950985.52');

insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (58, 'ffs', 'gia to 3.8', 339993.17, '2018-06-30', '2021-08-03', 27, 30, 10, 12, 90, 2.8, '2020-07-12');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (59, 'ffs', 'gia to 3.8', 339993.17, '2018-06-30', '2021-08-03', 27, 30, 10, 12, 90, 2.8, '2020-07-12');
insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, sup_researcher_id, org_id, program_id, executive_id, eval_researcher_id, evaluation_grade, evaluation_date) values (60, 'ffs', 'gia to 3.8', 339993.17, '2018-06-30', '2021-08-03', 27, 30, 10, 12, 90, 2.8, '2020-07-12');



insert into researcher_works_on (researcher_id, project_id) 
values
(116, 58), (116, 59), (116, 60); 