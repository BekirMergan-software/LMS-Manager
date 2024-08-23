-- Create the Role table
CREATE TABLE Role (
    roleId INT AUTO_INCREMENT PRIMARY KEY,
    roleName VARCHAR(255) NOT NULL
);

-- Create the Users table
CREATE TABLE Users (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create the USER_ROLE join table
CREATE TABLE USER_ROLE (
    USER_ID INT,
    ROLE_ID INT,
    PRIMARY KEY (USER_ID, ROLE_ID),
    FOREIGN KEY (USER_ID) REFERENCES Users(userId),
    FOREIGN KEY (ROLE_ID) REFERENCES Role(roleId)
);

-- Insert at least 20 sample data into the Role table
INSERT INTO Role (roleName) VALUES
('ADMIN'),
('USER');

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

-- Insert at least 20 sample data into the USER_ROLE table
INSERT INTO USER_ROLE (USER_ID, ROLE_ID) VALUES
(1, 1), -- Alice is an ADMIN
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
