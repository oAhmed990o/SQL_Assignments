INSERT INTO Department(dept_id,dept_name) VALUES (1,'Chemistry');
INSERT INTO Department(dept_id,dept_name) VALUES (2,'Computer Science');
INSERT INTO Department(dept_id,dept_name) VALUES (3,'Civil');
INSERT INTO Department(dept_id,dept_name) VALUES (4,'Arts');
INSERT INTO Department(dept_id,dept_name) VALUES (5,'Electronics');
INSERT INTO Department(dept_id,dept_name) VALUES (6,'Mechanics');

INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (1, 'Ivana Teach', 1);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (2, 'James Smith', 1);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (3, 'Mary Johnson', 2);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (4, 'John Williams', 2);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (5, 'Patricia Jones', 2);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (6, 'Michael Miller', 3);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (7, 'Robert Brown', 4);
INSERT INTO Professor(prof_id,prof_name,dept_id) VALUES (8, 'Linda Davis', 5);

INSERT INTO student(student_id,student_name,major,level,age) VALUES (201, 'Maria White', 'English', 'SR', 21);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (202, 'Charles Harris', 'Architecture', 'SR', 22);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (203, 'Susan Martin', 'Law', 'JR', 20);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (204, 'Joseph Thompson', 'Computer Science', 'SO', 19);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (205, 'Christopher Garcia', 'Computer Science', 'JR', 20);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (206, 'Angela Martinez', 'History', 'SR', 19);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (207, 'Thomas Robinson', 'Psychology', 'SO', 18);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (208, 'Margaret Clark', 'Animal Science', 'FR', 18);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (209, 'Juan Rodriguez', 'Psychology', 'JR', 20);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (210, 'Dorthy Lewis', 'Finance', 'FR', 18);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (211, 'Daniel Lee', 'History', 'FR', 17);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (212, 'Lisa Walker', 'Computer Science', 'SO', 17);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (213, 'Paul Hall', 'Computer Science', 'JR', 18);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (214, 'Nancy Allen', 'Accounting', 'JR', 19);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (215, 'Mark Young', 'Finance', 'FR', 18);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (216, 'Luis Hernandez', 'Electrical Engineering', 'FR', 17);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (217, 'Donald King', 'Mechanical Engineering', 'SO', 19);
INSERT INTO student(student_id,student_name,major,level,age) VALUES (218, 'George Wright', 'Education', 'SR', 21);

INSERT INTO course(course_code, name) VALUES ('CC10','Data Structures');
INSERT INTO course(course_code, name) VALUES ('CC11','Database Systems');
INSERT INTO course(course_code, name) VALUES ('CC12','Operating System Design');
INSERT INTO course(course_code, name) VALUES ('CC13','Archaeology of the Incas');
INSERT INTO course(course_code, name) VALUES ('CC14','Aviation Accident Investigation');
INSERT INTO course(course_code, name) VALUES ('CC15','Air Quality Engineering');
INSERT INTO course(course_code, name) VALUES ('CC16','Introductory Latin');
INSERT INTO course(course_code, name) VALUES ('CC17','American Political Parties');
INSERT INTO course(course_code, name) VALUES ('CC18','Social Cognition');
INSERT INTO course(course_code, name) VALUES ('CC19','Perception');
INSERT INTO course(course_code, name) VALUES ('CC20','Multivariate Analysis');
INSERT INTO course(course_code, name) VALUES ('CC21','Patent Law');
INSERT INTO course(course_code, name) VALUES ('CC22','Urban Economics');
INSERT INTO course(course_code, name) VALUES ('CC23','Organic Chemistry');

INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC10','Spring',2012,6);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC11','Fall',2012,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC12','Summer',2012,6);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC10','Spring',2013,2);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC13','Fall',2013,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC14','Spring',2013,6);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC10','Spring',2014,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC15','Spring',2014,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC13','Fall',2014,6);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC10','Spring',2015,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC12','Spring',2015,6);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC14','Fall',2015,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC15','Spring',2015,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC10','Fall',2016,4);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC11','Spring',2016,6);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC12','Summer',2016,5);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC16','Spring',2016,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC17','Fall',2016,1);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC18','Spring',2016,2);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC19','Fall',2016,3);
INSERT INTO semester_course(course_code,quarter,year,prof_id) VALUES ('CC20','Summer',2016,4);


INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (201,'CC10','Spring',2012,'2012-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (202,'CC11','Fall',2012,'2012-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (203,'CC12','Summer',2012,'2012-6-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (201,'CC10','Spring',2013,'2013-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (201,'CC13','Fall',2013,'2013-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (201,'CC14','Spring',2013,'2013-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (202,'CC10','Spring',2014,'2014-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (202,'CC15','Spring',2014,'2014-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (203,'CC13','Fall',2014,'2014-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (204,'CC10','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (205,'CC12','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (208,'CC14','Fall',2015,'2015-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (208,'CC15','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (206,'CC10','Fall',2016,'2016-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (207,'CC11','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (208,'CC12','Summer',2016,'2016-6-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (207,'CC16','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (204,'CC17','Fall',2016,'2016-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (204,'CC18','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (209,'CC10','Spring',2012,'2012-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (210,'CC11','Fall',2012,'2012-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (202,'CC12','Summer',2012,'2012-6-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (208,'CC10','Spring',2013,'2013-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (208,'CC13','Fall',2013,'2013-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (209,'CC14','Spring',2013,'2013-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (210,'CC10','Spring',2014,'2014-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (210,'CC15','Spring',2014,'2014-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (211,'CC13','Fall',2014,'2014-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (212,'CC10','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (213,'CC12','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (214,'CC14','Fall',2015,'2015-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (215,'CC15','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (216,'CC10','Fall',2016,'2016-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (215,'CC11','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (216,'CC12','Summer',2016,'2016-6-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (210,'CC16','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (211,'CC17','Fall',2016,'2016-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (212,'CC18','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (216,'CC10','Spring',2012,'2012-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (216,'CC11','Fall',2012,'2012-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (215,'CC12','Summer',2012,'2012-6-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (216,'CC10','Spring',2013,'2013-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (209,'CC13','Fall',2013,'2013-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (210,'CC14','Spring',2013,'2013-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (211,'CC10','Spring',2014,'2014-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (211,'CC15','Spring',2014,'2014-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (212,'CC13','Fall',2014,'2014-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (213,'CC10','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (214,'CC12','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (215,'CC14','Fall',2015,'2015-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (216,'CC15','Spring',2015,'2015-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (215,'CC10','Fall',2016,'2016-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (203,'CC11','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (211,'CC16','Spring',2016,'2016-9-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (212,'CC17','Fall',2016,'2016-1-25');
INSERT INTO enrolled(student_id,course_code,quarter,year,enrolled_at) VALUES (213,'CC18','Spring',2016,'2016-9-25');
