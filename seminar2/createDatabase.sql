--student
INSERT INTO contact_details (id,personal_number,name,role,age,street,zip,city)
VALUES
  (1,199908122493,'Gannon Lucas','student',29,'1617 Quis Street','87845','Avesta'),
  (2,199908122494,'Audrey Wilkins','student',27,'Ap #210-1226 Sociis Ave','03111','Norrköping'),
  (3,199908122495,'Yvonne Mcpherson','student',18,'266-1798 Tellus. Rd.','32269','Sandviken'),
  (4,199908122496,'Ryder Burt','student',24,'P.O. Box 823, 1119 Erat Avenue','54783','Söderhamn'),
  (5,199908122497,'Stone Downs','student',28,'949-1780 Nunc, Street','77733','Boo'),
  (6,199908122498,'Madeson Petty','student',24,'Ap #517-656 Id, Rd.','38816','Täby'),
  (7,199908122499,'Rina Delaney','student',19,'Ap #975-1897 Est St.','95213','Norrköping'),
  (8,199908122500,'Maggy Booker','student',26,'Ap #645-525 Lectus, Road','13497','Falun'),
  (9,199908122501,'Cullen Wynn','student',21,'Ap #710-8744 Dictum Rd.','28540','Stockholm'),
  (10,199908122502,'Martha Good','student',28,'P.O. Box 588, 7041 Dui. Road','62522','Jönköping');
--instructor
INSERT INTO contact_details (id,personal_number,name,role,age,street,zip,city)
VALUES
  (11,198508122492,'Indigo Joyce','instructor',39,'926-7356 Mauris Avenue','28538','Mora'),
  (12,198508122491,'Daryl Kane','instructor',33,'914-1770 Nulla. Rd.','35175','Göteborg'),
  (13,198508122490,'Chaney Bullock','instructor',33,'675-6423 Elit Av.','27725','Värnamo'),
  (14,198508122489,'Gay Flynn','instructor',30,'743 Curabitur St.','64855','Linköping'),
  (15,198508122488,'Nell Craft','instructor',49,'6016 Morbi Rd.','78237','Mjölby');
--administrative staff
INSERT INTO contact_details (id,personal_number,name,role,age,street,zip,city)
VALUES
  (16,198708122492,'Serina Allen','administrative staff',32,'235-5620 Est, Ave','17160','Motala'),
  (17,198708122491,'Stephanie Robbins','administrative staff',32,'Ap #939-3060 Imperdiet Rd.','80854','Åkersberga'),
  (18,198708122490,'Eliana Curtis','administrative staff',30,'472-6165 Eget Rd.','50758','Bollnäs');

--student
INSERT INTO email (id,email)
VALUES
  (1,'mauris.sapien.cursus@yahoo.net'),
  (2,'diam@outlook.edu'),
  (3,'enim@outlook.org'),
  (4,'a.feugiat.tellus@icloud.couk'),
  (5,'sed.dictum.proin@yahoo.edu'),
  (6,'dignissim.lacus@icloud.edu'),
  (7,'molestie.in@hotmail.net'),
  (8,'tincidunt.congue@icloud.couk'),
  (9,'lacinia.mattis@hotmail.org'),
  (10,'nam@aol.couk');
--instructor
INSERT INTO email (id,email)
VALUES
  (11,'primis@aol.ca'),
  (12,'pellentesque.ultricies.dignissim@icloud.edu'),
  (13,'velit.dui@hotmail.ca'),
  (14,'at.velit@protonmail.ca'),
  (15,'magna.nec@google.ca');
--administrative staff
INSERT INTO email (id,email)
VALUES
  (16,'ac@yahoo.org'),
  (17,'aliquam.nisl@icloud.ca'),
  (18,'risus.a.ultricies@protonmail.net');

