-- Use the existing library_management_system database
USE library_management_system;
-- Create the Books table
CREATE TABLE Books (
    bookId INT AUTO_INCREMENT PRIMARY KEY,
    bookName VARCHAR(255) NOT NULL,
    bookAuthor VARCHAR(255) NOT NULL,
    bookGenre VARCHAR(255) NOT NULL,
    noOfCopies INT NOT NULL
);

-- Insert at least 20 sample data into the Books table
INSERT INTO Books (bookName, bookAuthor, bookGenre, noOfCopies) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 5),
('1984', 'George Orwell', 'Dystopian', 3),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 4),
('Pride and Prejudice', 'Jane Austen', 'Romance', 7),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 6),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 10),
('Fahrenheit 451', 'Ray Bradbury', 'Dystopian', 8),
('Moby Dick', 'Herman Melville', 'Adventure', 2),
('The Odyssey', 'Homer', 'Epic', 5),
('War and Peace', 'Leo Tolstoy', 'Historical', 4),
('Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological', 3),
('Wuthering Heights', 'Emily Bronte', 'Gothic', 4),
('Brave New World', 'Aldous Huxley', 'Dystopian', 6),
('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 12),
('Jane Eyre', 'Charlotte Bronte', 'Romance', 5),
('Animal Farm', 'George Orwell', 'Satire', 9),
('The Divine Comedy', 'Dante Alighieri', 'Epic', 3),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical', 4),
('The Picture of Dorian Gray', 'Oscar Wilde', 'Philosophical', 7),
('Dracula', 'Bram Stoker', 'Horror', 6),
('The Adventures of Huckleberry Finn', 'Mark Twain', 'Adventure', 8);

-- Create the Role table
CREATE TABLE Role (
    roleId INT AUTO_INCREMENT PRIMARY KEY,
    roleName VARCHAR(255) NOT NULL
);

-- Insert at least 20 sample data into the Role table
INSERT INTO Role (roleName) VALUES
('ADMIN'),
('USER'),
('LIBRARIAN'),
('MANAGER'),
('GUEST'),
('MEMBER'),
('SUPERVISOR'),
('ASSISTANT'),
('EDITOR'),
('CONTRIBUTOR'),
('VIEWER'),
('DEVELOPER'),
('MAINTAINER'),
('ANALYST'),
('COORDINATOR'),
('TECHNICIAN'),
('CONSULTANT'),
('SPECIALIST'),
('ADVISOR'),
('DIRECTOR');

-- Create the Users table
CREATE TABLE Users (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insert at least 20 sample data into the Users table
INSERT INTO Users (username, name, password) VALUES
('alice', 'Alice Smith', 'password123'),
('bob', 'Bob Johnson', 'password456'),
('charlie', 'Charlie Brown', 'password789'),
('david', 'David Wilson', 'password101'),
('eve', 'Eve Davis', 'password202'),
('frank', 'Frank Miller', 'password303'),
('grace', 'Grace Lee', 'password404'),
('henry', 'Henry Martin', 'password505'),
('irene', 'Irene Walker', 'password606'),
('jack', 'Jack White', 'password707'),
('kate', 'Kate Harris', 'password808'),
('luke', 'Luke Young', 'password909'),
('mary', 'Mary Thompson', 'password100'),
('nancy', 'Nancy Garcia', 'password200'),
('oliver', 'Oliver Martinez', 'password300'),
('paul', 'Paul Robinson', 'password400'),
('quincy', 'Quincy Clark', 'password500'),
('rachel', 'Rachel Lewis', 'password600'),
('steve', 'Steve Lee', 'password700'),
('tina', 'Tina Allen', 'password800');

-- Create the USER_ROLE join table
CREATE TABLE USER_ROLE (
    USER_ID INT,
    ROLE_ID INT,
    PRIMARY KEY (USER_ID, ROLE_ID),
    FOREIGN KEY (USER_ID) REFERENCES Users(userId),
    FOREIGN KEY (ROLE_ID) REFERENCES Role(roleId)
);

-- Insert at least 20 sample data into the USER_ROLE table
INSERT INTO USER_ROLE (USER_ID, ROLE_ID) VALUES
(1, 1), (1, 2), -- Alice is an ADMIN and a USER
(2, 2), -- Bob is a USER
(3, 2), -- Charlie is a USER
(4, 2), -- David is a USER
(5, 2), -- Eve is a USER
(6, 2), -- Frank is a USER
(7, 2), -- Grace is a USER
(8, 2), -- Henry is a USER
(9, 2), -- Irene is a USER
(10, 2), -- Jack is a USER
(11, 2), -- Kate is a USER
(12, 2), -- Luke is a USER
(13, 2), -- Mary is a USER
(14, 2), -- Nancy is a USER
(15, 2), -- Oliver is a USER
(16, 2), -- Paul is a USER
(17, 2), -- Quincy is a USER
(18, 2), -- Rachel is a USER
(19, 2), -- Steve is a USER
(20, 2); -- Tina is a USER

-- Create the Borrow table
CREATE TABLE Borrow (
    borrowId INT AUTO_INCREMENT PRIMARY KEY,
    bookId INT NOT NULL,
    userId INT NOT NULL,
    issueDate TIMESTAMP,
    returnDate TIMESTAMP,
    dueDate TIMESTAMP,
    FOREIGN KEY (bookId) REFERENCES Books(bookId),
    FOREIGN KEY (userId) REFERENCES Users(userId)
);

-- Insert at least 20 sample data into the Borrow table
INSERT INTO Borrow (bookId, userId, issueDate, returnDate, dueDate) VALUES
(1, 1, '2024-01-01 10:00:00', '2024-01-15 10:00:00', '2024-01-10 10:00:00'),
(2, 2, '2024-02-01 11:00:00', '2024-02-14 11:00:00', '2024-02-10 11:00:00'),
(3, 3, '2024-03-01 12:00:00', '2024-03-15 12:00:00', '2024-03-10 12:00:00'),
(4, 4, '2024-04-01 13:00:00', '2024-04-15 13:00:00', '2024-04-10 13:00:00'),
(5, 5, '2024-05-01 14:00:00', '2024-05-15 14:00:00', '2024-05-10 14:00:00'),
(6, 6, '2024-06-01 15:00:00', '2024-06-15 15:00:00', '2024-06-10 15:00:00'),
(7, 7, '2024-07-01 16:00:00', '2024-07-15 16:00:00', '2024-07-10 16:00:00'),
(8, 8, '2024-08-01 17:00:00', '2024-08-15 17:00:00', '2024-08-10 17:00:00'),
(9, 9, '2024-09-01 18:00:00', '2024-09-15 18:00:00', '2024-09-10 18:00:00'),
(10, 10, '2024-10-01 19:00:00', '2024-10-15 19:00:00', '2024-10-10 19:00:00'),
(11, 11, '2024-11-01 20:00:00', '2024-11-15 20:00:00', '2024-11-10 20:00:00'),
(12, 12, '2024-12-01 21:00:00', '2024-12-15 21:00:00', '2024-12-10 21:00:00'),
(13, 13, '2025-01-01 22:00:00', '2025-01-15 22:00:00', '2025-01-10 22:00:00'),
(14, 14, '2025-02-01 23:00:00', '2025-02-15 23:00:00', '2025-02-10 23:00:00'),
(15, 15, '2025-03-01 00:00:00', '2025-03-15 00:00:00', '2025-03-10 00:00:00'),
(16, 16, '2025-04-01 01:00:00', '2025-04-15 01:00:00', '2025-04-10 01:00:00'),
(17, 17, '2025-05-01 02:00:00', '2025-05-15 02:00:00', '2025-05-10 02:00:00'),
(18, 18, '2025-06-01 03:00:00', '2025-06-15 03:00:00', '2025-06-10 03:00:00'),
(19, 19, '2025-07-01 04:00:00', '2025-07-15 04:00:00', '2025-07-10 04:00:00'),
(20, 20, '2025-08-01 05:00:00', '2025-08-15 05:00:00', '2025-08-10 05:00:00');
