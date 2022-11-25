DROP TABLE IF EXISTS "contact_details";
DROP TABLE IF EXISTS "email";
DROP TABLE IF EXISTS "instrument_stock";
DROP TABLE IF EXISTS "phone";
DROP TABLE IF EXISTS "sound_good_school";
DROP TABLE IF EXISTS "administrative_staff";
DROP TABLE IF EXISTS "appointment";
DROP TABLE IF EXISTS "contact_details_email";
DROP TABLE IF EXISTS "contact_details_phone";
DROP TABLE IF EXISTS "instructor";
DROP TABLE IF EXISTS "instructor_salary";
DROP TABLE IF EXISTS "music_lesson";
DROP TABLE IF EXISTS "parent";
DROP TABLE IF EXISTS "pricing_scheme";
DROP TABLE IF EXISTS "sibling_discount";
DROP TABLE IF EXISTS "student";
DROP TABLE IF EXISTS "student_payment";
DROP TABLE IF EXISTS "ensemble";
DROP TABLE IF EXISTS "group_lesson";
DROP TABLE IF EXISTS "individual_lesson";
DROP TABLE IF EXISTS "instrument_rental";
DROP TABLE IF EXISTS "student_ensemble";
DROP TABLE IF EXISTS "student_group_lesson";
DROP TABLE IF EXISTS "student_individual_lesson";


INSERT INTO contact_details (personal_number,first_name,last_name,role,age,street,zip,city)
VALUES
  (201312095902,'Samson Jackson','Calvin Carroll','Eagan Moss',59,'Ap #189-1161 Enim. Road','45977','Sandviken'),
  (201312095918,'Charity Good','Lars Guerrero','Vernon Petty',49,'P.O. Box 148, 4059 Quam Av.','02947','Bollnäs'),
  (201312095901,'Haley Mathews','Melanie Golden','Colorado Bullock',52,'519-3641 Arcu St.','71739','Borlänge'),
  (201312095957,'Damian Bishop','Kadeem Sullivan','Denise Drake',32,'613-2580 Amet Ave','27392','Lerum'),
  (201312095898,'Leandra Wilkerson','Britanni Reyes','Henry Pennington',42,'Ap #914-6151 Ac Avenue','48145','Falun'),
  (201312095919,'Gabriel Allison','Rhiannon Chan','Jameson Simon',56,'897-2835 Velit Rd.','85221','Tranås'),
  (201312095956,'Elijah French','Bryar Jennings','Elvis Fitzgerald',50,'Ap #918-6825 Mauris. Ave','99317','Linköping'),
  (201312095894,'Quon Bass','Jakeem Stone','Quin Ruiz',39,'4628 Nisi. Rd.','18166','Sandviken'),
  (201312095924,'Allen Dale','Nathaniel Campbell','Gannon Small',34,'Ap #680-1544 Lacus. Street','85013','Norrköping'),
  (201312095912,'Jade O''donnell','Warren Horton','Wanda Cohen',28,'Ap #595-7187 Eu Rd.','83556','Falun');


INSERT INTO email (email)
VALUES
  ('mauris.ipsum@hotmail.org'),
  ('amet.consectetuer@google.edu'),
  ('nullam.scelerisque.neque@hotmail.net'),
  ('ornare.facilisis@hotmail.org'),
  ('mi.felis@google.com'),
  ('tortor.dictum@yahoo.ca'),
  ('mauris@icloud.org'),
  ('ac.sem@aol.net'),
  ('lacinia.at@hotmail.net'),
  ('velit.quisque.varius@outlook.net');

INSERT INTO instrument_stock (type,quantity,instrument_brand)
VALUES
  ('morbi',7,'Mauris Foundation'),
  ('semper',2,'Nisi Ltd'),
  ('a',4,'Scelerisque Lorem Company'),
  ('Fusce',9,'Gravida Molestie LLC'),
  ('Pellentesque',8,'Praesent Interdum Foundation'),
  ('neque',1,'Molestie Arcu Sed LLC'),
  ('Nunc',10,'Placerat Augue Institute'),
  ('felis',9,'Ullamcorper Duis Ltd'),
  ('metus',4,'A Sollicitudin Orci Associates'),
  ('rutrum',1,'Sociosqu Ad Litora Inc.');

