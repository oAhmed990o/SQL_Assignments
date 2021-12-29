	SELECT DISTINCT S.student_name
	FROM student S, enrolled E
	WHERE S.level = 'SR' AND S.student_id = E.student_id 
	AND E.course_code IN (
		SELECT SC.course_code
		FROM semester_course SC
		WHERE SC.prof_id = 1 
	);

	SELECT MAX(S.age)
	FROM student S, enrolled E, semester_course SC
	WHERE S.student_id = E.student_id AND S.major = 'History'  
	OR E.course_code IN (
		SELECT SC1.course_code
		FROM semester_course SC1, professor P
		WHERE SC1.prof_id = P.prof_id AND P.prof_name = 'Michael Miller' 
	);

	SELECT S.student_name, C.name
	FROM student S, enrolled E, course C
	WHERE S.student_id = E.student_id AND E.course_code = C.course_code
	UNION
	SELECT S1.student_name, NULL
	FROM student S1, enrolled E1
	WHERE S1.student_id NOT IN (
		SELECT S2.student_id
		FROM student S2, enrolled E1
		WHERE S2.student_id = E1.student_id
	);
	
	SELECT DISTINCT P.prof_name
	FROM professor P
	WHERE (
		SELECT COUNT(*)
		FROM semester_course SC
		WHERE SC.prof_id = P.prof_id
	) < 5;

	SELECT DISTINCT S.student_name
	FROM student S, enrolled E, semester_course SC
	WHERE S.student_id = E.student_id AND E.course_code = SC.course_code
	AND SC.course_code NOT IN(
		SELECT SC1.course_code
		FROM semester_course SC1
		WHERE SC1.course_code NOT IN (
			SELECT SC2.course_code
			FROM semester_course SC2
			WHERE SC2.prof_id = 2
		)
	);

	SELECT *
	FROM course C1
	WHERE C1.course_code NOT IN (
		SELECT C2.course_code
		FROM semester_course C2, enrolled E
		WHERE C2.course_code = E.course_code 
	)
	UNION
	SELECT C3.course_code, C3.name
	FROM course C3, semester_course SC3, professor P, department D
	WHERE C3.course_code = SC3.course_code AND SC3.prof_id = P.prof_id
	AND P.dept_id = D.dept_id AND D.dept_name = 'Computer Science';

	SELECT S.student_name
	FROM student S, enrolled E, semester_course SC, professor P
	WHERE S.student_name LIKE 'M%' AND age < 20
	UNION
	SELECT P1.prof_name
	FROM professor P1
	WHERE P1.prof_name LIKE 'M%' AND (
		SELECT COUNT(*)
		FROM semester_course SC
		WHERE SC.prof_id = P1.prof_id
	) > 2;

	SELECT DISTINCT P.prof_name, P.prof_id
	FROM professor P, department D
	WHERE (
		SELECT COUNT(*)
		FROM semester_course SC
		WHERE SC.prof_id = P.prof_id
		) < 2 AND D.dept_id = P.dept_id AND ( D.dept_id = 1 OR D.dept_id = 2
			OR D.dept_id = 3 OR D.dept_id = 4
			);

	SELECT DISTINCT S.student_name, P.prof_name
	FROM student S, enrolled E, semester_course SC, professor P
	WHERE S.student_id = E.student_id AND E.course_code = SC.course_code
	AND SC.prof_id = P.prof_id 
	UNION
	SELECT DISTINCT NULL, P.prof_name
	FROM professor P
	WHERE P.prof_id NOT IN (
		SELECT P1.prof_id
		FROM professor P1, semester_course SC
		WHERE P1.prof_id = SC.prof_id
	)
	UNION
	SELECT DISTINCT S.student_name, NULL
	FROM student S
	WHERE S.student_id NOT IN (
		SELECT S1.student_id
		FROM student S1, enrolled E
		WHERE S1.student_id = E.student_id
	);

	SELECT C.name, C.course_code, P.prof_name, P.prof_id
	FROM course C, semester_course SC, professor P
	WHERE C.course_code = SC.course_code AND SC.prof_id = P.prof_id AND (
		SELECT COUNT(*)
		FROM course C1
		WHERE C1.course_code = SC.course_code
	) >= 2;

	SELECT D.dept_name
	FROM department D, professor P
	WHERE (
		SELECT COUNT(*)
		FROM semester_course SC
		WHERE SC.prof_id = P.prof_id AND P.dept_id = D.dept_id
		) < 3;
