CREATE SCHEMA registration;

USE registration;

CREATE TABLE registration.department(
	dept_id INT NOT NULL UNIQUE,
	dept_name VARCHAR(255),
	PRIMARY KEY(dept_id)
);

CREATE TABLE registration.student(
	student_id INT NOT NULL UNIQUE,
	student_name VARCHAR(255),
	major VARCHAR(255),
	level VARCHAR(255),
	age INT,
	PRIMARY KEY(student_id)
);

CREATE TABLE registration.professor(
	prof_id INT NOT NULL UNIQUE,
	prof_name VARCHAR(255),
	dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES registration.department(dept_id),
	PRIMARY KEY(prof_id)	
);

CREATE TABLE registration.course(
	course_code VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	PRIMARY KEY(course_code)
);

CREATE TABLE registration.semester_course(
	course_code VARCHAR(255),
	quarter VARCHAR(255),
	year INT,
	prof_id INT,
	FOREIGN KEY (course_code) REFERENCES registration.course(course_code),
	FOREIGN KEY (prof_id) REFERENCES registration.professor(prof_id),
	PRIMARY KEY(course_code, quarter, year)	
);

CREATE TABLE registration.enrolled(
	student_id INT,
	course_code VARCHAR(255),
	quarter VARCHAR(255),
	year INT,
	enrolled_at DATETIME,
	FOREIGN KEY (student_id) REFERENCES registration.student(student_id),
	FOREIGN KEY (course_code, quarter, year) REFERENCES 
	registration.semester_course(course_code, quarter, year),
	PRIMARY KEY(student_id, course_code, quarter, year)	
);