INSERT INTO phone (phone_no)
VALUES
  ('(517) 232-1856'),
  ('1-589-507-8598'),
  ('(907) 178-1729'),
  ('(555) 470-4705'),
  ('1-598-277-6664'),
  ('(351) 863-3787'),
  ('1-389-748-7388'),
  ('1-708-855-8907'),
  ('(870) 768-9576'),
  ('(212) 713-7841');

INSERT INTO sound_good_school (street,zip,city)
VALUES
  ('Ap #732-6162 Orci. Ave','85429','Borlänge');

  INSERT INTO administrative_staff (sound_good_school_id,contact_details_id,staff_id)
VALUES
  ('MVE48KUL2XV','VVN34KEO6TK','WRL18FNQ8FP'),
  ('RAF88VRB2UP','RYS89YCO3LR','VPN95DCL5MJ'),
  ('LPO82KMI7MD','SDI04KVS8EJ','NMD81MHX0YV'),
  ('SRN18DYQ1TN','VSC79BBO6KP','LSS10GUR5TX'),
  ('PAN02RBU4BR','ULV51DLE0RN','IBF62EHL8KL'),
  ('UJZ55VHV7BJ','HPS06JKW3PX','KKV82IBT4GE'),
  ('ENY51HTU4UT','IDW49RCP5TV','BQT95MTT6WF'),
  ('WDR95ODQ7EV','WVT75UPC3FN','YPD18NZI0KK'),
  ('WXT32MIL8PN','KUY55BFR8VO','QXB48REZ6TD'),
  ('SAW67OSR9HF','BWB63XAF3RP','AKO05XBI1FA');

INSERT INTO appointment (staff_id,instrument,present_skill,apointment_id)
VALUES
  ('TDQ88KKH7LF','Metus Vivamus Euismod Corporation','adipiscing','YPQ77QIY7MH'),
  ('HZU64SUB4IH','Auctor LLC','primis','WCO23FQM3IU'),
  ('TJC73FPG6NQ','Sed Company','amet','WSC48NTS8LI'),
  ('WSC25PVO6DM','Non Lacinia At Incorporated','aliquet','GGD16FPR1EY'),
  ('TCJ62BWS1WG','Lorem Ac Risus LLP','Suspendisse','UZT42BSV1MD'),
  ('KQN63VTA6XJ','Lorem PC','Nunc','GXA67GSA8KK'),
  ('ULO80WDR5EE','Integer Foundation','tincidunt','QYC70JHD9RD'),
  ('RID36XXE5ZD','Id Magna Associates','Aenean','AJB27DLJ2OS'),
  ('YEG68IOQ5HQ','Ipsum Primis LLC','dolor','FDZ73CEE7YH'),
  ('ELY47IDN8EY','Sit Amet Institute','ipsum','XJO48ZLI1WB');

INSERT INTO contact_details_email (contact_details_id,email_id)
VALUES
  ('ETX17PCQ1KJ','YRE85IGV7TG'),
  ('FKO44URI8EO','OMO92JSC1OZ'),
  ('GGH89GXU4HC','WWR33OCH6JS'),
  ('CSM99SXQ8IE','ROB31ULE3MH'),
  ('IWV72LHV9HU','NUV69TEE1PM'),
  ('HHV59ONR2QQ','XEI91QLQ2QS'),
  ('NTC25GPC0GJ','NAD87TRC3IC'),
  ('BEH51ZTK8MR','EOC23QBI4DU'),
  ('FYQ44JGY4EV','COY39FTP3BJ'),
  ('TWX48TSV2WR','JMY84BMT1UY');

INSERT INTO contact_details_phone (contact_details_id,phone_id)
VALUES
  ('WHV14RKP6HT','UFP04FVR5IV'),
  ('TUP62TMY3NH','DBD10RLH8NF'),
  ('SDK41ZLI2SE','YPB09LLV9CV'),
  ('IPC46XHU4RE','IFV71GGU8CW'),
  ('PSX38BBS2PE','RUD84ELX1RV'),
  ('FCI53NVH3RM','EWF32GPJ2UJ'),
  ('VCS73RWC5OK','JQC58EGW7FY'),
  ('JWE19PGQ3XY','HLU02AEC2MK'),
  ('GVQ17SXV3PX','UTP16GCH5NJ'),
  ('KHF02BSE2CI','ODG15KJR1YH');

