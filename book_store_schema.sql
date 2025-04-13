CREATE DATABASE bookstore;
USE bookstore;

-- Creat Tables

CREATE TABLE publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE book_language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publisher_id INT,
    language_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- Insert Sample Data

-- Publishers
INSERT INTO publisher (name) VALUES
('Penguin Books'),
('HarperCollins'),
('OUP'),
('Simon & Schuster'),
('Macmillan');

-- Book Languages
INSERT INTO book_language (name) VALUES
('English'),
('French'),
('Spanish'),
('German'),
('Swahili');

-- Authors
INSERT INTO author (name) VALUES
('Morgan Housel'),
('Chimamanda Ngozi Adichie'),
('George Orwell'),
('Ngũgĩ wa Thiong\'o'),
('Jane Austen');

-- Books
INSERT INTO book (title, publisher_id, language_id) VALUES
('The Psychology of Money', 1, 1),
('Half of a Yellow Sun', 2, 1),
('1984', 3, 1),
('Decolonising the Mind', 4, 5),
('Pride and Prejudice', 5, 1);

-- Book Authors (mapping books to authors)
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
