CREATE TABLE contact_details (
 id INT NOT NULL,
 personal_number VARCHAR(100) NOT NULL,
 first_name VARCHAR(100),
 last_name VARCHAR(100),
 role VARCHAR(100),
 age VARCHAR(100),
 street VARCHAR(100),
 zip VARCHAR(100),
 city VARCHAR(100)
);

ALTER TABLE contact_details ADD CONSTRAINT PK_contact_details PRIMARY KEY (id);


CREATE TABLE email (
 id INT NOT NULL,
 email VARCHAR(100)
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);


CREATE TABLE instrument_stock (
 id INT NOT NULL,
 type VARCHAR(100),
 quantity INT,
 instrument_brand VARCHAR(100)
);

ALTER TABLE instrument_stock ADD CONSTRAINT PK_instrument_stock PRIMARY KEY (id);


CREATE TABLE phone (
 id INT NOT NULL,
 phone_no VARCHAR(100)
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);


CREATE TABLE sound_good_school (
 id INT NOT NULL,
 street VARCHAR(100),
 zip VARCHAR(100),
 city VARCHAR(100)
);

ALTER TABLE sound_good_school ADD CONSTRAINT PK_sound_good_school PRIMARY KEY (id);


CREATE TABLE administrative_staff (
 id INT NOT NULL,
 sound_good_school_id INT NOT NULL,
 contact_details_id INT NOT NULL,
 staff_id VARCHAR(100)
);

ALTER TABLE administrative_staff ADD CONSTRAINT PK_administrative_staff PRIMARY KEY (id);


CREATE TABLE appointment (
 id INT NOT NULL,
 staff_id INT NOT NULL,
 instrument VARCHAR(100),
 present_skill VARCHAR(100),
 apointment_id VARCHAR(100)
);

ALTER TABLE appointment ADD CONSTRAINT PK_appointment PRIMARY KEY (id);


CREATE TABLE contact_details_email (
 contact_details_id INT NOT NULL,
 email_id INT NOT NULL
);

ALTER TABLE contact_details_email ADD CONSTRAINT PK_contact_details_email PRIMARY KEY (contact_details_id,email_id);


CREATE TABLE contact_details_phone (
 contact_details_id INT NOT NULL,
 phone_id INT NOT NULL
);

ALTER TABLE contact_details_phone ADD CONSTRAINT PK_contact_details_phone PRIMARY KEY (contact_details_id,phone_id);