INSERT INTO instructor (employment_id,instrument_type,sound_good_school_id,contact_details_id)
VALUES
  ('QCS25GWN1CK','Integer Company','BNH21FRK3DK','CJV22KNB2QF'),
  ('VHY97KNX8WR','Massa Rutrum Inc.','SUN44FAO7HS','EWJ71CLL2DK'),
  ('SIU07VWU3BK','Quisque Ornare LLP','UBV82BOQ7SJ','PFV29TOP7EU'),
  ('BVC14IEQ1QK','Aliquam Nec Foundation','QVM14UWI5YS','CPQ53IMU6XU'),
  ('SSP46JDU8JJ','Gravida Nunc Sed PC','VOT42KJD4UN','QGT52HZM0FJ'),
  ('DNU86FEC9WX','Elit Dictum Limited','WDQ22OUE0EC','DMB12MYP1CF'),
  ('PYD08MST6PG','Phasellus Dapibus Incorporated','NVY67YYX8IV','FGI31ITE1UM'),
  ('YNH42OSW7XU','Imperdiet Non Vestibulum Incorporated','WRG66PBM5GY','KRY86PCI6OP'),
  ('CGS13RKN2HC','Fusce Mollis Limited','SZR73EVV3BG','XNH42SXB9WA'),
  ('THC53FQG0UD','In LLP','AMG19XOX7XD','XSG88IIM7EJ');

INSERT INTO instructor_salary (instructor_id,number_of_individual_lessons,number_of_group_lessons,number_of_ensemble)
VALUES
  ('RFT29LPG2XO',5,17,29),
  ('GAJ77YDP3LD',46,44,4),
  ('KVB64KTJ7ST',36,34,28),
  ('SXJ86NGU2PI',24,35,10),
  ('BEP14UFZ4HR',12,45,2),
  ('BYH58SRB6DW',6,10,5),
  ('VVO78WGQ3CS',41,6,17),
  ('UTM92LWX1QK',17,43,25),
  ('XUB11EUV8KJ',44,47,7),
  ('CTT16KOO6RK',34,28,4);

INSERT INTO music_lesson (instructor_id,time_start,time_end,amount_of_participants,level,lesson_type,instrument_type)
VALUES
  ('NMC09HZB6RD','5:27 PM','10:48 PM',30,'odio.','Nullam','ut,'),
  ('VTV86NFQ3FV','4:30 AM','8:01 PM',39,'in','id','non'),
  ('LJW30JNW3FR','9:40 AM','12:00 PM',6,'per','sapien','odio'),
  ('ORT54WIQ8SF','11:47 AM','12:06 PM',26,'dapibus','malesuada','ut'),
  ('IJY57UFX4MW','5:34 PM','1:05 AM',15,'velit','velit.','Donec'),
  ('JOV44GRK7WP','3:24 PM','6:42 PM',40,'commodo','elementum,','risus,'),
  ('VKB25VGS2GS','8:03 AM','7:53 PM',12,'facilisis.','nunc','nonummy'),
  ('LIU24JSM2WJ','9:35 AM','3:59 PM',38,'erat.','dictum','Pellentesque'),
  ('HXX57EWZ2XM','5:56 AM','1:47 PM',26,'Donec','libero','nunc'),
  ('JUK06RUC2AM','2:42 AM','11:11 PM',8,'ut','Donec','rutrum');

INSERT INTO parent (contact_details_id)
VALUES
  ('XWG47BUF2XU'),
  ('PWQ58JCP0PW'),
  ('LOF82HCP5XJ'),
  ('NBR65XVI9CJ'),
  ('UQD34OPB8OO'),
  ('NOI01EQX5XK'),
  ('SYB31UUW6LE'),
  ('OQC45FYN5GE'),
  ('YNL30RFV2FG'),
  ('YVF30SHJ3PU');

INSERT INTO pricing_scheme (sound_good_school_id,group_lesson_price,individual_lesson_price,beginner_price,intermediate_price,advanced_price,special_day_price,renting_price)
VALUES
  ('DSN31TWN3KI',500,900,600,1000,1300,800,200),
  ('BFP32WOC9XW',500,900,600,1000,1300,800,200),
  ('FVH77HVJ4EY',500,900,600,1000,1300,800,200),
  ('REP98IXS4HG',500,900,600,1000,1300,800,200),
  ('YEV28BPP0KY',500,900,600,1000,1300,800,200),
  ('ILQ91GFZ8WI',500,900,600,1000,1300,800,200),
  ('JVQ12RDN5NU',500,900,600,1000,1300,800,200),
  ('PML64QXE2JM',500,900,600,1000,1300,800,200),
  ('IQN43UNF3FO',500,900,600,1000,1300,800,200),
  ('FMM21DOX2GH',500,900,600,1000,1300,800,200);