INSERT INTO instrument_stock (id,type,quantity,instrument_brand)
VALUES
  (1,'guitar',4,'Enrock'),
  (2,'piano',8,'Yokohama'),
  (3,'flute',3,'Hans'),
  (4,'violin',2,'Vintage'),
  (5,'tambor',4,'Faisal');

--student
INSERT INTO phone (id,phone_no)
VALUES
  (1,'06 31 24 34 21'),
  (2,'09 74 60 41 77'),
  (3,'08 63 04 71 94'),
  (4,'05 13 87 18 83'),
  (5,'06 95 91 64 77'),
  (6,'02 66 16 43 83'),
  (7,'02 51 41 21 55'),
  (8,'05 15 49 29 85'),
  (9,'03 26 35 62 67'),
  (10,'04 50 15 13 78');
--instructor
INSERT INTO phone (id,phone_no)
VALUES
  (11,'01 57 32 71 58'),
  (12,'05 61 32 11 63'),
  (13,'04 53 31 84 49'),
  (14,'03 32 46 86 89'),
  (15,'03 73 22 76 84');
--administrative staff
INSERT INTO phone (id,phone_no)
VALUES
  (16,'07 23 75 75 48'),
  (17,'08 86 78 19 77'),
  (18,'08 85 36 89 65');

INSERT INTO sibling_discount (id,discount_rate,student_payment_id)
VALUES
  (1,0.2,1),
  (2,0.2,2),
  (3,0.2,3);

INSERT INTO sound_good_school (id,street,zip,city)
VALUES
  ('202212','7912 Donec Rd.','58433','Stockholm');

INSERT INTO student (id,instrument_quota,contact_details_id,parent_id,sibling_discount_id)
VALUES
  (1,2,1,19,1),
  (2,1,2,20,2),
  (3,2,3,21,3),
  (4,1,4,22),
  (5,1,5,23),
  (6,1,6,24),
  (7,1,7,25),
  (8,2,8,26),
  (9,1,9,27),
  (10,1,10,28);

INSERT INTO student_payment (id,student_id,number_of_individual_lessons,number_of_group_lesson,number_of_ensemble,month)
VALUES
  (1,1,3,4,1,'January'),
  (2,2,3,6,1,'January'),
  (3,3,6,9,7,'January'),
  (4,4,7,9,8,'January'),
  (5,5,10,1,4,'January'),
  (6,6,3,1,1,'January'),
  (7,7,10,4,0,'January'),
  (8,8,9,9,9,'January'),
  (9,9,8,6,3,'January'),
  (10,10,3,1,6,'January');

INSERT INTO administrative_staff (id,sound_good_school_id,contact_details_id,staff_id)
VALUES
  (16,16,16,'ST-16'),
  (17,17,17,'ST-17'),
  (18,18,18,'ST-18');

INSERT INTO appointment (id,staff_id,instrument,present_skill,appointment_id)
VALUES
  (1,17,'violin','intermediate','APP-1'),
  (2,18,'piano','beginner','APP-2'),
  (3,17,'flute','beginner','APP-3'),
  (4,17,'piano','advanced','APP-4'),
  (5,18,'guitar','intermediate','APP-5'),
  (6,18,'tambor','beginner','APP-6'),
  (7,18,'guitar','advanced','APP-7'),
  (8,16,'trumpet','beginner','APP-8'),
  (9,16,'piano','intermediate','APP-9'),
  (10,17,'tambor','intermediate','APP-10');

--student
INSERT INTO contact_details_email (contact_details_id,email_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);
--instructor
INSERT INTO contact_details_email (contact_details_id,email_id)
VALUES
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15);
--administrative staff
INSERT INTO contact_details_email (contact_details_id,email_id)
VALUES
  (16,16),
  (17,17),
  (18,18);

--student
INSERT INTO contact_details_phone (contact_details_id,phone_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);
--instructor
INSERT INTO contact_details_phone (contact_details_id,phone_id)
VALUES
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15);
--administrative staff
INSERT INTO contact_details_phone (contact_details_id,phone_id)
VALUES
  (16,16),
  (17,17),
  (18,18);

