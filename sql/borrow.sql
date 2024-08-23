-- Use the existing library_management_system database
USE library_management_system;

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

-- Optionally, you can insert some sample data
INSERT INTO Borrow (bookId, userId, issueDate, returnDate, dueDate) VALUES
(1, 101, '2024-01-01 10:00:00', '2024-01-15 10:00:00', '2024-01-10 10:00:00'),
(2, 102, '2024-02-01 11:00:00', '2024-02-14 11:00:00', '2024-02-10 11:00:00'),
(3, 103, '2024-03-01 12:00:00', '2024-03-15 12:00:00', '2024-03-10 12:00:00'),
(4, 104, '2024-04-01 13:00:00', '2024-04-15 13:00:00', '2024-04-10 13:00:00'),
(5, 105, '2024-05-01 14:00:00', '2024-05-15 14:00:00', '2024-05-10 14:00:00');

-- Repeat the above INSERT statement as needed to add more sample data