INSERT INTO sibling_discount (sound_good_school_id,discount_rate)
VALUES
  ('IMX93DBV4FS',0.05),
  ('XRT85FXF7FV',0.05),
  ('EDX65PVK2DT',0.05),
  ('YCZ32NOS6WF',0.05),
  ('GZY80OYV1TN',0.05),
  ('WUT08XIT2HL',0.05),
  ('ZVB35PUI7KB',0.05),
  ('DXE96QRO0QI',0.05),
  ('MHC08CGS3JU',0.05),
  ('JXJ73EJQ2SN',0.05);

INSERT INTO student (student_id,instrument_quota,contact_details_id,parent_id)
VALUES
  ('MBN95DNU2DM',1,'KUU95NKH1JN','POS85EVE9MR'),
  ('PGN39THZ1QH',1,'BVO14NXE5MO','JIF40JVP5WY'),
  ('JNT03SQU1KK',1,'FWI97NMH8NP','WHG33JUS2TW'),
  ('BWY13YYX8HR',2,'JTT56KUN4BM','TMY28MUP7FM'),
  ('PPH55CYC6FR',2,'EFG61QLY6FW','NII44URJ3EM'),
  ('JTB83EXL5FG',2,'KSR71WIY4VH','RUB62ABW5FQ'),
  ('UYL44JJB0IZ',2,'LST24ZJB6DM','PCF41JTJ8NC'),
  ('SNT95GRF7UD',2,'BGT56MDU2SS','KMB15KPQ9IG'),
  ('JUP98EWH6DH',1,'IDA06WUB5TD','TEJ01RFU1IF'),
  ('NUB29RZI3TR',2,'CZK42EFX3BR','KGC78QVH3HL');

INSERT INTO student_payment (student_id,number_individual_lessons,number_of_group_lesson,number_of_ensemble,month,discount)
VALUES
  ('QRG17PXM4QH',7,3,9,'lorem,',0),
  ('EOU73DHC2MM',3,5,4,'ac',0),
  ('KYO34DUU4MN',9,4,10,'metus.',0),
  ('HIW82FAP7DB',7,8,7,'lorem',0),
  ('JOK52VUS4GE',6,2,4,'aliquam',0),
  ('QKM34OTH5DK',6,5,1,'ac',0),
  ('YYF87BHQ0JW',6,6,7,'accumsan',0),
  ('XRJ24HKN0FI',9,4,8,'cubilia',0),
  ('MUU85CIW2GC',2,6,10,'montes,',0),
  ('XNC90NZT0QP',4,1,4,'Aenean',0);

INSERT INTO ensemble (lesson_id,genre,minimum_number_of_students,maximum_number_of_students)
VALUES
  ('YAP76IYE6JW','est',10,40),
  ('UXG09LSD8KO','vel',10,40),
  ('NBJ12AMB4BN','Quisque',10,40),
  ('VPA32QMJ8AX','vitae',10,40),
  ('COG71RTB4DH','est',10,40),
  ('DYP82UTI7ZX','elit,',10,40),
  ('SBM52LRE7VC','id',10,40),
  ('HIX88SZK4YG','erat',10,40),
  ('VHW74EBY0BQ','mus.',10,40),
  ('IPF43CXN1TY','turpis.',10,40);

INSERT INTO group_lesson (lesson_id,minimum_number_of_students,maximum_number_of_students)
VALUES
  ('QLH41GHQ8CU',10,40),
  ('HTL16JHI5BO',10,40),
  ('ESQ25QBR8VR',10,40),
  ('EUM17UTH3PP',10,40),
  ('QHI22KZT0CU',10,40),
  ('AEJ18MXG5AB',10,40),
  ('YYV68UQU3MF',10,40),
  ('GSP70JYM8EI',10,40),
  ('VGE37VVV9TK',10,40),
  ('GYX13PYV7TO',10,40);