CREATE TABLE instructor (
 id INT NOT NULL,
 employment_id INT NOT NULL,
 instrument_type VARCHAR(100),
 sound_good_school_id INT NOT NULL,
 contact_details_id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instructor_salary (
 id INT NOT NULL,
 instructor_id INT NOT NULL,
 number_of_individual_lessons INT,
 number_of_group_lessons INT,
 number_of_ensemble INT
);

ALTER TABLE instructor_salary ADD CONSTRAINT PK_instructor_salary PRIMARY KEY (id);


CREATE TABLE music_lesson (
 id INT NOT NULL,
 instructor_id INT,
 time_start TIMESTAMP(10),
 time_end TIMESTAMP(10),
 amount_of_participants INT,
 level VARCHAR(100),
 lesson_type VARCHAR(100),
 instrument_type VARCHAR(100)
);

ALTER TABLE music_lesson ADD CONSTRAINT PK_music_lesson PRIMARY KEY (id);


CREATE TABLE parent (
 id INT NOT NULL,
 contact_details_id INT NOT NULL
);

ALTER TABLE parent ADD CONSTRAINT PK_parent PRIMARY KEY (id);


CREATE TABLE pricing_scheme (
 sound_good_school_id INT NOT NULL,
 group_lesson_price INT,
 individual_lesson_price INT,
 beginner_price INT,
 intermediate_price INT,
 advanced_price INT,
 special_day_price INT,
 renting_price INT
);

ALTER TABLE pricing_scheme ADD CONSTRAINT PK_pricing_scheme PRIMARY KEY (sound_good_school_id);


CREATE TABLE sibling_discount (
 sound_good_school_id INT NOT NULL,
 discount_rate FLOAT(10)
);

ALTER TABLE sibling_discount ADD CONSTRAINT PK_sibling_discount PRIMARY KEY (sound_good_school_id);


CREATE TABLE student (
 id INT NOT NULL,
 student_id VARCHAR(100) NOT NULL,
 instrument_quota INT,
 contact_details_id INT NOT NULL,
 parent_id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_payment (
 id INT NOT NULL,
 student_id INT,
 number_individual_lessons INT,
 number_of_group_lesson INT,
 number_of_ensemble INT,
 month VARCHAR(100),
 discount INT
);

ALTER TABLE student_payment ADD CONSTRAINT PK_student_payment PRIMARY KEY (id);


CREATE TABLE ensemble (
 lesson_id INT NOT NULL,
 genre VARCHAR(100) NOT NULL,
 minimum_number_of_students INT,
 maximum_number_of_students INT
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE group_lesson (
 lesson_id INT NOT NULL,
 minimum_number_of_students INT,
 maximum_number_of_students INT
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE individual_lesson (
 lesson_id INT NOT NULL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (lesson_id);


CREATE TABLE instrument_rental (
 id INT NOT NULL,
 instrument_id INT NOT NULL,
 staff_id INT NOT NULL,
 student_id INT NOT NULL,
 instrument_fee INT,
 start_date TIMESTAMP(10),
 end_date TIMESTAMP(10)
);

ALTER TABLE instrument_rental ADD CONSTRAINT PK_instrument_rental PRIMARY KEY (id);


CREATE TABLE student_ensemble (
 lesson_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_ensemble ADD CONSTRAINT PK_student_ensemble PRIMARY KEY (lesson_id,student_id);


CREATE TABLE student_group_lesson (
 lesson_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_group_lesson ADD CONSTRAINT PK_student_group_lesson PRIMARY KEY (lesson_id,student_id);


CREATE TABLE student_individual_lesson (
 lesson_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_individual_lesson ADD CONSTRAINT PK_student_individual_lesson PRIMARY KEY (lesson_id,student_id);


ALTER TABLE administrative_staff ADD CONSTRAINT FK_administrative_staff_0 FOREIGN KEY (sound_good_school_id) REFERENCES sound_good_school (id);
ALTER TABLE administrative_staff ADD CONSTRAINT FK_administrative_staff_1 FOREIGN KEY (contact_details_id) REFERENCES contact_details (id);


ALTER TABLE appointment ADD CONSTRAINT FK_appointment_0 FOREIGN KEY (staff_id) REFERENCES administrative_staff (id);


ALTER TABLE contact_details_email ADD CONSTRAINT FK_contact_details_email_0 FOREIGN KEY (contact_details_id) REFERENCES contact_details (id);
ALTER TABLE contact_details_email ADD CONSTRAINT FK_contact_details_email_1 FOREIGN KEY (email_id) REFERENCES email (id);


ALTER TABLE contact_details_phone ADD CONSTRAINT FK_contact_details_phone_0 FOREIGN KEY (contact_details_id) REFERENCES contact_details (id);
ALTER TABLE contact_details_phone ADD CONSTRAINT FK_contact_details_phone_1 FOREIGN KEY (phone_id) REFERENCES phone (id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (sound_good_school_id) REFERENCES sound_good_school (id);
ALTER TABLE instructor ADD CONSTRAINT FK_instructor_1 FOREIGN KEY (contact_details_id) REFERENCES contact_details (id);


ALTER TABLE instructor_salary ADD CONSTRAINT FK_instructor_salary_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE music_lesson ADD CONSTRAINT FK_music_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE parent ADD CONSTRAINT FK_parent_0 FOREIGN KEY (contact_details_id) REFERENCES instructor (id);


ALTER TABLE pricing_scheme ADD CONSTRAINT FK_pricing_scheme_0 FOREIGN KEY (sound_good_school_id) REFERENCES sound_good_school (id);


ALTER TABLE sibling_discount ADD CONSTRAINT FK_sibling_discount_0 FOREIGN KEY (sound_good_school_id) REFERENCES sound_good_school (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (contact_details_id) REFERENCES contact_details (id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (parent_id) REFERENCES parent (id);


ALTER TABLE student_payment ADD CONSTRAINT FK_student_payment_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES music_lesson (id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES music_lesson (id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lesson_id) REFERENCES music_lesson (id);


ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_0 FOREIGN KEY (instrument_id) REFERENCES instrument_stock (id);
ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_1 FOREIGN KEY (staff_id) REFERENCES administrative_staff (id);
ALTER TABLE instrument_rental ADD CONSTRAINT FK_instrument_rental_2 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES ensemble (lesson_id);
ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_group_lesson ADD CONSTRAINT FK_student_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES group_lesson (lesson_id);
ALTER TABLE student_group_lesson ADD CONSTRAINT FK_student_group_lesson_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_individual_lesson ADD CONSTRAINT FK_student_individual_lesson_0 FOREIGN KEY (lesson_id) REFERENCES individual_lesson (lesson_id);
ALTER TABLE student_individual_lesson ADD CONSTRAINT FK_student_individual_lesson_1 FOREIGN KEY (student_id) REFERENCES student (id);


