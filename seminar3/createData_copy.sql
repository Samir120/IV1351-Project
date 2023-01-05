--student
INSERT INTO contact_details (person_number,name,role,age,street,zip,city)
VALUES
  (199908122493,'Gannon Lucas','student',29,'1617 Quis Street','87845','Avesta'),
  (199908122494,'Audrey Wilkins','student',27,'Ap #210-1226 Sociis Ave','03111','Norrköping'),
  (199908122495,'Yvonne Mcpherson','student',18,'266-1798 Tellus. Rd.','32269','Sandviken'),
  (199908122496,'Ryder Burt','student',24,'P.O. Box 823, 1119 Erat Avenue','54783','Söderhamn'),
  (199908122497,'Stone Downs','student',28,'949-1780 Nunc, Street','77733','Boo'),
  (199908122498,'Madeson Petty','student',24,'Ap #517-656 Id, Rd.','38816','Täby'),
  (199908122499,'Rina Delaney','student',19,'Ap #975-1897 Est St.','95213','Norrköping'),
  (199908122500,'Maggy Booker','student',26,'Ap #645-525 Lectus, Road','13497','Falun'),
  (199908122501,'Cullen Wynn','student',21,'Ap #710-8744 Dictum Rd.','28540','Stockholm'),
  (199908122502,'Martha Good','student',28,'P.O. Box 588, 7041 Dui. Road','62522','Jönköping');
--instructor
INSERT INTO contact_details (person_number,name,role,age,street,zip,city)
VALUES
  (198508122492,'Indigo Joyce','instructor',39,'926-7356 Mauris Avenue','28538','Mora'),
  (198508122491,'Daryl Kane','instructor',33,'914-1770 Nulla. Rd.','35175','Göteborg'),
  (198508122490,'Chaney Bullock','instructor',33,'675-6423 Elit Av.','27725','Värnamo'),
  (198508122489,'Gay Flynn','instructor',30,'743 Curabitur St.','64855','Linköping'),
  (198508122488,'Nell Craft','instructor',49,'6016 Morbi Rd.','78237','Mjölby');
--administrative staff
INSERT INTO contact_details (person_number,name,role,age,street,zip,city)
VALUES
  (198708122492,'Serina Allen','administrative staff',32,'235-5620 Est, Ave','17160','Motala'),
  (198708122491,'Stephanie Robbins','administrative staff',32,'Ap #939-3060 Imperdiet Rd.','80854','Åkersberga'),
  (198708122490,'Eliana Curtis','administrative staff',30,'472-6165 Eget Rd.','50758','Bollnäs');

--parent
INSERT INTO contact_details (person_number,name,role,age,street,zip,city)
VALUES
  (199908122437,'Anders Perr','parent',43,'1617 Quis Street','87845','Avesta'),
  (199908122412,'Moa Henriksson','parent',41,'Ap #210-1226 Sociis Ave','03111','Norrköping'),
  (199908122423,'Sara Niemi','parent',39,'266-1798 Tellus. Rd.','32269','Sandviken'),
  (199908122491,'Peter Burt','parent',45,'P.O. Box 823, 1119 Erat Avenue','54783','Söderhamn'),
  (199908122412,'Asghar Downs','parent',61,'949-1780 Nunc, Street','77733','Boo'),
  (199908122497,'Mia Petty','parent',57,'Ap #517-656 Id, Rd.','38816','Täby'),
  (199908122498,'Jonas Underberg','parent',47,'Ap #975-1897 Est St.','95213','Norrköping'),
  (199908122567,'Maya Booker','parent',48,'Ap #645-525 Lectus, Road','13497','Falun'),
  (199908122543,'Ceder Wynn','parent',44,'Ap #710-8744 Dictum Rd.','28540','Stockholm'),
  (199908122519,'Masa Good','parent',40,'P.O. Box 588, 7041 Dui. Road','62522','Jönköping');