INSERT INTO individual_lesson (lesson_id)
VALUES
  ('FIW96XEI7DG'),
  ('YGJ14CPO6IT'),
  ('QBK32XUT7ND'),
  ('HTM13ZUL9RH'),
  ('ETQ52DDX2RB'),
  ('DYT04YYD8EM'),
  ('XXY48ZFF0PQ'),
  ('IJQ41DOH2TP'),
  ('HJT45IMM4GL'),
  ('DBV36AXG1NH');

INSERT INTO instrument_rental (instrument_id,staff_id,student_id,instrument_fee,start_date,end_date)
VALUES
  ('OFK12JEJ7SQ','KWA04HVO8IY','OTT64LXY5EH',336,'Sep 5, 2023','Dec 1, 2021'),
  ('GFY61BVK5DN','TTH17BWR0RA','IGM62JEI5OT',343,'Feb 9, 2022','Aug 1, 2023'),
  ('GVJ78XWY7SW','CRD21UIM0OW','UXX67PYP4PO',362,'Jul 18, 2022','Dec 26, 2022'),
  ('DUK73REY7UE','NYF50MAF4YK','UJX39PKK5HO',403,'Jun 30, 2022','Jun 18, 2022'),
  ('KMB99TLZ2QW','ZOV45YQB1DT','COK87GTO1SK',370,'Sep 19, 2022','Dec 3, 2022'),
  ('FJR13GNH5FS','MRT57YFM6OR','CGT57RHG3CW',311,'Aug 29, 2022','Aug 12, 2022'),
  ('WUT74CMY8NH','BHP02PTB9UZ','ATT13DAQ9SM',428,'Jul 27, 2022','Aug 14, 2023'),
  ('PLV38FLP3IC','XUV32WNM1UP','GOH91SVO0IL',519,'Mar 10, 2023','Jul 4, 2022'),
  ('GFO45TGV4NW','AJR04WLI4NE','DWZ86DHG5CR',370,'Jun 15, 2022','Sep 18, 2022'),
  ('NCX87HKN4SM','YMM08RNP1PB','QFL27QLP4VM',365,'Feb 1, 2023','Jul 17, 2023');

INSERT INTO student_ensemble (lesson_id,student_id)
VALUES
  ('QME37SJZ4EC','PTE65BPR4TY'),
  ('UOE99BUY8IT','DJK65IVX5MO'),
  ('ILO81FRW3UV','BBR55FGK5UI'),
  ('OLW13KKS7QU','VNP25EFB5WP'),
  ('PKG37HHN7BW','UYL85GTK8MX'),
  ('BPE51UKX5MU','MDQ61MEU1YW'),
  ('DUG57TWR9XS','AQI10KEV4IH'),
  ('HKT81TXM2WM','WHW24WCZ4UL'),
  ('OOW10QRN2CX','HRH89XWH3PK'),
  ('BTU75URS6AU','THH83RTD9LP');

INSERT INTO student_group_lesson (lesson_id,student_id)
VALUES
  ('PKG70WWJ3RI','PAD20UOC3IB'),
  ('ZYM22ALY4SW','GQN67TLP5LZ'),
  ('QUM73PMW1DV','JDV53FUT5JF'),
  ('SCR02KSB2UZ','RNR47NSD8VL'),
  ('UIO47AQK2FP','YAS44JFT7KR'),
  ('UIP29ORP2PT','IIX62YEP8TS'),
  ('GLL21RCJ2XO','KUN86SIG6CL'),
  ('KHY44NHK0NP','DWH42QIQ7GE'),
  ('XIG31MKV5YL','MWJ39YYJ0RO'),
  ('BCG99LKQ3JL','BTG25RUM1IG');

INSERT INTO student_individual_lesson (lesson_id,student_id)
VALUES
  ('TNI34MDJ1IF','KUH28XUY8UM'),
  ('BUW73ERU3LV','DDD27SKD5FM'),
  ('GTD75FCW5DC','OTK56UVT8VO'),
  ('VXM42EWT5VN','GXH86CRL7EZ'),
  ('ZUN54LJP5BF','KEM13BXL7QN'),
  ('KPL16KWM7XL','RFV34UCY2IQ'),
  ('OQW48KPS5YO','DHI83UMO5QQ'),
  ('EBM61GWS7UR','LFO63NJY2BC'),
  ('JDX66ZJJ4IH','IDQ48YFB8JQ'),
  ('FBD23MUR6OB','ELK31NMK7OM');

































  


