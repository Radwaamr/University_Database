
INSERT INTO campus VALUES('Alumni Arena','120',102.59,'102 Alumni Arena');
INSERT INTO campus VALUES('Bissell Hall','123',199.59,'Bissell Hall');
INSERT INTO campus VALUES('Center for Tomorrow','230',132.593,'103 Center for Tomorrow');
INSERT INTO campus VALUES('Bonner Hall','154',1345.33,'332 Bonner Hall');
INSERT INTO campus VALUES('Campus Mail Services','142',160.579,'1 Campus Mail Center');
INSERT INTO campus VALUES('Bookstores','306',140.59,'200 Lee Entrance, Amherst, NY');


INSERT INTO club VALUES('Academic/Educational','Alumni Arena','3','291097729');
INSERT INTO club VALUES('Media Clubs','Bissell Hall','4','948375232');
INSERT INTO club VALUES('Arts Clubs','Bonner Hall','1','928014847');
INSERT INTO club VALUES('Religious and Spiritual Clubs','Center for Tomorrow','5','684324678');
INSERT INTO club VALUES('Cultural Clubs','Bookstores','6','467223908');
INSERT INTO club VALUES('Honor Societies','Alumni Arena','2','235579346');
INSERT INTO club VALUES('Political Clubs','Campus Mail Services','5','264349079');



INSERT INTO faculty VALUES('Engineering','Mohamed','23');
INSERT INTO faculty VALUES('Medicine','Abdullah','3');
INSERT INTO faculty VALUES('Science','Ahmed','12');
INSERT INTO faculty VALUES('Art','Zakaria','22');
INSERT INTO faculty VALUES('CIS','Mahmoud','13');
INSERT INTO faculty VALUES('Law','Ahmed','14');



INSERT INTO committee VALUES('Ad Hoc Committees','Engineering','2 monthes');
INSERT INTO committee VALUES('Faculty Executive','Science','2 weeks');
INSERT INTO committee VALUES('Post Graduate Studies','Art','1 monthe');
INSERT INTO committee VALUES('Health and Sanity','CIS','1 week');


INSERT INTO school VALUES('School of Biological Sciences','Science','Center for Tomorrow','4');
INSERT INTO school VALUES('School of Natural Sciences','Engineering','Bissell Hall','5');
INSERT INTO school VALUES('Alliance Manchester Business','CIS','Alumni Arena','7');
INSERT INTO school VALUES('Department of Materials','Art','Bonner Hall','2');


INSERT INTO programme VALUES('123A','School of Natural Sciences',NULL,'2','20');
INSERT INTO programme VALUES('12B','Alliance Manchester Business',NULL,'4','20');
INSERT INTO programme VALUES('23A','Department of Materials',NULL,'1','10');


INSERT INTO sport VALUES('Archery','Arts Clubs');
INSERT INTO sport VALUES('Rifle','Cultural Clubs');
INSERT INTO sport VALUES('Tug of war','Media Clubs');
INSERT INTO sport VALUES('Judo','Political Clubs');


INSERT INTO student VALUES('1736','12B','Ali','2000-10-01',2019);
INSERT INTO student VALUES('1756','12B','Ahmed','2001-12-03',2020);
INSERT INTO student VALUES('1732','123A','Ali','2001-11-14',2018);
INSERT INTO student VALUES('1782','23A','Ali','2002-02-04',2019);
INSERT INTO student VALUES('1745','123A','Ali','2003-03-21',2021);



INSERT INTO course VALUES('3A','23A','IS');
INSERT INTO course VALUES('3B','123A','IT');
INSERT INTO course VALUES('4A','12B','CS');
INSERT INTO course VALUES('6C','23A','SE');


INSERT INTO stud_course VALUES('3A','1736','2019','A','2');
INSERT INTO stud_course VALUES('3B','1732','2018','B','3');
INSERT INTO stud_course VALUES('3A','1756','2020','A+','1');
INSERT INTO stud_course VALUES('6C','1782','2020','B+','3');


INSERT INTO pre_course VALUES('3A','3B');
INSERT INTO pre_course VALUES('3B','6C');
INSERT INTO pre_course VALUES('6C','3A');
INSERT INTO pre_course VALUES('3B','4A');


INSERT INTO lecturer VALUES('121','School of Natural Sciences',NULL,'Ahmed',NULL,'12');
INSERT INTO lecturer VALUES('122','Alliance Manchester Business','121','Mohamed',NULL,'13');
INSERT INTO lecturer VALUES('123','School of Biological Sciences','122','Ali',NULL,'2');
INSERT INTO lecturer VALUES('124','Department of Materials','121','Zakaria',NULL,'10');



INSERT INTO lect_course VALUES('121','3A');
INSERT INTO lect_course VALUES('122','3B');
INSERT INTO lect_course VALUES('123','6C');
INSERT INTO lect_course VALUES('122','4A');


INSERT INTO committee_lect VALUES('Ad Hoc Committees','122','Engineering');
INSERT INTO committee_lect VALUES('Faculty Executive','124','Science');
INSERT INTO committee_lect VALUES('Health and Sanity','123','CIS');

