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
