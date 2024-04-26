-- List all the schools are located in 'Bissell Hall' campus, and sort them by school name. 
SELECT name AS 'school name'
FROM school
WHERE camp_name='Bissell Hall'
ORDER BY name;

-- List all the programmes provided by 'CIS'.
select * from programme p
JOIN school s
ON p.school_name=s.name
JOIN faculty f
ON s.facul_name=f.name
WHERE f.name='CIS';

-- Give all the names of the lecturers who are the members of the committee and sort by their name. 
SELECT l.name 
FROM committee_lect cl
JOIN lecturer l
ON cl.lect_id=l.ID
ORDER BY l.name;

--  List all supervisor's name and the name of the lecturer they manage. Please sort by supervisor name and lecturer name. 
SELECT l.name AS lecturer_name,s.name AS supervisor_name
FROM lecturer l
JOIN lecturer s
ON l.sup_id=s.ID
ORDER BY s.name,l.name;

-- Give all the lecturers who are not the member of the committee. 
SELECT l.ID,l.name FROM committee_lect cl
RIGHT OUTER JOIN lecturer l
ON cl.lect_id=l.ID
WHERE lect_id IS NULL ;
 -- OR USING THIS Query
 SELECT lecturer.ID,lecturer.name 
 FROM lecturer 
 where lecturer.ID NOT IN (SELECT lect_id FROM committee_lect);
 
 
 -- Give the total number of courses for each programme. 
 SELECT prog_code AS programme_code,COUNT(code) AS number_of_courses 
 FROM course 
 GROUP BY prog_code;
 
 --  Give all the lecturers with the courses they are teaching. Sort by lecturer name.
SELECT lc.course_code,l.title AS course_title,l.name AS lecturer_name 
FROM lect_course lc
JOIN lecturer l
ON lc.lect_id=l.ID
ORDER BY l.name;

-- Give all the course titles and their corresponding prerequisite course titles. 
SELECT c1.title AS course_title,c2.title AS pre_course_title FROM pre_course pc
JOIN course c1
ON pc.course_code=c1.code
JOIN course c2
ON pc.pre_course_code=c2.code;


-- Give the top 5 courses which have more students involved. 
select course_code AS 'course code', COUNT(DISTINCT stud_id) AS num_of_students from stud_course
GROUP BY course_code
ORDER BY COUNT(DISTINCT stud_id) DESC
LIMIT 5;



-- Give any of the prerequisite courses was not took by any of the students who enrolled into the university in 2018, and were taking the courses in 2018.
SELECT DISTINCT stUd_id, pc.pre_course_code FROM stud_course sc
LEFT JOIN pre_course pc
ON sc.course_code=pc.course_code
WHERE stud_id IN (SELECT std_ID FROM student WHERE year_enrolled=2018)
AND year_taken=2018;










 