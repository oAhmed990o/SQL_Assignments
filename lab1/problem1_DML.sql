USE company;

INSERT INTO employee (fname, lname, bdate, address, gender, salary)
VALUES ('Ahmed','Ashraf','20-11-1998','smoha','M',5000);

INSERT INTO employee (fname, lname, bdate, address, gender, salary)
VALUES ('Mostafa','Hakam','16-9-1998','antoniades','M',5000);

INSERT INTO employee (fname, lname, bdate, address, gender, salary)
VALUES ('Aynour','Ayoub','30-9-1998','kafr abdo','F',3000);

INSERT INTO employee (fname, lname, bdate, address, gender, salary)
VALUES ('Aya','Saad','26-11-1998','6 october','F',6500);

INSERT INTO employee (fname, lname, bdate, address, gender, salary)
VALUES ('Nour','Abbady','8-3-1999','sidi gaber','M',7000);


INSERT INTO department(Dname, mgr_ssn, mgr_start_date) VALUES ('AI', 1, '24-6-2020');

INSERT INTO department(Dname, mgr_ssn, mgr_start_date) VALUES ('computer vision', 2, '3-7-2020');

INSERT INTO department(Dname, mgr_ssn, mgr_start_date) VALUES ('marketing', 5, '3-1-2018');


INSERT INTO project(Pname, Plocation, Dno) VALUES ('chess engine', 'smoha', 1);

INSERT INTO project(Pname, Plocation, Dno) VALUES ('media company', 'el raml station', 2);

INSERT INTO project(Pname, Plocation, Dno) VALUES ('self-driving car', 'agamy', 3);
