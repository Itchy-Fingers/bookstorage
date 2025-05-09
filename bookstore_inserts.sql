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