--student
INSERT INTO email (email)
VALUES
  ('mauris.sapien.cursus@yahoo.net'),
  ('diam@outlook.edu'),
  ('enim@outlook.org'),
  ('a.feugiat.tellus@icloud.couk'),
  ('sed.dictum.proin@yahoo.edu'),
  ('dignissim.lacus@icloud.edu'),
  ('molestie.in@hotmail.net'),
  ('tincidunt.congue@icloud.couk'),
  ('lacinia.mattis@hotmail.org'),
  ('nam@aol.couk');
--instructor
INSERT INTO email (email)
VALUES
  ('primis@aol.ca'),
  ('pellentesque.ultricies.dignissim@icloud.edu'),
  ('velit.dui@hotmail.ca'),
  ('at.velit@protonmail.ca'),
  ('magna.nec@google.ca');
--administrative staff
INSERT INTO email (email)
VALUES
  ('ac@yahoo.org'),
  ('aliquam.nisl@icloud.ca'),
  ('risus.a.ultricies@protonmail.net');

--parent
INSERT INTO email (email)
VALUES
  ('anders.sapien.cursus@yahoo.net'),
  ('moa@outlook.edu'),
  ('sara@outlook.org'),
  ('peter.feugiat.tellus@icloud.couk'),
  ('asghar.dictum.proin@yahoo.edu'),
  ('mia.lacus@icloud.edu'),
  ('jonas.in@hotmail.net'),
  ('maya.congue@icloud.couk'),
  ('ceder.mattis@hotmail.org'),
  ('masa@aol.couk');

INSERT INTO instrument_stock (type,quantity,instrument_brand)
VALUES
  ('guitar',4,'Enrock'),
  ('piano',8,'Yokohama'),
  ('flute',3,'Hans'),
  ('violin',2,'Vintage'),
  ('tambor',4,'Faisal');

--student
INSERT INTO phone (phone_no)
VALUES
  ('06 31 24 34 21'),
  ('09 74 60 41 77'),
  ('08 63 04 71 94'),
  ('05 13 87 18 83'),
  ('06 95 91 64 77'),
  ('02 66 16 43 83'),
  ('02 51 41 21 55'),
  ('05 15 49 29 85'),
  ('03 26 35 62 67'),
  ('04 50 15 13 78');
--instructor
INSERT INTO phone (phone_no)
VALUES
  ('01 57 32 71 58'),
  ('05 61 32 11 63'),
  ('04 53 31 84 49'),
  ('03 32 46 86 89'),
  ('03 73 22 76 84');
--administrative staff
INSERT INTO phone (phone_no)
VALUES
  ('07 23 75 75 48'),
  ('08 86 78 19 77'),
  ('08 85 36 89 65');
--parent
INSERT INTO phone (phone_no)
VALUES
  ('06 31 24 34 21'),
  ('09 74 60 41 77'),
  ('08 63 04 71 94'),
  ('05 13 87 18 83'),
  ('06 95 91 64 77'),
  ('02 66 16 43 83'),
  ('02 51 41 21 55'),
  ('05 15 49 29 85'),
  ('03 26 35 62 67'),
  ('04 50 15 13 78');

INSERT INTO parent (contact_details_id)
VALUES
  (19),
  (20),
  (21),
  (22),
  (23),
  (24),
  (25),
  (26),
  (27),
  (28);

INSERT INTO student_payment (number_of_individual_lessons,number_of_group_lessons,number_of_ensemble,month)
VALUES
  (3,4,1,'January'),
  (3,6,1,'January'),
  (6,9,7,'January'),
  (7,9,8,'January'),
  (10,1,4,'January'),
  (3,1,1,'January'),
  (10,4,0,'January'),
  (9,9,9,'January'),
  (8,6,3,'January'),
  (3,1,6,'January');

INSERT INTO siblings_discount (discount_rate,student_payment_id)
VALUES
  (0.2,1),
  (0.2,2),
  (0.2,3);

