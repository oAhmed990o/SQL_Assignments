CREATE SCHEMA library_management_system;

USE library_management_system;

CREATE TABLE library_management_system.publisher(
	pub_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    name VARCHAR(255),
    address VARCHAR(255),
    PRIMARY KEY(pub_id)
);

CREATE TABLE library_management_system.category(
	category_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    name VARCHAR(255),
    PRIMARY KEY(category_id)
);

CREATE TABLE library_management_system.book(
	book_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    title VARCHAR(255),
    price FLOAT,
    pub_id INT,
    category_id INT,
    PRIMARY KEY(book_id),
    FOREIGN KEY(pub_id) REFERENCES library_management_system.publisher(pub_id),
    FOREIGN KEY(category_id) REFERENCES library_management_system.category(category_id)
);

CREATE TABLE library_management_system.member(
	member_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    name VARCHAR(255),
    address VARCHAR(255),
    join_date DATETIME,
    PRIMARY KEY(member_id)
);

CREATE TABLE library_management_system.borrowing_book(
	member_id INT,
    book_id INT,
    borrow_date DATETIME,
    due_date DATETIME,
    return_date DATETIME,
    PRIMARY KEY(member_id,book_id,borrow_date),
    FOREIGN KEY (member_id) REFERENCES library_management_system.member(member_id),
    FOREIGN KEY (book_id) REFERENCES library_management_system.book(book_id)
);