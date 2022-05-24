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
  
insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(1, 'Cyrill', 'Bedlington', 'M', '4/5/1976', '5/28/2017'),
(2, 'Alane', 'Jurasek', 'F', '2/1/1990', '3/12/2005'),
(3, 'Letti', 'Le Gall', 'F', '6/4/1998', '5/5/2020'),
(4, 'Maribel', 'Sickert', 'F', '2/14/1994', '2/20/2005'),
(5, 'Cort', 'Kilkenny', 'M', '3/10/1982', '7/5/2006'),
(6, 'Wilmer', 'Cockarill', 'M', '10/15/1985', '4/13/2014'),
(7, 'Bernarr', 'Withey', 'M', '1/14/1963', '1/9/2005'),
(8, 'Levi', 'Dollimore', 'M', '5/7/1992', '10/23/2015'),
(9, 'Augustine', 'Skipper', 'M', '6/29/1986', '3/21/2018'),
(10, 'Elyssa', 'Folbigg', 'F', '11/3/1978', '11/27/2020');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(11, 'Wesley', 'Januszkiewicz', 'M', '5/9/1988', '11/29/2002'),
(12, 'Isa', 'Allred', 'F', '11/26/1968', '11/8/2011'),
(13, 'Bennett', 'Mein', 'M', '10/11/1977', '12/14/2007'),
(14, 'Sofie', 'Heinecke', 'F', '8/14/1969', '11/10/2007'),
(15, 'Elvin', 'Ruffey', 'M', '9/7/1973', '8/4/2013'),
(16, 'Lew', 'Faier', 'M', '10/30/1986', '6/2/2015'),
(17, 'Sherwin', 'Congreve', 'M', '6/24/1980', '1/10/2012'),
(18, 'Wes', 'Elie', 'M', '4/22/1974', '5/15/2020'),
(19, 'Nan', 'Swainger', 'F', '4/29/1993', '12/12/2016'),
(20, 'Wendye', 'Pottiphar', 'F', '5/7/1968', '1/28/2008');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(21, 'Nobe', 'Maytum', 'M', '9/3/1991', '4/16/2011'),
(22, 'Alexine', 'Sakins', 'F', '5/8/1990', '6/19/2004'),
(23, 'Eward', 'Cousin', 'M', '6/8/1998', '3/23/2018'),
(24, 'Ava', 'Bexley', 'F', '1/30/1969', '11/27/2009'),
(25, 'Igor', 'Laddle', 'M', '5/4/1989', '4/25/2011'),
(26, 'Gusti', 'Agutter', 'F', '4/5/1989', '2/8/2019'),
(27, 'Scott', 'Issitt', 'M', '1/8/1995', '12/27/2007'),
(28, 'Llywellyn', 'Geri', 'M', '10/5/1971', '6/22/2021'),
(29, 'Fielding', 'Robecon', 'M', '3/11/1969', '3/4/2017'),
(30, 'Yuma', 'Menendez', 'M', '3/6/1978', '1/1/2003');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(31, 'Cheston', 'Lorryman', 'M', '3/12/1982', '7/6/2004'),
(32, 'Jammal', 'Coye', 'M', '1/14/1971', '12/8/2008'),
(33, 'Jada', 'Gosart', 'F', '11/8/1977', '6/9/2013'),
(34, 'Tiffy', 'Signe', 'F', '10/25/1961', '1/18/2018'),
(35, 'Bron', 'Gisbey', 'M', '8/21/1992', '1/12/2019'),
(36, 'Allys', 'Whitlow', 'F', '2/24/1964', '3/22/2003'),
(37, 'Thebault', 'Deschelle', 'M', '2/28/1989', '9/21/2020'),
(38, 'Abey', 'Sherrett', 'M', '6/11/1968', '3/19/2009'),
(39, 'Kitti', 'Leipnik', 'F', '1/15/1975', '6/13/2021'),
(40, 'Werner', 'Cartwight', 'M', '11/27/1977', '11/21/2013');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(41, 'Chauncey', 'Gudge', 'M', '7/30/1974', '2/19/2007'),
(42, 'Jesse', 'Dawks', 'M', '7/25/1971', '11/24/2018'),
(43, 'Sibel', 'Goodricke', 'F', '11/11/1997', '7/16/2002'),
(44, 'Brant', 'Keaves', 'M', '9/7/1961', '3/30/2014'),
(45, 'Ashbey', 'Copelli', 'M', '3/20/1969', '12/5/2009'),
(46, 'Birk', 'Winkle', 'M', '3/23/1966', '3/10/2016'),
(47, 'Obidiah', 'Glasscock', 'M', '5/2/1981', '4/7/2020'),
(48, 'Otto', 'Guile', 'M', '12/8/1984', '6/25/2007'),
(49, 'Jacobo', 'Emm', 'M', '7/18/1985', '12/29/2004'),
(50, 'Abelard', 'Braganza', 'M', '1/10/1965', '8/31/2010');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(51, 'Debbi', 'Colquitt', 'F', '4/9/1966', '2/7/2021'),
(52, 'Rinaldo', 'Bricksey', 'M', '1/18/1978', '4/29/2008'),
(53, 'Blondell', 'Riquet', 'F', '6/23/1993', '6/19/2015'),
(54, 'Earl', 'Gwin', 'M', '1/23/1986', '10/3/2008'),
(55, 'Clarke', 'Chucks', 'M', '4/10/1980', '3/19/2015'),
(56, 'Adella', 'Warburton', 'F', '6/14/1993', '8/29/2012'),
(57, 'Cate', 'Berwick', 'F', '10/2/1992', '9/12/2021'),
(58, 'Ulysses', 'Tapenden', 'M', '5/13/1984', '6/22/2019'),
(59, 'Noel', 'Teideman', 'M', '6/21/1977', '2/9/2020'),
(60, 'Martainn', 'Rickaert', 'M', '11/29/1979', '2/26/2012');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(61, 'Orville', 'Finker', 'M', '12/16/1978', '8/27/2009'),
(62, 'Mallorie', 'Braikenridge', 'F', '2/14/1967', '8/17/2009'),
(63, 'Arly', 'Fynan', 'F', '11/1/1983', '12/14/2009'),
(64, 'Anita', 'Booth', 'F', '10/7/1993', '9/8/2020'),
(65, 'Chrisse', 'McAllen', 'M', '10/3/1994', '1/20/2008'),
(66, 'Isabelle', 'Fiddyment', 'F', '2/5/1997', '7/17/2004'),
(67, 'Margette', 'Gavozzi', 'F', '1/17/1979', '11/26/2019'),
(68, 'Nichols', 'Liquorish', 'M', '12/12/1987', '5/15/2012'),
(69, 'Whit', 'Whorf', 'M', '9/23/1965', '11/22/2020'),
(70, 'Etta', 'Croci', 'F', '5/24/1968', '7/26/2008');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(71, 'Andonis', 'Tuley', 'M', '12/18/1999', '6/29/2001'),
(72, 'Barbra', 'Sipson', 'F', '11/20/1995', '5/8/2013'),
(73, 'Annamarie', 'Milsom', 'F', '3/9/1982', '3/28/2007'),
(74, 'Adolph', 'Ghiron', 'M', '5/24/1969', '11/28/2008'),
(75, 'Rubie', 'Shortland', 'F', '5/13/1974', '6/5/2015'),
(76, 'Amalea', 'McCosh', 'F', '1/19/1973', '6/11/2015'),
(77, 'Kenn', 'Guilaem', 'M', '11/13/1978', '8/26/2011'),
(78, 'Estevan', 'Croshaw', 'M', '11/22/1993', '3/15/2007'),
(79, 'Ryon', 'Gronow', 'M', '5/19/1973', '1/11/2015'),
(80, 'Rainer', 'Reeds', 'M', '7/17/1997', '11/16/2020');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(81, 'Cherish', 'Sichardt', 'F', '5/20/1991', '2/20/2015'),
(82, 'Maryjane', 'McShane', 'F', '2/19/1984', '9/2/2011'),
(83, 'Mandi', 'Oslar', 'F', '1/17/1994', '2/9/2008'),
(84, 'Darci', 'Donneely', 'F', '3/31/1969', '7/24/2004'),
(85, 'Ora', 'Philippault', 'F', '2/15/1986', '6/4/2020'),
(86, 'Bevan', 'Tiffney', 'M', '7/23/1985', '12/12/2006'),
(87, 'Maxie', 'Lewington', 'F', '6/24/1978', '7/21/2004'),
(88, 'Marti', 'Ind', 'F', '4/19/2000', '2/3/2005'),
(89, 'Josephine', 'Easton', 'F', '3/7/2000', '5/17/2021'),
(90, 'Weylin', 'Sansom', 'M', '3/2/1986', '4/23/2017');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(91, 'Darlene', 'Doerrling', 'F', '12/3/1991', '10/1/2008'),
(92, 'Jedd', 'Cecely', 'M', '9/19/1981', '11/13/2018'),
(93, 'De', 'Ibotson', 'F', '11/28/1965', '4/7/2010'),
(94, 'Elbertina', 'Silby', 'F', '6/23/1964', '6/2/2004'),
(95, 'Robina', 'Panniers', 'F', '8/22/1981', '7/22/2001'),
(96, 'Yvor', 'Cowser', 'M', '3/18/1967', '7/25/2002'),
(97, 'Zed', 'Follacaro', 'M', '7/11/1961', '10/31/2013'),
(98, 'Darwin', 'Burgise', 'M', '5/18/1997', '8/14/2015'),
(99, 'Matthus', 'Bosence', 'M', '5/8/1964', '12/29/2018'),
(100, 'Paquito', 'Cramp', 'M', '3/17/1984', '9/22/2001');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values (101, 'Alfonse', 'Rogger', 'M', '8/14/1982', '8/21/2010'),
(102, 'Glendon', 'McCrann', 'M', '10/11/1969', '8/18/2006'),
(103, 'Vyky', 'Sutherley', 'F', '8/2/1988', '11/6/2005'),
(104, 'Reynolds', 'Durning', 'M', '4/29/1994', '10/30/2008'),
(105, 'Darby', 'Poletto', 'M', '10/22/1961', '3/21/2018'),
(106, 'Babette', 'St. Quentin', 'F', '2/20/1994', '11/19/2014'),
(107, 'Nobe', 'Fernyhough', 'M', '9/3/1970', '1/11/2006'),
(108, 'Nevsa', 'Harrop', 'F', '4/30/1980', '4/9/2011'),
(109, 'Emlyn', 'Yockney', 'M', '12/30/1995', '6/24/2020'),
(110, 'Tommy', 'Vinick', 'M', '3/6/1976', '3/26/2015');

