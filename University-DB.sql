CREATE DATABASE University;

CREATE TABLE campus(
name varchar(50) PRIMARY KEY NOT NULL,
bus_no varchar(30) ,
distance_city decimal(8,2),
address varchar(50)
);

CREATE TABLE club(
name varchar(50) PRIMARY KEY NOT NULL,
campus_name varchar(50) NOT NULL,
building_no varchar(30),
phone_number varchar(22),
FOREIGN KEY(campus_name) REFERENCES campus(name)
);

CREATE TABLE sport(
sport_name varchar(50) NOT NULL,
club_name varchar(50) NOT NULL,
primary key(sport_name,club_name),
foreign key(club_name) references club(name) 
);

CREATE TABLE faculty(
name varchar(50) PRIMARY KEY NOT NULL,
dean_name varchar(20),
building varchar(20)
);

CREATE TABLE school(
name varchar(30) PRIMARY KEY NOT NULL,
facul_name varchar(50) NOT NULL,
camp_name varchar(50) NOT NULL,
building varchar(20),
foreign key(facul_name) references faculty(name),
foreign key(camp_name) references campus(name)
);

CREATE TABLE programme(
code varchar(20) PRIMARY KEY NOT NULL,
school_name varchar(30) NOT NULL,
title varchar(20),
level varchar(10),
duration varchar(20),
FOREIGN KEY(school_name) REFERENCES school(name)
);

CREATE TABLE course(
code varchar(20)  PRIMARY KEY NOT NULL,
prog_code varchar(20) NOT NULL ,
title varchar(20),
FOREIGN KEY(prog_code) REFERENCES programme(code)
);

CREATE TABLE lecturer(
ID varchar(20) PRIMARY KEY NOT NULL,
school_name varchar(30) NOT NULL,
sup_id varchar(20),
name varchar(30),
title varchar(30),
office_room varchar(20),
FOREIGN KEY(school_name) REFERENCES school(name),
FOREIGN KEY(sup_id) REFERENCES lecturer(ID) 
);

CREATE TABLE lect_course(
lect_id varchar(20) NOT NULL,
course_code varchar(20) NOT NULL,
PRIMARY KEY(lect_id,course_code),
FOREIGN KEY(lect_id) REFERENCES lecturer(ID),
FOREIGN KEY(course_code) REFERENCES course(code)
);

CREATE TABLE pre_course(
course_code varchar(20) NOT NULL,
pre_course_code varchar(20) NOT NULL,
PRIMARY KEY(course_code,pre_course_code),
FOREIGN KEY(course_code) REFERENCES course(code),
FOREIGN KEY(pre_course_code) REFERENCES course(code)
);

CREATE TABLE committee(
committee_title varchar(30) NOT NULL,
faculty_name varchar(50) NOT NULL,
meet_freq varchar(20),
PRIMARY KEY(committee_title,faculty_name),
FOREIGN KEY(faculty_name) REFERENCES faculty(name)
);

CREATE TABLE committee_lect(
committee_title varchar(30) NOT NULL,
lect_id varchar(20) NOT NULL,
faculty_name varchar(50) NOT NULL,
PRIMARY KEY(committee_title,lect_id,faculty_name),
FOREIGN KEY(committee_title) REFERENCES committee(committee_title),
FOREIGN KEY(lect_id) REFERENCES lecturer(ID),
FOREIGN KEY(faculty_name) REFERENCES faculty(name)
);

CREATE TABLE student(
std_ID varchar(20) PRIMARY KEY NOT NULL,
prog_code varchar(20) NOT NULL,
name varchar(20) ,
birthday date,
year_enrolled INT,
FOREIGN KEY(prog_code) REFERENCES programme(code)
);

CREATE TABLE stud_course(
course_code varchar(20) NOT NULL,
stud_id varchar(20) NOT NULL,
year_taken char(4),
grade varchar(10),
semester varchar(20),
PRIMARY KEY(course_code,stud_id),
FOREIGN KEY(course_code) REFERENCES course(code),
FOREIGN KEY(stud_id) REFERENCES student(std_ID)
);