INSERT INTO instructor (id,employment_id,sound_good_school_id,contact_details_id)
VALUES
  (11,11,11,11),
  (12,12,12,12),
  (13,13,13,13),
  (14,14,14,14),
  (15,15,15,15);

INSERT INTO instructor_salary (id,instructor_id,number_of_individual_lessons,number_of_group_lessons,number_of_ensemble)
VALUES
  (11,11,3,0,9),
  (12,12,9,3,6),
  (13,13,5,5,9),
  (14,14,1,9,4),
  (15,15,6,5,6);

INSERT INTO instrument_rental (id,instrument_stock_id,staff_id,student_id,start_date,end_date)
VALUES
  (1,5,11,6,'08/01/2022','14/03/2022'),
  (2,1,13,6,'22/01/2022','21/02/2022'),
  (3,2,13,5,'26/01/2022','15/02/2022'),
  (4,1,13,5,'30/01/2022','23/02/2022'),
  (5,3,14,5,'22/01/2022','07/02/2022'),
  (6,2,13,8,'29/01/2022','12/03/2022'),
  (7,2,15,9,'22/01/2022','02/03/2022'),
  (8,4,15,4,'27/01/2022','23/02/2022'),
  (9,3,12,3,'31/01/2022','11/03/2022'),
  (10,4,15,7,'22/01/2022','24/02/2022');

INSERT INTO music_lesson (id,instructor_id,date,level,lesson_type,instrument_type)
VALUES
  (1,14,'17/01//2022','intermediate','individual','flute'),
  (2,14,'19/01//2022','intermediate','individual','violin'),
  (3,13,'29/01//2022','intermediate','individual','tambor'),
  (4,12,'29/01//2022','intermediate','group','flute'),
  (5,12,'01/02//2022','intermediate','group','trumpet'),
  (6,11,'26/01//2022','beginner','group','violin'),
  (7,14,'17/01//2022','intermediate','individual','flute'),
  (8,12,'11/01//2022','intermediate','individual','guitar'),
  (9,12,'04/01//2022','intermediate','individual','tambor'),
  (10,14,'19/01//2022','beginner','individual','guitar');
INSERT INTO music_lesson (id,instructor_id,date,level,lesson_type,instrument_type)
VALUES
  (11,12,'18/01//2022','intermediate','individual','flute'),
  (12,13,'23/01//2022','beginner','individual','flute'),
  (13,14,'28/01//2022','beginner','individual','flute'),
  (14,15,'02/01//2022','intermediate','individual','violin'),
  (15,13,'10/01//2022','beginner','individual','violin'),
  (16,12,'12/01//2022','intermediate','individual','guitar'),
  (17,15,'03/01//2022','beginner','individual','tambor'),
  (18,12,'22/01//2022','intermediate','individual','tambor'),
  (19,12,'17/01//2022','beginner','individual','violin'),
  (20,12,'21/01//2022','intermediate','individual','violin');
INSERT INTO music_lesson (id,instructor_id,date,level,lesson_type,instrument_type)
VALUES
  (21,13,'19/01//2022','beginner','group','piano'),
  (22,12,'03/01//2022','intermediate','group','tambor'),
  (23,14,'29/01//2022','intermediate','group','tambor'),
  (24,15,'26/01//2022','beginner','individual','violin'),
  (25,14,'12/01//2022','intermediate','individual','violin'),
  (26,15,'28/01//2022','beginner','group','trumpet'),
  (27,13,'26/01//2022','intermediate','individual','violin'),
  (28,11,'28/01//2022','intermediate','group','violin'),
  (29,13,'24/01//2022','beginner','group','violin'),
  (30,13,'25/01//2022','beginner','group','guitar');