insert into researcher (`researcher_id`, `researcher_name`, `researcher_surname`, `sex`, `birth_date`, `work_date`) 
values 
(111, 'Jasun', 'Monini', 'M', '12/21/1978', '1/22/2020'),
(112, 'Carter', 'Daniellot', 'M', '4/3/1991', '7/26/2014'),
(113, 'Tammie', 'Nelthropp', 'F', '4/19/1969', '6/17/2015'),
(114, 'Clemmy', 'Fibben', 'F', '9/26/1998', '3/7/2012'),
(115, 'Padriac', 'Death', 'M', '1/12/1965', '11/18/2004'),
(116, 'Bernard', 'Kale', 'M', '3/2/1990', '8/29/2008'),
(117, 'Brandy', 'Melmar', 'M', '5/13/1985', '1/1/2002'),
(118, 'Dehlia', 'Wahlberg', 'F', '5/29/1967', '12/16/2009'),
(119, 'Karalee', 'Prendiville', 'F', '8/22/1966', '10/22/2015'),
(120, 'Sadella', 'Dyte', 'F', '12/27/1985', '1/29/2014');

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

insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, evaluation_grade, evaluation_date) 
values 
(1, 'Ut at dolor quis odio consequat varius.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.
Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '€151394,42', '17-11-2019', '22-08-2023', '4.6', '18-03-2023'),
(2, 'Mauris ullamcorper purus sit amet nulla.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.
Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '€377839,68', '18-08-2020', '06-08-2022', '5.8', '13-02-2022'),
(3, 'Nam dui.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.
Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '€838866,14', '30-07-2021', '16-01-2024', '0.7', '17-01-2023'),
(4, 'Morbi vel lectus in quam fringilla rhoncus.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.
Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '€295190,06', '29-01-2021', '30-06-2022', '1.9', '17-04-2023'),
(5, 'Mauris sit amet eros.', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.
Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '€364272,95', '23-05-2020', '11-05-2023', '5.5', '06-09-2022'),
(6, 'Phasellus id sapien in sapien iaculis congue.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.
Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '€461622,88', '10-10-2020', '03-09-2023', '4.6', '17-08-2022'),
(7, 'In hac habitasse platea dictumst.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.
Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '€746556,20', '27-07-2021', '01-11-2023', '4.0', '12-02-2022'),
(8, 'Fusce consequat.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.
Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '€911893,10', '06-09-2019', '17-10-2022', '3.6', '12-02-2023'),
(9, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.
Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '€779176,27', '21-09-2021', '30-01-2024', '1.7', '24-05-2023'),
(10, 'Donec quis orci eget orci vehicula condimentum.', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.
Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '€734747,51', '31-08-2018', '06-07-2022', '5.7', '15-05-2022');

insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, evaluation_grade, evaluation_date) 
values 
(11, 'Donec dapibus.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.
Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '€770584,91', '31-03-2022', '28-02-2023', '1.9', '19-02-2022'),
(12, 'Integer tincidunt ante vel ipsum.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '€167232,76', '18-09-2019', '15-04-2023', '5.8', '01-01-2023'),
(13, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.
Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '€514628,16', '19-05-2022', '07-06-2022', '5.3', '24-03-2023'),
(14, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.
Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '€687149,05', '03-02-2019', '23-11-2022', '0.8', '06-01-2023'),
(15, 'Aliquam erat volutpat.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '€880850,61', '28-03-2020', '08-03-2024', '6.8', '24-05-2023'),
(16, 'Nullam molestie nibh in lectus.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.
Phasellus in felis. Donec semper sapien a libero. Nam dui.', '€154388,07', '12-08-2019', '29-08-2022', '3.5', '25-10-2022'),
(17, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.
Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '€131368,02', '17-05-2021', '30-04-2023', '0.5', '15-05-2023'),
(18, 'Mauris lacinia sapien quis libero.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '€832359,79', '05-09-2020', '23-08-2023', '8.2', '03-06-2023'),
(19, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.
Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '€244988,73', '15-07-2021', '02-02-2024', '7.3', '11-06-2023'),
(20, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '€866629,26', '04-06-2019', '06-09-2022', '2.2', '01-05-2022');

insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, evaluation_grade, evaluation_date) 
values 
(21, 'Morbi vel lectus in quam fringilla rhoncus.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '€841558,15', '31-01-2020', '29-03-2023', '2.2', '08-09-2022'),
(22, 'Maecenas rhoncus aliquam lacus.', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '€833390,37', '31-05-2021', '18-05-2024', '9.3', '13-02-2023'),
(23, 'Morbi ut odio.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '€969040,58', '18-06-2021', '09-01-2024', '4.3', '02-10-2022'),
(24, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.
Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '€227425,51', '29-09-2018', '07-10-2022', '2.3', '23-11-2022'),
(25, 'Phasellus id sapien in sapien iaculis congue.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '€510276,64', '20-10-2020', '09-01-2023', '4.8', '13-12-2022'),
(26, 'Donec posuere metus vitae ipsum.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '€859686,96', '15-10-2020', '16-03-2023', '3.0', '30-05-2022'),
(27, 'Nulla ut erat id mauris vulputate elementum.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.
Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '€586133,42', '08-07-2020', '15-12-2023', '3.3', '20-01-2023'),
(28, 'Integer non velit.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.
Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '€891516,88', '11-03-2020', '01-04-2023', '5.3', '24-03-2023'),
(29, 'Nullam varius.', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '€308891,80', '09-01-2021', '06-01-2024', '4.5', '29-01-2023'),
(30, 'Nulla tellus.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '€613939,01', '26-09-2019', '19-10-2022', '8.7', '17-03-2023');

insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, evaluation_grade, evaluation_date) 
values 
(31, 'Pellentesque ultrices mattis odio.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '€690440,20', '17-04-2019', '17-11-2020', '5.4', '31-10-2022'),
(32, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.
Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '€250075,98', '28-05-2018', '21-08-2020', '9.2', '12-07-2022'),
(33, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '€536512,42', '07-08-2018', '11-02-2022', '6.8', '03-10-2022'),
(34, 'Etiam justo.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '€216258,47', '25-10-2019', '10-06-2021', '7.6', '20-01-2022'),
(35, 'Vivamus vel nulla eget eros elementum pellentesque.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.
Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '€418520,35', '17-02-2020', '30-03-2022', '7.9', '25-02-2022'),
(36, 'Nulla nisl.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.
Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '€798904,24', '27-08-2019', '25-02-2022', '0.2', '08-06-2022'),
(37, 'Vivamus vestibulum sagittis sapien.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.
Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '€211621,48', '15-06-2018', '20-10-2021', '3.6', '07-07-2022'),
(38, 'Cras in purus eu magna vulputate luctus.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '€609351,58', '08-04-2019', '10-02-2021', '0.4', '11-11-2022'),
(39, 'In hac habitasse platea dictumst.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.
In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '€663532,69', '28-09-2019', '14-09-2020', '5.1', '08-06-2023'),
(40, 'Donec posuere metus vitae ipsum.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.
Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '€917127,43', '26-08-2019', '04-04-2022', '7.6', '19-01-2023');

insert into project (project_id, project_title, summary, fund_ammount, start_date, end_date, evaluation_grade, evaluation_date) 
values 
(41, 'Quisque porta volutpat erat.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.
Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '€694827,88', '25-08-2019', '12-11-2021', '0.4', '17-03-2022'),
(42, 'Suspendisse potenti.', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '€711064,91', '22-10-2018', '19-05-2022', '3.0', '09-10-2022'),
(43, 'Nunc nisl.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '€721309,64', '29-02-2020', '02-02-2022', '7.2', '20-01-2023'),
(44, 'Morbi ut odio.', 'Fusce consequat. Nulla nisl. Nunc nisl.', '€965064,56', '10-10-2019', '03-02-2021', '3.6', '05-09-2022'),
(45, 'Donec posuere metus vitae ipsum.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '€202580,92', '18-02-2019', '09-04-2021', '6.4', '09-04-2022'),
(46, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.
Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '€859844,56', '30-04-2019', '17-12-2021', '0.8', '30-03-2022'),
(47, 'Etiam vel augue.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.
In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '€238645,86', '15-11-2019', '12-05-2022', '3.3', '02-06-2022'),
(48, 'Phasellus in felis.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.
Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '€702241,50', '18-11-2018', '05-09-2021', '1.2', '09-03-2023'),
(49, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '€658649,70', '23-03-2019', '20-07-2021', '8.0', '09-01-2022'),
(50, 'Nulla facilisi.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.
Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '€254416,11', '01-03-2019', '03-03-2021', '0.0', '13-05-2022');

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
  
  insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (1,"nulla","velit justo nec ante. Maecenas mi felis, adipiscing fringilla,","31-10-20"),
  (2,"facilisis,","viverra. Donec tempus, lorem fringilla ornare placerat,","16-11-20"),
  (3,"vel","lorem semper auctor. Mauris vel turpis.","17-04-22"),
  (4,"Mauris","tincidunt pede ac urna. Ut tincidunt vehicula risus.","09-04-21"),
  (5,"ante.","Aenean egestas hendrerit neque. In ornare sagittis felis.","12-03-22"),
  (6,"ut","eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula","09-07-22"),
  (7,"nascetur","Quisque purus sapien, gravida non, sollicitudin a, malesuada id,","24-11-20"),
  (8,"Vivamus","urna suscipit nonummy. Fusce fermentum fermentum","14-09-20"),
  (9,"auctor","fringilla purus mauris a nunc. In at","05-06-22"),
  (10,"dolor.","arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras","12-12-21");
insert into `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (11,"lacus.","convallis,","31-12-20"),
  (12,"ut","est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque","04-01-21"),
  (13,"Quisque","lectus sit","09-11-20"),
  (14,"posuere","posuere,","12-09-21"),
  (15,"amet","semper pretium neque. Morbi","20-06-21"),
  (16,"faucibus","Sed nulla ante,","19-11-20"),
  (17,"sed","Morbi non sapien molestie","22-09-20"),
  (18,"quis","eget laoreet posuere, enim","13-11-21"),
  (19,"purus","natoque penatibus et magnis dis","25-04-22"),
  (20,"ipsum","Donec tempor, est ac mattis semper, dui lectus rutrum","16-04-22");
insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (21,"vulputate,","dolor","20-08-21"),
  (22,"lectus","Morbi quis urna. Nunc quis","14-10-20"),
  (23,"tristique","eu metus.","11-07-20"),
  (24,"dictum","adipiscing elit. Aliquam","17-04-22"),
  (25,"nulla","mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida","27-11-21"),
  (26,"venenatis","ut,","21-11-21"),
  (27,"purus.","consectetuer, cursus et, magna. Praesent interdum ligula eu","30-05-22"),
  (28,"ante","interdum. Curabitur dictum. Phasellus in felis.","04-01-22"),
  (29,"ipsum.","vitae velit egestas lacinia. Sed","29-01-22"),
  (30,"ac,","Integer","23-12-20");
insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (31,"Integer","bibendum sed, est. Nunc laoreet","17-04-22"),
  (32,"eros.","litora torquent per conubia nostra,","21-06-21"),
  (33,"magna","cubilia Curae Phasellus ornare. Fusce mollis. Duis sit","25-05-21"),
  (34,"Lorem","eget varius ultrices, mauris ipsum","12-12-20"),
  (35,"ac","ante. Maecenas mi felis, adipiscing fringilla,","10-10-20"),
  (36,"placerat.","magna a","01-02-22"),
  (37,"ultrices","at, nisi.","17-01-22"),
  (38,"aliquet.","gravida. Aliquam tincidunt, nunc ac mattis","21-09-21"),
  (39,"eu","eget lacus. Mauris non dui nec urna suscipit","12-08-21"),
  (40,"ac","quam.","01-04-22");
insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (41,"fermentum","taciti sociosqu ad litora","23-04-22"),
  (42,"dolor","amet, risus. Donec nibh enim,","25-02-22"),
  (43,"fringilla,","nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer","08-06-21"),
  (44,"eu,","felis eget varius ultrices, mauris ipsum porta elit,","25-05-21"),
  (45,"arcu.","Morbi sit","26-08-21"),
  (46,"dapibus","tincidunt orci quis","04-10-21"),
  (47,"lobortis","non, luctus sit amet, faucibus ut,","27-07-20"),
  (48,"dictum","Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.","04-07-20"),
  (49,"egestas,","Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,","29-04-21"),
  (50,"quis","ultrices, mauris ipsum","29-01-21");
insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (51,"fames","mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit","10-11-21"),
  (52,"magna.","facilisis non, bibendum sed,","27-10-20"),
  (53,"ut,","magna a neque. Nullam","01-07-21"),
  (54,"metus.","fringilla mi lacinia mattis. Integer eu lacus. Quisque","22-06-22"),
  (55,"consectetuer","amet lorem semper auctor. Mauris vel","14-07-21"),
  (56,"placerat","id enim. Curabitur","21-06-21"),
  (57,"dui","ridiculus mus. Donec dignissim magna a tortor. Nunc","21-06-21"),
  (58,"Donec","parturient montes, nascetur ridiculus mus. Proin vel","18-09-21"),
  (59,"ullamcorper.","amet orci. Ut sagittis lobortis mauris.","24-11-21"),
  (60,"eget","mollis. Integer tincidunt","16-05-21");
insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (61,"cubilia","Pellentesque ultricies dignissim lacus. Aliquam rutrum","09-05-21"),
  (62,"Nunc","morbi tristique senectus et netus et malesuada fames","11-09-21"),
  (63,"Mauris","Cras","19-02-21"),
  (64,"eros.","mattis. Integer eu lacus. Quisque imperdiet, erat nonummy","27-06-22"),
  (65,"sollicitudin","diam dictum sapien. Aenean massa. Integer vitae","07-07-22"),
  (66,"Praesent","lobortis tellus justo sit amet nulla. Donec non","19-08-21"),
  (67,"cubilia","ut nisi a odio semper cursus. Integer mollis.","24-06-20"),
  (68,"at","imperdiet, erat nonummy","24-12-20"),
  (69,"mi.","id enim. Curabitur massa. Vestibulum accumsan","08-08-21"),
  (70,"mauris.","lectus pede et risus. Quisque libero","10-07-20");
insert into  `deliverable` (`del_id`,`del_title`,`del_summary`,`del_date`)
values
  (71,"Nulla","pellentesque eget, dictum placerat, augue. Sed","13-04-21"),
  (72,"quis","urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum","11-06-21"),
  (73,"fringilla,","rhoncus","16-04-21"),
  (74,"rutrum","malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in","05-12-21"),
  (75,"pharetra","Fusce mi lorem, vehicula et, rutrum eu,","24-02-21"),
  (76,"amet","tempor arcu. Vestibulum ut eros non enim commodo hendrerit.","05-11-20"),
  (77,"felis","sit amet diam","26-08-21"),
  (78,"sed,","risus. Quisque libero lacus, varius et, euismod et,","05-07-20"),
  (79,"neque","erat. Etiam vestibulum massa rutrum magna. Cras","21-08-21"),
  (80,"urna.","facilisi. Sed neque. Sed","13-01-21");

insert into university (university_id, budget) 
values 
(1, '€82902,52'),
(2, '€908743,69'),
(3, '€278136,34'),
(4, '€25260,29'),
(5, '€878169,28'),
(6, '€149605,57'),
(7, '€39297,56'),
(8, '€592091,01'),
(9, '€587305,24'),
(10, '€824880,28');

insert into company (company_id, equity) 
values 
(1, '€926803,96'),
(2, '€230938,37'),
(3, '€348160,89'),
(4, '€350334,97'),
(5, '€223460,68'),
(6, '€187988,03'),
(7, '€117011,84'),
(8, '€718762,95'),
(9, '€820546,77'),
(10, '€513330,62');

insert into research_center (rcenter_id, ministry_budget, private_budget) 
values 
(1, '€444945,45', '€930250,06'),
(2, '€446975,78', '€471590,00'),
(3, '€843441,39', '€485691,37'),
(4, '€17069,27', '€789914,67'),
(5, '€441425,24', '€45046,80'),
(6, '€836132,95', '€934416,45'),
(7, '€331584,56', '€810270,05'),
(8, '€188183,63', '€207940,28'),
(9, '€465686,64', '€84474,23'),
(10, '€522142,15', '€950985,52');