INSERT INTO student (instrument_quota,contact_details_id,parent_id,siblings_discount_id,student_payment_id)
VALUES
  (2,1,1,1,1),
  (1,2,2,2,2),
  (2,3,3,3,3),
  (1,4,4,NULL,4),
  (1,5,5,NULL,5),
  (1,6,6,NULL,6),
  (1,7,7,NULL,7),
  (2,8,8,NULL,8),
  (1,9,9,NULL,9),
  (1,10,10,NULL,10);


INSERT INTO administrative_staff (contact_details_id,staff_id)
VALUES
  (16,'ST-16'),
  (17,'ST-17'),
  (18,'ST-18');

INSERT INTO appointment (staff_id,instrument,present_skill,appointment_id)
VALUES
  (1,'violin','intermediate','APP-1'),
  (2,'piano','beginner','APP-2'),
  (1,'flute','beginner','APP-3'),
  (1,'piano','advanced','APP-4'),
  (2,'guitar','intermediate','APP-5'),
  (2,'tambor','beginner','APP-6'),
  (2,'guitar','advanced','APP-7'),
  (3,'trumpet','beginner','APP-8'),
  (3,'piano','intermediate','APP-9'),
  (1,'tambor','intermediate','APP-10');

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

--parent
INSERT INTO contact_details_email (contact_details_id,email_id)
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

--parent
INSERT INTO contact_details_phone (contact_details_id,phone_id)
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

INSERT INTO instructor (employment_id,contact_details_id)
VALUES
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15);

INSERT INTO instructor_salary (instructor_id,number_of_individual_lessons,number_of_group_lessons,number_of_ensemble)
VALUES
  (1,3,0,9),
  (2,9,3,6),
  (3,5,5,9),
  (4,1,9,4),
  (5,6,5,6);

INSERT INTO instrument_rental (instrument_stock_id,staff_id,student_id,start_date,end_date)
VALUES
  (5,1,6,'2023/01/04','2023/03/14'),
  (1,3,6,'2023/01/08','2023/02/21'),
  (2,3,5,'2023/01/26','2023/02/15'),
  (1,3,5,'2023/01/30','2023/02/23'),
  (3,2,5,'2023/01/22','2023/02/07'),
  (2,3,8,'2023/01/29','2023/03/12'),
  (2,1,9,'2023/01/22','2023/03/02'),
  (4,2,4,'2023/01/27','2023/02/23'),
  (3,2,3,'2023/01/31','2023/03/11'),
  (4,3,7,'2023/01/22','2023/02/24');

INSERT INTO pricing_scheme (group_lesson_price,individual_lesson_price,beginner_price,intermediate_price,advanced_price,special_day_price, renting_price)
VALUES
  (300,500,250,350,400,200,200);

INSERT INTO music_lesson (instructor_id,date,level,lesson_type,instrument_type,pricing_scheme_id)
VALUES
  (4,'2023/01/17','intermediate','individual','flute',1),
  (4,'2023/01/19','intermediate','individual','violin',1),
  (3,'2023/01/29','intermediate','individual','tambor',1),
  (2,'2023/01/29','intermediate','group','flute',1),
  (2,'2023/01/01','intermediate','group','trumpet',1),
  (1,'2023/01/26','beginner','group','violin',1),
  (4,'2023/01/17','intermediate','individual','flute',1),
  (2,'2023/01/11','intermediate','individual','guitar',1),
  (2,'2023/01/04','intermediate','individual','tambor',1),
  (4,'2023/01/19','beginner','individual','guitar',1);