INSERT INTO music_lesson (id,instructor_id,date,level,lesson_type,instrument_type)
VALUES
  (31,12,'11/01//2022','beginner','group','piano'),
  (32,12,'20/01//2022','beginner','group','trumpet'),
  (33,13,'17/01//2022','beginner','group','flute'),
  (34,15,'23/01//2022','intermediate','group','trumpet'),
  (35,12,'11/01//2022','beginner','group','guitar'),
  (36,13,'10/01//2022','beginner','group','violin'),
  (37,13,'11/01//2022','intermediate','group','tambor'),
  (38,12,'27/01//2022','intermediate','group','violin'),
  (39,14,'05/01//2022','beginner','group','tambor'),
  (40,13,'28/01//2022','intermediate','group','trumpet');
INSERT INTO music_lesson (id,instructor_id,date,level,lesson_type,instrument_type)
VALUES
  (41,12,'09/01//2022','intermediate','ensemble','piano'),
  (42,12,'31/01//2022','intermediate','ensemble','violin'),
  (43,13,'28/01//2022','beginner','ensemble','flute'),
  (44,13,'04/01//2022','intermediate','ensemble','flute'),
  (45,12,'08/01//2022','beginner','ensemble','guitar'),
  (46,13,'29/01//2022','intermediate','ensemble','flute'),
  (47,13,'30/01//2022','intermediate','ensemble','guitar'),
  (48,14,'16/01//2022','advanced','ensemble','violin'),
  (49,11,'23/01//2022','intermediate','ensemble','violin'),
  (50,15,'17/01//2022','advanced','ensemble','tambor');

INSERT INTO parent (id,contact_details_id)
VALUES
  (19,19),
  (20,20),
  (21,21),
  (22,22),
  (23,23),
  (24,24),
  (25,25),
  (26,26),
  (27,27),
  (28,28);

INSERT INTO pricing_scheme (sound_good_school_id,group_lesson_price,individual_lesson_price,beginner_price,intermediate_price,advanced_price,special_day_price, renting_price)
VALUES
  (202212,300,500,250,350,400,200,200);

INSERT INTO sibling (student_id,contact_details_id)
VALUES
  (1,1),
  (2,2),
  (3,3);

INSERT INTO ensemble (lesson_id,genre,minimum_number_of_students,maximum_number_of_students)
VALUES
  (41,'classic',5,15),
  (42,'classic',5,15),
  (43,'reggae',5,15),
  (44,'rock and roll',5,15),
  (45,'rock and roll',5,15),
  (46,'classic',5,15),
  (47,'rock and roll',5,15),
  (48,'jazz',5,15),
  (49,'soul',5,15),
  (50,'rock and roll',5,15);

INSERT INTO group_lesson (lesson_id,minimum_number_of_students,maximum_number_of_students)
VALUES
  (31,5,15),
  (32,5,15),
  (33,5,15),
  (34,5,15),
  (35,5,15),
  (36,5,15),
  (37,5,15),
  (38,5,15),
  (39,5,15),
  (40,5,15);

INSERT INTO individual_lesson (lesson_id)
VALUES
  (11),
  (12),
  (13),
  (14),
  (15),
  (16),
  (17),
  (18),
  (19),
  (20);

INSERT INTO student_ensemble (lesson_id,student_id)
VALUES
  (11,1),
  (12,2),
  (13,3),
  (14,4),
  (15,5),
  (16,6),
  (17,7),
  (18,8),
  (19,9),
  (20,10);

INSERT INTO student_group_lesson (lesson_id,student_id)
VALUES
  (31,1),
  (32,2),
  (33,3),
  (34,4),
  (35,5),
  (36,6),
  (37,7),
  (38,8),
  (39,9),
  (40,10);

INSERT INTO student_individual_lesson (lesson_id,student_id)
VALUES
  (11,3),
  (12,4),
  (13,5),
  (14,6),
  (15,7),
  (16,8),
  (17,9);













