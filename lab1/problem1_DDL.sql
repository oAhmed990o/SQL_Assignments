CREATE SCHEMA company; 

USE company;

CREATE TABLE company.employee(
    ssn INT NOT NULL AUTO_INCREMENT,
    fname VARCHAR(255),
    lname VARCHAR(255),
    bdate VARCHAR(255),
    address VARCHAR(255),
    gender VARCHAR(1),
    salary FLOAT,
    Dno INT,
    PRIMARY KEY(ssn)
); 

CREATE TABLE company.department(
    Dnumber INT NOT NULL AUTO_INCREMENT,
    Dname VARCHAR(255),
    mgr_ssn INT NOT NULL,
    mgr_start_date VARCHAR(255),
    PRIMARY KEY(Dnumber),
    FOREIGN KEY(mgr_ssn) REFERENCES company.employee(ssn)
); 

CREATE TABLE company.project(
    Pnumber INT NOT NULL AUTO_INCREMENT,
    Pname VARCHAR(255),
    Plocation VARCHAR(255),
    Dno INT NOT NULL,
    PRIMARY KEY(Pnumber),
    FOREIGN KEY(Dno) REFERENCES company.department(Dnumber)
);