INSERT INTO music_lesson (instructor_id,date,level,lesson_type,instrument_type,pricing_scheme_id)
VALUES
  (2,'2023/01/18','intermediate','individual','flute',1),
  (3,'2023/01/23','beginner','individual','flute',1),
  (4,'2023/01/28','beginner','individual','flute',1),
  (5,'2023/01/02','intermediate','individual','violin',1),
  (3,'2023/01/10','beginner','individual','violin',1),
  (2,'2023/01/12','intermediate','individual','guitar',1),
  (5,'2023/01/03','beginner','individual','tambor',1),
  (2,'2023/01/22','intermediate','individual','tambor',1),
  (2,'2023/01/17','beginner','individual','violin',1),
  (2,'2023/01/21','intermediate','individual','violin',1);
INSERT INTO music_lesson (instructor_id,date,level,lesson_type,instrument_type,pricing_scheme_id)
VALUES
  (3,'2023/01/19','beginner','group','piano',1),
  (2,'2023/01/03','intermediate','group','tambor',1),
  (4,'2023/01/15','intermediate','group','tambor',1),
  (5,'2023/01/26','beginner','individual','violin',1),
  (4,'2023/01/12','intermediate','individual','violin',1),
  (5,'2023/01/18','beginner','group','trumpet',1),
  (3,'2023/01/26','intermediate','individual','violin',1),
  (1,'2023/01/08','intermediate','group','violin',1),
  (3,'2023/01/04','beginner','group','violin',1),
  (3,'2023/01/25','beginner','group','guitar',1);
INSERT INTO music_lesson (instructor_id,date,level,lesson_type,instrument_type,pricing_scheme_id)
VALUES
  (2,'2023/01/13','beginner','group','piano',1),
  (2,'2023/01/20','beginner','group','trumpet',1),
  (3,'2023/01/17','beginner','group','flute',1),
  (5,'2023/01/23','intermediate','group','trumpet',1),
  (2,'2023/01/11','beginner','group','guitar',1),
  (3,'2023/01/10','beginner','group','violin',1),
  (3,'2023/01/04','intermediate','group','tambor',1),
  (2,'2023/01/27','intermediate','group','violin',1),
  (4,'2023/01/05','beginner','group','tambor',1),
  (3,'2023/01/28','intermediate','group','trumpet',1);
INSERT INTO music_lesson (instructor_id,date,level,lesson_type,instrument_type,pricing_scheme_id)
VALUES
  (2,'2023/01/09','intermediate','ensemble','piano',1),
  (2,'2023/01/12','intermediate','ensemble','violin',1),
  (3,'2023/01/28','beginner','ensemble','flute',1),
  (3,'2023/01/04','intermediate','ensemble','flute',1),
  (2,'2023/01/08','beginner','ensemble','guitar',1),
  (3,'2023/01/29','intermediate','ensemble','flute',1),
  (3,'2023/01/30','intermediate','ensemble','guitar',1),
  (4,'2023/01/16','advanced','ensemble','violin',1),
  (1,'2023/01/23','intermediate','ensemble','violin',1),
  (5,'2023/01/17','advanced','ensemble','tambor',1);


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

INSERT INTO group_lesson (lesson_id,minimum_number_of_students,maximum_number_of_students)
VALUES
  (1,5,15),
  (2,5,15),
  (3,5,15),
  (4,5,15),
  (5,5,15);

INSERT INTO individual_lesson (lesson_id)
VALUES
  (6),
  (7),
  (8),
  (9),
  (10);



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
  (41,1),
  (42,2),
  (43,3),
  (44,4),
  (45,5),
  (46,6),
  (47,7),
  (48,8),
  (49,9),
  (50,10);

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

INSERT INTO student_group_lesson (lesson_id,student_id)
VALUES
  (1,3),
  (2,2),
  (3,1),
  (4,8),
  (5,9);

INSERT INTO student_individual_lesson (lesson_id,student_id)
VALUES
  (11,3),
  (12,4),
  (13,5),
  (14,6),
  (15,7),
  (16,8),
  (17,9);

INSERT INTO student_individual_lesson (lesson_id,student_id)
VALUES
  (6,3),
  (7,1),
  (8,4),
  (9,6),
  (10,7),
  (18,8),
  (20,2),
  (19,9);













